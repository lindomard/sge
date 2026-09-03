unit S_RelComis_Rec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, S_DM1, func, db, dbtables, S_Impres,
  S_Ven,S_Sup,S_USR,lerarq, Grids, DBGrids,variants,
  ComCtrls, CheckLst,s_c,S_Assessor,S_Bco, S_SelEmp;

type
  TFrm_RelComis_Rec = class(TForm)
    Qr_CL02: TQuery;
    Src_CL02: TDataSource;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    tsTipoPed: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Panel1: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    bbAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    bbSalvarPadrao: TBitBtn;
    bbSair: TBitBtn;
    CB_TPP: TComboBox;
    Label6: TLabel;
    lbl_cheio: TLabel;
    StaticText12: TStaticText;
    clb_simples: TCheckListBox;
    StaticText11: TStaticText;
    CLB_TIPOCOB: TCheckListBox;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label25: TLabel;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CODIGO: TEdit;
    CLB_TIPODOC: TCheckListBox;
    StaticText10: TStaticText;
    cb_ordem: TComboBox;
    CB_FORCAR: TCheckBox;
    Qr_CL02CL2CODEMP: TFloatField;
    Qr_CL02CL2CHAVE: TFloatField;
    Qr_CL02CL2SEQ: TFloatField;
    Qr_CL02CL2DOC: TFloatField;
    Qr_CL02CL2NUMERO: TFloatField;
    Qr_CL02CL2DESD: TStringField;
    Qr_CL02CL2DUP: TFloatField;
    Qr_CL02CL2CHAVEP: TFloatField;
    Qr_CL02CL2ORDEMP: TFloatField;
    Qr_CL02CL2CODEMPD: TFloatField;
    Qr_CL02CL2VALDOC: TFloatField;
    Qr_CL02CL2VALFRE: TFloatField;
    Qr_CL02CL2VALICMSR: TFloatField;
    Qr_CL02CL2SEMCOM: TFloatField;
    Qr_CL02CL2VALACRE: TFloatField;
    Qr_CL02CL2VALCOM: TFloatField;
    Qr_CL02CL2VALCTL: TFloatField;
    Qr_CL02CL2LOTSEQ: TFloatField;
    Qr_CL02CL2LOTSEQ_DC: TFloatField;
    Qr_CL02CL2DTEMIS: TDateTimeField;
    Qr_CL02CL2CODECF: TFloatField;
    Qr_CL02CL2DTVCTO: TDateTimeField;
    Qr_CL02CL2DTBX: TDateTimeField;
    Qr_CL02CL2CODCLI: TFloatField;
    Qr_CL02CL2CODBCO: TFloatField;
    Qr_CL02CL2TARBAN: TFloatField;
    Qr_CL02CL2OUTDESP: TFloatField;
    Qr_CL02CRAZAO: TStringField;
    Qr_CL02CL2VALDESC: TFloatField;
    Qr_CL02CL2DTPAG: TDateTimeField;
    Qr_CL02CL2JUROS: TFloatField;
    Qr_CL02CL2JURD: TFloatField;
    Qr_CL02CL2MULTA: TFloatField;
    Qr_CL02CL2VALREC: TFloatField;
    Qr_CL02CL2LOTSEQ_BX: TFloatField;
    Qr_CL02CL2LOTE_BX: TFloatField;
    lbl_nome: TLabel;
    NOMVEN: TEdit;
    Qr_CL02valcom: TFloatField;
    Qr_CL02comtlv: TFloatField;
    Qr_CL02CL2COMSUP: TFloatField;
    Qr_CL02CL2COMASSE: TFloatField;
    Panel6: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label1: TLabel;
    txt_PCOMIS_DIG: TEdit;
    cb_listarpor: TComboBox;
    Label4: TLabel;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLB_TIPODOCClick(Sender: TObject);
    procedure CLB_TIPOCOBClick(Sender: TObject);
    procedure clb_simplesClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure cb_ordemClick(Sender: TObject);
    procedure Qr_CL02CalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txt_PCOMIS_DIGExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cb_listarporClick(Sender: TObject);
  private
    { Private declarations }
    function fAtualizaPadrao(pTipo: Integer): Boolean;
    function fImpResumido_Cab(pTipo: Integer): Boolean;

  public
    { Public declarations }
    form_impres_relcomis_rec: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    procedure imp_resumido;
  end;

var
  Frm_RelComis_Rec: TFrm_RelComis_Rec;
  mDataPesq: String;
 mtip_ant: Integer;


 mtotg: Real;
mbasec    : Real;
mtd_valdoc: Real;
mtd_valrec: Real;
mtd_basec : Real;
mtd_valcom: Real;
mtd_valtlv: Real;
mvcomt    : Real;
mvcoml    : Real;
mvcomv    : Real;


mtg_valdoc: Real;
mtg_valrec: Real;
mtg_basec : Real;
mtg_valcom: Real;
mtg_valtlv: Real;

mtEx_valdoc: Real;
mtEx_valrec: Real;
mtEx_basec : Real;
mtEx_valcom: Real;
mtEx_valtlv: Real;
mpcomis    : Real;
mpcomis_dig: Real=0;
mPMedDesc  : Real;
mvalcom    : real;
implementation

uses S_SQL, S_DM4, S_DM2;

{$R *.DFM}

procedure TFrm_RelComis_Rec.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelComis_Rec.MDT1Exit(Sender: TObject);
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

