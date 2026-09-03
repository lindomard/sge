unit S_Mfor01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, db, dbtables, S_DM1, Func, S_Pro,
  Grids, S_DM3, S_Impres,lerarq,S_ConsLot, DBGrids, DBCtrls,S_Agde, Mask, S_MFor01_Cons;
type
  TFrm_MFor01 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    bbImprmir: TBitBtn;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    grade: TLabel;
    numero: TEdit;
    DBGrid1: TDBGrid;
    Tb_Comp: TQuery;
    Tb_Compnommat: TStringField;
    Tb_Compund: TStringField;
    Tb_CompCPCODEMP: TFloatField;
    Tb_CompCPORDEM: TFloatField;
    Tb_CompCPCODPRO: TFloatField;
    Tb_CompCPCODMAT: TFloatField;
    Tb_CompCPQUANT: TFloatField;
    Tb_CompCPPU: TFloatField;
    Tb_CompCPNUMERO: TStringField;
    Tb_CompCPMPNUM: TStringField;
    Tb_CompCPCODPRO_ACAB: TFloatField;
    Tb_CompCPALICMSCRED: TFloatField;
    Tb_CompCPICMSCRED: TFloatField;
    U_Comp: TUpdateSQL;
    Src_Comp: TDataSource;
    Tb_Comptotalliq: TFloatField;
    DBNavigator2: TDBNavigator;
    Tb_Comptotal: TFloatField;
    CB_CUSTOS: TCheckBox;
    bbAtuMatPrim: TBitBtn;
    bbExportar: TBitBtn;
    Tb_CompCPVLRINC: TFloatField;
    Tb_CompCPALIQORI: TFloatField;
    CB_ATUPRO: TCheckBox;
    Tb_CompCPPERCENT: TFloatField;
    Tb_CompCPPERCENT_REST: TFloatField;
    Tb_CompCPTIPO: TFloatField;
    Tb_CompCPQTD_PAD: TFloatField;
    Label6: TLabel;
    Label7: TLabel;
    MPESOL: TEdit;
    MTEMPO: TMaskEdit;
    CB_ATUACUSSEL: TCheckBox;
    pnl_master: TPanel;
    gb_master: TGroupBox;
    bb_salvamaster: TBitBtn;
    cb_pcoven: TCheckBox;
    Label8: TLabel;
    edt_aliq: TEdit;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    QTDU: TEdit;
    QTDIT: TEdit;
    TOTAL: TEdit;
    TOTICMSCRED: TEdit;
    pnl_ccus: TPanel;
    gb_Custo: TGroupBox;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    GroupBox1: TGroupBox;
    StaticText1: TStaticText;
    PCOCUS: TStaticText;
    PCOVDA01: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    PCOVDA02: TStaticText;
    StaticText3: TStaticText;
    PCOVDA03: TStaticText;
    StaticText7: TStaticText;
    APCO02: TEdit;
    APCO03: TEdit;
    StaticText8: TStaticText;
    bbAtuaPro: TBitBtn;
    bbGravar: TBitBtn;
    StaticText9: TStaticText;
    PCOMIN: TEdit;
    bbImpComp: TBitBtn;
    bbSavar_Padroes: TBitBtn;
    StaticText10: TStaticText;
    INCPMIN: TEdit;
    GroupBox2: TGroupBox;
    CB_ATUP01: TCheckBox;
    CB_ATUP02: TCheckBox;
    CB_ATUP03: TCheckBox;
    StaticText11: TStaticText;
    cb_vcustos: TCheckBox;
    procedure bbImprmirClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure mEdit_CustoEnter(Sender: TObject);
    procedure mEdit_CustoExit(Sender: TObject);
    procedure mEdit_VendaEnter(Sender: TObject);
    procedure mEdit_VendaExit(Sender: TObject);
    procedure mEdit_CustoKeyPress(Sender: TObject; var Key: Char);
    procedure APCO02Exit(Sender: TObject);
    procedure APCO03Exit(Sender: TObject);
    procedure bbAtuaProClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbSavar_PadroesClick(Sender: TObject);
    procedure bbImpCompClick(Sender: TObject);
    procedure PCOMINExit(Sender: TObject);
    procedure INCPMINExit(Sender: TObject);
    procedure numeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_CompAfterInsert(DataSet: TDataSet);
    procedure Tb_CompAfterEdit(DataSet: TDataSet);
    procedure Tb_CompBeforeDelete(DataSet: TDataSet);
    procedure Tb_CompCalcFields(DataSet: TDataSet);
    procedure Tb_CompAfterCancel(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure Tb_CompBeforePost(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure numeroExit(Sender: TObject);
    procedure CODPROEnter(Sender: TObject);
    procedure numeroEnter(Sender: TObject);
    procedure bbAtuMatPrimClick(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
    procedure MTEMPOExit(Sender: TObject);
    procedure MPESOLExit(Sender: TObject);
    procedure CB_ATUACUSSELClick(Sender: TObject);
    procedure bb_salvamasterClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_aliqExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cb_vcustosClick(Sender: TObject);

  private
  function FatualizaCus(pCodpro: String):Boolean;
  function fAtualizaPadrao(pTipo: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
    form_impres_Mfor01: TFrm_Impres;
    form_mFor01_Cons_Mfor01: TFrm_MFor01_Cons;
    Consultando: Boolean;
    Function fPcusImprime(ptipo: Integer; pCodpro,pTotal,pQtdGrml: Real;pGrade: String): Boolean;
    Function fPcusCab_Cus(ptipo: Integer;pCodpro,pCodFormula: Real): Boolean;
    Function fPcusCab(ptipo: Integer;pCodpro: Real): Boolean;
    function fcalccus(ptipo: Integer):Boolean;

    function fAtualizarFormulas(pTipo: Integer; cb_pcoven: boolean): Boolean;

  end;




var
  Frm_MFor01: TFrm_MFor01;
  mqtd : Integer;
  moper : Integer=0;
  mAliqDeb: Real=17;
  mqtdGrml: Real;
  mEdit_Custo   : array of TEdit;
  mEdit_Venda   : array of TEdit;

  mStatic_cus   : array of TStaticText;
  mStatic_Dcus   : array of TStaticText;
  mStatic_Descr : array of TStaticText;

  mStatic_Dvda : array of TStaticText;
  mStatic_vda : array of TStaticText;
  mStatic_Vlr_Custo : array of TStaticText;
  mStatic_Vlr_Venda : array of TStaticText;
  mEditAtivo: Integer;
  mqtdlinGrid: Integer=5;
  mOrdem: Integer=0;
  mQuant_ant   : Real;
  mtotliq_ant     : Real;
  mIcmsCred_Ant: Real;
  mAtualizando: Boolean=False;

implementation

uses S_DM4, func_excecoes, Math,s_lerarq_geral, S_Pcus;

var
mform_pcus: tFrm_pcus;

{$R *.dfm}

procedure TFrm_MFor01.bbImprmirClick(Sender: TObject);
begin

fPcusImprime(3,ValFloat(CODPRO.Text),ValFloat(TOTAL.Text),mqtdGrml, Trim(numero.Text) )
end;

procedure TFrm_MFor01.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
//   DM1.Tb_Pro.Filter:='PDNIVEL=0 OR PDNIVEL=3';
//   DM1.Tb_Pro.Filtered:=True;
   CODPRO.Text:=fChamaPro(0,'Frm_Tab_Aj',key);
//   if fsonumero(CODPRO.Text)>0 then
//      MQUANT.SetFocus;
   key:=#0;
   DM1.Tb_pro.Filter:='';
   DM1.Tb_pro.Filtered:=False;
   end;
end;

procedure TFrm_MFor01.FormCreate(Sender: TObject);
var
mQtdEdit: Integer;
mdim: Integer;
mtop: Integer;
mtopmax: Integer;
mleft: Integer;
mSegCol,mEspaco: Integer;
mQtdMaxCol: Integer;
mTam_DCus: Integer;
mTamEdit_Custo: Integer;
mTamStatic_Cus: Integer;
mTamStatic_Vlr_Custo: Integer;
begin
Application.CreateForm(TFrm_Pcus, mform_pcus);

Consultando:=false;
QTDU.Text       :='';
QTDIT.Text      :='';
TOTICMSCRED.Text:='';
TOTAL.Text      :='';

if flfilpad(-1,'_MFOR01','CB_ATUACUSSEL') then
   CB_ATUACUSSEL.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_MMFOR01','CB_PCOVEN') then
   cb_pcoven.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_MMFOR01','CB_VCUSTOS') then
   cb_vcustos.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(0,'_MMFOR01','EDT_ALIQ') then
   edt_aliq.Text    :=FormatFloat(mcasas_pct,  valfloat(DM4.Tb_FilPad2FPVALOR.AsString));
mAliqDeb:=ValFloat(edt_aliq.Text);

if codusr=1111 then
   CB_ATUACUSSEL.Visible:=true
else
   CB_ATUACUSSEL.Visible:=false;


mEspaco:=1;
if Valint(copy(mpseg,4,2))=02 then
   begin
   Grade.Visible :=True;
   numero.Visible:=True;
   NOMPRO.Left   :=352;
   NOMPRO.Width  :=250;
   end
else
   begin
   DBGrid1.Columns[01].Visible:=false;
   end;

if DM1.Tb_PargerPMANPCUSFOR.AsInteger<>1 then
   begin
   gb_Custo.Visible:=false;
   mqtdlinGrid:=DBGrid1.Height div 15;
   mqtdlingrid:=mqtdlingrid-1;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCOMP set CPICMSCRED=ROUND((CPICMSCRED*CPALICMSCRED/100),'+DM1.Tb_PargerPCASIND.AsString+')');
DM1.Query1.sql.Add(' WHERE '
                  +' CPICMSCRED<>ROUND((CPICMSCRED*CPALICMSCRED/100),'+DM1.Tb_PargerPCASIND.AsString+')');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;

Tb_CompCPQUANT.DisplayFormat     :=mcasind;
Tb_CompCPPU.DisplayFormat        :=mcaspuind;
Tb_CompCPALICMSCRED.DisplayFormat:=mcasas;
Tb_CompCPICMSCRED.DisplayFormat  :=mcaspuind;
Tb_Comptotalliq.DisplayFormat    :=mcasas;
Tb_Comptotal.DisplayFormat       :=mcasas;

mcasasCus :=mcaspuind;
   
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select PCCODIGO, '
                  +'       PCNOME,'
                  +'       PCAPLS,'
                  +'       PCFATOR,'
                  +'       PCOPCIO from CADPCUS order by PCOPCIO,PCNOME');
DM1.Query4.Open;
if DM1.Query4.Eof then
   begin
   gb_Custo.Visible:=false;
   mqtdlinGrid:=DBGrid1.Height div 15;
   mqtdlingrid:=mqtdlingrid-1;
   exit;
   end;
mQtdEdit:=0;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   DM1.Query4.Next;
   end;
mdim:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger=0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mdim:=mdim+1;
   DM1.Query4.Next;
   end;
if mQtdEdit>0 then
   begin
   mQtdMaxCol:=mQtdEdit div 2;
   if (mQtdMaxCol*2) < mQtdEdit then
      mQtdMaxCol:=mQtdMaxCol+1;
   end;
if mQtdMaxCol<mdim then
   mQtdMaxCol:=mdim;

mQtdEdit      :=0;
mtop          :=33;
mSegCol       :=0;
mTam_DCus     :=95;
mTamEdit_Custo:=43;
mTamStatic_Cus:=11;
mTamStatic_Vlr_Custo:=94;
mtopmax:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   if (mQtdEdit>mQtdMaxCol) and (mSegCol=0) then
      begin
      mSegCol:=258;
      mtop   :=33;
      end;
   SetLength(mstatic_Cus,mQTdEdit+2);
   SetLength(mStatic_Vlr_Custo,mQTdEdit+2);
   SetLength(mEdit_Custo,mQTdEdit+2);
   SetLength(mstatic_DCus,mQtdEdit+2);
   mStatic_DCus[mQtdEdit]            := TStaticText.Create(Frm_MFor01);
   mStatic_DCus[mQtdEdit].Parent     := gb_Custo;
   mStatic_DCus[mQtdEdit].AutoSize   := False;

   mleft:=4;
   mStatic_DCus[mQtdEdit].SetBounds(mSegCol+mleft,mtop,mTam_DCus,17);
   mleft:=mleft+mTam_DCus+mEspaco;
   mStatic_DCus[mQtdEdit].Name       :='StNomeCus_'+IntToStr(mQtdEdit);
   mStatic_DCus[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_DCus[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PCFATOR').AsInteger=1 then
      mStatic_DCus[mQtdEdit].Caption :='(-) - '+DM1.Query4.fieldbyName('PCNOME').AsString
   else
      mStatic_DCus[mQtdEdit].Caption :='(+) - '+DM1.Query4.fieldbyName('PCNOME').AsString;

   mEdit_Custo[mQtdEdit]        := TEdit.Create(Frm_MFor01);
   mEdit_Custo[mQtdEdit].Parent := gb_Custo;
   mEdit_Custo[mQtdEdit].SetBounds(msegCol+mleft,mtop,mTamEdit_Custo,19);
   mleft:=mleft+mTamEdit_Custo+mEspaco;
   mEdit_Custo[mQtdEdit].Name   :='PERCCus_'+IntToStr(mQtdEdit);
   mEdit_Custo[mQtdEdit].Ctl3D  :=false;
   mEdit_Custo[mQtdEdit].Enabled:=true;
   mEdit_Custo[mQtdEdit].TabStop:=true;
   mEdit_Custo[mQtdEdit].ReadOnly:=false;


   mEdit_Custo[mQtdEdit].Text      :='';
   mEdit_Custo[mQtdEdit].OnExit    :=mEdit_CustoExit;
   mEdit_Custo[mQtdEdit].OnEnter   :=mEdit_CustoEnter;
   mEdit_Custo[mQtdEdit].OnKeyPress:=mEdit_CustoKeyPress;


   mStatic_Cus[mQtdEdit]         := TStaticText.Create(Frm_MFor01);
   mStatic_Cus[mQtdEdit].Parent  := gb_Custo;
   mStatic_Cus[mQtdEdit].AutoSize:= False;
   mStatic_Cus[mQtdEdit].SetBounds(msegCol+mleft,mtop,mTamStatic_Cus,17);
   mleft:=mleft+mTamStatic_Cus+mEspaco;
   mStatic_Cus[mQtdEdit].Name       :='St_percCus_'+IntToStr(mQtdEdit);
   mStatic_Cus[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Cus[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Cus[mQtdEdit].Caption    :='%';

   mStatic_Vlr_Custo[mQtdEdit]            := TStaticText.Create(Frm_MFor01);
   mStatic_Vlr_Custo[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Custo[mQtdEdit].Parent     := gb_Custo;
   mStatic_Vlr_Custo[mQtdEdit].SetBounds(msegCol+mleft,mtop,mTamStatic_Vlr_Custo,17);
   mleft:=mleft+mTamStatic_Vlr_Custo+mEspaco;
   mStatic_Vlr_Custo[mQtdEdit].Name       :='StValor_'+DM1.Query4.fieldbyName('PCCODIGO').AsString;
   mStatic_Vlr_Custo[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Vlr_Custo[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Vlr_Custo[mQtdEdit].Caption    :=FormatFloat(mcasccus, 0);
   
   mtop:=mtop+21;
   if mtop>mtopmax then
      mtopmax:=mtop;
   DM1.Query4.Next;
   end;

mtop:=33;
mQtdEdit:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger=0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   SetLength(mstatic_Vda,mQTdEdit+2);
   SetLength(mstatic_DVda,mQTdEdit+2);
   SetLength(mStatic_Vlr_Venda,mQTdEdit+2);
   SetLength(mEdit_Venda,mQTdEdit+2);

   mStatic_DVda[mQtdEdit]         := TStaticText.Create(Frm_MFor01);
   mStatic_DVda[mQtdEdit].Parent  := gb_Custo;
   mStatic_DVda[mQtdEdit].AutoSize:= False;
   mleft:=519;
   mStatic_DVda[mQtdEdit].SetBounds(mleft,mtop,mTam_DCus,17);
   mleft:=mleft+mTam_DCus+mEspaco;
   mStatic_DVda[mQtdEdit].Name       :='StNomeVda_'+IntToStr(mQtdEdit);
   mStatic_DVda[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_DVda[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PCFATOR').AsInteger=1 then
      mStatic_DVda[mQtdEdit].Caption :='(-) - '+DM1.Query4.fieldbyName('PCNOME').AsString
   else
      mStatic_DVda[mQtdEdit].Caption :='(+) - '+DM1.Query4.fieldbyName('PCNOME').AsString;

   mEdit_Venda[mQtdEdit]        := TEdit.Create(Frm_MFor01);
   mEdit_Venda[mQtdEdit].Parent := gb_Custo;
   mEdit_Venda[mQtdEdit].SetBounds(mleft,mtop,mTamEdit_Custo,19);
   mleft:=mleft+mTamEdit_Custo+mEspaco;
   mEdit_Venda[mQtdEdit].Name      :='PERCVda_'+IntToStr(mQtdEdit);
   mEdit_Venda[mQtdEdit].Ctl3D     :=false;
   mEdit_Venda[mQtdEdit].Text      :='';
   mEdit_Venda[mQtdEdit].OnExit    :=mEdit_VendaExit;
   mEdit_Venda[mQtdEdit].OnEnter   :=mEdit_VendaEnter;
   mEdit_Venda[mQtdEdit].OnKeyPress:=mEdit_CustoKeyPress;



   mStatic_Vda[mQtdEdit]            := TStaticText.Create(Frm_MFor01);
   mStatic_Vda[mQtdEdit].Parent     := gb_Custo;
   mStatic_Vda[mQtdEdit].AutoSize   := False;
   mStatic_Vda[mQtdEdit].SetBounds(mleft,mtop,mTamStatic_Cus,17);
   mleft:=mleft+mTamStatic_Cus+mEspaco;
   mStatic_Vda[mQtdEdit].Name       :='StpercVda_'+IntToStr(mQtdEdit);
   mStatic_Vda[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Vda[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Vda[mQtdEdit].Caption    :='%';

   mStatic_Vlr_Venda[mQtdEdit]            := TStaticText.Create(Frm_MFor01);
   mStatic_Vlr_Venda[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Venda[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Venda[mQtdEdit].Parent     := gb_Custo;
   mStatic_Vlr_Venda[mQtdEdit].SetBounds(mleft,mtop,mTamStatic_Vlr_Custo,17);
   mleft:=mleft+mTamStatic_Vlr_Custo+mEspaco;
   mStatic_Vlr_Venda[mQtdEdit].Name       :='StValorVda_'+DM1.Query4.fieldbyName('PCCODIGO').AsString;
   mStatic_Vlr_Venda[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Vlr_Venda[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Vlr_Venda[mQtdEdit].Caption    :=FormatFloat(mcasccus, 0);
   mtop:=mtop+21;
   DM1.Query4.Next;
   end;
if mtop>mtopmax then
   mtopmax:=mtop;
mtopmax:=mtopmax+99;
gb_Custo.Height:=mtopmax;
mqtdlinGrid:=DBGrid1.Height div 15;
mqtdlingrid:=mqtdlingrid-1;


end;

procedure TFrm_MFor01.bbAtualizarClick(Sender: TObject);
begin

if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   FMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;
if Trim(numero.Text)<>'' then
   begin
   if not flcadlgc(0,1,0,CODPRO.Text,numero.Text,'') then
      begin
      FMensagem('Grade Não cadastrada!',0,['0'],0);
      numero.SetFocus;
      exit;
      end;
   end;
if CB_ATUACUSSEL.Checked then
   fAtualizarPrecosFormula(fSonumero(CODPRO.Text),0);


Tb_Comp.Close;
Tb_Comp.SQL.Clear;
Tb_Comp.SQL.Add('Select * from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and '));
if trim(CODPRO.Text)<>'' then
   Tb_Comp.SQL.Add(' CPCODPRO=0'+CODPRO.Text)
else
   Tb_Comp.SQL.Add(' CPCODPRO>=0');

if trim(numero.Text)<>'' then
   Tb_Comp.SQL.Add(' and CPNUMERO='+chr(39)+numero.Text+chr(39));
Tb_Comp.open;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CPORDEM) as ORDEM, ');
DM1.Query1.SQL.Add('       sum(CPQUANT) as CPQUANT, ');
DM1.Query1.SQL.Add('       sum(CPICMSCRED) as CPICMSCRED, ');
DM1.Query1.SQL.Add('       sum(ROUND((CPQUANT*CPPU),'+DM1.Tb_PargerPCASPUIND.AsString+' )) as CPTOTAL, ');
DM1.Query1.SQL.Add('       count(*)  as QTDREG from CADCOMP where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+InttoStr(codemp)+' and '));
if trim(CODPRO.Text)<>'' then
   DM1.Query1.SQL.Add(' CPCODPRO=0'+CODPRO.Text)
else
   DM1.Query1.SQL.Add(' CPCODPRO>=0');

if trim(numero.Text)<>'' then
   DM1.Query1.SQL.Add(' and CPNUMERO='+chr(39)+numero.Text+chr(39));
DM1.Query1.open;
mordem:=DM1.query1.Fields[0].AsInteger+1;
QTDU.Text       :=FormatFloat(mcasind, DM1.Query1.fieldByName('CPQUANT').AsFloat);
QTDIT.Text      :=FormatFloat('#0', DM1.Query1.fieldByName('QTDREG').AsFloat);
TOTICMSCRED.Text:=FormatFloat(mcaspuind, DM1.Query1.fieldByName('CPICMSCRED').AsFloat);
TOTAL.Text      :=FormatFloat(mcasind, DM1.Query1.fieldByName('CPTOTAL').AsFloat-DM1.Query1.fieldByName('CPICMSCRED').AsFloat);

if gb_Custo.Visible then
   begin
   FatualizaCus(trim(CODPRO.Text));
   bbGravar.Enabled:=true;
   end
else
   bbGravar.Enabled:=false;
DBGrid1.SelectedField:=Tb_CompCPCODPRO;
Tb_Comp.Append;
DBGrid1.SetFocus;
end;


procedure TFrm_MFor01.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MFor01.mEdit_CustoEnter(Sender: TObject);
var
x: Integer;
begin
for x:=1 to length(Screen.ActiveControl.Name) do
   begin
   if screen.ActiveControl.Name[x]='_' then
      begin
      mEditAtivo:=ValInt(copy(Screen.ActiveControl.Name,
                         x+1,
                         length(screen.ActiveControl.Name)-x)
                         );
      break;
      end;
   end;

end;

procedure TFrm_MFor01.mEdit_VendaEnter(Sender: TObject);
var
x: Integer;
begin
for x:=1 to length(Screen.ActiveControl.Name) do
   begin
   if screen.ActiveControl.Name[x]='_' then
      begin
      mEditAtivo:=ValInt(copy(Screen.ActiveControl.Name,
                         x+1,
                         length(screen.ActiveControl.Name)-x)
                         );
      break;
      end;
   end;
end;


procedure TFrm_MFor01.mEdit_CustoExit(Sender: TObject);
begin
mEdit_Custo[mEditAtivo].Text:=Formatfloat(mcasas, ValFloat(MEdit_custo[mEditAtivo].Text));
fcalccus(0);
end;

procedure TFrm_MFor01.mEdit_VendaExit(Sender: TObject);
begin

mEdit_Venda[mEditAtivo].Text:=Formatfloat(mcasas, ValFloat(MEdit_Venda[mEditAtivo].Text));
fcalccus(0);


end;

{ antiga
function fcalccus(ptipo: Integer):Boolean;
var
mvl: Real;
x: Integer;
mpmin,mincpmin,mvlpmin,mtotal,mpcompra: Real;
begin
mpmin   :=ValFloat(Frm_MFor01.PCOMIN.Text);
mincpmin:=0;
mvlpmin :=0;
mpcompra:=ValFloat(Frm_MFor01.TOTAL.Text);
mtotal  :=mpcompra;
for x:=1 to High(medit_custo) do
   begin
   if valfloat(mEdit_Custo[x].Text)<=0 then
      begin
      mStatic_Vlr_Custo[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;
   mvlpmin:=mpmin*valfloat(mEdit_custo[x].Text)/100;
   mvlpmin:=Arredonda(mvlpmin,mcasqtdccus);

   mvl:=mpcompra*valfloat(mEdit_custo[x].Text)/100;
   mvl:=Arredonda(mvl,mcasqtdccus);
   mStatic_Vlr_Custo[x].Caption:=FormatFloat(mcasccus,mvl);
   if copy(trim(MStatic_DCus[x].Caption),1,3)='(-)' then
      begin
      mincpmin:=mincpmin-mvlpmin;
      mtotal:=mtotal-mvl;
      end
   else
      begin
      mincpmin:=mincpmin+mvlpmin;
      mtotal:=mtotal+mvl;
      end;
   end;
if DM1.Tb_ProPDICMSDEB.AsFloat>0 then
   mincpmin:=Arredonda( (mpmin*DM1.Tb_ProPDICMSDEB.Value/100) , 2)
else
   mincpmin:=Arredonda( (mpmin*mAliqDeb/100) , 2);

mTotal:=mTotal+mincpmin;
mtotal:=Arredonda(mtotal,DM1.Tb_PargerPCASPUIND.AsInteger);
Frm_MFor01.PCOCUS.Caption:=FormatFloat(mcaspuind, mtotal);

mpcompra:=ValFloat(Frm_MFor01.PCOCUS.Caption);
//mtotal:=mpcompra;

for x:=1 to High(medit_venda) do
   begin
   if valfloat(mEdit_Venda[x].Text)<=0 then
      begin
      mStatic_Vlr_Venda[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;
   mvl:=mpcompra*valfloat(mEdit_Venda[x].Text)/100;
   mvl:=Arredonda(mvl,mcasqtdccus);
   mStatic_Vlr_Venda[x].Caption:=FormatFloat(mcasccus,mvl);
   if copy(trim(MStatic_DVda[x].Caption),1,3)='(-)' then
      mtotal:=mtotal-mvl
   else
      mtotal:=mtotal+mvl;
   end;


Frm_MFor01.PCOVDA01.Caption:=FormatFloat(mcasaspu, mtotal);
Frm_MFor01.PCOVDA02.Caption:=FormatFloat(mcasaspu, mtotal+(mtotal*ValFloat(Frm_MFor01.APCO02.Text)/100));
Frm_MFor01.PCOVDA03.Caption:=FormatFloat(mcasaspu, mtotal+(mtotal*ValFloat(Frm_MFor01.APCO03.Text)/100));
Frm_MFor01.INCPMIN.Text    :=FormatFloat(mcasaspu, mincpmin);


result:=True;
end;    }

function TFrm_MFor01.fcalccus(ptipo: Integer):Boolean;
var
  mvl: Real;
  mAplicSob,mTipoformula,mTipo,x: Integer;
  mpmin,mincpmin,mvlpmin,mtotal,mpcompra,mpcoenc, mpcompraFinal: Real;
  mFator,mValorAcum, mValorReal: Real;
  mVlrResult: TArrayCusto;
begin
DM1.Tb_Pcus.Close;
DM1.Tb_PCus.SQL.Clear;
DM1.Tb_PCus.SQL.add('Select * from CADPCUS ');
DM1.Tb_PCus.SQL.Add(' order by PCNOME');
DM1.Tb_Pcus.Open;

mpmin   :=ValFloat(Frm_MFor01.PCOMIN.Text);
mincpmin:=0;
mvlpmin :=0;
mpcompra:=ValFloat(Frm_MFor01.TOTAL.Text);
mtotal  :=mpcompra;
mValorAcum:=0;
mValorReal:=0;

mfator:=0;
for x:=1 to High( mform_pcus.medit_compra) do
   begin
   if mform_pcus.mStatic_Compra[x].Caption='%' then
     mFator:=mFator+valfloat(mform_pcus.mEdit_compra[x].Text)
   else
     mValorReal:=mValorReal+valfloat(mform_pcus.mEdit_compra[x].Text);
   end;
if mFator<>0 then
   mFator:=(100-mfator)/100;
for x:=1 to High(mform_pcus.medit_compra) do
   begin
   if valfloat(mform_pcus.mEdit_Compra[x].Text)<=0 then
      begin
      mform_pcus.mStatic_Vlr_Compra[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;
   if DM1.Tb_Pcus.Locate('PCNOME',trim(copy(mform_pcus.MStatic_DCompra[x].Caption,
                       6,length(mform_pcus.mstatic_DCompra[x].Caption)-5)),[]) then
      begin
      mAplicSob   :=DM1.Tb_PcusPCAPLS.AsInteger;
      mTipoformula:=DM1.Tb_PcusPFORMULA.AsInteger;
      mTipo       :=DM1.Tb_PcusPTIPO.AsInteger;
      end
   else
      begin
      mAplicSob   :=0;
      mTipoformula:=0;
      mTipo       :=0;
      end;
   mVlrResult:=fCalcularCusto(mAplicSob,mTipoformula,mTipo,mFator,
               valfloat(mform_pcus.medit_Compra[x].Text),mpCompra,mValorAcum,mpmin,mValorReal);
   mvlpmin:=mvlrResult[1];
   mvl    :=mvlrResult[0];
   if copy(trim(mform_pcus.MStatic_DCompra[x].Caption),1,3)='(-)' then
      begin
      mincpmin:=mincpmin-mvlpmin;
      mValorAcum:=mValorAcum-mvl;
      mtotal:=mtotal-mvl;
      end
   else
      begin
      mincpmin:=mincpmin+mvlpmin;
      mValorAcum:=mValorAcum+mvl;
      mtotal:=mtotal+mvl;
      end;
   mform_pcus.mStatic_Vlr_Compra[x].Caption:=FormatFloat(mcasccus,mvl);
   end;
if valFloat(Frm_MFor01.PCOMIN.Text)=0 then
   mincpmin:=0
else
   mincpmin:=Arredonda( (ValFloat(Frm_MFor01.PCOMIN.Text)*mAliqDeb/100) , mcasqtdccus);
Frm_MFor01.INCPMIN.Text:=FormatFloat(mcasaspu, mincpmin);
mTotal:=mTotal+mincpmin;
mpcompra:=ValFloat(Frm_MFor01.TOTAL.Text);
mValorAcum:=0;
mfator:=0;
mValorReal:=0;
for x:=1 to High(medit_custo) do
   begin
   if mStatic_cus[x].Caption='%' then
     mFator:=mFator+valfloat(mEdit_custo[x].Text)
   else
     mValorReal:=mValorReal+valfloat(mEdit_custo[x].Text);
   end;
if mFator<>0 then
   mFator:=(100-mfator)/100;
for x:=1 to High(medit_custo) do
   begin
   if valfloat(mEdit_Custo[x].Text)<=0 then
      begin
      mStatic_Vlr_Custo[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;
   if DM1.Tb_Pcus.Locate('PCNOME',trim(copy(mStatic_Dcus[x].Caption,
                       6,length(mstatic_Dcus[x].Caption)-5)),[]) then
      begin
      mAplicSob   :=DM1.Tb_PcusPCAPLS.AsInteger;
      mTipoformula:=DM1.Tb_PcusPFORMULA.AsInteger;
      mTipo       :=DM1.Tb_PcusPTIPO.AsInteger;
      end
   else
      begin
      mAplicSob   :=0;
      mTipoformula:=0;
      mTipo       :=0;
      end;
   mVlrResult:=fCalcularCusto(mAplicSob,mTipoformula,mTipo,mFator,
               valfloat(medit_Custo[x].Text),mpCompra,mValorAcum,mpmin,mValorReal);
   mvlpmin:=mvlrResult[1];
   mvl    :=mvlrResult[0];
   if copy(trim(MStatic_Dcus[x].Caption),1,3)='(-)' then
      begin
      mincpmin:=mincpmin-mvlpmin;
      mValorAcum:=mValorAcum-mvl;
      mtotal:=mtotal-mvl;
      end
   else
      begin
      mincpmin:=mincpmin+mvlpmin;
      mValorAcum:=mValorAcum+mvl;
      mtotal:=mtotal+mvl;
      end;
   mStatic_Vlr_Custo[x].Caption:=FormatFloat(mcasccus,mvl);
   end;
Frm_MFor01.PCOCUS.Caption:=FormatFloat(mcasasCus, mtotal);
mpcompra:=ValFloat(Frm_MFor01.PCOCUS.Caption);
mValorAcum:=0;
mValorReal:=0;
mfator:=0;
for x:=1 to High(medit_venda) do
   begin
   if mStatic_vda[x].Caption='%' then
     mFator:=mFator+valfloat(mEdit_venda[x].Text)
   else
     mValorReal:=mValorReal+valfloat(mEdit_venda[x].Text);
   end;
if mFator<>0 then
   mFator:=(100-mfator)/100;
//mtotal:=mpcompra;
for x:=1 to High(medit_venda) do
   begin
   if valfloat(mEdit_Venda[x].Text)<=0 then
      begin
      mStatic_Vlr_Venda[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;
   if DM1.Tb_Pcus.Locate('PCNOME',trim(copy(mStatic_Dvda[x].Caption,
                       6,length(mStatic_Dvda[x].Caption)-5)),[]) then
      begin
      mAplicSob   :=DM1.Tb_PcusPCAPLS.AsInteger;
      mTipoformula:=DM1.Tb_PcusPFORMULA.AsInteger;
      mTipo       :=DM1.Tb_PcusPTIPO.AsInteger;
      end
   else
      begin
      mAplicSob   :=0;
      mTipoformula:=0;
      mTipo       :=0;
      end;
   mVlrResult:=fCalcularCusto(mAplicSob,mTipoformula,mTipo,mFator,
               valfloat(medit_Venda[x].Text),mpCompra,mValorAcum,mpmin,mValorReal);
   mvlpmin:=mvlrResult[1];
   mvl    :=mvlrResult[0];

   if copy(trim(MStatic_dVda[x].Caption),1,3)='(-)' then
      begin
      mincpmin:=mincpmin-mvlpmin;
      mValorAcum:=mValorAcum-mvl;
      mtotal:=mtotal-mvl;
      end
   else
      begin
      mincpmin:=mincpmin+mvlpmin;
      mValorAcum:=mValorAcum+mvl;
      mtotal:=mtotal+mvl;
      end;
   mStatic_Vlr_Venda[x].Caption:=FormatFloat(mcasccus,mvl);
   end;
mpcompra:=mtotal;
mincpmin:=0;
// inicio dos encargos
mfator:=0;
for x:=1 to High(mform_pcus.medit_encar) do
   begin
   if mform_pcus.mStatic_Encar[x].Caption='%' then
     mFator:=mFator+valfloat(mform_pcus.mEdit_Encar[x].Text)
   else
     mValorReal:=mValorReal+valfloat(mform_pcus.mEdit_Encar[x].Text);
   end;
if mFator<>0 then
   mFator:=(100-mfator)/100;
mValorAcum:=0;
for x:=1 to High(mform_pcus.medit_encar) do
   begin
   if valfloat(mform_pcus.mEdit_encar[x].Text)<=0 then
      begin
      mform_pcus.mStatic_Vlr_encar[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;
   if DM1.Tb_Pcus.Locate('PCNOME',trim(copy(mform_pcus.mStatic_DEncar[x].Caption,
                       6,length(mform_pcus.mStatic_DEncar[x].Caption)-5)),[]) then
      begin
      mAplicSob   :=DM1.Tb_PcusPCAPLS.AsInteger;
      mTipoformula:=DM1.Tb_PcusPFORMULA.AsInteger;
      mTipo       :=DM1.Tb_PcusPTIPO.AsInteger;
      end
   else
      begin
      mAplicSob   :=0;
      mTipoformula:=0;
      mTipo       :=DM1.Tb_PcusPTIPO.AsInteger;
      end;
   mVlrResult:=fCalcularCusto(mAplicSob,mTipoformula,mTipo,mFator,
               valfloat(mform_pcus.medit_encar[x].Text),mpCompra,mValorAcum,mpmin,mValorReal);
   mvlpmin:=mvlrResult[1];
   mvl    :=mvlrResult[0];
   if copy(trim(mform_pcus.MStatic_Encar[x].Caption),1,3)='(-)' then
      begin
      mincpmin:=mincpmin-mvlpmin;
      mValorAcum:=mValorAcum-mvl;
      mtotal:=mtotal-mvl;
      end
   else
      begin
      mincpmin:=mincpmin+mvlpmin;
      mValorAcum:=mValorAcum+mvl;
      mtotal:=mtotal+mvl;
      end;
   mform_pcus.mStatic_Vlr_Encar[x].Caption:=FormatFloat(mcasccus,mvl);
   end;
// termino dos encargos
Frm_MFor01.PCOVDA01.Caption  :=FormatFloat(mcasasCus, mtotal);
Frm_MFor01.PCOVDA02.Caption := FormatFloat(mcasasCus, mtotal+(mtotal*ValFloat(Frm_MFor01.APCO02.Text)/100));
Frm_MFor01.PCOVDA03.Caption := FormatFloat(mcasasCus, mtotal+(mtotal*ValFloat(Frm_MFor01.APCO03.Text)/100));
result:=True;
end;

procedure TFrm_MFor01.mEdit_CustoKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;

end;

procedure TFrm_MFor01.APCO02Exit(Sender: TObject);
begin
APCO02.Text:=FormatFloat(mcasas, ValFloat(APCO02.Text));
fcalccus(0);
end;

procedure TFrm_MFor01.APCO03Exit(Sender: TObject);
begin
APCO03.Text:=FormatFloat(mcasas, ValFloat(APCO03.Text));
fcalccus(0);
end;


function tFrm_MFor01.FatualizaCus(pCodpro: String):Boolean;
var
mQtdEdit: Integer;
mMantem: Boolean;
begin
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
if pbanco<>0 then
   begin
   DM1.Query4.sql.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PFORMULA,PCFATOR,CUPERC from cadpcus '
              +' left outer join cadcus '
              +' on (pccodigo=cucodpcu) ');
   DM1.Query4.sql.Add(' and (CUTIPO=0) '
              +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP=0'+IntToStr(codemp)+') ')
              +' and (CUCODIGO=0'+Trim(pCodpro)+')'
              +' order by PCNOME ');

   end
else
   begin
   DM1.Query4.sql.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,PFORMULA,CUPERC from cadpcus,cadcus '
              +' Where cucodpcu(+)=pccodigo');
   DM1.Query4.sql.Add(' and (CUTIPO(+)=0) '
              +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
              +' and (CUCODIGO(+)=0'+Trim(pCodpro)+')'
              +' order by PCNOME ');

   end;
DM1.Query4.Open;
// inicio validação
DM1.Query4.Open;
mMantem:=true;
While not DM1.Query4.Eof do
   begin
   mQtdEdit:=mQtdEdit+1;
   if DM1.Query4.FieldByName('CUPERC').AsFloat>0 then
      begin
      mMantem:=false;
      break;
      end;
   DM1.Query4.Next;
   end;

// termino validação

DM1.Query4.First;
mQtdEdit:=0;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   if (CB_CUSTOS.Checked) and (mMantem) then
      begin
      if (DM1.Query4.FieldByName('CUPERC').AsFloat>0) then
         mEdit_Custo[mQtdEdit].Text:=FormatFloat(mcasas, DM1.Query4.fieldbyName('CUPERC').AsFloat)
      end
   else
      mEdit_Custo[mQtdEdit].Text:=FormatFloat(mcasas, DM1.Query4.fieldbyName('CUPERC').AsFloat);
   DM1.Query4.Next;
   end;
mQtdEdit:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger=0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;

   if (CB_CUSTOS.Checked) and (mMantem) then
      begin
      if DM1.Query4.FieldByName('CUPERC').AsFloat>0 then
         mEdit_Venda[mQtdEdit].Text:=FormatFloat(mcasas, DM1.Query4.fieldbyName('CUPERC').AsFloat)
      end
   else
      mEdit_Venda[mQtdEdit].Text:=FormatFloat(mcasas, DM1.Query4.fieldbyName('CUPERC').AsFloat);
   DM1.Query4.Next;
   end;

if not flcadcus2(0,0,Trim(CODPRO.Text)) then
   begin
//   fAtualizaPadrao(0);
   APCO02.Text :=FormatFloat(mcasaspu,0);
   APCO03.Text :=FormatFloat(mcasaspu,0);
   PCOMIN.Text :=FormatFloat(mcasaspu,0);
   INCPMIN.Text:=FormatFloat(mcasaspu,0);
   end
else
   begin
   CB_ATUP01.Checked :=DM1.Tb_Cus2CUATUP01.Value   =0;
   CB_ATUP02.Checked :=DM1.Tb_Cus2CUATUP02.Value   =0;
   CB_ATUP03.Checked :=DM1.Tb_Cus2CUATUP03.Value   =0;
   APCO02.Text       :=FormatFloat(mcasaspu,DM1.Tb_Cus2CUACPCO2.Value);
   APCO03.Text       :=FormatFloat(mcasaspu,DM1.Tb_Cus2CUACPCO3.Value);
   PCOMIN.Text       :=FormatFloat(mcasaspu,DM1.Tb_Cus2CUPCOMIN.Value);
   INCPMIN.Text      :=FormatFloat(mcasaspu,DM1.Tb_Cus2CUINCPCOMIN.Value);
   end;

fcalccus(0);
result:=true;
end;

procedure TFrm_MFor01.bbAtuaProClick(Sender: TObject);
begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      exit;

   DM1.Tb_Pro.Edit;

   if CB_ATUP01.Checked then begin
      DM1.Tb_ProPDPRECOA1.Value:=DM1.Tb_ProPDPRECO1.Value;
      DM1.Tb_ProPDPRECO1.Value :=ValFloat(PCOVDA01.Caption);
      DM1.Tb_ProPDDTUATP1.Value:=pdatasis;
      DM1.Tb_ProPDUSRALT1.Value:=codusr;
   end;

   if CB_ATUP02.Checked then begin
      DM1.Tb_ProPDPRECOA2.Value:=DM1.Tb_ProPDPRECO2.Value;
      DM1.Tb_ProPDPRECO2.Value:=ValFloat(PCOVDA02.Caption);
      DM1.Tb_ProPDDTUATP2.Value:=pdatasis;
      DM1.Tb_ProPDUSRALT2.Value:=codusr;
   end;

   if CB_ATUP03.Checked then begin
      DM1.Tb_ProPDPRECOA3.Value:=DM1.Tb_ProPDPRECO3.Value;
      DM1.Tb_ProPDPRECO3.Value:=ValFloat(PCOVDA03.Caption);
      DM1.Tb_ProPDDTUATP3.Value:=pdatasis;
      DM1.Tb_ProPDUSRALT3.Value:=codusr;
   end;

   DM1.Tb_ProPDPCOFAB.Value:=ValFloat(TOTAL.Text);
   DM1.Tb_ProPDUCPR.Value:=ValFloat(TOTAL.Text);
   DM1.Tb_ProPDVLRINC.Value:=ValFloat(PCOMIN.Text);
   DM1.Tb_ProPDCUSFIN.Value:=ValFloat(TOTAL.Text);
   DM1.Tb_ProPDCUSFAB.Value:=0;
   DM1.Tb_ProPDCUSENV.Value:=0;
   DM1.Tb_ProPDPRECOC.Value:=ValFloat(PCOCUS.Caption);
   DM1.Tb_Pro.Post;

   if not mAtualizando then
      FMensagem('Produto Atualizado!',0,['0'],0);

end;

procedure TFrm_MFor01.bbGravarClick(Sender: TObject);
var
  y,x     : Integer;
  mcodigo : Integer;
begin
  if fsonumero(CODPRO.Text)=0 then
     exit;

  DM1.Query1.Close;
  DM1.query1.SQL.Clear;
  DM1.Query1.SQL.Add('Delete from CADCUS where '
                    +iif(dm1.Qr_TID.Locate('TINOME','CADCUS',[]),'',' CUCODEMP=0'+IntTostr(codemp)+' and ')
                    +' CUTIPO=0 and '
                    +' CUCODIGO=0'+Trim(CODPRO.Text));

  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    FMensagem('Erro 1070 ao atualizar o arquivo de Custo!',0,['0'],0);
    exit;
  end;

  DM1.Query1.Close;
  DM1.query1.SQL.Clear;
  DM1.Query1.SQL.Add('Delete from CADCUS2 where '
                    +iif(dm1.Qr_TID.Locate('TINOME','CADCUS',[]),'',' CUCODEMP=0'+IntTostr(codemp)+' and ')
                    +' CUTIPO=0 and '
                    +' CUCODIGO=0'+Trim(CODPRO.Text));
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    FMensagem('Erro 1083 ao Atualizar o Arquivo de Custo 2!',0,['0'],0);
    exit;
  end;



  for x:=1 to High(mstatic_Vlr_custo) do begin
    if ValFloat(mEdit_Custo[x].Text)=0 then
       continue;
    for y:=1 to length(mstatic_vlr_custo[x].Name) do begin
      if mstatic_vlr_custo[x].Name[y]='_' then begin
         mCodigo:=ValInt(copy(mstatic_vlr_custo[x].name,
                         y+1,
                         length(mstatic_vlr_custo[x].name)-y)
                         );
         break;
      end;
    end;

    DM1.Query4.Close;
    DM1.Query4.SQL.Clear;
    DM1.Query4.SQL.Add('Select PCCODIGO, '
                      +'       PCNOME,'
                      +'       PCAPLS,'
                      +'       PCFATOR,'
                      +'       PCOPCIO from CADPCUS where PCCODIGO='+IntTostr(mcodigo));
    DM1.Query4.Open;


    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.Sql.add('Insert into CADCUS ('
                      +' CUCODEMP '
                      +',CUTIPO '
                      +',CUCODIGO '
                      +',CUCODPCU '
                      +',CUPERC'
                      +',CUBASECALC '
                      +',CUVALOR '
                      +',CUAPLS '
                      +',CUFATOR '
                      +',CUOPCIO '
                      +' ) values ('
                      +IntTostr(codemp)
                      +',0'
                      +','+Trim(CODPRO.Text)
                      +','+IntToStr(mcodigo)
                      +','+mudavp(ValReal(mEdit_Custo[x].Text))
                      +','+mudavp(ValReal(TOTAL.Text))
                      +','+mudavp(ValReal(mstatic_vlr_custo[x].Caption))
                      +','+DM1.Query4.fieldbyName('PCAPLS').AsString
                      +','+DM1.Query4.fieldbyName('PCFATOR').AsString
                      +','+DM1.Query4.fieldbyName('PCOPCIO').AsString
                      +')');
     Try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(DM1.Query1,1212,'frm lrs'+e.Message ,'CADEST');
       exit;
       end;
     end;
   end;


for x:=1 to High(mstatic_Vlr_Venda) do
   begin
   if ValFloat(mEdit_Venda[x].Text)=0 then
      continue;
   for y:=1 to length(mstatic_vlr_Venda[x].Name) do
      begin
      if mstatic_vlr_Venda[x].Name[y]='_' then
         begin
         mCodigo:=ValInt(copy(mstatic_vlr_Venda[x].name,
                         y+1,
                         length(mstatic_vlr_Venda[x].name)-y)
                         );
         break;
         end;
      end;
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.Add('Select PCCODIGO, '
                     +'       PCNOME,'
                     +'       PCAPLS,'
                     +'       PCFATOR,'
                     +'       PCOPCIO from CADPCUS where PCCODIGO='+IntTostr(mcodigo));
   DM1.Query4.Open;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.add('Insert into CADCUS ('
                     +' CUCODEMP '
                     +',CUTIPO '
                     +',CUCODIGO '
                     +',CUCODPCU '
                     +',CUPERC'
                     +',CUBASECALC '
                     +',CUVALOR '
                     +',CUAPLS '
                     +',CUFATOR '
                     +',CUOPCIO '
                     +' ) values ('
                     +IntTostr(codemp)
                     +',0'
                     +','+Trim(CODPRO.Text)
                     +','+IntToStr(mcodigo)
                     +','+mudavp(ValReal(mEdit_Venda[x].Text))
                     +','+mudavp(ValReal(PCOCUS.Caption))
                     +','+mudavp(ValReal(mstatic_vlr_Venda[x].Caption))
                     +','+DM1.Query4.fieldbyName('PCAPLS').AsString
                     +','+DM1.Query4.fieldbyName('PCFATOR').AsString
                     +','+DM1.Query4.fieldbyName('PCOPCIO').AsString
                     +')');
    Try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
    except
       FMensagem('Erro 1162 ao Incluir Parametros de Custo',0,['0'],0);
    end;
  end;

  DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.add('Insert into CADCUS2 ('
                  +'CUCODEMP '
                  +',CUTIPO '
                  +',CUORIGEMPCO '
                  +',CUCODIGO '
                  +',CUPCOMIN '
                  +',CUINCPCOMIN '
                  +',CUACPCO2 '
                  +',CUACPCO3 '
                  +',CUATUP01 '
                  +',CUATUP02 '
                  +',CUATUP03  '
                  +',CUPCOFAB  '
                  +',CUPCOCUS  '
                  +',CUPCOVDA01  '
                  +',CUPCOVDA02 '
                  +',CUPCOVDA03 '
                  +' ) values ('
                  +IntTostr(codemp)
                  +',0'
                  +',1'
                  +','+Trim(CODPRO.Text)
                  +','+mudavp(ValReal(PCOMIN.Text))
                  +','+mudavp(ValReal(INCPMIN.Text))
                  +','+mudavp(ValReal(APCO02.Text))
                  +','+mudavp(ValReal(APCO03.Text))
                  +','+iif(CB_ATUP01.Checked,'0','1')
                  +','+iif(CB_ATUP02.Checked,'0','1')
                  +','+iif(CB_ATUP03.Checked,'0','1')
                  +','+mudavp(ValReal(TOTAL.Text))
                  +','+mudavp(ValReal(PCOCUS.Caption))
                  +','+mudavp(ValReal(PCOVDA01.Caption))
                  +','+mudavp(ValReal(PCOVDA02.Caption))
                  +','+mudavp(ValReal(PCOVDA03.Caption))
                  +')');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(dm1.Query1,1323,'_stru'+e.message,'user');
   end;
   end;


if CB_ATUPRO.Checked then
   begin
   mAtualizando:=true;
   bbAtuaProClick(Self);
   mAtualizando:=False;
   end;
ShowMessage('Gravado');
CODPRO.SetFocus;

end;


function TFrm_MFor01.fAtualizaPadrao(pTipo: Integer): Boolean;
begin
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','CB_CUSTOS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_CUSTOS.Checked:=true
   else
      CB_CUSTOS.Checked:=false;
   end
else
   CB_CUSTOS.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','CB_ATUPRO']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ATUPRO.Checked:=true
   else
      CB_ATUPRO.Checked:=false;
   end
else
   CB_ATUPRO.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','CB_ATUP01']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ATUP01.Checked:=true
   else
      CB_ATUP01.Checked:=false;
   end
else
   CB_ATUP01.Checked:=false;




if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','CB_ATUP02']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ATUP02.Checked:=true
   else
      CB_ATUP02.Checked:=false;
   end
else
   CB_ATUP02.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','CB_ATUP03']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_ATUP03.Checked:=true
   else
      CB_ATUP03.Checked:=false;
   end
else
   CB_ATUP03.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','APCO02']),[]) then
   begin
   APCO02.Text:=DM4.Tb_FilPadFPVALOR.Value;
   end;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','APCO03']),[]) then
   begin
   APCO03.Text:=DM4.Tb_FilPadFPVALOR.Value;
   end;


{
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_MFor01','CB_FORMULA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_FORMULA.Checked:=true
   else
      CB_FORMULA.Checked:=false;
   end
else
   CB_FORMULA.Checked:=false;
}
result:=True;
end;

procedure TFrm_MFor01.bbSavar_PadroesClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_MFor01','');
fGravaPadroes(codusr,'CB_ATUP01','checked','_MFor01',iif(CB_ATUP01.Checked,'true','false'));
fGravaPadroes(codusr,'CB_ATUP02','checked','_MFor01',iif(CB_ATUP02.Checked,'true','false'));
fGravaPadroes(codusr,'CB_ATUP03','checked','_MFor01',iif(CB_ATUP03.Checked,'true','false'));
fGravaPadroes(codusr,'CB_CUSTOS','checked','_MFor01',iif(CB_CUSTOS.Checked,'true','false'));
fGravaPadroes(codusr,'CB_ATUPRO','checked','_MFor01',iif(CB_ATUP01.Checked,'true','false'));
fGravaPadroes(codusr,'APCO02','text','_MFor01',APCO02.Text);
fGravaPadroes(codusr,'APCO03','text','_MFor01',APCO02.Text);
FMensagem('Gravado!',0,['0'],0);

end;


Function TFrm_MFor01.fPcusImprime(ptipo: Integer; pCodpro,pTotal,pQtdGrml: Real;pGrade: String): Boolean;
var
  mcodenv: Real;
  mpcusto,mpvenda: Real;
  mtotQtd,mvt,mtotal,mtoticms: Real;
  mfator,mcusfab, mcusenv, mcusfin, mucpr: Real;
  mVlrResult: TArrayCusto;
  imp_cab: Boolean;
begin
testeform := TFrm_MFor01(FindGlobalComponent('form_impres_mfor01'));
if (testeform=nil)  then
  Application.CreateForm(Tfrm_Impres, form_impres_Mfor01);

form_impres_Mfor01.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mpcusto:=0;
mpvenda:=0;

mcusfab:=0;
mcusenv:=0;
mcusfin:=0;
mucpr  :=0;
mtotQtd:=0;
form_impres_Mfor01.mlin:=0;
if ptipo<>2 then
  mpcusto:=ptotal
else
  mpcusto:=0;

if (ptipo=2) or (ptipo=3) then
  begin
  mvt:=0;
//identificar o codigo do envase
  if (DM1.Tb_PargerPINDUSTRIA.Value=1) or (DM1.Tb_PargerPINDUSTRIA.Value>3) then
    begin
    mcodenv:=0
    end
  else
    begin
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('Select CPCODPRO from CADCOMP where '
                   +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                   +' CPCODPRO_ACAB=0'+FloatToStr(pCodpro));
    DM1.Query1.Open;
    mcodenv:=DM1.Query1.Fields[0].AsFloat;
    end;
  form_impres_Mfor01.mlin:=0;
  fPcusCab_Cus(0,pCodpro,mcodEnv);
  mtotal  :=0;
  mtoticms:=0;
  mpcusto:=0;
  flcadcomp02(0,FloatToStr(mcodenv),FloatTostr(pCodpro));
  if (DM1.Tb_PargerPINDUSTRIA.Value=4) or (DM1.Tb_PargerPINDUSTRIA.Value=2)then
    flcadcomp(0,0,FloatToStr(pcodpro),'','0')
  else
    flcadcomp(0,-1,FloatToStr(mcodenv),'','0');
  While not DM3.Tb_Comp.Eof do
    begin
    fPcusCab_Cus(0,pCodpro,mcodenv);
    form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
    mtotQtd:=mtotQtd+DM3.Tb_Compquantidade.Value;
    mvt:=Arredonda((DM3.Tb_Comppcocus.Value*DM3.Tb_Compquantidade.Value),mcasqtdccus);
//    mvt:=Arredonda((DM3.Tb_Comppcocus.Value*DM3.Tb_Compquantidade.Value),DM1.Tb_PargerPCASPUIND.Asinteger);
    mvt:=mvt-DM3.Tb_CompCPICMSCRED.Value;
    form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere(DM3.Tb_CompCPCODMAT.AsString,' ',14)
                                    +insere(FormatFloat('##0.00000', DM3.Tb_Compquantidade.Value),' ',12)
                                    +'  '
                                    +Insere2(DM3.Tb_Compund.Value,' ',3)
                                    +'   '+Insere2(DM3.Tb_Compnommat.Value,' ',40)
                                    +insere(FormatFloat(mcasccus, DM3.Tb_Comppcocus.Value),' ',14)
                                    +'    '
                                    +insere(FormatFloat(mcasas, DM3.Tb_CompCPALICMSCRED.Value),' ',06)
                                    +'    '
                                    +insere(FormatFloat(mcasccus, DM3.Tb_CompCPICMSCRED.Value),' ',14)
                                    +'   '+insere(FormatFloat(mcasccus,  mvt),' ',14),mreduz);
    //Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total
    //12345678901234  a23456789  123   1234567890123456789012345678901234567890  a2345678901234    123.12    a2345678901234  a2345678901234
    mtotal  :=mtotal+mvt;
    mtoticms:=mtoticms+DM3.Tb_CompCPICMSCRED.Value;
    DM3.Tb_Comp.Next;
    if DM3.Tb_Comp.Eof then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Total das Materias Primas Utilizadas','.',100)
                                      +'  '+insere(FormatFloat(mcasccus, mtoticms),' ',14)
                                      +'  '+insere(FormatFloat(mcasccus, mtotal),' ',15),mreduz);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      if DM1.Tb_PargerPIND_TPFORMULA.AsInteger>0 then
        begin
        try
          mtotQtd:=mtotQtd/pQtdGrml;
          mpcusto:=mtotal/mtotQtd;
        except
          mpcusto:=0;
          mtotQtd:=0;
          end;
        mpcusto:=Arredonda(mpcusto,DM1.Tb_PargerPCASPUIND.AsInteger);
        if DM1.Tb_PargerPINDUSTRIA.Value=4 then
          form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo das Embalagens Utilizadas no Produto',mneg)
        else
          form_impres_Mfor01.RDprint1.impf(form_impres_Mfor01.mlin,01,'Esta Formula e para envasar: '+FormatFloat(mcasccus, mtotQtd)
                                          +' unidades. Preco de Cada Unidade: '+FormatFloat(mcasccus, mpcusto),m12ccp);
        end
      else
        begin
        if DM1.Tb_PargerPINDUSTRIA.Value<>4 then
          mpcusto:=mtotal
        else
          begin
          try
             mpcusto:=mtotal/DM3.Tb_Comp02CP_MEDUND.Value;
          except
            mpcusto:=mtotal;
            end;
          end;
        if DM1.Tb_PargerPINDUSTRIA.Value=4 then
          form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo das Embalagens Utilizadas no Produto',mneg)
        else
          form_impres_Mfor01.RDprint1.impf(form_impres_Mfor01.mlin,01,'Esta Formula e para envasar: '+FormatFloat(mcasccus, DM3.Tb_Comp02CP_MEDUND.Value)
                                          +' unidades. Preco de Cada Unidade: '+FormatFloat(mcasccus, mpcusto),m12ccp);
        end;
      end;
    end;
  mcusfab:=mpcusto;
  mtotal  :=0;
  mtoticms:=0;

// INICIO DO ENVASE

  if ValInt(copy(mpseg,4,2))=2 then
    begin
    flcadcomp(0,-1,FloatToStr(pCodpro),pGrade,'');
    end
  else if (DM1.Tb_PargerPINDUSTRIA.Value=1) OR  (DM1.Tb_PargerPINDUSTRIA.Value>3) then
    begin
    if DM1.Tb_PargerPINDUSTRIA.Value=4 then
      flcadcomp(0,1,FloatToStr(pCodpro),'','')
    else
      flcadcomp(0,-1,FloatToStr(pCodpro),'','');
    end
  else
    flcadcomp(0,-1,FloatToStr(mcodenv),'',FloatTosTr(pCodpro));
  if not DM3.Tb_Comp.Eof  then
    begin
    if form_impres_Mfor01.mlin>50 then
      form_impres_Mfor01.mlin:=59
   else
      begin
      if DM1.Tb_PargerPINDUSTRIA.Value=2 then
        fPcusCab_Cus(11,pCodpro,0);
      end;
    While not DM3.Tb_Comp.Eof do
      begin
      fPcusCab_Cus(1,pCodpro,0);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      mvt:=Arredonda((DM3.Tb_Comppcocus.Value*DM3.Tb_Compquantidade.Value),mcasqtdccus);
//      mvt:=Arredonda((DM3.Tb_Comppcocus.Value*DM3.Tb_Compquantidade.Value),DM1.Tb_PargerPCASPUIND.Asinteger);
      mvt:=mvt-DM3.Tb_CompCPICMSCRED.Value;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere(DM3.Tb_CompCPCODMAT.AsString,' ',14)
                                      +insere(FormatFloat(mcasind, DM3.Tb_Compquantidade.Value),' ',12)
                                      +'  '
                                      +Insere2(DM3.Tb_Compund.Value,' ',3)
                                      +'   '+Insere2(DM3.Tb_Compnommat.Value,' ',40)
                                      +insere(FormatFloat(mcasccus, DM3.Tb_Comppcocus.Value),' ',14)
                                      +'    '
                                      +insere(FormatFloat(mcasas, DM3.Tb_CompCPALICMSCRED.Value),' ',06)
                                      +'    '
                                      +insere(FormatFloat(mcasccus, DM3.Tb_CompCPICMSCRED.Value),' ',14)
                                      +'   '+insere(FormatFloat(mcasccus, mvt),' ',14),mreduz);
      mtotal  :=mtotal+mvt;
      mtoticms:=mtoticms+DM3.Tb_CompCPICMSCRED.Value;
      DM3.Tb_Comp.Next;
      if DM3.Tb_Comp.Eof then
        begin
        if DM1.Tb_PargerPINDUSTRIA.Value=4 then
          flcadcomp(0,2,FloatToStr(pCodpro),'','');
        While not DM3.Tb_Comp.Eof do
          begin
          fPcusCab_Cus(1,pCodpro,0);
          form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
          mvt:=Arredonda((DM3.Tb_Comppcocus.Value*DM3.Tb_Compquantidade.Value),mcasqtdccus);
          mvt:=mvt-DM3.Tb_CompCPICMSCRED.Value;
          form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere(DM3.Tb_CompCPCODMAT.AsString,' ',14)
                                          +insere(FormatFloat(mcasind, DM3.Tb_Compquantidade.Value),' ',12)
                                          +'  '
                                          +Insere2(DM3.Tb_Compund.Value,' ',3)
                                          +'   '+Insere2(DM3.Tb_Compnommat.Value,' ',40)
                                          +insere(FormatFloat(mcasccus, DM3.Tb_Comppcocus.Value),' ',14)
                                          +'    '
                                          +insere(FormatFloat(mcasas, DM3.Tb_CompCPALICMSCRED.Value),' ',06)
                                          +'    '
                                          +insere(FormatFloat(mcasccus, DM3.Tb_CompCPICMSCRED.Value),' ',14)
                                          +'   '+insere(FormatFloat(mcasccus, mvt),' ',14),mreduz);
          mtotal  :=mtotal+mvt;
          mtoticms:=mtoticms+DM3.Tb_CompCPICMSCRED.Value;
          DM3.Tb_Comp.Next;
          end;
        form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
        if DM1.Tb_PargerPINDUSTRIA.Value=2 then
          begin
          form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' = Total das materias primas utilizadas para envase','.',102)
                                          +insere(FormatFloat(mcasccus, mtoticms),' ',14)
                                          +'   '+insere(FormatFloat(mcasccus, mtotal),' ',14),mreduz);
          form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
          form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' + Custo de Fabricacao do Produto','.',102)
                                          +insere(Formatfloat(mcasccus, mtoticms),' ',14)
                                          +'   '+insere(FormatFloat(mcasccus, mpcusto),' ',14),mreduz);
          end
        else
          begin
          form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Total dos Materias de Embalagem......','.',102)
                                          +insere(FormatFloat(mcasccus, mtoticms),' ',14)
                                          +'  '+insere(FormatFloat(mcasccus, mtotal),' ',15),mreduz);
          end;
        end;
      end;
    end;
  mcusenv:=mtotal;
  form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
  mpcusto :=mcusfab+mcusenv;
  mpcusto:=Arredonda(mpcusto, DM1.Tb_PargerPCASPUIND.AsInteger);
  if DM1.Tb_PargerPINDUSTRIA.Value=2 then
    begin
    form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Preco Unitario do Produto Envasado','.',102)
                                    +insere(' ',' ',14)+'   '+insere(FormatFloat(mcasccus, mpcusto),' ',14),mReduz);
    if (pTotal>0) and (ptotal<>mpcusto) then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Custo da Composicao......','.',102)
                                      +insere(' ',' ',14)+'   '+insere(FormatFloat(mcasccus, pTotal),' ',14),mReduz);
      end;
    end
  else
    begin
    if (pTotal>0) and (ptotal<>mpcusto) then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Total do Custo ( Formula ) de Composicao do Produto....','.',102)
                                      +insere(' ',' ',14)+'   '+insere(FormatFloat(mcasccus, mpcusto),' ',14),mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Custo de Composicao do Produto....','.',102)
                                      +insere(' ',' ',14)+'   '+insere(FormatFloat(mcasccus, pTotal),' ',14),mReduz);
      end;
    end;
  end;
if ptipo<>3 then
   begin
   if (pTotal>0) and (ptotal<>mpcusto) then
      mpcusto:=pTotal;
   mcusenv:=mpcusto;
   fPcusCab_Cus(0,pCodpro,0);
   mvt   :=0;
   mtotal:=0;
   // composicao do custo final do produto
   mtotal:=0;
   imp_cab:=false;

   if form_impres_Mfor01.mlin>50 then
      begin
      form_impres_Mfor01.mlin:=59;
      imp_cab:=true;
      end;


   DM1.Query4.Close;
   DM1.Query4.Sql.Clear;
   if (pbanco<>0) then
      begin
      DM1.Query4.Sql.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PFORMULA,PTIPO,PCFATOR,CUPERC from cadpcus '
                 +' left outer join cadcus '
                 +' on (pccodigo=cucodpcu) ');
      DM1.Query4.Sql.Add(' and (CUTIPO=0) and PCOPCIO=0 '
                 +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP=0'+IntToStr(codemp)+') ')
                 +' and (CUCODIGO=0'+FloatTostr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end
   else
      begin
      DM1.Query4.Sql.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,PFORMULA,PTIPO,CUPERC from cadpcus,cadcus '
                  +' Where cucodpcu(+)=pccodigo');
      DM1.Query4.Sql.Add(' and (CUTIPO(+)=0) and PCOPCIO=0 '
                    +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
                    +' and (CUCODIGO(+)=0'+FloatToStr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end;

   DM1.Query4.Open;
   mfator:=0;
   While not DM1.Query4.Eof do
      begin
      mFator:=mFator+DM1.Query4.fieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;
   if mFator<>0 then
      mFator:=(100-mfator)/100;
   DM1.Query4.First;
   While not DM1.Query4.Eof do
      begin
      if (not imp_cab) and (form_impres_Mfor01.mlin<58) then
         begin
         fPcusCab_Cus(12,pCodpro,0);
         imp_cab:=true;
         end;

//      fPcusCab_Cus(2,pCodpro,0);
//      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;

      mVlrResult:=fCalcularCusto(
                            DM1.Query4.fieldByName('PCAPLS').AsInteger,
                            DM1.Query4.fieldByName('PFORMULA').AsInteger,
                            DM1.Query4.fieldByName('PTIPO').AsInteger,
                            mfator,
                            DM1.Query4.fieldByName('CUPERC').AsFloat,
                            mpcusto,mtotal,0,0);


//      mvlpmin:=mvlrResult[1];
      mvt    :=mvlrResult[0];
      if DM1.Query4.fieldByName('PCFATOR').AsInteger=1 then
         begin
         mcinst:='Deducao';
         mtotal:=mtotal-mvt;
         end
      else
         begin
         mcinst:='Ampliacao';
         mtotal:=mtotal+mvt;
         end;
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,02,Formatfloat('000',DM1.Query4.fieldByName('PCCODIGO').AsInteger)
                              +'   '+insere2(DM1.Query4.fieldByName('PCNOME').AsString,' ',30)
                              +insere(FormatFloat(mcasas, DM1.Query4.fieldByName('CUPERC').AsFloat),' ',08)
                              +' '
                              +insere2(mcinst,' ',9)
                              +insere(FormatFloat(mcasccus, mvt),' ',11)
                              +insere(FormatFloat(mcasas, mpcusto+mtotal),' ',12),mnormal);


      DM1.Query4.Next;
      if DM1.Query4.Eof then
         begin
         if DM1.Tb_Cus2CUINCPCOMIN.AsFloat<>0 then
            begin
            mpcusto:=mpcusto+DM1.Tb_Cus2CUINCPCOMIN.Value;
            form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
            form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,02,'   '
                              +'   '+insere2('Incidencia Sobre Minimo',' ',30)
                              +insere(' ',' ',08)
                              +' '
                              +insere2(mcinst,' ',9)
                              +insere(FormatFloat(mcasccus, DM1.Tb_Cus2CUINCPCOMIN.Value),' ',12)
                              +insere(FormatFloat(mcasas, mpcusto+mtotal),' ',13),mnormal);
            end;
         mpcusto:=mpcusto+mtotal;
         mpcusto:=Arredonda(mpcusto,DM1.Tb_PargerPCASPUIND.Asinteger);
         form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
         form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Custo Unitário do Produto: ','.',64)
                                    +insere(FormatFloat(mcasaspu, mpcusto),' ',14),mnormal);
         end;
      end;
   // composicao do preco de venda do Produto

   mtotal:=0;
   mvt   :=0;
   imp_cab:=false;
   if form_impres_Mfor01.mlin>50 then
      begin
      form_impres_Mfor01.mlin:=59;
      imp_cab:=true;
      end;
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;

   if (pbanco<>0) then
      begin

      DM1.Query4.Sql.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PTIPO,PFORMULA,PCFATOR,CUPERC from cadpcus '
                    +' left outer join cadcus '
                    +' on (pccodigo=cucodpcu) ');
      DM1.Query4.SQL.Add(' and (CUTIPO=0) and PCOPCIO=1 '
                    +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP=0'+IntToStr(codemp)+') ')
                    +' and (CUCODIGO=0'+FloatToStr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end
   else
      begin
      DM1.Query4.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PTIPO,PFORMULA,PCFATOR,CUPERC from cadpcus,cadcus '
                    +' Where cucodpcu(+)=pccodigo');
      DM1.Query4.SQL.Add(' and (CUTIPO(+)=0) and PCOPCIO=1 '
                    +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
                    +' and (CUCODIGO(+)=0'+FloatTostr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end;
   DM1.Query4.Open;
   mfator:=0;
   While not DM1.Query4.Eof do
      begin
      mFator:=mFator+DM1.Query4.fieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;
   if mFator<>0 then
      mFator:=(100-mfator)/100;
   DM1.Query4.First;

   While not DM1.Query4.Eof do
      begin
      if not imp_cab then
         begin
         fPcusCab_Cus(13,pCodpro,0);
         imp_cab:=true;
         end;
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      fPcusCab_Cus(2,pCodpro,0);
      mVlrResult:=fCalcularCusto(
                            DM1.Query4.fieldByName('PCAPLS').AsInteger,
                            DM1.Query4.fieldByName('PFORMULA').AsInteger,
                            DM1.Query4.fieldByName('PTIPO').AsInteger,
                            mfator,
                            DM1.Query4.fieldByName('CUPERC').AsFloat,
                            mpcusto,mtotal,0,0);


//      mvlpmin:=mvlrResult[1];
      mvt    :=mvlrResult[0];
      if DM1.Query4.fieldByName('PCFATOR').AsInteger=1 then
         begin
         mtotal:=mtotal-mvt;
         mcinst:='Deducao';
         end
      else
         begin
         mcinst:='Ampliacao';
         mtotal:=mtotal+mvt;
         end;
       form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,02,Formatfloat('000',DM1.Query4.fieldByName('PCCODIGO').AsInteger)
                              +'   '+insere2(DM1.Query4.fieldByName('PCNOME').AsString,' ',30)
                              +insere(FormatFloat(mcasas, DM1.Query4.fieldByName('CUPERC').AsFloat),' ',08)
                              +' '
                              +insere2(mcinst,' ',9)
                              +insere(FormatFloat(mcasccus, mvt),' ',11)
                              +insere(FormatFloat(mcasccus, mpcusto+mtotal),' ',12),mnormal);
      DM1.Query4.Next;
      if DM1.Query4.Eof then
         begin
         form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;

         mpcusto:=mpcusto+mtotal;
//         mpcusto:=Arredonda(mpcusto,DM1.Tb_PargerPCASPUIND.Asinteger); retirado para nao dar erro no somatorio!!!!
         form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Valor do Custo do Produto: ','.',64)
//                                    +insere(FormatFloat(mcasaspu, mpcusto),' ',14),mnormal);
                                    +insere(FormatFloat(mcasccus, mpcusto),' ',14),mnormal);
         end;
      end;

 // preco de
   mucpr:=mpcusto;
   mpvenda:=mpcusto;
   mtotal:=0;
   mvt   :=0;
   imp_cab:=false;
   if form_impres_Mfor01.mlin>50 then
      begin
      form_impres_Mfor01.mlin:=59;
      imp_cab:=true;
      end;
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;

   if (pbanco<>0) then
      begin

      DM1.Query4.Sql.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PFORMULA,PTIPO,PCFATOR,CUPERC from cadpcus '
                    +' left outer join cadcus '
                    +' on (pccodigo=cucodpcu) ');
      DM1.Query4.SQL.Add(' and (CUTIPO=0) and PCOPCIO=3 '
                    +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP=0'+IntToStr(codemp)+') ')
                    +' and (CUCODIGO=0'+FloatToStr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end
   else
      begin
      DM1.Query4.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PFORMULA,PTIPO,PCFATOR,CUPERC from cadpcus,cadcus '
                    +' Where cucodpcu(+)=pccodigo');
      DM1.Query4.SQL.Add(' and (CUTIPO(+)=0) and PCOPCIO=3 '
                    +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
                    +' and (CUCODIGO(+)=0'+FloatTostr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end;
   DM1.Query4.Open;
   mfator:=0;
   While not DM1.Query4.Eof do
      begin
      mFator:=mFator+DM1.Query4.fieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;
   if mFator<>0 then
      mFator:=(100-mfator)/100;
   DM1.Query4.First;

   While not DM1.Query4.Eof do
      begin
      if not imp_cab then
         begin
         fPcusCab_Cus(14,pCodpro,0);
         imp_cab:=true;
         end;
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      fPcusCab_Cus(3,pCodpro,0);
      mVlrResult:=fCalcularCusto(
                            DM1.Query4.fieldByName('PCAPLS').AsInteger,
                            DM1.Query4.fieldByName('PFORMULA').AsInteger,
                            DM1.Query4.fieldByName('PTIPO').AsInteger,
                            mfator,
                            DM1.Query4.fieldByName('CUPERC').AsFloat,
                            mpcusto,mtotal,0,0);


//      mvlpmin:=mvlrResult[1];
      mvt    :=mvlrResult[0];
      if DM1.Query4.fieldByName('PCFATOR').AsInteger=1 then
         begin
         mtotal:=mtotal-mvt;
         mcinst:='Deducao';
         end
      else
         begin
         mcinst:='Ampliacao';
         mtotal:=mtotal+mvt;
         end;
       form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,02,Formatfloat('000',DM1.Query4.fieldByName('PCCODIGO').AsInteger)
                              +'   '+insere2(DM1.Query4.fieldByName('PCNOME').AsString,' ',30)
                              +insere(FormatFloat(mcasas, DM1.Query4.fieldByName('CUPERC').AsFloat),' ',08)
                              +' '
                              +insere2(mcinst,' ',9)
                              +insere(FormatFloat(mcasccus, mvt),' ',11)
                              +insere(FormatFloat(mcasccus, mpvenda+mtotal),' ',12),mnormal);
      DM1.Query4.Next;
      if DM1.Query4.Eof then
         begin
         form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
         mpvenda:=mpcusto+mtotal;
         mpvenda:=Arredonda(mpvenda,DM1.Tb_PargerPCASPUIND.Asinteger);

         form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Valor do Preco de Venda do Produto: ','.',64)
                                    +insere(FormatFloat(mcasaspu, mpvenda),' ',14),mnormal);
         end;
      end;






 // preco de
   mucpr:=mpvenda;
   mtotal:=0;
   mvt   :=0;
   imp_cab:=false;
   if form_impres_Mfor01.mlin>50 then
      begin
      form_impres_Mfor01.mlin:=59;
      imp_cab:=true;
      end;
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;

   if (pbanco<>0) then
      begin

      DM1.Query4.Sql.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PFORMULA,PCFATOR,PTIPO,CUPERC from cadpcus '
                    +' left outer join cadcus '
                    +' on (pccodigo=cucodpcu) ');
      DM1.Query4.SQL.Add(' and (CUTIPO=0) and PCOPCIO=2 '
                    +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP=0'+IntToStr(codemp)+') ')
                    +' and (CUCODIGO=0'+FloatToStr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end
   else
      begin
      DM1.Query4.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PFORMULA,PCFATOR,PTIPO,CUPERC from cadpcus,cadcus '
                    +' Where cucodpcu(+)=pccodigo');
      DM1.Query4.SQL.Add(' and (CUTIPO(+)=0) and PCOPCIO=2 '
                    +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
                    +' and (CUCODIGO(+)=0'+FloatTostr(pCodpro)+')'
                    +' order by PCOPCIO,PCNOME ');

      end;
   DM1.Query4.Open;
   mfator:=0;
   While not DM1.Query4.Eof do
      begin
      mFator:=mFator+DM1.Query4.fieldbyName('CUPERC').AsFloat;
      DM1.Query4.Next;
      end;
   if mFator<>0 then
      mFator:=(100-mfator)/100;
   DM1.Query4.First;

   While not DM1.Query4.Eof do
      begin
      if not imp_cab then
         begin
         fPcusCab_Cus(15,pCodpro,0);
         imp_cab:=true;
         end;
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      fPcusCab_Cus(4,pCodpro,0);
      mVlrResult:=fCalcularCusto(
                            DM1.Query4.fieldByName('PCAPLS').AsInteger,
                            DM1.Query4.fieldByName('PFORMULA').AsInteger,
                            DM1.Query4.fieldByName('PTIPO').AsInteger,
                            mfator,
                            DM1.Query4.fieldByName('CUPERC').AsFloat,
                            mpvenda,mtotal,0,0);


