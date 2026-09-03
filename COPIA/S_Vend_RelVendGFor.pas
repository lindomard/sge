unit S_Vend_RelVendGFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func,
  S_Bco, S_Cli,  S_Ven, S_Tra,lerarq,S_Usr,S_DM4, S_SelEmp,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants,S_Red,s_Con,S_Sup,S_Loc,S_UF,
  CheckLst,S_GFor,S_For, RDprint,S_OriPed,S_DM6,  RLRichText;

type
  TFrm_Vend_RelVendGFor = class(TForm)
    Qr_LDR: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Src_LDR: TDataSource;
    CB_SEPAR: TComboBox;
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
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    db_grupo: TRLDBText;
    band_cab: TRLBand;
    lbl_cabcodigo: TRLMemo;
    RL_detalhes: TRLBand;
    lbl_codigo: TRLDBText;
    band6: TRLBand;
    lblg_codigo: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    TabSheet4: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    sbSalvarPadrao: TSpeedButton;
    CB_MATRICIAL: TCheckBox;
    CB_VISREL: TCheckBox;
    Qr_LDRVALOR01: TFloatField;
    Qr_LDRVALOR02: TFloatField;
    Qr_LDRVALOR03: TFloatField;
    Qr_LDRVALOR04: TFloatField;
    Qr_LDRVALOR05: TFloatField;
    Qr_LDRVALOR06: TFloatField;
    lbl_cabNome: TRLMemo;
    lbl_nome: TRLDBText;
    lblg_nome: TRLLabel;
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
    lbl_cabTotal05: TRLMemo;
    lbl_cabTotal06: TRLMemo;
    lbl_cabdev: TRLMemo;
    lbl_total04: TRLDBText;
    lbl_total05: TRLDBText;
    lbl_total06: TRLDBText;
    lbl_totdev: TRLDBText;
    lblg_total04: TRLLabel;
    lblg_total05: TRLLabel;
    lblg_total06: TRLLabel;
    lblg_totdev: TRLLabel;
    rlTotalGer: TRLBand;
    lblt_data: TRLLabel;
    lblt_nome: TRLLabel;
    lblt_total01: TRLLabel;
    lblt_total02: TRLLabel;
    lblt_total03: TRLLabel;
    lblt_total04: TRLLabel;
    lblt_total05: TRLLabel;
    lblt_total06: TRLLabel;
    lblt_totdev: TRLLabel;
    RG_FILTRO: TRadioGroup;
    Label1: TLabel;
    CB_SOMADO: TComboBox;
    Qr_LDRNOMSEP: TStringField;
    Qr_LDRNOMSOM: TStringField;
    Label3: TLabel;
    CB_ORDEM: TComboBox;
    Qr_LDRCODIGO: TStringField;
    CB_FORCAR: TCheckBox;
    lbl_cabVdaDia: TRLMemo;
    lbl_vdadia: TRLDBText;
    lblg_vdadia: TRLLabel;
    lblt_vdadia: TRLLabel;
    lbl_cabTotal07: TRLMemo;
    lbl_total07: TRLDBText;
    lblg_total07: TRLLabel;
    lblt_total07: TRLLabel;
    lbl_cabTotOut: TRLMemo;
    lbl_totout: TRLDBText;
    lblg_totout: TRLLabel;
    lblt_totout: TRLLabel;
    lbl_cabacum: TRLMemo;
    lbl_totacum: TRLDBText;
    lblg_totacum: TRLLabel;
    lblt_totacum: TRLLabel;
    lbl_cabquota: TRLMemo;
    lbl_totquota: TRLDBText;
    lblg_totquota: TRLLabel;
    lblt_totquota: TRLLabel;
    lbl_cabconc: TRLMemo;
    lbl_totconc: TRLDBText;
    lblg_totconc: TRLLabel;
    lblt_totconc: TRLLabel;
    Qr_LDRVALOR07: TFloatField;
    Qr_LDRVALOUT: TFloatField;
    Qr_LDRVALACUM: TFloatField;
    Qr_LDRVALDIA: TFloatField;
    Qr_LDRVALDEV: TFloatField;
    Qr_LDRpercconc: TFloatField;
    Qr_LDRquotaperiodo: TFloatField;
    lbl_cabTotal08: TRLMemo;
    lbl_total08: TRLDBText;
    lblg_total08: TRLLabel;
    lblt_total08: TRLLabel;
    Qr_LDRVALOR08: TFloatField;
    RG_MODELO: TRadioGroup;
    RDprint1: TRDprint;
    GroupBox1: TGroupBox;
    StaticText2: TStaticText;
    CODGFOR: TEdit;
    OMITIR_GFOR: TCheckBox;
    lbx_codgfor: TListBox;
    StaticText10: TStaticText;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    CODRED: TEdit;
    StaticText7: TStaticText;
    OMITIR_RED: TCheckBox;
    lbx_codred: TListBox;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    StaticText1: TStaticText;
    CODTEL: TEdit;
    OMITIR_TEL: TCheckBox;
    lbx_codtel: TListBox;
    StaticText3: TStaticText;
    CODSUP: TEdit;
    OMITIR_SUP: TCheckBox;
    lbx_codsup: TListBox;
    RG_CODGRU: TCheckListBox;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    StaticText8: TStaticText;
    CODCV: TEdit;
    OMITIR_CV: TCheckBox;
    lbx_codcv: TListBox;
    StaticText9: TStaticText;
    CODUF: TEdit;
    sbn_coduf: TSpeedButton;
    OMITIR_UF: TCheckBox;
    lbx_coduf: TListBox;
    StaticText6: TStaticText;
    CODLOC: TEdit;
    OMITIR_LOC: TCheckBox;
    lbx_codloc: TListBox;
    lbl_cabTotal09: TRLMemo;
    lbl_total09: TRLDBText;
    lblg_total09: TRLLabel;
    lblt_total09: TRLLabel;
    lbl_cabTotal10: TRLMemo;
    lbl_total10: TRLDBText;
    lblg_total10: TRLLabel;
    lblt_total10: TRLLabel;
    Qr_LDRVALOR09: TFloatField;
    Qr_LDRVALOR10: TFloatField;
    StaticText11: TStaticText;
    CODORI_PED: TEdit;
    lbx_oriped: TListBox;
    OMITIR_ORIPED: TCheckBox;
    CB_ICMSRET: TCheckBox;
    Label7: TLabel;
    CB_TIPOPESQ: TComboBox;
    RLBand4: TRLBand;
    filtros: TRLMemo;
    CB_REDDESCFIN: TCheckBox;
    CB_DIMDEV: TCheckBox;
    SbnLimparGFor: TSpeedButton;
    SbnFiltrar: TSpeedButton;
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
    procedure RL_detalhesBeforePrint(Sender: TObject; var PrintIt: Boolean);
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
    procedure sbn_codufClick(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure CB_SEPARClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CB_MATRICIALClick(Sender: TObject);
    procedure band6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CODUFExit(Sender: TObject);
    procedure rlTotalGerBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGFORExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure RG_CODGRUClick(Sender: TObject);
    procedure CODORI_PEDExit(Sender: TObject);
    procedure CODORI_PEDKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_oripedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_FILTROClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SbnLimparGForClick(Sender: TObject);
    procedure SbnFiltrarClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
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
  Frm_Vend_RelVendGFor: TFrm_Vend_RelVendGFor;
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
  mToutros: Real;
  mTotAcum: Real;
  mTotQuota: Real;
  mTotDev: Real;
  mTotDia: Real;

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
  mTotDiaT:  Real;
  mToutrosT: Real;
  mTotAcumT: Real;
  mTotQuotaT: Real;
  mTotDevT: Real;
  mQtdGrupo: Integer;



implementation

uses S_C;

{$R *.DFM}

procedure TFrm_Vend_RelVendGFor.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Vend_RelVendGFor.bbImprimirClick(Sender: TObject);
var
mReg, x: Integer;
mEscolhidos: String;
mTabCli: Boolean;
mTabVen: Boolean;
mTabUsr: Boolean;
mTabSup: Boolean;
mTabCV: Boolean;
mNomSep,mNomSom: String;
mGrupoImp: String;
mQtdGrup: Integer;
mColDia: String;
mCol01: String;
mCol02: String;
mCol03: String;
mCol04: String;
mCol05: String;
mCol06: String;
mCol07: String;
mCol08: String;
mColOut: String;
mCasasRel: String;
mPerc: Real;
mlin: Integer;
mpag: Integer;
mQtdColunas: Integer;
mCampoValor: String;
mCampoDevol: String;
begin

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
bbImprimir.Enabled:=false;

if trim(MDT2.Text)='/  /' then
   MDT2.Text:=FormatDateTime(fdt2, date);

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


if RG_FILTRO.ItemIndex=1 then
   Qr_LDR.SQL.Add('       and P1EMIDOC=1 ');
if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';



DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select GFNOME '
                  +' from CADGFOR ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADGFOR',[]) then
   begin
   DM1.Query5.SQL.Add(mcinst+' GFCODEMP=0'+InttoStr(codemp));
   mcinst:=' and ';
   end;



