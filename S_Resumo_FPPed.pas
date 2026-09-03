unit S_Resumo_FPPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_Cli,  S_Ven, S_Tra,lerarq,S_Usr,S_DM4, S_SelEmp,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants,S_Red,s_Con,S_Sup,S_Loc,S_UF,
  CheckLst;

type
  TFrm_Resumo_FPPed = class(TForm)
    Qr_LDR: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    TabSheet2: TTabSheet;
    StaticText7: TStaticText;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    CODRED: TEdit;
    CODCV: TEdit;
    OMITIR_CV: TCheckBox;
    StaticText8: TStaticText;
    lbx_codcv: TListBox;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Src_LDR: TDataSource;
    cb_agrupar: TComboBox;
    CB_SEMBORDA: TCheckBox;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    Label2: TLabel;
    TabSheet3: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
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
    db_grupo: TRLDBText;
    band_cab: TRLBand;
    lbl_cabdata: TRLMemo;
    RLBand4: TRLBand;
    lbl_data: TRLDBText;
    band6: TRLBand;
    lblg_data: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    StaticText1: TStaticText;
    CODTEL: TEdit;
    OMITIR_TEL: TCheckBox;
    lbx_codtel: TListBox;
    OMITIR_SUP: TCheckBox;
    lbx_codsup: TListBox;
    StaticText3: TStaticText;
    CODSUP: TEdit;
    StaticText6: TStaticText;
    CODLOC: TEdit;
    OMITIR_LOC: TCheckBox;
    lbx_codloc: TListBox;
    StaticText9: TStaticText;
    CODUF: TEdit;
    OMITIR_UF: TCheckBox;
    lbx_coduf: TListBox;
    sbn_coddep: TSpeedButton;
    TabSheet4: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    sbSalvarPadrao: TSpeedButton;
    CB_MATRICIAL: TCheckBox;
    CB_VISREL: TCheckBox;
    lbl_cabTotal01: TRLMemo;
    lbl_total01: TRLDBText;
    lblg_total01: TRLLabel;
    lbl_cabTotal02: TRLMemo;
    lbl_total02: TRLDBText;
    lblg_total02: TRLLabel;
    lbl_cabTotal03: TRLMemo;
    lbl_total03: TRLDBText;
    lblg_total03: TRLLabel;
    lbl_cabTotal04: TRLMemo;
    lbl_total04: TRLDBText;
    lblg_total04: TRLLabel;
    lbl_cabTotal05: TRLMemo;
    lbl_cabTotal06: TRLMemo;
    lbl_cabTotal07: TRLMemo;
    lbl_cabTotal08: TRLMemo;
    lbl_cabTotal09: TRLMemo;
    lbl_cabTotal10: TRLMemo;
    lbl_total05: TRLDBText;
    lbl_total06: TRLDBText;
    lbl_total07: TRLDBText;
    lbl_total08: TRLDBText;
    lbl_total09: TRLDBText;
    lbl_total10: TRLDBText;
    lblg_total05: TRLLabel;
    lblg_total06: TRLLabel;
    lblg_total07: TRLLabel;
    lblg_total08: TRLLabel;
    lblg_total09: TRLLabel;
    lblg_total10: TRLLabel;
    RLLabel2: TRLLabel;
    lbl_totalGrupo: TRLLabel;
    rlTotalGer: TRLBand;
    lblt_data: TRLLabel;
    lblt_total01: TRLLabel;
    lblt_total02: TRLLabel;
    lblt_total03: TRLLabel;
    lblt_total04: TRLLabel;
    lblt_total05: TRLLabel;
    lblt_total06: TRLLabel;
    lblt_total07: TRLLabel;
    lblt_total08: TRLLabel;
    lblt_total09: TRLLabel;
    lblt_total10: TRLLabel;
    RLLabel15: TRLLabel;
    lblt_totalGrupo: TRLLabel;
    lbl_cabTotal11: TRLMemo;
    lbl_total11: TRLDBText;
    lblg_total11: TRLLabel;
    lbl_cabTotal12: TRLMemo;
    lbl_total12: TRLDBText;
    lblg_total12: TRLLabel;
    CB_FORCAR: TCheckBox;
    lbl_tiporel: TLabel;
    CB_TIPOREL: TComboBox;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    Matricial: TRLDraftFilter;
    Qr_LDRVALOR01: TFloatField;
    Qr_LDRVALOR02: TFloatField;
    Qr_LDRVALOR03: TFloatField;
    Qr_LDRVALOR04: TFloatField;
    Qr_LDRVALOR05: TFloatField;
    Qr_LDRVALOR06: TFloatField;
    Qr_LDRVALOR07: TFloatField;
    Qr_LDRVALOR08: TFloatField;
    Qr_LDRVALOR09: TFloatField;
    Qr_LDRVALOR10: TFloatField;
    Qr_LDRVALOR11: TFloatField;
    Qr_LDROUTROS: TFloatField;
    Qr_LDRNOMGRU: TStringField;
    Qr_LDRP1DATDOC: TDateTimeField;
    StaticText10: TStaticText;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    edt_codusr_cx: TEdit;
    Label1: TLabel;
    CB_TIPOPESQ: TComboBox;
    RG_FILTRO: TRadioGroup;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODREDExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure CODTELKeyPress(Sender: TObject; var Key: Char);
    procedure CODTELExit(Sender: TObject);
    procedure lbx_codtelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODSUPExit(Sender: TObject);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCVExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure cb_agruparClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CB_MATRICIALClick(Sender: TObject);
    procedure band6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODUFExit(Sender: TObject);
    procedure rlTotalGerBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    end;

var
  mDataPesq: String;
  mDataSel: String;
  Frm_Resumo_FPPed: TFrm_Resumo_FPPed;
  mTotal01: Real;
  mTotal02: Real;
  mTotal03: Real;
  mTotal04: Real;
  mTotal05: Real;
  mTotal06: Real;
  mTotal07: Real;
  mTotal08: Real;
  mTotal09: Real;
  mTotal10: Real;
  mTotal11: Real;
  mToutros: Real;

  mTotalT01: Real;
  mTotalT02: Real;
  mTotalT03: Real;
  mTotalT04: Real;
  mTotalT05: Real;
  mTotalT06: Real;
  mTotalT07: Real;
  mTotalT08: Real;
  mTotalT09: Real;
  mTotalT10: Real;
  mTotalT11: Real;
  mToutrosT: Real;
  mQtdGrupo: Integer=0;
  mNomeView: String;


implementation

{$R *.DFM}

procedure TFrm_Resumo_FPPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Resumo_FPPed.bbImprimirClick(Sender: TObject);
var
mReg, x: Integer;
mEscolhidos: String;
mTabCli: Boolean;
mTabVen: Boolean;
mTabUsr: Boolean;
mTabSup: Boolean;
mTabCV: Boolean;
mNomeGrupo: String;
mNomeOrdem: String;
mCampoCodigo: String;
mCampoDescri: String;
mCampoDescri_02: String;
mCampoGrupo: String;
mCampoValor: String;
mQtdForma  : Integer;
error      : String;
mCamposSel: Array of String;