//      mvlpmin:=mvlrResult[1];
      mvt    :=mvlrResult[0];
      if DM1.Query4.fieldByName('PCFATOR').AsInteger=1 then
         begin
         mtotal:=mtotal-mvt;
         mcinst:='Deducao';
         end
      else
         begin
         mcinst:='Ampliacao';
         mtotal:=mtotal+mvt;
         end;
       form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,02,Formatfloat('000',DM1.Query4.fieldByName('PCCODIGO').AsInteger)
                              +'   '+insere2(DM1.Query4.fieldByName('PCNOME').AsString,' ',30)
                              +insere(FormatFloat(mcasas, DM1.Query4.fieldByName('CUPERC').AsFloat),' ',08)
                              +' '
                              +insere2(mcinst,' ',9)
                              +insere(FormatFloat(mcasaspu, mvt),' ',11)
                              +insere(FormatFloat(mcasas, mpvenda+mtotal),' ',12),mnormal);
      DM1.Query4.Next;
      if DM1.Query4.Eof then
         begin
         form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
         mpvenda:=mpvenda+mtotal;
         form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(' - Valor do Preco dos Encargos: ','.',64)
                                    +insere(FormatFloat(mcasaspu, mpvenda),' ',14),mnormal);
         end;
      end;
   mcusfin:=mpvenda;
   end;