mcinst4:='';
if not RG_CODGRU.Checked[RG_CODGRU.Items.Count-1] then
   begin
   mboolean:=false;
   for x:=0 to RG_CODGRU.Items.Count-1 do
      begin
      if RG_CODGRU.Checked[x] then
         begin
         mboolean:=true;
         break;
         end;
      end;
   if mboolean then
      begin
      DM1.Query3.First;
      mcinst4:='';
      for x:=0 to RG_CODGRU.Items.Count-1 do
         begin
         if RG_CODGRU.Checked[x] then
            begin
            if trim(mcinst4)<>'' then
               mcinst4:=mcinst4+',';
            if DM1.Query3.Locate('GFNOME',RG_CODGRU.Items[x],[]) then
               mcinst4:=mcinst4+DM1.Query3.fieldbyName('GFCODGRU').Asstring;
            end;
         end;
      end;
   end;

if trim(mcinst4)<>'' then
   DM1.Query5.SQL.Add(mcinst+' GFCODGRU in ('+mcinst4+')');

DM1.Query5.SQL.Add(' order by GFORDEM ');

try
   DM1.Query5.Open;
except
   DM1.Query5.sql.savetofile('c:\sql.txt');
   end;

lbl_cabTotal01.Visible:=true;
lbl_Total01.Visible   :=true;
lblg_Total01.Visible  :=true;
lbl_cabTotal02.Visible:=true;
lbl_Total02.Visible   :=true;
lblg_Total02.Visible  :=true;
lbl_cabTotal03.Visible:=true;
lbl_Total03.Visible   :=true;
lblg_Total03.Visible  :=true;
lbl_cabTotal04.Visible:=true;
lbl_Total04.Visible   :=true;
lblg_Total04.Visible  :=true;
lbl_cabTotal05.Visible:=true;
lbl_Total05.Visible   :=true;
lblg_Total05.Visible  :=true;
lbl_cabTotal06.Visible:=true;
lbl_Total06.Visible   :=true;
lblg_Total06.Visible  :=true;



lbl_cabTotal07.Visible:=true;
lbl_Total07.Visible   :=true;
lblg_Total07.Visible  :=true;

lbl_cabTotal08.Visible:=true;
lbl_Total08.Visible   :=true;
lblg_Total08.Visible  :=true;


lbl_cabTotal09.Visible:=true;
lbl_Total09.Visible   :=true;
lblg_Total09.Visible  :=true;

lbl_cabTotal10.Visible:=true;
lbl_Total10.Visible   :=true;
lblg_Total10.Visible  :=true;



lbl_totout.Visible:=true;
lbl_totout.Visible   :=true;
lblg_totout.Visible  :=true;
if Trim(MDT2.Text)<>'/  /' then
   begin
   lbl_cabVdaDia.Lines.Clear;
   lbl_cabVdaDia.Lines.Add(MDT2.Text);
   mColDia:=MDT2.Text;
   end
else
   mColdia:='';
lbl_cabTotOut.Lines.Clear;
lbl_cabTotOut.Lines.Add('Total Outros');
mColOut:='Total Outros';

mreg:=0;
Qr_LDR.Close;
Qr_LDR.SQL.Clear;
Qr_LDR.SQL.Add('Select ');
mcinst:='';
mEscolhidos:='';
if CB_ICMSRET.Checked then
   begin
   if CB_REDDESCFIN.Checked then
      mCampoValor:='((P2TOTLIQ+P2ICMSR)-(P2DESCRAT+P2VDESCF))'
   else
      mCampoValor:='((P2TOTLIQ+P2ICMSR)-P2DESCRAT)'

   end
else
   begin
   if CB_REDDESCFIN.Checked then
      mCampoValor:='(P2TOTLIQ-(P2DESCRAT+P2VDESCF))'
   else
      mCampoValor:='(P2TOTLIQ-P2DESCRAT)';
   end;

if CB_DIMDEV.Checked then
   mCampoDevol:='('+mCampoValor+'*-1)'
else
   mCampoDevol:='0';


if RG_MODELO.ItemIndex=0 then // se for 09 colunas
   begin
   if not DM1.Query5.IsEmpty then
      begin
      mQtdGrup:=DM1.Query5.recordcount;
      While not DM1.Query5.Eof do
         begin
         mreg:=mReg+1;
         if mreg=1 then
            begin
            mCol01:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=2 then
            begin
            mCol02:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=3 then
            begin
            mCol03:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=4 then
            begin
            mCol04:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=5 then
            begin
            mCol05:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=6 then
            begin
            mCol06:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=7 then
            begin
            mCol07:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=8 then
            begin
            mCol08:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if (mreg=9) and (mQtdGrup=9) then
            begin
            mColOut:=DM1.Query5.fieldByName('GFNOME').AsString;
            end;
         if mreg<9 then
            begin
            Qr_LDR.sql.Add(mcinst+' sum(DECODE(GFNOME, '
                          +chr(39)+DM1.Query5.fieldByName('GFNOME').AsString+chr(39)
                          +',decode(P1TIPO_ENTSAI,1,'+mCampoDevol+','+mCampoValor+'),0)) AS VALOR'+FormatFloat('00',mReg));
            mEscolhidos:=mEscolhidos+mcinst+chr(39)+
                         DM1.Query5.fieldByName('GFNOME').AsString+chr(39)+',0';
            mcinst:=','
            end
         else
            begin
            Qr_LDR.sql.Add(mcinst+' sum(DECODE(GFNOME, '
                          +mEscolhidos
                          +',decode(P1TIPO_ENTSAI,1,'+mCampoDevol+', '+mCampoValor+'))) AS VALOUT ');
            break;
            end;
         DM1.Query5.Next;
         end;
      end
   else
      begin
      lbl_cabTotal01.Lines.Clear;
      lbl_cabTotal01.Lines.Add('Sem Grupo');
      Qr_LDR.sql.Add(mcinst+' 0 AS VALOR01'+FormatFloat('00',x));
      mCol01:='Sem Grupo';
      mReg:=1;
      end;
  if mreg<8 then
     begin
     for x:=(mReg+1) to 09 do
        begin
        if x=1 then
            begin
            mCol01:='';
            end
         else if x=2 then
            begin
            mCol02:='';
            end
         else if x=3 then
            begin
            mCol03:='';
            end
         else if x=4 then
            begin
            mCol04:='';
            end
         else if x=5 then
            begin
            mCol05:='';
            end
         else if x=6 then
            begin
            mCol06:='';
            end
         else if x=7 then
            begin
            mCol07:='';
            end
         else if x=8 then
            begin
            mCol08:='';
            end;
         if x<09 then
            begin
            Qr_LDR.sql.Add(mcinst+' 0 AS VALOR'+FormatFloat('00',x));
            mcinst:=',';
            end;
         end;
      Qr_LDR.sql.Add(mcinst+' 0 AS VALOUT');
      end
   else
      Qr_LDR.sql.Add(mcinst+' 0 AS VALOUT');
   Qr_LDR.sql.Add(mcinst+' 0 AS VALOR09');
   mcinst:=',';
   Qr_LDR.sql.Add(mcinst+' 0 AS VALOR10');
   end
