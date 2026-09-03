unit S_Vend_RelGFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_Cli,  S_Ven, S_Tra,lerarq,S_Usr,S_DM4, S_SelEmp,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants,S_Red,s_Con,S_Sup,S_Loc,S_UF,
  CheckLst,S_GFor,S_For;

type
  TFrm_Vend_RelGFor = class(TForm)
    Qr_LDR: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    TabSheet2: TTabSheet;
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
    CB_SEPAR: TComboBox;
    CB_SEMBORDA: TCheckBox;
    Matricial: TRLDraftFilter;
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
    lbl_cabcodigo: TRLMemo;
    RLBand4: TRLBand;
    lbl_codigo: TRLDBText;
    band6: TRLBand;
    lblg_codigo: TRLLabel;
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
    sbn_coduf: TSpeedButton;
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
    Qr_LDROUTROS: TFloatField;
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
    lbl_cabTotal: TRLMemo;
    lbl_total04: TRLDBText;
    lbl_total05: TRLDBText;
    lbl_total06: TRLDBText;
    lbl_total: TRLDBText;
    lblg_total04: TRLLabel;
    lblg_total05: TRLLabel;
    lblg_total06: TRLLabel;
    lblg_total: TRLLabel;
    rlTotalGer: TRLBand;
    lblt_data: TRLLabel;
    lblt_nome: TRLLabel;
    lblt_total01: TRLLabel;
    lblt_total02: TRLLabel;
    lblt_total03: TRLLabel;
    lblt_total04: TRLLabel;
    lblt_total05: TRLLabel;
    lblt_total06: TRLLabel;
    lblt_total: TRLLabel;
    RG_FILTRO: TRadioGroup;
    StaticText2: TStaticText;
    CODGFOR: TEdit;
    OMITIR_GFOR: TCheckBox;
    lbx_codgfor: TListBox;
    lbx_codfor: TListBox;
    StaticText10: TStaticText;
    OMITIR_FOR: TCheckBox;
    CODFOR: TEdit;
    StaticText7: TStaticText;
    CODRED: TEdit;
    OMITIR_RED: TCheckBox;
    lbx_codred: TListBox;
    Label1: TLabel;
    CB_SOMADO: TComboBox;
    Qr_LDRTOTGER: TFloatField;
    Qr_LDRNOMSEP: TStringField;
    Qr_LDRNOMSOM: TStringField;
    Label3: TLabel;
    CB_ORDEM: TComboBox;
    Qr_LDRCODIGO: TStringField;
    CB_FORCAR: TCheckBox;
    TabSheet5: TTabSheet;
    StaticText11: TStaticText;
    CODGFOR_LST: TEdit;
    OMITIR_GFOR_LST: TCheckBox;
    lbx_codgfor_lst: TListBox;
    GB_DESVIO: TGroupBox;
    PERCDESV: TEdit;
    CB_DIMINUIR: TCheckBox;
    lbl_desvio: TRLLabel;
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
    procedure CODGFOR_LSTExit(Sender: TObject);
    procedure CODGFOR_LSTKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgfor_lstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PERCDESVExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Vend_RelGFor: TFrm_Vend_RelGFor;
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


implementation

uses S_C;

{$R *.DFM}

procedure TFrm_Vend_RelGFor.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Vend_RelGFor.bbImprimirClick(Sender: TObject);
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
mPercDesv: String;

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
if RG_FILTRO.ItemIndex=1 then
   begin
//   Qr_LDR.SQL.Add('       and P1EMIDOC=1 ');
   pdatapesq:='P1DATDOC';
   end
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

mcinst2:=fItensListBox(0,lbx_codgfor_lst,OMITIR_GFOR_LST);
if trim(mcinst2)<>'' then
   DM1.Query5.SQL.Add(mcinst+' GFCODGRU '+mcinst2);
DM1.Query5.SQL.Add(' order by GFORDEM ');

DM1.Query5.Open;

if ValFloat(PERCDESV.Text)=0 then
   begin
   mPercDesv:='';
   lbl_desvio.Caption:='****';
   end
