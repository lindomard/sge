unit S_RelPed_FPPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_Cli,  S_Ven, S_Tra,lerarq,S_Usr,S_DM4, S_SelEmp, CheckLst,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants,S_Red,s_Con,S_Sup,S_Loc,S_UF, S_FPag,
  DBClient;

type
  TFrm_RelPed_FPPed = class(TForm)
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
    RLBand_cabgru: TRLBand;
    db_grupo: TRLDBText;
    band_cab: TRLBand;
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
    rlgrupo_chave: TRLGroup;
    lbl_cabchave: TRLMemo;
    lbl_cabcliente: TRLMemo;
    lbl_cabtotbru: TRLMemo;
    lbl_cabtotdes: TRLMemo;
    lbl_cabtotliq: TRLMemo;
    lbl_cabdatap: TRLMemo;
    RLBand_detail: TRLBand;
    lbl_nomfp: TRLDBText;
    lbl_fpgto: TRLDBText;
    lbl_dtfp: TRLDBText;
    RG_FILTRO: TRadioGroup;
    st_forma: TStaticText;
    lbx_codfp: TListBox;
    OMITIR_FP: TCheckBox;
    CODFP: TEdit;
    CB_FORCAR: TCheckBox;
    lbl_cabcodfp: TRLMemo;
    lbl_cabnomfp: TRLMemo;
    lbl_cabfpgto: TRLMemo;
    lbl_cabdtfp: TRLMemo;
    lbl_chave: TRLLabel;
    lbl_datap: TRLLabel;
    lbl_cliente: TRLLabel;
    lbl_totbru: TRLLabel;
    lbl_totdes: TRLLabel;
    lbl_totliq: TRLLabel;
    CB_CONSUMIDOR: TCheckBox;
    rl_bandtotPed: TRLBand;
    lbl_totPfpgto: TRLLabel;
    lbl_TotPchave: TRLLabel;
    lbl_TotPdatap: TRLLabel;
    lbl_TotPcliente: TRLLabel;
    lbl_TotPtotbru: TRLLabel;
    lbl_TotPtotdes: TRLLabel;
    lbl_TotPtotliq: TRLLabel;
    lbl_TotPcodfp: TRLLabel;
    lbl_TotPnomfp: TRLLabel;
    lbl_TotPdtfp: TRLLabel;
    rlTotalGer: TRLBand;
    lbl_totfpgto: TRLLabel;
    lbl_totchave: TRLLabel;
    lbl_totdatap: TRLLabel;
    lbl_totcliente: TRLLabel;
    lbl_tottotbru: TRLLabel;
    lbl_tottotdes: TRLLabel;
    lbl_tottotliq: TRLLabel;
    lbl_totcodfp: TRLLabel;
    lbl_totnomfp: TRLLabel;
    lbl_totdtfp: TRLLabel;
    rl_bandtot: TRLBand;
    lbl_TotGchave: TRLLabel;
    lbl_TotGdatap: TRLLabel;
    lbl_TotGcliente: TRLLabel;
    lbl_TotGtotbru: TRLLabel;
    lbl_TotGtotdes: TRLLabel;
    lbl_TotGtotliq: TRLLabel;
    lbl_TotGcodfp: TRLLabel;
    lbl_TotGnomfp: TRLLabel;
    lbl_TotGdtfp: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    lbl_tiporel: TLabel;
    CB_TIPOREL: TComboBox;
    lbl_codfp: TRLDBText;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    CB_DATABAIXA: TCheckBox;
    Qr_LDRPFPSEQ: TFloatField;
    Qr_LDRNOMGRU: TStringField;
    Qr_LDRPFPFORMA: TStringField;
    Qr_LDRPFPNOMFOR: TStringField;
    Qr_LDRPFPVALOR: TFloatField;
    Qr_LDRPFPDATA: TDateTimeField;
    Qr_LDRP1STATUS: TFloatField;
    Qr_LDRP1CODEMP: TFloatField;
    Qr_LDRP1TIPO: TFloatField;
    Qr_LDRP1TIPO_ENTSAI: TFloatField;
    Qr_LDRP1CHAVE: TFloatField;
    Qr_LDRP1ORDEM: TFloatField;
    Qr_LDRP1CODCLI: TFloatField;
    Qr_LDRP1DATDOC: TDateTimeField;
    Qr_LDRP1CUPACRE: TFloatField;
    Qr_LDRP1CUPDES: TFloatField;
    Qr_LDRP1TOTALL: TFloatField;
    Qr_LDRFPLOTE: TFloatField;
    Qr_LDRP1TOTDES: TFloatField;
    Qr_LDRP1TOTALB: TFloatField;
    Qr_LDRCRAZAO: TStringField;
    matricial: TRLDraftFilter;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    edtsup_coddep: TEdit;
    edtsup_codccu: TEdit;
    gb_sangria: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    edtsan_coddep: TEdit;
    edtsan_codccu: TEdit;
    Qr_SangSup: TQuery;
    Qr_SangSupDATAREAL: TDateTimeField;
    Qr_SangSupVALORR: TFloatField;
    Qr_SangSupCODCC: TStringField;
    Qr_SangSupNOMCCU: TStringField;
    Qr_SangSupGRUPO: TStringField;
    Qr_SangSupCODDEP: TStringField;
    Qr_SangSupNOMDEP: TStringField;
    Qr_SangSupDESCMV: TStringField;
    Src_SangSup: TDataSource;
    CB_SANGSUP: TCheckBox;
    tsSanSup: TTabSheet;
    RLReport_SanSup: TRLReport;
    RLBand_cabsup: TRLBand;
    RLDBText3: TRLDBText;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel4: TRLLabel;
    lbl_periodo2: TRLLabel;
    RLLabel6: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel7: TRLLabel;
    RLGroup2: TRLGroup;
    RLsup_cabgru: TRLBand;
    RLDBText2: TRLDBText;
    RLsup_cabdet: TRLBand;
    lbl_fcdata: TRLLabel;
    lbl_fcdescricao: TRLLabel;
    lbl_fcvalor: TRLLabel;
    RLBand5: TRLBand;
    edt_fcdata: TRLDBText;
    edt_fcdescricao: TRLDBText;
    edt_fcvalor: TRLDBText;
    RLsuptotgru: TRLBand;
    tot_fcdata: TRLLabel;
    tot_fcdescricao: TRLLabel;
    tot_fcvalor: TRLLabel;
    RLsuptotger: TRLBand;
    RLLabel5: TRLLabel;
    totger_fcvalor: TRLLabel;
    lbl_totgfpgto: TRLLabel;
    Qr_SangSupSUBMOD: TIntegerField;
    Qr_LDRPSUBMOD: TFloatField;
    Qr_LDRP1SUBMOD: TStringField;
    Qr_LDRVALOR_TOTAL: TFloatField;
    rg_tpdata: TRadioGroup;
    CB_RAZNOM: TCheckBox;
    Qr_LDRCDENOM: TStringField;
    RLSubDetail1: TRLSubDetail;
    cds_resumo: TClientDataSet;
    cds_resumores_forma: TStringField;
    cds_resumovalor: TFloatField;
    cds_resumoqtd_ped: TIntegerField;
    src_resumo: TDataSource;
    RLBand2: TRLBand;
    lbl_cabres: TRLLabel;
    RLBand4: TRLBand;
    RLBand6: TRLBand;
    lblcab_nomfor: TRLLabel;
    det_nomfor: TRLDBText;
    lblcab_valor: TRLLabel;
    det_valor: TRLDBText;
    RLBand7: TRLBand;
    cb_descper: TCheckBox;
    lbx_codusr_cx: TListBox;
    OMITIR_USR_CX: TCheckBox;
    StaticText10: TStaticText;
    edt_codusr_cx: TEdit;
    lbl_codcai: TRLMemo;
    rldet_codcai: TRLDBText;
    rltot_codcai: TRLLabel;
    Qr_LDRCAIXA: TFloatField;
    Qr_LDRP1OBS1: TMemoField;
    Qr_LDRP1OBS2: TMemoField;
    Qr_LDRP1OBS3: TMemoField;
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
    procedure CODUFExit(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_detailBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlTotalGerBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_bandtotBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure lbx_codfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFPExit(Sender: TObject);
    procedure CODFPKeyPress(Sender: TObject; var Key: Char);
    procedure rl_bandtotPedBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_TIPORELClick(Sender: TObject);
    procedure gb_sangriaExit(Sender: TObject);
    procedure RLBand5AfterPrint(Sender: TObject);
    procedure RLsuptotgruBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLsuptotgerBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure edt_codusr_cxExit(Sender: TObject);
    procedure edt_codusr_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusr_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RelPed_FPPed: TFrm_RelPed_FPPed;

  mQtdGrupo: Integer=0;
  mtotfp_qtd, mtotfp,mtotchave,mtotger,mtotger_bru,mtotger_qtd,mtotdes,mtotdes_ger: Real;
  mDataPesq: String;
  mChave_ant,mOrdem_ant: Real;
  mCodEmp_Ant: Real;
  mQtdFP: Integer=0;
  mTotFluxo: Real;
  mTotSup: Real;
  mTotSan: Real;
  pTotalD: Real;
  pTotalL: Real;
  pTotalB: Real;

implementation

uses S_C, func_excecoes;

{$R *.DFM}

procedure TFrm_RelPed_FPPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelPed_FPPed.bbImprimirClick(Sender: TObject);
var
mEscolhidos: String;
mTabVen: Boolean;
mTabUsr: Boolean;
mTabSup: Boolean;
mTabCV: Boolean;
mNomeGrupo: String;
mNomeOrdem: String;
mCampoCodigo: String;
mCampoDescri: String;
mCampoData: String;
mCampoValor: String;
mDataSel: String;
mCampoCaixa: String;
begin

mTabVen:=false;
mTabUsr:=False;
mTabSup:=False;
mTabCV :=False;
if CB_DATABAIXA.Checked then
   begin
   mDataPesq:='FPDATA';
   mDataSel:='FPDATA';
   end
else
   begin
   if rg_tpdata.ItemIndex=0 then
     begin
     mDataPesq:='P1DATAP';
     mDataSel:='P1DATAP';
     end
   else
     begin
     mDataPesq:='P1DATDOC';
     mDataSel:='P1DATDOC';
     end;
   end;

if (cb_agrupar.Text='Convenio') then
   mTabCV:=true;

if (cb_agrupar.text='Supervisor') or (lbx_codsup.Items.Count>0) then
   begin
   mTabSup:=true;
   mtabven:=true;
   end;

if (cb_agrupar.Text='Televendas') then
   mTabUsr:=true;

if (cb_agrupar.Text='Vendedor') then
   mTabVen:=true;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin6(0,'FPCRDUP','FPCRDUP.FPDUP_CODEMP','CRCODEMP','FPCRDUP.FPNUMERO','CRNUMERO','FPCRDUP.FPDESD','CRDESD','FPCRDUP.FPTIPO','CRDUP','FPCRDUP.FPDTEMIS','CRDTEMIS','FPCRDUP.FPCODCLI','CRCODCLI');

mCampoCaixa:='(NVL((Select max(FPCAIXA) from CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'  CRLOTSEQ_CP=P1LOTSEQ '
                 +iif(la_instrucao='','',' and '+la_instrucao)
                 +' and CRCODEMP=P1CODEMP '
                 +' and P1CHAVE=CRNPED '

                 +' and CRORDEM=P1ORDEM ),0))';

mCampoCaixa:=' FPCR.FPCAIXA  ';
if CB_TIPOREL.ItemIndex<>0 then
   mCampoCaixa:=' P1CX_CODCAI ';


la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

if mTabVen then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');
   end;


if CB_CONSUMIDOR.Checked then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADCSF' ,'CFCODEMP','P1CODEMP' ,'CFLOTSEQ' ,'P1LOTSEQ','CFCHAVEP' ,'P1CHAVE');
   end;

if mTabUsr then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADUSR' ,'CODEMP','P1CODEMP' ,'CODUSR' ,'P1CODTLV');
   end;
if mTabCV then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCV' ,'CVCODEMP','P1CODEMP' ,'CVCODCV' ,'P1CODCV');
   end;

if mTabSup then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADSUP' ,'SCODEMP','VCODEMP' ,'SCODSUP' ,'VCODSUP');
   end;





mNomeGrupo:='';
mNomeOrdem:='';
RLBand_cabgru.Visible:=true;
rl_bandtot.Visible   :=true;

if cb_agrupar.Text='Ano' then
   begin
   mNomeGrupo:=chr(39)+'Ano: '+chr(39)+'|| TO_CHAR('+mDataSel+', '+chr(39)+'YYYY'+chr(39)+') as NOMGRU,';
   mNomeOrdem:='TO_CHAR('+mDataSel+', '+chr(39)+'YYYY'+chr(39)+')';
   end
else if cb_agrupar.Text='Mes' then
   begin
   mNomeGrupo:=chr(39)+'Ano/Mês: '+chr(39)+'|| TO_CHAR('+mDataSel+', '+chr(39)+'YYYYMM'+chr(39)+') as NOMGRU,';
   mNomeOrdem:='TO_CHAR('+mDataSel+', '+chr(39)+'YYYYMM'+chr(39)+')';
   end
else if cb_agrupar.text='Cidade' then
   begin
   mNomeGrupo:=chr(39)+'UF-Cidade: '+chr(39)+'|| CUF ||'+chr(39)+'-'+chr(39)+'|| CCIDADE  as NOMGRU,';
   mNomeOrdem:='CUF,CCIDADE';
   end
else if cb_agrupar.Text='Cliente - Razão Social' then
   begin
   mNomeGrupo:=chr(39)+'Razão Social: '+chr(39)+'|| CRAZAO ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODCLI)  as NOMGRU,';
   mNomeOrdem:='CRAZAO,P1CODCLI';
   end
else if cb_agrupar.text='Cliente - Nome Fantasia' then
   begin
   mNomeGrupo:=chr(39)+'Fantasia: '+chr(39)+'|| CDENOM ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODCLI)  as NOMGRU,';
   mNomeOrdem:='CDENOM,P1CODCLI';
   end
else if cb_agrupar.Text='Convenio' then
   begin
   mNomeGrupo:=chr(39)+'Convênio: '+chr(39)+'|| CVRAZAO ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODCV)  as NOMGRU,';
   mNomeOrdem:='P1CODCV';
   end
else if cb_agrupar.Text='Estado' then
   begin
   mNomeGrupo:=chr(39)+'Sigla do Estado: '+chr(39)+'|| CUF as NOMGRU,';
   mNomeOrdem:='CUF';
   end
else if cb_agrupar.Text='Forma de Pagamento' then
   begin
   if CB_TIPOREL.ItemIndex=0 then
      begin
      mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(CADFP.FPDESC,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', CADFP.FPDESC)  AS NOMGRU,';
      mNomeOrdem:='CADFP.FPDESC';
      end
   else if CB_TIPOREL.ItemIndex=1 then
      begin
      mNomeGrupo:=chr(39)+'Cobranca: '+chr(39)+'|| DECODE(BCBANCO,null,'+chr(39)+'Carteira'+chr(39)+',BCBANCO) as NOMGRU,';
      mNomeOrdem:='BCBANCO';
      end
   else if CB_TIPOREL.ItemIndex=2 then
      begin
      mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(PFPFORMA,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', PFPFORMA)  ';
      mcinst2:=' || '
               +' CASE WHEN (CASE WHEN MAX(PFPVINCULO) = 0 THEN trim('+chr(39)+' '+chr(39)+')'
               +' ELSE trim(TO_CHAR(CFFPTPTRANS)) end is null)  THEN '+chr(39)+' '+chr(39)
               +'       WHEN CFFPTPTRANS=20 THEN '+chr(39)+'-Debito'+chr(39)
               +'      when CFFPTPTRANS=12 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xAdm'+chr(39)
               +'       when CFFPTPTRANS=11 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xLoja'+chr(39)
               +'       when CFFPTPTRANS=10 THEN '+chr(39)+'-Credito a Vista'+chr(39)
               +'       when CFFPQTDPARC>0 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'x'+chr(39)
               +'       when CFFPQTDPARC=0 THEN '+chr(39)+'-Debito'+chr(39)
               +'else '+chr(39)+'-Nao Conhecido'+chr(39)
               +' end ';
      mNomeGrupo:=mNomeGrupo+mcinst2+'AS NOMGRU,';
      mNomeOrdem:='PFPFORMA';
      end
   else if CB_TIPOREL.ItemIndex=4 then
      begin
      mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(PFPFORMA,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', PFPFORMA)  ';
      mcinst2:=' || '
               +' CASE WHEN (CASE WHEN MAX(PFPVINCULO) = 0 THEN trim('+chr(39)+' '+chr(39)+')'
               +' ELSE trim(TO_CHAR(CFFPTPTRANS)) end is null)  THEN '+chr(39)+' '+chr(39)
               +'       WHEN CFFPTPTRANS=20 THEN '+chr(39)+'-Debito'+chr(39)
               +'      when CFFPTPTRANS=12 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xAdm'+chr(39)
               +'       when CFFPTPTRANS=11 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xLoja'+chr(39)
               +'       when CFFPTPTRANS=10 THEN '+chr(39)+'-Credito a Vista'+chr(39)
               +'       when CFFPQTDPARC>0 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'x'+chr(39)
               +'       when CFFPQTDPARC=0 THEN '+chr(39)+'-Debito'+chr(39)
               +'else '+chr(39)+'-Nao Conhecido'+chr(39)
               +' end ';
      mNomeGrupo:=mNomeGrupo+mcinst2+'AS NOMGRU,';
      mNomeOrdem:='PFPFORMA';
      end
   else  // if CB_TIPOREL.ItemIndex=3 then
      begin
      mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(P1TABPV,'+chr(39)+'PO'+chr(39)+','+chr(39)+'Prazo Opcional(PP)'+chr(39)+' ,decode(PVNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+', PVNOME))   AS NOMGRU, ';
      mNomeOrdem:='PVNOME';
      end;
   end
else if cb_agrupar.Text='Rede de Clientes' then
   begin
   mNomeGrupo:=chr(39)+'Rede de Cliente: '+chr(39)+'|| CNOMRED ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(CCODRED)  as NOMGRU,';
   mNomeOrdem:='CNOMRED,CCODRED';
   end
else if cb_agrupar.Text='Sem Separar' then
   begin
   mNomeGrupo:=chr(39)+insere2(' ',' ',40)+chr(39)+'  as NOMGRU,';
   mNomeOrdem:='';
   RLBand_cabgru.Visible:=false;
   rl_bandtot.Visible   :=false;
   end
else if cb_agrupar.text='Supervisor' then
   begin
   mNomeGrupo:=chr(39)+'Supervisor: '+chr(39)+'|| SNOME ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(VCODSUP)  as NOMGRU,';
   mNomeOrdem:='SNOME,VCODSUP';
   end
else if cb_agrupar.text='Televendas' then
   begin
   mNomeGrupo:=chr(39)+'Televendas: '+chr(39)+'|| NOMUSR ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODTLV)  as NOMGRU,';
   mNomeOrdem:='NOMUSR,P1CODTLV';
   end
else if cb_agrupar.Text='Tipo de Pedido' then
   begin
   mNomeGrupo:=chr(39)+'Tipo do Pedido: '+chr(39)+'||  TO_CHAR(P1TIPO_ENTSAI)  as NOMGRU,';
   mNomeOrdem:='P1TIPO_ENTSAI';
   end
else if cb_agrupar.Text='Vendedor' then
   begin
   mNomeGrupo:=chr(39)+'Vendedor: '+chr(39)+'|| VNOME ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(P1CODVEN)  as NOMGRU,';
   mNomeOrdem:='VNOME,P1CODVEN';
   end
else if cb_agrupar.Text='Código Caixa' then
   begin
   mNomeGrupo:=chr(39)+'Código do Caixa: '+chr(39)+'||  TO_CHAR('+mCampoCaixa+')  as NOMGRU,';
   mNomeOrdem:='NOMGRU,P1CHAVE';
   end

else
   begin
   mNomeGrupo:=chr(39)+insere2(' ',' ',40)+chr(39)+'  as NOMGRU,';
   mNomeOrdem:='';
   end;


if CB_TIPOREL.ItemIndex=4 then
//if  DM1.Tb_PargerPPEDFPGTO.AsFloat >100 then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO' ,'BCCODEMP','P1CODEMP' ,'BCCODBCO' ,'P1BANCO');

   if (pbanco=0) and (trim(la_instrucao)<>'') then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADCFFP' ,'CFFPCODEMP','PFPCODEMP' ,'CFFPLOTSEQ' ,'PFPLOTSEQ','CFFPCHAVE','PFPCHAVE');


   Qr_LDR.Close;
   Qr_LDR.SQL.Clear;
   Qr_LDR.SQL.Add('Select    ');
   if trim(mNomeGrupo)<>'' then
     begin
     Qr_LDR.SQL.Add(mNomeGrupo);
     end;

   mcinst2:=' || '
               +' CASE WHEN (CASE WHEN MAX(PFPVINCULO) = 0 THEN trim('+chr(39)+' '+chr(39)+')'
               +' ELSE trim(TO_CHAR(CFFPTPTRANS)) end is null)  THEN '+chr(39)+' '+chr(39)
               +'       WHEN CFFPTPTRANS=20 THEN '+chr(39)+'-Debito'+chr(39)
               +'      when CFFPTPTRANS=12 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xAdm'+chr(39)
               +'       when CFFPTPTRANS=11 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'xLoja'+chr(39)
               +'       when CFFPTPTRANS=10 THEN '+chr(39)+'-Credito a Vista'+chr(39)
               +'       when CFFPQTDPARC>0 THEN '+chr(39)+'-Parc.'+chr(39)+'||TO_CHAR(CFFPQTDPARC)||'+chr(39)+'x'+chr(39)
               +'       when CFFPQTDPARC=0 THEN '+chr(39)+'-Debito'+chr(39)
               +'else '+chr(39)+'-Nao Conhecido'+chr(39)
               +' end ';

   Qr_LDR.SQL.Add(' P1CHAVE,P1LOTSEQ,P1ORDEM,PFPSEQ, '
                 +' DECODE(P1TIPO,8,'+chr(39)+'998'+chr(39)+',17,'+chr(39)+'998'+chr(39)+',16,'+chr(39)+'999'+chr(39)+',TO_CHAR(PFPFORMA))  AS PFPFORMA, '
                 +' DECODE(P1TIPO,8,'+chr(39)+'PGTO. DEV'+chr(39)+',17,'+chr(39)+'PGTO. DEV'+chr(39)+',16,'+chr(39)+'REBTO. DEV'+chr(39)+',PFPNOMFOR) '+mcinst2+' AS PFPNOMFOR, '
//                 +' DECODE(PFPVALOR,NULL,max(P1TOTALL),PFPVALOR) AS PFPVALOR, '
                 +' DECODE(PFPVALOR,NULL,max( (P1TOTALL+P1ICMSR) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END ),PFPVALOR * case when CADFP.FPTIPO=1 THEN -1 ELSE 1 END ) AS PFPVALOR, '
                 +' PFPDATA,P1STATUS,P1CODEMP,P1TIPO,P1TIPO_ENTSAI, '
                 +mcampoCaixa+' AS CAIXA,'
                 +' P1CODCLI,'+mDataSel+' AS P1DATDOC,'
                 +' max(P1CUPACRE) AS P1CUPACRE,'
                 +' max(P1CUPDES) AS  P1CUPDES, '
//                 +' sum(P1TOTALL) AS P1TOTALL '
                 +' sum( (P1TOTALL+P1ICMSR) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END ) AS P1TOTALL '
                 +' ,sum( (P1TOTDES) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END ) AS P1TOTDES '
                 +' ,sum( (P1TOTALB) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END) AS P1TOTALB '
                 +' ,max(P1OBS1) AS P1OBS1 '
                 +' ,max(P1OBS2) AS P1OBS2 '
                 +' ,max(P1OBS3) AS P1OBS3, '
                 +' 0 AS FPLOTE, P1SUBMOD, '
                 +iif(CB_CONSUMIDOR.Checked,' decode(max(CFRAZAO),null,max(CRAZAO),max(CFRAZAO)) as ','')
                 +' CRAZAO, max(CDENOM) as CDENOM '
                 +'  from CADP01,CADPFP,CADFP'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' PFPCODEMP=P1CODEMP and ')
                 +' PFPLOTSEQ=P1LOTSEQ '
//                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' PFPCODEMP(+)=P1CODEMP and ')
//                 +' PFPLOTSEQ(+)=P1LOTSEQ '
                 +' and FPCODIGO=PFPFORMA '
                 +' and PFPCHAVE=P1CHAVE '
                 +' and P1ORDEM < 2 '
                 +' and P1STATUS<'+mstatus_excluido+' '
                 +iif(la_instrucao='','',' and '+la_instrucao));
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

      mCampoData :='P1DATAP';
//      mCampoValor:='P1TOTALL';
      mCampoValor:='(P1TOTALL+P1ICMSR) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END ';

     if cb_agrupar.text='Forma de Pagamento' then
        begin
        mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(BCBANCO,null,'+chr(39)+'Carteira'+chr(39)+', BCBANCO) AS NOMGRU,';
        mNomeOrdem:='BCBANCO';
        end;



     end

   else if CB_TIPOREL.ItemIndex=2 then
      begin

      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADPFP' ,'PFPCODEMP','P1CODEMP' ,'PFPLOTSEQ' ,'P1LOTSEQ','PFPCHAVE' ,'P1CHAVE','PFPORDEM' ,'P1ORDEM');

      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin3(0,'CADPV' ,'PVCODEMP','P1CODEMP' ,'PVCODTIP' ,'P1TABPV','PVCODPV' ,'P1CODPV');


      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin1(0,'CADFP','FPCODIGO','PFPFORMA');

      mCampoCodigo:='DECODE(PVVINCULO,NULL,'+chr(39)+'0'+chr(39)+', TO_CHAR(PVVINCULO) ) ';
      mCampoDescri:='DECODE(CADFP.FPDESC,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', CADFP.FPDESC)';


//      mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(FPDESC,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', FPDESC)  AS NOMGRU,';
//      mNomeOrdem:='FPDESC';

//      mNomeGrupo:=chr(39)+'Rede de Cliente: '+chr(39)+'|| CNOMRED ||'+chr(39)+'-'+chr(39)+'|| TO_CHAR(CCODRED)  as NOMGRU,';
//      mNomeOrdem:='CNOMRED,CCODRED';

      mCampoData :='PFPDATA';
      mCampoValor:='PFPVALOR * case when PFPFORMA=1 THEN -1 ELSE 1 END  ';

      if cb_agrupar.text='Forma de Pagamento' then
         begin

         mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(CADFP.FPDESC,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', CADFP.FPDESC)  AS NOMGRU,';
         mNomeOrdem:='CADFP.FPDESC';
         end;


      end

   else if CB_TIPOREL.ItemIndex=3 then
      begin

      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADPFP' ,'PFPCODEMP','P1CODEMP' ,'PFPLOTSEQ' ,'P1LOTSEQ','PFPCHAVE' ,'P1CHAVE','PFPORDEM' ,'P1ORDEM');

      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin3(0,'CADPV' ,'PVCODEMP','P1CODEMP' ,'PVCODTIP' ,'P1TABPV','PVCODPV' ,'P1CODPV');

// inicio
// termino

      mCampoCodigo:='P1TABPV || TO_CHAR(P1CODPV)  ';
      mCampoDescri:='DECODE(P1TABPV,'+chr(39)+'PO'+chr(39)+','+chr(39)+'Prazo Opcional(PP)'+chr(39)+' ,decode(PVNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+', PVNOME))';


      mCampoData :='PFPDATA';
      mCampoValor:='PFPVALOR * case when PFPFORMA=1 THEN -1 ELSE 1 END  ';

     if cb_agrupar.Text='Forma de Pagamento' then
        begin
        mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(P1TABPV,'+chr(39)+'PO'+chr(39)+','+chr(39)+'Prazo Opcional(PP)'+chr(39)+' ,decode(PVNOME,null,'+chr(39)+'Nao Cadastrado'+chr(39)+', PVNOME))   AS NOMGRU, ';
        mNomeOrdem:='PVNOME';
        end;
      end

   else
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin4(1,'CADDAR','P1LOTSEQ','CRLOTSEQ_CP','P1CODEMP','CRCODEMP','CRNPED','P1CHAVE','CRORDEM','P1ORDEM');

      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin6(1,'FPCRDUP','CRCODEMP','FPCRDUP.FPDUP_CODEMP','CRNUMERO','FPCRDUP.FPNUMERO','CRDESD','FPCRDUP.FPDESD','CRDUP','FPCRDUP.FPTIPO','CRDTEMIS','FPCRDUP.FPDTEMIS','CRCODCLI','FPCRDUP.FPCODCLI');

      if (pbanco=0) and (trim(la_instrucao)<>'') then
        la_instrucao:=la_instrucao+' and ';
      fInnerJoin3(1,'FPCR','FPCR.FPCODEMP','FPCRDUP.FPCODEMP','FPCR.FPLOTSEQ','FPCRDUP.FPLOTSEQ','FPCR.FPLOTE','FPCRDUP.FPLOTE');
      la_instrucao:=la_instrucao+' and (FPCR.FPNR=FPCRDUP.FPNR  or FPCR.FPNR=0) ';

      if (pbanco=0) and (trim(la_instrucao)<>'') then
        la_instrucao:=la_instrucao+' and ';
//      fInnerJoin(0,'CADFP','FPCR.FPFORMA','CADFP.FPCODIGO','FPCR.FPVINCULO','CADFP.FPVINCULO');
      fInnerJoin1(0,'CADFP','FPCR.FPFORMA','CADFP.FPCODIGO');

        //FPCR.FPFORMA=CADFP.FPCODIGO AND FPCR.FPVINCULO=CADFP.FPVINCULO

      mCampoCodigo:='TO_CHAR(CADFP.FPCODIGO)';
      mCampoDescri:='CADFP.FPDESC';

//      mNomeGrupo:=chr(39)+'Forma de Pagamento: '+chr(39)+'|| DECODE(CADFP.FPDESC,NULL,'+chr(39)+'Nao Vinculado'+chr(39)+', CADFP.FPDESC)  AS NOMGRU,';
//      mNomeOrdem:='CADFP.FPDESC';

      mCampoData :='FPCR.FPDATA';
      mCampoValor:=' fvalorsubmod(P1SUBMOD,FPCR.FPVALOR) * CASE WHEN CADFP.FPTIPO=1 THEN -1 ELSE 1 END ';
      end;

   Qr_LDR.Close;
   Qr_LDR.SQL.Clear;
   Qr_LDR.SQL.Add('Select  ');
   if trim(mNomeGrupo)<>'' then
     begin
     Qr_LDR.SQL.Add(mNomeGrupo);
     end;
   Qr_LDR.SQL.Add(' P1CHAVE,P1LOTSEQ,P1ORDEM,0 as PFPSEQ,'+mCampoCodigo+' AS PFPFORMA,'+mCampoDescri+' AS PFPNOMFOR,'
                 +mCampoValor+' AS PFPVALOR, '
                 +mCampoData+'  AS PFPDATA,P1STATUS,P1CODEMP,P1TIPO,P1TIPO_ENTSAI '
                 +' ,'+McampoCaixa+' AS CAIXA '

                 +', P1CODCLI,'+mDataSel+' AS P1DATDOC,P1CUPACRE,P1CUPDES, '
//                 +' (P1TOTALL) AS P1TOTALL '
                 +' (P1TOTALL+P1ICMSR) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END AS P1TOTALL '
                 +' ,(P1TOTDES) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END  as P1TOTDES'
                 +' ,(P1TOTALB) * CASE WHEN P1TIPO_ENTSAI=1 THEN -1 ELSE 1 END  as P1TOTALB'
                 +' ,P1OBS1 '
                 +' ,P1OBS2 '
                 +' ,P1OBS3, '
                 +iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CRAZAO,CFRAZAO) as ','')
                 +' CRAZAO ,CDENOM, P1SUBMOD ');
   if CB_TIPOREL.ItemIndex=0 then
      Qr_LDR.SQL.Add(', FPCR.FPLOTE')
   else
      Qr_LDR.SQL.add(', 0 AS FPLOTE ');


   Qr_LDR.SQL.Add('  from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +' P1STATUS <'+mstatus_excluido
                 +iif(la_instrucao='','',' and '+la_instrucao));
{   if CB_TIPOREL.ItemIndex=0 then
     Qr_LDR.SQL.add(' and fpcrdup.fpvalor=fpcr.fpvalor ');
}

   end;

if trim(MDT1.Text)<>'/  /'then
   Qr_LDR.SQL.Add(fFormatdatetimeParaConsulta(mdatapesq,true,StrToDate(MDT1.Text)));

if trim(MDT2.Text)<>'/  /'then
   Qr_LDR.SQL.Add(fFormatdatetimeParaConsulta(mdatapesq,false,StrToDate(MDT2.Text)));
Qr_LDR.SQL.add(' and P1STATUS<'+mstatus_excluido+' ');


Qr_LDR.SQL.Add(fTipoNotas(RG_FILTRO.itemindex));


mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codusr_cx,OMITIR_USR_CX);
if Trim(mcinst2) <> '' then
   Qr_LDR.SQL.Add('    and P1CODUSR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1CODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCODRED '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1CODCV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and PFPFORMA '+mcinst2);


mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1TIPO '+mcinst2);
Qr_LDR.SQL.Add(' and P1TIPO>0 ');

{
if CB_TIPOREL.ItemIndex=0 then
  begin
  Qr_LDR.SQL.Add(' and CRSTATUS>1 and crstatus <8 ');
  end;
  }
if CB_TIPOREL.ItemIndex=4 then

//if DM1.Tb_PargerPPEDFPGTO.AsFloat >1000 then
   begin

   if cb_agrupar.ItemIndex=14 then
      Qr_LDR.SQL.add(' group by ')
   else
      Qr_LDR.SQL.add(' group by '+iif(mNomeOrdem='','',mnomeordem+','));

  Qr_LDR.SQL.add(' P1CHAVE,P1LOTSEQ,P1ORDEM,PFPSEQ,PFPFORMA,PFPNOMFOR,PFPVALOR, '
              +' PFPDATA,P1STATUS,P1CODEMP,P1TIPO,P1TIPO_ENTSAI'
              +', P1CODCLI,'+mDataSel+','
              +iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CRAZAO,CFRAZAO) ',' CRAZAO')
              +' ,P1SUBMOD '
              +',CFFPTPTRANS,CFFPQTDPARC '
              );

   Qr_LDR.SQL.add('    ,case when CADFP.FPTIPO=1 THEN -1 ELSE 1 END ');

   Qr_LDR.SQL.add(', '+mCampoCaixa);

   end
else
   begin
   if (CB_TIPOREL.ItemIndex=0) and (DM1.Tb_PargerPPEDFPGTO.AsFloat > 1000) then
      begin
   if cb_agrupar.ItemIndex=14 then
      Qr_LDR.SQL.add(' group by ')
   else
      Qr_LDR.SQL.add(' group by '+iif(mNomeOrdem='','',mnomeordem+','));


      Qr_LDR.SQL.add(' P1CHAVE,P1LOTSEQ,P1ORDEM,CADFP.FPCODIGO,CADFP.FPDESC,FPCR.FPVALOR, '
              +' FPCR.FPDATA,P1STATUS,P1CODEMP,P1TIPO,P1TIPO_ENTSAI,'
              +' P1CODCLI,'+mDataSel+',P1CUPACRE,P1CUPDES, '
              +' P1TOTALL '
              +' ,P1TOTDES '
              +' ,P1TOTALB, '
//              +' ,P1OBS1 '
//              +' ,P1OBS2 '
//              +' ,P1OBS3, '
              +iif(CB_CONSUMIDOR.Checked,' decode(CFRAZAO,null,CRAZAO,CFRAZAO) ',' CRAZAO')
              +', FPCR.FPLOTE'
              +' ,P1SUBMOD ');
       Qr_LDR.SQL.add(', '+mCampoCaixa);

      end;
   end;

if trim(mNomeOrdem)='' then
   Qr_LDR.SQL.add(' order by  P1CHAVE,P1ORDEM')
else
   Qr_LDR.SQL.add(' order by  NOMGRU,'+mNomeOrdem+', P1CHAVE,P1ORDEM');


mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if Trim(mcinst2) <> '' then
   begin
   Qr_LDR.sql.Text:=' Select  * from ( '+Qr_LDR.sql.Text+') where CAIXA '+mcinst2;
   end;



//     Qr_LDR.SQL.SaveToFile('C:\SGE\FPPED_sql.txt');

try
   Qr_LDR.Open;
except on e : exception do
   begin
    ex_erroSql_Novo(Qr_LDR,975,'SGE'+e.message,'CADVER');



//   fMensagem('Erro ao Selecionar dados, contactar suporte!',0,['0'],0);
   end;
   end;


{

P1CODEMP in (1,101)
and P1DATAP='21/02/2007'
AND PFPCODEMP=P1CODEMP
AND PFPLOTSEQ=P1LOTSEQ
AND PFPCHAVE=P1CHAVE
AND CCODCLI=P1CODCLI
AND P1STATUS<'+mstatus_excluido+'
order by P1CHAVE,PFPDATA,PFPNOMFOR

}

mTotFluxo:=0;
mTotSup  :=0;
mTotSan  :=0;

if (CB_SANGSUP.Checked) and
    ( (trim(edtsup_coddep.Text)<>'') and (trim(edtsan_coddep.Text)<>'') and
      (trim(edtsup_codccu.Text)<>'') and (trim(edtsan_codccu.Text)<>'') ) then
   begin
   RLReport1.NextReport:=RLReport_SanSup;
   la_tabelas:='';
   la_Join:='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
   Qr_SangSup.Close;
   Qr_SangSup.SQL.Clear;
   Qr_SangSup.SQL.Add('select DATAREAL,VALORR,CODCC,NOMCCU, ');
   if (trim(edtsup_coddep.Text)<>'') and (trim(edtsan_coddep.Text)<>'') and
      (trim(edtsup_codccu.Text)<>'') and (trim(edtsan_codccu.Text)<>'') then
      begin
      Qr_SangSup.SQL.Add(' decode(CODDEP||CODCC,:CHAVESUP,:NOMESUP,:NOMESAN) AS GRUPO ');
      Qr_SangSup.ParamByName('CHAVESUP').AsString:=edtsup_coddep.Text+edtsup_codccu.Text;
      end
   else  if (trim(edtsup_coddep.Text)<>'') and (trim(edtsan_coddep.Text)<>'') then
      begin
      Qr_SangSup.SQL.Add(' decode(CODDEP,:CHAVESUP,:NOMESUP,:NOMESAN) AS GRUPO ');
      Qr_SangSup.ParamByName('CHAVESUP').AsString:=edtsup_coddep.Text;
      end
   else
      begin
      Qr_SangSup.SQL.Add(' decode(CODCC,:CHAVESUP,:NOMESUP,:NOMESAN) AS GRUPO ');
      Qr_SangSup.ParamByName('CHAVESUP').AsString:=edtsup_codccu.Text;
      end;
   Qr_SangSup.ParamByName('NOMESUP').AsString:=' SUPRIMENTOS ';
   Qr_SangSup.ParamByName('NOMESAN').AsString:='SANGRIA';
   Qr_SangSup.SQL.Add(', CODDEP,NOMDEP,DESCMV  ');
   Qr_SangSup.SQL.Add('  FROM CADLDR '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +' STATUS <> 9 '
                 +iif(la_instrucao='','',' and '+la_instrucao));

   if (trim(edtsup_coddep.Text)<>'') and (trim(edtsan_coddep.Text)<>'') then
      begin
      Qr_SangSup.SQL.Add(' and (CODDEP=:CODDEP_SUP or CODDEP=:CODDEP_SAN) ');
      Qr_SangSup.ParamByName('CODDEP_SUP').AsString:=edtsup_coddep.Text;
      Qr_SangSup.ParamByName('CODDEP_SAN').AsString:=edtsan_coddep.Text;
      end;

   if (trim(edtsup_codccu.Text)<>'') and (trim(edtsan_codccu.Text)<>'') then
      begin
      Qr_SangSup.SQL.Add(' and (CODCC=:CODCC_SUP or CODCC=:CODCC_SAN) ');
      Qr_SangSup.ParamByName('CODCC_SUP').AsString:=edtsup_codccu.Text;
      Qr_SangSup.ParamByName('CODCC_SAN').AsString:=edtsan_codccu.Text;
      end;
   Qr_SangSup.SQL.Add(' and DATAREAL>:DATANULA');
   Qr_SangSup.ParamByName('DATANULA').AsDateTime:=pdatanula;
   if trim(mdt1.Text)<>'/  /' then
      begin
      Qr_SangSup.SQL.Add(' and DATAREAL>=:DATAINI');
      Qr_SangSup.ParamByName('DATAINI').AsDateTime:=StrToDate(MDT1.Text);
      end;

   if trim(mdt2.Text)<>'/  /' then
      begin
      Qr_SangSup.SQL.Add(' and DATAREAL<=:DATAFIN');
      Qr_SangSup.ParamByName('DATAINI').AsDateTime:=StrToDate(MDT2.Text);
      end;
   Qr_SangSup.SQL.Add(' order by GRUPO ');
   try
      Qr_SangSup.open;
   except
      Qr_SangSup.sql.savetofile(mpastatemp +'sql.txt');
      end;
//   Qr_SangSup.sql.savetofile(mpastatemp +'sql.txt');

   end
else
   begin
   RLReport1.NextReport:=nil;
   end;





mtotdes_ger:=0;
mtotdes    :=0;
mtotfp     :=0;
mtotfp_qtd :=0;
mtotchave  :=0;
mtotger    :=0;
mtotger_bru:=0;
mtotger_qtd:=0;
mChave_ant :=0;
mCodEmp_Ant:=0;
mOrdem_ant :=0;


lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);
lbl_periodo2.Caption:=lbl_periodo.Caption;

lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';
if CB_TIPOREL.ItemIndex=4 then

//if DM1.Tb_PargerPPEDFPGTO.AsInteger>1000 then
   lbl_titulo.Caption:='Relatório de Pedidos c/forma de Pagamento'
else if CB_TIPOREL.ItemIndex=0 then
   lbl_titulo.Caption:='Relatório de Pedidos c/forma de Pagamento'
else if CB_TIPOREL.ItemIndex=1 then
   lbl_titulo.Caption:='Relatório de Pedidos c/forma de Cobranca(Banco)'
else if CB_TIPOREL.ItemIndex=2 then
   lbl_titulo.Caption:='Relatório de Pedidos c/forma Prevista de Pagamento(Vinculado ao Plano de Vendas)'
else if CB_TIPOREL.ItemIndex=3 then
   lbl_titulo.Caption:='Relatório de Pedidos com os Planos de Vendas';
rl_bandtotPed.Visible:=false;
if not cds_resumo.Active  then
   cds_resumo.open;
cds_resumo.EmptyDataSet;
Qr_LDR.First;
RLReport1.PreviewModal;

end;

procedure TFrm_RelPed_FPPed.CODCLIExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.CODVENExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.CODREDExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelPed_FPPed.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RelPed_FPPed',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelPed_FPPed.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RelPed_FPPed.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.text:= fChamaCV(0,'frm_relpedfpped',key);
   CODCVExit(self);
   key:=#0;
   end;