else // se for 11 colunas
   begin
   if not DM1.Query5.IsEmpty then
      begin
      mQtdGrup:=DM1.Query5.recordcount;
      While not DM1.Query5.Eof do
         begin
         mreg:=mReg+1;
         if mreg=1 then
            begin
            lbl_cabTotal01.Lines.Clear;
            lbl_cabTotal01.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol01:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=2 then
            begin
            lbl_cabTotal02.Lines.Clear;
            lbl_cabTotal02.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol02:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=3 then
            begin
            lbl_cabTotal03.Lines.Clear;
            lbl_cabTotal03.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol03:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=4 then
            begin
            lbl_cabTotal04.Lines.Clear;
            lbl_cabTotal04.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol04:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=5 then
            begin
            lbl_cabTotal05.Lines.Clear;
            lbl_cabTotal05.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol05:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=6 then
            begin
            lbl_cabTotal06.Lines.Clear;
            lbl_cabTotal06.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol06:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=7 then
            begin
            lbl_cabTotal07.Lines.Clear;
            lbl_cabTotal07.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol07:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=8 then
            begin
            lbl_cabTotal08.Lines.Clear;
            lbl_cabTotal08.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mCol08:=DM1.Query5.fieldByName('GFNOME').AsString;
            end
         else if mreg=9 then
            begin
            lbl_cabTotal09.Lines.Clear;
            lbl_cabTotal09.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            end
         else if mreg=10 then
            begin
            lbl_cabTotal10.Lines.Clear;
            lbl_cabTotal10.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            end
         else if (mreg=11) and (mQtdGrup=11) then
            begin
            lbl_cabTotOut.Lines.Clear;
            lbl_cabTotOut.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
            mColOut:=DM1.Query5.fieldByName('GFNOME').AsString;
            end;
         if mreg<11 then
            begin
            Qr_LDR.sql.Add(mcinst+' sum(DECODE(GFNOME, '
                          +chr(39)+DM1.Query5.fieldByName('GFNOME').AsString+chr(39)
                          +',decode(P1TIPO_ENTSAI,1,'+mCampoDevol+','+mCampoValor+'),0)) AS VALOR'+FormatFloat('00',mReg));
            mEscolhidos:=mEscolhidos+mcinst+chr(39)+
                         DM1.Query5.fieldByName('GFNOME').AsString+chr(39)+',0';
            mcinst:=','
            end
         else
            begin
            Qr_LDR.sql.Add(mcinst+' sum(DECODE(GFNOME, '
                          +mEscolhidos
                          +',decode(P1TIPO_ENTSAI,1,'+mCampoDevol+', '+mCampoValor+'))) AS VALOUT ');
            break;
            end;
         DM1.Query5.Next;
         end;
      end;
   if (dm1.Query5.IsEmpty) or (mReg<11) then
      begin
      mreg:=mreg+1;
      Qr_LDR.sql.Add(mcinst+' sum(DECODE(GFNOME, null '
                      +',decode(P1TIPO_ENTSAI,1,'+mCampoDevol+','+mCampoValor+'),0)) AS VALOR'+FormatFloat('00',mReg));
      mcinst:=',';
//      lbl_cabTotal01.Lines.Clear;
///      lbl_cabTotal01.Lines.Add('Sem Grupo');
//      Qr_LDR.sql.Add(mcinst+' 0 AS VALOR'+FormatFloat('00',mReg));
//      mCol01:='Sem Grupo';
      end;
  if mreg<10 then
     begin
     for x:=(mReg+1) to 11 do
        begin
        if x=1 then
            begin
            lbl_cabTotal01.Visible:=false;
            lbl_Total01.Visible   :=false;
            lblg_Total01.Visible  :=False;
            mCol01:='';
            end
         else if x=2 then
            begin
            lbl_cabTotal02.Visible:=false;
            lbl_Total02.Visible   :=false;
            lblg_Total02.Visible  :=False;
            mCol02:='';
            end
         else if x=3 then
            begin
            lbl_cabTotal03.Visible:=false;
            lbl_Total03.Visible   :=false;
            lblg_Total03.Visible  :=False;
            mCol03:='';
            end
         else if x=4 then
            begin
            lbl_cabTotal04.Visible:=false;
            lbl_Total04.Visible   :=false;
            lblg_Total04.Visible  :=False;
            mCol04:='';
            end
         else if x=5 then
            begin
            lbl_cabTotal05.Visible:=false;
            lbl_Total05.Visible   :=false;
            lblg_Total05.Visible  :=False;
            mCol05:='';
            end
         else if x=6 then
            begin
            lbl_cabTotal06.Visible:=false;
            lbl_Total06.Visible   :=false;
            lblg_Total06.Visible  :=False;
            mCol06:='';
            end
         else if x=7 then
            begin
            lbl_cabTotal07.Visible:=false;
            lbl_Total07.Visible   :=false;
            lblg_Total07.Visible  :=False;
            mCol07:='';
            end
         else if x=8 then
            begin
            lbl_cabTotal08.Visible:=false;
            lbl_Total08.Visible   :=false;
            lblg_Total08.Visible  :=False;
            mCol08:='';
            end
         else if x=9 then
            begin
            lbl_cabTotal09.Visible:=false;
            lbl_Total09.Visible   :=false;
            lblg_Total09.Visible  :=False;
            end
         else if x=10 then
            begin
            lbl_cabTotal10.Visible:=false;
            lbl_Total10.Visible   :=false;
            lblg_Total10.Visible  :=False;
            end;
         if x<11 then
            begin
            Qr_LDR.sql.Add(mcinst+' 0 AS VALOR'+FormatFloat('00',x));
            mcinst:=',';
            end;
         end;
      Qr_LDR.sql.Add(mcinst+' 0 AS VALOUT');
      end
   else
      Qr_LDR.sql.Add(mcinst+' 0 AS VALOUT');
   end;

Qr_LDR.sql.Add(', sum(decode(P1TIPO_ENTSAI,1,'+mCampoDevol+','+mCampoValor+')) AS VALACUM ');


Qr_LDR.sql.Add(',Sum(decode(p1tipo_ENTSAI '
              +'       ,1,'+mCampoValor
              +'       ,0 ) '
              +'       ) as VALDEV ');
Qr_LDR.sql.Add(',Sum(decode('+pDataPesq+',TO_DATE('+chr(39)+FormatDatetime(fdt, StrtoDate(mdt2.Text))+chr(39)+')'
              +'       ,decode(P1TIPO_ENTSAI,1,'+mCampoDevol+','+mCampoValor+') '
              +'       ,0 ) '
              +'       ) as VALDIA ');

mTabVen:=false;
mTabCli:=false;
mTabUsr:=False;
mTabSup:=False;
mTabCV :=False;

if (CB_SOMADO.ItemIndex=1) or
   (CB_SOMADO.ItemIndex=2) or
   (CB_SOMADO.ItemIndex=3) or
   (CB_SOMADO.ItemIndex=4) or
   (CB_SOMADO.ItemIndex=5) or
   (CB_SOMADO.ItemIndex=8) or
   (CB_SEPAR.ItemIndex=1) or
   (CB_SEPAR.ItemIndex=2) or
   (CB_SEPAR.ItemIndex=3) or
   (CB_SEPAR.ItemIndex=7) or


   (lbx_codred.Items.Count>0) or
   (lbx_coduf.Items.Count>0) or
   (lbx_codloc.Items.Count>0) then
   mTabCli:=true;


if (CB_SOMADO.ItemIndex=4) then
   mTabCV:=true;
if (CB_SOMADO.ItemIndex=9) or (lbx_codsup.Items.Count>0)
   or (CB_SEPAR.ItemIndex=9) then
   begin
   mTabSup:=true;
   mtabven:=true;
   end;
if (CB_SOMADO.ItemIndex=10) or
   (CB_SEPAR.ItemIndex=10) then
   mTabUsr:=true;
if (CB_SOMADO.ItemIndex=12) or
   (CB_SEPAR.ItemIndex=12) then
   mTabVen:=true;

if CB_SEPAR.ItemIndex=0 then
   begin
   mNomSep  :='TO_CHAR('+pDataPesq+','+chr(39)+'yyyy'+chr(39)+')';
   mGrupoImp:='TO_CHAR('+pDataPesq+','+chr(39)+'yyyy'+chr(39)+')';
   end
else if CB_SEPAR.ItemIndex=1 then
   begin
   mNomSep  :='CBAIRRO';
   mGrupoImp:='CBAIRRO';
   end
else if CB_SEPAR.ItemIndex=2 then
   begin
   mNomSep  :='CUF ||'+chr(39)+' - '+chr(39)+' || CCIDADE  ';
   mGrupoImp:='CUF,CCIDADE';
   end
else if CB_SEPAR.ItemIndex=3 then
   begin
   mNomSep  :='CNOMCON ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(CCODCV)  ';
   mGrupoImp:='CNOMCON,CCODCV';
   end
else if CB_SEPAR.ItemIndex=4 then
   begin
   mNomSep  :='CUF ';
   mGrupoImp:='CUF';
   end
else if CB_SEPAR.ItemIndex=5 then
   begin
   mNomSep  :='FRAZAO ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(P2CODFAB) ';
   mGrupoImp:='FRAZAO,P2CODFAB';
   end
else if CB_SEPAR.ItemIndex=6 then
   begin
   mNomSep  :='TO_CHAR('+pDataPesq+','+chr(39)+'mm/yyyy'+chr(39)+')';
   mGrupoImp:='TO_CHAR('+pDataPesq+','+chr(39)+'mm/yyyy'+chr(39)+')';
   end