procedure TFrm_RelComis_Rec.bbImprimirClick(Sender: TObject);
var
mGrupoAnt: String;
x: Integer;
Begin
 bbAplicar.Click;

if Qr_CL02.IsEmpty then
   begin
   fmensagem('Nada a ser impresso na condição solicitada!',0,['0'],0);
   exit;
   end;
Qr_Cl02.First;
imp_resumido;

end;

procedure TFrm_RelComis_Rec.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
CLB_TIPODOC.Items.Clear;
for x:=0 to high(ptpdoc) do
   begin
   CLB_TIPODOC.Items.Add(ptpdoc[x]);
   end;
//CLB_TIPODOC.Items.Add('Cheque Balcão');
CLB_TIPODOC.Checked[x-1]:=true;
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

Qr_CL02CL2DTEMIS.DisplayFormat :=fdt3;
Qr_CL02CL2DTVCTO.DisplayFormat :=fdt3;
Qr_CL02CL2DTBX.DisplayFormat   :=fdt3;
Qr_CL02CL2DTPAG.DisplayFormat  :=fdt3;
Qr_CL02CL2VALDOC.DisplayFormat   :=mcasas;
Qr_CL02CL2VALFRE.DisplayFormat  :=mcasas;
Qr_CL02CL2VALICMSR.DisplayFormat  :=mcasas;
Qr_CL02CL2VALACRE.DisplayFormat :=mcasas;
Qr_CL02CL2VALCTL.DisplayFormat:=mcasas;
Qr_CL02CL2OUTDESP.DisplayFormat:=mcasas;
Qr_CL02CL2VALDESC.DisplayFormat:=mcasas;
Qr_CL02CL2VALREC.DisplayFormat:=mcasas;

fAtualizaPadrao(0);
if not CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1] then
   begin
   mboolean:=true;
   for x:=0 to CLB_TIPOCOB.Items.Count-1 do
      begin
      if CLB_TIPOCOB.Checked[x] then
         mboolean:=false;
      end;
   if mboolean then
      CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1]:=true;
   end;
if (log_codven>0) and(cb_ordem.ItemIndex=0) then
  begin
  CODIGO.Text:=FloatToStr(log_codven);
  flcadven(1,0,CODIGO.Text);
  if DM1.Tb_Ven.Eof then
    NOMVEN.Text:=DM1.Tb_VenVNOME.AsString;
  CODIGO.Enabled:=False;
  end;

end;

procedure TFrm_RelComis_Rec.bbAplicarClick(Sender: TObject);
var
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
if cb_tpp.ItemIndex=4 then
   mDataPesq:='CRDATPED'
else if cb_tpp.ItemIndex=3 then
   mDataPesq:='CRDTPAG'
else if cb_tpp.ItemIndex=2 then
   mDataPesq:='CRDTBX'
else if cb_tpp.ItemIndex=1 then
   mDataPesq:='CRDTVCTO'
else
   mDataPesq:='CRDTEMIS';



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI' ,'CCODEMP','CRCODEMP' ,'CCODCLI' ,'CRCODCLI');