end;

procedure TFrm_RelPed_FPPed.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_RelPed_FPPed.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.FormCreate(Sender: TObject);
var
x: Integer;
begin
PageControl1.ActivePage:=TabSheet1;
CB_TIPOREL.ItemIndex:=0;
CB_DATABAIXA.Enabled:=true;
CB_TIPORELClick(self);

cb_agrupar.ItemIndex:=9;
mboolean:=true;
//lbl_cabres.Borders.DrawTop:=mboolean;
lbl_cabres.Borders.DrawLeft:=mboolean;
lbl_cabres.Borders.DrawRight:=mboolean;
lbl_cabres.Borders.DrawBottom:=mboolean;
lblcab_nomfor.Borders.Drawleft:=mboolean;
lblcab_nomfor.Borders.DrawBottom:=mboolean;
lblcab_valor.Borders.DrawBottom:=mboolean;

lblcab_valor.Borders.Drawleft:=mboolean;
lblcab_valor.Borders.DrawRight:=mboolean;
det_valor.Borders.DrawRight:=mboolean;

det_nomfor.Borders.DrawLeft:=mboolean;
det_nomfor.Borders.DrawRight:=mboolean;
det_valor.Borders.DrawRight:=mboolean;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDateTime(fdt2, date);
Qr_LDRPFPDATA.DisplayFormat      :=fdt2;
Qr_LDRP1CUPACRE.DisplayFormat    :=mcasas;
Qr_LDRP1CUPDES.DisplayFormat     :=mcasas;
Qr_LDRP1TOTALL.DisplayFormat     :=mcasas;
Qr_LDRP1TOTDES.DisplayFormat     :=mcasas;
Qr_LDRP1TOTALB.DisplayFormat     :=mcasas;
Qr_LDRPFPVALOR.DisplayFormat     :=mcasas;
Qr_LDRVALOR_TOTAL.DisplayFormat  :=mcasas;
Qr_SangSupVALORR.DisplayFormat   :=mcasas;
Qr_SangSupDATAREAL.DisplayFormat :=fdt2;


