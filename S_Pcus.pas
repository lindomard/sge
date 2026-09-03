unit S_Pcus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, func, S_DM1, db, dbtables, S_Pro, S_DM2,
  Grids, Buttons,lerarq,S_Impres,S_DM3, Mask, ToolEdit, CurrEdit, S_Mfor01,
   S_MFor01_Cons;

type
  TFrm_Pcus = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Qr_Cus: TQuery;
    Qr_CusPCNOME: TStringField;
    Qr_CusPCAPLS: TFloatField;
    Qr_CusCUPERC: TFloatField;
    Qr_CusPCOPCIO: TFloatField;
    Qr_CusPCFATOR: TFloatField;
    Qr_Cusaplicar: TStringField;
    GroupBox5: TGroupBox;
    bbGravar: TBitBtn;
    bbAtuaPro: TBitBtn;
    bbExportar: TBitBtn;
    bbSair: TBitBtn;
    Qr_CusPCCODIGO: TFloatField;
    Atualizar: TBitBtn;
    CANCELAR: TBitBtn;
    bbImprimir: TBitBtn;
    StaticText1: TStaticText;
    PCOCOM: TStaticText;
    StaticText2: TStaticText;
    PCOCUS: TStaticText;
    PCOVEN: TStaticText;
    StaticText4: TStaticText;
    PCOVEN2: TStaticText;
    StaticText5: TStaticText;
    PCOVEN3: TStaticText;
    StaticText6: TStaticText;
    Panel4: TPanel;
    GroupBox7: TGroupBox;
    CB_ATUP01: TCheckBox;
    CB_ATUP02: TCheckBox;
    CB_ATUP03: TCheckBox;
    GroupBox8: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    ACPCO02: TEdit;
    ACPCO03: TEdit;
    gb_compra: TGroupBox;
    StaticText12: TStaticText;
    PCOMIN: TEdit;
    StaticText13: TStaticText;
    INCPMIN: TEdit;
    CB_CUSTOS: TCheckBox;
    Label1: TLabel;
    CODPRO: TEdit;
    grade: TLabel;
    numero: TEdit;
    NOMPRO: TEdit;
    GroupBox6: TGroupBox;
    Label4: TLabel;
    SBPCOFOR: TSpeedButton;
    NPCOCOM: TEdit;
    CB_FORMULA: TCheckBox;
    StaticText3: TStaticText;
    NPCOCUS: TStaticText;
    NPCOVEN: TStaticText;
    StaticText8: TStaticText;
    StaticText7: TStaticText;
    NPCOVEN2: TStaticText;
    NPCOVEN3: TStaticText;
    StaticText10: TStaticText;
    SbAtuMatPrim: TSpeedButton;
    panel_custos: TPanel;
    StaticText15: TStaticText;
    ST_CUSFAB: TStaticText;
    StaticText17: TStaticText;
    ST_CUSENV: TStaticText;
    PCOCPR_CALC: TStaticText;
    StaticText18: TStaticText;
    lbl_compraCalc: TLabel;
    st_compraCalc: TStaticText;
    gb_Encargos: TGroupBox;
    StaticText16: TStaticText;
    NPCOENC: TStaticText;
    lbl_EncarCalc: TLabel;
    st_EncarCalc: TStaticText;
    bbSavar_Padroes: TBitBtn;
    bbSalvarPerc: TBitBtn;
    gb_custo: TGroupBox;
    lbl_custoCalc: TLabel;
    st_custoCalc: TStaticText;
    gb_Venda: TGroupBox;
    lbl_vendaCalc: TLabel;
    st_vendaCalc: TStaticText;
    edt_npven1: TCurrencyEdit;
    edt_npven2: TCurrencyEdit;
    edt_npven3: TCurrencyEdit;
    CB_ATUPRO: TCheckBox;
    cb_casas: TComboBox;
    Label2: TLabel;
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure Qr_CusCalcFields(DataSet: TDataSet);
    procedure NPCOCOMKeyPress(Sender: TObject; var Key: Char);
    procedure NPCOCOMExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbAtuaProClick(Sender: TObject);
    procedure bbExportarClick(Sender: TObject);
    procedure AtualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ACPCO02KeyPress(Sender: TObject; var Key: Char);
    procedure ACPCO02Exit(Sender: TObject);
    procedure ACPCO03Exit(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure SBPCOFORClick(Sender: TObject);
    procedure bbSavar_PadroesClick(Sender: TObject);
    procedure mEdit_CustoEnter(Sender: TObject);
    procedure mEdit_CustoExit(Sender: TObject);
    procedure mEdit_CompraEnter(Sender: TObject);
    procedure mEdit_CompraExit(Sender: TObject);

    procedure mEdit_VendaEnter(Sender: TObject);
    procedure mEdit_VendaExit(Sender: TObject);
    procedure mEdit_EncarEnter(Sender: TObject);
    procedure mEdit_EncarExit(Sender: TObject);

    procedure mEdit_CustoKeyPress(Sender: TObject; var Key: Char);
    procedure PCOMINExit(Sender: TObject);
    procedure INCPMINExit(Sender: TObject);
    procedure PCOMINKeyPress(Sender: TObject; var Key: Char);
    procedure numeroExit(Sender: TObject);
    procedure numeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SbAtuMatPrimClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSalvarPercClick(Sender: TObject);
    procedure cb_casasChange(Sender: TObject);

  private
    { Private declarations }
    Function fPcusAtuaGrid(ptipo: Integer): Boolean;
    function fAtualizaPadrao(pTipo: Integer): Boolean;
    function fAtualizaPadrao2(pTipo: Integer): Boolean;

  public
    origem: String;

    form_mfor01_Cons: Tfrm_mfor01_Cons;
    form_mfor01: Tfrm_mfor01;


  mpag, mlin: Integer;
  mEdit_Compra  : array of TEdit;
  mEdit_Custo   : array of TEdit;
  mEdit_Venda   : array of TEdit;
  mEdit_Encar   : array of TEdit;

  mStatic_Compra      : array of TStaticText;
  mStatic_DCompra     : array of TStaticText;
  mStatic_Desc_Compra : array of TStaticText;

  mStatic_Encar        : array of TStaticText;
  mStatic_DEncar       : array of TStaticText;
  mStatic_Desc_Encar   : array of TStaticText;


  mStatic_cus   : array of TStaticText;
  mStatic_Dcus   : array of TStaticText;
  mStatic_Descr : array of TStaticText;

  mStatic_Dvda : array of TStaticText;
  mStatic_vda : array of TStaticText;

  mStatic_Vlr_Compra : array of TStaticText;
  mStatic_Vlr_Custo : array of TStaticText;
  mStatic_Vlr_Venda : array of TStaticText;
  mStatic_Vlr_Encar : array of TStaticText;


  mEditAtivo: Integer;
  mCusEnv: Real;
  mCusFab: Real;
  mori_pcus: String;
  mTotQtd,mtotal,mcodenv,mpcusto,mvt: Real;


    function fcalccus(ptipo: Integer):Boolean;

    Function fPcusCaptura(pCodpro,pQtdgrml: Real): Real;


    { Public declarations }
  end;
function fTipopCusto(pNome: String): Integer;
function fTipoFormula(pNome: String): Integer;

var
  Frm_Pcus: TFrm_Pcus;
  mspavlr: Integer=15;
  mspaco: Integer=8;
  mPcusAliqDeb: Real=17;
  mAtualizando: Boolean=False;

  mQtdCasCus: Integer=4;
  mcasasCus :String='#,##0.0000';

implementation

uses S_DM4, S_ConsLot, Math, s_lerarq_geral, func_excecoes;

{$R *.dfm}

procedure TFrm_Pcus.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_Pcus',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Pcus.CODPROExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
if ValFloat(CODPRO.Text)=0 then
   begin
   CODPRO.Text:='';
   exit;
   end;
CODPRO.Text:=fdeixanum(CODPRO.Text);
if flcadpro(1,0,0,Trim(CODPRO.Text)) then
   begin
   NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString;
   mqtdGrml   :=DM1.Tb_ProPDQTDGRML.Value;
   AtualizarClick(self);
   end
else
   begin
   fmensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   end;

end;
procedure TFrm_Pcus.Qr_CusCalcFields(DataSet: TDataSet);
begin
if Qr_CusPCAPLS.Value=1 then
   Qr_Cusaplicar.Value:='Resultado'
else
   Qr_Cusaplicar.Value:='Preço Compra';
end;

function TFrm_pcus.fcalccus(ptipo: Integer):Boolean;
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

mpmin   :=ValFloat(PCOMIN.Text);
mincpmin:=0;
mvlpmin :=0;
mpcompra:=ValFloat(NPCOCOM.Text);
mtotal  :=mpcompra;
mValorAcum:=0;
mValorReal:=0;


mfator:=0;
for x:=1 to High(medit_compra) do
   begin
   if mStatic_Compra[x].Caption='%' then
     mFator:=mFator+valfloat(mEdit_compra[x].Text)
   else
     mValorReal:=mValorReal+valfloat(mEdit_Compra[x].Text);
   end;

if mFator<>0 then
   mFator:=(100-mfator)/100;

for x:=1 to High(medit_compra) do
   begin
   if valfloat(mEdit_Compra[x].Text)<=0 then
      begin
      mStatic_Vlr_Compra[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;
   if DM1.Tb_Pcus.Locate('PCNOME',trim(copy(MStatic_DCompra[x].Caption,
                       6,length(mstatic_DCompra[x].Caption)-5)),[]) then
      begin
      mAplicSob   :=DM1.Tb_PcusPCAPLS.AsInteger;
      mTipoformula:=DM1.Tb_PcusPFORMULA.AsInteger;
      if (mTipoformula=0) and (mFator<0) then
         begin
         mFator:=99;
         mEdit_compra[x].Text:='99';
         MessageDlg('Fator de Divisão Não pode ser maior que 99',mtWarning,[mbOk],0);
         mFator:=(100-mfator)/100;
         end;

      mTipo       :=DM1.Tb_PcusPTIPO.AsInteger;
      end
   else
      begin
      mAplicSob   :=0;
      mTipoformula:=0;
      mTipo       :=0;
      end;
   mVlrResult:=fCalcularCusto(mAplicSob,mTipoformula,mTipo,mFator,
               valfloat(medit_Compra[x].Text),mpCompra,mValorAcum,mpmin,mValorReal);
   mvlpmin:=mvlrResult[1];
   mvl    :=mvlrResult[0];

   if copy(trim(MStatic_DCompra[x].Caption),1,3)='(-)' then
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
   mStatic_Vlr_Compra[x].Caption:=FormatFloat(mcasccus,mvl);
   end;

if valFloat(PCOMIN.Text)=0 then
   mincpmin:=0
else
   mincpmin:=Arredonda( (ValFloat(PCOMIN.Text)*mPcusAliqDeb/100) , mcasqtdccus);

INCPMIN.Text:=FormatFloat(mcasccus, mincpmin);

mTotal:=mTotal+mincpmin;

PCOCPR_CALC.Caption:=FormatFloat(mcasasCus, mtotal);
st_compraCalc.Caption:=PCOCPR_CALC.Caption;

mpcompra:=ValFloat(PCOCPR_CALC.Caption);
mValorAcum:=0;
mValorReal:=0;

mfator:=0;
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
      if (mTipoformula=0) and (mFator<0) then
         begin
         mFator:=99;
         mEdit_compra[x].Text:='99';
         MessageDlg('Fator de Divisão Não pode ser maior que 99',mtWarning,[mbOk],0);
         mFator:=(100-mfator)/100;
         end;

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

{

if DM1.Tb_ProPDICMSDEB.AsFloat>0 then
   mincpmin:=Arredonda( (mpmin*DM1.Tb_ProPDICMSDEB.Value/100) , 2)
else
   mincpmin:=Arredonda( (mpmin*mPcusAliqDeb/100) , 2);
Frm_Pcus.INCPMIN.Text:=FormatFloat(mcasccus, mincpmin);

//mTotal:=mTotal+mincpmin;

}

//mtotal:=Arredonda(mtotal,mQtdCas_arredpu);


//mtotal:=Arredonda(mtotal,mQtdCas_arredpu); retirado por Luiz Fernando pcausa que com o arredondamento da diferença do relatorio imprimir custos no preço venda

NPCOCUS.Caption:=FormatFloat(mcasasCus, mtotal);
st_custoCalc.Caption:=NPCOCUS.Caption;
mpcompra:=ValFloat(NPCOCUS.Caption);

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
{
if mFator<>0 then
   begin
   if mFator<100 then
      mFator:=(100-mfator)/100
   else
      mFator:=(mfator)/100;

   end;
}
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
      if (mTipoformula=0) and (mFator<0) then
         begin
         mFator:=99;
         mEdit_compra[x].Text:='99';
         MessageDlg('Fator de Divisão Não pode ser maior que 99',mtWarning,[mbOk],0);
         mFator:=(100-mfator)/100;
         end;

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


st_vendaCalc.Caption:=FormatFloat(mcasasCus, mtotal);
mpcompra:=mtotal;
mincpmin:=0;

// inicio dos encargos
mValorReal:=0;
mfator:=0;
for x:=1 to High(medit_encar) do
   begin
  if mStatic_Encar[x].Caption='%' then
    mFator:=mFator+valfloat(mEdit_Encar[x].Text)
  else
    mValorReal:=mValorReal+valfloat(mEdit_Encar[x].Text);


   end;
if mFator<>0 then
   mFator:=(100-mfator)/100;
mValorAcum:=0;


for x:=1 to High(medit_encar) do
   begin
   if valfloat(mEdit_encar[x].Text)<=0 then
      begin
      mStatic_Vlr_encar[x].Caption:=FormatFloat(mcasccus,0);
      Continue;
      end;

   if DM1.Tb_Pcus.Locate('PCNOME',trim(copy(mStatic_DEncar[x].Caption,
                       6,length(mStatic_DEncar[x].Caption)-5)),[]) then
      begin
      mAplicSob   :=DM1.Tb_PcusPCAPLS.AsInteger;
      mTipoformula:=DM1.Tb_PcusPFORMULA.AsInteger;
      mTipo       :=0;
      if (mTipoformula=0) and (mFator<0) then
         begin
         mFator:=99;
         mEdit_compra[x].Text:='99';
         MessageDlg('Fator de Divisão Não pode ser maior que 99',mtWarning,[mbOk],0);
         mFator:=(100-mfator)/100;
         end;

      end
   else
      begin
      mAplicSob   :=0;
      mTipoformula:=0;
      mTipo       :=0;
      end;
   mVlrResult:=fCalcularCusto(mAplicSob,mTipoformula,mTipo,mFator,
               valfloat(medit_encar[x].Text),mpCompra,mValorAcum,mpmin,mValorReal);
   mvlpmin:=mvlrResult[1];
   mvl    :=mvlrResult[0];

   if copy(trim(MStatic_Encar[x].Caption),1,3)='(-)' then
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
   mStatic_Vlr_Encar[x].Caption:=FormatFloat(mcasccus,mvl);
   end;
{
mTotal:=mTotal+mincpmin;
mtotal:=Arredonda(mtotal,mQtdCas_arredpu);
}



NPCOENC.Caption:=FormatFloat(mcasasCus, mtotal);
st_EncarCalc.Caption:=NPCOENC.Caption;

mpcoenc:=ValFloat(NPCOENC.Caption);

// termino dos encargos

NPCOVEN.Caption  :=FormatFloat(mcasasCus, mtotal);
edt_npven1.Value := ValFloat(NPCOVEN.Caption);

NPCOVEN2.Caption := FormatFloat(mcasasCus, mtotal+(mtotal*ValFloat(ACPCO02.Text)/100));
edt_npven2.Value := ValFloat(NPCOVEN2.Caption);
NPCOVEN3.Caption := FormatFloat(mcasasCus, mtotal+(mtotal*ValFloat(ACPCO03.Text)/100));
edt_npven3.Value := ValFloat(NPCOVEN3.Caption);




result:=True;
end;

procedure TFrm_Pcus.NPCOCOMKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Pcus.NPCOCOMExit(Sender: TObject);
begin
NPCOCOM.Text:=insere(FormatFloat(mcasasCus,valfloat(NPCOCOM.Text)),' ',mspavlr);
fcalccus(0);

end;

procedure TFrm_Pcus.bbSairClick(Sender: TObject);
begin
//frm_pcus := nil;
close;
end;

procedure TFrm_Pcus.bbGravarClick(Sender: TObject);
var
y,x: Integer;
mcodigo: Integer;
begin

DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADCUS where '
                  +' (CUCODEMP='+Inttostr(codemp)+' or CUCODEMP='+Inttostr(iif(codemp>100,codemp-100,codemp))+') '
                  +' and CUTIPO=0 and '
                  +' CUCODIGO=0'+Trim(CODPRO.Text));
try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  fmensagem('Erro 1070 ao atualizar o arquivo de Custo!',0,['0'],0);
  end;



DM1.Query1.Close;
DM1.query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADCUS2 where '
                  +' (CUCODEMP='+Inttostr(codemp)+' or CUCODEMP='+Inttostr(iif(codemp>100,codemp-100,codemp))+') and '
                  +' CUTIPO=0 and '
                  +' CUCODIGO=0'+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro 1083 ao Atualizar o Arquivo de Custo 2!',0,['0'],0);
   end;


//parei querendo importar para os produtos
for x:=1 to High(mstatic_Vlr_Compra) do
   begin
   if ValFloat(mEdit_Compra[x].Text)=0 then
      continue;
   for y:=1 to length(mstatic_vlr_Compra[x].Name) do
      begin
      if mstatic_vlr_Compra[x].Name[y]='_' then
         begin
         mCodigo:=ValInt(copy(mstatic_vlr_Compra[x].name,
                         y+1,
                         length(mstatic_vlr_Compra[x].name)-y)
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
                     +IntTostr(iif(codemp>100,codemp-100,codemp))
                     +',0'
                     +','+Trim(CODPRO.Text)
                     +','+IntToStr(mcodigo)
                     +','+mudavp(ValReal(mEdit_Compra[x].Text))
                     +','+mudavp(ValReal(NPCOCOM.Text))
                     +','+mudavp(ValReal(mstatic_vlr_Compra[x].Caption))
                     +','+DM1.Query4.fieldbyName('PCAPLS').AsString
                     +','+DM1.Query4.fieldbyName('PCFATOR').AsString
                     +','+DM1.Query4.fieldbyName('PCOPCIO').AsString
                     +')');


//    ex_erroSql_Novo(dm1.Query1,723,'_stru','user');


    Try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
    except
       fmensagem('Erro 1136 ao Incluir Parametros de Custo',0,['0'],0);
       exit;
       end;
   end;


for x:=1 to High(mstatic_Vlr_custo) do
   begin
   if ValFloat(mEdit_Custo[x].Text)=0 then
      continue;
   for y:=1 to length(mstatic_vlr_custo[x].Name) do
      begin
      if mstatic_vlr_custo[x].Name[y]='_' then
         begin
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
                     +IntTostr(iif(codemp>100,codemp-100,codemp))
                     +',0'
                     +','+Trim(CODPRO.Text)
                     +','+IntToStr(mcodigo)
                     +','+mudavp(ValReal(mEdit_Custo[x].Text))
                     +','+mudavp(ValReal(NPCOCOM.Text))
                     +','+mudavp(ValReal(mstatic_vlr_custo[x].Caption))
                     +','+DM1.Query4.fieldbyName('PCAPLS').AsString
                     +','+DM1.Query4.fieldbyName('PCFATOR').AsString
                     +','+DM1.Query4.fieldbyName('PCOPCIO').AsString
                     +')');
  //  ex_erroSql_Novo(dm1.Query1,787,'_stru','user');

    Try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
    except
       fmensagem('Erro 1136 ao Incluir Parametros de Custo',0,['0'],0);
       exit;
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
                     +IntTostr(iif(codemp>100,codemp-100,codemp))

                     +',0'
                     +','+Trim(CODPRO.Text)
                     +','+IntToStr(mcodigo)
                     +','+mudavp(ValReal(mEdit_Venda[x].Text))
                     +','+mudavp(ValReal(NPCOCUS.Caption))
                     +','+mudavp(ValReal(mstatic_vlr_Venda[x].Caption))
                     +','+DM1.Query4.fieldbyName('PCAPLS').AsString
                     +','+DM1.Query4.fieldbyName('PCFATOR').AsString
                     +','+DM1.Query4.fieldbyName('PCOPCIO').AsString
                     +')');

    //ex_erroSql_Novo(dm1.Query1,852,'_stru','user');

    Try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
    except
       fmensagem('Erro 1162 ao Incluir Parametros de Custo',0,['0'],0);
       end;
   end;