Qr_CL02.Close;
Qr_cl02.SQL.Clear;
for x:=1 to 2 do
   begin
   Qr_CL02.SQL.add('Select  CRCODEMP    AS CL2CODEMP '
                  +', CRNPED            AS CL2CHAVE '
                  +', CRORDEM           AS CL2SEQ '
                  +', CRORDEM-CRORDEM   AS CL2DOC '
                  +', CRNUMERO          AS CL2NUMERO '
                  +', CRDESD            AS CL2DESD '
                  +', CRNPED            AS CL2CHAVEP '
                  +', CRORDEM           AS CL2ORDEMP '
                  +', CRCODEMP          AS CL2CODEMPD '
                  +', CRVALOR           AS CL2VALDOC '
                  +', CRVALFRE          AS CL2VALFRE '
                  +', CRICMSR           AS CL2VALICMSR '
                  +', CRSEMCOM          AS CL2SEMCOM '
                  +', CRCODEMP-CRCODEMP AS CL2VALACRE '
                  +', CRCOMVEN          AS CL2VALCOM '
                  +', CRCOMTEL          AS CL2VALCTL '
                  +', CRLOTSEQ_CP       AS CL2LOTSEQ '
                  +', CRLOTSEQ_CP       AS CL2LOTSEQ_DC '
                  +', CRDTEMIS          AS CL2DTEMIS '
                  +', CRCODECF          AS CL2CODECF '
                  +', CRDTVCTO          AS CL2DTVCTO '
                  +', CRDTBX            AS CL2DTBX '
                  +', CRCODCLI          AS CL2CODCLI '
                  +', CRCODBCO          AS CL2CODBCO '
                  +', CRTARBAN-CRTARBAN AS CL2TARBAN '
                  +', CRTARBAN-CRTARBAN AS CL2OUTDESP '
                  +', CRDESC            AS CL2VALDESC '
                  +', CRDTPAG           AS CL2DTPAG  '
                  +', CRJUROS           AS CL2JUROS '
                  +', CRJURD            AS CL2JURD '
                  +', CRMULTA           AS CL2MULTA'
                  +', CRVALPAG          AS CL2VALREC '
                  +', CRLOTSEQ_CP       AS CL2LOTSEQ_BX '
                  +', CRLOTE            AS  CL2LOTE_BX  '
                  +', CRCOMSUP          AS  CL2COMSUP  '
                  +', CRCOMASSE         AS  CL2COMASSE  '
                  +', CRAZAO            AS CRAZAO, ');
   if x>1 then
      Qr_CL02.Sql.add(' CRDUP AS  CL2DUP ')
   else
      Qr_CL02.Sql.add('20+CRDUP as CL2DUP ');
   Qr_CL02.Sql.add('       from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CRSTATUS<9 ');

   if (cb_listarpor.ItemIndex>1) and (cb_listarpor.ItemIndex<3) then
      Qr_CL02.Sql.add(' and CRSTATUS >'+iif(x>1,'1','-1')
                     +'       and CRDUP<>3 ');

   if cb_listarpor.ItemIndex = 0 then
      Qr_CL02.SQL.Add('AND CRSTATUS < 2')
   else if cb_listarpor.ItemIndex = 1 then
      Qr_CL02.SQL.Add('AND CRSTATUS = 1')
   else if cb_listarpor.ItemIndex = 2 then
      Qr_CL02.SQL.Add('AND CRSTATUS > 0');
   if x>1 then
      begin
      if cb_ordem.ItemIndex=0 then
         begin
         Qr_CL02.SQL.Add(' and ((CRCODVEN=0'+CODIGO.Text+')');
         Qr_CL02.SQL.Add(' or   (CRCODV02=0'+CODIGO.Text+')');
         Qr_CL02.SQL.Add(' or   (CRCODV03=0'+CODIGO.Text+') )');
         end
      else if cb_ordem.ItemIndex=1 then
         Qr_Cl02.SQL.Add(' and VCODSUP=0'+CODIGO.Text)
      else if cb_ordem.ItemIndex=2 then
         Qr_Cl02.SQL.Add(' and CRCODTEL=0'+CODIGO.Text)
      else if cb_ordem.ItemIndex=3 then
         Qr_CL02.SQL.Add(' and CRCODASSE=0'+CODIGO.Text);
      if trim(MDT1.Text)<>'/  /' then
         Qr_CL02.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
      if trim(MDT2.Text)<>'/  /' then
         Qr_CL02.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
      end
   else
      begin
      if cb_ordem.ItemIndex=0 then
         begin
         Qr_CL02.SQL.Add(' and ( (CRCODVEN=0'+CODIGO.Text+') ');
         Qr_CL02.SQL.Add(' or    (CRCODV02=0'+CODIGO.Text+')');
         Qr_CL02.SQL.Add(' or    (CRCODV03=0'+CODIGO.Text+')  ) ');
         end
      else if cb_ordem.ItemIndex=1 then
         Qr_CL02.SQL.Add(' and VCODSUP=0'+CODIGO.Text+'')
      else if cb_ordem.ItemIndex=2 then
         Qr_CL02.SQL.Add(' and CRCODTEL=0'+CODIGO.Text+'')
      else if cb_ordem.ItemIndex=3 then
         Qr_CL02.SQL.Add(' and CRCODASSE=0'+CODIGO.Text+'');
      if trim(MDT1.Text)<>'/  /' then
         Qr_CL02.SQL.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
      if trim(MDT2.Text)<>'/  /' then
         Qr_CL02.SQL.Add(' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
      Qr_CL02.SQL.Add(' and CRDUP IN (1,2)');
      end;

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      Qr_CL02.SQL.Add(' and CRCODCLI '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then
      Qr_CL02.SQL.Add(' and CRCODBCO '+mcinst2);
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Qr_CL02.SQL.Add(' and CRCODORI '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLB_TIPODOC);
   if trim(mcinst2)<>'' then
      Qr_CL02.SQL.Add(' and CRDUP '+mcinst2);
   mcinst2:=fItenstCheckListBox(0,clb_simples);
   if trim(mcinst2)<>'' then
      Qr_CL02.SQL.Add(' and CRTIPCOB '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLB_TIPODOC);
   if trim(mcinst2)<>'' then
      Qr_CL02.SQL.Add(' and CRDUP '+mcinst2);




   if x<2 then
      Qr_cl02.SQL.add(' union ');
   end;
Qr_CL02.SQL.Add(' order by CL2DUP,CL2DTPAG');

Qr_cl02.sql.SaveToFile(mpastatemp +'sql.TXT');

try
   Qr_cl02.Open;
except
   Qr_CL02.sql.SaveToFile(mpastatemp +'sql.TXT');
   end;


{
mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODRED '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODCV '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODBCO '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfp,OMITIR_FP);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODFPGTO '+mcinst2);


if trim(MDT1.Text)<>'/  /' then
   Qr_CRec.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_CRec.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
if RGTD.ItemIndex=1 then
   Qr_CRec.SQL.Add(' and CRSTATUS=2')
else if RGTD.ItemIndex=2 then
   Qr_CRec.SQL.Add(' and CRSTATUS<>2');
if Trim(FILTRO.Text)<>'' then
   begin
   Qr_CRec.SQL.Add(' and '+FILTRO.Text);
   end;


if not (CLB_TIPOCOB.Checked[CLB_TIPOCOB.Items.Count-1]) then
   begin
   mcinst:=' and ( ';
   mcinst2:='';
   if CLB_TIPOCOB.Checked[0]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRCODBCO=0) ';
      mcinst:= ' or ';
      end;
   if CLB_TIPOCOB.Checked[1]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRCODBCO<>0) ';
      mcinst:=' or ';
      end;

   if CLB_TIPOCOB.Checked[2]=true then
      begin
      mcinst2:=mcinst2+mcinst+' (CRTCB=2) ';
      mcinst:=' or ';
      end;

   if CLB_TIPOCOB.Checked[3] then
      begin
      mcinst2:=mcinst2+mcinst+' (CRTCB=3) ';
      mcinst:=' or ';
      end;
   if trim(mcinst)='or' then
      mcinst2:=mcinst2+' )';
   Qr_CRec.SQL.Add(mcinst2);

   end;




mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRCODORI '+mcinst2);


mcinst2:=fItenstCheckListBox(0,CLB_TIPODOC);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRDUP '+mcinst2);

mcinst2:=fItenstCheckListBox(0,clb_simples);
if trim(mcinst2)<>'' then
   Qr_CRec.SQL.Add(' and CRTIPCOB '+mcinst2);

if cb_ordem.ItemIndex=0 then
   Qr_CRec.SQL.Add(' order by NOMGRU, CRDTVCTO, CRAZAO')
else if CB_ORDEM.ItemIndex=1 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRDTEMIS, CRNUMERO')
else if CB_ORDEM.ItemIndex=2 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRAZAO, CRNUMERO')
else if CB_ORDEM.ItemIndex=3 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRVALOR')
else if CB_ORDEM.ItemIndex=4 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRVALOR DESC')
else if CB_ORDEM.ItemIndex=5 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRDTBX,CRAZAO')
else if CB_ORDEM.ItemIndex=6 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRDTPAG,CRAZAO')
else if CB_ORDEM.ItemIndex=7 then
   Qr_CRec.SQL.Add(' order by NOMGRU,VCODVEN,CRDTVCTO,CRAZAO')
else if CB_ORDEM.ItemIndex=8 then
   Qr_CRec.SQL.Add(' order by NOMGRU,CRCODEMP,CRDTEMIS,CRAZAO')
else if CB_ORDEM.ItemIndex=9 then
  Qr_CRec.SQL.Add(' order by NOMGRU,CRCODEMP,CRDTVCTO,CRAZAO');
try
   Qr_CRec.Open
except
   Qr_CRec.SQL.SaveToFile(mpastatemp +'sql2.txt');
   end;
}

end;

procedure TFrm_RelComis_Rec.bbSalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin

fDeletaPadroes(codusr,'_FIN_RELCOMIS_REC','');
fGravaPadroes(codusr,'CB_TPP'        ,'itemindex' ,'_FIN_RELCOMIS_REC',IntTostr(cb_tpp.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'      ,'itemindex' ,'_FIN_RELCOMIS_REC',IntTostr(cb_ordem.ItemIndex));
mcinst2:='';
for x:=0 to CLB_TIPODOC.Items.Count-1 do
   begin
   if CLB_TIPODOC.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPODOC'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);


mcinst2:='';
for x:=0 to CLB_TIPOCOB.Items.Count-1 do
   begin
   if CLB_TIPOCOB.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPOCOB'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);
mcinst2:='';
for x:=0 to clb_simples.Items.Count-1 do
   begin
   if clb_simples.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_SIMPLES'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);

mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_FIN_RELCOB',mcinst2);

fmensagem('Gravado!',0,['0'],0);

end;

function TFrm_RelComis_Rec.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
x: Integer;
begin
{
if flfilpad(codusr,'_FIN_RELCOB','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','FILTRO',[]) then
      RG_TIPOREL.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIREC',[]) then
      CB_EMIREC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true'
   else
      CB_EMIREC.Checked:=false;
   end;

mform:='_RCREC';
DM4.Tb_FilPad2.First;
if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'FILTRO']),[]) then
   FILTRO.Text:=DM4.Tb_FilPad2FPVALOR.Value;

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_ORDEM']),[]) then
   CB_ORDEM.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);


if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'RGTD']),[]) then
   RGTD.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,mform,'CB_TPP']),[]) then
   cb_tpp.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);


if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_TIPODOC']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
         begin
         CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPODOC.Items.Count-1 do
      begin
      CLB_TIPODOC.Checked[x]:=True;
      end;
   CLB_TIPODOC.Checked[6]:=false;
   end;


if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_TIPOCOB']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
         begin
         CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPOCOB.Items.Count-1 do
      begin
      CLB_TIPOCOB.Checked[x]:=True;
      end;
   end;

if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RCREC','CLB_SIMPLES']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
      begin
      if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
         begin
         clb_simples.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      clb_simples.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to clb_simples.Items.Count-1 do
      begin
      clb_simples.Checked[x]:=True;
      end;
   end;
   }
result:=True;
end;