else
   begin
   lbl_desvio.Caption:='';
   if ValFloat(PERCDESV.Text)<0 then
      PERCDESV.Text:=FormatFloat(mcasas,ValFloat(PERCDESV.Text)*-1);
   if CB_DIMINUIR.Checked then
      mPercDesv:='-( ((P2TOTLIQ-P2DESCRAT)*'+mudaVP(PERCDESV.Text)+')/100)'
   else
      mPercDesv:='+( ((P2TOTLIQ-P2DESCRAT)*'+mudaVP(PERCDESV.Text)+')/100)';
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

mreg:=0;
Qr_LDR.Close;
Qr_LDR.SQL.Clear;
Qr_LDR.SQL.Add('Select ');
mcinst:='';
mEscolhidos:='';
if not DM1.Query5.IsEmpty then
   begin
   While not DM1.Query5.Eof do
      begin
      mreg:=mReg+1;
      if mreg=1 then
         begin
         lbl_cabTotal01.Lines.Clear;
         lbl_cabTotal01.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
         end
      else if mreg=2 then
         begin
         lbl_cabTotal02.Lines.Clear;
         lbl_cabTotal02.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
         end
      else if mreg=3 then
         begin
         lbl_cabTotal03.Lines.Clear;
         lbl_cabTotal03.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
         end
      else if mreg=4 then
         begin
         lbl_cabTotal04.Lines.Clear;
         lbl_cabTotal04.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
         end
      else if mreg=5 then
         begin
         lbl_cabTotal05.Lines.Clear;
         lbl_cabTotal05.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
         end
      else if mreg=6 then
         begin
         lbl_cabTotal06.Lines.Clear;
         lbl_cabTotal06.Lines.Add(DM1.Query5.fieldByName('GFNOME').AsString);
         end;
      if mreg<7 then
         begin
         Qr_LDR.sql.Add(mcinst+' sum(DECODE(GFNOME, '
                       +chr(39)+DM1.Query5.fieldByName('GFNOME').AsString+chr(39)
                       +',(P2TOTLIQ-P2DESCRAT'+mpercDesv+'),0)) AS VALOR'+FormatFloat('00',mReg));
         mEscolhidos:=mEscolhidos+mcinst+chr(39)+
                      DM1.Query5.fieldByName('GFNOME').AsString+chr(39)+',0';
         mcinst:=','
         end
      else
         begin
         Qr_LDR.sql.Add(mcinst+' sum(DECODE(GFNOME, '
                       +mEscolhidos
                       +', (P2TOTLIQ-P2DESCRAT'+mpercDesv+'))) AS OUTROS ');
         mcinst:=',';
         break;
         end;
      DM1.Query5.Next;
      end;
   end
else
   begin
   lbl_cabTotal01.Lines.Clear;
   lbl_cabTotal01.Lines.Add('Sem Grupo');
   x:=1;
   Qr_LDR.sql.Add(mcinst+' 0 AS VALOR01');
   mcinst:=',';
   mReg:=1;
   end;


if mreg<7 then
   begin
   for x:=(mReg+1) to 06 do
      begin
      if x=1 then
         begin
         lbl_cabTotal01.Visible:=false;
         lbl_Total01.Visible   :=false;
         lblg_Total01.Visible  :=False;
         end
      else if x=2 then
         begin
         lbl_cabTotal02.Visible:=false;
         lbl_Total02.Visible   :=false;
         lblg_Total02.Visible  :=False;
         end
      else if x=3 then
         begin
         lbl_cabTotal03.Visible:=false;
         lbl_Total03.Visible   :=false;
         lblg_Total03.Visible  :=False;
         end
      else if x=4 then
         begin
         lbl_cabTotal04.Visible:=false;
         lbl_Total04.Visible   :=false;
         lblg_Total04.Visible  :=False;
         end
      else if x=5 then
         begin
         lbl_cabTotal05.Visible:=false;
         lbl_Total05.Visible   :=false;
         lblg_Total05.Visible  :=False;
         end
      else if x=6 then
         begin
         lbl_cabTotal06.Visible:=false;
         lbl_Total06.Visible   :=false;
         lblg_Total06.Visible  :=False;
         end;
      if x<07 then
         begin
         Qr_LDR.sql.Add(mcinst+' 0 AS VALOR'+FormatFloat('00',x));
         mcinst:=',';
         end;
      end;
   Qr_LDR.sql.Add(mcinst+' 0 AS OUTROS');
   end;