for x:=1 to High(mstatic_Vlr_Encar) do
   begin
   if ValFloat(mEdit_Encar[x].Text)=0 then
      continue;
   for y:=1 to length(mstatic_vlr_Encar[x].Name) do
      begin
      if mstatic_vlr_Encar[x].Name[y]='_' then
         begin
         mCodigo:=ValInt(copy(mstatic_vlr_Encar[x].name,
                         y+1,
                         length(mstatic_vlr_Encar[x].name)-y)
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
                     +IntTostr(iif(codemp>100,codemp-100,codemp))
                     +',0'
                     +','+Trim(CODPRO.Text)
                     +','+IntToStr(mcodigo)
                     +','+mudavp(ValReal(mEdit_encar[x].Text))
                     +','+mudavp(ValReal(st_vendacalc.Caption))
                     +','+mudavp(ValReal(mstatic_vlr_Encar[x].Caption))
                     +','+DM1.Query4.fieldbyName('PCAPLS').AsString
                     +','+DM1.Query4.fieldbyName('PCFATOR').AsString
                     +','+DM1.Query4.fieldbyName('PCOPCIO').AsString
                     +')');

//    ex_erroSql_Novo(dm1.Query1,915,'_stru','user');

    Try
       DM1.Query1.ExecSQL;
       fdm1StartCommit;
    except
       fmensagem('Erro 1162 ao Incluir Parametros de Custo',0,['0'],0);
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
                     +IntTostr(iif(codemp>100,codemp-100,codemp))
                  +',0'
                  +',1'
                  +','+Trim(CODPRO.Text)
                  +','+mudavp(ValReal(PCOMIN.Text))
                  +','+mudavp(ValReal(INCPMIN.Text))
                  +','+mudavp(ValReal(ACPCO02.Text))
                  +','+mudavp(ValReal(ACPCO03.Text))
                  +','+iif(CB_ATUP01.Checked,'0','1')
                  +','+iif(CB_ATUP02.Checked,'0','1')
                  +','+iif(CB_ATUP03.Checked,'0','1')
                  +','+mudavp(ValReal(NPCOCOM.Text))
                  +','+mudavp(ValReal(NPCOCUS.Caption))