procedure TFrm_RelComis_Rec.FormKeyDown(Sender: TObject; var Key: Word;
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
if pTcAtalho_ce<>0 then
   begin
   if (Shift=pSfAtalho_ce) and (pTcAtalho_ce=key) then
      begin
{      if ce_qtdemp<2 then
         begin
         lbl_cheio.Visible:=true;
         end
      else
         begin
         lbl_cheio.Visible:=false;
         end;}
      end;
   end;
end;

procedure TFrm_RelComis_Rec.CODCLIExit(Sender: TObject);
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
{   if lbx_codcli.Items.Count>1 then
      bbSitCli.Enabled:=False
   else
      bbSitCli.Enabled:=true;
}   end;
if trim(MDT1.Text)<>'/  /' then
   begin
   if StrtoDate(MDT1.Text)=date-7 then
      MDT1.Text:='/  /';
   end;

end;

procedure TFrm_RelComis_Rec.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelComis_Rec.CODIGOExit(Sender: TObject);
begin
CODIGO.Text:=fdeixanum2(CODIGO.Text);
if Trim(CODIGO.Text)<>'' then
   begin
   if cb_ordem.ItemIndex=0 then
      begin
      if (log_codven>0) then
        begin
        CODIGO.Text:=FloatToStr(log_codven);
        flcadven(1,0,CODIGO.Text);
        if DM1.Tb_Ven.Eof then
          NOMVEN.Text:=DM1.Tb_VenVNOME.AsString;
        CODIGO.Enabled:=False;
        end
      else
        begin
        if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODIGO.Text)) then
           begin
           fmensagem('Vendedor não cadastrado!',0,['0'],0);
           CODIGO.SetFocus;
           end
         else
           begin
           NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
           end
        end;
      end
   else if cb_ordem.ItemIndex=2 then
      begin
      if not flqr1('SNOME','S','CADSUP','N','SCODVEN',Trim(CODIGO.Text)) then
         begin
         fmensagem('Supervisor não cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         end
      else
         begin
         NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
         end
      end
   else if cb_ordem.ItemIndex=3 then
      begin
      if not flqr1('NOMUSR','','CADUSR','N','CODUSR',Trim(CODIGO.Text)) then
         begin
         fmensagem('Usuãrio / Televendas não cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         end
      else
         begin
         NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
         end
      end
   else if cb_ordem.ItemIndex=3 then
      begin
      if not flqr1('CARAZAO','CA','CADASSE','N','CACODASS',Trim(CODIGO.Text)) then
         begin
         fmensagem('Assessor não cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         end
      else
         begin
         NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   end;

end;

procedure TFrm_RelComis_Rec.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if cb_ordem.ItemIndex=0 then
      begin
      CODIGO.Text:=fChamaVen(0,'frm_RelComis_Rec',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else if cb_ordem.ItemIndex=1 then
      begin
      CODIGO.Text:=fChamaUsr(0,'frm_ReComis_Rec',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else if cb_ordem.ItemIndex=2 then
      begin
      CODIGO.Text:=fChamaSup(0,'frm_RelComis_Rec',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end
   else if cb_ordem.ItemIndex=3 then
      begin
      CODIGO.Text:=fChamaAssessor(0,'frm_RelComis_Rec',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(Self);
      key:=#0;
      end;
   end



end;

procedure TFrm_RelComis_Rec.CODBCOExit(Sender: TObject);
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

procedure TFrm_RelComis_Rec.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RelComis_Rec',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RelComis_Rec.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   begin
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
   end;
end;

procedure TFrm_RelComis_Rec.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_RelComis_Rec.CLB_TIPODOCClick(Sender: TObject);
begin
CLB_TIPODOC:=Valida_CheckList(CLB_TIPODOC);

end;

procedure TFrm_RelComis_Rec.CLB_TIPOCOBClick(Sender: TObject);
begin
CLB_TIPOCOB:=Valida_CheckList(CLB_TIPOCOB);

end;

procedure TFrm_RelComis_Rec.clb_simplesClick(Sender: TObject);
begin
clb_simples:=Valida_CheckList(clb_simples);

end;

procedure TFrm_RelComis_Rec.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_RelComis_Rec.DBGrid1DblClick(Sender: TObject);
var
mant_codemp: Integer;
begin
end;



procedure TFrm_RelComis_Rec.MDT2Exit(Sender: TObject);
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

procedure TFrm_RelComis_Rec.cb_ordemClick(Sender: TObject);
begin
if cb_ordem.ItemIndex=0 then
   lbl_nome.Caption:='Vendedor:'
else if cb_ordem.ItemIndex=1 then
   lbl_nome.Caption:='Supervisor:'
else if cb_ordem.ItemIndex=2 then
   lbl_nome.Caption:='Televendas:'
else if cb_ordem.ItemIndex=3 then
   lbl_nome.Caption:='Assessor:'

end;

procedure TFrm_RelComis_Rec.imp_resumido;

begin

{
!Chave Pedi!Dt.Emiss!Nome do Sacado                       !Tot.Pedido!Imp./Frete!Pr.s/Comis!Base Comis!Vlr Comis.!comis.tele!Comis.Liq.!
+----------+--------+-------------------------------------+----------+----------+----------+----------+----------+----------+----------+
!1234567/01!10-09-02!1234567890123456789012345678901234567!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!

!Chave Pedi!Dt.Emiss!Nome do Sacado                       !Tot.Pedido!Imp./Frete!Pr.s/Comis!Base Comis!Vlr Comis.!comis.tele!Comis.Liq.!
+----------+--------+-------------------------------------+----------+----------+----------+----------+----------+----------+----------+
!1234567/01!10-09-02!1234567890123456789012345678901234567!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!zzz.zz9,99!
}
Qr_CL02.First;
if Qr_CL02.Eof then
   begin
   fmensagem('não há nada a ser impresso!',0,['0'],0);
   exit;
   end;
mtip_ant:=-1;
testeform := TFrm_RelComis_Rec(FindGlobalComponent('form_impres_relcomis_rec'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_relcomis_rec);

form_impres_relcomis_rec.fimpresajustaimp(3,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
{
form_impres_relcomis_rec.RDPrint1.FonteTamanhoPadrao:=S10cpp;
form_impres_relcomis_rec.RDPrint1.TamanhoQteColunas:=136;
form_impres_relcomis_rec.RDPrint1.TamanhoQteLinhas :=66;
form_impres_relcomis_rec.RDPrint1.TamanhoQteLPP  :=Seis;
//form_impres_relcomis_rec.RDPrint1.OpcoesPreview.Preview:=False;
form_impres_relcomis_rec.RDPrint1.SetPrinterbyName(impressora_padrao(0));
form_impres_relcomis_rec.RDPrint1.Abrir;
}
form_impres_relcomis_rec.mlin:=0;
form_impres_relcomis_rec.mpag:=0;

mtd_valdoc:=0;
mtd_valrec:=0;
mtd_basec :=0;
mtd_valcom:=0;
mtd_valrec:=0;
mtd_valtlv:=0;

mtg_valdoc:=0;
mtg_valrec:=0;
mtg_basec :=0;
mtg_valcom:=0;
mtg_valrec:=0;
mtg_valtlv:=0;


mtEx_valdoc:=0;
mtEx_valrec:=0;
mtEx_basec :=0;
mtEx_valcom:=0;
mtEx_valtlv:=0;

while not Qr_CL02.Eof do
   begin
   if form_impres_relcomis_rec.mlin=0 then
      begin
      fImpResumido_Cab(0);

      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      if Qr_CL02CL2DUP.AsInteger>20 then
         form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger-20]+' - EXTORNO',mneg)
      else
         form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger],mneg);

      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'|Pedido|  Titulo |Nome do Sacado                      |Dt.Emis.|Dt.Baixa|Valor Total| Valor Pago|Vlr Liquido|Valor Comis|%Comis|Lote Bx|',mreduz);
      end;
{
+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+------+',mreduz);
|Pedido|Dt .Emiss|Nome do Sacado                      |Dt.Emis.|Dt.Baixa|Valor Total| Valor Pago|Vlr Liquido|Valor Comis|%Comis|Lote Bx|
|123456|123456/a |123459-12345678901234567890123456789|25/06/07|30/06/07|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|123.12|1234567|

+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+------+',mreduz);
|Pedido|Dt.Emiss |Nome do Sacado                      |Dt.Emis.|Dt.Baixa|Valor Total| Valor Pago|Vlr Liquido|Valor Comis|%Comis|Lote Bx|
|123456|123456/a |123459-12345678901234567890123456789|25/06/07|30/06/07|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|zzzz.zz9,99|123.12|1234567|
}
   mbasec:=Qr_CL02CL2VALREC.Value
          -Qr_CL02CL2VALICMSR.Value
          -Qr_CL02CL2VALFRE.Value
          -Qr_CL02CL2SEMCOM.Value
          -Qr_CL02CL2VALACRE.Value;
   mvcomv:=Qr_CL02valcom.Value;

   if (DM1.Tb_PargerPDEDVD.Value=1) and (cb_ordem.ItemIndex=5) then
      mvcomt:= Qr_CL02comtlv.Value
   else
      mvcomt:=0;
   mvcoml:=mvcomv-mvcomt;


   mtd_valdoc:=mtd_valdoc+Qr_CL02CL2VALDOC.Value;
//   mtd_valrec:=mtd_valrec+Qr_CL02CL2VALREC.Value;
   mtd_basec :=mtd_basec +mbasec;
   mtd_valcom:=mtd_valcom+Qr_CL02valcom.Value;
   mtd_valrec:=mtd_valrec+Qr_CL02CL2VALREC.Value;
   mtd_valtlv:=mtd_valtlv+Qr_CL02CL2VALCTL.Value;


   if (Qr_CL02valcom.Value<>0) and (mbasec<>0) then
      mpcomis:=(Qr_CL02valcom.Value*100)/mbasec
   else
      mpcomis:=0;
   if (Qr_CL02CL2DUP.AsInteger>20) OR
      (Qr_CL02CL2DUP.AsInteger=5) then
      begin
      mtEx_valdoc:=mtEx_valdoc+Qr_CL02CL2VALDOC.Value;
//      mtEx_valrec:=mtEx_valrec+Qr_CL02CL2VALREC.Value;
      mtEx_basec :=mtEx_basec +mbasec;
      mtEx_valcom:=mtEx_valcom+Qr_CL02valcom.Value;
      mtEx_valrec:=mtEx_valrec+Qr_CL02CL2VALREC.Value;
      mtEx_valtlv:=mtEx_valtlv+Qr_CL02comtlv.Value;
      end
   else
      begin
      mtg_valdoc:=mtg_valdoc+Qr_CL02CL2VALDOC.Value;
//      mtg_valrec:=mtg_valrec+Qr_CL02CL2VALREC.Value;
      mtg_basec :=mtg_basec +mbasec;
      mtg_valcom:=mtg_valcom+Qr_CL02valcom.Value;
      mtg_valrec:=mtg_valrec+Qr_CL02CL2VALREC.Value;
      mtg_valtlv:=mtg_valtlv+Qr_CL02comtlv.Value;
      end;


   form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
   flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_CL02CL2CODCLI.AsString);

   form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'|'+insere(FormatFloat('000000',Qr_CL02CL2CHAVEP.Value),' ',06)+'|'
                                       +insere(FormatFloat('000000',Qr_CL02CL2NUMERO.Value),' ',06)+'/'
                                       +insere2(Qr_CL02CL2DESD.Value,' ',2)+'|'
                                       +insere(FormatFloat('000000',Qr_CL02CL2CODCLI.Value),'0',06)+'-'
                                       +insere2(DM1.Query1.Fields[0].AsString,' ',29)+'|'
                                       +FormatDateTime(fdt3,Qr_CL02CL2DTEMIS.Value)+'|'
                                       +insere(Iif(cb_listarpor.ItemIndex = 0,'',FormatDateTime(fdt3,Qr_CL02CL2DTBX.Value)),' ',08)+'|'
                                       +insere(FormatFloat(mcasas,Qr_CL02CL2VALDOC.Value),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,Qr_CL02CL2VALREC.Value),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mbasec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,Qr_CL02valcom.Value),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mpcomis),' ',06)+'|'
                                       +insere(Qr_CL02CL2LOTE_BX.AsString,'0',07)+'|',mreduz);


   Qr_CL02.Next;


   if Qr_CL02.Eof then
      begin
      if form_impres_relcomis_rec.mlin>50 then
         begin
         form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
         form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
         form_impres_relcomis_rec.RDPrint1.Novapagina;
         fImpResumido_Cab(0);
         form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
         form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
         end;
      if mtd_valdoc<>0 then
         begin
         form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
         form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                       +insere2('Total.','.',36)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valdoc),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valrec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_basec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valcom),' ',11)+'|'
                                       +insere(' ',' ',06)+'|'
                                       +insere(' ',' ',07)+'|',mreduz);
         mtd_valdoc:=0;
         mtd_valrec:=0;
         mtd_basec :=0;
         mtd_valcom:=0;
         mtd_valrec:=0;
         mtd_valtlv:=0;
         form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
         form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'!'+insere(' ',' ',134)+'!',mreduz);
         end;
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                    +insere2('Total dos Creditos.','.',36)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valdoc),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valrec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_basec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valcom),' ',11)+'|'
                                    +insere(' ',' ',06)+'|'
                                    +insere(' ',' ',07)+'|',mreduz);
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                    +insere2('Total dos Extornos.','.',36)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere(FormatFloat(mcasas,mtEx_valdoc),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtEx_valrec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtEx_basec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtEx_valcom),' ',11)+'|'
                                    +insere(' ',' ',06)+'|'
                                    +insere(' ',' ',07)+'|',mreduz);
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                    +insere2('Total Liquido.','.',36)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere2(' ',' ',08)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valdoc-mtEx_valdoc ),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_valrec-mtEx_valrec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_basec-mtEx_basec),' ',11)+'|'
                                    +insere(FormatFloat(mcasas,mtg_Valcom-mtEx_valcom),' ',11)+'|'
                                    +insere(' ',' ',06)+'|'
                                    +insere(' ',' ',07)+'|',mreduz);

      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);

      end
   else if mtip_ant<>Qr_CL02CL2DUP.Asinteger then
      begin
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'|'+insere(' ',' ',06)+'|'+insere2(' ',' ',09)+'|'
                                       +insere2('Total.','.',36)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere2(' ',' ',08)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valdoc),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valrec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_basec),' ',11)+'|'
                                       +insere(FormatFloat(mcasas,mtd_valcom),' ',11)+'|'
                                       +insere(' ',' ',06)+'|'
                                       +insere(' ',' ',07)+'|',mreduz);
      mtd_valdoc:=0;
      mtd_valrec:=0;
      mtd_basec :=0;
      mtd_valcom:=0;
      mtd_valrec:=0;
      mtd_valtlv:=0;
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      mtip_ant:=Qr_CL02CL2DUP.AsInteger;

      if form_impres_relcomis_rec.mlin<58 then
         begin
         if Qr_CL02CL2DUP.AsInteger>20 then
            form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger-20]+' - EXTORNO',mneg)
         else
            form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,'Documentos: '+ptpdoc[Qr_CL02CL2DUP.asinteger],mneg);
         form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
         form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
         end
      else
         begin
         if form_impres_relcomis_rec.mlin<59 then
            form_impres_relcomis_rec.mlin:=59;
         end;
      end;

   if not (Qr_cl02.EOF) and (form_impres_relcomis_rec.mlin>58) then
      begin
      form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
      form_impres_relcomis_rec.RDPrint1.ImpF(form_impres_relcomis_rec.mlin,01,'+------+---------+------------------------------------+--------+--------+-----------+-----------+-----------+-----------+------+-------+',mreduz);
      form_impres_relcomis_rec.RDPrint1.Novapagina;
      form_impres_relcomis_rec.mlin:=0;
      end;
   end;