if form_impres_Mfor01.RDprint1.Setup then form_impres_Mfor01.RDprint1.Fechar;
form_impres_Mfor01.free;
form_impres_Mfor01:=nil;
end;

Function TFrm_MFor01.fPcusCab(ptipo: Integer;pCodpro: Real): Boolean;
begin
if form_impres_Mfor01.mlin>58 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Continua...',m12ccp);
   form_impres_Mfor01.RDprint1.Novapagina;
   form_impres_Mfor01.mlin:=0;
   end;
if form_impres_Mfor01.mlin=0 then
   begin
   form_impres_Mfor01.mpag:=form_impres_Mfor01.mpag+1;
   form_impres_Mfor01.mlin:=1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',80)+'Pagina....: '+FormatFloat('0000',form_impres_Mfor01.mpag),m12ccp);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2('Composicao de Precos de Produto.',' ',80)+'Data: '+FormatDateTime(fdt2, date),m12ccp);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2('=','=',96),m12ccp);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',FloatToStr(pCodpro));
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,Centra(FloatTostr(pCodpro)+'-'+DM1.Query1.Fields[0].AsString,' ',96),mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2('=','=',96),m12ccp);
   if ptipo=0 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo de Fabricacao do Produto',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total',mreduz);
      end
   else if ptipo=1 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo do Envase do Produto',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total',mreduz);
      end
   else if ptipo=2 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Custo do Produto:',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
      end
   else if ptipo=3 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Preco de Venda:',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
      end;
   end