begin
mDataPesq:='P1DATDOC';


if CB_TIPOPESQ.ItemIndex=0 then
   begin
   pdatapesq:='P1DATDOC';
   mDataSel:='P1DATDOC';
   end
else
   begin
   pdatapesq:='P1DATAP';
   mDataSel:='P1DATAP';
   end;


mTabVen:=false;
mTabCli:=false;
mTabUsr:=False;
mTabSup:=False;
mTabCV :=False;

if (cb_agrupar.ItemIndex=2) or
   (cb_agrupar.ItemIndex=3) or
   (cb_agrupar.ItemIndex=4) or
   (cb_agrupar.ItemIndex=6) or
   (cb_agrupar.ItemIndex=7) or
   (lbx_codred.Items.Count>0) or
   (lbx_coduf.Items.Count>0) or
   (lbx_codloc.Items.Count>0) then
  begin
  mTabCli:=true;
  end;

if (cb_agrupar.ItemIndex=5) then
  begin
  mTabCV:=true;
  end;

if (cb_agrupar.ItemIndex=9) or (lbx_codsup.Items.Count>0) then
   begin
   mTabSup:=true;
   mtabven:=true;
   end;

if (cb_agrupar.ItemIndex=10) then
  begin
  mTabUsr:=true;
  end;

if (cb_agrupar.ItemIndex=12) then
  begin
  mTabVen:=true;
  end;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if mTabCli then
  begin
  fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
  end;
if mTabVen then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    begin
    la_instrucao:=la_instrucao+' and ';
    end;
  fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');
  end;

if mTabUsr then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    begin
    la_instrucao:=la_instrucao+' and ';
    end;
  fInnerJoin(0,'CADUSR' ,'CODEMP','P1CODEMP' ,'CODUSR' ,'P1CODTLV');
  end;

if mTabCV then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    begin
    la_instrucao:=la_instrucao+' and ';
    end;
  fInnerJoin(0,'CADCV' ,'CVCODEMP','P1CODEMP' ,'CVCODCV' ,'P1CODCV');
  end;

if mTabSup then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    begin
    la_instrucao:=la_instrucao+' and ';
    end;
  fInnerJoin(0,'CADSUP' ,'SCODEMP','VCODEMP' ,'SCODSUP' ,'VCODSUP');
  end;

for x:=0 to 12 do
  begin
  if x=1 then
    begin
    lbl_cabTotal01.Visible:=true;
    lbl_Total01.Visible   :=true;
    lblg_Total01.Visible  :=true;
    end
  else if x=2 then
    begin
    lbl_cabTotal02.Visible:=true;
    lbl_Total02.Visible   :=true;
    lblg_Total02.Visible  :=true;
    end
  else if x=3 then
    begin
    lbl_cabTotal03.Visible:=true;
    lbl_Total03.Visible   :=true;
    lblg_Total03.Visible  :=true;
    end
  else if x=4 then
    begin
    lbl_cabTotal04.Visible:=true;
    lbl_Total04.Visible   :=true;
    lblg_Total04.Visible  :=true;
    end
  else if x=5 then
    begin
    lbl_cabTotal05.Visible:=true;
    lbl_Total05.Visible   :=true;
    lblg_Total05.Visible  :=true;
    end
  else if x=6 then
    begin
    lbl_cabTotal06.Visible:=true;
    lbl_Total06.Visible   :=true;
    lblg_Total06.Visible  :=true;
    end
  else if x=7 then
    begin
    lbl_cabTotal07.Visible:=true;
    lbl_Total07.Visible   :=true;
    lblg_Total07.Visible  :=true;
    end
  else if x=8 then
    begin
    lbl_cabTotal08.Visible:=true;
    lbl_Total08.Visible   :=true;
    lblg_Total08.Visible  :=true;
    end
  else if x=9 then
    begin
    lbl_cabTotal09.Visible:=true;
    lbl_Total09.Visible   :=true;
    lblg_Total09.Visible  :=true;
    end
  else if x=10 then
    begin
    lbl_cabTotal10.Visible:=true;
    lbl_Total10.Visible   :=true;
    lblg_Total10.Visible  :=true;
    end
  else if x=11 then
    begin
    lbl_cabTotal11.Visible:=true;
    lbl_Total11.Visible   :=true;
    lblg_Total11.Visible  :=true;
    end
  else if x=12 then
    begin
    lbl_cabTotal12.Visible:=true;
    lbl_Total12.Visible   :=true;
    lblg_Total12.Visible  :=true;
    end;
  end;

//mCampoValor:='P1TOTALL';
mCampoValor:='(P1TOTALL+P1ICMSR) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END';

if Trim(mNomeView) = '' then
  begin
  mNomeView:=fProcTemp(22);
  end;

if cb_agrupar.ItemIndex=0 then
  begin
  mNomeGrupo:=chr(39)+'Ano: '+chr(39)+'|| TO_CHAR('+mDataSel+', '+chr(39)+'YYYY'+chr(39)+') as NOMGRU';
  mNomeOrdem:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYY'+chr(39)+')';
  end
else if cb_agrupar.ItemIndex=1 then
  begin
  mNomeGrupo:=chr(39)+'Ano/Mês: '+chr(39)+'|| TO_CHAR('+mDataSel+', '+chr(39)+'YYYYMM'+chr(39)+') as NOMGRU';
  mNomeOrdem:='TO_CHAR('+mDataSel+', '+chr(39)+'YYYYMM'+chr(39)+')';
  end
else if cb_agrupar.ItemIndex=2 then
  begin
  mNomeGrupo:=chr(39)+'UF-Cidade: '+chr(39)+'|| CUF ||'+chr(39)+'-'+chr(39)+'|| CCIDADE  as NOMGRU';
  mNomeOrdem:='CUF,CCIDADE';
  end
else if cb_agrupar.ItemIndex=3 then
  begin
  mNomeGrupo:=chr(39)+'Razão Social: '+chr(39)+'|| CRAZAO ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODCLI)  as NOMGRU';
  mNomeOrdem:='CRAZAO,P1CODCLI';
  end
else if cb_agrupar.ItemIndex=4 then
  begin
  mNomeGrupo:=chr(39)+'Fantasia: '+chr(39)+'|| CDENOM ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODCLI)  as NOMGRU';
  mNomeOrdem:='CRAZAO,P1CODCLI';
  end
else if cb_agrupar.ItemIndex=5 then
  begin
  mNomeGrupo:=chr(39)+'Convênio: '+chr(39)+'|| CVRAZAO ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODCV)  as NOMGRU';
  mNomeOrdem:='P1CODCV';
  end