Qr_LDR.sql.Add(', sum(P2TOTLIQ-P2DESCRAT'+mpercDesv+') AS TOTGER ');



mTabVen:=false;
mTabCli:=false;
mTabUsr:=False;
mTabSup:=False;
mTabCV :=False;

if (CB_SOMADO.ItemIndex=1) or
   (CB_SOMADO.ItemIndex=2) or
   (CB_SOMADO.ItemIndex=3) or
   (CB_SOMADO.ItemIndex=4) or
   (CB_SOMADO.ItemIndex=8) or
   (CB_SEPAR.ItemIndex=7) or
   (lbx_codred.Items.Count>5) or
   (lbx_coduf.Items.Count>0) or
   (lbx_codloc.Items.Count>0) then
   mTabCli:=true;
if (CB_SOMADO.ItemIndex=4) or (CB_SEPAR.itemindex=3)  then
   mTabCV:=true;
if (CB_SOMADO.ItemIndex=9) or (CB_SEPAR.ItemIndex=9) or (lbx_codsup.Items.Count>0) then
   begin
   mTabSup:=true;
   mtabven:=true;
   end;
if (CB_SOMADO.ItemIndex=10) or (CB_SEPAR.ItemIndex=10) then
   mTabUsr:=true;
if (CB_SEPAR.ItemIndex=12) or (CB_SEPAR.ItemIndex=12) then
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
      mGrupoImp:=mGrupoImp+',';
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
if (mTabCli) or (CB_SEPAR.ItemIndex=0) then
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
fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADGFOR' ,'GFCODEMP','FCODEMP' ,'GFCODGRU' ,'FCODGFOR');

Qr_LDR.sql.add(', '+mNomSep+' AS NOMSEP ' );
Qr_LDR.sql.add(', '+mNomSom+' AS NOMSOM ' );

//Qr_LDR.Sql.Add(', GFORDEM AS ORDEM ');
Qr_LDR.Sql.add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +iif(la_instrucao='','',la_instrucao+' and '));
Qr_LDR.sql.Add(' P1STATUS<'+mstatus_excluido+'' );
if trim(MDT1.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+pDataPesq+'>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /'then
   Qr_LDR.SQL.Add(' and '+pDataPesq+'<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));

if RG_FILTRO.ItemIndex=0 then
   Qr_LDR.Sql.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   Qr_LDR.SQL.Add(' and P1EMIDOC<>0');
Qr_LDR.SQL.Add(' and P1EMIDOC<>0');

mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
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
Qr_LDR.SQL.Add(' and P1TIPO>0 ');

if trim(mGrupoImp)<>'' then
   Qr_LDR.SQL.add(' group by '+iif(mGrupoImp='','',mGrupoImp));
if CB_ORDEM.ItemIndex=1 then
   Qr_LDR.SQL.Add('Order by TOTGER ')
else if CB_ORDEM.ItemIndex=2 then
   Qr_LDR.SQL.Add('Order by TOTGER DESC ');


try
   Qr_LDR.Open;
except
   Qr_LDR.SQL.SaveToFile('c:\sql.txt');
   fmensagem('Erro ao Selecionar dados, contactar suporte!',0,['0'],0);
   end;

//Qr_LDR.SQL.SaveToFile('c:\sqlRES.txt');

lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);

lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';

rlTotalGer.Visible:=false;

RLReport1.PreviewModal;

bbImprimir.Enabled:=true;

end;

procedure TFrm_Vend_RelGFor.CODCLIExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.CODVENExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.CODREDExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelGFor.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Vend_RelGFor',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelGFor.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Vend_RelGFor.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamaCv(0,'Frm_PLDR',key);
   CODCVExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Vend_RelGFor.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_Vend_RelGFor.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.FormCreate(Sender: TObject);
var
x: Integer;
begin
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

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Qr_LDRVALOR01.DisplayFormat :=mcasas;
Qr_LDRVALOR02.DisplayFormat :=mcasas;
Qr_LDRVALOR03.DisplayFormat :=mcasas;
Qr_LDRVALOR04.DisplayFormat :=mcasas;
Qr_LDRVALOR05.DisplayFormat :=mcasas;
Qr_LDRVALOR06.DisplayFormat :=mcasas;
Qr_LDROUTROS.DisplayFormat  :=mcasas;
Qr_LDRTOTGER.DisplayFormat  :=mcasas;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Checked[0]:=true;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','LBX_CODGFOR']),[]) then
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
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','OMITIR_GFOR']),[]) then
   OMITIR_GFOR.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','LBX_CODGFOR_LST']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CODGFOR_LST.Text:=fdeixanum(mcinst);
         if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR_LST.Text) then
            begin
            lbx_codgfor_lst.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR_LST.TEXT))
                                      +' - '+DM1.Query1.Fields[0].AsString);
            CODGFOR_LST.text := '';
            end;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      begin
      CODGFOR_LST.Text:=fdeixanum(mcinst);
      if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR_LST.Text) then
         begin
         lbx_codgfor_lst.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR_LST.TEXT))
                                   +' - '+DM1.Query1.Fields[0].AsString);
         CODGFOR_LST.text := '';
         end;
      end;
   end;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','OMITIR_GFOR_LST']),[]) then
   OMITIR_GFOR_LST.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','CB_SEPAR']),[]) then
   CB_SEPAR.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','CB_SOMADO']),[]) then
   CB_SOMADO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','CB_ORDEM']),[]) then
   CB_ORDEM.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','RG_FILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','CB_MATRICIAL']),[]) then
   CB_MATRICIAL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','CB_VISREL']),[]) then
   CB_VISREL.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','CB_FORCAR']),[]) then
   CB_FORCAR.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';