//                  +','+mudavp(ValReal(NPCOVEN.Caption))
//                  +','+mudavp(ValReal(NPCOVEN2.Caption))
//                  +','+mudavp(ValReal(NPCOVEN3.Caption))
                  +','+mudaVP(FloatToStr(edt_npven1.Value))
                  +','+mudaVP(FloatToStr(edt_npven2.Value))
                  +','+mudaVP(FloatToStr(edt_npven3.Value))
                  +')');
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(dm1.Query1,961,'_stru'+e.message,'user');
   end;
   end;


if (flcadpro(1,0,0,Trim(CODPRO.Text))) and (DM4.Tb_Par01PATUACUS.AsInteger=2) and (origem='exportar')then
  begin
  if DM1.Tb_PargerPATPCOFABENT.AsInteger=1 then
     begin
     DM1.Tb_Pro.Edit;
     DM1.Tb_ProPDUCPR.Value:=ValFloat(PCOCOM.Caption);
     DM1.Tb_Pro.Post;
     end;
  end
else if (flcadpro(1,0,0,Trim(CODPRO.Text))) then
  begin
  DM1.Tb_Pro.Edit;
  DM1.Tb_ProPDUCPR.Value:=ValFloat(NPCOCOM.Text);
  DM1.Tb_Pro.Post;
  end;

if CB_ATUPRO.Checked then
   begin
   mAtualizando:=true;
   bbAtuaProClick(Self);
   mAtualizando:=False;
   end;
if (mori_pcus='exportar') or (origem='exportar') then
   exit
else if mori_pcus='frm_pfor01' then
   begin
   bbSair.Click;
   exit;
   end
else
   fmensagem('Produto Atualizado!',0,['0'],0);

AtualizarClick(self);
fmensagem('Gravado!',0,['0'],0);

//ShowMessage('Gravado');
if Length(Trim(origem))=0 then
  CODPRO.SetFocus;
//CANCELAR.CLICK;
end;

procedure TFrm_Pcus.bbAtuaProClick(Sender: TObject);
begin
if ValFloat(CODPRO.Text)=0 then
   begin
   fmensagem('Favor Selecionar um Código Válido!',0,['0'],0);
   exit;
   end;
DM1.Tb_Pro.Edit;
if CB_ATUP01.Checked then
   begin
   DM1.Tb_ProPDPRECOA1.Value:=DM1.Tb_ProPDPRECO1.Value;
   //DM1.Tb_ProPDPRECO1.Value:=ValFloat(NPCOVEN.Caption);
   DM1.Tb_ProPDPRECO1.Value:= edt_npven1.Value;
   DM1.Tb_ProPDDTUATP1.Value:=pdatasis;
   DM1.Tb_ProPDUSRALT1.Value:=codusr;
   end;
if CB_ATUP02.Checked then
   begin
   DM1.Tb_ProPDPRECOA2.Value:=DM1.Tb_ProPDPRECO2.Value;
   //DM1.Tb_ProPDPRECO2.Value:=ValFloat(NPCOVEN2.Caption);
   DM1.Tb_ProPDPRECO2.Value:=edt_npven2.Value;
   DM1.Tb_ProPDDTUATP2.Value:=pdatasis;
   DM1.Tb_ProPDUSRALT2.Value:=codusr;
   end;
if CB_ATUP03.Checked then
   begin
   DM1.Tb_ProPDPRECOA3.Value:=DM1.Tb_ProPDPRECO3.Value;
   //DM1.Tb_ProPDPRECO3.Value:=ValFloat(NPCOVEN3.Caption);
   DM1.Tb_ProPDPRECO3.Value:=edt_npven3.Value;
   DM1.Tb_ProPDDTUATP3.Value:=pdatasis;
   DM1.Tb_ProPDUSRALT3.Value:=codusr;
   end;

if (DM4.Tb_Par01PATUACUS.AsInteger=2) and (origem='exportar') then
  begin
  if DM1.Tb_PargerPATPCOFABENT.AsInteger=1 then
     DM1.Tb_ProPDUCPR.Value:=ValFloat(PCOCOM.Caption);
  DM1.Tb_ProPDUCPR.Value  :=ValFloat(PCOCOM.Caption);
  end
else
  begin

//  DM1.Tb_ProPDPCOFAB.Value:=ValFloat(NPCOCOM.Text);
  DM1.Tb_ProPDUCPR.Value  :=ValFloat(NPCOCOM.Text);
  end;
DM1.Tb_ProPDPRECOC.Value:=ValFloat(NPCOCUS.Caption);
DM1.Tb_ProPDCUSENV.Value:=ValFloat(ST_CUSENV.Caption);
DM1.Tb_ProPDCUSFIN.Value:=ValFloat(NPCOVEN.Caption);


if DM1.Tb_ProPDPRECOC.AsFloat<>0 then
   begin
   if DM1.Tb_ProPDPCOMC.AsFloat<>0 then
      DM1.Tb_ProPDPCOMC.AsFloat:=Arredonda( ((DM1.Tb_ProPDPCOMC.AsFloat+DM1.Tb_ProPDPRECOC.AsFloat) / 2), mQtdCas_arredpu)
   else
      DM1.Tb_ProPDPCOMC.Value  :=DM1.Tb_ProPDPRECOC.AsFloat;
   end;
DM1.Tb_ProPDVLRINC.Value:=ValFloat(PCOMIN.Text);
DM1.Tb_Pro.Post;

end;

procedure TFrm_Pcus.bbExportarClick(Sender: TObject);
begin

if FSoNumero(CODPRO.Text)=0 then
   begin
   fmensagem('Favor Selecionar um ítem para ser a matriz!',0,['0'],0);
   exit;
   end;
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   fmensagem('Favor Selecionar um ítem para ser a matriz!',0,['0'],0);
   exit;
   end;
mcinst2:=mori_pcus;
mori_pcus:=mcinst2;
bbGravarClick(self);
mcinst2:=mori_pcus;


if form_mfor01_Cons=nil then
   Application.CreateForm(Tfrm_mfor01_Cons, form_mfor01_Cons)
else
   begin
   form_mfor01_Cons.Free;
   form_mfor01_Cons:=nil;
   Application.CreateForm(Tfrm_mfor01_Cons, form_mfor01_Cons);
   end;

form_mfor01_Cons.CB_EXPFORM.Checked:=false;
mfor01_origem:=1;
mCodpro_Ori:=DM1.Tb_ProPDCODPRO.AsString;
if DM1.Tb_ProPDCODFOR.AsFloat<>0 then
   form_mfor01_Cons.Lbx_CodFor.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODFOR.Value)
                                    +' - '+DM1.Tb_ProPDNOMFOR.AsString);
if DM1.Tb_ProPDCODGRU.AsFloat<>0 then
   form_mfor01_Cons.Lbx_CodGru.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODGRU.Value)
                                    +' - '+DM1.Tb_ProPDNOMGRU.AsString);
if DM1.Tb_ProPDCODTIP.AsFloat<>0 then
   form_mfor01_Cons.Lbx_CodTPro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODTIP.Value)
                                    +' - '+DM1.Tb_ProPDNOMTIP.AsString);
form_mfor01_Cons.Caption           :='Exportar Configurações de Custo';
form_mfor01_Cons.bbExecutar.Caption:='&Exportar';
form_mfor01_Cons.bbAplicar.Click;
form_mfor01_Cons.ShowModal;
form_mfor01_Cons.Free;
form_mfor01_Cons:=nil;


end;

procedure TFrm_Pcus.AtualizarClick(Sender: TObject);
var
mlin: Integer;
begin
if flcadpro(1,0,0,Trim(CODPRO.Text)) then
   NOMPRO.Text:=DM1.Tb_ProPDNOME.AsString
else
   begin
   fmensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   end;
{
NPCOCOM.Text     :=Formatfloat(mcasaspu, 0);
NPCOCUS.Caption  :=Formatfloat(mcasaspu, 0);
NPCOVEN.Caption  :=Formatfloat(mcasaspu, 0);
NPCOVEN2.Caption :=Formatfloat(mcasaspu, 0);
NPCOVEN3.Caption :=Formatfloat(mcasaspu, 0);
}

{
NPCOCOM.Text      :=Formatfloat(mcasasCus, DM1.Tb_ProPDPCOFAB.Value);
PCOCOM.Caption    :=Formatfloat(mcasasCus, DM1.Tb_ProPDPCOFAB.Value);
}
NPCOCOM.Text      :=Formatfloat(mcasasCus, DM1.Tb_ProPDUCPR.Value);
PCOCOM.Caption    :=Formatfloat(mcasasCus, DM1.Tb_ProPDUCPR.Value);