else if ptipo=11 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo do Envase do Produto',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total',mreduz);
   end
else if ptipo=12 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Custo do Produto:',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
   end
else if ptipo=13 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Preco de Venda:',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
   end;

result:=True;
end;

Function TFrm_MFor01.fPcusCab_Cus(ptipo: Integer;pCodpro,pCodFormula: Real): Boolean;
begin
if form_impres_Mfor01.mlin>58 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Continua...',m12ccp);
   form_impres_Mfor01.RDprint1.Novapagina;
   form_impres_Mfor01.mlin:=0;
   end;
if form_impres_Mfor01.mlin=0 then
   begin
   form_impres_Mfor01.mpag:=form_impres_Mfor01.mpag+1;
   form_impres_Mfor01.mlin:=1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',80)+'Pagina....: '+FormatFloat('0000',form_impres_Mfor01.mpag),m12ccp);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2('Composicao do Produto.',' ',80)+'Data: '+FormatDateTime(fdt2, date),m12ccp);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2('=','=',96),m12ccp);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',FloatToStr(pCodpro));
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,Centra(FloatTostr(pCodpro)+'-'+DM1.Query1.Fields[0].AsString,' ',96),mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,insere2('=','=',96),m12ccp);
   if ptipo=0 then
      begin
      if pCodFormula<>0 then
         begin
         form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
         if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',FloatToStr(pCodFormula)) then
            form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Formula: '+FloatToStr(pCodFormula)+'-'+DM1.Query1.Fields[0].AsString ,mneg)
         else
            form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Formula: '+FloatToStr(pCodFormula)+'-'+' Produto Excluido' ,mneg)
         end;
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo de Fabricacao do Produto',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total',mreduz);
      end
   else if ptipo=1 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo do Envase do Produto',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total',mreduz);

//Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total
//12345678901234  a23456789  123   1234567890123456789012345678901234567890  a2345678901234    123.12    a2345678901234  a2345678901234


      end
   else if ptipo=2 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Custo do Preco de Compra do Produto:',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
      end

   else if ptipo=3 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Custo do Produto:',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
      end

   else if ptipo=4 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Preco de Venda:',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
      end
   else if ptipo=5 then
      begin
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao dos Encargos do Produto:',mneg);
      form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
      form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
      end;
   end
else if ptipo=11 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Custo do Envase do Produto',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo          Quantidad  Und   Descricao do Produto                      Preco Unitario Icms Credito Valor do Icms      Valor Total',mreduz);
   end

else if ptipo=12 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Preco de Compra do Produto:',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
   end
else if ptipo=13 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Custo do Produto:',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
   end
else if ptipo=14 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Preco de Venda:',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
   end
else if ptipo=15 then
   begin
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+2;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Composicao do Encargos:',mneg);
   form_impres_Mfor01.mlin:=form_impres_Mfor01.mlin+1;
   form_impres_Mfor01.RDprint1.ImpF(form_impres_Mfor01.mlin,01,'Codigo Descricao                         %    Fator           Valor    Acumulado',mnormal);
   end;

result:=True;
end;

procedure TFrm_MFor01.bbImpCompClick(Sender: TObject);
begin
fPcusImprime(2,ValFloat(CODPRO.Text),ValFloat(TOTAL.Text),mqtdGrml,Trim(numero.Text) );
end;