else if CB_SEPAR.ItemIndex=7 then
   begin
   mNomSep  :='CNOMRED ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(CCODRED)  ';
   mGrupoImp:='CNOMRED,CCODRED';
   end
else if CB_SEPAR.ItemIndex=8 then
   begin
   mNomSep  :=chr(39)+insere2(' ',' ',40)+chr(39);
   mGrupoImp:='';
   end
else if CB_SEPAR.ItemIndex=9 then
   begin
   mNomSep  :='SNOME ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(VCODSUP) ';
   mGrupoImp:='SNOME,VCODSUP';
   end
else if CB_SEPAR.ItemIndex=10 then
   begin
   mNomSep  :='NOMUSR ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(P1CODTLV) ';
   mGrupoImp:='NOMUSR,P1CODTLV';
   end
else if CB_SEPAR.ItemIndex=11 then
   begin
   mNomSep  :=chr(39)+'Tipo do Pedido: '+chr(39)+'||  TO_CHAR(P1TIPO) ';
   mGrupoImp:='P1TIPO';
   end
else if CB_SEPAR.ItemIndex=12 then
   begin
   mNomSep  :='VNOME ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(P1CODVEN) ';
   mGrupoImp:='VNOME,P1CODVEN';
   end;




if CB_SOMADO.ItemIndex=0 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add(' ');

   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Ano');
   Qr_LDR.SQL.Add(','+chr(39)+'   '+chr(39)+' as CODIGO');

   mNomSom  :='TO_CHAR('+pDataPesq+','+chr(39)+'yyyy'+chr(39)+')';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+','+mNomSom;
   end
else if CB_SOMADO.ItemIndex=1 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Bairro');
   Qr_LDR.SQL.Add(',TO_CHAR(max(CCODBAI)) as CODIGO');
   mNomSom  :='CBAIRRO';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'CBAIRRO';
   end
else if CB_SOMADO.ItemIndex=2 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Cliente');
   Qr_LDR.SQL.Add(',TO_CHAR(max(CCODCLI)) as CODIGO');

   mNomSom  :='CRAZAO';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'CRAZAO';
   end
else if CB_SOMADO.ItemIndex=3 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Cidade');
   Qr_LDR.SQL.Add(',TO_CHAR(max(CCODLOC)) as CODIGO');

   mNomSom  :='CUF ||'+chr(39)+' - '+chr(39)+' || CCIDADE ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'CUF,CCIDADE';
   end
else if CB_SOMADO.ItemIndex=4 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Convenio');
   Qr_LDR.SQL.Add(',TO_CHAR(max(CCODCV)) as CODIGO');

   mNomSom  :='CNOMCON ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(CCODCV) ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'CNOMCON,CCODCV';
   end
else if CB_SOMADO.ItemIndex=5 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add(' ');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Estado');
   Qr_LDR.SQL.Add(','+chr(39)+' '+chr(39)+' as CODIGO');
   mNomSom  :='CUF ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'CUF';
   end
else if CB_SOMADO.ItemIndex=6 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Fornecedor');
   Qr_LDR.SQL.Add(',TO_CHAR(max(P2CODFAB)) as CODIGO');

   mNomSom  :='FRAZAO ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(P2CODFAB) ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'FRAZAO,P2CODFAB';
   end
else if CB_SOMADO.ItemIndex=7 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add(' ');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Mês/Ano');
   Qr_LDR.SQL.Add(','+chr(39)+' '+chr(39)+' as CODIGO');
   mNomSom:='TO_CHAR('+pDataPesq+','+chr(39)+'mm/yyyy'+chr(39)+')';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'TO_CHAR('+pDataPesq+','+chr(39)+'mm/yyyy'+chr(39)+')';
   end
else if CB_SOMADO.ItemIndex=8 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Rede de Clientes');
   Qr_LDR.SQL.Add(',TO_CHAR(max(CCODRED)) as CODIGO');

   mNomSom  :='CNOMRED ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(CCODRED) ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'CNOMRED,CCODRED';
   end
else if CB_SOMADO.ItemIndex=9 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Supervisor');
   Qr_LDR.SQL.Add(',TO_CHAR(max(VCODSUP)) as CODIGO');
   mNomSom  :='SNOME ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(VCODSUP) ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'SNOME,VCODSUP';
   end
else if CB_SOMADO.ItemIndex=10 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Televendas');
   Qr_LDR.SQL.Add(',TO_CHAR(max(P1CODTLV)) as CODIGO');

   mNomSom  :='NOMUSR ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(P1CODTLV) ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'NOMUSR,P1CODTLV';
   end
else if CB_SOMADO.ItemIndex=11 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Tipo de Pedido');
   Qr_LDR.SQL.Add(',TO_CHAR(max(P1TIPO)) as CODIGO');

   mNomSom  :=chr(39)+'Tipo do Pedido: '+chr(39)+'||  TO_CHAR(P1TIPO) ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'P1TIPO';
   end
else if CB_SOMADO.ItemIndex=12 then
   begin
   lbl_cabcodigo.Lines.clear;
   lbl_cabcodigo.Lines.Add('Código');
   lbl_cabNome.Lines.clear;
   lbl_cabNome.Lines.Add('Vendedor');
   Qr_LDR.SQL.Add(',TO_CHAR(max(P1CODVEN)) as CODIGO');

   mNomSom  :='VNOME ||'+chr(39)+' - '+chr(39)+' || TO_CHAR(P1CODVEN) ';
   if trim(mGrupoImp)<>'' then
      mGrupoImp:=mGrupoImp+',';
   mGrupoImp:=mGrupoImp+'VNOME,P1CODVEN';
   end;

{
SOMADO
00-Ano
01-Bairro
02-Cliente
03-Cidade
04-Convenio
05-Estado
06-Fornecedor
07-Mês
08-Rede de Clientes
09-Supervisor
10-Televendas
11-Tipo de Pedido
12-Vendedor

SEPARADO
00-Ano
01-Bairro
02-Cidade
03-Convenio
04-Estado
05-Fornecedor
06-Mês
07-Rede de Clientes
08-Sem Separar
09-Supervisor
10-Televendas
11-Tipo de Pedido
12-Vendedor

}






la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if mTabCli then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   end;
if mTabVen then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');
   end;

if mTabUsr then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADUSR' ,'CODEMP','P1CODEMP' ,'CODUSR' ,'P1CODTLV');
   end;

if mTabCV then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADCV' ,'CVCODEMP','P1CODEMP' ,'CVCODCV' ,'P1CODCV');
   end;

if mTabSup then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADSUP' ,'SCODEMP','VCODEMP' ,'SCODSUP' ,'VCODSUP');
   end;
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR' ,'FCODEMP','P2CODEMP' ,'FCODFOR' ,'P2CODFAB');
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
//fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADGFOR' ,'GFCODEMP','FCODEMP' ,'GFCODGRU' ,'FCODFOR');
fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADGFOR' ,'GFCODEMP','FCODEMP' ,'GFCODGRU' ,'FCODFOR');

Qr_LDR.sql.add(', '+mNomSep+' AS NOMSEP ' );
Qr_LDR.sql.add(', '+mNomSom+' AS NOMSOM ' );

//Qr_LDR.Sql.Add(', GFORDEM AS ORDEM ');
Qr_LDR.Sql.add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +iif(la_instrucao='','',la_instrucao+' and '));
Qr_LDR.sql.Add(' P1STATUS<'+mstatus_excluido+'' );
if trim(MDT1.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+pDataPesq+'>='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+pDataPesq+'<='+chr(39)+FormatDatetime(fdt2, StrtoDate(MDT2.Text))+chr(39));

if RG_FILTRO.ItemIndex=0 then
   Qr_LDR.Sql.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   Qr_LDR.SQL.Add(' and P1EMIDOC<>0');
Qr_LDR.SQL.Add(' and P1EMIDOC<>0');

mcinst2:=fItensListBox(iif(CB_FORCAR.Checked,0,1),lbx_codgfor,OMITIR_GFOR);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and GFCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P2CODFAB '+mcinst2);

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

mcinst2:=fItensListBox(0,lbx_oriped,OMITIR_ORIPED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1ORIGEM '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCODRED '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1CODCV '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and P1TIPO '+mcinst2);
Qr_LDR.SQL.Add(' and P1TIPO>0 ');

if trim(mGrupoImp)<>'' then
   Qr_LDR.SQL.add(' group by '+iif(mGrupoImp='','',mGrupoImp));
if CB_ORDEM.ItemIndex=1 then
   Qr_LDR.SQL.Add('Order by TOTGER ')
else if CB_ORDEM.ItemIndex=2 then
   Qr_LDR.SQL.Add('Order by TOTGER DESC ');