PCOCUS.Caption    :=Formatfloat(mcasasCus, DM1.Tb_ProPDPRECOC.Value);
PCOVEN.Caption    :=Formatfloat(mcasasCus, DM1.Tb_ProPDPRECO1.Value);
edt_npven1.Value  := DM1.Tb_ProPDPRECO1.Value;
PCOVEN2.Caption   :=Formatfloat(mcasasCus, DM1.Tb_ProPDPRECO2.Value);
edt_npven2.Value  := DM1.Tb_ProPDPRECO2.Value;
PCOVEN3.Caption   :=Formatfloat(mcasasCus, DM1.Tb_ProPDPRECO2.Value);
edt_npven3.Value  := DM1.Tb_ProPDPRECO2.Value;
ST_CUSFAB.Caption :=Formatfloat(mcasasCus, DM1.Tb_ProPDCUSFAB.Value);
ST_CUSENV.Caption :=Formatfloat(mcasasCus, DM1.Tb_ProPDCUSENV.Value);
if SBPCOFOR.Visible=true then
   SBPCOFORClick(self);
fatualizaPadrao2(1);

fPcusAtuaGrid(0);
end;

procedure TFrm_Pcus.FormActivate(Sender: TObject);
begin
{
if Trim(CODPRO.Text)<>'' then
   begin
   Atualizar.Click;
   NPCOCOM.SetFocus;
   end;
}

if (bbAtuaPro.Visible) and (valfloat(NPCOCOM.Text)>0) and (trim(mori_pcus)='') then
   bbAtuaPro.SetFocus;

end;



procedure TFrm_Pcus.ACPCO02KeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;                          
end;

procedure TFrm_Pcus.ACPCO02Exit(Sender: TObject);
begin
ACPCO02.Text:=FormatFloat(mcasasCus,valfloat(ACPCO02.Text));
fcalccus(0);
end;

procedure TFrm_Pcus.ACPCO03Exit(Sender: TObject);
begin
ACPCO03.Text:=FormatFloat(mcasasCus,valfloat(ACPCO03.Text));
fcalccus(0);
end;

procedure TFrm_Pcus.CANCELARClick(Sender: TObject);
var
x: Integer;
begin
bbGravar.Enabled:=False;
Atualizar.Enabled:=True;
CODPRO.Text    :='';
PCOCOM.Caption :='';
PCOCUS.Caption :='';
PCOVEN.Caption :='';
PCOVEN2.Caption:='';
PCOVEN3.Caption:='';

NPCOCOM.Text:='';
NPCOCUS.Caption:='';
NPCOVEN.Caption:='';
ACPCO02.Text:='';
ACPCO03.Text:='';
PCOMIN.Text :='';
INCPMIN.Text:='';
NOMPRO.Text:='';
// lindomar
if not CB_CUSTOS.Checked then
   begin
   for x:=1 to High(medit_compra) do
      begin
      mStatic_Vlr_Compra[x].Caption:=FormatFloat(mcasccus,0);
      mEdit_Compra[x].Text         :=FormatFloat(mcasasCus,0);
     end;

   for x:=1 to High(medit_custo) do
      begin
      mStatic_Vlr_Custo[x].Caption:=FormatFloat(mcasccus,0);
      mEdit_Custo[x].Text         :=FormatFloat(mcasasCus,0);
     end;
   for x:=1 to High(medit_Venda) do
      begin
      mStatic_Vlr_Venda[x].Caption:=FormatFloat(mcasccus,0);
      mEdit_Venda[x].Text         :=FormatFloat(mcasasCus,0);
      end;
   end;

end;

procedure TFrm_Pcus.FormCreate(Sender: TObject);
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
mQtdCol: Integer;
mVisibleClient: Integer;
begin

edt_npven1.DisplayFormat := mcasas;
edt_npven2.DisplayFormat := mcasas;
edt_npven2.DisplayFormat := mcasas;

if flfilpad(0,'_PCUS2','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CASAS',[]) then
    cb_casas.ItemIndex:=StrToInt(fdeixanum2(DM4.Tb_FilPad2FPVALOR.AsString))
  else
    cb_casas.ItemIndex:=2;
  end;

cb_casasChange(self);


if flcaduf(0,0,0,DM1.Tb_EmpUF.AsString) then
   begin
   mPcusAliqDeb:=DM1.Tb_UFPICMSA.AsFloat;
   end;

mori_pcus:='';
mori_pcus:=origem;

if DM1.Tb_PargerPCASPUIND.AsInteger>mQtdCas_arredpu then
   begin
   mQtdCasCus:=DM1.Tb_PargerPCASPUIND.AsInteger;
   mcasasCus :=mcaspuind;
   end
else
   begin
   mQtdCasCus:=mQtdCas_arredpu;
   mcasasCus :=mcasaspu;
   end;
if Valint(copy(mpseg,4,2))=02 then
   begin
   Grade.Visible :=True;
   numero.Visible:=True;
   NOMPRO.Left   :=352;
   NOMPRO.Width  :=250;
   end;


if (ValInt('0'+copy(DM1.Tb_PargerPSEGMENTO.Value,1,2))<>3) and (DM1.Tb_PargerPINDUSTRIA.Value<>5) then
   begin
   CB_FORMULA.Visible  :=false;
   SBPCOFOR.Visible    :=false;
   SbAtuMatPrim.Visible:=false;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value>0 then
   begin
   SBPCOFOR.Visible    :=true;
   SbAtuMatPrim.Visible:=true;
   CB_FORMULA.Visible  :=true;
   end
else
   begin
   CB_FORMULA.Visible  :=false;
   SBPCOFOR.Visible    :=false;
   SbAtuMatPrim.Visible:=false;
   end;

if DM1.Tb_PargerPINDUSTRIA.Value=2 then
   panel_custos.Visible:=true;


fatualizaPadrao(0);


DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add('Select PCCODIGO, '
                  +'       PCNOME,'
                  +'       PCAPLS,'
                  +'       PCFATOR,'
                  +'       PTIPO, '
                  +'       PCOPCIO from CADPCUS order by PCOPCIO,PCNOME');
DM1.Query4.Open;
//***************************************************************************************
// inicio da composicao do preco de Compra
//////////////////////////////////////////
//***************************************************************************************
mSegCol:=0;
mtop:=13;
mtopmax:=0;
mQtdEdit:=0;
DM1.Query4.First;
mVisibleClient:=-1;

While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   DM1.Query4.Next;
   mtopmax:=mtopmax+1;
   end;
if mtopmax=0 then
   gb_compra.Visible:=false
else
   begin
   mVisibleClient:=0;
   mtopmax:=mtopmax+1;
   end;

mTam_DCus           :=95;
mTamEdit_Custo      :=43;
mTamStatic_Cus      :=11;
mTamStatic_Vlr_Custo:=94;

if mtopmax>0 then
   mQtdCol:=mtopmax div 3;