procedure TFrm_MFor01.PCOMINExit(Sender: TObject);
begin
PCOMIN.Text:=FormatFloat(mcasaspu, ValFloat(PCOMIN.Text));
fcalccus(0);

end;

procedure TFrm_MFor01.INCPMINExit(Sender: TObject);
begin
INCPMIN.Text:=FormatFloat(mcasaspu,ValFloat(INCPMIN.Text));
fcalccus(0);

end;

procedure TFrm_MFor01.numeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
   flcadlgc(0,0,0,fdeixanum(CODPRO.Text),'','');
   Frm_Conslot.CODPRO.Text:=CODPRO.Text;
   Frm_ConsLot.NOMPRO.Text:=NOMPRO.Text;
   Frm_ConsLot.CODPRO.Enabled:=True;
   if valint(copy(mpseg,4,2))=2 then
      begin
      Frm_ConsLot.Caption:='Consulta no arquivo de Grades';
      Frm_ConsLot.DBGrid1.Columns[0].Visible:=false;
      Frm_ConsLot.DBGrid1.Columns[1].Title.Caption:='Grade';
      end;
   Frm_ConsLot.mConsLotOrigem:=1;
   Frm_ConsLot.ShowModal;
   if trim(Frm_ConsLot.plote)<>'' then
      numero.Text:=Frm_ConsLot.plote;
   FreeAndNil(Frm_Conslot);

   end;

end;

procedure TFrm_MFor01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if mform_pcus<>nil then
   freeandnil(mform_pcus);

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_MFor01.DBGrid1ColExit(Sender: TObject);
begin
if Tb_Comp.State in [dsInsert,dsEdit] then
   begin
   if (Tb_CompCPPU.AsFloat>0) and (Tb_CompCPALICMSCRED.AsFloat>0)
      and (Tb_CompCPQUANT.AsFloat>0) then
      begin
      Tb_CompCPALIQORI.Value:=DM1.Tb_ProPDICMSCRED.Value;
      Tb_CompCPICMSCRED.Value:=Arredonda( Tb_CompCPPU.Value*Tb_CompCPQUANT.Value ,DM1.Tb_PargerPCASPUIND.AsInteger);
      Tb_CompCPICMSCRED.Value:=Arredonda( ((Tb_CompCPICMSCRED.Value*Tb_CompCPALICMSCRED.Value)/100),DM1.Tb_PargerPCASPUIND.AsInteger);
      end
   else
      Tb_CompCPICMSCRED.Value:=0;
   if (DBGrid1.SelectedField=Tb_CompCPCODMAT) then
      begin
      if not flcadpro(1,0,0,Tb_CompCPCODMAT.AsString) then
         begin
         FMensagem('Matéria Prima não Cadastrada!',0,['0'],0);
         Abort;
         exit;
         end
      else
         begin
         if DM1.Tb_ProPDPRECOC.Asfloat=0 then
            Tb_CompCPPU.Value        :=DM1.Tb_ProPDPCOFAB.Value
         else
            Tb_CompCPPU.Value        :=DM1.Tb_ProPDPRECOC.Value;
         Tb_CompCPALICMSCRED.Value:=DM1.Tb_ProPDICMSCRED.Value;
         Tb_CompCPALIQORI.Value:=DM1.Tb_ProPDICMSCRED.Value;
         end
      end
   else if (DBGrid1.SelectedField=Tb_CompCPMPNUM) then
      begin
      if not flcadlgc(0,1,0,Tb_CompCPCODMAT.AsString,Tb_CompCPMPNUM.AsString,'') then
         begin
         FMensagem('Grade Não cadastrada!',0,['0'],0);
         DBGrid1.SelectedField:=Tb_CompCPCODMAT;
         Tb_CompCPMPNUM.Value:='';
         Abort;
         exit;
         end;
      end
   else if (DBGrid1.SelectedField=Tb_CompCPPU) then
      begin
      if Tb_CompCPCODMAT.Value<>DM1.Tb_ProPDCODPRO.Value then
         flcadpro(1,0,0,Tb_CompCPCODMAT.AsString);
      Tb_CompCPVLRINC.Value:=DM1.Tb_ProPDVLRINC.Value;
      if DM1.Tb_ProPDVLRINC.Value=Tb_CompCPPU.Value then
         begin
         Tb_CompCPALICMSCRED.Value:=DM1.Tb_ProPDICMSCRED.Value;
         Tb_CompCPALIQORI.Value:=DM1.Tb_ProPDICMSCRED.Value;
         end
      else
         begin
         if (DM1.Tb_ProPDVLRINC.AsFloat<>0) and (DM1.Tb_ProPDICMSCRED.AsFloat<>0)
            and (Tb_CompCPPU.AsFloat<>0) then
            begin
            Tb_CompCPICMSCRED.Value:=DM1.Tb_ProPDVLRINC.Value*DM1.Tb_ProPDICMSCRED.AsFloat/100;
            Tb_CompCPALICMSCRED.Value:=Arredonda( (Tb_CompCPICMSCRED.Value*100)/Tb_CompCPPU.Value ,2);
            Tb_CompCPALIQORI.Value:=DM1.Tb_ProPDICMSCRED.Value;
            end;
         end;
      Tb_CompCPICMSCRED.Value:=Arredonda( Tb_CompCPPU.Value*Tb_CompCPQUANT.Value ,DM1.Tb_PargerPCASPUIND.AsInteger);
      Tb_CompCPICMSCRED.Value:=Arredonda( ((Tb_CompCPICMSCRED.Value*Tb_CompCPALICMSCRED.Value)/100),DM1.Tb_PargerPCASPUIND.AsInteger);
      end;
   end;

end;

procedure TFrm_MFor01.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   begin
   if (DBGrid1.SelectedField=Tb_CompCPQUANT) or
      (DBGrid1.SelectedField=Tb_CompCPPU) or
      (DBGrid1.SelectedField=Tb_CompCPALICMSCRED) or
      (DBGrid1.SelectedField=Tb_CompCPICMSCRED) then
       key:=DecimalSeparator;
   end
else if Tb_Comp.State in [dsEdit,dsInsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if (DBGrid1.SelectedField=Tb_CompCPCODMAT) then
         begin
//         DM1.Tb_Pro.Filter  :='PDNIVEL>0';
//         DM1.Tb_Pro.Filtered:=True;
         Consultando:=true;
         Tb_CompCPCODMAT.Value:=ValFloat(fChamaPro(0,'Frm_MFor01',key));
         DBGrid1.SelectedField:=Tb_CompCPCODMAT;
         DBGrid1.SetFocus;
         Consultando:=false;
         key:=#0;
         DM1.Tb_Pro.Filter  :='';
         DM1.Tb_Pro.Filtered:=False;
         end;
      end;
   end;
end;
procedure TFrm_MFor01.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Tb_Comp.State in [dsEdit,dsInsert]) and
   (DBGrid1.SelectedField=Tb_CompCPMPNUM) and (key=113) and (Tb_CompCPCODMAT.AsFloat<>0) then
   begin
   Application.CreateForm(TFrm_ConsLot,Frm_ConsLot);
   flcadlgc(0,0,0,Tb_CompCPCODMAT.AsString,'','');
   Frm_Conslot.CODPRO.Text:=Tb_CompCPCODMAT.AsString;
   Frm_ConsLot.NOMPRO.Text:=Tb_Compnommat.AsString;
   Frm_ConsLot.CODPRO.Enabled:=True;
   if valint(copy(mpseg,4,2))=2 then
      begin
      Frm_ConsLot.Caption:='Consulta no arquivo de Grades';
      Frm_ConsLot.DBGrid1.Columns[0].Visible:=false;
      Frm_ConsLot.DBGrid1.Columns[1].Title.Caption:='Grade';
      end;
   Frm_ConsLot.mConsLotOrigem:=1;
   Frm_ConsLot.ShowModal;
   if trim(Frm_ConsLot.plote)<>'' then
      begin
      Tb_CompCPMPNUM.AsString:=Frm_ConsLot.plote;
      end;
   FreeAndNil(Frm_Conslot);
   end;
end;

procedure TFrm_MFor01.Tb_CompAfterInsert(DataSet: TDataSet);
begin
mQuant_ant   :=0;
mtotliq_ant  :=0;
mIcmsCred_Ant:=0;

Tb_CompCPORDEM.AsInteger  :=mOrdem;
Tb_CompCPCODEMP.Value     :=codemp;
Tb_CompCPCODPRO.Value     :=ValFloat(CODPRO.Text);
Tb_CompCPNUMERO.Value     :=numero.Text;
Tb_CompCPCODPRO_ACAB.Value:=0;

moper:=0;
end;

procedure TFrm_MFor01.Tb_CompAfterEdit(DataSet: TDataSet);
begin
moper:=1;
mQuant_ant   :=Tb_CompCPQUANT.Value;
mtotliq_ant  :=Tb_Comptotalliq.Value;
mIcmsCred_Ant:=Tb_CompCPICMSCRED.Value;

end;

procedure TFrm_MFor01.Tb_CompBeforeDelete(DataSet: TDataSet);
begin
QTDU.Text       :=FormatFloat(mcasind, valfloat(QTDU.Text)-Tb_CompCPQUANT.Value);
QTDIT.Text      :=FormatFloat('#0', ValFloat(QTDIT.Text)-1);
TOTICMSCRED.Text:=FormatFloat(mcasas, ValFloat(TOTICMSCRED.Text)-Tb_CompCPICMSCRED.AsFloat);
TOTAL.Text      :=FormatFloat(mcasind, ValFloat(TOTAL.Text)-Tb_comptotalliq.asFloat);
fcalccus(0);
end;

procedure TFrm_MFor01.Tb_CompCalcFields(DataSet: TDataSet);
begin
Tb_Comptotalliq.Value:=Tb_CompCPQUANT.AsFloat*Tb_CompCPPU.AsFloat;
Tb_Comptotal.Value   :=Tb_CompCPQUANT.AsFloat*Tb_CompCPPU.AsFloat;
Tb_Comptotalliq.Value:=Tb_Comptotalliq.AsFloat-Tb_CompCPICMSCRED.AsFloat;
if Trim(Tb_CompCPCODMAT.AsString)<>'' then
   begin
   if flcadpro(1,0,0,Tb_CompCPCODMAT.AsString) then
      begin
      Tb_Compnommat.Value:=DM1.Tb_ProPDNOME.Value;
      Tb_Compund.Value   :=DM1.Tb_ProPDUND.Value;
      end;
   end;
Tb_CompCPQUANT.DisplayFormat   :=mcasind;
Tb_CompCPPU.DisplayFormat      :=mcasind;
Tb_Comptotal.DisplayFormat     :=mcasind;
Tb_Comptotalliq.DisplayFormat  :=mcasind;

end;

procedure TFrm_MFor01.Tb_CompAfterCancel(DataSet: TDataSet);
begin
mQuant_ant   :=0;
mtotliq_ant  :=0;
mIcmsCred_Ant:=0;
moper        :=0;

end;

procedure TFrm_MFor01.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   FMensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_MFor01.Tb_CompBeforePost(DataSet: TDataSet);
begin
if Tb_CompCPCODMAT.Isnull then
   begin
   Tb_Comp.Cancel;
   Abort;
   exit;
   end;
if Tb_CompCPQUANT.AsFloat<=0 then
   begin
   FMensagem('Favor Selecionar uma Quantidade válida!',0,['0'],0);
   DBGrid1.SelectedField:=Tb_CompCPQUANT;
   abort;
   exit;
   end;

if not flcadpro(1,0,0,Tb_CompCPCODMAT.AsString) then
   begin
   FMensagem('Favor Selecionar um Código de Matéria Prima Válido!',0,['0'],0);
   DBGrid1.SelectedField:=Tb_CompCPCODMAT;
   abort;
   exit;
   end;


if Valint(copy(mpseg,4,2))=02 then
   begin
   if not flcadlgc(0,1,0,Tb_CompCPCODMAT.AsString,Tb_CompCPMPNUM.AsString,'') then
      begin
      FMensagem('Favor Selecionar uma Grade Válida!',0,['0'],0);
      DBGrid1.SelectedField:=Tb_CompCPCODMAT;
      abort;
      exit;
      end;
   end;
if moper=0 then
   begin
   QTDIT.Text      :=FormatFloat('#0', ValFloat(QTDIT.Text)+1);
   mOrdem:=mOrdem+1;
   end
else
   begin
   QTDU.Text       :=FormatFloat(mcasind, valfloat(QTDU.Text)-mQuant_ant);
   TOTICMSCRED.Text:=FormatFloat(mcasas, ValFloat(TOTICMSCRED.Text)-mIcmsCred_Ant);
   TOTAL.Text      :=FormatFloat(mcasind, ValFloat(TOTAL.Text)-mtotliq_ant);
   end;

QTDU.Text       :=FormatFloat(mcasind, valfloat(QTDU.Text)+Tb_CompCPQUANT.Value);
TOTICMSCRED.Text:=FormatFloat(mcasas, ValFloat(TOTICMSCRED.Text)+Tb_CompCPICMSCRED.AsFloat);
TOTAL.Text      :=FormatFloat(mcasind, ValFloat(TOTAL.Text)+Tb_comptotalliq.asFloat);
fcalccus(0);

moper:=0;

end;

procedure TFrm_MFor01.DBGrid1Exit(Sender: TObject);
begin

if (Tb_Comp.State in [dsEdit, dsInsert]) and not (Consultando) then
   begin
   if (Tb_CompCPCODPRO.AsFloat>0) and
      (Tb_CompCPQUANT.AsFloat>0) then
      Tb_Comp.Post
   else
      Tb_Comp.Cancel;
   end;
end;

procedure TFrm_MFor01.CODPROExit(Sender: TObject);
begin
NOMPRO.clear;
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if (bbSair.Focused) or (trim(CODPRO.Text)='') then
   exit;
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   FMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end
else
   begin
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   mqtdGrml:=DM1.Tb_ProPDQTDGRML.Value;
   MTEMPO.Text :=FormatDateTime('hh:nn',DM1.Tb_ProPDTEMPOFAB.Value);
   MPESOL.Text :=FormatFloat('##0.000',DM1.Tb_ProPDPESOL.Value);
   end;