Qr_LDR.SQL.SaveToFile('c:\sql.txt');

try
   Qr_LDR.Open;
except
   Qr_LDR.SQL.SaveToFile('c:\sql.txt');
   fmensagem('Erro ao Selecionar dados, contactar suporte!',0,['0'],0);
   end;

// Qr_LDR.SQL.SaveToFile('c:\sqlRES.txt');


mTotDia :=0;
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
mToutros:=0;
mTotAcum:=0;
mTotQuota:=0;
mTotDev:=0;

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

mTotDiaT :=0;
mToutrosT:=0;
mTotAcumT:=0;
mTotQuotaT:=0;
mTotDevT:=0;
mQtdGrupo:=0;



if RG_MODELO.ItemIndex=1 then
   begin
   lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text)++iif(CB_REDDESCFIN.Checked,'. Diminuido o Desconto Financeiro','') ;
   lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';
   rlTotalGer.Visible:=false;
   filtros.Lines.Clear;
   if lbx_codgfor.Items.Count>0 then
      FImprimeTitulo('Grupo de Fornecedor ',lbx_codgfor,OMITIR_GFOR);
   if lbx_codfor.Items.Count>0 then
      FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
   if lbx_codred.Items.Count>0 then
      FImprimeTitulo('Rede de Cliente',lbx_codred,OMITIR_RED);
   if lbx_codcli.Items.Count>0 then
      FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
   if CB_SOMADO.ItemIndex<>12 then
      begin
      if lbx_codven.Items.Count>0 then
         FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
      end;
   if lbx_codtel.Items.Count>0 then
      FImprimeTitulo('Televendas',lbx_codtel,OMITIR_TEL);
   if lbx_codsup.Items.Count>0 then
      FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);
   if lbx_oriped.Items.Count>0 then
      FImprimeTitulo('Origem do Pedido',lbx_oriped,OMITIR_ORIPED);
   if lbx_codcv.Items.Count>0 then
      FImprimeTitulo('Convenio',lbx_codcv,OMITIR_CV);
   if lbx_coduf.Items.Count>0 then
      FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);
   if lbx_codloc.Items.Count>0 then
      FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);
   IF CB_DIMDEV.Checked then
      filtros.Lines.Add('Totais Diminuidos as Devoluções do Período');
   RLReport1.PreviewModal;
   end
else
   begin
   mCasasRel:='#0.00';
   RDprint1.FonteTamanhoPadrao:=S10cpp;
   RDprint1.TamanhoQteColunas:=136;
   RDprint1.TamanhoQteLinhas :=66;
   RDprint1.TamanhoQteLPP  :=Seis;
   RDprint1.OpcoesPreview.Preview:=False;
   RDprint1.SetPrinterbyName(impressora_padrao(0));
   RDprint1.Abrir;
   mlin:=0;
   mpag:=0;
   Qr_LDR.First;
   While not Qr_LDR.Eof do
      begin
      if mlin=0 then
         begin
         mpag:=mpag+1;
         RDprint1.ImpF(01,01,FormatDatetime(fdt2, date)+centra(DM1.Tb_EmpRAZAO_CAB.Value,' ',62)+FormatDateTime(fhr, time),mnormal);
         RDprint1.ImpF(02,01,centra('Relatorio de Vendas por Grupo de Fornecedores. '+fperiodo(0,MDT1.Text,MDT2.Text),' ',136),mreduz);
         RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
         if Trim(MDT2.Text)<>'/  /' then
            mcinst2:=MDT2.Text
         else
            mcinst2:='';
         mlin:=04;
         if CB_REDDESCFIN.Checked then
            begin
            RDprint1.ImpF(mlin,01,centra('Diminuido o Desconto Financeiro',' ',80),mnormal);
            mlin:=mlin+1;
            end;
         RDprint1.ImpF(mlin,01,'Codig Vendedor    '
                                 +insere(trim(
                                         copy(
                                             fQuebraString(10,mColDia)
                                               ,1,10))
                                               ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol01)
                                                 ,1,10))
                                                  ,' ',10)

                                 +insere(trim(copy(
                                              fQuebraString(10,mCol02)
                                                 ,1,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol03)
                                                 ,1,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol04)
                                                 ,1,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol05)
                                                 ,1,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol06)
                                                 ,1,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol07)
                                                 ,1,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(11,mCol08)
                                                 ,1,11))
                                                  ,' ',11)
                                 +insere(trim(copy(
                                              fQuebraString(11,mColOut)
                                                 ,1,11))
                                                  ,' ',11)

                                 +insere('Acumulado',' ',11)
                                 +insere('Cota',' ',11)
                                 +insere('  %  ',' ',07)
                                 +insere('Devolucao',' ',11),m20ccp);
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,'                  '
                                 +insere(trim(
                                         copy(
                                             fQuebraString(10,mColDia)
                                               ,11,10))
                                               ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol01)
                                                 ,11,10))
                                                  ,' ',10)

                                 +insere(trim(copy(
                                              fQuebraString(10,mCol02)
                                                 ,11,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol03)
                                                 ,11,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol04)
                                                 ,11,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol05)
                                                 ,11,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol06)
                                                 ,11,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(10,mCol07)
                                                 ,11,10))
                                                  ,' ',10)
                                 +insere(trim(copy(
                                              fQuebraString(11,mCol08)
                                                 ,12,11))
                                                  ,' ',11)
                                 +insere(trim(copy(
                                              fQuebraString(11,mColOut)
                                                 ,12,11))
                                                  ,' ',11)

                                 +insere('         ',' ',11)
                                 +insere('    ',' ',11)
                                 +insere('Conc.',' ',07)
                                 +insere('         ',' ',11),m20ccp);

         end;

      mTotDia  :=mTotDia  +Qr_LDRVALDIA.Value;
      mTotal01 :=mTotal01 +Qr_LDRVALOR01.Value;
      mTotal02 :=mTotal02 +Qr_LDRVALOR02.Value;
      mTotal03 :=mTotal03+Qr_LDRVALOR03.Value;
      mTotal04 :=mTotal04+Qr_LDRVALOR04.Value;
      mTotal05 :=mTotal05+Qr_LDRVALOR05.Value;
      mTotal06 :=mTotal06+Qr_LDRVALOR06.Value;
      mTotal07 :=mTotal07+Qr_LDRVALOR07.Value;
      mTotal08 :=mTotal08+Qr_LDRVALOR08.Value;
      mTotal09 :=mTotal09+Qr_LDRVALOR09.Value;
      mTotal10 :=mTotal10+Qr_LDRVALOR10.Value;
      mToutros :=mToutros+Qr_LDRVALOUT.Value;
      mTotAcum :=mTotAcum+Qr_LDRVALACUM.Value;
      mTotQuota:=mTotQuota+Qr_LDRquotaperiodo.Value;
      mTotDev  :=mTotDev+Qr_LDRVALDEV.Value;


      mTotDiaT  :=mTotDiaT  +Qr_LDRVALDIA.Value;
      mTotalT01 :=mTotalT01 +Qr_LDRVALOR01.Value;
      mTotalT02 :=mTotalT02 +Qr_LDRVALOR02.Value;
      mTotalT03 :=mTotalT03+Qr_LDRVALOR03.Value;
      mTotalT04 :=mTotalT04+Qr_LDRVALOR04.Value;
      mTotalT05 :=mTotalT05+Qr_LDRVALOR05.Value;
      mTotalT06 :=mTotalT06+Qr_LDRVALOR06.Value;
      mTotalT07 :=mTotalT07+Qr_LDRVALOR07.Value;
      mTotalT08 :=mTotalT08+Qr_LDRVALOR08.Value;
      mTotalT09 :=mTotalT09+Qr_LDRVALOR09.Value;
      mTotalT10 :=mTotalT10+Qr_LDRVALOR10.Value;
      mToutrosT :=mToutrosT+Qr_LDRVALOUT.Value;
      mTotAcumT :=mTotAcumT+Qr_LDRVALACUM.Value;
      mTotQuotaT:=mTotQuotaT+Qr_LDRquotaperiodo.Value;
      mTotDevT  :=mTotDevT+Qr_LDRVALDEV.Value;


      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,
                   insere(Qr_LDRCODIGO.AsString,'0',05)+' '
                  +insere2(Qr_LDRNOMSOM.Value,' ',12)
                  +insere(FormatFloat(mCasasRel, Qr_LDRVALDIA.Value) ,' ',10)
                  +insere(FormatFloat(mCasasRel, Qr_LDRVALOR01.Value),' ',10)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOR02.Value),' ',10)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOR03.Value),' ',10)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOR04.Value),' ',10)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOR05.Value),' ',10)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOR06.Value),' ',10)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOR07.Value),' ',10)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOR08.Value),' ',11)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALOUT.Value),' ',11)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALACUM.Value),' ',11)
                  +insere(FormatFloat(mcasasRel, Qr_LDRquotaperiodo.Value),' ',11)
                  +insere(FormatFloat(mcasasRel, Qr_LDRpercconc.Value),' ',07)
                  +insere(FormatFloat(mcasasRel, Qr_LDRVALDEV.Value),' ',11),m20ccp);
      Qr_LDR.Next;
      if Qr_LDR.Eof then
         begin
         if (mTotQuota<>0) and (mTotAcum<>0) then
            mPerc:=(mTotAcum*100)/mTotQuota;
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,
                   insere(' ',' ',05)+' '
                  +insere2('Total','.',12)
                  +insere(FormatFloat(mCasasRel, mTotDia) ,' ',10)
                  +insere(FormatFloat(mCasasRel, mTotal01),' ',10)
                  +insere(FormatFloat(mcasasRel, mTotal02),' ',10)
                  +insere(FormatFloat(mcasasRel, mTotal03),' ',10)
                  +insere(FormatFloat(mcasasRel, mTotal04),' ',10)
                  +insere(FormatFloat(mcasasRel, mTotal05),' ',10)
                  +insere(FormatFloat(mcasasRel, mTotal06),' ',10)
                  +insere(FormatFloat(mcasasRel, mTotal07),' ',10)
                  +insere(FormatFloat(mcasasRel, mTotal08),' ',11)
                  +insere(FormatFloat(mcasasRel, mToutros),' ',11)
                  +insere(FormatFloat(mcasasRel, mTotAcum),' ',11)
                  +insere(FormatFloat(mcasasRel, mTotQuota),' ',11)
                  +insere(FormatFloat(mcasasRel, mPerc),' ',07)
                  +insere(FormatFloat(mcasasRel, mTotDev),' ',11),m20ccp);
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,insere2('Fim.','-',160),m20ccp);
         if RDprint1.Setup then RDprint1.Fechar;
         end
      else if mlin>60 then
         begin
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,insere2('Continua...','-',160),m20ccp);
         RDprint1.Novapagina;
         mlin:=0;
         end;
      end;
   end;