else if cb_agrupar.ItemIndex=6 then
  begin
  mNomeGrupo:=chr(39)+'Sigla do Estado: '+chr(39)+'|| CUF as NOMGRU';
  mNomeOrdem:='CUF';
  end
else if cb_agrupar.ItemIndex=7 then
  begin
  mNomeGrupo:=chr(39)+'Rede de Cliente: '+chr(39)+'|| CNOMRED ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(CCODRED)  as NOMGRU';
  mNomeOrdem:='CNOMRED,CCODRED';
  end
else if cb_agrupar.ItemIndex=8 then
  begin
  mNomeGrupo:=chr(39)+insere2(' ',' ',40)+chr(39)+'  as NOMGRU';
  mNomeOrdem:='';
  end
else if cb_agrupar.ItemIndex=9 then
  begin
  mNomeGrupo:=chr(39)+'Supervisor: '+chr(39)+'|| SNOME ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(VCODSUP)  as NOMGRU';
  mNomeOrdem:='SNOME,VCODSUP';
  end
else if cb_agrupar.ItemIndex=10 then
  begin
  mNomeGrupo:=chr(39)+'Televendas: '+chr(39)+'|| NOMUSR ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODTLV)  as NOMGRU';
  mNomeOrdem:='NOMUSR,P1CODTLV';
  end
else if cb_agrupar.ItemIndex=11 then
  begin
  mNomeGrupo:=chr(39)+'Tipo do Pedido: '+chr(39)+'||  TO_CHAR(P1TIPO_ENTSAI)  as NOMGRU';
  mNomeOrdem:='P1TIPO_ENTSAI';
  end
else if cb_agrupar.ItemIndex=12 then
  begin
  mNomeGrupo:=chr(39)+'Vendedor: '+chr(39)+'|| VNOME ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODVEN)  as NOMGRU';
  mNomeOrdem:='VNOME,P1CODVEN';
  end
else
  begin
  mNomeGrupo:=chr(39)+insere2(' ',' ',40)+chr(39)+'  as NOMGRU';
  mNomeOrdem:='';
  end;

if DM1.Tb_PargerPPEDFPGTO.AsFloat >0 then
   begin
{   if (pbanco=0) and (trim(la_instrucao)<>'') then
      begin
      la_instrucao:=la_instrucao+' and ';
      end;
   fInnerJoin1(0,'CADFP' ,'FPCODIGO','FPCR.FPFORMA');   }
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add(' CREATE OR REPLACE VIEW '+mNomeView+' AS '
                     +' SELECT                                  '
                     +'   p1tipo_entsai,                        '
                     +'   DECODE(PFPVALOR,NULL,(P1TOTALL+P1ICMSR) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END ,PFPVALOR ) AS PFPVALOR,       '
//                     +'   DECODE(PFPFORMA,NULL,P1TOTALL,PFPFORMA) AS PFPVALOR,       '
                     +'   DECODE(P1TIPO,8,998,17,998,16,999,PFPFORMA) AS PFPFORMA,   '
                     +'   DECODE(P1TIPO,8,'+chr(39)+'DEV.CLIENTE'+chr(39)+',17,'+chr(39)+'PGTO TROCA'+chr(39)+',16,'+chr(39)+'RECBTO TROCA'+chr(39)+',PFPNOMFOR) AS PFPNOMFOR, '
                     +mNomeGrupo
                     +', '+mDataPesq+' AS P1DATDOC,FPORDEM'
                     +', FPTIPO '
                     +' from CADPFP,CADP01,CADFP '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
//                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' PFPCODEMP(+)=P1CODEMP and ')
//                     +' PFPLOTSEQ(+)=P1LOTSEQ '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' PFPCODEMP=P1CODEMP and ')
                     +' PFPLOTSEQ=P1LOTSEQ '
                     +' and FPCODIGO=PFPFORMA '
                     +' and PFPCHAVE=P1CHAVE '
                     +' and P1ORDEM < 2 '
                     +' and P1STATUS<'+mstatus_excluido
                      +iif(la_instrucao='','',' and '+la_instrucao));
{   if trim(MDT1.Text)<>'/  /'then
      begin
      DM1.Query1.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDatetime(fdt5, StrtoDate(MDT1.Text))+chr(39));
      end;
   if trim(MDT2.Text)<>'/  /'then
      begin
      DM1.Query1.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDatetime(fdt5, StrtoDate(MDT2.Text))+chr(39));
      end;
   if RG_FILTRO.ItemIndex=0 then
      begin
      DM1.Query1.Sql.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex));
      end
   else if RG_FILTRO.ItemIndex=1 then
      begin
      DM1.Query1.SQL.Add(' and P1EMIDOC<>0');
      end;
   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and P1CODCLI '+mcinst2);
      end;
   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and P1CODVEN '+mcinst2);
      end;
   mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and P1CODTLV '+mcinst2);
      end;
   mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and VCODSUP '+mcinst2);
      end;
   mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and CCODRED '+mcinst2);
      end;
   mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and P1CODCV '+mcinst2);
      end;
   mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and CCUF '+mcinst2);
      end;
   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and CCODLOC '+mcinst2);
      end;
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      begin
      DM1.Query1.SQL.Add(' and P1TIPO '+mcinst2);
      end;
   DM1.Query1.SQL.Add(' and P1TIPO>0 ');
   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if Trim(mcinst2) <> '' then
      begin
      DM1.Query1.SQL.Add(' and P1CX_CODCAI '+mcinst2);
      end;                                            }
   end
else
   begin
   if CB_TIPOREL.ItemIndex=1 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADBCO' ,'BCCODEMP','P1CODEMP' ,'BCCODBCO' ,'P1BANCO');
      mCampoCodigo:='DECODE(BCCODBCO,null,'+chr(39)+'0'+chr(39)+', TO_CHAR(BCCODBCO) ) ';
      mCampoDescri:='DECODE(BCBANCO,null,'+chr(39)+'Carteira'+chr(39)+', BCBANCO)';
      mCampoDescri_02:='P1BANCO';
      mCampoGrupo:=' BCCODBCO,BCBANCO ';
