unit S_RelVendaComis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_Cli,  S_Ven, S_Tra,lerarq,S_Usr,S_DM4,  CheckLst, S_SelEmp,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants,S_Red,s_Con,S_Sup,S_Loc,S_UF;


type
  TFrm_RelVendaComis = class(TForm)
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
    Matricial: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    Label2: TLabel;
    tsRelatorio: TTabSheet;
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
    RG_FILTRO: TRadioGroup;
    RLGroup1: TRLGroup;
    Qr_LDRCODVEN: TFloatField;
    Qr_LDRNOMEVEN: TStringField;
    Qr_LDRVLRCOMISSAO: TFloatField;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    lbl_cabcodven: TRLLabel;
    lbl_cabnomven: TRLLabel;
    lbl_cadcd: TRLLabel;
    lbl_cabped: TRLLabel;
    lbl_cabsdesc: TRLLabel;
    lbl_cabtotal: TRLLabel;
    lbl_cabcomis: TRLLabel;
    RLBand3: TRLBand;
    RLLabel23: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel10: TRLLabel;
    lbl_cadquota: TRLLabel;
    lbl_PQuota: TRLLabel;
    Qr_LDRVALORSDESC: TFloatField;
    Qr_LDRVLRTOTAL: TFloatField;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    Qr_LDRPED: TFloatField;
    RLDBText8: TRLDBText;
    Qr_LDRVLRCOMISSAO_DEV: TFloatField;
    Qr_LDRVALORSDESC_DEV: TFloatField;
    Qr_LDRVLRTOTAL_DEV: TFloatField;
    Qr_LDRPED_DEV: TFloatField;
    Qr_LDRVLRCOMISSAO_EXTRA: TFloatField;
    Qr_LDRVLRCOMISSAO_EXTRA_DEV: TFloatField;
    Qr_LDRVCALCCOMISSAO: TFloatField;
    Qr_LDRVCALCCOMISSAO_DEV: TFloatField;
    Qr_LDRVCALCCOMISSAO_EXTRA: TFloatField;
    Qr_LDRVCALCCOMISSAO_DEV_EXTRA: TFloatField;
    lbl_cabtotdev: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    Qr_LDRvalorcomisliq: TFloatField;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    lbl_totpedDev: TRLLabel;
    lbl_totPed: TRLLabel;
    lbl_totdes: TRLLabel;
    lbl_totliq: TRLLabel;
    lbl_totdev: TRLLabel;
    lbl_totcomis: TRLLabel;
    Qr_LDRqtdped: TFloatField;
    Qr_LDRqtddev: TFloatField;
    CB_FORCAR: TCheckBox;
    Qr_LDRtotalliq: TFloatField;
    Qr_LDRquotaperiodo: TFloatField;
    Qr_LDRpercentual: TFloatField;
    lbl_cabVdaDev: TRLLabel;
    lbl_VdaDev: TRLDBText;
    db_quota: TRLDBText;
    db_PQuota: TRLDBText;
    lbl_TotVdaDev: TRLLabel;
    lbl_totcadquota: TRLLabel;
    lbl_totPQuota: TRLLabel;
    Label1: TLabel;
    CB_TIPOPESQ: TComboBox;
    CB_ICMSRET: TCheckBox;
    RLBand5: TRLBand;
    filtros: TRLMemo;
    StaticText11: TStaticText;
    CODORI_PED: TEdit;
    lbx_oriped: TListBox;
    OMITIR_ORIPED: TCheckBox;
    Label3: TLabel;
    CB_ORICOMIS: TComboBox;
    lbl_comisExtra: TRLLabel;
    RLDBText5: TRLDBText;
    Qr_LDRvalorcomisextra: TFloatField;
    lbl_totcomisextra: TRLLabel;
    CB_ORICOMISEXTRA: TComboBox;
    Label6: TLabel;
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
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODUFExit(Sender: TObject);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODORI_PEDExit(Sender: TObject);
    procedure CODORI_PEDKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_oripedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RelVendaComis: TFrm_RelVendaComis;
  mQtdPedDev: Real;
  mQtdPed: Real;
  mTotDes: Real;
  mTotliq: Real;
  mTotVdaDev: Real;
  mTotQuota: Real;
  mTotDev: Real;
  mTotComis: Real;
  mTotComis_Extra: Real;