if (mQtdCol*3)<mtopmax then
   mQtdCol:=mQtdCol+1;

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
   SetLength(mStatic_Compra,mQTdEdit+2);
   SetLength(mStatic_DCompra,mQTdEdit+2);
   SetLength(mStatic_Vlr_Compra,mQTdEdit+2);
   SetLength(mEdit_Compra,mQTdEdit+2);

   mStatic_DCompra[mQtdEdit]           := TStaticText.Create(Frm_PCus);
   mStatic_DCompra[mQtdEdit].ParentFont:= false;
   mStatic_DCompra[mQtdEdit].Parent    := gb_compra;



   mStatic_DCompra[mQtdEdit].AutoSize:= False;
   mleft:=4;

   mStatic_DCompra[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTam_DCus,17);
   mleft:=mleft+mTam_DCus+mEspaco;
   mStatic_DCompra[mQtdEdit].Name       :='StNomeCpr_'+IntToStr(mQtdEdit);
   mStatic_DCompra[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_DCompra[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PCFATOR').AsInteger=1 then
      mStatic_DCompra[mQtdEdit].Caption :='(-) - '+DM1.Query4.fieldbyName('PCNOME').AsString
   else
      mStatic_DCompra[mQtdEdit].Caption :='(+) - '+DM1.Query4.fieldbyName('PCNOME').AsString;

   mEdit_Compra[mQtdEdit]           := TEdit.Create(Frm_PCus);
   mEdit_Compra[mQtdEdit].ParentFont:= false;
   mEdit_Compra[mQtdEdit].Parent := gb_compra;
   mEdit_Compra[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamEdit_Custo,19);
   mleft:=mleft+mTamEdit_Custo+mEspaco;
   mEdit_Compra[mQtdEdit].Name      :='PERCCpr_'+IntToStr(mQtdEdit);
   mEdit_Compra[mQtdEdit].Ctl3D     :=false;
   mEdit_Compra[mQtdEdit].Text      :='';
   mEdit_Compra[mQtdEdit].OnExit    :=mEdit_CompraExit;
   mEdit_Compra[mQtdEdit].OnEnter   :=mEdit_CompraExit;
   mEdit_Compra[mQtdEdit].OnKeyPress:=mEdit_CustoKeyPress;



   mStatic_Compra[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_Compra[mQtdEdit].ParentFont := False;
   mStatic_Compra[mQtdEdit].Parent     := gb_compra;
   mStatic_Compra[mQtdEdit].AutoSize   := False;
   mStatic_Compra[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Cus,17);
   mleft:=mleft+mTamStatic_Cus+mEspaco;
   mStatic_Compra[mQtdEdit].Name       :='StpercCpr_'+IntToStr(mQtdEdit);
   mStatic_Compra[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Compra[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PTIPO').AsInteger=0 then
     mStatic_Compra[mQtdEdit].Caption    :='%'
   else
     mStatic_Compra[mQtdEdit].Caption    :='$';


   mStatic_Vlr_Compra[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_Vlr_Compra[mQtdEdit].ParentFont := false;
   mStatic_Vlr_Compra[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Compra[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Compra[mQtdEdit].Parent     := gb_compra;
   mStatic_Vlr_Compra[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Vlr_Custo,17);
   mleft:=mleft+mTamStatic_Vlr_Custo+mEspaco;
   mStatic_Vlr_Compra[mQtdEdit].Name       :='StValorCpr_'+DM1.Query4.fieldbyName('PCCODIGO').AsString;
   mStatic_Vlr_Compra[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Vlr_Compra[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Vlr_Compra[mQtdEdit].Caption    :=FormatFloat(mcasccus, 0);

   mStatic_DCompra[mQtdEdit].Font.Color        :=clGreen;
   mStatic_Vlr_Compra[mQtdEdit].Font.Color     :=clGreen;
   mEdit_Compra[mQtdEdit].Font.Color           :=clGreen;
   mStatic_DCompra[mQtdEdit].Font.color        :=clGreen;

   mtop:=mtop+21;
   mtopmax:=mtopmax+1;
   if mtopmax>=(mQtdCol) then
      begin
      mtopmax:=0;
      if mSegCol<5 then
         mSegCol:=258
      else if mSegCol<259 then
         mSegCol:=519;
      mtop:=13;
      end;
   DM1.Query4.Next;
   end;

//if mtop>mtopmax then
//   mtopmax:=mtop;


mtopmax:=mQtdCol*21;
//mtopmax:=mtopmax+21;



gb_compra.Height   :=mtopmax+26;
lbl_compraCalc.Top    :=mtop;
st_compraCalc.Top     :=mtop;


lbl_compraCalc.Left    :=mSegCol+4;
st_compraCalc.Left     :=mSegCol+153;

lbl_compraCalc.Font.Style:=[fsBold];
st_compraCalc.font.Style :=[fsBold];



// termno da composicao do preco de compra
////////////////////////////////////////////
//***************************************************************************************



//***************************************************************************************



//***************************************************************************************
// inicio da composicao do preco de Custo
//////////////////////////////////////////
//***************************************************************************************
mSegCol:=0;
mtop:=13;
mtopmax:=0;
mQtdEdit:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>1 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   DM1.Query4.Next;
   mtopmax:=mtopmax+1;
   end;
if mtopmax=0 then
   gb_Custo.Visible:=false
else
   begin
   if mVisibleClient=-1 then
      mVisibleClient:=1;
   mtopmax:=mtopmax+1;
   end;

if mtopmax>0 then
   mQtdCol:=mtopmax div 3;
if (mQtdCol*3)<mtopmax then
   mQtdCol:=mQtdCol+1;
mtopmax:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>1 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   SetLength(mStatic_cus,mQTdEdit+2);
   SetLength(mStatic_Dcus,mQTdEdit+2);
   SetLength(mStatic_Vlr_Custo,mQTdEdit+2);
   SetLength(mEdit_Custo,mQTdEdit+2);

   mStatic_Dcus[mQtdEdit]           := TStaticText.Create(Frm_PCus);
   mStatic_Dcus[mQtdEdit].ParentFont:= false;
   mStatic_Dcus[mQtdEdit].Parent    := gb_custo;



   mStatic_Dcus[mQtdEdit].AutoSize:= False;
   mleft:=4;

   mStatic_Dcus[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTam_DCus,17);
   mleft:=mleft+mTam_DCus+mEspaco;
   mStatic_Dcus[mQtdEdit].Name       :='StNomeCus_'+IntToStr(mQtdEdit);
   mStatic_Dcus[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Dcus[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PCFATOR').AsInteger=1 then
      mStatic_Dcus[mQtdEdit].Caption :='(-) - '+DM1.Query4.fieldbyName('PCNOME').AsString
   else
      mStatic_Dcus[mQtdEdit].Caption :='(+) - '+DM1.Query4.fieldbyName('PCNOME').AsString;

   mEdit_Custo[mQtdEdit]           := TEdit.Create(Frm_PCus);
   mEdit_Custo[mQtdEdit].ParentFont:= false;
   mEdit_Custo[mQtdEdit].Parent := gb_Custo;
   mEdit_Custo[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamEdit_Custo,19);
   mleft:=mleft+mTamEdit_Custo+mEspaco;
   mEdit_Custo[mQtdEdit].Name      :='PERCCus_'+IntToStr(mQtdEdit);
   mEdit_Custo[mQtdEdit].Ctl3D     :=false;
   mEdit_Custo[mQtdEdit].Text      :='';
   mEdit_Custo[mQtdEdit].OnExit    :=mEdit_CustoExit;
   mEdit_Custo[mQtdEdit].OnEnter   :=mEdit_CustoEnter;
   mEdit_Custo[mQtdEdit].OnKeyPress:=mEdit_CustoKeyPress;



   mStatic_cus[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_cus[mQtdEdit].ParentFont := False;
   mStatic_cus[mQtdEdit].Parent     := gb_custo;
   mStatic_cus[mQtdEdit].AutoSize   := False;
   mStatic_cus[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Cus,17);
   mleft:=mleft+mTamStatic_Cus+mEspaco;
   mStatic_cus[mQtdEdit].Name       :='StpercCus_'+IntToStr(mQtdEdit);
   mStatic_cus[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_cus[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PTIPO').AsInteger=0 then
     mStatic_cus[mQtdEdit].Caption    :='%'
   else
     mStatic_cus[mQtdEdit].Caption    :='$';

   mStatic_Vlr_Custo[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_Vlr_Custo[mQtdEdit].ParentFont := false;
   mStatic_Vlr_Custo[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Custo[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Custo[mQtdEdit].Parent     := gb_Custo;
   mStatic_Vlr_Custo[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Vlr_Custo,17);
   mleft:=mleft+mTamStatic_Vlr_Custo+mEspaco;
   mStatic_Vlr_Custo[mQtdEdit].Name       :='StValorCusto_'+DM1.Query4.fieldbyName('PCCODIGO').AsString;
   mStatic_Vlr_Custo[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Vlr_Custo[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Vlr_Custo[mQtdEdit].Caption    :=FormatFloat(mcasccus, 0);

   mStatic_Dcus[mQtdEdit].Font.Color        :=clBlue;
   mStatic_Vlr_Custo[mQtdEdit].Font.Color   :=clBlue;
   mEdit_Custo[mQtdEdit].Font.Color         :=clBlue;
   mStatic_Dcus[mQtdEdit].Font.color        :=clBlue;

   mtop:=mtop+21;
   mtopmax:=mtopmax+1;
   if mtopmax>=(mQtdCol) then
      begin
      mtopmax:=0;
      if mSegCol<5 then
         mSegCol:=258
      else if mSegCol<259 then
         mSegCol:=519;
      mtop:=13;
      end;
   DM1.Query4.Next;
   end;

//if mtop>mtopmax then
//   mtopmax:=mtop;


mtopmax:=mQtdCol*21;
//mtopmax:=mtopmax+21;



gb_custo.Height   :=mtopmax+26;
lbl_custoCalc.Top    :=mtop;
st_custoCalc.Top     :=mtop;

lbl_custoCalc.Left    :=mSegCol+4;
st_custoCalc.Left     :=mSegCol+153;

lbl_custoCalc.Font.Style:=[fsBold];
st_custoCalc.font.Style :=[fsBold];


// termno da composicao do preco de custo
////////////////////////////////////////////
//***************************************************************************************



//***************************************************************************************



// inicio da composicao do preco de venda
//////////////////////////////////////////
//***************************************************************************************
mSegCol:=0;
mtop:=13;
mtopmax:=0;
mQtdEdit:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>3 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   DM1.Query4.Next;
   mtopmax:=mtopmax+1;
   end;
if mtopmax=0 then
   gb_Venda.Visible:=false
else
   begin
   if mVisibleClient=-1 then
      mVisibleClient:=3;
   mtopmax:=mtopmax+1;
   end;

if mtopmax>0 then
   mQtdCol:=mtopmax div 3;
if (mQtdCol*3)<mtopmax then
   mQtdCol:=mQtdCol+1;
mtopmax:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>3 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   SetLength(mStatic_vda,mQTdEdit+2);
   SetLength(mStatic_Dvda,mQTdEdit+2);
   SetLength(mStatic_Vlr_Venda,mQTdEdit+2);
   SetLength(mEdit_Venda,mQTdEdit+2);

   mStatic_Dvda[mQtdEdit]           := TStaticText.Create(Frm_PCus);
   mStatic_Dvda[mQtdEdit].ParentFont:= false;
   mStatic_Dvda[mQtdEdit].Parent    := gb_Venda;


   mStatic_Dvda[mQtdEdit].AutoSize:= False;
   mleft:=4;

   mStatic_Dvda[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTam_DCus,17);
   mleft:=mleft+mTam_DCus+mEspaco;
   mStatic_Dvda[mQtdEdit].Name       :='StNomeVda_'+IntToStr(mQtdEdit);
   mStatic_Dvda[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Dvda[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PCFATOR').AsInteger=1 then
      mStatic_Dvda[mQtdEdit].Caption :='(-) - '+DM1.Query4.fieldbyName('PCNOME').AsString
   else
      mStatic_Dvda[mQtdEdit].Caption :='(+) - '+DM1.Query4.fieldbyName('PCNOME').AsString;

   mEdit_Venda[mQtdEdit]           := TEdit.Create(Frm_PCus);
   mEdit_Venda[mQtdEdit].ParentFont:= false;
   mEdit_Venda[mQtdEdit].Parent := gb_Venda;
   mEdit_Venda[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamEdit_Custo,19);
   mleft:=mleft+mTamEdit_Custo+mEspaco;
   mEdit_Venda[mQtdEdit].Name      :='PERCVda_'+IntToStr(mQtdEdit);
   mEdit_Venda[mQtdEdit].Ctl3D     :=false;
   mEdit_Venda[mQtdEdit].Text      :='';
   mEdit_Venda[mQtdEdit].OnExit    :=mEdit_VendaExit;
   mEdit_Venda[mQtdEdit].OnEnter   :=mEdit_VendaEnter;
   mEdit_Venda[mQtdEdit].OnKeyPress:=mEdit_CustoKeyPress;



   mStatic_vda[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_vda[mQtdEdit].ParentFont := False;
   mStatic_vda[mQtdEdit].Parent     := gb_Venda;
   mStatic_vda[mQtdEdit].AutoSize   := False;
   mStatic_vda[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Cus,17);
   mleft:=mleft+mTamStatic_Cus+mEspaco;
   mStatic_vda[mQtdEdit].Name       :='StpercVda_'+IntToStr(mQtdEdit);
   mStatic_vda[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_vda[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PTIPO').AsInteger=0 then
     mStatic_vda[mQtdEdit].Caption    :='%'
   else
     mStatic_vda[mQtdEdit].Caption    :='$';

   mStatic_Vlr_Venda[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_Vlr_Venda[mQtdEdit].ParentFont := false;
   mStatic_Vlr_Venda[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Venda[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Venda[mQtdEdit].Parent     := gb_Venda;
   mStatic_Vlr_Venda[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Vlr_Custo,17);
   mleft:=mleft+mTamStatic_Vlr_Custo+mEspaco;
   mStatic_Vlr_Venda[mQtdEdit].Name       :='StValorVda_'+DM1.Query4.fieldbyName('PCCODIGO').AsString;
   mStatic_Vlr_Venda[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Vlr_Venda[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Vlr_Venda[mQtdEdit].Caption    :=FormatFloat(mcasccus, 0);

   mStatic_Dvda[mQtdEdit].Font.Color      :=$00800040;
   mStatic_Vlr_Venda[mQtdEdit].Font.Color   :=$00800040;
   mEdit_Venda[mQtdEdit].Font.Color         :=$00800040;
   mStatic_Dvda[mQtdEdit].Font.color       :=$00800040;

   mtop:=mtop+21;
   mtopmax:=mtopmax+1;
   if mtopmax>=(mQtdCol) then
      begin
      mtopmax:=0;
      if mSegCol<5 then
         mSegCol:=258
      else if mSegCol<259 then
         mSegCol:=519;
      mtop:=13;
      end;
   DM1.Query4.Next;
   end;

//if mtop>mtopmax then
//   mtopmax:=mtop;


mtopmax:=mQtdCol*21;
//mtopmax:=mtopmax+21;



gb_Venda.Height   :=mtopmax+26;
lbl_VendaCalc.Top    :=mtop;
st_VendaCalc.Top     :=mtop;


lbl_VendaCalc.Left    :=mSegCol+4;
st_VendaCalc.Left     :=mSegCol+153;

lbl_VendaCalc.Font.Style:=[fsBold];
st_VendaCalc.font.Style :=[fsBold];


// termno da composicao do preco de venda
////////////////////////////////////////////
//***************************************************************************************


// termino da Quarta Coluna formando os Encargos
mSegCol:=0;
mtop:=13;
mtopmax:=0;
mQtdEdit:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>2 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   DM1.Query4.Next;
   mtopmax:=mtopmax+1;
   end;
if mtopmax=0 then
   gb_Encargos.Visible:=false
else
   begin
   if mVisibleClient=-1 then
      mVisibleClient:=2;
   mtopmax:=mtopmax+1;
   end;

if mtopmax>0 then
   mQtdCol:=mtopmax div 3;
if (mQtdCol*3)<mtopmax then
   mQtdCol:=mQtdCol+1;
mtopmax:=0;
DM1.Query4.First;
While not DM1.Query4.Eof do
   begin
   if DM1.Query4.FieldByName('PCOPCIO').AsInteger<>2 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   SetLength(mstatic_Encar,mQTdEdit+2);
   SetLength(mstatic_DEncar,mQTdEdit+2);
   SetLength(mStatic_Vlr_Encar,mQTdEdit+2);
   SetLength(mEdit_Encar,mQTdEdit+2);

   mStatic_DEncar[mQtdEdit]           := TStaticText.Create(Frm_PCus);
   mStatic_DEncar[mQtdEdit].ParentFont:= false;
   mStatic_DEncar[mQtdEdit].Parent    := gb_Encargos;


   mStatic_DEncar[mQtdEdit].AutoSize:= False;
   mleft:=4;

   mStatic_DEncar[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTam_DCus,17);
   mleft:=mleft+mTam_DCus+mEspaco;
   mStatic_DEncar[mQtdEdit].Name       :='StNomeEncar_'+IntToStr(mQtdEdit);
   mStatic_DEncar[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Dencar[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PCFATOR').AsInteger=1 then
      mStatic_DEncar[mQtdEdit].Caption :='(-) - '+DM1.Query4.fieldbyName('PCNOME').AsString
   else
      mStatic_DEncar[mQtdEdit].Caption :='(+) - '+DM1.Query4.fieldbyName('PCNOME').AsString;

   mEdit_Encar[mQtdEdit]           := TEdit.Create(Frm_PCus);
   mEdit_Encar[mQtdEdit].ParentFont:= false;
   mEdit_Encar[mQtdEdit].Parent := gb_Encargos;
   mEdit_Encar[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamEdit_Custo,19);
   mleft:=mleft+mTamEdit_Custo+mEspaco;
   mEdit_Encar[mQtdEdit].Name      :='PERCEncar_'+IntToStr(mQtdEdit);
   mEdit_Encar[mQtdEdit].Ctl3D     :=false;
   mEdit_Encar[mQtdEdit].Text      :='';
   mEdit_Encar[mQtdEdit].OnExit    :=mEdit_EncarExit;
   mEdit_encar[mQtdEdit].OnEnter   :=mEdit_EncarEnter;
   mEdit_Encar[mQtdEdit].OnKeyPress:=mEdit_CustoKeyPress;



   mStatic_Encar[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_Encar[mQtdEdit].ParentFont := False;
   mStatic_Encar[mQtdEdit].Parent     := gb_Encargos;
   mStatic_Encar[mQtdEdit].AutoSize   := False;
   mStatic_Encar[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Cus,17);
   mleft:=mleft+mTamStatic_Cus+mEspaco;
   mStatic_Encar[mQtdEdit].Name       :='StpercEncar_'+IntToStr(mQtdEdit);
   mStatic_Encar[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Encar[mQtdEdit].Alignment  :=taRightJustify;
   if DM1.Query4.FieldByName('PTIPO').AsInteger=0 then
     mStatic_Encar[mQtdEdit].Caption    :='%'
   else
     mStatic_Encar[mQtdEdit].Caption    :='$';

   mStatic_Vlr_Encar[mQtdEdit]            := TStaticText.Create(Frm_PCus);
   mStatic_Vlr_Encar[mQtdEdit].ParentFont := false;
   mStatic_Vlr_Encar[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Encar[mQtdEdit].AutoSize   := False;
   mStatic_Vlr_Encar[mQtdEdit].Parent     := gb_Encargos;
   mStatic_Vlr_Encar[mQtdEdit].SetBounds(mleft+mSegCol,mtop,mTamStatic_Vlr_Custo,17);
   mleft:=mleft+mTamStatic_Vlr_Custo+mEspaco;
   mStatic_Vlr_Encar[mQtdEdit].Name       :='StValorEncar_'+DM1.Query4.fieldbyName('PCCODIGO').AsString;
   mStatic_Vlr_Encar[mQtdEdit].BorderStyle:=sbsSunken;
   mStatic_Vlr_Encar[mQtdEdit].Alignment  :=taRightJustify;
   mStatic_Vlr_Encar[mQtdEdit].Caption    :=FormatFloat(mcasccus, 0);

   mStatic_DEncar[mQtdEdit].Font.Color      :=clOlive;
   mStatic_Vlr_Encar[mQtdEdit].Font.Color   :=clOlive;
   mEdit_Encar[mQtdEdit].Font.Color         :=clOlive;
   mStatic_Encar[mQtdEdit].Font.color       :=clOlive;

   mtop:=mtop+21;
   mtopmax:=mtopmax+1;
   if mtopmax>=(mQtdCol) then
      begin
      mtopmax:=0;
      if mSegCol<5 then
         mSegCol:=258
      else if mSegCol<259 then
         mSegCol:=519;
      mtop:=13;
      end;
   DM1.Query4.Next;
   end;

//if mtop>mtopmax then
//   mtopmax:=mtop;


mtopmax:=mQtdCol*21;
//mtopmax:=mtopmax+21;



gb_Encargos.Height   :=mtopmax+26;
lbl_EncarCalc.Top    :=mtop;
st_EncarCalc.Top     :=mtop;


lbl_EncarCalc.Left    :=mSegCol+4;
st_EncarCalc.Left     :=mSegCol+153;

lbl_EncarCalc.Font.Style:=[fsBold];
st_EncarCalc.font.Style :=[fsBold];

Height:=height-gb_Encargos.Height+mtopmax;
if mVisibleClient=1 then
   gb_custo.Align:=alClient
else if mVisibleClient=2 then
   gb_Encargos.Align:=alClient
else if mVisibleClient=3 then
   gb_Venda.Align:=alClient;

fatualizaPadrao2(0);

end;


procedure TFrm_Pcus.bbImprimirClick(Sender: TObject);
begin
testeform := TFrm_Pcus(FindGlobalComponent('form_mfor01'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_mfor01, form_mfor01);


if CB_FORMULA.Checked then
   form_mfor01.fPcusImprime(2,ValFloat(CODPRO.Text),ValFloat(NPCOCOM.Text),mqtdGrml,Trim(numero.Text) )
else
   form_mfor01.fPcusImprime(0,ValFloat(CODPRO.Text),ValFloat(NPCOCOM.Text),mqtdGrml,Trim(numero.Text) );
form_mfor01.free;
form_mfor01:=nil;

end;

Function TFrm_Pcus.fPcusAtuaGrid(ptipo: Integer): Boolean;
var
mQtdEdit: Integer;

begin

if Trim(NPCOCOM.Text)='' then
   NPCOCOM.Text:=insere(Formatfloat(mcasasCus, DM1.Tb_ProPDUCPR.Value),' ',mspavlr);
Qr_Cus.Close;
Qr_Cus.SQL.Clear;
if pbanco<>0 then
   begin
   Qr_Cus.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcus '
              +' left outer join cadcus '
              +' on (pccodigo=cucodpcu) ');
    Qr_Cus.SQL.Add(' and (CUTIPO=0) '
                  +' and (CUCODEMP='+Inttostr(codemp)+' or CUCODEMP='+Inttostr(iif(codemp>100,codemp-100,codemp))+')  '
              +' and (CUCODIGO=0'+Trim(CODPRO.Text)+')'
              +' order by PCNOME ');

   end
else
   begin
   Qr_Cus.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcus,cadcus '
              +' Where cucodpcu(+)=pccodigo');
   Qr_Cus.SQL.Add(' and (CUTIPO(+)=0) '
               +' AND (CUCODEMP='+Inttostr(codemp)+' or CUCODEMP='+Inttostr(iif(codemp>100,codemp-100,codemp))+')  '
              +' and (CUCODIGO(+)=0'+Trim(CODPRO.Text)+')'
              +' order by PCNOME ');

   end;
try
  Qr_Cus.Open;
except
  Qr_Cus.Sql.SaveToFile(mpastatemp + 'SQL.txt');
  end;

mQtdEdit:=0;
While not Qr_cus.Eof do
   begin
   if Qr_cusPCOPCIO.AsInteger<>0 then
      begin
      Qr_cus.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;

   if CB_CUSTOS.Checked then
      begin
      if Qr_cusCUPERC.AsFloat>0 then
         mEdit_Compra[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat)
      end
   else
      mEdit_Compra[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat);
   Qr_cus.Next;
   end;
Qr_cus.First;

mQtdEdit:=0;
While not Qr_cus.Eof do
   begin
   if Qr_cusPCOPCIO.AsInteger<>1 then
      begin
      Qr_cus.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;

   if CB_CUSTOS.Checked then
      begin
      if Qr_cusCUPERC.AsFloat>0 then
         mEdit_Custo[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat)
      end
   else
      mEdit_Custo[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat);
   Qr_cus.Next;
   end;

mQtdEdit:=0;
Qr_cus.First;
While not Qr_cus.Eof do
   begin
   if Qr_cusPCOPCIO.AsInteger<>3 then
      begin
      Qr_cus.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   if CB_CUSTOS.Checked then
      begin
      if Qr_cusCUPERC.AsFloat>0 then
         mEdit_Venda[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat)
      end
   else
      mEdit_Venda[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat);
   Qr_cus.Next;
   end;


mQtdEdit:=0;
Qr_cus.First;
While not Qr_cus.Eof do
   begin
   if Qr_cusPCOPCIO.AsInteger<>2 then
      begin
      Qr_cus.Next;
      Continue;
      end;
   mQtdEdit:=mQtdEdit+1;
   if CB_CUSTOS.Checked then
      begin
      if Qr_cusCUPERC.AsFloat>0 then
         mEdit_Encar[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat)
      end
   else
      mEdit_Encar[mQtdEdit].Text:=FormatFloat(mcasas, Qr_cusCUPERC.AsFloat);
   Qr_cus.Next;
   end;




if not flcadcus2(0,0,Trim(CODPRO.Text)) then
   begin
   fAtualizaPadrao(1);
   ACPCO02.Text:=FormatFloat(mcasasCus,0);
   ACPCO03.Text:=FormatFloat(mcasasCus,0);
   end
else
   begin
   CB_ATUP01.Checked :=DM1.Tb_Cus2CUATUP01.Value   =0;
   CB_ATUP02.Checked :=DM1.Tb_Cus2CUATUP02.Value   =0;
   CB_ATUP03.Checked :=DM1.Tb_Cus2CUATUP03.Value   =0;
   CB_FORMULA.Checked:=DM1.Tb_Cus2CUORIGEMPCO.Value=1;
   ACPCO02.Text:=FormatFloat(mcasasCus,DM1.Tb_Cus2CUACPCO2.Value);
   ACPCO03.Text:=FormatFloat(mcasasCus,DM1.Tb_Cus2CUACPCO3.Value);
   PCOMIN.Text       :=FormatFloat(mcasaspu,DM1.Tb_Cus2CUPCOMIN.Value);
   INCPMIN.Text      :=FormatFloat(mcasaspu,DM1.Tb_Cus2CUINCPCOMIN.Value);
   end;

fcalccus(0);

bbGravar.Enabled:=True;
result:=true;
end;

Function TFrm_Pcus.fPcusCaptura(pCodpro,pQtdgrml: Real): Real;
var
mcasasform: integer;
begin
mcasasform:=6;
mcusenv:=0;
mCusFab:=0;
mpcusto:=0;
mvt    :=0;
mTotQtd:=0;

// identificar o codigo do envase

if DM1.Tb_PargerPINDUSTRIA.Value=1 then
   mcodenv:=pcodpro
else
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  if (DM1.Tb_PargerPINDUSTRIA.Value<>5)  then
    begin
    DM1.Query1.SQL.Add('Select CPCODPRO from CADCOMP where '
                      +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                      +' CPCODPRO_ACAB=0'+FloatToStr(pCodpro));
    DM1.Query1.Open;
    end
  else
     begin
     DM1.Query1.SQL.Add('Select CPCODMAT TOTAL from CADCOMP where '
                       +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                       +' CPCODPRO=0'+FloatToStr(pCodpro));
     DM1.Query1.Open;
//     mpcusto:=DM1.Query1.Fields[0].AsFloat;
//     Exit;
     end;
   mcodenv:=DM1.Query1.Fields[0].AsFloat;
   flcadcomp02(0,FloatToStr(mcodenv),FloatToStr(pCodpro));
   end;
mtotal:=0;
if DM1.Tb_PargerPINDUSTRIA.Value=5 then
   flcadcomp(0,0,FloatToStr(pcodpro),'','')
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   flcadcomp(0,0,FloatToStr(pcodpro),'','0')
else if DM1.Tb_PargerPINDUSTRIA.Value=2 then
   flcadcomp(0,-1,FloatToStr(mcodenv),'','0')
else
   flcadcomp(0,-1,FloatToStr(mcodenv),'','');

While not DM3.Tb_Comp.Eof do
   begin
{   mvt:=Arredonda(DM3.Tb_Comppcocus.Value*DM3.Tb_Compquantidade.Value,DM1.Tb_PargerPCASPUIND.Asinteger);}
   mvt:=DM3.Tb_Comppcocus.Value*DM3.Tb_Compquantidade.Value;

   mvt:=mvt-DM3.Tb_CompCPICMSCRED.Value;
   mtotal:=mtotal+mvt;
     if DM3.Tb_CompCPCODPRO_ACAB.AsFloat=0 then
      mtotQtd:=mtotQtd+DM3.Tb_Compquantidade.Value;

   DM3.Tb_Comp.Next;
   end;
if (DM1.Tb_PargerPINDUSTRIA.Value=1) or (DM1.Tb_PargerPINDUSTRIA.Value=4) then
   mpcusto:=Arredonda(mtotal,mcasasform)
else
   begin
   if DM1.Tb_PargerPIND_TPFORMULA.AsInteger>0 then
      begin
      try
         mtotQtd:=mtotQtd/pQtdGrml;
         mpcusto:=mtotal/mtotQtd;
      except
         mpcusto:=0;
         mtotQtd:=0;
         end;
      end
   else
      begin
      try
         mpcusto:=mtotal/DM3.Tb_Comp02CP_MEDUND.Value;
//         mpcusto:=DM1.Tb_PargerPCASPUIND.AsInteger;
         mpcusto:=Arredonda(mpcusto,mcasasform);
      except
         mpcusto:=Arredonda(mtotal,mcasasform);
         end;
      end;
   end;
mCusFab:=mpcusto;

mtotal:=0;
// inicia o envase
if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   flcadcomp(0,1,FloatToStr(pcodpro),'','0')
else if DM1.Tb_PargerPINDUSTRIA.Value=2 then
   flcadcomp(0,-1,FloatToStr(mcodenv),'',FloatToStr(pCodpro))
else
   flcadcomp(0,-1,FloatToStr(mcodenv),'',FloatToStr(pCodpro));

While not DM3.Tb_Comp.Eof do
  begin
//  mvt:=Arredonda((DM3.Tb_Comppcocus.Value*DM3.Tb_CompCPQUANT.Value),DM1.Tb_PargerPCASPUIND.AsInteger);
  mvt:=DM3.Tb_Comppcocus.Value*DM3.Tb_CompCPQUANT.Value;
  mvt:=mvt-DM3.Tb_CompCPICMSCRED.Value;
  mtotal:=mtotal+mvt;
  DM3.Tb_Comp.Next;
  end;

// SOMANDO AS CAIXAS
if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   flcadcomp(0,2,FloatToStr(pcodpro),'','0')
else if DM1.Tb_PargerPINDUSTRIA.Value=2 then
   flcadcomp(0,2,FloatToStr(mcodenv),'',FloatToStr(pCodpro))
else
   flcadcomp(0,2,FloatToStr(mcodenv),'',FloatToStr(pCodpro));
While not DM3.Tb_Comp.Eof do
  begin
//  mvt:=Arredonda((DM3.Tb_Comppcocus.Value*(1/DM3.Tb_CompCPQUANT.Value)),DM1.Tb_PargerPCASPUIND.AsInteger);
  try
    mvt:=DM3.Tb_Comppcocus.Value*(DM3.Tb_CompCPQUANT.Value) ;
//    mvt:=DM3.Tb_Comppcocus.Value*(1/DM3.Tb_CompCPQUANT.Value);
  except
    mvt:=0;
    end;
  mvt:=mvt-DM3.Tb_CompCPICMSCRED.Value;
  mtotal:=mtotal+mvt;
  DM3.Tb_Comp.Next;
  end;


mCusEnv:=mtotal;
mpcusto:=mCusFab+mCusEnv;
Result:=Arredonda(mpcusto,DM1.Tb_PargerPCASPUIND.AsInteger);
end;

procedure TFrm_Pcus.SBPCOFORClick(Sender: TObject);
begin

if fLerGenerico_query('dual','fBuscarCustoProduto('+QuotedStr('S')+','+QuotedStr(fdeixanum(CODPRO.Text))+')','',query_consulta) then
   NPCOCOM.Text:=FormatFloat(mcasasCus,query_consulta.Fields[0].AsFloat);

//select fAtualizarCustoProduto(12440) as total from dual

//NPCOCOM.Text:=FormatFloat(mcasasCus, fPcusCaptura(ValFloat(CODPRO.Text),mqtdGrml));
ST_CUSFAB.Caption :=Formatfloat(mcasasCus, mCusFab);
ST_CUSENV.Caption :=Formatfloat(mcasasCus, mCusEnv);
fcalccus(0);
end;




procedure TFrm_Pcus.bbSavar_PadroesClick(Sender: TObject);
begin
fDeletaPadroes(0,'_PCUS','');
fGravaPadroes(0,'CB_ATUP01','checked','_PCUS',iif(CB_ATUP01.Checked,'true','false'));
fGravaPadroes(0,'CB_ATUP02','checked','_PCUS',iif(CB_ATUP02.Checked,'true','false'));
fGravaPadroes(0,'CB_ATUP03','checked','_PCUS',iif(CB_ATUP03.Checked,'true','false'));
fGravaPadroes(0,'CB_CUSTOS','checked','_PCUS',iif(CB_CUSTOS.Checked,'true','false'));
fGravaPadroes(0,'CB_ATUPRO','checked','_PCUS',iif(CB_ATUPRO.Checked,'true','false'));
fGravaPadroes(0,'CB_FORMULA','checked','_PCUS',iif(CB_FORMULA.Checked,'true','false'));
fmensagem('Gravado!',0,['0'],0);
end;

function TFrm_Pcus.fAtualizaPadrao(pTipo: Integer): Boolean;
begin
if flfilpad(codusr,'_PCUS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUP01',[]) then
      CB_ATUP01.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUP02',[]) then
      CB_ATUP02.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUP03',[]) then
      CB_ATUP03.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if ptipo<>1 then
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CUSTOS',[]) then
         CB_CUSTOS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
      if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUPRO',[]) then
         CB_ATUPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FORMULA',[]) then
      CB_FORMULA.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;

if flfilpad(0,'_PCUS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUP01',[]) then
      CB_ATUP01.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUP02',[]) then
      CB_ATUP02.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUP03',[]) then
      CB_ATUP03.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if ptipo<>1 then
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP','CB_CUSTOS',[]) then
         CB_CUSTOS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
      if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ATUPRO',[]) then
         CB_ATUPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_FORMULA',[]) then
      CB_FORMULA.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;

result:=True;
end;

function TFrm_Pcus.fAtualizaPadrao2(pTipo: Integer): Boolean;
var
x: Integer;
begin

if flfilpad(0,'_PCUS_PERC02','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','ACPCO02',[]) then
      ACPCO02.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','ACPCO03',[]) then
      ACPCO03.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   end;


if flfilpad(0,'_PCUS_PERC','') then
   begin
   bbSalvarPerc.Caption:='Remover Percentuais Padrão';
   bbSalvarPerc.Font.Color:=clRed;
   for x:=1 to High(mEdit_Compra) do
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP','PERCCPR_'+IntToStr(x),[]) then
         mEdit_Compra[x].Text:=FormatFloat(mcasasCus, ValFloat(DM4.Tb_FilPad2FPVALOR.Value));

      end;

   for x:=1 to High(mEdit_Custo) do
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP','PERCCUS_'+IntToStr(x),[]) then
         mEdit_Custo[x].Text:=FormatFloat(mcasasCus, ValFloat(DM4.Tb_FilPad2FPVALOR.Value));

      end;

   for x:=1 to High(mEdit_Venda) do
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP','PERCVDA_'+IntToStr(x),[]) then
         mEdit_Venda[x].Text:=FormatFloat(mcasasCus, ValFloat(DM4.Tb_FilPad2FPVALOR.Value));

      end;

   for x:=1 to High(mEdit_Encar) do
      begin
      if DM4.Tb_FilPad2.Locate('FPCOMP','PERCENCAR_'+IntToStr(x),[]) then
         mEdit_Encar[x].Text:=FormatFloat(mcasasCus, ValFloat(DM4.Tb_FilPad2FPVALOR.Value));
      end;


   end;
result:=true;
end;

procedure TFrm_Pcus.mEdit_CompraEnter(Sender: TObject);
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

procedure TFrm_Pcus.mEdit_CustoEnter(Sender: TObject);
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


procedure TFrm_PCus.mEdit_VendaEnter(Sender: TObject);
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


procedure TFrm_PCus.mEdit_EncarEnter(Sender: TObject);
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

procedure TFrm_Pcus.mEdit_CompraExit(Sender: TObject);
begin
mEdit_Compra[mEditAtivo].Text:=Formatfloat(mcasas, ValFloat(MEdit_compra[mEditAtivo].Text));
fcalccus(0);
end;



procedure TFrm_Pcus.mEdit_CustoExit(Sender: TObject);
begin
mEdit_Custo[mEditAtivo].Text:=Formatfloat(mcasas, ValFloat(MEdit_custo[mEditAtivo].Text));
fcalccus(0);
end;

procedure TFrm_Pcus.mEdit_VendaExit(Sender: TObject);
begin

mEdit_Venda[mEditAtivo].Text:=Formatfloat(mcasas, ValFloat(MEdit_Venda[mEditAtivo].Text));
fcalccus(0);


end;


procedure TFrm_Pcus.mEdit_EncarExit(Sender: TObject);
begin

mEdit_Encar[mEditAtivo].Text:=Formatfloat(mcasas, ValFloat(MEdit_Encar[mEditAtivo].Text));
fcalccus(0);


end;

procedure TFrm_Pcus.mEdit_CustoKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;

end;


procedure TFrm_Pcus.PCOMINExit(Sender: TObject);
begin
PCOMIN.Text:=FormatFloat(mcasasCus, ValFloat(PCOMIN.Text));
fcalccus(0);

end;

procedure TFrm_Pcus.INCPMINExit(Sender: TObject);
begin
INCPMIN.Text:=FormatFloat(mcasasCus, ValFloat(INCPMIN.Text));
fcalccus(0);

end;

procedure TFrm_Pcus.PCOMINKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then key:=DecimalSeparator;
end;

procedure TFrm_Pcus.numeroExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
if Trim(numero.Text)<>'' then
   begin
   if not flcadlgc(0,1,0,CODPRO.Text,numero.Text,'') then
      begin
      fmensagem('Grade Não cadastrada!',0,['0'],0);
      numero.SetFocus;
      end;
   end;

end;

procedure TFrm_Pcus.numeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin

   if Frm_ConsLot=nil then
      Application.CreateForm(TFrm_ConsLot, Frm_ConsLot)
   else
      begin
      Frm_ConsLot.Free;
      Frm_ConsLot:=nil;
      Application.CreateForm(TFrm_ConsLot, Frm_ConsLot);
      end;

   Frm_ConsLot.ShowModal;
   Frm_ConsLot.Free;
   Frm_ConsLot:=nil;
  
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

procedure TFrm_Pcus.SbAtuMatPrimClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Atualizar os Preços das Matérias Primas?',0,['1','2'],2)<>mrYes then
   exit;
form_mfor01.fAtualizarFormulas(1,false);
verteclado(0);
fmensagem('registro Atualizado!',0,['0'],0);

end;

procedure TFrm_Pcus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
mori_pcus:='';
if (FormState<>[fsModal]) then
   Action := caFree;
end;
function fTipopCusto(pNome: String): Integer;
//0 no valor Origem 1-no Acumulado

begin
pNome:=trim(pNome);
if (not (DM1.Tb_Pcus.Active)) or (not DM1.Tb_Pcus.Locate('PCNOME',pNome,[]))  then
   begin
   DM1.Tb_Pcus.Close;
   DM1.Tb_PCus.SQL.Clear;
   DM1.Tb_PCus.SQL.add('Select * from CADPCUS ');
//   DM1.Tb_PCus.SQL.Add(' where PCNOME='+chr(39)+pNome+chr(39));
   DM1.Tb_PCus.SQL.Add(' order by PCNOME');
//   DM1.Tb_PCus.SQL.SavetoFile(mpastatemp + 'SQL.txt');

   DM1.Tb_PCus.open;
   end;
if DM1.Tb_Pcus.Locate('PCNOME',pNome,[])  then
   result:=DM1.Tb_PcusPCAPLS.AsInteger
else
   result:=0;
end;


function fTipoFormula(pNome: String): Integer;
//0 Divisao 1-no Valor

begin
pNome:=trim(pNome);
if (not (DM1.Tb_Pcus.Active)) or (not DM1.Tb_Pcus.Locate('PCNOME',pNome,[]))  then
   begin
   DM1.Tb_Pcus.Close;
   DM1.Tb_PCus.SQL.Clear;
   DM1.Tb_PCus.SQL.add('Select * from CADPCUS ');
//   DM1.Tb_PCus.SQL.Add(' where PCNOME='+chr(39)+pNome+chr(39));
   DM1.Tb_PCus.SQL.Add(' order by PCNOME');
//   DM1.Tb_PCus.SQL.SavetoFile(mpastatemp + 'SQL.txt');

   DM1.Tb_PCus.open;
   end;
if DM1.Tb_Pcus.Locate('PCNOME',pNome,[])  then
   result:=DM1.Tb_PCUSPFORMULA.AsInteger
else
   result:=0;
end;

procedure TFrm_Pcus.bbSalvarPercClick(Sender: TObject);
var
x: Integer;
begin

fDeletaPadroes(0,'_PCUS_PERC','');
if bbSalvarPerc.Font.Color=clRed then
   begin
   bbSalvarPerc.Caption:='Salvar Percentuais Padrão';
   bbSalvarPerc.Font.Color:=clWindowText;
   exit;
   end
else
   begin
   bbSalvarPerc.Caption:='Remover Percentuais Padrão';
   bbSalvarPerc.Font.Color:=clRed;
   end;


for x:=1 to High(mEdit_Compra) do
   begin
   fGravaPadroes(0,'PERCCPR_'+IntToStr(x),'text','_PCUS_PERC',mEdit_Compra[x].Text);
   end;

for x:=1 to High(mEdit_Custo) do
   begin
   fGravaPadroes(0,'PERCCUS_'+IntToStr(x),'text','_PCUS_PERC',mEdit_Custo[x].Text);
   end;

for x:=1 to High(mEdit_Venda) do
   begin
   fGravaPadroes(0,'PERCVDA_'+IntToStr(x),'text','_PCUS_PERC',mEdit_Venda[x].Text);
   end;

for x:=1 to High(mEdit_Encar) do
   begin
   fGravaPadroes(0,'PERCENCAR_'+IntToStr(x),'text','_PCUS_PERC',mEdit_Encar[x].Text);
   end;

fDeletaPadroes(0,'_PCUS_PERC02','');
fGravaPadroes(0,'ACPCO02','text','_PCUS_PERC02',ACPCO02.Text);
fGravaPadroes(0,'ACPCO03','text','_PCUS_PERC02',ACPCO03.Text);


fmensagem('Gravado!',0,['0'],0);

end;

function fAtualizarCustosPadrao(pTipo: Integer): boolean;
begin
end;
procedure TFrm_Pcus.cb_casasChange(Sender: TObject);
var
  n_casas: String;
begin
fDeletaPadroes(0,'_PCUS2','');
fGravaPadroes(0,'CB_CASAS','ItemIndex','_PCUS2',IntToStr(cb_casas.ItemIndex));

n_casas:=',0'+Insere2('.','0',StrToInt(cb_casas.Text)+1)+';-,0'+Insere2('.','0',StrToInt(cb_casas.Text)+1);
edt_npven1.DecimalPlaces:=StrToInt(cb_casas.Text);
edt_npven1.DisplayFormat:=n_casas;
edt_npven2.DecimalPlaces:=StrToInt(cb_casas.Text);
edt_npven2.DisplayFormat:=n_casas;
edt_npven3.DecimalPlaces:=StrToInt(cb_casas.Text);
edt_npven3.DisplayFormat:=n_casas;
end;

end.