//if (DM1.Tb_PargerPPEDFPGTO.AsFloat >1000)
if (CB_TIPOREL.ItemIndex=4) 

and (DM1.Tb_PargerPPEDFPGTO.AsFloat < 3) then
   begin
   lbl_tiporel.Visible  :=false;
   CB_TIPOREL.Visible   :=false;
   st_forma.Visible     :=true;
   lbx_codfp.Visible    :=true;
   CODFP.Visible        :=true;
   OMITIR_FP.Visible    :=true;
   lbl_codfp.Visible    :=true;
   lbl_cabcodfp.Visible :=true;
   lbl_totPfpgto.Visible:=true;
   lbl_totgfpgto.Visible:=true;
   lbl_totcodfp.Visible :=true;
   end
else
   begin
   lbl_tiporel.Visible :=true;
   CB_TIPOREL.Visible  :=true;
   st_forma.Visible    :=false;
   lbl_cabcodfp.Visible:=false;
   lbx_codfp.Visible   :=false;
   CODFP.Visible       :=false;
   OMITIR_FP.Visible   :=false;
   lbl_codfp.Visible   :=false;
//   lbl_totPfpgto.Visible:=False;
//   lbl_totgfpgto.Visible:=False;
//   lbl_totcodfp.Visible :=false;
   lbl_cabnomfp.Left   :=lbl_cabcodfp.Left;
   lbl_cabnomfp.Width  :=lbl_cabnomfp.Width+lbl_cabcodfp.Width;

   end;