implementation

uses S_DM6, S_OriPed;

{$R *.DFM}

procedure TFrm_RelVendaComis.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelVendaComis.bbImprimirClick(Sender: TObject);
var
mReg, x: Integer;
mEscolhidos: String;
mTabCli: Boolean;
mTabUsr: Boolean;
mTabSup: Boolean;
mTabCV: Boolean;
mTabVen : Boolean;
mTabFor : Boolean;
mTabPro : Boolean;

mNomeGrupo: String;
mNomeOrdem: String;
mCampoComis: String;
mCampoComis_Extra: String;

begin
if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';



DM1.Query5.close;

mTabCli:=false;
mTabUsr:=False;
mTabSup:=False;
mTabCV :=False;
mTabVen:= False;
mTabPro:=false;
mTabFor:=False;
if CB_ORICOMIS.ItemIndex=1 then
   mTabVen:=true
else if CB_ORICOMIS.ItemIndex=2 then
   mTabPro:=true
else if CB_ORICOMIS.ItemIndex=3 then
   mTabFor:=true;

if CB_ORICOMISEXTRA.ItemIndex=1 then
   mTabVen:=true
else if CB_ORICOMISEXTRA.ItemIndex=2 then
   mTabPro:=true
else if CB_ORICOMISEXTRA.ItemIndex=3 then
   mTabFor:=true;



if (cb_agrupar.ItemIndex=4) then
   mTabCV:=true;

if (cb_agrupar.ItemIndex=8) or (lbx_codsup.Items.Count>0) then
   begin
   mTabSup:=true;
   end;

if (cb_agrupar.ItemIndex=9) then
   mTabUsr:=true;


DM1.Query4.Close;
DM1.Query4.Sql.Clear;
DM1.Query4.Sql.Add('Select CVCODVEN,sum(CVCOTAVLR) AS COTAVLR, sum(CVCOTAQTD) as COTAQTD '
                  +' from CADVEN_COTAMES ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADVEN',[]) then
   begin
   DM1.query4.SQL.add(mcinst+' CVCODEMP=0'+IntTostr(codemp));
   mcinst:=' and ';
   end;
if trim(MDT1.Text)<>'/  /' then
   begin
   DM1.query4.SQL.add(mcinst+' CVANO>='+FormatDatetime('yyyy', StrToDate(MDT1.Text))
                     +' and CVMES>='+FormatDatetime('mm', StrToDate(MDT1.Text)));
   mcinst:=' and ';
   end;

if trim(MDT2.Text)<>'/  /' then
   begin
   DM1.query4.SQL.add(mcinst+' CVANO<='+FormatDatetime('yyyy', StrToDate(MDT2.Text))
                     +' and CVMES<='+FormatDatetime('mm', StrToDate(MDT2.Text)));
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   DM1.Query4.SQL.Add(' and CVCODVEN '+mcinst2);
DM1.Query4.SQL.Add(' group by CVCODVEN ');

DM1.Query4.Open;
//DM1.query4.SQL.SaveToFile('c:\sql.txt');

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

if mTabCli then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   end;
if mTabFor then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADFOR','FCODEMP','P2CODEMP','FCODFOR','P2CODFAB');
   end;
if mTabPro then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
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




   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(1,'cadp02' ,'p2codemp','p1codemp' ,'p2lotseq' ,'p1lotseq','p2chave' ,'p1chave','p2ordem' ,'p1ordem');

   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');

mcinst4:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

if CB_ICMSRET.Checked then
   mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,(P2TOTLIQ-P2ICMSR)*-1,(P2TOTLIQ-P2ICMSR))'
else
   mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,P2TOTLIQ*-1,P2TOTLIQ))';
if CB_ORICOMIS.ItemIndex=0 then
   mCampoComis:='P2PCOMIS'