end;

procedure TFrm_MFor01.numeroExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
if Trim(numero.Text)<>'' then
   begin
   if not flcadlgc(0,1,0,CODPRO.Text,numero.Text,'') then
      begin
      FMensagem('Grade Não cadastrada!',0,['0'],0);
      numero.SetFocus;
      end;
   end;


end;

procedure TFrm_MFor01.CODPROEnter(Sender: TObject);
begin
if Tb_Comp.Active then  Tb_Comp.Close;
end;

procedure TFrm_MFor01.numeroEnter(Sender: TObject);
begin
if Tb_Comp.Active then  Tb_Comp.Close;
end;

procedure TFrm_MFor01.bbAtuMatPrimClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Atualizar os Preços das Matérias Primas?',0,['1','2'],2)<>mrYes then
  exit;
if bbGravar.Enabled then
  bbGravar.Click;

if Tb_Comp.Active then
  Tb_Comp.Close;

fAtualizarFormulas(1,cb_pcoven.Checked);

verteclado(0);

FMensagem('Registros Atualizado!',0,['0'],0);



end;

procedure TFrm_MFor01.bbExportarClick(Sender: TObject);
begin
   if FSoNumero(CODPRO.Text)=0 then begin
      FMensagem('Favor Selecionar um ítem para ser a matriz!',0,['0'],0);
      exit;
   end;

   if not flcadpro(1,0,0,CODPRO.Text) then begin
      FMensagem('Favor Selecionar um ítem para ser a matriz!',0,['0'],0);
      exit;
   end;


   Application.CreateForm(TFrm_Mfor01_Cons, form_mFor01_Cons_Mfor01);
   mfor01_origem:=1;
   mCodpro_Ori:=DM1.Tb_ProPDCODPRO.AsString;

   if DM1.Tb_ProPDCODFOR.AsFloat<>0 then
      form_mFor01_Cons_Mfor01.Lbx_CodFor.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODFOR.Value)
                                          +' - '+DM1.Tb_ProPDNOMFOR.AsString);
   if DM1.Tb_ProPDCODGRU.AsFloat<>0 then
      form_mFor01_Cons_Mfor01.Lbx_CodGru.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODGRU.Value)
                                          +' - '+DM1.Tb_ProPDNOMGRU.AsString);

   if DM1.Tb_ProPDCODTIP.AsFloat<>0 then
      form_mFor01_Cons_Mfor01.Lbx_CodTPro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODTIP.Value)
                                           +' - '+DM1.Tb_ProPDNOMTIP.AsString);
                             
   form_mFor01_Cons_Mfor01.Caption           :='Exportar Configurações de Custo';
   form_mFor01_Cons_Mfor01.bbExecutar.Caption:='&Exportar';
   form_mFor01_Cons_Mfor01.bbAplicar.Click;
   form_mFor01_Cons_Mfor01.ShowModal;
   form_mFor01_Cons_Mfor01.Free;
end;

function  TFrm_MFor01.fAtualizarFormulas(pTipo: Integer; cb_pcoven: boolean): Boolean;
begin
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Ajustando os Preços das Matérias Primas!, aguarde...';
verteclado(0);
Frm_Agde.Show;
Frm_Agde.Update;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCOMP set CPPU=(Select  DECODE( '
                  +' PDPRECOC,0, '
                  +' DECODE(NVL(PDUCPR,0),0, '
                  +' NVL(PDPCOFAB,0),NVL(PDUCPR,0)),PDPRECOC)  from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODMAT )');
DM1.Query1.sql.Add(' WHERE EXISTS (Select DECODE(PDPRECOC,0,PDPCOFAB,PDPRECOC) from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODMAT )');

if not DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
   DM1.Query1.Sql.add(' and CPCODEMP=0'+IntTostr(codemp));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCOMP set CPVLRINC=(Select PDVLRINC from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODMAT )');
DM1.Query1.Sql.add(' where exists (Select PDVLRINC from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODMAT )');

if not DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
   DM1.Query1.Sql.add(' and CPCODEMP=0'+IntTostr(codemp));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCOMP set CPALIQORI=(Select PDICMSCRED from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODMAT )');
DM1.Query1.sql.add(' where exists (Select PDICMSCRED from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CPCODMAT )');
if not DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
   DM1.Query1.Sql.add(' and CPCODEMP=0'+IntTostr(codemp));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCOMP set CPALICMSCRED=ROUND( ( ( ( (CPVLRINC*CPALIQORI)/100 ) * 100 ) / CPPU) ,2) '
                  +' where '
                  +iif( DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntTostr(codemp)+'and ')
                  +' CPVLRINC<>0 and not CPVLRINC is null AND CPALIQORI<>0 and not CPALIQORI is null ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCOMP set CPALICMSCRED=0 '
                  +' where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntTostr(codemp)+'and ')
                  +' CPVLRINC=0 OR CPVLRINC is null or CPALIQORI=0 or CPALIQORI is null ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCOMP set CPICMSCRED=ROUND(  (ROUND( CPQUANT*CPPU ,'+DM1.Tb_PargerPCASPUIND.AsString+' )'
                                                 +' * CPALICMSCRED /100 ) ,'+DM1.Tb_PargerPCASPUIND.AsString+' )'
                  +' where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntTostr(codemp)+' and ')
                  +' CPALICMSCRED<>0 and not CPALICMSCRED is null ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADPRO set PDPRECOC=PDPCOFAB where '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP='+IntToStr(codemp)+' and ')
                  +' (PDNIVEL=0)'); // somente produtos acabado
//                  +' (PDNIVEL>2)');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;


if cb_pcoven=True then
   begin

   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.add('Update CADPRO set PDTEMFORMULA=0 '
                    +' where PDTEMFORMULA=1');
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     FMensagem('Erro 2200 ao Atualizar Formulas!',0,['0'],0);
     exit;
     end;


   DM1.Query1.Close;
   DM1.Query1.sql.clear;
   DM1.Query1.sql.add('Update CADPRO set PDTEMFORMULA=1 '
                    +' where EXISTS '
                    +' (Select CPCODPRO from CADCOMP '
                    +' where CPCODPRO=PDCODPRO '
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and CPCODEMP=PDCODEMP ')
                    +') ');
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     FMensagem('Erro 2200 ao Atualizar Formulas!',0,['0'],0);
     exit;
     end;



   DM1.Query1.Close;
   DM1.Query1.sql.Clear;
   DM1.Query1.sql.Add('Update CADCUS2 set CUINCPCOMIN=round( (CUPCOMIN*'
                    +mudavp(FloattoStr(mAliqDeb))+'/100),3)'
                    +' where CUPCOMIN<>0 ');
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     FMensagem('Erro 2200 ao Atualizar Formulas!',0,['0'],0);
     exit;
     end;


   DM1.Query1.Close;
   DM1.Query1.sql.Clear;
   DM1.Query1.sql.Add('Update CADCUS2 set CUINCPCOMIN=0 '
                    +' where CUPCOMIN=0 AND CUINCPCOMIN<>0 ');
   try
     DM1.Query1.ExecSQL;
     fdm1StartCommit;
   except
     DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     FMensagem('Erro 2200 ao Atualizar Formulas!',0,['0'],0);
     exit;
     end;

//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql01.txt');

// TERMINO VALOR DE INCIDENCIA
// ATUALIZANDO O PRECO DE FABRICACAO OU DE COMPRA
  if DM1.Tb_PargerPINDUSTRIA.Value=2 then
//  if DM1.Tb_PargerPINDUSTRIA.Value<3 then
    begin
    DM1.Query1.Close;
    DM1.Query1.sql.Clear;
    DM1.Query1.sql.Add('Update CADCUS2 set CUPCOFAB=( Select sum('
                      +' ROUND( (CPQUANT*CPPU) '
                      +' - CPICMSCRED ,'+DM1.Tb_PargerPCASPUIND.AsString+' )) as VLRLIQ from CADCOMP where '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CPCODEMP=CUCODEMP and ')
                      +' CPCODPRO=( SELECT max(CPCODPRO) from CADCOMP where '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CPCODEMP=CUCODEMP and ')
                      +' CPCODPRO_ACAB=CUCODIGO ) '
                      +'  AND CPCODPRO_ACAB=0 ) '
                      +' where '
                      +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                      +' CUTIPO=0 ');
    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
//    DM1.Query1.sql.savetoFile(mpastatemp + 'sql02.txt');
    DM1.Query1.Close;
    DM1.Query1.sql.Clear;
    DM1.Query1.sql.Add('Update CADCUS2 set CUPCOFAB=ROUND(  CUPCOFAB / ( Select sum('
                      +'  DECODE(CP_MEDUND,0,1,CP_MEDUND)  ) as VLRLIQ from CADPROC02 where '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CP_CODEMP=CUCODEMP and ')
                      +' CP_CODPRO=CUCODIGO ),  '+DM1.Tb_PargerPCASPUIND.AsString+' )'
                      +' where '
                      +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                      +' CUTIPO=0 AND CUPCOFAB<>0 ');
    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
// SE FOR ATUALIZAR ENVASE É ESTA FASE

    DM1.Query1.close;
    DM1.Query1.Sql.clear;
    DM1.Query1.Sql.Add('update CADPRO SET PDCUSFAB=(Select max(CUPCOFAB) from '
                      +' CADCUS2 where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUCODEMP=PDCODEMP and ')
                     +' CUCODIGO=PDCODPRO ) '
                     +' where '
                     +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP='+IntToStr(codemp)+' and ')
                     +' (PDNIVEL=0 OR PDNIVEL=3)'
                     +' and PDTEMFORMULA=1 '
                     );
    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2117 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
//    DM1.Query1.sql.savetoFile(mpastatemp + 'sql04.txt');


    DM1.Query1.Close;
    DM1.Query1.sql.Clear;
    DM1.Query1.sql.Add('Update CADCUS2 set CUPCOFAB= CUPCOFAB + ( Select sum('
                      +' ROUND( CPQUANT*CPPU ,'+DM1.Tb_PargerPCASPUIND.AsString+' )'
                      +' - CPICMSCRED ) as VLRLIQ from CADCOMP where '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CPCODEMP=CUCODEMP and ')
                      +' CPCODPRO_ACAB=CUCODIGO ) '
                      +' where '
                      +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                      +' CUTIPO=0 ');
    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
//    DM1.Query1.sql.savetoFile(mpastatemp + 'sql05.txt');


    DM1.Query1.close;
    DM1.Query1.Sql.clear;
    DM1.Query1.Sql.Add('update CADPRO SET PDCUSENV=(Select max(CUPCOFAB) from '
                      +' CADCUS2 where '+iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUCODEMP=PDCODEMP and ')
                      +' CUCODIGO=PDCODPRO ) where '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP='+IntToStr(codemp)+' and ')
                      +' (PDNIVEL=0 OR PDNIVEL=3)'
                      +' and PDTEMFORMULA=1 '
                      );
    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2117 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
//    DM1.Query1.sql.savetoFile(mpastatemp + 'sql06.txt');

    end
  else
    begin
    DM1.Query1.Close;
    DM1.Query1.sql.Clear;
    DM1.Query1.sql.Add('Update CADCUS2 set CUPCOFAB=( Select sum('
                      +' ROUND( CPQUANT*CPPU ,'+DM1.Tb_PargerPCASPUIND.AsString+' )'
                      +' - CPICMSCRED ) as VLRLIQ from CADCOMP where '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CPCODEMP=CUCODEMP and ')
                      +' CPCODPRO=CUCODIGO ) '
                      +' where '
                      +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                      +' CUTIPO=0 ');
    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
//    DM1.Query1.sql.savetoFile(mpastatemp + 'sql07.txt');

    DM1.Query1.close;
    DM1.Query1.Sql.clear;
    DM1.Query1.Sql.Add('update CADPRO SET PDCUSFAB=(Select max(CUPCOFAB) from '
                      +' CADCUS2 where '+iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUCODEMP=PDCODEMP and ')
                      +' CUCODIGO=PDCODPRO) '
                      +' where '+iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP='+IntToStr(codemp)+' and ')
                      +' (PDNIVEL=0 OR PDNIVEL=3)'
                      +' and PDTEMFORMULA=1 '
                      );

    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2117 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
//    DM1.Query1.sql.savetoFile(mpastatemp + 'sql08.txt');

    end;
  // ATUALIZANDO A BASE DE CALCULO PARA CALCULAR OS CUSTOS
  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS set CUBASECALC=( Select max(ROUND(CUPCOFAB,'+DM1.Tb_PargerPCASPUIND.AsString+') )'
                    +'  from CADCUS2 CUS2 where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUS2.CUCODEMP=CADCUS.CUCODEMP and ')
                    +' CUS2.CUCODIGO=CADCUS.CUCODIGO and CUS2.CUTIPO=CADCUS.CUTIPO ) where '
                    +iif(DM1.Qr_Tid.locate('TINOME','CADCUS',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                    +' CUOPCIO=0 and CUTIPO=0 ');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
     DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
     exit;
     end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql09.txt');

  // CALCULANDO OS VALORES DOS CUSTOS
  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS set CUVALOR=ROUND(  ((CUBASECALC*CUPERC) / 100) , '+IntToStr(mcasqtdccus)+')'
                    +' where '+iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and  ')
                    +' CUOPCIO=0 and CUTIPO=0 and CUBASECALC<>0 and not CUBASECALC is null '
                    +' and CUPERC<>0 and not CUPERC is null ');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2181 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql10.txt');

// ATUALIZANDO O PRECO DE CUSTO

  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS2 CUS2 set CUPCOCUS=decode(CUPCOFAB,null,0,CUPCOFAB)+ '
                    +'  DECODE(CUINCPCOMIN,NULL,0,CUINCPCOMIN) + '
                    +'   ( Select ROUND( sum('
                     +'  CUVALOR),'+DM1.Tb_PargerPCASPUIND.AsString+' )'
                      +' from CADCUS CUS where '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADCUS',[]),'',' CUS.CUCODEMP=CUS2.CUCODEMP and ')
                      +' CUS.CUCODIGO=CUS2.CUCODIGO AND CUS.CUOPCIO=0 ) '
                      +iif(DM1.Qr_tid.Locate('TINOME','CADCUS',[]),'',' WHERE CUS2.CUCODEMP=0'+IntToStr(codemp)));



    try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
    except
      DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
      exit;
      end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql111.txt');


{

  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS2 set CUPCOCUS=round(decode(CUPCOFAB,null,0,CUPCOFAB)+decode(CUINCPCOMIN,null,0,CUINCPCOMIN)+'
                    +' DECODE(( Select sum(CUS.CUVALOR) FROM CADCUS CUS where  '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCUS2',[]),'',' CUS.CUCODEMP=CADCUS2.CUCODEMP and ')
                    +' CUS.CUCODIGO=CADCUS2.CUCODIGO and CUS.CUOPCIO=1 and CUS.CUTIPO=CADCUS2.CUTIPO),null,0,'
                    +' (Select sum(CUS.CUVALOR) FROM CADCUS CUS where  '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCUS2',[]),'',' CUS.CUCODEMP=CADCUS2.CUCODEMP and ')
                    +' CUS.CUCODIGO=CADCUS2.CUCODIGO and CUS.CUOPCIO=1 and CUS.CUTIPO=CADCUS2.CUTIPO)) '
                    +' ,'+DM1.Tb_PargerPCASPUIND.AsString+') where '
                    +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                    +' CUTIPO=0  ');
  DM1.Query1.sql.savetoFile(mpastatemp + 'sql11.txt');

  try
    DM1.Query1.ExecSQL;
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2200 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
}
// VALOR DE INCIDENCIA
// PRECO DE CUSTO
  DM1.Query1.close;
  DM1.Query1.Sql.clear;
  DM1.Query1.Sql.Add('update CADPRO SET PDCUSFIN=(Select max(CUPCOCUS) from '
                    +' CADCUS2 where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUCODEMP=PDCODEMP and ')
                    +' CUCODIGO=PDCODPRO ) '
                    +' where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP='+IntToStr(codemp)+' and ')
                    +' (PDNIVEL=0 OR PDNIVEL=3)'
                    +' and PDTEMFORMULA=1 '
                    );
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2117 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql12.txt');