//      mCampoValor:='P1TOTALL';
      mCampoValor:='(P1TOTALL+P1ICMSR)  ';

      end
   else if CB_TIPOREL.ItemIndex=2 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
        begin
        la_instrucao:=la_instrucao+' and ';
        end;
      fInnerJoin4(1,'CADPFP' ,'PFPCODEMP','P1CODEMP' ,'PFPLOTSEQ' ,'P1LOTSEQ','PFPCHAVE' ,'P1CHAVE','PFPORDEM' ,'P1ORDEM');
      if (pbanco=0) and (trim(la_instrucao)<>'') then
        begin
        la_instrucao:=la_instrucao+' and ';
        end;
      fInnerJoin3(0,'CADPV' ,'PVCODEMP','P1CODEMP' ,'PVCODTIP' ,'P1TABPV','PVCODPV' ,'P1CODPV');
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         begin
         la_instrucao:=la_instrucao+' and ';
         end;
      fInnerJoin1(0,'CADFP','FPCODIGO','PVVINCULO');
      mCampoValor:='PFPVALOR  ';
      mCampoCodigo:='DECODE(PVVINCULO,NULL,'+chr(39)+'-1'+chr(39)+', TO_CHAR(PVVINCULO) ) ';
      mCampoDescri:='DECODE(FPDESC,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', FPDESC)';
      mCampoDescri_02:='PVVINCULO';
      mCampoGrupo:=' PVVINCULO,FPDESC ';
      end
   else if CB_TIPOREL.ItemIndex=3 then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADPFP' ,'PFPCODEMP','P1CODEMP' ,'PFPLOTSEQ' ,'P1LOTSEQ','PFPCHAVE' ,'P1CHAVE','PFPORDEM' ,'P1ORDEM');
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin3(0,'CADPV' ,'PVCODEMP','P1CODEMP' ,'PVCODTIP' ,'P1TABPV','PVCODPV' ,'P1CODPV');
      mCampoCodigo:='P1TABPV||'+chr(39)+' '+chr(39)+'||'+'TO_CHAR(P1CODPV)';
      mCampoDescri:='DECODE(P1TABPV,'+chr(39)+'PO'+chr(39)+','+chr(39)+'Prazo Opcional(PP)'+chr(39)+' ,decode(PVNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+', PVNOME))';
      mCampoDescri_02:='P1TABPV || TO_CHAR(P1CODPV)';
      mCampoGrupo:=' P1TABPV,P1CODPV,PVNOME  ';
      mCampoValor:='PFPVALOR  ';
      end
   else
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(iif(CB_FORCAR.Checked,0,1),'CADDAR' ,'CRCODEMP','P1CODEMP','CRNPED','P1CHAVE','CRORDEM','P1ORDEM','CRLOTSEQ_CP','P1LOTSEQ');
      if ( pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin6(1,'FPCRDUP','CRCODEMP','FPCRDUP.FPDUP_CODEMP','CRNUMERO','FPCRDUP.FPNUMERO','CRDESD','FPCRDUP.FPDESD','CRDUP','FPCRDUP.FPTIPO','CRDTEMIS','FPCRDUP.FPDTEMIS','CRCODCLI','FPCRDUP.FPCODCLI');
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'FPCR','FPCR.FPCODEMP','FPCRDUP.FPCODEMP','FPCR.FPLOTSEQ','FPCRDUP.FPLOTSEQ','FPCR.FPLOTE','FPCRDUP.FPLOTE','FPCR.FPNR','FPCRDUP.FPNR');
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin1(iif(CB_FORCAR.Checked,0,1),'CADFP' ,'FPCODIGO','FPCR.FPFORMA');
      mCampoCodigo:='TO_CHAR(CADFP.FPCODIGO)';
      mCampoDescri:='CADFP.FPDESC';
      mCampoDescri_02:='CADFP.FPCODIGO';
      mCampoGrupo:=' CADFP.FPCODIGO, CADFP.FPDESC  ';
      mCampoValor:='FPCR.FPVALOR';
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add(' CREATE OR REPLACE VIEW '+mNomeView+' AS '
                     +' SELECT                                  '
                     +'   p1tipo_entsai,                        '
//                     +'   DECODE('+mCampoValor+',NULL,P1TOTALL,'+mCampoValor+') AS PFPVALOR,'
                     +'   DECODE('+mCampoValor+',NULL,(P1TOTALL+P1ICMSR) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END ,'+mCampoValor+') AS PFPVALOR,'
                     +'   DECODE(P1TIPO,8,'+chr(39)+'998'+chr(39)+',17,'+chr(39)+'998'+chr(39)+',16,'+chr(39)+'999'+chr(39)+','+mCampoCodigo+') AS PFPFORMA,   '
                     +'   DECODE(P1TIPO,8,'+chr(39)+'PGTO TROCA'+chr(39)+',17,'+chr(39)+'PGTO TROCA'+chr(39)+',16,'+chr(39)+'RECBTO TROCA'+chr(39)+','+mCampoDescri+') AS PFPNOMFOR, '
                     +mNomeGrupo
                     +', '+mDataPesq+' AS P1DATDOC , 0 AS FPORDEM, 0 as FPTIPO '  );

   dm1.Query1.sql.add(' from  CADP01'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     + 'P1STATUS<'+mstatus_excluido+' '
                     +iif(la_instrucao='','',' and '+la_instrucao));

   end;
if trim(MDT1.Text)<>'/  /'then

   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta(mDataPesq,true,StrToDate(MDT1.Text)));


if trim(MDT2.Text)<>'/  /'then
   DM1.Query1.sql.Add(fFormatdatetimeParaConsulta(mDataPesq,false,StrToDate(MDT2.Text)));

dm1.QUERY1.SQL.Add(fTipoNotas(RG_FILTRO.itemindex));