else if CB_ORICOMIS.ItemIndex=1 then
   mCampoComis:='VCOMIS'
else if CB_ORICOMIS.ItemIndex=2 then
   mCampoComis:='PDCOMIS'
else if CB_ORICOMIS.ItemIndex=3 then
   mCampoComis:='FCOMIS';

if CB_ORICOMISEXTRA.ItemIndex=0 then
   mCampoComis_Extra:='P2PCOMIS_EXTRA'
else if CB_ORICOMISEXTRA.ItemIndex=1 then
   mCampoComis_Extra:='VCOMIS'
else if CB_ORICOMISEXTRA.ItemIndex=2 then
   mCampoComis_Extra:='PDCOMIS'
else if CB_ORICOMISEXTRA.ItemIndex=3 then
   mCampoComis_Extra:='FCOMIS';


Qr_LDR.Close;
Qr_LDR.SQL.Clear;
Qr_LDR.SQL.Add('select p1codven as codven,vnome as nomeven, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,0 '
              +'       ,  (( '+mcinst4+'*P2PRECO)-P2TOTDES) *'+mCampoComis+'/100) '
              +'       ) as VlrComissao, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1, '

              +'         ((( '+mcinst4+'*P2PRECO)-P2TOTDES) *'+mCampoComis+'/100) '
              +'       ,0) '
              +'       ) as VlrComissao_dev, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,0 '
              +'       ,P2VCOMIS_EXTRA) '
              +'        ) as VlrComissao_extra, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,P2VCOMIS_EXTRA '
              +'       ,0) '
              +'       ) as VlrComissao_extra_dev, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,0 '
              +'       ,  ((( '+mcinst4+'*P2PRECO)-P2TOTDES) *'+mCampoComis+'/100) '
              +'                   ) '
              +'        )  as VCalcComissao, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,  (( ('+mcinst4+'*P2PRECO)-P2TOTDES)*'+mCampoComis+'/100) '
              +'       ,0) '
              +'       ) as VCalcComissao_dev, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,0 '
              +'       , ((( '+mcinst4+'*P2PRECO)-P2TOTDES)*'+mCampoComis_Extra+'/100) '
              +'       ) '
              +'       ) as VCalcComissao_extra, '
              +'Sum(decode(p1tipo_entsai '
              +'       ,1,((( '+mcinst4+'*P2PRECO)-P2TOTDES)*'+mCampoComis_Extra+'/100) '
              +'       ,0) '
              +'       ) as VCalcComissao_dev_extra, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,0 '
              +'       ,('+mcinst4+'*p2preco) ) '
              +'       )  as valorsdesc, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,('+mcinst4+'*p2preco) '
              +'       ,0 ) '
              +'       )  as valorsdesc_dev, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,0 '
              +'       ,(p2totliq)) '
              +'       ) as vlrtotal, '
              +'Sum(decode(p1tipo_entsai '
              +'       ,1,(p2totliq) '
              +'       ,0 ) '
              +'       ) as vlrtotal_dev, '
              +'Sum(decode(p1tipo_entsai '
              +'       ,1,0 '
              +'       ,1  ) '
              +'       ) as ped, '
              +' Sum(decode(p1tipo_entsai '
              +'       ,1,1 '
              +'       ,0  ) '
              +'       ) as ped_dev '
              +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
              +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=P1CODEMP and ')
              +' P2LOTSEQ=P1LOTSEQ '
              +' and P2CHAVE=P1CHAVE and P1TIPO<>0 AND P1TIPO<>10 '
              +iif(la_instrucao='','',' and '+la_instrucao)
              +' and P1STATUS <9 ');

if trim(MDT1.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+pDataPesq+'>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+pDataPesq+'<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));

if RG_FILTRO.ItemIndex=0 then
   Qr_LDR.sQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   Qr_LDR.SQL.Add(' and P1EMIDOC<>0');

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1CODCLI '+mcinst2);

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

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1TIPO '+mcinst2);
Qr_LDR.sQL.Add(' and P1TIPO>0 ');