{
Codig Vendedor      Venda dia Coluna 01 Coluna 02 Coluna 03 Coluna 04 Coluna 05 Coluna 06 Coluna 07  Coluna 08     Outros  Acumulado       Cota  Conc. Devolucao
12345 123456789012ZZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99zzzz.zz9,99zzzz.zz9,99zzz9,99zzz.zz9,99




           Venda dia  Coluna 01  Coluna 02  Coluna 03  Coluna 04  Coluna 05  Coluna 06  Coluna 07  Coluna 08  Acumulado       Cota  Conc. Devolucao


                      1234567890112345678901                                                                             123456789011234567890112345671234567890
Codig Vendedor      Venda dia Coluna 01 Coluna 02 Coluna 03 Coluna 04 Coluna 05 Coluna 06 Coluna 07  Coluna 08     Outros  Acumulado       Cota  Conc. Devolucao
12345 123456789012ZZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99zzzz.zz9,99zzzz.zz9,99zzz9,99zzz.zz9,99
Codigo Vendedor         Venda dia  Coluna 01  Coluna 02  Coluna 03  Coluna 04  Coluna 05  Coluna 06  Coluna 07  Coluna 08  Acumulado       Cota  Conc. Devolucao
123456 123456789012345ZZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99ZZZZ.ZZ9,99zzzz.zz9,99zzzz.zz9,99zzz9,99zzz.zz9,99
}
bbImprimir.Enabled:=true;
end;

procedure TFrm_Vend_RelVendGFor.CODCLIExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.CODVENExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.CODREDExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelVendGFor.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_relvendgfor',key);
   if valfloat(codven.Text)<>0 then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelVendGFor.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Vend_RelVendGFor.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamaCv(0,'Frm_PLDR',key);
   CODCVExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Vend_RelVendGFor.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_Vend_RelVendGFor.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=true;
   OMITIR_VEN.Enabled:=true;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

if log_codsup=0 then
   begin
   CODSUP.Enabled    :=true;
   lbx_codsup.Enabled:=true;
   OMITIR_SUP.Enabled:=true;
   end
else
   begin
   CODSUP.Enabled    :=false;
   lbx_codsup.Enabled:=false;
   OMITIR_SUP.Enabled:=false;
   CODSUP.Text       :=FloatToStr(log_codsup);
   CODSUPExit(self);
   end;

Qr_LDRVALOR01.DisplayFormat      :=mcasas;
Qr_LDRVALOR02.DisplayFormat      :=mcasas;
Qr_LDRVALOR03.DisplayFormat      :=mcasas;
Qr_LDRVALOR04.DisplayFormat      :=mcasas;
Qr_LDRVALOR05.DisplayFormat      :=mcasas;
Qr_LDRVALOR06.DisplayFormat      :=mcasas;
Qr_LDRVALOR07.DisplayFormat      :=mcasas;
Qr_LDRVALOR08.DisplayFormat      :=mcasas;
Qr_LDRVALOR09.DisplayFormat      :=mcasas;
Qr_LDRVALOR10.DisplayFormat      :=mcasas;
Qr_LDRVALOUT.DisplayFormat       :=mcasas;
Qr_LDRVALACUM.DisplayFormat      :=mcasas;
Qr_LDRVALDIA.DisplayFormat       :=mcasas;
Qr_LDRquotaperiodo.DisplayFormat :=mcasas;
Qr_LDRpercconc.DisplayFormat     :=mcasas;
Qr_LDRVALDEV.DisplayFormat       :=mcasas;


DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
{
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));
}
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',date)));
MDT2.Text   :=FormatDatetime(fdt2, date);

RG_TIPOPED.Items.Clear;

for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Checked[0]:=true;
RG_TIPOPED.Checked[7]:=true;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','LBX_CODGFOR']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CODGFOR.Text:=fdeixanum(mcinst);
         if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
            begin
            lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                      +' - '+DM1.Query1.Fields[0].AsString);
            CODGFOR.text := '';
            end;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      begin
      CODGFOR.Text:=fdeixanum(mcinst);
      if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
         begin
         lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                   +' - '+DM1.Query1.Fields[0].AsString);
         CODGFOR.text := '';
         end;
      end;
   end;
CODGFOR.text := '';
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','OMITIR_GFOR']),[]) then
   OMITIR_GFOR.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';




if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_SEPAR']),[]) then
   CB_SEPAR.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_SOMADO']),[]) then
   CB_SOMADO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_ORDEM']),[]) then
   CB_ORDEM.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','RG_FILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','RG_MODELO']),[]) then
   RG_MODELO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_DIMDEV']),[]) then
   CB_DIMDEV.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

{
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_MATRICIAL']),[]) then
   CB_MATRICIAL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';
}
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_VISREL']),[]) then
   CB_VISREL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_FORCAR']),[]) then
   CB_FORCAR.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_FORCAR.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','CB_REDDESCFIN']),[]) then
   CB_REDDESCFIN.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_REDDESCFIN.Checked:=false;



if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','RG_TIPOPED']),[]) then
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


DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('SELECT GFCODGRU,GFNOME FROM CADGFOR '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' where CFCODEMP=0'+IntToStr(codemp))
                  +' order by GFNOME ');
DM1.Query3.Open;
RG_CODGRU.Items.Clear;
While not DM1.Query3.Eof do
   begin
   RG_CODGRU.Items.Add(DM1.Query3.fieldbyName('GFNOME').AsString);
   DM1.Query3.Next;
   end;
RG_CODGRU.Items.Add('Todos');

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELVENDGFOR','RG_CODGRU']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         RG_CODGRU.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      RG_CODGRU.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   RG_CODGRU.Checked[RG_CODGRU.Items.Count-1] := TRUE;
   end;

if codusr=1111 then
   tsRelatorio.TabVisible:=true
else
   tsRelatorio.TabVisible:=false;



end;

procedure TFrm_Vend_RelVendGFor.RL_detalhesBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