if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_VEND_RELGFOR','RG_TIPOPED']),[]) then
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


end;

procedure TFrm_Vend_RelGFor.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

mTotal01:=mTotal01+Qr_LDRVALOR01.Value;
mTotal02:=mTotal02+Qr_LDRVALOR02.Value;
mTotal03:=mTotal03+Qr_LDRVALOR03.Value;
mTotal04:=mTotal04+Qr_LDRVALOR04.Value;
mTotal05:=mTotal05+Qr_LDRVALOR05.Value;
mTotal06:=mTotal06+Qr_LDRVALOR06.Value;
mToutros:=mToutros+Qr_LDROUTROS.Value;

mTotalT01:=mTotalT01+Qr_LDRVALOR01.Value;
mTotalT02:=mTotalT02+Qr_LDRVALOR02.Value;
mTotalT03:=mTotalT03+Qr_LDRVALOR03.Value;
mTotalT04:=mTotalT04+Qr_LDRVALOR04.Value;
mTotalT05:=mTotalT05+Qr_LDRVALOR05.Value;
mTotalT06:=mTotalT06+Qr_LDRVALOR06.Value;
mToutrosT:=mToutrosT+Qr_LDROUTROS.Value;



end;

procedure TFrm_Vend_RelGFor.CB_SEMBORDAClick(Sender: TObject);
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
   lbl_cabTotal.Alignment    :=taRightJustify;
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
   lbl_cabTotal.Alignment    :=taCenter;

   end;
lbl_titulo.Borders.DrawBottom    :=mboolean;
db_grupo.Borders.DrawBottom      :=mboolean;

band_cab.Borders.DrawBottom      :=mboolean;
lbl_cabcodigo.Borders.DrawRight    :=mboolean;
lbl_codigo.Borders.DrawRight       :=mboolean;
lblg_codigo.Borders.DrawRight      :=mboolean;

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

lbl_cabTotal.Borders.DrawRight :=mboolean;
lbl_total.Borders.DrawRight    :=mboolean;
lblg_total.Borders.DrawRight   :=mboolean;

lbl_cabNome.Borders.DrawRight :=mboolean;
lbl_nome.Borders.DrawRight    :=mboolean;
lblg_nome.Borders.DrawRight   :=mboolean;


lbl_cabcodigo.Borders.DrawRight    :=mboolean;
lbl_codigo.Borders.DrawRight       :=mboolean;
lblg_codigo.Borders.DrawRight      :=mboolean;