Qr_LDR.SQL.add(' group by '
                  +' p1codven,vnome ');
Qr_LDR.SQL.add(' order by vnome ');
//Qr_LDR.SQL.SaveToFile('C:\SQL.TXT');


try
   Qr_LDR.Open;
except
   fmensagem('erro ao Selecionar Registros: ',0,['0'],0 );
   exit;
   end;

if Qr_LDR.IsEmpty then
   begin
   fmensagem('Não ha Registro a ser Impresso!',0,['0'],0);
   exit;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

if mTabCli then
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

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
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';

fInnerJoin(0,'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');

DM1.Query5.close;
DM1.Query5.Sql.Clear;
DM1.Query5.Sql.Add(' select p1codven, '
                  +' Sum (decode(p1tipo_entsai '
                  +' ,1,0 '
                  +'  ,1 ) ) as qtdped '
                  +', Sum (decode(p1tipo_entsai '
                  +' ,1,1 '
                  +'  ,0 ) ) as qtddev '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +' P1TIPO<>0 AND P1TIPO<>10 '
                  +iif(la_instrucao='','',' and '+la_instrucao)
                  +' and P1STATUS <9 ');
if trim(MDT1.Text)<>'/  /'then
   DM1.Query5.SQL.Add(' and '+pDataPesq+'>='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /'then
   DM1.Query5.SQL.Add(' and '+pDataPesq+'<='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT2.Text))+chr(39));

if RG_FILTRO.ItemIndex=0 then
   DM1.Query5.sQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   DM1.Query5.SQL.Add(' and P1EMIDOC<>0');

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and P1CODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and CCODRED '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and P1CODCV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and CCUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(' and P1TIPO '+mcinst2);
DM1.Query5.sQL.Add(' and P1TIPO>0 ');

DM1.Query5.SQL.add(' group by '
                  +' p1codven ');

//DM1.Query5.sql.SaveToFile('c:\sql02.txt');

DM1.Query5.Open;
lbl_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);

filtros.Lines.Clear;
if lbx_codcli.Items.Count>0 then
   FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if lbx_codven.Items.Count>0 then
   FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codtel.Items.Count>0 then
   FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);
if lbx_codsup.Items.Count>0 then
   FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
if lbx_oriped.Items.Count>0 then
   FImprimeTitulo('Origem do Pedido',lbx_oriped,OMITIR_ORIPED);
if lbx_codred.Items.Count>0 then
   FImprimeTitulo('Rede de Cliente',lbx_codred,OMITIR_RED);
if lbx_codcv.Items.Count>0 then
   FImprimeTitulo('Convenio',lbx_codcv,OMITIR_CV);
if lbx_coduf.Items.Count>0 then
   FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);
if lbx_codloc.Items.Count>0 then
   FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
{

if lbx_codgfor.Items.Count>0 then
   FImprimeTitulo('Grupo de Fornecedor ',lbx_codgfor,OMITIR_GFOR);
if lbx_codfor.Items.Count>0 then
   FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);

}

RLReport1.PreviewModal;

end;

procedure TFrm_RelVendaComis.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcli.ItemIndex:=lbx_codcli.Items.Count-1;

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

procedure TFrm_RelVendaComis.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codven.ItemIndex:=lbx_codven.Items.Count-1;
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

procedure TFrm_RelVendaComis.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codred.ItemIndex:=lbx_codred.Items.Count-1;

      CODRED.text := '';
      CODRED.SetFocus;
      end
   else
      begin
      fmensagem('Rede não Cadastrado!',0,['0'],0);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;

end;

procedure TFrm_RelVendaComis.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelVendaComis.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_RelVendaComis',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelVendaComis.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;


end;

procedure TFrm_RelVendaComis.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamaCv(0,'Frm_PLDR',key);
   CODCVExit(self);
   end;

end;

procedure TFrm_RelVendaComis.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_RelVendaComis.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RelVendaComis.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_RelVendaComis.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_RelVendaComis.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;