DM1.Query1.SQL.Add('    and P1TIPO>0');
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add('    and P1CODCLI '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add('    and P1CODVEN '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add('    and P1CODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add('    and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if  trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add('    and CCODRED '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add('    and P1CODCV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add('    and CCUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add('    and CCODLOC '+mcinst2);

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add('    and P1TIPO '+mcinst2);
DM1.Query1.sQL.Add('    and P1TIPO>0 ');

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if Trim(mcinst2) <> '' then
   DM1.Query1.SQL.Add('    and P1CX_CODCAI '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if Trim(mcinst2) <> '' then
   DM1.Query1.SQL.Add('    and P1CODUSR '+mcinst2);

//DM1.Query1.sql.SaveToFile(mpastatemp +'sql.txt');

try
   DM1.Query1.ExecSql;
except
   DM1.Query1.sql.SaveToFile(mpastatemp +'sql.txt');
   exit;
   end;

mreg:=0;

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select PFPFORMA,PFPNOMFOR,COUNT(*) as qtd '
                  +' from '+mNomeView);
DM1.Query5.SQL.Add(' group by  PFPFORMA,PFPNOMFOR ');
DM1.Query5.Open;

mQtdForma := DM1.Query5.RecordCount;

if DM1.Query5.IsEmpty then
   begin
   fMensagem('Não ha Registro a ser Impresso!',0,['0'],0);
   exit;
   end;

Qr_LDR.Close;
Qr_LDR.SQL.Clear;
Qr_LDR.SQL.Add('Select ');
mcinst:='';
mEscolhidos:='';
//if mCampoValor='FPCR.FPVALOR' then
// mCampoValor:='PFPVALOR * case when CADFP.FPTIPO=1 THEN -1 ELSE 1 END ';
 mCampoValor:='PFPVALOR ';

While not DM1.Query5.Eof do
   begin
   mreg:=mReg+1;
   if mreg<12 then
      begin
      if mreg=1 then
         begin
         lbl_cabTotal01.Lines.Clear;
         lbl_cabTotal01.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=2 then
         begin
         lbl_cabTotal02.Lines.Clear;
         lbl_cabTotal02.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=3 then
         begin
         lbl_cabTotal03.Lines.Clear;
         lbl_cabTotal03.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=4 then
         begin
         lbl_cabTotal04.Lines.Clear;
         lbl_cabTotal04.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=5 then
         begin
         lbl_cabTotal05.Lines.Clear;
         lbl_cabTotal05.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=6 then
         begin
         lbl_cabTotal06.Lines.Clear;
         lbl_cabTotal06.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=7 then
         begin
         lbl_cabTotal07.Lines.Clear;
         lbl_cabTotal07.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=8 then
         begin
         lbl_cabTotal08.Lines.Clear;
         lbl_cabTotal08.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=9 then
         begin
         lbl_cabTotal09.Lines.Clear;
         lbl_cabTotal09.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=10 then
         begin
         lbl_cabTotal10.Lines.Clear;
         lbl_cabTotal10.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end
      else if mreg=11 then
         begin
         lbl_cabTotal11.Lines.Clear;
         lbl_cabTotal11.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end;
      if DM1.Tb_PargerPPEDFPGTO.AsFloat >0 then
         begin
         Qr_LDR.sql.Add(mcinst+' sum(DECODE(PFPFORMA, '
                   +DM1.Query5.fieldByName('PFPFORMA').AsString
                   +', '
                   +' decode(p1tipo_entsai,1,PFPVALOR*-1 '
                   +'        ,PFPVALOR),0)) AS VALOR'+FormatFloat('00',mReg));

         end
      else
         begin
         if CB_TIPOREL.ItemIndex=3 then
            begin
//            Qr_LDR.sql.Add(mcinst+' sum(DECODE('+mCampoDescri_02+', '
            Qr_LDR.sql.Add(mcinst+' sum(DECODE(PFPFORMA, '
                   +iif(DM1.Query5.FieldbyName('PFPFORMA').AsString='-1','null',
                    chr(39)+DM1.Query5.fieldByName('PFPFORMA').AsString)+chr(39)
                   +', '
                   +' decode(p1tipo_entsai,1,'+mCampoValor+'*-1 '
                   +'        ,'+mCampoValor+'),0)) AS VALOR'+FormatFloat('00',mReg));
            end
         else
            begin
//            Qr_LDR.sql.Add(mcinst+' sum(DECODE('+mCampoDescri_02+', '
            Qr_LDR.sql.Add(mcinst+' sum(DECODE(PFPFORMA, '

                   +iif(DM1.Query5.FieldbyName('PFPFORMA').AsString='-1','null',
                    DM1.Query5.fieldByName('PFPFORMA').AsString)
                   +', '
                   +' decode(p1tipo_entsai,1,'+mCampoValor+'*-1 '
                   +'        ,'+mCampoValor+'),0)) AS VALOR'+FormatFloat('00',mReg));
            end;

         end;
      if DM1.Query5.FieldbyName('PFPFORMA').AsString='-1' then
         mEscolhidos:=mEscolhidos+mcinst+DM1.Query5.fieldByName('PFPFORMA').AsString+',null'
      else
         begin
         if CB_TIPOREL.ItemIndex=3 then
            mEscolhidos:=mEscolhidos+mcinst+chr(39)+DM1.Query5.fieldByName('PFPFORMA').AsString+chr(39)+',0'
         else
            mEscolhidos:=mEscolhidos+mcinst+DM1.Query5.fieldByName('PFPFORMA').AsString+',0';

         end;

      mcinst:=','
      end
   else
      begin
      if mQtdForma < 13 then
         begin
         lbl_cabTotal12.Lines.Clear;
         lbl_cabTotal12.Lines.Add(DM1.Query5.fieldByName('PFPNOMFOR').AsString);
         end;

      if DM1.Tb_PargerPPEDFPGTO.AsFloat >0 then
      begin
        Qr_LDR.sql.Add(mcinst+' sum(DECODE(PFPFORMA, '
                      +mEscolhidos
                      +', '
                      +' decode(p1tipo_entsai,1,PFPVALOR*-1 '
                      +'        ,PFPVALOR))) AS OUTROS ');

      end
   else
      begin
//      Qr_LDR.sql.Add(mcinst+' sum(DECODE('+mCampoCodigo+', '
      Qr_LDR.sql.Add(mcinst+' sum(DECODE(PFPFORMA, '
                              +mEscolhidos
                              +', '
                              +' decode(p1tipo_entsai,1,'+mCampoValor+'*-1 '
                              +'        ,'+mCampoValor+'))) AS OUTROS ');
      end;
      break;
      end;
   DM1.Query5.Next;
   end;

if mreg<12 then
   begin
   for x:=(mReg+1) to 12 do
      begin
      if x=1 then
         begin
         lbl_cabTotal01.Visible:=false;
         lbl_Total01.Visible   :=false;
         lblg_Total01.Visible  :=false;
         end
      else if x=2 then
         begin
         lbl_cabTotal02.Visible:=false;
         lbl_Total02.Visible   :=false;
         lblg_Total02.Visible  :=false;
         end
      else if x=3 then
         begin
         lbl_cabTotal03.Visible:=false;
         lbl_Total03.Visible   :=false;
         lblg_Total03.Visible  :=false;
         end
      else if x=4 then
         begin
         lbl_cabTotal04.Visible:=false;
         lbl_Total04.Visible   :=false;
         lblg_Total04.Visible  :=false;
         end
      else if x=5 then
         begin
         lbl_cabTotal05.Visible:=false;
         lbl_Total05.Visible   :=false;
         lblg_Total05.Visible  :=false;
         end
      else if x=6 then
         begin
         lbl_cabTotal06.Visible:=false;
         lbl_Total06.Visible   :=false;
         lblg_Total06.Visible  :=false;
         end
      else if x=7 then
         begin
         lbl_cabTotal07.Visible:=false;
         lbl_Total07.Visible   :=false;
         lblg_Total07.Visible  :=false;
         end
      else if x=8 then
         begin
         lbl_cabTotal08.Visible:=false;
         lbl_Total08.Visible   :=false;
         lblg_Total08.Visible  :=false;
         end
      else if x=9 then
         begin
         lbl_cabTotal09.Visible:=false;
         lbl_Total09.Visible   :=false;
         lblg_Total09.Visible  :=false;
         end
      else if x=10 then
         begin
         lbl_cabTotal10.Visible:=false;
         lbl_Total10.Visible   :=false;
         lblg_Total10.Visible  :=false;
         end
      else if x=11 then
         begin
         lbl_cabTotal11.Visible:=false;
         lbl_Total11.Visible   :=false;
         lblg_Total11.Visible  :=false;
         end
      else if x=12 then
         begin
         lbl_cabTotal12.Visible:=false;
         lbl_Total12.Visible   :=false;
         lblg_Total12.Visible  :=false;
         end;
      if x<12 then
         begin
         Qr_LDR.sql.Add(mcinst+' 0 AS VALOR'+FormatFloat('00',x));
         mcinst:=',';
         end
      else
         Qr_LDR.sql.Add(mcinst+' 0 AS OUTROS');
      end;
   end;

if DM1.Tb_PargerPPEDFPGTO.AsFloat >0 then
   begin
//   Qr_LDR.sql.add(', '+mNomeGrupo );
   Qr_LDR.sql.add(', NOMGRU ' );
   Qr_LDR.Sql.Add(', P1DATDOC,FPORDEM');
   Qr_LDR.Sql.add(' from '+mNomeView);

   end
else
   begin
//   Qr_LDR.sql.add(', '+mNomeGrupo );
   Qr_LDR.sql.add(', NOMGRU' );
   Qr_LDR.Sql.Add(', P1DATDOC');
   if (CB_TIPOREL.ItemIndex=0) or (CB_TIPOREL.ItemIndex=2) then
      Qr_LDR.Sql.add(' ,FPORDEM')
   else
      Qr_LDR.Sql.add(' , 0 AS FPORDEM');


   Qr_LDR.Sql.add(' from '+mNomeView);
   end;
//Qr_LDR.SQL.add(' group by '+iif(mNomeOrdem='','',mnomeordem+',')+' P1DATDOC');

Qr_LDR.SQL.add(' group by '+iif(mNomeOrdem='','',' NOMGRU,')+' P1DATDOC');


if (CB_TIPOREL.ItemIndex=0) or (CB_TIPOREL.ItemIndex=2)
   or (DM1.Tb_PargerPPEDFPGTO.AsFloat>0)  then
   Qr_LDR.SQL.Add(',FPORDEM ');
Qr_LDR.SQL.add(' order by nomgru, P1DATDOC ');
//QR_LDR.SQL.SaveToFile(mpastatemp +'sqlRESUMO.txt');
try
   Qr_LDR.Open;
except
   Qr_LDR.SQL.SaveToFile(mpastatemp +'sql.txt');
   fMensagem('Erro ao Selecionar dados, contactar suporte!',0,['0'],0);
   end;

//Qr_LDR.SQL.SaveToFile(mpastatemp +'sqlRES.txt');



lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);

lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';
rlTotalGer.Visible:=false;
RLReport1.PreviewModal;

end;

procedure TFrm_Resumo_FPPed.CODCLIExit(Sender: TObject);
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

procedure TFrm_Resumo_FPPed.CODVENExit(Sender: TObject);
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
      CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_Resumo_FPPed.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODRED.text := '';
      CODRED.SetFocus;
      end
   else
      begin
      fMensagem('Rede não Cadastrado!',0,['0'],0);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;

end;

procedure TFrm_Resumo_FPPed.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Resumo_FPPed.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Resumo_FPPed',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Resumo_FPPed.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Resumo_FPPed.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:= fChamaCV(0,'frm_resumo_fpped',key);
   CODCVExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Resumo_FPPed.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_Resumo_FPPed.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.FormCreate(Sender: TObject);
var
x: Integer;
begin
PageControl1.ActivePageIndex := 0;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
Qr_LDRVALOR01.DisplayFormat :=mcasas;
Qr_LDRVALOR02.DisplayFormat :=mcasas;
Qr_LDRVALOR03.DisplayFormat :=mcasas;
Qr_LDRVALOR04.DisplayFormat :=mcasas;
Qr_LDRVALOR05.DisplayFormat :=mcasas;
Qr_LDRVALOR06.DisplayFormat :=mcasas;
Qr_LDRVALOR07.DisplayFormat :=mcasas;
Qr_LDRVALOR08.DisplayFormat :=mcasas;
Qr_LDRVALOR09.DisplayFormat :=mcasas;
Qr_LDROUTROS.DisplayFormat :=mcasas;
//Qr_LDRP1DATDOC.DisplayFormat :=fdt2;

DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
MDT1.Text:=FormatDateTime(fdt2, date);




if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESUMO_FPPED','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESUMO_FPPED','CB_MATRICIAL']),[]) then
   CB_MATRICIAL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_MATRICIAL.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESUMO_FPPED','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESUMO_FPPED','CB_TIPOREL']),[]) then
   CB_TIPOREL.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','RG_FILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RESUMO_FPPED','RG_TIPOPED']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   RG_TIPOPED.Checked[0] := TRUE;
   end;

if DM1.Tb_PargerPPEDFPGTO.AsFloat >0 then
   begin
   lbl_tiporel.Visible  :=false;
   CB_TIPOREL.Visible   :=false;

   end
else
   begin
   lbl_tiporel.Visible :=true;
   CB_TIPOREL.Visible  :=true;
   end;

end;

procedure TFrm_Resumo_FPPed.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

mTotal01:=mTotal01+Qr_LDRVALOR01.Value;
mTotal02:=mTotal02+Qr_LDRVALOR02.Value;
mTotal03:=mTotal03+Qr_LDRVALOR03.Value;
mTotal04:=mTotal04+Qr_LDRVALOR04.Value;
mTotal05:=mTotal05+Qr_LDRVALOR05.Value;
mTotal06:=mTotal06+Qr_LDRVALOR06.Value;
mTotal07:=mTotal07+Qr_LDRVALOR07.Value;
mTotal08:=mTotal08+Qr_LDRVALOR08.Value;
mTotal09:=mTotal09+Qr_LDRVALOR09.Value;
mTotal10:=mTotal10+Qr_LDRVALOR10.Value;
mTotal11:=mTotal11+Qr_LDRVALOR11.Value;
mToutros:=mToutros+Qr_LDROUTROS.Value;

mTotalT01:=mTotalT01+Qr_LDRVALOR01.Value;
mTotalT02:=mTotalT02+Qr_LDRVALOR02.Value;
mTotalT03:=mTotalT03+Qr_LDRVALOR03.Value;
mTotalT04:=mTotalT04+Qr_LDRVALOR04.Value;
mTotalT05:=mTotalT05+Qr_LDRVALOR05.Value;
mTotalT06:=mTotalT06+Qr_LDRVALOR06.Value;
mTotalT07:=mTotalT07+Qr_LDRVALOR07.Value;
mTotalT08:=mTotalT08+Qr_LDRVALOR08.Value;
mTotalT09:=mTotalT09+Qr_LDRVALOR09.Value;
mTotalT10:=mTotalT10+Qr_LDRVALOR10.Value;
mTotalT11:=mTotalT11+Qr_LDRVALOR11.Value;
mToutrosT:=mToutrosT+Qr_LDROUTROS.Value;



end;

procedure TFrm_Resumo_FPPed.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabTotal01.Alignment  :=taRightJustify;
   lbl_cabTotal02.Alignment  :=taRightJustify;
   lbl_cabTotal03.Alignment  :=taRightJustify;
   lbl_cabTotal04.Alignment  :=taRightJustify;
   lbl_cabTotal05.Alignment  :=taRightJustify;
   lbl_cabTotal06.Alignment  :=taRightJustify;
   lbl_cabTotal07.Alignment  :=taRightJustify;
   lbl_cabTotal08.Alignment  :=taRightJustify;
   lbl_cabTotal09.Alignment  :=taRightJustify;
   lbl_cabTotal10.Alignment  :=taRightJustify;
   lbl_cabTotal11.Alignment  :=taRightJustify;
   lbl_cabTotal12.Alignment  :=taRightJustify;
   end
else
   begin
   mboolean:=true;

   lbl_cabTotal01.Alignment  :=taCenter;
   lbl_cabTotal02.Alignment  :=taCenter;
   lbl_cabTotal03.Alignment  :=taCenter;
   lbl_cabTotal04.Alignment  :=taCenter;
   lbl_cabTotal05.Alignment  :=taCenter;
   lbl_cabTotal06.Alignment  :=taCenter;
   lbl_cabTotal07.Alignment  :=taCenter;
   lbl_cabTotal08.Alignment  :=taCenter;
   lbl_cabTotal09.Alignment  :=taCenter;
   lbl_cabTotal10.Alignment  :=taCenter;
   lbl_cabTotal11.Alignment  :=taCenter;
   lbl_cabTotal12.Alignment  :=taCenter;

   end;
lbl_titulo.Borders.DrawBottom    :=mboolean;
db_grupo.Borders.DrawBottom      :=mboolean;

band_cab.Borders.DrawBottom      :=mboolean;
lbl_cabdata.Borders.DrawRight    :=mboolean;
lbl_data.Borders.DrawRight       :=mboolean;
lblg_data.Borders.DrawRight      :=mboolean;

lbl_cabTotal01.Borders.DrawRight :=mboolean;
lbl_total01.Borders.DrawRight    :=mboolean;
lblg_total01.Borders.DrawRight   :=mboolean;

lbl_cabTotal02.Borders.DrawRight :=mboolean;
lbl_total02.Borders.DrawRight    :=mboolean;
lblg_total02.Borders.DrawRight   :=mboolean;

lbl_cabTotal03.Borders.DrawRight :=mboolean;
lbl_total03.Borders.DrawRight    :=mboolean;
lblg_total03.Borders.DrawRight   :=mboolean;

lbl_cabTotal04.Borders.DrawRight :=mboolean;
lbl_total04.Borders.DrawRight    :=mboolean;
lblg_total04.Borders.DrawRight   :=mboolean;

lbl_cabTotal05.Borders.DrawRight :=mboolean;
lbl_total05.Borders.DrawRight    :=mboolean;
lblg_total05.Borders.DrawRight   :=mboolean;

lbl_cabTotal06.Borders.DrawRight :=mboolean;
lbl_total06.Borders.DrawRight    :=mboolean;
lblg_total06.Borders.DrawRight   :=mboolean;

lbl_cabTotal07.Borders.DrawRight :=mboolean;
lbl_total07.Borders.DrawRight    :=mboolean;
lblg_total07.Borders.DrawRight   :=mboolean;

lbl_cabTotal08.Borders.DrawRight :=mboolean;
lbl_total08.Borders.DrawRight    :=mboolean;
lblg_total08.Borders.DrawRight   :=mboolean;

lbl_cabTotal09.Borders.DrawRight :=mboolean;
lbl_total09.Borders.DrawRight    :=mboolean;
lblg_total09.Borders.DrawRight   :=mboolean;


lbl_cabTotal10.Borders.DrawRight :=mboolean;
lbl_total10.Borders.DrawRight    :=mboolean;
lblg_total10.Borders.DrawRight   :=mboolean;

lbl_cabTotal11.Borders.DrawRight :=mboolean;
lbl_total11.Borders.DrawRight    :=mboolean;
lblg_total11.Borders.DrawRight   :=mboolean;


lbl_cabdata.Borders.DrawRight    :=mboolean;
lbl_data.Borders.DrawRight       :=mboolean;
lblg_data.Borders.DrawRight      :=mboolean;

lblg_data.Borders.DrawBottom     :=mboolean;
lblg_total01.Borders.DrawBottom  :=mboolean;
lblg_total02.Borders.DrawBottom  :=mboolean;
lblg_total03.Borders.DrawBottom  :=mboolean;
lblg_total04.Borders.DrawBottom  :=mboolean;
lblg_total05.Borders.DrawBottom  :=mboolean;
lblg_total06.Borders.DrawBottom  :=mboolean;
lblg_total07.Borders.DrawBottom  :=mboolean;
lblg_total08.Borders.DrawBottom  :=mboolean;
lblg_total09.Borders.DrawBottom  :=mboolean;
lblg_total10.Borders.DrawBottom  :=mboolean;

RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;
RLband4.Borders.DrawTop          :=mboolean;
RLband4.Borders.DrawBottom       :=mboolean;


end;

procedure TFrm_Resumo_FPPed.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_Resumo_FPPed',Key);
   if trim(CODTEL.Text)<>'' then
      CODTELExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Resumo_FPPed.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end
   else
      begin
      fMensagem('Usuário/Televendas não Cadastrado!',0,['0'],0);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end;
   end;


end;

procedure TFrm_Resumo_FPPed.lbx_codtelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Sup, Frm_Sup);
   Frm_Sup.Edit1.Text:=key;
   Frm_Sup.BBnAtu.Click;
   Frm_Sup.Edit1.SelStart:=1;
   Frm_Sup.Edit1.SelLength:=1;
   Frm_Sup.PC1.ActivePage:=Frm_Sup.tsTab;
   sup_ori:='Frm_Receber_sint';
   if Frm_Sup.ShowModal=mrok then
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);
      CODSUP.text := '';
      CODSUP.SetFocus;
      end;
   Frm_Sup.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Resumo_FPPed.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flcadsup(1,0,CODSUP.Text) then
      begin
      fMensagem('Supervisor não Cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);

      CODSUP.text := '';
      CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_Resumo_FPPed.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.CODCVExit(Sender: TObject);
begin

CODCV.Text:=fdeixanum2(CODCV.Text);
if Trim(CODCV.Text)<>'' then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCV.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCV.text := '';
      CODCV.SetFocus;
      end
   else
      begin
      fMensagem('Convênio não Cadastrado!',0,['0'],0);
      CODCV.text := '';
      CODCV.SetFocus;
      end;
   end;

end;

procedure TFrm_Resumo_FPPed.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Resumo_FPPed',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Resumo_FPPed.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.CODLOCExit(Sender: TObject);
begin
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      lbx_codloc.Items.Add(CODLOC.Text
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end
   else
      begin
      fMensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_Resumo_FPPed.sbn_coddepClick(Sender: TObject);
begin
CODUF.Text :=fChamaUF(0,'frm_Resumo_FPPed','');
if trim(CODUF.Text)<>'' then
   CODUF.SetFocus;
end;

procedure TFrm_Resumo_FPPed.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_Resumo_FPPed.sbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(codusr,'_RESUMO_FPPED','');
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_RESUMO_FPPED',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATRICIAL'      ,'checked'   ,'_RESUMO_FPPED',iif(CB_MATRICIAL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_RESUMO_FPPED',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_VISREL'      ,'checked'   ,'_RESUMO_FPPED',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'RG_FILTRO'    ,'itemindex'      ,'_RESUMO_FPPED',IntTostr(RG_FILTRO.ItemIndex));

mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_RESUMO_FPPED',mcinst2);

fMensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_Resumo_FPPed.cb_agruparClick(Sender: TObject);
begin
if cb_agrupar.ItemIndex<0 then
   with cb_agrupar do ItemIndex:=Items.IndexOf(cb_agrupar.Text);
cb_agrupar.text:=cb_agrupar.Items.Strings[cb_agrupar.ItemIndex];

end;

procedure TFrm_Resumo_FPPed.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Resumo_FPPed.CB_MATRICIALClick(Sender: TObject);
begin
if not CB_MATRICIAL.Checked then
   RLReport1.DefaultFilter:=nil
else
   RLReport1.DefaultFilter:=Matricial;

end;

procedure TFrm_Resumo_FPPed.band6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblg_total01.Caption:=Formatfloat(mcasas, mTotal01);
lblg_total02.Caption:=Formatfloat(mcasas, mTotal02);
lblg_total03.Caption:=Formatfloat(mcasas, mTotal03);
lblg_total04.Caption:=Formatfloat(mcasas, mTotal04);
lblg_total05.Caption:=Formatfloat(mcasas, mTotal05);
lblg_total06.Caption:=Formatfloat(mcasas, mTotal06);
lblg_total07.Caption:=Formatfloat(mcasas, mTotal07);
lblg_total08.Caption:=Formatfloat(mcasas, mTotal08);
lblg_total09.Caption:=Formatfloat(mcasas, mTotal09);
lblg_total10.Caption:=Formatfloat(mcasas, mTotal10);
lblg_total11.Caption:=Formatfloat(mcasas, mTotal11);

lblg_total12.Caption:=Formatfloat(mcasas, mToutros);
lbl_totalGrupo.Caption:=FormatFloat(mcasas, mTotal01+mTotal02+mTotal03+mTotal04+
                                            mTotal05+mTotal06+mTotal07+mTotal08+
                                            mTotal09+mTotal10+mTotal11+mTOutros);

mTotal01:=0;
mTotal02:=0;
mTotal03:=0;
mTotal04:=0;
mTotal05:=0;
mTotal06:=0;
mTotal07:=0;
mTotal08:=0;
mTotal09:=0;
mTotal10:=0;
mTotal11:=0;
mToutros:=0;
mQtdGrupo:=mQtdGrupo+1;
if (mQtdGrupo>1) and (not rlTotalGer.Visible) then
   rlTotalGer.Visible:=true;


end;

procedure TFrm_Resumo_FPPed.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mTotal01:=0;
mTotal02:=0;
mTotal03:=0;
mTotal04:=0;
mTotal05:=0;
mTotal06:=0;
mTotal07:=0;
mTotal08:=0;
mTotal09:=0;
mTotal10:=0;
mTotal11:=0;
mToutros:=0;

mTotalT01:=0;
mTotalT02:=0;
mTotalT03:=0;
mTotalT04:=0;
mTotalT05:=0;
mTotalT06:=0;
mTotalT07:=0;
mTotalT08:=0;
mTotalT09:=0;
mTotalT10:=0;
mTotalT11:=0;

mToutrosT:=0;
mQtdGrupo:=0;

end;

procedure TFrm_Resumo_FPPed.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if flqr1('PNOM,PUF','P','CADUF','C','PUF',CODUF.Text) then
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end
   else
      begin
      fMensagem('Estado não Cadastrado!',0,['0'],0);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;


end;

procedure TFrm_Resumo_FPPed.rlTotalGerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lblt_total01.Caption:=Formatfloat(mcasas, mTotalT01);
lblt_total02.Caption:=Formatfloat(mcasas, mTotalT02);
lblt_total03.Caption:=Formatfloat(mcasas, mTotalT03);
lblt_total04.Caption:=Formatfloat(mcasas, mTotalT04);
lblt_total05.Caption:=Formatfloat(mcasas, mTotalT05);
lblt_total06.Caption:=Formatfloat(mcasas, mTotalT06);
lblt_total07.Caption:=Formatfloat(mcasas, mTotalT07);
lblt_total08.Caption:=Formatfloat(mcasas, mTotalT08);
lblt_total09.Caption:=Formatfloat(mcasas, mTotalT09);
lblt_total10.Caption:=Formatfloat(mcasas, mToutrosT);
lblt_totalGrupo.Caption:=FormatFloat(mcasas, mTotalT01+mTotalT02+mTotalT03+mTotalT04+
                                            mTotalT05+mTotalT06+mTotalT07+mTotalT08+
                                            mTotalT09+mTOutrosT);

mTotalT01:=0;
mTotalT02:=0;
mTotalT03:=0;
mTotalT04:=0;
mTotalT05:=0;
mTotalT06:=0;
mTotalT07:=0;
mTotalT08:=0;
mTotalT09:=0;
mToutrosT:=0;

end;

procedure TFrm_Resumo_FPPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Resumo_FPPed.CODBCOExit(Sender: TObject);
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
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;
end;

procedure TFrm_Resumo_FPPed.CODBCOKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Resumo_FPPed.lbx_codbcoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Resumo_FPPed.edt_codusr_cxExit(Sender: TObject);
begin
edt_codusr_cx.Text:=fdeixanum2(edt_codusr_cx.Text);
if Trim(edt_codusr_cx.Text)<>'' then
   begin
   if not flqr1('NOMUSR','','CADUSR','N','CODUSR',edt_codusr_cx.Text) then
      begin
      fmensagem('Usuario não cadastrado!',0,['0'],0);
      edt_codusr_cx.SetFocus;
      end
   else
      begin
      lbx_codusr_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codusr_cx.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codusr_cx.text := '';
      edt_codusr_cx.SetFocus;
      end;
   end;


end;

procedure TFrm_Resumo_FPPed.lbx_codusr_cxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

procedure TFrm_Resumo_FPPed.edt_codusr_cxKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Resumo_FPPed.FormShow(Sender: TObject);
begin
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=True;
   OMITIR_VEN.Enabled:=True;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;
fAjustarFormaPgto;

end;
end.