//lblg_codigo.Borders.DrawBottom     :=mboolean;
//lblg_total01.Borders.DrawBottom  :=mboolean;
//lblg_total02.Borders.DrawBottom  :=mboolean;
//lblg_total03.Borders.DrawBottom  :=mboolean;
//lblg_total04.Borders.DrawBottom  :=mboolean;
//lblg_total05.Borders.DrawBottom  :=mboolean;
//lblg_total06.Borders.DrawBottom  :=mboolean;
//lblg_nome.Borders.DrawBottom  :=mboolean;

RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;
RLband4.Borders.DrawTop          :=mboolean;
RLband4.Borders.DrawBottom       :=mboolean;


end;

procedure TFrm_Vend_RelGFor.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_Vend_RelGFor',Key);
   if trim(CODTEL.Text)<>'' then
      CODTELExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelGFor.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codtel.ItemIndex:=lbx_codgfor.Items.Count-1;

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

procedure TFrm_Vend_RelGFor.lbx_codtelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_Vend_RelGFor',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Vend_RelGFor.CODSUPExit(Sender: TObject);
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
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_Vend_RelGFor.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.CODCVExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Vend_RelGFor',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Vend_RelGFor.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.CODLOCExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.sbn_codufClick(Sender: TObject);
begin
CODUF.Text :=fChamaUF(0,'frm_Vend_RelGFor','');
if trim(CODUF.Text)<>'' then
   CODUFExit(Self);

end;

procedure TFrm_Vend_RelGFor.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_Vend_RelGFor.sbSalvarPadraoClick(Sender: TObject);
var
y,x: Integer;
begin

fDeletaPadroes(codusr,'_VEND_RELGFOR','');
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
fGravaPadroes(codusr,'LBX_CODGFOR'          ,'itemindex' ,'_VEND_RELGFOR',mcinst2);
fGravaPadroes(codusr,'OMITIR_GFOR'          ,'checked'   ,'_VEND_RELGFOR',iif(OMITIR_GFOR.Checked,'true','false'));