Qr_LDRVLRCOMISSAO.DisplayFormat     	    := mcasas;
Qr_LDRVALORSDESC.DisplayFormat     	    := mcasas;
Qr_LDRVLRTOTAL.DisplayFormat     	    := mcasas;
Qr_LDRvalorcomisliq.DisplayFormat           := mcasas;
Qr_LDRvalorcomisextra.DisplayFormat         := mcasas;
Qr_LDRVALORSDESC.DisplayFormat              := mcasas;
Qr_LDRVALORSDESC_DEV.DisplayFormat          := mcasas;
Qr_LDRVCALCCOMISSAO.DisplayFormat           := mcasas;
Qr_LDRVLRCOMISSAO.DisplayFormat             := mcasas;
Qr_LDRVCALCCOMISSAO_EXTRA.DisplayFormat     := mcasas;
Qr_LDRVLRTOTAL_DEV.DisplayFormat            := mcasas;
Qr_LDRtotalliq.DisplayFormat                := mcasas;
Qr_LDRquotaperiodo.DisplayFormat             := mcasas;
Qr_LDRpercentual.DisplayFormat              := mcasas;



DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','CB_MATRICIAL']),[]) then
   CB_MATRICIAL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_MATRICIAL.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','CB_ORICOMIS']),[]) then
   CB_ORICOMIS.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','CB_ORICOMISEXTRA']),[]) then
   CB_ORICOMISEXTRA.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);


RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','RG_FILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RELVENDACOMIS','RG_TIPOPED']),[]) then
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
   
if log_codven>0 then
  begin
  CODVEN.Text:=FloatToStr(log_codven);
  flcadven(1,0,CODVEN.Text);
  if DM1.Tb_Ven.Eof then
    lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                      +' - '+DM1.Tb_VenVNOME.AsString)
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))+' - ');
  CODVEN.Enabled:=False;
  lbx_codven.Enabled:=False;
  OMITIR_VEN.Enabled:=False;
  end;


end;

procedure TFrm_RelVendaComis.CB_SEMBORDAClick(Sender: TObject);
begin

RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;
//RLband4.Borders.DrawTop          :=mboolean;
//RLband4.Borders.DrawBottom       :=mboolean;


end;