flfilpad(codusr,'_RELPED_FPPED','');

if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSUP_CODDEP',[]) then
   EDTSUP_CODDEP.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSUP_CODCCU',[]) then
   EDTSUP_CODCCU.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSAN_CODDEP',[]) then
   EDTSAN_CODDEP.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

if DM4.Tb_FilPad2.Locate('FPCOMP','EDTSAN_CODCCU',[]) then
   EDTSAN_CODCCU.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

if (trim(edtsup_coddep.Text)='') and (trim(edtsup_codccu.Text)='') and
   (trim(edtsan_coddep.Text)='') and (trim(edtsan_codccu.Text)='') then
   CB_SANGSUP.Checked:=false
else
   CB_SANGSUP.Checked:=true;
if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','CB_MATRICIAL']),[]) then
   CB_MATRICIAL.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
else
   CB_MATRICIAL.Checked:=false;

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','CB_RAZNOM']),[]) then
   CB_RAZNOM.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
else
   CB_RAZNOM.Checked:=false;


if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','RG_FILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','CB_DESCPER']),[]) then
   cb_descper.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
else
   cb_descper.Checked:=false;


//if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','CB_TIPOREL']),[]) then
//   CB_TIPOREL.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELPED_FPPED','RG_TIPOPED']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
         begin
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   RG_TIPOPED.Checked[0] := TRUE;
   end;