if form_impres_relcomis_rec.RDPrint1.Setup then form_impres_relcomis_rec.RDPrint1.Fechar;
form_impres_relcomis_rec.free;
form_impres_relcomis_rec:=nil;

end;

function TFrm_RelComis_Rec.fImpResumido_Cab(pTipo: Integer): Boolean;
begin
form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.fImprimirCabecalho(80,'Relatorio de duplicatas com Comissao.');
form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;

form_impres_relcomis_rec.RDPrint1.Impf(03,01,'Somente p/Simples Conferencia. '+fperiodo(0,MDT1.Text,MDT2.Text),mneg);
form_impres_relcomis_rec.mlin:=4;
mtip_ant:=Qr_CL02CL2DUP.AsInteger;
form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
if cb_ordem.ItemIndex=0 then
   form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,Centra('Vendedor.: '+Trim(CODIGO.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if cb_ordem.ItemIndex=1 then
   form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,Centra('Supervisor.: '+Trim(CODIGO.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if cb_ordem.ItemIndex=2 then
   form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,Centra('Televendas.: '+Trim(CODIGO.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg)
else if cb_ordem.ItemIndex=3 then
   form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,Centra('Assessor...: '+Trim(CODIGO.Text)+'-'+Trim(NOMVEN.Text),' ',80),mneg);

form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;   
form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,Centra('Listagem por : '+cb_listarpor.Text,' ',80),mneg);
form_impres_relcomis_rec.mlin:=form_impres_relcomis_rec.mlin+1;
form_impres_relcomis_rec.RDPrint1.Impf(form_impres_relcomis_rec.mlin,01,Centra('Pesquisado por : '+CB_TPP.Text,' ',80),mneg);

result:=true;
end;

procedure TFrm_RelComis_Rec.Qr_CL02CalcFields(DataSet: TDataSet);
begin
if (cb_ordem.ItemIndex=0) and (DM1.Tb_PargerPDEDVD.Value=1) then
   Qr_CL02comtlv.Value:=Qr_CL02CL2VALCTL.Value
else
   Qr_CL02comtlv.Value:=0;

if mpcomis_dig<>0 then
   begin
   mValcom  :=(Qr_CL02CL2VALDOC.AsFloat
                -(Qr_CL02CL2VALICMSR.AsFloat
                +Qr_CL02CL2VALDESC.AsFloat)
                );
   Qr_CL02valcom.value:=Arredonda(mvalcom*mpcomis_dig/100,dm1.Tb_PargerPCASAS.AsInteger);
   end
else if (Qr_CL02CL2DUP.AsInteger>20) or
   (Qr_CL02CL2DUP.AsInteger=1) or
   (Qr_CL02CL2DUP.AsInteger=2) then
   begin

   if Qr_CL02CL2VALCOM.AsFloat=0 then
      begin
      mPMedDesc:=DM4.Tb_Par01PJURM.Value;
      mValcom  :=(((Qr_CL02CL2VALDOC.AsFloat
                    -Qr_CL02CL2VALICMSR.AsFloat)
                    -Qr_CL02CL2VALDESC.AsFloat)*mPMedDesc)/100;
      Qr_CL02valcom.value:=mvalcom;
      end;
   end
else if cb_ordem.itemindex=0 then
   begin
   mPMedDesc:=(Qr_CL02CL2VALCOM.AsFloat*100)/
              (Qr_CL02CL2VALDOC.AsFloat-QR_CL02CL2VALICMSR.AsFloat);
   mValcom  :=(((Qr_CL02CL2VALDOC.AsFloat
                 -Qr_CL02CL2VALICMSR.AsFloat)
                 -Qr_CL02CL2VALDESC.AsFloat)*mPMedDesc)/100;
   Qr_CL02valcom.value:=mvalcom;

   end
else if cb_ordem.itemindex=1 then
   begin

   mPMedDesc:=(Qr_CL02CL2COMSUP.AsFloat*100)/
              (Qr_CL02CL2VALDOC.AsFloat-QR_CL02CL2VALICMSR.AsFloat);
   mValcom  :=(((Qr_CL02CL2VALDOC.AsFloat
                 -Qr_CL02CL2VALICMSR.AsFloat)
                 -Qr_CL02CL2VALDESC.AsFloat)*mPMedDesc)/100;
   Qr_CL02valcom.value:=mvalcom;

   end
else if cb_ordem.itemindex=2 then
   begin
   mPMedDesc:=(Qr_CL02CL2VALCTL.AsFloat*100)/
              (Qr_CL02CL2VALDOC.AsFloat-QR_CL02CL2VALICMSR.AsFloat);
   mValcom  :=(((Qr_CL02CL2VALDOC.AsFloat
                 -Qr_CL02CL2VALICMSR.AsFloat)
                 -Qr_CL02CL2VALDESC.AsFloat)*mPMedDesc)/100;
   Qr_CL02valcom.value:=mvalcom;
   end
else if cb_ordem.itemindex=3 then
   begin
   mPMedDesc:=(Qr_CL02CL2COMASSE.AsFloat*100)/
              (Qr_CL02CL2VALDOC.AsFloat-QR_CL02CL2VALICMSR.AsFloat);
   mValcom  :=(((Qr_CL02CL2VALDOC.AsFloat
                 -Qr_CL02CL2VALICMSR.AsFloat)
                 -Qr_CL02CL2VALDESC.AsFloat)*mPMedDesc)/100;
   Qr_CL02valcom.value:=mvalcom;
   end;
end;

procedure TFrm_RelComis_Rec.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (Qr_CL02CL2DUP.AsInteger=1) or
   (Qr_CL02CL2DUP.AsInteger=2) then
   DBGrid1.Canvas.Font.Color:=clBlue
else if Qr_CL02CL2DUP.AsInteger>19 then
   DBGrid1.Canvas.Font.Color:=clRed
else if Qr_CL02CL2DUP.AsInteger=5 then
   DBGrid1.Canvas.Font.Color:=clPurple
else if Qr_CL02CL2DUP.AsInteger<>0 then
   DBGrid1.Canvas.Font.Color:=clGreen;
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFrm_RelComis_Rec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RelComis_Rec.txt_PCOMIS_DIGExit(Sender: TObject);
begin
txt_PCOMIS_DIG.Text:=FormatFloat(mcasas_pct, VALfLOAT(txt_PCOMIS_DIG.Text));
mpcomis_dig :=ValFloat(txt_PCOMIS_DIG.Text);

end;

procedure TFrm_RelComis_Rec.FormShow(Sender: TObject);
begin
   cb_listarpor.ItemIndex := 2;
end;

procedure TFrm_RelComis_Rec.cb_listarporClick(Sender: TObject);
begin
   if cb_listarpor.ItemIndex < 2 then
      CB_TPP.ItemIndex := 0
   else
      CB_TPP.ItemIndex := 2;
end;

end.