mTotal01 :=mTotal01+Qr_LDRVALOR01.Value;
mTotal02 :=mTotal02+Qr_LDRVALOR02.Value;
mTotal03 :=mTotal03+Qr_LDRVALOR03.Value;
mTotal04 :=mTotal04+Qr_LDRVALOR04.Value;
mTotal05 :=mTotal05+Qr_LDRVALOR05.Value;
mTotal06 :=mTotal06+Qr_LDRVALOR06.Value;
mTotal07 :=mTotal07+Qr_LDRVALOR07.Value;
mTotal08 :=mTotal08+Qr_LDRVALOR08.Value;
mTotal09 :=mTotal09+Qr_LDRVALOR09.Value;
mTotal10 :=mTotal10+Qr_LDRVALOR10.Value;
mTotDia  :=mTotDia+Qr_LDRVALDIA.Value;
mTotDev  :=mTotDev+Qr_LDRVALDEV.Value;
mTotAcum :=mTotAcum+Qr_LDRVALACUM.Value;
mToutros :=mToutros+Qr_LDRVALOUT.Value;
mTotQuota:=mTotQuota+Qr_LDRquotaperiodo.Value;

mTotalT01 :=mTotalT01+Qr_LDRVALOR01.Value;
mTotalT02 :=mTotalT02+Qr_LDRVALOR02.Value;
mTotalT03 :=mTotalT03+Qr_LDRVALOR03.Value;
mTotalT04 :=mTotalT04+Qr_LDRVALOR04.Value;
mTotalT05 :=mTotalT05+Qr_LDRVALOR05.Value;
mTotalT06 :=mTotalT06+Qr_LDRVALOR06.Value;
mToutrosT :=mToutrosT+Qr_LDRVALOUT.Value;
mTotalT07 :=mTotalT07+Qr_LDRVALOR07.Value;
mTotalT08 :=mTotalT07+Qr_LDRVALOR08.Value;
mTotalT09 :=mTotalT07+Qr_LDRVALOR09.Value;
mTotalT10 :=mTotalT07+Qr_LDRVALOR10.Value;
mTotDiaT  :=mTotDiaT+Qr_LDRVALDIA.Value;
mTotDevT  :=mTotDevT+Qr_LDRVALDEV.Value;
mTotAcumT :=mTotAcumT+Qr_LDRVALACUM.Value;

if Qr_LDRpercconc.AsFloat>=100 then
   begin
   RL_detalhes.Font.Color:=clBlue;
   RL_detalhes.Font.Style:=[fsBold];
   end
else
   begin
   RL_detalhes.Font.Color:=clBlack;
   RL_detalhes.Font.Style:=[];
   end;


end;

procedure TFrm_Vend_RelVendGFor.CB_SEMBORDAClick(Sender: TObject);
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
   lbl_cabTotOut.Alignment   :=taRightJustify;
   lbl_cabacum.Alignment     :=taRightJustify;
   lbl_cabconc.Alignment     :=taRightJustify;
   lbl_cabdev.Alignment      :=taRightJustify;
   lbl_cabVdaDia.Alignment   :=taRightJustify;
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
   lbl_cabTotal07.Alignment  :=taRightJustify;
   lbl_cabTotal08.Alignment  :=taRightJustify;
   lbl_cabTotal09.Alignment  :=taRightJustify;
   lbl_cabTotal10.Alignment  :=taRightJustify;
   lbl_cabTotOut.Alignment   :=taRightJustify;
   lbl_cabacum.Alignment     :=taRightJustify;
   lbl_cabconc.Alignment     :=taRightJustify;
   lbl_cabdev.Alignment      :=taRightJustify;
   lbl_cabVdaDia.Alignment   :=taCenter;

   end;
lbl_titulo.Borders.DrawBottom      :=mboolean;
db_grupo.Borders.DrawBottom        :=mboolean;

band_cab.Borders.DrawBottom        :=mboolean;
lbl_cabcodigo.Borders.DrawRight    :=mboolean;
lbl_codigo.Borders.DrawRight       :=mboolean;
lblg_codigo.Borders.DrawRight      :=mboolean;

lbl_cabVdaDia.Borders.DrawRight    :=mboolean;
lbl_VdaDia.Borders.DrawRight       :=mboolean;
lblg_vdadia.Borders.DrawRight      :=mboolean;
lblt_vdadia.Borders.DrawRight      :=mboolean;


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

lbl_cabTotOut.Borders.DrawRight  :=mboolean;
lbl_totout.Borders.DrawRight     :=mboolean;
lblg_totout.Borders.DrawRight    :=mboolean;

lbl_cabacum.Borders.DrawRight    :=mboolean;
lbl_totacum.Borders.DrawRight    :=mboolean;
lblg_totacum.Borders.DrawRight   :=mboolean;

lbl_cabquota.Borders.DrawRight   :=mboolean;
lbl_totquota.Borders.DrawRight   :=mboolean;
lblg_totquota.Borders.DrawRight  :=mboolean;

lbl_cabconc.Borders.DrawRight    :=mboolean;
lbl_totconc.Borders.DrawRight    :=mboolean;
lblg_totconc.Borders.DrawRight   :=mboolean;

lbl_cabdev.Borders.DrawRight     :=mboolean;
lbl_totdev.Borders.DrawRight     :=mboolean;
lblg_totdev.Borders.DrawRight    :=mboolean;

lbl_cabNome.Borders.DrawRight    :=mboolean;
lbl_nome.Borders.DrawRight       :=mboolean;
lblg_nome.Borders.DrawRight      :=mboolean;


lbl_cabcodigo.Borders.DrawRight  :=mboolean;
lbl_codigo.Borders.DrawRight     :=mboolean;
lblg_codigo.Borders.DrawRight    :=mboolean;


RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;
RL_detalhes.Borders.DrawTop          :=mboolean;
RL_detalhes.Borders.DrawBottom       :=mboolean;


end;

procedure TFrm_Vend_RelVendGFor.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_vend_relvendgfor',key);
   if valfloat(CODTEL.Text)<>0 then
      CODTELExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelVendGFor.CODTELExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.lbx_codtelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_relvendgfor',key);
   if valfloat(codsup.Text)<>0 then
      CODSUPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelVendGFor.CODSUPExit(Sender: TObject);
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
      lbx_codsup.ItemIndex:=lbx_codgfor.Items.Count-1;

      CODSUP.text := '';
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_Vend_RelVendGFor.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.CODCVExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_relvendgfor',key);
   if valfloat(CODLOC.Text)<>0 then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Vend_RelVendGFor.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.CODLOCExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.sbn_codufClick(Sender: TObject);
begin
CODUF.Text:=fChamaUF(0,'frm_relvendgfor','');
if TRIM(coduf.tEXT)<>'' then
   CODUFExit(Self);



end;

procedure TFrm_Vend_RelVendGFor.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_Vend_RelVendGFor.sbSalvarPadraoClick(Sender: TObject);
var
y,x: Integer;
begin