cds_resumovalor.DisplayFormat:=mcasas;
end;

procedure TFrm_RelPed_FPPed.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabchave.Alignment     :=taRightJustify;
   lbl_cabdatap.Alignment     :=taRightJustify;
   lbl_cabcliente.Alignment   :=taRightJustify;
   lbl_cabtotbru.Alignment    :=taRightJustify;
   lbl_cabtotdes.Alignment    :=taRightJustify;
   lbl_cabtotliq.Alignment    :=taRightJustify;
   lbl_cabcodfp.Alignment     :=taRightJustify;
   lbl_cabnomfp.Alignment     :=taRightJustify;
   lbl_cabdtfp.Alignment      :=taRightJustify;
   lbl_cabfpgto.Alignment     :=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_cabchave.Alignment     :=taCenter;
   lbl_cabdatap.Alignment     :=taCenter;
   lbl_cabcliente.Alignment   :=taCenter;
   lbl_cabtotbru.Alignment    :=taCenter;
   lbl_cabtotdes.Alignment    :=taCenter;
   lbl_cabtotliq.Alignment    :=taCenter;
   lbl_cabcodfp.Alignment     :=taCenter;
   lbl_cabnomfp.Alignment     :=taCenter;
   lbl_cabdtfp.Alignment      :=taCenter;
   lbl_cabfpgto.Alignment     :=taCenter;
   end;
lbl_titulo.Borders.DrawBottom    :=mboolean;
db_grupo.Borders.DrawBottom      :=mboolean;
band_cab.Borders.DrawBottom      :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;


lbl_cabchave.Borders.DrawRight     :=mboolean;
lbl_cabdatap.Borders.DrawRight  :=mboolean;
lbl_cabcliente.Borders.DrawRight:=mboolean;
lbl_cabtotbru.Borders.DrawRight :=mboolean;
lbl_cabtotdes.Borders.DrawRight :=mboolean;
lbl_cabtotliq.Borders.DrawRight :=mboolean;
lbl_cabcodfp.Borders.DrawRight  :=mboolean;
lbl_cabnomfp.Borders.DrawRight  :=mboolean;
lbl_cabdtfp.Borders.DrawRight   :=mboolean;
lbl_cabfpgto.Borders.DrawRight  :=mboolean;


lbl_chave.Borders.DrawRight   :=mboolean;
lbl_datap.Borders.DrawRight   :=mboolean;
lbl_cliente.Borders.DrawRight :=mboolean;
lbl_totbru.Borders.DrawRight  :=mboolean;
lbl_totdes.Borders.DrawRight  :=mboolean;
lbl_totliq.Borders.DrawRight  :=mboolean;
lbl_codfp.Borders.DrawRight   :=mboolean;
lbl_nomfp.Borders.DrawRight   :=mboolean;
lbl_dtfp.Borders.DrawRight   :=mboolean;
lbl_fpgto.Borders.DrawRight   :=mboolean;

rlgrupo_chave.Borders.DrawLeft   :=mboolean;
rlgrupo_chave.Borders.DrawRight  :=mboolean;
rlgrupo_chave.Borders.DrawTop    :=mboolean;
rlgrupo_chave.Borders.DrawBottom :=mboolean;



lbl_totchave.Borders.DrawRight     :=mboolean;
lbl_totdatap.Borders.DrawRight  :=mboolean;
lbl_totcliente.Borders.DrawRight:=mboolean;
lbl_tottotbru.Borders.DrawRight :=mboolean;
lbl_tottotdes.Borders.DrawRight :=mboolean;
lbl_tottotliq.Borders.DrawRight :=mboolean;
lbl_totcodfp.Borders.DrawRight  :=mboolean;
lbl_totnomfp.Borders.DrawRight  :=mboolean;
lbl_totdtfp.Borders.DrawRight   :=mboolean;
lbl_totfpgto.Borders.DrawRight  :=mboolean;

lbl_totgchave.Borders.DrawRight     :=mboolean;
lbl_totgdatap.Borders.DrawRight  :=mboolean;
lbl_TotGcliente.Borders.DrawRight:=mboolean;
lbl_totgtotbru.Borders.DrawRight :=mboolean;
lbl_totgtotdes.Borders.DrawRight :=mboolean;
lbl_totgtotliq.Borders.DrawRight :=mboolean;
lbl_totgcodfp.Borders.DrawRight  :=mboolean;
lbl_totgnomfp.Borders.DrawRight  :=mboolean;
lbl_totgdtfp.Borders.DrawRight   :=mboolean;
lbl_totgfpgto.Borders.DrawRight  :=mboolean;

lbl_totpchave.Borders.DrawRight     :=mboolean;
lbl_totpdatap.Borders.DrawRight  :=mboolean;
lbl_Totpcliente.Borders.DrawRight:=mboolean;
lbl_totptotbru.Borders.DrawRight :=mboolean;
lbl_totptotdes.Borders.DrawRight :=mboolean;
lbl_totptotliq.Borders.DrawRight :=mboolean;
lbl_totpcodfp.Borders.DrawRight  :=mboolean;
lbl_totpnomfp.Borders.DrawRight  :=mboolean;
lbl_totpdtfp.Borders.DrawRight   :=mboolean;
lbl_totpfpgto.Borders.DrawRight  :=mboolean;


RLBand_cabsup.Borders.DrawTop   :=mboolean;
RLBand_cabsup.Borders.DrawLeft  :=mboolean;
RLBand_cabsup.Borders.DrawRight :=mboolean;

RLGroup2.Borders.DrawTop        :=mboolean;
RLGroup2.Borders.DrawLeft       :=mboolean;
RLGroup2.Borders.DrawRight      :=mboolean;

RLsup_cabdet.Borders.DrawTop    :=mboolean;

RLsuptotgru.Borders.DrawTop     :=mboolean;
RLsuptotgru.Borders.DrawLeft    :=mboolean;