mcinst2:='';
for x:=0 to lbx_codgfor_lst.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codgfor_lst.Items[x])-1 do
      begin
      if copy(lbx_codgfor_lst.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codgfor_lst.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(codusr,'LBX_CODGFOR_LST'       ,'itemindex' ,'_VEND_RELGFOR',mcinst2);
fGravaPadroes(codusr,'OMITIR_GFOR_LST'          ,'checked'   ,'_VEND_RELGFOR',iif(OMITIR_GFOR_LST.Checked,'true','false'));

fGravaPadroes(codusr,'CB_SEPAR'             ,'itemindex' ,'_VEND_RELGFOR',IntTostr(cb_SEPAR.ItemIndex));
fGravaPadroes(codusr,'CB_SOMADO'            ,'itemindex' ,'_VEND_RELGFOR',IntTostr(CB_SOMADO.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'             ,'itemindex' ,'_VEND_RELGFOR',IntTostr(CB_ORDEM.ItemIndex));
fGravaPadroes(codusr,'RG_FILTRO'            ,'itemindex' ,'_VEND_RELGFOR',IntTostr(RG_FILTRO.ItemIndex));
fGravaPadroes(codusr,'CB_SEMBORDA'          ,'checked'   ,'_VEND_RELGFOR',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_MATRICIAL'         ,'checked'   ,'_VEND_RELGFOR',iif(CB_MATRICIAL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_VISREL'            ,'checked'   ,'_VEND_RELGFOR',iif(CB_VISREL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_FORCAR'            ,'checked'   ,'_VEND_RELGFOR',iif(CB_SEMBORDA.Checked,'true','false'));

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
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_VEND_RELGFOR',mcinst2);

fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_Vend_RelGFor.CB_SEPARClick(Sender: TObject);
begin
if CB_SEPAR.ItemIndex<0 then
   with CB_SEPAR do ItemIndex:=Items.IndexOf(CB_SEPAR.Text);
CB_SEPAR.text:=CB_SEPAR.Items.Strings[CB_SEPAR.ItemIndex];

end;

procedure TFrm_Vend_RelGFor.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Vend_RelGFor.CB_MATRICIALClick(Sender: TObject);
begin
if not CB_MATRICIAL.Checked then
   RLReport1.DefaultFilter:=nil
else
   RLReport1.DefaultFilter:=Matricial;

end;

procedure TFrm_Vend_RelGFor.band6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblg_total01.Caption:=Formatfloat(mcasas, mTotal01);
lblg_total02.Caption:=Formatfloat(mcasas, mTotal02);
lblg_total03.Caption:=Formatfloat(mcasas, mTotal03);
lblg_total04.Caption:=Formatfloat(mcasas, mTotal04);
lblg_total05.Caption:=Formatfloat(mcasas, mTotal05);
lblg_total06.Caption:=Formatfloat(mcasas, mTotal06);
//lblg_TOTAL.Caption:=Formatfloat(mcasas, mTotal07);

lblg_total.Caption:=FormatFloat(mcasas, mTotal01+mTotal02+mTotal03+mTotal04+
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

procedure TFrm_Vend_RelGFor.RLReport1BeforePrint(Sender: TObject;
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

procedure TFrm_Vend_RelGFor.CODUFExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.rlTotalGerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lblt_total01.Caption:=Formatfloat(mcasas, mTotalT01);
lblt_total02.Caption:=Formatfloat(mcasas, mTotalT02);
lblt_total03.Caption:=Formatfloat(mcasas, mTotalT03);
lblt_total04.Caption:=Formatfloat(mcasas, mTotalT04);
lblt_total05.Caption:=Formatfloat(mcasas, mTotalT05);
lblt_total06.Caption:=Formatfloat(mcasas, mTotalT06);

lblt_total.Caption:=FormatFloat(mcasas, mTotalT01+mTotalT02+mTotalT03+mTotalT04+
                                            mTotalT05+mTotalT06+mTotalT07+mTotalT08+
                                            mTotalT09+mTotalT10+mTotalT11+mToutrosT);

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

procedure TFrm_Vend_RelGFor.lbx_codgforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.CODGFORExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.CODFORExit(Sender: TObject);
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

procedure TFrm_Vend_RelGFor.CODGFORKeyPress(Sender: TObject;
  var Key: Char);

begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFOR(0,'frm_Vend_RelGFor',Key);
   if trim(CODGFOR.Text)<>'' then
      CODGFORExit(Self);
   key:=#0;
   end;






end;

procedure TFrm_Vend_RelGFor.CODFORKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Vend_RelGFor',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;



end;

procedure TFrm_Vend_RelGFor.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   sbn_coduf.Click;
end;

procedure TFrm_Vend_RelGFor.CODGFOR_LSTExit(Sender: TObject);
begin
CODGFOR_LST.Text:=fdeixanum2(CODGFOR_LST.Text);
if Trim(CODGFOR_LST.Text)<>'' then
   begin
   if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR_LST.Text) then
      begin
      lbx_codgfor_lst.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR_LST.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codgfor_lst.ItemIndex:=lbx_codgfor_lst.Items.Count-1;
      CODGFOR_LST.text := '';
      CODGFOR_LST.SetFocus;
      end
   else
      begin
      fmensagem('Grupo de Fornecedor não Cadastrado!',0,['0'],0);
      CODGFOR_LST.text := '';
      CODGFOR_LST.SetFocus;
      end;
   end;


end;

procedure TFrm_Vend_RelGFor.CODGFOR_LSTKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR_LST.Text:=fChamaGFor(0,'frm_cabc',key);
   key:=#0;
   end;



end;

procedure TFrm_Vend_RelGFor.lbx_codgfor_lstKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor_lst.ItemIndex>=0 then
      lbx_codgfor_lst.Items.Delete(lbx_codgfor_lst.ItemIndex);

end;

procedure TFrm_Vend_RelGFor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Vend_RelGFor.PERCDESVExit(Sender: TObject);
begin

PERCDESV.Text:=FormatFloat(mcasas, valFloat(PERCDESV.Text));

end;

procedure TFrm_Vend_RelGFor.FormKeyDown(Sender: TObject; var Key: Word;
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
If (Key=114) and (Shift=[ssCtrl]) then // ctrl-f8
   begin
   PERCDESV.Text:='';
   if GB_DESVIO.Visible then
      GB_DESVIO.Visible:=false
   else
      GB_DESVIO.Visible:=true;
   end;
end;

procedure TFrm_Vend_RelGFor.FormShow(Sender: TObject);
begin
   TabSheet3.Visible := False;
end;

end.