fDeletaPadroes(codusr,'_VEND_RELVENDGFOR','');
mcinst2:='';
for x:=0 to lbx_codgfor.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codgfor.Items[x])-1 do
      begin
      if copy(lbx_codgfor.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codgfor.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(codusr,'LBX_CODGFOR'          ,'itemindex' ,'_VEND_RELVENDGFOR',mcinst2);
fGravaPadroes(codusr,'OMITIR_GFOR'          ,'checked'   ,'_VEND_RELVENDGFOR',iif(OMITIR_GFOR.Checked,'true','false'));



fGravaPadroes(codusr,'CB_SEPAR'             ,'itemindex' ,'_VEND_RELVENDGFOR',IntTostr(cb_SEPAR.ItemIndex));
fGravaPadroes(codusr,'CB_SOMADO'            ,'itemindex' ,'_VEND_RELVENDGFOR',IntTostr(CB_SOMADO.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'             ,'itemindex' ,'_VEND_RELVENDGFOR',IntTostr(CB_ORDEM.ItemIndex));
fGravaPadroes(codusr,'RG_FILTRO'            ,'itemindex' ,'_VEND_RELVENDGFOR',IntTostr(RG_FILTRO.ItemIndex));
fGravaPadroes(codusr,'RG_MODELO'            ,'itemindex' ,'_VEND_RELVENDGFOR',IntTostr(RG_MODELO.ItemIndex));
fGravaPadroes(codusr,'CB_SEMBORDA'          ,'checked'   ,'_VEND_RELVENDGFOR',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATRICIAL'         ,'checked'   ,'_VEND_RELVENDGFOR',iif(CB_MATRICIAL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_VISREL'            ,'checked'   ,'_VEND_RELVENDGFOR',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_FORCAR'            ,'checked'   ,'_VEND_RELVENDGFOR',iif(CB_FORCAR.Checked,'true','false'));
fGravaPadroes(codusr,'CB_REDDESCFIN'        ,'checked'   ,'_VEND_RELVENDGFOR',iif(CB_REDDESCFIN.Checked,'true','false'));
fGravaPadroes(codusr,'CB_DIMDEV'            ,'checked'   ,'_VEND_RELVENDGFOR',iif(CB_DIMDEV.Checked,'true','false'));


mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_VEND_RELVENDGFOR',mcinst2);


mcinst2:='';
for x:=0 to RG_CODGRU.Items.Count-1 do
   begin
   if RG_CODGRU.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_CODGRU'          ,'itemindex' ,'_VEND_RELVENDGFOR',mcinst2);

fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_Vend_RelVendGFor.CB_SEPARClick(Sender: TObject);
begin
if CB_SEPAR.ItemIndex<0 then
   with CB_SEPAR do ItemIndex:=Items.IndexOf(CB_SEPAR.Text);
CB_SEPAR.text:=CB_SEPAR.Items.Strings[CB_SEPAR.ItemIndex];

end;

procedure TFrm_Vend_RelVendGFor.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Vend_RelVendGFor.CB_MATRICIALClick(Sender: TObject);
begin

if not CB_MATRICIAL.Checked then
   begin
   RLReport1.DefaultFilter:=nil;
   end
else
   begin
   RLReport1.DefaultFilter:=Matricial;
   CB_SEMBORDA.Checked:=true;
   end;


end;

procedure TFrm_Vend_RelVendGFor.band6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblg_total01.Caption :=Formatfloat(mcasas, mTotal01);
lblg_total02.Caption :=Formatfloat(mcasas, mTotal02);
lblg_total03.Caption :=Formatfloat(mcasas, mTotal03);
lblg_total04.Caption :=Formatfloat(mcasas, mTotal04);
lblg_total05.Caption :=Formatfloat(mcasas, mTotal05);
lblg_total06.Caption :=Formatfloat(mcasas, mTotal06);
lblg_total07.Caption :=Formatfloat(mcasas, mTotal07);
lblg_total08.Caption :=Formatfloat(mcasas, mTotal08);
lblg_total09.Caption :=Formatfloat(mcasas, mTotal09);
lblg_total10.Caption :=Formatfloat(mcasas, mTotal10);
lblg_totout.Caption  :=Formatfloat(mcasas, mToutros);
lblg_totacum.Caption :=Formatfloat(mcasas, mTotAcum);
lblg_totquota.Caption:=Formatfloat(mcasas, mTotQuota);
if (mTotAcum<>0) and (mTotQuota<>0) then
   lblg_totconc.Caption :=Formatfloat(mcasas, (mTotAcum*100)/mTotQuota)
else
   lblg_totconc.Caption :=Formatfloat(mcasas, 0);

lblg_totdev.Caption  :=Formatfloat(mcasas, mTotDev);
lblg_vdadia.Caption  :=Formatfloat(mcasas, mTotDia);


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
mToutros:=0;
mTotQuota:=0;
mTotAcum:=0;
mTotQuota:=0;
mTotDev:=0;
mTotDia:=0;
mQtdGrupo:=mQtdGrupo+1;
if (mQtdGrupo>1) and (not rlTotalGer.Visible) then
   rlTotalGer.Visible:=true;


end;

procedure TFrm_Vend_RelVendGFor.RLReport1BeforePrint(Sender: TObject;
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
mToutros:=0;
mTotAcum:=0;
mTotQuota:=0;
mTotDev:=0;

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

mToutrosT:=0;
mTotAcumT:=0;
mTotQuotaT:=0;
mTotDevT:=0;
mQtdGrupo:=0;

end;

procedure TFrm_Vend_RelVendGFor.CODUFExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.rlTotalGerBeforePrint(Sender: TObject;
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
lblt_total10.Caption:=Formatfloat(mcasas, mTotalT10);


lblt_totout.Caption :=Formatfloat(mcasas, mToutrosT);
lblt_totacum.Caption:=Formatfloat(mcasas, mTotAcumT);
lblt_totquota.Caption:=Formatfloat(mcasas, mTotQuotaT);
if (mTotAcumT<>0) or (mTotQuotaT<>0) then
   begin
   try
      lblt_totconc.Caption :=Formatfloat(mcasas, (mTotAcumT*100)/mTotQuotaT);
   except
      lblt_totconc.Caption :=Formatfloat(mcasas, 0);
      end;
   end
else
   lblt_totconc.Caption :=Formatfloat(mcasas, 0);
lblt_totdev.Caption:=FormatFloat(mcasas, mTotDevT);
lblt_vdadia.Caption:=FormatFloat(mcasas, mTotDiaT);

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

mToutrosT:=0;
mTotAcumT:=0;
mTotQuotaT:=0;
mTotDevT:=0;
mTotDiaT:=0;

end;

procedure TFrm_Vend_RelVendGFor.lbx_codgforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.CODGFORExit(Sender: TObject);
begin
CODGFOR.Text:=fdeixanum2(CODGFOR.Text);
if Trim(CODGFOR.Text)<>'' then
   begin
   if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
      begin
      lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codgfor.ItemIndex:=lbx_codgfor.Items.Count-1;
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end
   else
      begin
      fmensagem('Grupo de Fornecedor não Cadastrado!',0,['0'],0);
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_Vend_RelVendGFor.CODFORExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.CODGFORKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFor(0,'frm_cabc',key);
   key:=#0;
   end;



end;

procedure TFrm_Vend_RelVendGFor.CODFORKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_relvendgfor',key);
   if valfloat(CODFOR.Text)<>0 then
      CODFORExit(Self);

   key:=#0;
   end;



end;

procedure TFrm_Vend_RelVendGFor.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   sbn_coduf.Click;
end;

procedure TFrm_Vend_RelVendGFor.Qr_LDRCalcFields(DataSet: TDataSet);
begin
Qr_LDRquotaperiodo.value  :=0;
Qr_LDRpercconc.Value   :=0;


if (DM1.Query4.Active) and (CB_SOMADO.ItemIndex=12) then
   begin
   if DM1.Query4.Locate('CVCODVEN',Qr_LDRCODIGO.Value,[]) then
      begin
      Qr_LDRquotaperiodo.Value:=DM1.Query4.fieldbyName('COTAVLR').AsFloat;
      if (Qr_LDRquotaperiodo.AsFloat<>0) and (Qr_LDRVALACUM.AsFloat<>0) then
         Qr_LDRpercconc.Value:=(Qr_LDRVALACUM.Value*100)/Qr_LDRquotaperiodo.AsFloat;
      end;
   end;

end;

procedure TFrm_Vend_RelVendGFor.RG_CODGRUClick(Sender: TObject);
begin
RG_CODGRU:=Valida_CheckList(RG_CODGRU);

end;

procedure TFrm_Vend_RelVendGFor.CODORI_PEDExit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.CODORI_PEDKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODORI_PED.Text:=fChamaoriped(0,'pcomvv',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelVendGFor.lbx_oripedKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_oriped.ItemIndex>=0 then
      lbx_oriped.Items.Delete(lbx_oriped.ItemIndex);

end;

procedure TFrm_Vend_RelVendGFor.RG_FILTROClick(Sender: TObject);
begin
IF RG_FILTRO.ItemIndex=1 then
   CB_TIPOPESQ.ItemIndex:=0
else
   CB_TIPOPESQ.ItemIndex:=1;

end;

function tFrm_Vend_RelVendGFor.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
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

procedure TFrm_Vend_RelVendGFor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Vend_RelVendGFor.SbnLimparGForClick(Sender: TObject);
begin
lbx_codgfor.Items.Clear;
end;

procedure TFrm_Vend_RelVendGFor.SbnFiltrarClick(Sender: TObject);
var
x: Integer;
begin
lbx_codgfor.Items.Clear;
if not RG_CODGRU.Checked[RG_CODGRU.Items.Count-1] then
   begin
   mboolean:=false;
   for x:=0 to RG_CODGRU.Items.Count-1 do
      begin
      if RG_CODGRU.Checked[x] then
         begin
         mboolean:=true;
         break;
         end;
      end;
   if mboolean then
      begin
      DM1.Query3.First;
      for x:=0 to RG_CODGRU.Items.Count-1 do
         begin
         if RG_CODGRU.Checked[x] then
            begin
            if DM1.Query3.Locate('GFNOME',RG_CODGRU.Items[x],[]) then
               begin
               lbx_codgfor.Items.Add(FormatFloat('0000000', DM1.Query3.fieldbyName('GFCODGRU').AsFloat)
                                    +' - '+DM1.Query3.fieldbyName('GFNOME').Asstring);
               lbx_codgfor.ItemIndex:=lbx_codgfor.Items.Count-1;
               end;
            end;
         end;
      end;
   end;
end;

procedure TFrm_Vend_RelVendGFor.MDT1Exit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.MDT2Exit(Sender: TObject);
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

procedure TFrm_Vend_RelVendGFor.FormKeyDown(Sender: TObject; var Key: Word;
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