RLsuptotger.Borders.DrawTop     :=mboolean;
RLsuptotger.Borders.DrawBottom  :=mboolean;


lbl_fcdata.Borders.DrawRight     :=mboolean;
lbl_fcdescricao.Borders.DrawRight:=mboolean;

edt_fcdata.Borders.DrawRight     :=mboolean;
edt_fcdescricao.Borders.DrawRight:=mboolean;

tot_fcdata.Borders.DrawRight     :=mboolean;
tot_fcdescricao.Borders.DrawRight:=mboolean;
lbl_cabres.Borders.DrawTop:=mboolean;
lbl_cabres.Borders.DrawLeft:=mboolean;
lbl_cabres.Borders.DrawRight:=mboolean;
lbl_cabres.Borders.DrawBottom:=mboolean;
lblcab_nomfor.Borders.DrawTop:=mboolean;
lblcab_valor.Borders.DrawTop:=mboolean;
det_nomfor.Borders.DrawLeft:=mboolean;
det_valor.Borders.DrawRight:=mboolean;



end;


procedure TFrm_RelPed_FPPed.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_RePed_FPPed',Key);
   if trim(CODTEL.Text)<>'' then
      CODTELExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelPed_FPPed.CODTELExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.lbx_codtelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      CODSUP.Text:=fChamaSup(0,'frm_proabc',Key);
      
      lbx_codsup.Items.Add(FormatFloat('0000000',DM1.Tb_SupSCODSUP.AsFloat)
                                      +' - '+DM1.Tb_SupSNOME.Value);
      CODSUP.text := '';
      CODSUP.SetFocus;
      key:=#0;
   end else
      if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_RelPed_FPPed.CODSUPExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.CODCVExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_RelPed_FPPed',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_RelPed_FPPed.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.CODLOCExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.sbn_coddepClick(Sender: TObject);
begin
CODUF.Text :=fChamaUF(0,'frm_RelPe_FPPed','');
if trim(CODUF.Text)<>'' then
   CODUFExit(Self);

end;

procedure TFrm_RelPed_FPPed.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_RelPed_FPPed.sbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(codusr,'_RELPED_FPPED' ,'');
fGravaPadroes(codusr,'CB_SEMBORDA'    ,'checked'        ,'_RELPED_FPPED',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATRICIAL'   ,'checked'        ,'_RELPED_FPPED',iif(CB_MATRICIAL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_RAZNOM'      ,'checked'        ,'_RELPED_FPPED',iif(CB_RAZNOM.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'     ,'itemindex'      ,'_RELPED_FPPED',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_VISREL'      ,'checked'        ,'_RELPED_FPPED',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_VISREL'      ,'checked'        ,'_RELPED_FPPED',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'RG_FILTRO'      ,'itemindex'      ,'_RELPED_FPPED',IntTostr(RG_FILTRO.ItemIndex));
fGravaPadroes(codusr,'CB_DESCPER'     ,'itemindex'      ,'_RELPED_FPPED',iif(cb_descper.Checked,'true','false'));
//fGravaPadroes(codusr,'CB_TIPOREL'     ,'itemindex'      ,'_RELPED_FPPED',IntTostr(CB_TIPOREL.ItemIndex));

mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_RELPED_FPPED',mcinst2);

fMensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_RelPed_FPPed.cb_agruparClick(Sender: TObject);
begin
if cb_agrupar.ItemIndex<0 then
   with cb_agrupar do ItemIndex:=Items.IndexOf(cb_agrupar.Text);
cb_agrupar.text:=cb_agrupar.Items.Strings[cb_agrupar.ItemIndex];

end;

procedure TFrm_RelPed_FPPed.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_RelPed_FPPed.CB_MATRICIALClick(Sender: TObject);
begin
if not CB_MATRICIAL.Checked then
   begin
   RLReport1.DefaultFilter  :=nil;
   lbl_cabchave.Font.Style  :=[];
   lbl_cabdatap.Font.Style :=[];
   lbl_cabcliente.Font.Style:=[];
   lbl_cabtotbru.Font.Style :=[];
   lbl_totdes.Font.Style    :=[];
   lbl_cabtotliq.Font.Style :=[];

   end
else
   begin
   RLReport1.DefaultFilter  :=Matricial;
   lbl_cabchave.Font.Style  :=[fsBold];
   lbl_cabdatap.Font.Style  :=[fsBold];
   lbl_cabcliente.Font.Style:=[fsBold];
   lbl_cabtotbru.Font.Style :=[fsBold];
   lbl_totdes.Font.Style    :=[fsBold];
   lbl_cabtotliq.Font.Style :=[fsBold];

   end;

end;

procedure TFrm_RelPed_FPPed.band6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mQtdGrupo:=mQtdGrupo+1;
if (mQtdGrupo>1) and (not rlTotalGer.Visible) then
   rlTotalGer.Visible:=true;


end;

procedure TFrm_RelPed_FPPed.CODUFExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotdes_ger:=0;
mtotdes    :=0;
mtotfp_qtd :=0;
mtotger_qtd:=0;
mtotger_bru:=0;
mtotfp     :=0;
mtotchave  :=0;
mtotbru    :=0;
mtotger    :=0;
mQtdFP     :=0;
end;

procedure TFrm_RelPed_FPPed.RLBand_detailBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mQtdFP    :=mQtdFP+1;

{if (Qr_LDRP1TIPO_ENTSAI.AsInteger=1) then
   begin
   mtotchave   :=mtotchave-Qr_LDRPFPVALOR.Value;
   mtotger     :=mtotger-Qr_LDRVALOR_TOTAL.Value;
   mtotfp      :=mtotfp-Qr_LDRVALOR_TOTAL.Value;
   end
else
}
   begin

   mtotchave   :=mtotchave+Qr_LDRPFPVALOR.Value;
   mtotger     :=mtotger+Qr_LDRVALOR_TOTAL.Value;
   mtotfp      :=mtotfp+Qr_LDRVALOR_TOTAL.Value;
   end;


if (mChave_ant<>Qr_LDRP1CHAVE.AsFloat) or (mOrdem_ant<>Qr_LDRP1ORDEM.AsFloat) or (mCodEmp_Ant<>Qr_LDRP1CODEMP.AsFloat) then
   begin
   mChave_ant:=Qr_LDRP1CHAVE.asfloat;

   mOrdem_ant:=Qr_LDRP1ORDEM.Asfloat;
   lbl_chave.Caption     :=Qr_LDRP1CHAVE.AsString;
   lbl_datap.Caption     :=FormatDatetime(fdt2,  Qr_LDRP1DATDOC.AsDateTime);
   if CB_RAZNOM.Checked then
     lbl_cliente.Caption :=Qr_LDRCDENOM.AsString
   else
     lbl_cliente.Caption :=Qr_LDRCRAZAO.AsString;

   lbl_totbru.Caption    :=FormatFloat(mcasas, Qr_LDRP1TOTALB.AsFloat);
   mtotbru  := mtotbru + Qr_LDRP1TOTALB.AsFloat;

   mtotger_bru := mtotger_bru + Qr_LDRP1TOTALB.AsFloat;



   if cb_descper.Checked then
     begin
     if Qr_LDRP1TOTDES.AsFloat>0 then
       begin
       try
         lbl_totdes.Caption    :=FormatFloat(mcasas, Qr_LDRP1TOTDES.AsFloat/Qr_LDRP1TOTALB.AsFloat*100)+'%';
       except
         lbl_totdes.Caption    :=FormatFloat(mcasas,0)+'%';
         end;
       end
     else
       begin
       lbl_totdes.Caption    :=FormatFloat(mcasas,0)+'%';
       end;
     end
   else
     begin
     lbl_totdes.Caption    :=FormatFloat(mcasas, Qr_LDRP1TOTDES.AsFloat);
     end;
   mtotdes    :=mtotdes    +Qr_LDRP1TOTDES.AsFloat;
   mtotdes_ger:=mtotdes_ger+Qr_LDRP1TOTDES.AsFloat;



   lbl_totliq.Caption    :=FormatFloat(mcasas, Qr_LDRP1TOTALL.AsFloat);
   mChave_ant:=Qr_LDRP1CHAVE.asfloat;
   mOrdem_ant:=Qr_LDRP1ORDEM.Asfloat;
   mCodEmp_Ant:=Qr_LDRP1CODEMP.AsFloat;
   mtotfp_qtd :=mtotfp_qtd+1;
   mtotger_qtd:=mtotger_qtd+1;
   end
else
   begin
   lbl_chave.Caption   :='';
   lbl_datap.Caption   :='';
   lbl_cliente.Caption :='';
   lbl_totbru.Caption  :='';    
   lbl_totdes.Caption  :='';
   lbl_totliq.Caption  :='';
   pTotalB:=0;
   pTotalD:=0;
   pTotalL:=0;
   end;

if cds_resumo.Locate('res_forma',Trim(Copy(Qr_LDRPFPNOMFOR.AsString,1,30)),[]) then
   cds_resumo.Edit
else
   begin
   cds_resumo.Append;
   cds_resumovalor.Value:=0;
   end;
cds_resumores_forma.AsString:=Trim(Qr_LDRPFPNOMFOR.AsString);
cds_resumovalor.Value    :=cds_resumovalor.Value+
   (Qr_LDRPFPVALOR.AsFloat * iif(Qr_LDRP1TIPO_ENTSAI.AsInteger=1,-1,1));
cds_resumo.Post;

end;

procedure TFrm_RelPed_FPPed.rlTotalGerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totfpgto.Caption:=Formatfloat(mcasas, mtotger);
lbl_totdatap.Caption:='Qtd.Ped: '+FloatToStr(mtotger_qtd);
lbl_tottotbru.Caption:=Formatfloat(mcasas, mtotger_bru);
if not cb_descper.Checked then
  lbl_tottotdes.Caption:=Formatfloat(mcasas, mtotdes_ger)
else
  begin
  try
     if (mtotdes<>0) and (mtotger_bru<>0) then
        lbl_tottotdes.Caption:=Formatfloat(mcasas, (mtotdes_ger)/mtotger_bru*100)+'%'
     else
        lbl_tottotdes.Caption:='';

  except
     end;
  end;
end;                                                                                                                               

procedure TFrm_RelPed_FPPed.rl_bandtotBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lbl_totgfpgto.Caption:=Formatfloat(mcasas, mtotfp);
lbl_TotGtotbru.Caption:=FormatFloat(mcasas,mtotbru);
if not cb_descper.Checked then
  lbl_TotGtotdes.Caption:=Formatfloat(mcasas, mtotdes)
else
  lbl_TotGtotdes.Caption:=Formatfloat(mcasas, (mtotdes)/mtotbru*100)+'%';
lbl_TotGdatap.Caption:='Qtd.Ped: '+FloatToStr(mtotfp_qtd);
mtotfp    :=0;
mtotfp_qtd:=0;
mtotbru   :=0;
mtotdes   :=0;

end;

procedure TFrm_RelPed_FPPed.lbx_codfpKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfp.ItemIndex>=0 then
      lbx_codfp.Items.Delete(lbx_codfp.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.CODFPExit(Sender: TObject);
begin
CODFP.Text:=fdeixanum2(CODFP.Text);
if Trim(CODFP.Text)<>'' then
   begin
   DM1.Tb_FP.Close;
   DM1.Tb_FP.SQL.Clear;
   DM1.Tb_FP.SQL.add('Select * from CADFP ');
   if trim(CODFP.Text)<>'' then
      DM1.Tb_FP.SQL.Add(' where FPCODIGO=0'+Trim(CODFP.Text));
   DM1.Tb_FP.Open;
   if DM1.Tb_FP.Eof then
      begin
      fMensagem('Forma de Pagamento não Cadastrado!',0,['0'],0);
      CODFP.SetFocus;
      end
   else
      begin
      lbx_codfp.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_FPFPCODIGO.ASSTRING))
                                    +' - '+DM1.Tb_FPFPDESC.Value);

      CODFP.text := '';
      CODFP.SetFocus;
      end;
   end;