procedure TFrm_RelVendaComis.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_RelVendaComis',Key);
   if trim(CODTEL.Text)<>'' then
      CODTELExIt(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelVendaComis.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codtel.ItemIndex:=lbx_codtel.Items.Count-1;

      CODTEL.text := '';
      CODTEL.SetFocus;
      end
   else
      begin
      fmensagem('Usuário/Televendas não Cadastrado!',0,['0'],0);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end;
   end;


end;

procedure TFrm_RelVendaComis.lbx_codtelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_RelVendaComis.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'Frm_PLDR',key);
   CODSUPExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_RelVendaComis.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flcadsup(1,0,CODSUP.Text) then
      begin
      fmensagem('Supervisor não Cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);
      lbx_codsup.ItemIndex:=lbx_codsup.Items.Count-1;


      CODSUP.text := '';
      CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_RelVendaComis.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_RelVendaComis.CODCVExit(Sender: TObject);
begin

CODCV.Text:=fdeixanum2(CODCV.Text);
if Trim(CODCV.Text)<>'' then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCV.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcv.ItemIndex:=lbx_codcv.Items.Count-1;
      CODCV.text := '';
      CODCV.SetFocus;
      end
   else
      begin
      fmensagem('Convênio não Cadastrado!',0,['0'],0);
      CODCV.text := '';
      CODCV.SetFocus;
      end;
   end;

end;

procedure TFrm_RelVendaComis.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_RelVandaComis',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExIt(Self);
   key:=#0;
   end;


end;

procedure TFrm_RelVendaComis.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_RelVendaComis.CODLOCExit(Sender: TObject);
begin
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      lbx_codloc.Items.Add(CODLOC.Text
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codloc.ItemIndex:=lbx_codloc.Items.Count-1;
      CODLOC.text := '';
      CODLOC.SetFocus;
      end
   else
      begin
      fmensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_RelVendaComis.sbn_coddepClick(Sender: TObject);
begin
   CODUF.Text :=fChamaUF(0,'frm_RelVendaComis','');
if trim(CODUF.Text)<>'' then
   CODUFExIt(Self);
end;

procedure TFrm_RelVendaComis.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_RelVendaComis.sbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(codusr,'_RELVENDACOMIS','');
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_RELVENDACOMIS',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATRICIAL'      ,'checked'   ,'_RELVENDACOMIS',iif(CB_MATRICIAL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_RELVENDACOMIS',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_VISREL'      ,'checked'   ,'_RELVENDACOMIS',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'RG_FILTRO'    ,'itemindex'      ,'_RELVENDACOMIS',IntTostr(RG_FILTRO.ItemIndex));

mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_RELVENDACOMIS',mcinst2);
fGravaPadroes(codusr,'CB_ORICOMIS'         ,'itemindex' ,'_RELVENDACOMIS',InttoStr(CB_ORICOMIS.ItemIndex));
fGravaPadroes(codusr,'CB_ORICOMISEXTRA'    ,'itemindex' ,'_RELVENDACOMIS',InttoStr(CB_ORICOMISEXTRA.ItemIndex));
fGravaPadroes(codusr,'CB_AGRUPAR'          ,'itemindex' ,'_RELVENDACOMIS',InttoStr(cb_agrupar.ItemIndex));
fmensagem('Gravado!',1,['0'],0);

end;

procedure TFrm_RelVendaComis.cb_agruparClick(Sender: TObject);
begin
if cb_agrupar.ItemIndex<0 then
   with cb_agrupar do ItemIndex:=Items.IndexOf(cb_agrupar.Text);
cb_agrupar.text:=cb_agrupar.Items.Strings[cb_agrupar.ItemIndex];

end;

procedure TFrm_RelVendaComis.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_RelVendaComis.CB_MATRICIALClick(Sender: TObject);
begin
if not CB_MATRICIAL.Checked then
   RLReport1.DefaultFilter:=nil
else
   RLReport1.DefaultFilter:=Matricial;

end;

procedure TFrm_RelVendaComis.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mQtdPedDev:=0;
  mQtdPed   :=0;
  mTotDes   :=0;
  mTotliq   :=0;
  mTotDev   :=0;
  mTotComis :=0;
  mTotComis_Extra:=0;
  mTotVdaDev:=0;
  mTotQuota  :=0;

end;

procedure TFrm_RelVendaComis.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if flqr1('PNOM,PUF','P','CADUF','C','PUF',CODUF.Text) then
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      lbx_coduf.ItemIndex:=lbx_coduf.Items.Count-1;
      CODUF.text := '';
      CODUF.SetFocus;
      end
   else
      begin
      fmensagem('Estado não Cadastrado!',0,['0'],0);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;


end;

procedure TFrm_RelVendaComis.Qr_LDRCalcFields(DataSet: TDataSet);
begin
Qr_LDRtotalliq.Value     :=Qr_LDRVLRTOTAL.Value-Qr_LDRVLRTOTAL_DEV.Value;

Qr_LDRvalorcomisliq.Value  :=Qr_LDRVCALCCOMISSAO.Value-Qr_LDRVCALCCOMISSAO_DEV.Value;
Qr_LDRvalorcomisextra.Value:=Qr_LDRVCALCCOMISSAO_EXTRA.Value-Qr_LDRVCALCCOMISSAO_DEV_EXTRA.Value;
Qr_LDRqtddev.Value       :=0;
Qr_LDRqtdped.Value       :=0;
Qr_LDRquotaperiodo.value  :=0;
Qr_LDRpercentual.Value   :=0;

if DM1.Query5.Active then
   begin
   if DM1.Query5.Locate('P1CODVEN',Qr_LDRCODVEN.Value,[]) then
      begin
      Qr_LDRqtddev.Value:=DM1.Query5.fieldbyName('qtddev').AsFloat;
      Qr_LDRqtdped.Value:=DM1.Query5.fieldbyName('qtdped').AsFloat;
      end;
   end;

if DM1.Query4.Active then
   begin
   if DM1.Query4.Locate('CVCODVEN',Qr_LDRCODVEN.Value,[]) then
      begin
      Qr_LDRquotaperiodo.Value:=DM1.Query4.fieldbyName('COTAVLR').AsFloat;
      if (Qr_LDRquotaperiodo.AsFloat<>0) and (Qr_LDRtotalliq.AsFloat<>0) then
         Qr_LDRpercentual.Value:=(Qr_LDRtotalliq.Value*100)/Qr_LDRquotaperiodo.AsFloat;
      end;
   end;

end;

procedure TFrm_RelVendaComis.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lbl_totpedDev.Caption :=FloatToStr(mQtdPedDev);
lbl_totped.Caption    :=FloatToStr(mQtdPed);
lbl_totdes.Caption    :=FormatFloat(mcasas, mtotdes);
lbl_totliq.Caption    :=FormatFloat(mcasas, mTotliq);
lbl_totdev.Caption    :=FormatFloat(mcasas, mTotDev);
lbl_totcomis.Caption  :=Formatfloat(mcasas, mTotComis);
lbl_totcomisextra.Caption  :=Formatfloat(mcasas, mTotComis_Extra);
lbl_TotVdaDev.Caption :=Formatfloat(mcasas, mTotVdaDev);
lbl_totcadquota.Caption:=Formatfloat(mcasas, mTotQuota);
if (mTotQuota<>0) and (mTotVdaDev<>0) then
   lbl_totPQuota.Caption  :=FormatFloat(mcasas, (mTotVdaDev*100)/ mTotQuota)
else
   lbl_totPQuota.Caption  :=FormatFloat(mcasas, 0);

end;

procedure TFrm_RelVendaComis.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mQtdPedDev:=mQtdPedDev+Qr_LDRqtddev.AsFloat;
mQtdPed   :=mQtdPed+Qr_LDRqtdped.AsFloat;
mTotDes   :=mtotdes+Qr_LDRVALORSDESC.AsFloat;
mTotliq   :=mtotliq+Qr_LDRVLRTOTAL.Value;
mTotDev   :=mtotDev+Qr_LDRVLRTOTAL_DEV.Value;
mTotComis :=mTotComis+Qr_LDRvalorcomisliq.AsFloat;
mTotComis_Extra:=mTotComis_Extra+Qr_LDRvalorcomisextra.AsFloat;

mTotVdaDev:=mTotVdaDev+Qr_LDRtotalliq.AsFloat;
mTotQuota  :=mTotQuota+Qr_LDRquotaperiodo.Value;

end;

procedure TFrm_RelVendaComis.CODORI_PEDExit(Sender: TObject);
begin
CODORI_PED.Text:=fdeixanum2(CODORI_PED.Text);
if Trim(CODORI_PED.Text)<>'' then
   begin
   if not flCadOrPed(1,CODORI_PED.Text) then
      begin
      fmensagem('Origem não Cadastrado!',0,['0'],0);
      CODORI_PED.SetFocus;
      end
   else
      begin
      lbx_oriped.Items.Add(FormatFloat('0000000',StrToFloat(DM6.Tb_OrPedCOCODIGO.ASSTRING))
                                    +' - '+DM6.Tb_OrPedCONOMORI.Value);
      lbx_oriped.ItemIndex:=lbx_oriped.Items.Count-1;

      CODORI_PED.text := '';
      CODORI_PED.SetFocus;
      end;
   end;


end;

procedure TFrm_RelVendaComis.CODORI_PEDKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODORI_PED.Text:=fChamaoriped(0,'pcomvv',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelVendaComis.lbx_oripedKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_oriped.ItemIndex>=0 then
      lbx_oriped.Items.Delete(lbx_oriped.ItemIndex);

end;

function tFrm_RelVendaComis.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      filtros.Lines.Add(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x]);
      end;
   end;
result:=true;

end;

procedure TFrm_RelVendaComis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RelVendaComis.FormKeyDown(Sender: TObject; var Key: Word;
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