// TERMINO CUSTO
// ATUALIZANDO A BASE DE CALCULO PARA CALCULAR OS valores DE VENDA

  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS set CUBASECALC=( Select max(CUPCOCUS) from CADCUS2 CUS2 where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUS2.CUCODEMP=CADCUS.CUCODEMP and ')
                    +' CUS2.CUCODIGO=CADCUS.CUCODIGO and CUS2.CUTIPO=CADCUS.CUTIPO) where '
                    +iif(DM1.Qr_Tid.locate('TINOME','CADCUS',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                    +' CUOPCIO=1 and CUTIPO=0 ');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql13.txt');

// ATUALIZANDO A BASE DE CALCULO PARA CALCULAR OS PRECOS DE VENDAS

  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS set CUBASECALC=( Select max(CUPCOCUS) from CADCUS2 CUS2 where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUS2.CUCODEMP=CADCUS.CUCODEMP and ')
                    +' CUS2.CUCODIGO=CADCUS.CUCODIGO and CUS2.CUTIPO=CADCUS.CUTIPO ) where '
                    +iif(DM1.Qr_Tid.locate('TINOME','CADCUS',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                    +' CUOPCIO=1 and CUTIPO=0 ');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2147 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql14.txt');

// CALCULANDO OS VALORES DOS CUSTOS

  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS set CUVALOR=ROUND(  ((CUBASECALC*CUPERC) / 100) , '+IntToStr(mcasqtdccus)+')'
                    +' where '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCOMP',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and  ')
                    +' CUOPCIO=1 and CUTIPO=0 '
                    +' and CUBASECALC<>0 and not CUBASECALC is null '
                    +' and CUPERC<>0 and not CUPERC is null ');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2181 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql16.txt');

// ATUALIZANDO O PRECO DE VENDA 01

  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS2 set CUPCOVDA01=CUPCOCUS+ '
                    +' ( Select sum(ROUND(CUS.CUVALOR,'+DM1.Tb_PargerPCASPUIND.AsString+')) FROM CADCUS CUS where  '
                    +iif(DM1.Qr_tid.Locate('TINOME','CADCUS2',[]),'',' CUS.CUCODEMP=CADCUS2.CUCODEMP and ')
                    +' CUS.CUCODIGO=CADCUS2.CUCODIGO and CUS.CUOPCIO=1 and CUS.CUTIPO=CADCUS2.CUTIPO) where '
                    +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                    +' CUTIPO=0  ');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2200 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql17.txt');

// ATUALIZANDO O PRECO DE VENDA 02

  DM1.Query1.Close;
  DM1.Query1.sql.Clear;
  DM1.Query1.sql.Add('Update CADCUS2 set CUPCOVDA02=decode(CUACPCO2,0,CUPCOVDA01,CUPCOVDA01+round( (CUPCOVDA01*CUACPCO2/100), '+IntToStr(mQtdCas_arredpu)+'))');
  DM1.Query1.sql.Add('                  ,CUPCOVDA03=decode(CUACPCO3,0,CUPCOVDA01,CUPCOVDA01+round( (CUPCOVDA01*CUACPCO3/100), '+IntToStr(mQtdCas_arredpu)+'))');
  DM1.Query1.sql.Add(' where '
                    +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                    +' CUTIPO=0 ');
  try
    DM1.Query1.ExecSQL;
    fdm1StartCommit;
  except
    DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    FMensagem('Erro 2296 ao Atualizar Formulas!',0,['0'],0);
    exit;
    end;
//  DM1.Query1.sql.savetoFile(mpastatemp + 'sql18.txt');

  if ptipo=1 then
    begin
    Frm_Agde.Label1.Caption    :='Ajustando os Preços dos Produtos Acabados!, aguarde...';
    Frm_Agde.gb_progres.Visible:=true;
    Frm_Agde.Update;
    mplid:=0;
    DM1.Query4.Close;
    DM1.Query4.SQL.Clear;
    DM1.Query4.SQL.Add('Select CUCODEMP,CUPCOFAB,CUPCOCUS,CUPCOMIN,CUPCOVDA01,'
                      +'CUPCOVDA02,CUPCOVDA03,CUATUP01,CUATUP02,CUATUP03,CUCODIGO from CADCUS2,CADPRO ');




    mcinst:=' where ';
    if not DM1.Qr_TID.locate('TINOME','CADCUS2',[]) then
      begin
      DM1.Query4.SQL.Add(' WHERE CUCODEMP=0'+IntTostr(codemp)+' and PDCODEMP=CUCODEMP ');
      mcinst:=' and ';
      end;

    DM1.Query4.SQL.add(mcinst+' PDCODPRO=CUCODIGO');
    DM1.Query4.SQL.add(' and PDTEMFORMULA=1');

    DM1.Query4.open;
    mpqtd:=DM1.Query4.RecordCount;
    while not DM1.Query4.Eof do
      begin
      mplid:=mplid+1;
      Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
      Frm_Agde.Update;
      verteclado(0);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADPRO set PDPCOFAB=:PDPCOFAB' );
      DM1.Query1.SQL.Add('                 ,PDPRECOC=:PDPRECOC' );
      DM1.Query1.SQL.Add('                 ,PDUCPR=:PDUCPR' );
      DM1.Query1.SQL.Add('                 ,PDVLRINC=:PDVLRINC' );
      DM1.Query1.ParamByName('PDPCOFAB').AsFloat     :=DM1.Query4.FieldbyName('CUPCOFAB').AsFloat;
      DM1.Query1.ParamByName('PDPRECOC').AsFloat     :=DM1.Query4.FieldbyName('CUPCOCUS').AsFloat;
      DM1.Query1.ParamByName('PDUCPR').AsFloat       :=DM1.Query4.FieldbyName('CUPCOFAB').AsFloat;
      DM1.Query1.ParamByName('PDVLRINC').AsFloat     :=DM1.Query4.FieldbyName('CUPCOMIN').AsFloat;
      if DM1.Query4.FieldByName('CUATUP01').AsFloat=0 then
        begin
        DM1.Query1.SQL.Add('                 ,PDPRECOA1 =PDPRECO1' );
        DM1.Query1.SQL.Add('                 ,PDPRECO1  =:PDPRECO1' );
        DM1.Query1.SQL.Add('                 ,PDDTUATP1 =:PDDTUATP1' );
        DM1.Query1.SQL.Add('                 ,PDUSRALT1 =:PDUSRALT1' );
        DM1.Query1.ParamByName('PDPRECO1').AsFloat    :=DM1.Query4.FieldbyName('CUPCOVDA01').AsFloat;
        DM1.Query1.ParamByName('PDDTUATP1').AsDateTime:=pdatasis;
        DM1.Query1.ParamByName('PDUSRALT1').AsFloat   :=codusr;
        end;
      if DM1.Query4.FieldByName('CUATUP02').AsFloat=0 then
        begin
        DM1.Query1.SQL.Add('                 ,PDPRECOA2 =PDPRECO2' );
        DM1.Query1.SQL.Add('                 ,PDPRECO2  =:PDPRECO2' );
        DM1.Query1.SQL.Add('                 ,PDDTUATP2 =:PDDTUATP2' );
        DM1.Query1.SQL.Add('                 ,PDUSRALT2 =:PDUSRALT2' );
        DM1.Query1.ParamByName('PDPRECO2').AsFloat    :=DM1.Query4.FieldbyName('CUPCOVDA02').AsFloat;
        DM1.Query1.ParamByName('PDDTUATP2').AsDateTime:=pdatasis;
        DM1.Query1.ParamByName('PDUSRALT2').AsFloat   :=codusr;
        end;
      if DM1.Query4.FieldByName('CUATUP03').AsFloat=0 then
        begin
        DM1.Query1.SQL.Add('                 ,PDPRECOA3 =PDPRECO3' );
        DM1.Query1.SQL.Add('                 ,PDPRECO3  =:PDPRECO3' );
        DM1.Query1.SQL.Add('                 ,PDDTUATP3 =:PDDTUATP3' );
        DM1.Query1.SQL.Add('                 ,PDUSRALT3 =:PDUSRALT3' );
        DM1.Query1.ParamByName('PDPRECO3').AsFloat    :=DM1.Query4.FieldbyName('CUPCOVDA03').AsFloat;
        DM1.Query1.ParamByName('PDDTUATP3').AsDateTime:=pdatasis;
        DM1.Query1.ParamByName('PDUSRALT3').AsFloat   :=codusr;
        end;
      if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
        begin
        DM1.Query1.SQL.Add(' where PDCODEMP=:PDCODEMP and ');
        DM1.Query1.ParambyName('PDCODEMP').AsFloat:=codemp;
        end
      else
        DM1.Query1.SQL.Add(' where ');
      DM1.Query1.SQL.Add(' PDCODPRO=:PDCODPRO ');
      DM1.Query1.ParambyName('PDCODPRO').AsFloat:=DM1.Query4.FieldbyName('CUCODIGO').AsFloat;
      DM1.Query1.SQL.Add(' and (PDNIVEL=0 OR PDNIVEL=4) ');
      try
        DM1.Query1.ExecSQL;
        fdm1StartCommit;
      except
        DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
        FMensagem('Erro 2296 ao Atualizar Formulas!',0,['0'],0);
        exit;
        end;
      DM1.Query4.Next;
      end;
    end;
  end;


{

CUPCOCUS+( Select sum(ROUND(CUS.CUVALOR,'+DM1.Tb_PargerPCASPUIND.AsString
                                              +') FROM CADCUS CUS where  '
                  +iif(DM1.Qr_tid.Locate('TINOME','CADCUS2',[]),'',' CUS.CUCODEMP=CADCUS2.CUCODEMP and ')
                  +' CUS.CUCODIGO=CADCUS2.CUCODIGO and CUOPCIO=1 and CUTIPO=0 ) where '
                  +iif(DM1.Qr_Tid.locate('TINOME','CADCUS2',[]),'',' CUCODEMP=0'+IntTosTr(codemp)+' and ')
                  +' CUTIPO=0 and CUOPCIO=1 ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   FMensagem('Erro 2200 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;


{
CREATE TABLE SGE.CADCUS (
  CUCODEMP NUMBER(10, 0),
  CUTIPO NUMBER(10, 0),
  CUCODIGO NUMBER(10, 0),
  CUCODPCU NUMBER(10, 0),
  CUPERC NUMBER(7, 3),
  CUVALOR NUMBER(*),
  CUBASECALC NUMBER(*),
  CUAPLS NUMBER(1, 0),
  CUFATOR NUMBER(1, 0),
  CUOPCIO NUMBER(1, 0)
)

CREATE TABLE SGE.CADCUS2 (
  CUCODEMP NUMBER(10, 0),
  CUTIPO NUMBER(10, 0),
  CUCODIGO NUMBER(10, 0),
  CUACPCO2 NUMBER(*),
  CUACPCO3 NUMBER(*),
  CUATUP01 NUMBER(2, 0),
  CUATUP02 NUMBER(2, 0),
  CUATUP03 NUMBER(2, 0),
  CUORIGEMPCO NUMBER(1, 0),
  CUPCOMIN NUMBER(*),
  CUINCPCOMIN NUMBER(*),
  CUPCOFAB NUMBER(*),
  CUPCOCUS NUMBER(*),
  CUPCOVDA01 NUMBER(*),
  CUPCOVDA02 NUMBER(*),
  CUPCOVDA03 NUMBER(*)
)


{

DM1.Query1.sql.Add('Update CADCOMP set CPPU=Select PDPCOFAB from CADPRO where '
         Tb_CompCPPU.Value        :=DM1.Tb_ProPDPCOFAB.Value;
         Tb_CompCPALICMSCRED.Value:=DM1.Tb_ProPDICMSCRED.Value;
  CPCODEMP NUMBER(10, 0) NOT NULL,
  CPORDEM NUMBER(10, 0) NOT NULL,
  CPCODPRO NUMBER(14, 0) NOT NULL,
  CPCODMAT NUMBER(14, 0) NOT NULL,
  CPQUANT NUMBER(20, 6) NOT NULL,
  CPPU NUMBER(20, 6) NOT NULL,
  CPNUMERO VARCHAR2(20),
  CPMPNUM VARCHAR2(20),
  CPCODPRO_ACAB NUMBER(14, 0),
  CPALICMSCRED NUMBER(*),
  CPICMSCRED NUMBER(*),
  CPVLRINC NUMBER(*)
)
}
Frm_Agde.Close;
Frm_Agde.Free;
Frm_Agde:=NIL;
end;


procedure TFrm_MFor01.MTEMPOExit(Sender: TObject);
var
mTempoFloat: Real;
begin
if trim(MTEMPO.Text)=':' then
   exit;

try
   MTEMPO.Text:=FormatDateTime('hh:nn',StrToTime(MTEMPO.Text));
except
   fmensagem('Hora Invalida!',0,['0'],0);
   MTEMPO.SetFocus;
   exit;
   end;
if ValFloat(CODPRO.Text)<>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select PDNOME,PDUND,PDQTDGRML,PDTEMPOFAB,PDPESOL from CADPRO where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDCODPRO=0'+Trim(CODPRO.Text));
   dm1.Query2.Open;
   if not DM1.Query2.IsEmpty then
      begin
      mTempoFloat:=StrtoTime(MTEMPO.Text+':00');
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADPRO set PDTEMPOFAB=:TEMPOFAB '
                        +' where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                        +' PDCODPRO=0'+Trim(CODPRO.Text));
      DM1.Query1.ParambyName('TEMPOFAB').AsFloat := mTempoFloat;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         Fmensagem('Erro 2941 ao atualizar a tabela de Produtos!',0,['0'],0);
         exit;
         end;
      end;
   end;

end;

procedure TFrm_MFor01.MPESOLExit(Sender: TObject);
begin
FormatFloat('##0.00', ValFloat(MPESOL.Text));

if ValFloat(CODPRO.Text)<>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select PDNOME,PDUND,PDQTDGRML,PDTEMPOFAB,PDPESOL from CADPRO where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntTostr(codemp)+' and ')
                     +' PDCODPRO=0'+Trim(CODPRO.Text));
   dm1.Query2.Open;
   if not DM1.Query2.IsEmpty then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update CADPRO set PDPESOL=:PESOL '
                        +' where '+iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+InttoStr(codemp)+' and ')
                        +' PDCODPRO=0'+Trim(CODPRO.Text));
      DM1.Query1.ParambyName('PESOL').AsFloat := ValFloat(MPESOL.Text);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         Fmensagem('Erro 2976 ao atualizar a tabela de Produtos!',0,['0'],0);
         exit;
         end;
      end;
   end;


end;

procedure TFrm_MFor01.CB_ATUACUSSELClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_MFOR01','CB_ATUACUSSEL');
fGravaPadroes(-1,'CB_ATUACUSSEL','checked','_MFOR01',iif(CB_ATUACUSSEL.Checked,'true','false'));


end;

procedure TFrm_MFor01.bb_salvamasterClick(Sender: TObject);
begin
pnl_master.Visible:=false;
fDeletaPadroes(0,'_MMFOR01','');
fGravaPadroes(0,'CB_PCOVEN','checked','_MMFOR01',iif(CB_PCOVEN.Checked,'true','false'));
fGravaPadroes(0,'CB_VCUSTOS','checked','_MMFOR01',iif(cb_vcustos.Checked,'true','false'));
fGravaPadroes(0,'EDT_ALIQ' ,'edittext','_MMFOR01',edt_aliq.Text);
bbAtualizarClick(self);
end;

procedure TFrm_MFor01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F7 then
  begin
  pnl_master.Visible:=True;
  gb_master.SetFocus;
  end;
if (Key=73) and (Shift=[ssctrl]) then
  begin
  if pnl_ccus.Visible=False then
    pnl_ccus.Visible:=True
  else
    pnl_ccus.Visible:=False;
  end;
end;

procedure TFrm_MFor01.edt_aliqExit(Sender: TObject);
begin
edt_aliq.Text:=formatFloat(mcasas_pct, ValFloat(edt_aliq.Text));
mAliqDeb:=ValFloat(edt_aliq.Text);
end;

procedure TFrm_MFor01.FormActivate(Sender: TObject);
begin
if codusr=1111 then
  cb_vcustos.Visible:=True
else
  cb_vcustos.Visible:=False;

pnl_ccus.Visible:=cb_vcustos.Checked;

end;

procedure TFrm_MFor01.cb_vcustosClick(Sender: TObject);
begin
pnl_ccus.Visible:=cb_vcustos.Checked;
end;

end.