end;

procedure TFrm_RelPed_FPPed.CODFPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFP.text:=fChamaFPag(0,'frm_fped',key);
   CODFPExit(Self);
   key:=#0;
   end
else
   if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_RelPed_FPPed.rl_bandtotPedBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if mQtdFP<2 then
   rl_bandtotPed.Visible:=false
else
   rl_bandtotPed.Visible:=true;
lbl_totpfpgto.Caption:=Formatfloat(mcasas, mtotchave);


mtotchave:=0;
mQtdFP   :=0;

end;

procedure TFrm_RelPed_FPPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RelPed_FPPed.CODBCOExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.CODBCOKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_RelPed_FPPed.lbx_codbcoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_RelPed_FPPed.CB_TIPORELClick(Sender: TObject);
begin
if CB_TIPOREL.ItemIndex=0 then
   begin
   CB_DATABAIXA.Visible:=true;
   CB_DATABAIXA.Checked:=true;
   end
else
   begin
   CB_DATABAIXA.Checked:=false;
   CB_DATABAIXA.Visible:=false;
   CB_DATABAIXA.Checked:=false;
   end;


end;

procedure TFrm_RelPed_FPPed.gb_sangriaExit(Sender: TObject);
begin
if trim(edtsup_coddep.Text)<>'' then
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',edtsup_coddep.Text) then
      begin
      fmensagem('Departamento de Suprimento não Cadastrado!',0,['0'],0);
      edtsup_coddep.SetFocus;
      end;
   end;

if trim(edtsup_codccu.Text)<>'' then
   begin
   if not flqr1('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',edtsup_codccu.Text) then
      begin
      fmensagem('Centro de Custo de Suprimento não Cadastrado!',0,['0'],0);
      edtsup_codccu.SetFocus;
      exit;
      end
   else
      begin
      if DM1.Query1.FieldByName('CCNAT').AsString<>'C' then
         begin
         fmensagem('o Centro de Custo para Suprimento a natureza tem que ser '
                 +' credito. Centro de custo Selecionado: '
                 +DM1.Query1.FieldbyName('CCNOME').AsString
                 +' Natureza: '+DM1.Query1.FieldbyName('CCNAT').AsString
                 ,0,['0'],0);
         edtsup_codccu.SetFocus;
         exit;
         end;
      end;
   end;
//

if trim(edtsan_coddep.Text)<>'' then
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',edtsan_coddep.Text) then
      begin
      fmensagem('Departamento da Sangria não Cadastrado!',0,['0'],0);
      edtsan_coddep.SetFocus;
      end;
   end;

if trim(edtsan_codccu.Text)<>'' then
   begin
   if not flqr1('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',edtsan_codccu.Text) then
      begin
      fmensagem('Centro de Custo da Sangria não Cadastrado!',0,['0'],0);
      edtsan_codccu.SetFocus;
      exit;
      end
   else
      begin
      if DM1.Query1.FieldByName('CCNAT').AsString<>'D' then
         begin
         fmensagem('o Centro de Custo para Sangria a natureza tem que ser '
                 +' Débito. Centro de custo Selecionado: '
                 +DM1.Query1.FieldbyName('CCNOME').AsString
                 +' Natureza: '+DM1.Query1.FieldbyName('CCNAT').AsString
                 ,0,['0'],0);
         edtsan_codccu.SetFocus;
         exit;
         end;
      end;
   end;



fDeletaPadroes(-1,'_RELPED_FPPED' ,'');
fGravaPadroes(-1,'EDTSUP_CODDEP','text' ,'_RELPED_FPPED',edtsup_coddep.Text);
fGravaPadroes(-1,'EDTSUP_CODCCU','text' ,'_RELPED_FPPED',edtsup_codccu.Text);
fGravaPadroes(-1,'EDTSAN_CODDEP','text' ,'_RELPED_FPPED',edtsan_coddep.Text);
fGravaPadroes(-1,'EDTSAN_CODCCU','text' ,'_RELPED_FPPED',edtsan_codccu.Text);

end;

procedure TFrm_RelPed_FPPed.RLBand5AfterPrint(Sender: TObject);
begin
mTotFluxo:=mTotFluxo+Qr_SangSupVALORR.AsFloat;
if trim(Qr_SangSupGRUPO.AsString)='SANGRIA' then
   mTotSan:=mTotSan+Qr_SangSupVALORR.AsFloat
else
   mTotSup:=mTotSup+Qr_SangSupVALORR.AsFloat;

end;

procedure TFrm_RelPed_FPPed.RLsuptotgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
tot_fcvalor.Caption:=FormatFloat(mcasas, mTotFluxo);



end;

procedure TFrm_RelPed_FPPed.RLsuptotgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
totger_fcvalor.Caption:=formatfloat(mcasas, mtotger+mTotSup-mTotSan);
mtotger_qtd:=0;
mtotbru    :=0;
mtotger_bru:=0;
mtotger    :=0;
mTotSup:=0;
mTotSan:=0;
end;

procedure TFrm_RelPed_FPPed.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_RelPed_FPPed.Qr_LDRCalcFields(DataSet: TDataSet);
begin
Qr_LDRPSUBMOD.AsString:=PalNum_Sis(Qr_LDRP1SUBMOD.Value);
//Qr_LDRVALOR_TOTAL.AsFloat:=Qr_LDRPFPVALOR.AsFloat*(100-Qr_LDRPSUBMOD.AsFloat)/100;
Qr_LDRVALOR_TOTAL.AsFloat:=Qr_LDRPFPVALOR.AsFloat*iif(Qr_LDRP1TIPO_ENTSAI.asinteger=1,-1,1);
end;

procedure TFrm_RelPed_FPPed.FormShow(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
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
if DM1.Tb_EmpCGC.asfloat=11131694000112 then
   fAjustarCabecalhodoPedidoDiferentedosItens(now-30,pdatanula,true);

end;

procedure TFrm_RelPed_FPPed.edt_codusr_cxExit(Sender: TObject);
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

procedure TFrm_RelPed_FPPed.edt_codusr_cxKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr_cx.Text:=fChamaUsr(0,'frm_RCRec',Key);
   edt_codusr_cxExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RelPed_FPPed.lbx_codusr_cxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr_cx.ItemIndex>=0 then
      lbx_codusr_cx.Items.Delete(lbx_codusr_cx.ItemIndex);

end;

end.
