unit S_SelGra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons,S_DM1,lerarq,S_Pro,S_Grafico,
  func,S_Cli,S_Ven,S_For,S_Red,S_Con,S_TipPro,S_GPro,S_Ram,S_TCon,S_Sup,
  ComCtrls, CheckLst,S_UF,S_Emp, S_SelEmp,s_lerarq_geral;

type
  TFrm_SelGra = class(TForm)
    RGTipo: TRadioGroup;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    MDTF1: TMaskEdit;
    MDTI1: TMaskEdit;
    MDT1: TMaskEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    MDTF2: TMaskEdit;
    MDTI2: TMaskEdit;
    MDT2: TMaskEdit;
    RG_QTDVLR: TRadioGroup;
    bbGerar: TBitBtn;
    bbSair: TBitBtn;
    CB_EmiDoc: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ts_outros: TTabSheet;
    lbl_cliente: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    lbl_vendedor: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    lbl_pro: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    lbl_for: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    RG_TIPOPED: TCheckListBox;
    lbl_sup: TStaticText;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    CB_AGRUNOME: TCheckBox;
    tsFiltros2: TTabSheet;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_CODGRU: TListBox;
    OMITIR_GRU: TCheckBox;
    Label9: TLabel;
    RAMO: TEdit;
    lbx_RAMO: TListBox;
    OMITIR_RAMO: TCheckBox;
    Label10: TLabel;
    CIDADE: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    Label11: TLabel;
    UF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    lblCodigo: TLabel;
    CODIGO: TEdit;
    OMITIR_COD: TCheckBox;
    lbx_codigo: TListBox;
    lbx_codreg: TListBox;
    CODREG: TEdit;
    OMITIR_REG: TCheckBox;
    Label7: TLabel;
    procedure bbSairClick(Sender: TObject);
    procedure RGTipoClick(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MDTI1Exit(Sender: TObject);
    procedure MDTI2Exit(Sender: TObject);
    procedure MDTF1Exit(Sender: TObject);
    procedure MDTF2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOExit(Sender: TObject);
    procedure lbx_codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODIGOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_CODGRUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_RAMOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure RAMOExit(Sender: TObject);
    procedure CIDADEExit(Sender: TObject);
    procedure UFExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure RAMOKeyPress(Sender: TObject; var Key: Char);
    procedure CIDADEKeyPress(Sender: TObject; var Key: Char);
    procedure UFKeyPress(Sender: TObject; var Key: Char);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CODREGExit(Sender: TObject);
    procedure CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codregKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fSelGraMSai_Prod(ptipo: Integer): Boolean;
    function fSelGraMEnt_Prod(ptipo: Integer): Boolean;
    function fSelGraMSai_For(ptipo: Integer): Boolean;
    function fSelGraMEnt_For(ptipo: Integer): Boolean;
    function fSelGraMSai_Cli(ptipo: Integer): Boolean;
    function fSelGraMSai_Red(ptipo: Integer): Boolean;
    function fSelGraMSai_Con(ptipo: Integer): Boolean;
    function fSelGraMSai_TPro(ptipo: Integer): Boolean;
    function fSelGraMEnt_TPro(ptipo: Integer): Boolean;
    function fSelGraMSai_GPro(ptipo: Integer): Boolean;
    function fSelGraMEnt_GPro(ptipo: Integer): Boolean;
    function fSelGraMSai_Ram(ptipo: Integer): Boolean;
    function fSelGraMEnt_Ram(ptipo: Integer): Boolean;
    function fSelGraMSai_TCon(ptipo: Integer): Boolean;
    function fSelGraMEnt_TCon(ptipo: Integer): Boolean;
    function fSelGraMSai_Ven(ptipo: Integer): Boolean;
    function fSelGraMSai_Sup(ptipo: Integer): Boolean;

    function fAtualizaCabecalho(pTipo: Integer;pTitulo,pTitulos: String): Boolean;
    function fComplementoSql(pTipo: Integer): String;

    function fSelGraMSai_UF(ptipo: Integer): Boolean;
    function fSelGraMEnt_UF(ptipo: Integer): Boolean;

    function fSelGraMSai_Emp(ptipo: Integer): Boolean;
    function fSelGraMEnt_Emp(ptipo: Integer): Boolean;

  public
    { Public declarations }

    Form_SelEmp: TFrm_SelEmp;
    mcomando: string;
  end;

var
  Frm_SelGra: TFrm_SelGra;
  mSelGra_Origem: Integer;
  mtabtemp: String;
  mDataPesq: String;
  mCampoGrupo: String;
implementation

uses S_C, DBTables;

{$R *.dfm}

procedure TFrm_SelGra.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_SelGra.RGTipoClick(Sender: TObject);
begin
if RGTipo.ItemIndex=0 then
   begin
   Label1.Visible:=True;
   Label2.Visible:=True;
   MDT1.Visible  :=True;
   MDT2.Visible  :=True;

   Label3.Visible:=False;
   Label4.Visible:=False;
   Label5.Visible:=False;
   Label6.Visible:=False;
   MDTI1.Visible :=False;
   MDTI2.Visible :=False;
   MDTF1.Visible :=False;
   MDTF2.Visible :=False;

   end
else
   begin
   Label1.Visible:=False;
   Label2.Visible:=False;
   MDT1.Visible  :=False;
   MDT2.Visible  :=False;

   Label3.Visible:=True;
   Label4.Visible:=True;
   Label5.Visible:=True;
   Label6.Visible:=True;
   MDTI1.Visible :=True;
   MDTI2.Visible :=True;
   MDTF1.Visible :=True;
   MDTF2.Visible :=True;
   end;

end;

procedure TFrm_SelGra.bbGerarClick(Sender: TObject);
begin

if (RGTipo.ItemIndex=0) and (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Invalido Data Inicial Maior que Final!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

if (RGTipo.ItemIndex=1) and (Trim(MDTI1.Text)<>'/  /') and (Trim(MDTI2.Text)<>'/  /') then
   begin
   if StrToDate(MDTI2.Text)<StrToDate(MDTI1.Text) then
      begin
      fMensagem('Invalido Data Inicial Maior que Final!',0,['0'],0);
      MDTI1.SetFocus;
      exit;
      end;
   end;

if (RGTipo.ItemIndex=1) and (Trim(MDTF1.Text)<>'/  /') and (Trim(MDTF2.Text)<>'/  /') then
   begin
   if StrToDate(MDTF2.Text)<StrToDate(MDTF1.Text) then
      begin
      fMensagem('Invalido Data Inicial Maior que Final!',0,['0'],0);
      MDTF1.SetFocus;
      exit;
      end;
   end;

mtabtemp:='';


if (mSelGra_Origem=1) or  (mSelGra_Origem=3) or  (mSelGra_Origem=8) // grupo de entradas
   or  (mSelGra_Origem=10) or  (mSelGra_Origem=12)
   or  (mSelGra_Origem=14) or  (mSelGra_Origem=17)
   or  (mSelGra_Origem=19) then
   mDataPesq:='PF1DATAENT'
else
   begin
   if CB_EmiDoc.Checked then
      mDataPesq:='P1DATDOC'
   else
      mDataPesq:='P1DATAP';
   end;



if Frm_Grafico=nil then
   Application.CreateForm(TFrm_Grafico, Frm_Grafico)
else
   begin
   Frm_Grafico.free;
   Frm_Grafico:=nil;
   Application.CreateForm(TFrm_Grafico, Frm_Grafico);
   end;


if RGTipo.ItemIndex=0 then
   mPar_Periodos :=false
else
   mPar_Periodos :=true;



if mSelGra_Origem=0 then // produto Saidas
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='PDNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_Prod(0);
   end
else if mSelGra_Origem=1 then // produto entradas
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='PDNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_Prod(0);
   end
else if mSelGra_Origem=2 then // fornecedor Saidas
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='FRAZAO'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_For(0);
   end
else if mSelGra_Origem=3 then // fornecedor Entradas
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='FRAZAO'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_For(0);
   end
else if mSelGra_Origem=4 then // Vendas por Cliente
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='CRAZAO'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_Cli(0);
   end
else if mSelGra_Origem=5 then // Vendas por Rede Cliente
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='RDNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_Red(0);
   end
else if mSelGra_Origem=6 then // Vendas por Convenio de Cliente
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='CVRAZAO'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_Con(0);
   end
else if mSelGra_Origem=7 then // Vendas por Tipo de Produtos
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='TNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_TPro(0);
   end
else if mSelGra_Origem=8 then // Entradas por Tipo de Produto
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='TNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_TPro(0);
   end
else if mSelGra_Origem=9 then // Vendas por Grupo de Produtos
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='GRNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_GPro(0);
   end
else if mSelGra_Origem=10 then // Entradas por Grupo de Produto
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='GRNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_GPro(0);
   end
else if mSelGra_Origem=11 then // Vendas por Ramo de Produtos
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='RNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';

   fSelGraMSai_Ram(0);
   end
else if mSelGra_Origem=12 then // Entradas por Ramo de Produto
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='RNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_Ram(0);
   end
else if mSelGra_Origem=13 then // Vendas por Tipo de Produtos
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='CNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_TCon(0);
   end
else if mSelGra_Origem=14 then // Entradas por Tipo de Produto
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='CNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_TCon(0);
   end
else if mSelGra_Origem=15 then // Vendas por Vendedor
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='VNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_Ven(0);
   end
else if mSelGra_Origem=16 then // Vendas por Supervisor
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='SNOME'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_Sup(0);
   end
else if mSelGra_Origem=17 then // entradas por estado
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='FUF'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_UF(0);
   end
else if mSelGra_Origem=18 then // saidas por estado
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='CUF'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_UF(0);
   end
else if mSelGra_Origem=19 then // entradas por Empresa
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='RAZAO'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMEnt_Emp(0)
   end
else if mSelGra_Origem=20 then // saidas por Empresa
   begin
   if CB_AGRUNOME.Checked then
      mCampoGrupo:='RAZAO'
   else
      mCampoGrupo:='TO_CHAR('+mDataPesq+', '+chr(39)+'YYYYMM'+chr(39)+')';
   fSelGraMSai_Emp(0);
   end;



if RG_QTDVLR.ItemIndex=0 then
   Frm_Grafico.Tb_VProTMVALOR.DisplayFormat:=mcasqtd
else
   Frm_Grafico.Tb_VProTMVALOR.DisplayFormat:=mcasas;

Frm_Grafico.FormStyle:=fsNormal;
Frm_Grafico.Visible:=false;

Frm_Grafico.ShowModal;
Frm_Grafico.Tb_VPro.Close;
if Trim(mtabtemp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Drop Table '+mtabtemp);
   try
      DM1.Query1.ExecSQL;
   except
      end;
   end;
Frm_Grafico.Free;
Frm_Grafico:=nil;

end;

procedure TFrm_SelGra.FormCreate(Sender: TObject);
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

RGTipo.ItemIndex:=0;


RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

if mSelGra_Origem=0 then
   begin
   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Produto';
   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=True;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=True;
   CODCLI.Visible      :=True;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;
   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=False;
   CODFOR.Visible      :=false;
   OMITIR_FOR.Visible  :=false;
   lbx_codfor.Visible  :=false;

   lbl_sup.Visible     :=True;
   CODSUP.Visible      :=True;
   OMITIR_SUP.Visible  :=True;
   lbx_codsup.Visible  :=True;


   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=1 then
   begin
   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Produto';

   ts_outros.TabVisible:=false;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=True;
   CODFOR.Visible      :=True;
   OMITIR_FOR.Visible  :=True;
   lbx_codfor.Visible  :=True;

   lbl_sup.Visible     :=False;
   CODSUP.Visible      :=False;
   OMITIR_SUP.Visible  :=False;
   lbx_codsup.Visible  :=False;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;
   end
else if mSelGra_Origem=2 then
   begin
   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Fornecedor';


   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=True;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=True;
   CODCLI.Visible      :=True;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;
   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=True;
   CODFOR.Visible      :=True;
   OMITIR_FOR.Visible  :=True;
   lbx_codfor.Visible  :=True;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;
   end
else if mSelGra_Origem=3 then
   begin
   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Fornecedor';

   ts_outros.TabVisible:=false;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=True;
   CODFOR.Visible      :=True;
   OMITIR_FOR.Visible  :=True;
   lbx_codfor.Visible  :=True;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;
   end
else if mSelGra_Origem=4 then // Vendas por Cliente
   begin
   if DM1.Tb_PargerPMTE.AsInteger=2 then

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Cliente';


   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;

   lbl_cliente.Visible :=True;
   CODCLI.Visible      :=True;
   lbx_codcli.Visible  :=True;
   OMITIR_CLI.Visible  :=True;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   end
else if mSelGra_Origem=5 then // Vendas por Rede de Cliente
   begin
   Frm_SelGra.Caption:='Gráfico das Saídas de uma Determinada Rede de Cliente';
   lblCodigo.Caption:='Rede:';

   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;
   end
else if mSelGra_Origem=6 then // Vendas por Convenio de Cliente
   begin

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Convenio de Cliente';
   lblCodigo.Caption:='Convenio:';


   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   end
else if mSelGra_Origem=7 then // Vendas por Tipos de Produtos
   begin

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Tipo de Produtos';
   lblCodigo.Caption:='Tipo Produto:';


   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;
   end
else if mSelGra_Origem=8 then // Entradas por Tipo de Produtos
   begin
   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Tipo de Produto';
   lblCodigo.Caption:='Tipo Produto:';


   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   end
else if mSelGra_Origem=9 then // Vendas por Grupo de Produtos
   begin
   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Grupo de Produtos';

   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=10 then // Entradas por Grupo de Produtos
   begin
   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Grupo de Produto';


   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=11 then // Vendas por Ramo de Produtos
   begin
   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Ramo de Produtos';


   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=12 then // Entradas por Ramo de Produtos
   begin
   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Ramo de Produto';

   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=13 then // Vendas por Controle de Produtos
   begin

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Controle de Produtos';
   lblCodigo.Caption:='Controle Produto:';
   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;
   end
else if mSelGra_Origem=14 then // Entradas por Controle de Produtos
   begin

   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Controle de Produto';
   lblCodigo.Caption:='Controle Produto:';

   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;
   end
else if mSelGra_Origem=15 then
   begin

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Vendedor';

   ts_outros.TabVisible:=true;

   lbl_vendedor.Visible:=True;
   CODVEN.Visible      :=True;
   OMITIR_VEN.Visible  :=True;
   lbx_codven.Visible  :=True;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;
   end
else if mSelGra_Origem=16 then
   begin

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Supervisor';

   ts_outros.TabVisible:=true;

   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=17 then // Entradas por Estado
   begin

   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Estado/UF';

   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=18 then // vendas  de um determinado estado
   begin

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Estado/UF';
   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;

   lblCodigo.Visible  :=false;
   CODIGO.Visible     :=false;
   lbx_codigo.Visible :=false;
   OMITIR_COD.Visible :=false;

   end
else if mSelGra_Origem=19 then // Entradas por Empresa
   begin

   Frm_SelGra.Caption:='Gráfico das Entradas de um Determinado Empresa';
   lblCodigo.Caption:='Empresa:';

   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=false;
   CODVEN.Visible      :=false;
   OMITIR_VEN.Visible  :=false;
   lbx_codven.Visible  :=false;
   lbl_cliente.Visible :=false;
   CODCLI.Visible      :=false;
   lbx_codcli.Visible  :=false;
   OMITIR_CLI.Visible  :=false;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;
   end
else if mSelGra_Origem=20 then // vendas  de um determinado Empresa
   begin

   Frm_SelGra.Caption:='Gráfico das Saídas de um Determinado Empresa';
   lblCodigo.Caption:='Empresa:';
   ts_outros.TabVisible:=true;
   lbl_vendedor.Visible:=true;
   CODVEN.Visible      :=true;
   OMITIR_VEN.Visible  :=true;
   lbx_codven.Visible  :=true;
   lbl_cliente.Visible :=true;
   CODCLI.Visible      :=true;
   lbx_codcli.Visible  :=true;
   OMITIR_CLI.Visible  :=true;

   lbl_Pro.Visible     :=true;
   CODPRO.Visible      :=true;
   lbx_codpro.Visible  :=true;
   OMITIR_PRO.Visible  :=true;

   lbl_for.Visible     :=true;
   CODFOR.Visible      :=true;
   OMITIR_FOR.Visible  :=true;
   lbx_codfor.Visible  :=true;
   end;













end;

procedure TFrm_SelGra.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' Then
   Try
   MDT1.Text:=FormatDateTime(fdt2,StrToDate(mdt1.Text));
Except
   fMensagem('Data Invalida!',0,['0'],0);
   MDT1.SetFocus;
   end;

end;

procedure TFrm_SelGra.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' Then
   Begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(mdt2.Text));
   Except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_SelGra.MDTI1Exit(Sender: TObject);
begin
if Trim(MDTI1.Text)<>'/  /' Then
   Try
   MDTI1.Text:=FormatDateTime(fdt2,StrToDate(mdtI1.Text));
Except
   fMensagem('Data Invalida!',0,['0'],0);
   MDTI1.SetFocus;
   end;

end;

procedure TFrm_SelGra.MDTI2Exit(Sender: TObject);
begin
if Trim(MDTI2.Text)<>'/  /' Then
   Try
   MDTI2.Text:=FormatDateTime(fdt2,StrToDate(mdtI2.Text));
Except
   fMensagem('Data Invalida!',0,['0'],0);
   MDTI2.SetFocus;
   end;

end;

procedure TFrm_SelGra.MDTF1Exit(Sender: TObject);
begin
if Trim(MDTF1.Text)<>'/  /' Then
   Try
   MDTF1.Text:=FormatDateTime(fdt2,StrToDate(mdtF1.Text));
Except
   fMensagem('Data Invalida!',0,['0'],0);
   MDTF1.SetFocus;
   end;

end;

procedure TFrm_SelGra.MDTF2Exit(Sender: TObject);
begin
if Trim(MDTF2.Text)<>'/  /' Then
   Try
   MDTF2.Text:=FormatDateTime(fdt2,StrToDate(mdtF2.Text));
Except
   fMensagem('Data Invalida!',0,['0'],0);
   MDTF2.SetFocus;
   end;

end;

function TFrm_SelGra.fSelGraMSai_Prod(ptipo: Integer): Boolean;
var
  x: integer;
  y: integer;
  mcampo_qtd: string;
begin
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Produto','Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
  begin
  Frm_Grafico.Tb_VPro.Close;
  Frm_Grafico.Tb_VPro.SQL.Clear;
  for y:=0 to 1 do
    begin
    if (y = 1) then
      Frm_Grafico.Tb_VPro.SQL.Add(' union ');

    mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
    mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

    Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                               +' '+mcinst4+' AS TMTOTQTD, '
                               +' sum(P2TOTLIQ) AS TMTOTVAL, ');
    if (y = 0) then
      Frm_Grafico.Tb_VPro.SQL.Add(chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES ')
    else
      Frm_Grafico.Tb_VPro.SQL.Add(chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES ');


    Frm_Grafico.Tb_VPro.SQL.Add(' from CADP01,CADP02');

    if ( lbx_codpro.Count > 0 ) or ( lbx_CODGRU.Count > 0 ) or ( lbx_RAMO.Count > 0 ) then
      Frm_Grafico.Tb_VPro.SQL.Add(' , CADPRO ');
    if ( lbx_codloc.Count > 0 ) or ( lbx_coduf.Count > 0 ) or ( lbx_codcli.Count > 0 ) or ( lbx_codreg.Count > 0 ) then
      Frm_Grafico.Tb_VPro.SQL.Add(' , CADCLI ');

    Frm_Grafico.Tb_VPro.SQL.Add(' where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                               +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                               +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                               +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and P2CODEMP=PDCODEMP ')
                               +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and P2CODEMP=CCODEMP '));
    if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1EMIDOC=1 ');

    if ( lbx_codpro.Count > 0 ) or ( lbx_CODGRU.Count > 0 ) or ( lbx_RAMO.Count > 0 ) then
      Frm_Grafico.Tb_VPro.SQL.Add(' and P2CODPRO=PDCODPRO ');
    if ( lbx_codloc.Count > 0 ) or ( lbx_coduf.Count > 0 ) or ( lbx_codcli.Count > 0 ) or ( lbx_codreg.Count > 0 ) then
      Frm_Grafico.Tb_VPro.SQL.Add(' and P1CODCLI=CCODCLI ');

    mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

    if (y = 0) then
      begin

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));

      end
    else
      begin


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTF1.text)));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTF2.text)));

      end;

    mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P2CODPRO '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODCLI '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODVEN'+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P2CODFAB '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_CODGRU,OMITIR_GRU);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODGRU '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_RAMO,OMITIR_RAMO);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODRAM '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CCODLOC '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CROTA '+mcinst2);


    mcinst2:='';
    mcinst3:='';
    for x:=0 to lbx_coduf.Count -1 do
      begin
      mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
      mcinst3:=',';
      end;

    if trim(mcinst2)<>'' then
      begin
      mcinst2:=' in ('+mcinst2+')';
      if OMITIR_UF.Checked then
        mcinst2:=' not '+mcinst2;
      Frm_Grafico.Tb_VPro.Sql.Add(' and CUF '+mcinst2);
      end;
    end;
  Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';

  try
     Frm_Grafico.Tb_VPro.Open;
//          Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   except
     Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
     end;
  end
else if pbanco=1 then
  begin
  mtabtemp:=fProcTemp(0);
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                    +' TMVALOR DOUBLE PRECISION, '
                    +' TMANOMES VARCHAR(50), '
                    +' TMTOTQTD DOUBLE PRECISION, '
                    +' TMTOTVAL DOUBLE PRECISION ) ');
  DM1.Query1.execSql;
  if RGTipo.ItemIndex=0 then
     begin
     mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
     mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

     DM1.Query1.Close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                       +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                       +' sum(P2QTD) AS TMTOTQTD, '
                       +' sum(P2TOTLIQ) AS TMTOTVAL, '
                       +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                       +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                        +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
     if CB_EmiDoc.Checked then
        DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
     mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
     if trim(mcinst2)<>'' then
        DM1.Query1.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


     mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
     if trim(mcinst2)<>'' then
        DM1.Query1.Sql.Add(' and P2CODPRO '+mcinst2);

     DM1.Query1.Sql.Add(fComplementoSql(0));

     DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//     DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
     DM1.Query1.ExecSQL;
     Frm_Grafico.Tb_VPro.Close;
     Frm_Grafico.Tb_VPro.SQL.Clear;
     Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                +'       sum(TMTOTQTD) as TMTOTQTD,'
                                +'       sum(TMTOTVAL) as TMTOTVAL,'
                                +'        TMANOMES from '+mtabtemp
                                +' group by TMANOMES '
                                +' order by TMANOMES ');

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';

     try
        Frm_Grafico.Tb_VPro.Open;
     except
        Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
        fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
        end;

     end;
  end
else if pbanco=0 then
  begin
  if RGTipo.ItemIndex=0 then
     begin
     la_tabelas  :='';
     la_Join     :='';
     la_instrucao:='';

     if (CB_AGRUNOME.Checked) or (lbx_codpro.Items.Count>0) or (lbx_CODGRU.Items.Count>0) or (lbx_RAMO.Items.Count>0) then
       fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

     if (lbx_codloc.Items.Count>0) or (lbx_coduf.Items.Count>0) or (lbx_codreg.Items.Count>0) Then
       begin
       if la_instrucao<>'' then
         la_instrucao:=la_instrucao+' and ';
       fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
       end;
    mcampo_qtd:=' DECODE(max(P1FORMACE),                                     '
               +'   0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD)), '
               +'   1,DECODE(max(P1TIPO_ENTSAI),1,max(P2QTD)*-1,max(P2QTD))) ';


     Frm_Grafico.Tb_VPro.Close;
     Frm_Grafico.Tb_VPro.SQL.Clear;

     Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) AS TMVALOR, '
                                +'sum(TMTOTQTD) AS TMTOTQTD, '
                                +' sum(TMTOTVAL) AS TMTOTVAL, '
                                +' TMANOMES  from (' );




     Frm_Grafico.Tb_VPro.SQL.Add('Select '+iif(RG_QTDVLR.itemIndex=0,mcampo_qtd,'SUM(P2TOTLIQ)')+' AS TMVALOR, '
                                +' '+mcampo_qtd+' AS TMTOTQTD, '
                                +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                +mCampoGrupo+' AS TMANOMES '
                                +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' P1STATUS<'+mstatus_excluido+' '
                                +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
     if CB_EmiDoc.Checked then
        Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
     mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
     if trim(mcinst2)<>'' then
        Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));



     mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
     if trim(mcinst2)<>'' then
       Frm_Grafico.Tb_VPro.Sql.Add(' and P2CODPRO '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
     if trim(mcinst2)<>'' then
       Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODVEN '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
     if trim(mcinst2)<>'' then
       Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODCLI '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_CODGRU,OMITIR_GRU);
     if trim(mcinst2)<>'' then
       Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODGRU '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_RAMO,OMITIR_RAMO);
     if trim(mcinst2)<>'' then
       Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODRAM '+mcinst2);

     mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
     if trim(mcinst2)<>'' then
       Frm_Grafico.Tb_VPro.Sql.Add(' and CCODLOC '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CROTA '+mcinst2);

    mcinst2:='';
    mcinst3:='';
    for x:=0 to lbx_coduf.Count -1 do
      begin
      mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
      mcinst3:=',';
      end;

    if trim(mcinst2)<>'' then
      begin
      mcinst2:=' in ('+mcinst2+')';
      if OMITIR_UF.Checked then
        mcinst2:=' not '+mcinst2;
      Frm_Grafico.Tb_VPro.Sql.Add(' and CUF '+mcinst2);
      end;


     Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo+',P2CHAVE,P2ITEM');
     Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
     Frm_Grafico.Tb_VPro.SQL.add(')  group by TMANOMES order by  TMANOMES');

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

     try
        Frm_Grafico.Tb_VPro.Open;
//        Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
     except
        Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
        fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
        end;


     end;
  end;             
result:=True;
end;

function TFrm_SelGra.fSelGraMEnt_Prod(ptipo: Integer): Boolean;
begin
la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(1,'Produto','Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2 where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');


   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(MDTI1.text)));

   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(MDTI2.text)));



   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF2CODPRO '+mcinst2);
   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2 where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF2CODPRO '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';
   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2 where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');


   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));



      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PF2CODPRO '+mcinst2);
      DM1.Query1.SQL.Add(fComplementoSql(1));

      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      dm1.query1.sql.add(' order by PF1DATAENT ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES   order by TMANOMES ';

      try
         Frm_Grafico.Tb_VPro.Open;
      except
         Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
         end;
      end;
   end
else if pbanco=0 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   IF CB_AGRUNOME.Checked then
      begin
      fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
      end;

   if RGTipo.ItemIndex=0 then
      begin
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS<>9 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

       mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PF2CODPRO '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
//         Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES   order by TMANOMES';

      try
         Frm_Grafico.Tb_VPro.Open;
      except
         Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
         end;
      end;
   end;
result:=True;
end;


function TFrm_SelGra.fSelGraMSai_For(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Fornecedor','Fornecedores');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));

   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P2CODFAB '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P2CODFAB '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

//      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         DM1.Query1.SQL.add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P2CODFAB '+mcinst2);

      DM1.Query1.SQL.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

      try
         Frm_Grafico.Tb_VPro.Open;
      except
         Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
         end;
      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      IF CB_AGRUNOME.Checked then
         begin
         fInnerJoin(0,'CADFOR','FCODEMP','P2CODEMP','FCODFOR','P2CODFAB');
         end;
      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                  +' '+mcinst4+' AS TMTOTQTD, '
                                  +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');

      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P2CODFAB '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;
// vendas por vendedor
function TFrm_SelGra.fSelGraMSai_Ven(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Vendedor','Vendedores');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);



   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODVEN '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODVEN '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);



   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         dm1.qUERY1.Sql.Add(' and P1CODVEN '+mcinst2);

      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' group by '+mDataPesq+' ');
      DM1.Query1.SQL.Add(' union '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2SQTD','(P2STOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2SQTD) AS TMTOTQTD, '
                        +' sum(P2STOTLIQ) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02S where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2SCODEMP=P1CODEMP ')
                         +' and P2SLOTSEQ=P1LOTSEQ and P2SCHAVE=P1CHAVE and P2SORDEM=P1ORDEM ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         dm1.qUERY1.Sql.Add(' and P1CODVEN '+mcinst2);

      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');


//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try

      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;


      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      IF CB_AGRUNOME.Checked then
         begin
         fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ORDEM ');
      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,True,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


       mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
       if trim(mcinst2)<>'' then
          Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODVEN '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
      Frm_Grafico.Tb_VPro.SQL.Add(' group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' union ');
      mcinst4:=fGerarInstrucaoQtd(0,'P2SQTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2SQTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2STOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2STOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02S '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2SCODEMP=P1CODEMP ')
                                 +' and P2SLOTSEQ=P1LOTSEQ and P2SCHAVE=P1CHAVE and P2SORDEM=P1ORDEM ');
      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

       mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
       if trim(mcinst2)<>'' then
          Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODVEN '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
      Frm_Grafico.Tb_VPro.SQL.Add(' group by '+mCampoGrupo);

//      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);

//    mcomando:=Frm_Grafico.Tb_VPro.SQL.te t ext
//    lindomar
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

//      Frm_Grafico.Tb_VPro.SQL.savetofile('c:\ssqltemp.txt');

     try
        Frm_Grafico.Tb_VPro.Open;
//        Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      except
        Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
        fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
        end;
      end;
   end;
result:=True;
end;


// vendas por Supervisor
function TFrm_SelGra.fSelGraMSai_Sup(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Supervidor','Supervisores');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin

   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADVEN where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' and VCODEMP=P1CODEMP ')
                              +' and VCODVEN=P1CODVEN ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);



   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(MDATAPESQ,true,strtodate(MDTI1.text)));

   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(MDATAPESQ,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and VCODUSUP '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));


   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADVEN where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' and VCODEMP=P1CODEMP ')
                              +' and VCODVEN=P1CODVEN ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.SQL.Add(' and VCODSUP '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;


   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                        +' '+mcinst4+' AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADVEN where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' and VCODEMP=P1CODEMP ')
                         +' and VCODVEN=P1CODVEN ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));



      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and VCODSUP '+mcinst2);

      DM1.Query1.Sql.Add(fComplementoSql(0));

      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');      
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' order by TMANOMES ');                                 
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADSUP','SCODEMP','VCODEMP','SCODSUP','VCODSUP');

         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');

      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and VCODSUP '+mcinst2);

      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));


      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

function TFrm_SelGra.fSelGraMEnt_For(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(1,'Fornecedor','Fornecedores');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2 where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(MDTI1.text)));

   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(MDTI2.text)));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1CODFOR '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF2CODPRO '+mcinst2);
   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2 where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ  and PF2CHAVE=PF1CHAVE ');
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1CODFOR '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2 where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PF1CODFOR '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(1));

      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      DM1.Query1.SQL.Add(' Order by PF1DATAENT ');      
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      IF CB_AGRUNOME.Checked then
         begin
         fInnerJoin(0,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
         end;

      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS<>9 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');
   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PF1CODFOR '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;
function TFrm_SelGra.fSelGraMSai_Cli(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Cliente','Clientes');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODCLI '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODCLI '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1CODCLI '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));


      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');

      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' order by TMANOMES ');

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';
   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      IF CB_AGRUNOME.Checked then
         begin
         fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');

      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODCLI '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;


function TFrm_SelGra.fSelGraMSai_Red(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(1,'Rede de Cliente','Rede de Clientes');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and  P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                              +' and CCODCLI=P1CODCLI ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CCODRED '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                              +' and CCODCLI=P1CODCLI ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CCODRED '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                         +' and CCODCLI=P1CODCLI ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));
      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and CCODRED '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));

      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADRED','RDCODEMP','CCODEMP','RDCODRED','CCODRED');

         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');

      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));
      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and CCODRED '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;


function TFrm_SelGra.fSelGraMSai_Con(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Convenio','Convenios');
Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                              +' and CCODCLI=P1CODCLI ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CCODCV '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                              +' and CCODCLI=P1CODCLI ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CCODCV '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;

   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                         +' and CCODCLI=P1CODCLI ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));
      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and CCODCV '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));

      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADCV','CVCODEMP','CCODEMP','CVCODCV','CCODCV');
         end;

      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));
      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and CCODCV '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

function TFrm_SelGra.fSelGraMSai_TPro(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Tipo de Produto','Tipo de Produtos');
Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and P2CODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODTIP '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and PDCODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODTIP '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;

   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                         +' and PDCODPRO=P2CODPRO ');
      if CB_EmiDoc.Checked then
         DM1.Query1.SQL.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODTIP '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADTP','TCODEMP','PDCODEMP','TCODTIP','PDCODTIP');
         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODTIP '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);

      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

function TFrm_SelGra.fSelGraMEnt_TPro(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(1,'Tipo de Produto','Tipo de Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(Pf2QTDP) AS TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');
   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI1.Text))+chr(39));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODTIP '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODTIP '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ  and PF2CHAVE=PF1CHAVE '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                         +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));
      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODTIP '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(1));
      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      DM1.Query1.SQL.Add(' Order by PF1DATAENT ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADTP','TCODEMP','PDCODEMP','TCODTIP','PDCODTIP');
         end;

      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS<>9 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODTIP '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;


function TFrm_SelGra.fSelGraMSai_GPro(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Grupo de Produto','Grupo de Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and P2CODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODGRU '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and PDCODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODGRU '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                         +' and PDCODPRO=P2CODPRO ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

          mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODGRU '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADGRU','GRCODEMP','PDCODEMP','GRCODGRU','PDCODGRU');
         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
         
      if Trim(MDT1.Text)<>'/  /' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.query1.Sql.Add(' and PDCODGRU '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

function TFrm_SelGra.fSelGraMEnt_GPro(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(1,'Grupo de Produto','Grupo de Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');
   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAEN',true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODFAB '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODGRU '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                         +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODGRU '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(1));

      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      DM1.Query1.SQL.Add(' Order by PF1DATAENT ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADGRU','GRCODEMP','PDCODEMP','GRCODGRU','PDCODGRU');
         end;

      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS=1 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                                 +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODGRU '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;
/// Ramo de Produtos
function TFrm_SelGra.fSelGraMSai_Ram(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Ramo de Produto','Ramo de Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and P2CODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P2CODRAM '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and PDCODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODRAM '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                         +' and PDCODPRO=P2CODPRO ');
      if CB_EmiDoc.Checked then
         DM1.Query1.SQL.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODRAM '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
///      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');

      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADRAM','RCODEMP','PDCODEMP','RCODRAM','PDCODRAM');
         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '

                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODRAM '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

function TFrm_SelGra.fSelGraMEnt_Ram(ptipo: Integer): Boolean;
begin
la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fAtualizaCabecalho(1,'Ramo de Produto','Ramo de Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(MDTI2.text)));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODRAM '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODRAM '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                         +' and PDCODPRO=PF2CODPRO ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));



      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODRAM '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(1));
      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      DM1.Query1.SQL.Add(' Order by PF1DATAENT ');

      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADRAM','RCODEMP','PDCODEMP','RCODRAM','PDCODRAM');
         end;

      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS=1 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                                 +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODRAM '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

/// Tipo de Controle de Produto
function TFrm_SelGra.fSelGraMSai_TCon(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(0,'Controle de Produto','Controle de Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);

   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and P2CODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(MDTI1.text)));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(MDTI2.text)));


   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODCON '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '

                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                              +' and PDCODPRO=P2CODPRO ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODCON '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADPRO where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                         +' and PDCODPRO=P2CODPRO ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODCON '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADCON','CCODEMP','PDCODEMP','CCODCON','PDCODCON');
         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');

      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODCON '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));


      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

function TFrm_SelGra.fSelGraMEnt_TCon(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADPF1','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(1,'Controle de Produto','Controle de Produtos');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');
   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI1.Text))+chr(39));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODCON '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                              +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODCON '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2,CADPRO where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                         +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PDCODCON '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(1));

      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      DM1.Query1.SQL.Add(' Order by PF1DATAENT ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

      IF CB_AGRUNOME.Checked then
         begin
         if pbanco=0 then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(0,'CADCON','CCODEMP','PDCODEMP','CCODCON','PDCODCON');
         end;


      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS=1 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=PF2CODEMP ')
                                 +' and PDCODPRO=PF2CODPRO ');

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PDCODCON '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;



function TFrm_SelGra.fSelGraMEnt_UF(ptipo: Integer): Boolean;
begin

la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fAtualizaCabecalho(1,'Estado/UF','Estados/UF');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADFOR where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and FCODEMP=PF1CODEMP ')
                              +' and FCODFOR=PF1CODFOR ');
   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI1.Text))+chr(39));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI2.Text))+chr(39));
   mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and FUF '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2,CADFOR where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and FCODEMP=PF1CODEMP ')
                              +' and FCODFOR=PF1CODFOR ');

   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and FUF '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2,CADFOR where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADFOR',[]),'',' and FCODEMP=PF1CODEMP ')
                         +' and FCODFOR=PF1CODFOR ');

   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));


      mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and FUF '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(1));

      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      DM1.Query1.SQL.Add(' Order by PF1DATAENT ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');


      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS=1 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and FCODEMP=PF1CODEMP ')
                                 +' and FCODFOR=PF1CODFOR ');

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and FUF '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;


function TFrm_SelGra.fSelGraMSai_UF(ptipo: Integer): Boolean;
begin
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fAtualizaCabecalho(0,'Estado/UF','Estados/UF');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                              +' and CCODCLI=P1CODCLI ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI1.Text))+chr(39));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI2.Text))+chr(39));
   mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CUF '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
    if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CROTA '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '

                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and CCODEMP=P1CODEMP ')
                              +' and CCODCLI=P1CODCLI ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CROTA '+mcinst2);
 
   mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and CUF '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02,CADCLI where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
                         +' and CCODCLI=P1CODCLI ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


      mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and CUF '+mcinst2);
      mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
      if trim(mcinst2)<>'' then
        Frm_Grafico.Tb_VPro.Sql.Add(' and CROTA '+mcinst2);

      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');

      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));
      mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and CUF '+mcinst2);
      mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
      if trim(mcinst2)<>'' then
        Frm_Grafico.Tb_VPro.Sql.Add(' and CROTA '+mcinst2);

      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;


procedure TFrm_SelGra.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_SelGra.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (mSelGra_Origem=17) or (mSelGra_Origem=18) then

else if (mSelGra_Origem=0) or (mSelGra_Origem=1) then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaPro(0,'Frm_SelGra',key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(self);
      key:=#0;
      end;
   end
else if (mSelGra_Origem=2) or (mSelGra_Origem=3) then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaFor(0,'frm_SelGra',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(self);
      key:=#0;
      end;
   end
else if mSelGra_Origem=4 then // vendas para cliente
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaCli(0,'Frm_SelGra',key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(self);
      key:=#0;
      end
   end
else if mSelGra_Origem=5 then // Redes de  cliente
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaRedCli(0,'frm_cabc',key);
      CODIGOExit(self);
      key:=#0;
      end
   end
else if mSelGra_Origem=6 then // Redes de Convenios de cliente
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if Frm_Con=nil then
         Application.CreateForm(TFrm_Con, Frm_Con)
      else
         begin
         Frm_Con.free;
         Frm_Con:=nil;
         Application.CreateForm(TFrm_Con, Frm_Con);
         end;
      Frm_Con.Edit1.Text:=key;
      Frm_Con.Edit1.SelStart :=1;
      Frm_Con.Edit1.SelLength:=1;
      Frm_Con.PC1.ActivePage :=Frm_Con.tsCad;
      con_ori:='Frm_SelGra';
      if Frm_Con.ShowModal=mrOk then
         begin
         CODIGO.Text:=DM1.Tb_CVCVCODCV.AsString;
         CODIGOExit(self);
         end;
      Frm_Con.Free;
      Frm_Con:=nil;
      key:=#0;
      end
   end
else if (mSelGra_Origem=7) or (mSelGra_Origem=8) then // Tipo de Produtos
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaTipPro(0,'frm_SelGra',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(self);
      key:=#0;
      end
   end
else if (mSelGra_Origem=9) or (mSelGra_Origem=10) then // Grupos de Produtos
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaGPro(0,'frm_SelGra',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(self);
      key:=#0;
      end
   end
else if (mSelGra_Origem=11) or (mSelGra_Origem=12) then // Ramo de Produtos
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaRamPro(0,'frm_SelGra',Key);
      if trim(CODIGO.Text)<>'' then
          CODIGOExit(self);
      key:=#0;
      end
   end
else if (mSelGra_Origem=13) or (mSelGra_Origem=14) then // Controle de Produtos
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaTCon(0,'frm_SelGra',Key);
      if trim(CODIGO.Text)<>'' then
         CODIGOExit(self);
      key:=#0;
      end
   end
else if (mSelGra_Origem=15) then // Vendedores
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaVen(0,'frm_SelGra',Key);
      CODIGOExit(self);
      key:=#0;
      end
   end
else if (mSelGra_Origem=16) then // Supervidores
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      CODIGO.Text:=fChamaSup(0,'frm_SelGra',Key);
      CODIGOExit(self);
      key:=#0;
      end
   end
else if (mSelGra_Origem=19) or (mSelGra_Origem=20) then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if Frm_Emp=nil then
         Application.CreateForm(TFrm_Emp, Frm_Emp)
      else
         begin
         Frm_Emp.Free;
         Frm_Emp:=nil;
         Application.CreateForm(TFrm_Emp, Frm_Emp);
         end;
      Frm_Emp.Edit1.Text:=key;
      Frm_Emp.Edit1.SelStart:=1;
      Frm_Emp.Edit1.SelLength:=1;
      Frm_Emp.PC1.ActivePage:=Frm_Emp.tsTab;
      emp_ori:='Frm_SelGra';
      if Frm_Emp.ShowModal=mrOk then
         CODIGO.Text:=DM1.Tb_EmpCODEMP.AsString;
      Frm_Emp.Free;
      Frm_Emp:=nil;
      key:=#0;
      end;
   end;








end;

procedure TFrm_SelGra.CODIGOExit(Sender: TObject);
begin
if (mSelGra_Origem=17) or (mSelGra_Origem=18) then
   begin
   if trim(CODIGO.Text)<>'' then
      begin
      if not flqr1('PNOM','P','CADUF','C','PUF',CODIGO.Text) then
         begin
         fMensagem('Estado não Cadastrado!',0,['0'],0);
         CODIGO.SetFocus;
         end
      else
         begin
         lbx_codigo.Items.Add(CODIGO.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
         CODIGO.text := '';
         CODIGO.SetFocus;
         end;
      end;
   end
else
   begin
   CODIGO.Text:=fdeixanum2(CODIGO.Text);
   if Trim(CODIGO.Text)='' then
      exit
   else
      begin
      if (mSelGra_Origem=0) or (mSelGra_Origem=1) then
         begin
         if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Trim(CODIGO.Text)) then
            begin
            fMensagem('Produto não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=2) or (mSelGra_Origem=3) then
         begin
         if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODIGO.Text)) then
            begin
            fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=4) then
         begin
         if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODIGO.Text)) then
            begin
            fMensagem('Cliente não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=5) then
         begin
         if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',Trim(CODIGO.Text)) then
            begin
            fMensagem('Rede não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=6) then
         begin
         if not flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',Trim(CODIGO.Text)) then
            begin
            fMensagem('Convênio não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=7) or (mSelGra_Origem=8) then
         begin
         if not flqr1('TNOME','T','CADTP','N','TCODTIP',Trim(CODIGO.Text)) then
            begin
            fMensagem('Tipo de Produto não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=9) or (mSelGra_Origem=10) then
         begin
         if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',Trim(CODIGO.Text)) then
            begin
            fMensagem('Grupo de Produto não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=11) or (mSelGra_Origem=12) then
         begin
         if not flqr1('RNOME','R','CADRAM','N','RCODRAM',Trim(CODIGO.Text)) then
            begin
            fMensagem('Ramo de Produto não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=13) or (mSelGra_Origem=14) then
         begin
         if not flqr1('CNOME','C','CADCON','N','CCODCON',Trim(CODIGO.Text)) then
            begin
            fMensagem('Controle de Produto não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=15)  then
         begin
         if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODIGO.Text)) then
            begin
            fMensagem('Vendedor não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end
      else if (mSelGra_Origem=16)  then
         begin
         if not flqr1('SNOME','S','CADSUP','N','SCODSUP',Trim(CODIGO.Text)) then
            begin
            fMensagem('Supervisor não Cadastrado!',0,['0'],0);
            CODIGO.SetFocus;
            end
         else
            begin
            lbx_codigo.Items.Add(FormatFloat('0000000',StrToFloat(CODIGO.Text))
                                       +' - '+DM1.Query1.Fields[0].AsString);
            CODIGO.text := '';
            CODIGO.SetFocus;
            end;
         end;

      end;
   end;


end;

procedure TFrm_SelGra.lbx_codigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codigo.ItemIndex>=0 then
      lbx_codigo.Items.Delete(lbx_codigo.ItemIndex);

end;

procedure TFrm_SelGra.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODCLI.Text:=fChamaCli(0,'Frm_Tab_Pro',key);
  key:=#0;
  end
else  if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure TFrm_SelGra.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fMensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
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

procedure TFrm_SelGra.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_SelGra.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fMensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_SelGra.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_SelGra',Key);
   key:=#0;
   end;


end;

procedure TFrm_SelGra.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_SelGra.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro',key);
      key:=#0;
      end;
   end;

end;

procedure TFrm_SelGra.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro','')
   else
     CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro','');
   key:=0;
   end;

end;

procedure TFrm_SelGra.CODPROExit(Sender: TObject);
begin
if (DM1.Tb_PargerPPCOGRA.Value=1) then
    begin
    if (Length(CODPRO.Text)>9) then
        begin
        CODPRO.Text:=copy(CODPRO.Text,1,4);
        end;
     end;
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
      begin
      fMensagem('Produto não cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(CODPRO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODPRO.text := '';
      CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_SelGra.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);


end;

procedure TFrm_SelGra.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      fMensagem('Fornecedor não cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_SelGra.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_SelGra',Key);
   key:=#0;
   end;


end;

procedure TFrm_SelGra.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

function TFrm_SelGra.fAtualizaCabecalho(pTipo: Integer;pTitulo,pTitulos: String): Boolean;
begin
Frm_Grafico.DBChart1.Title.Text.Clear;
if ptipo=0 then // saidas
   begin
   if lbx_codigo.Items.Count=0 then
      begin
      Frm_Grafico.DBChart1.Title.Text.Add('Vendas de todos '+pTitulos);
      Frm_Grafico.Caption:='Vendas de todos '+pTitulos;
      end
   else if lbx_codigo.Items.Count=1 then
      begin
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_COD.Checked,'Vendas Com Exceçao do ', 'Vendas do ')+pTitulo+':'+lbx_codigo.Items[0]);
      Frm_Grafico.Caption:=iif(OMITIR_COD.Checked,'Vendas Com Exceçao do ', 'Vendas do ')+pTitulo+':'+lbx_codigo.Items[0];
      end

  else
      begin
      Frm_Grafico.Caption:=iif(OMITIR_COD.Checked,'Vendas Com Exceçao de ','Vendas de ')+InttoStr(lbx_codigo.Items.Count)+pTitulos;
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_COD.Checked,'Vendas Com Exceçao de ','Vendas de ')+InttoStr(lbx_codigo.Items.Count)+pTitulos);
      end;

   if lbx_codven.Items.Count=1 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_VEN.Checked,'Com Exceçao ','Somente')+' do Vendedor: '+lbx_codven.Items[0])
   else if lbx_codven.Items.Count>0 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_VEN.Checked,'Vendas Com Exceçao de ',' Vendas de ')+InttoStr(lbx_codven.Items.Count)+' vendedores');

   if lbx_codfor.Items.Count=1 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_FOR.Checked,'Com Exceçao ','Somente')+' do Fornecedor: '+lbx_codfor.Items[0])
   else if lbx_codfor.Items.Count>0 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_FOR.Checked,'Vendas Com Exceçao de ',' Vendas de ')+InttoStr(lbx_codfor.Items.Count)+' fornecedores');

   if lbx_codcli.Items.Count=1 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_CLI.Checked,'Com Exceçao ','Somente')+' do Cliente: '+lbx_codcli.Items[0])
   else if lbx_codcli.Items.Count>0 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_CLI.Checked,'Vendas Com Exceçao de ',' Vendas de ')+InttoStr(lbx_codcli.Items.Count)+' clientes');

   if lbx_codpro.Items.Count=1 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_PRO.Checked,'Com Exceçao ','Somente')+' do Produto: '+lbx_codpro.Items[0])
   else if lbx_codpro.Items.Count>0 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_PRO.Checked,'Vendas Com Exceçao de ',' Vendas de ')+InttoStr(lbx_codpro.Items.Count)+' produtos');
   end
else // compras
   begin
   if lbx_codigo.Items.Count=0 then
      begin
      Frm_Grafico.DBChart1.Title.Text.Add('Compra de todos '+pTitulos);
      Frm_Grafico.Caption:='Compra de todos '+pTitulos;
      end
   else if lbx_codigo.Items.Count=1 then
      begin
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_COD.Checked,'Compras Com Exceçao do ', 'Compras do ')+pTitulo+':'+lbx_codigo.Items[0]);
      Frm_Grafico.Caption:=iif(OMITIR_COD.Checked,'Compras Com Exceçao do ', 'Compras do ')+pTitulo+':'+lbx_codigo.Items[0]
      end
  else
      begin
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_COD.Checked,'Compras Com Exceçao de ','Compras de ')+InttoStr(lbx_codigo.Items.Count)+pTitulos);
      Frm_Grafico.Caption:=iif(OMITIR_COD.Checked,'Compras Com Exceçao de ','Compras de ')+InttoStr(lbx_codigo.Items.Count)+pTitulos;
      end;
   if lbx_codfor.Items.Count=1 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_FOR.Checked,'Com Exceçao ','Somente')+' do Fornecedor: '+lbx_codfor.Items[0])
   else if lbx_codfor.Items.Count>0 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_FOR.Checked,'Compras Com Exceçao de ',' Compras de ')+InttoStr(lbx_codfor.Items.Count)+' fornecedores');

   if lbx_codpro.Items.Count=1 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_PRO.Checked,'Com Exceçao ','Somente')+' do Produto: '+lbx_codpro.Items[0])
   else if lbx_codpro.Items.Count>0 then
      Frm_Grafico.DBChart1.Title.Text.Add(iif(OMITIR_PRO.Checked,'Compras Com Exceçao de ',' Compras de ')+InttoStr(lbx_codpro.Items.Count)+' produtos');
   end;

result:=true;
end;

function TFrm_SelGra.fComplementoSql(pTipo: Integer): String;
begin
mcinst4:='';
if ptipo=0 then
   begin
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      mcinst4:=mcinst4+' and P2CODPRO '+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      mcinst4:=mcinst4+' and P1CODCLI '+mcinst2;


   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      mcinst4:=mcinst4+' and P1CODVEN'+mcinst2;

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      mcinst4:=mcinst4+' and P2CODFAB '+mcinst2;
   end
else
   begin
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      mcinst4:=mcinst4+' and PF2CODPRO '+mcinst2;




   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      mcinst4:=mcinst4+' and PF1CODFOR '+mcinst2;
   end;
result:=mcinst4;
end;
procedure TFrm_SelGra.CODIGOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113) and ((mSelGra_Origem=17) or (mSelGra_Origem=18)) then
   begin
   CODIGO.Text:=fChamaUF(0,'frm_SelGra','');

   end;

end;


function TFrm_SelGra.fSelGraMSai_Emp(ptipo: Integer): Boolean;
begin

fAtualizaCabecalho(0,'Empresa','Empresas');
la_empresas:='';

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI1.Text))+chr(39));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODEMP '+mcinst2);

   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));

   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                              +' '+mcinst4+' AS TMTOTQTD, '
                              +' sum(P2TOTLIQ) AS TMTOTVAL, '

                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                              +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
   if CB_EmiDoc.Checked then
      Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);
   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));

   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and P1CODEMP '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(0));
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'P2QTD','(P2TOTLIQ)')+') AS TMVALOR, '
                        +' sum(P2QTD) AS TMTOTQTD, '
                        +' sum(P2TOTLIQ) AS TMTOTVAL, '

                        +' (EXTRACT(YEAR FROM '+mDataPesq+')||EXTRACT(MONTH FROM '+mDataPesq+')) AS TMANOMES '
                        +' from CADP01,CADP02 where P1STATUS<'+mstatus_excluido+' '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                         +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');
      if CB_EmiDoc.Checked then
         DM1.Query1.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         dm1.Query1.Sql.Add(' and P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));


      mcinst2:=fItensListBox(1,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1CODEMP '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));
      DM1.Query1.SQL.Add(' Group by '+mDataPesq+' ');
//      DM1.Query1.SQL.Add(' Order by '+mDataPesq+' ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      IF CB_AGRUNOME.Checked then
         begin
         fInnerJoin1(1,'CADEMP','CODEMP','P1CODEMP');
         end;

      mcinst4:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      mcinst3:=fGerarInstrucaoQtd(1,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,mcinst3,'(P2TOTLIQ)')+') AS TMVALOR, '
                                 +' '+mcinst4+' AS TMTOTQTD, '
                                 +' sum(P2TOTLIQ) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '

                                 +' from CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' P1STATUS<'+mstatus_excluido+' '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=P1CODEMP ')
                                 +' and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and P2ORDEM=P1ordem ');

      if CB_EmiDoc.Checked then
         Frm_Grafico.Tb_VPro.Sql.Add('       and P1EMIDOC=1 ');
      mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and P1CODEMP '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(0));


      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;

function TFrm_SelGra.fSelGraMEnt_Emp(ptipo: Integer): Boolean;
begin
la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fAtualizaCabecalho(1,'Empresa','Empresas');

Frm_Grafico.DBChart1.View3DOptions.Orthogonal:=True;
if RGTipo.ItemIndex=1 then
   begin
   Frm_Grafico.Tb_VPro.Close;
   Frm_Grafico.Tb_VPro.SQL.Clear;
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTI1.Text,MDTI2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2 where PF1STATUS=1 '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');
   if Trim(MDTI1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI1.Text))+chr(39));
   if Trim(MDTI2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTI2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1CODEMP '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
   Frm_Grafico.Tb_VPro.SQL.Add(' union ');
   Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                              +' sum(PF2QTDP) as TMTOTQTD, '
                              +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                              +chr(39)+fperiodo(0,MDTF1.Text,MDTF2.Text)+chr(39)+' AS TMANOMES '
                              +' from CADPF1,CADPF2 where PF1STATUS=1 '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                              +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');

   if Trim(MDTF1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF1.Text))+chr(39));
   if Trim(MDTF2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDTF2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
   if trim(mcinst2)<>'' then
      Frm_Grafico.Tb_VPro.Sql.Add(' and PF1CODEMP '+mcinst2);
   Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));

    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES';


   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

   end
else if pbanco=1 then
   begin
   mtabtemp:=fProcTemp(0);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMVALOR DOUBLE PRECISION, '
                     +' TMANOMES VARCHAR(50), '
                     +' TMTOTQTD DOUBLE PRECISION, '
                     +' TMTOTVAL DOUBLE PRECISION ) ');
   DM1.Query1.execSql;
   if RGTipo.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into '+mtabtemp+' (TMVALOR,TMANOMES) '
                        +' Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                        +' sum(PF2QTDP) as TMTOTQTD, '
                        +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                        +' (EXTRACT(YEAR FROM PF1DATAENT)||EXTRACT(MONTH FROM PF1DATAENT)) AS TMANOMES '
                        +' from CADPF1,CADPF2,CADFOR where PF1STATUS=1 '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                         +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));



      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and PF1CODEMP '+mcinst2);
      DM1.Query1.Sql.Add(fComplementoSql(1));

      DM1.Query1.SQL.Add(' Group by PF1DATAENT ');
//      DM1.Query1.SQL.Add(' Order by PF1DATAENT ');
      DM1.Query1.ExecSQL;
      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum(TMVALOR) as TMVALOR, '
                                 +'       sum(TMTOTQTD) as TMTOTQTD,'
                                 +'       sum(TMTOTVAL) as TMTOTVAL,'
                                 +'        TMANOMES from '+mtabtemp
                                 +' group by TMANOMES '
                                 +' Order by TMANOMES ');
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end
else if pbanco=0 then
   begin
   if RGTipo.ItemIndex=0 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      IF CB_AGRUNOME.Checked then
         begin
         fInnerJoin1(1,'CADEMP','CODEMP','PF1CODEMP');
         end;

      Frm_Grafico.Tb_VPro.Close;
      Frm_Grafico.Tb_VPro.SQL.Clear;
      Frm_Grafico.Tb_VPro.SQL.Add('Select sum('+iif(RG_QTDVLR.itemIndex=0,'PF2QTDP','((PF2QTDP*PF2PU)-PF2TOTDES)')+') AS TMVALOR, '
                                 +' sum(PF2QTDP) as TMTOTQTD, '
                                 +' SUM( (PF2QTDP*PF2PU)-PF2TOTDES) AS TMTOTVAL, '
                                 +mCampoGrupo+' AS TMANOMES '
                                 +' from CADPF1,CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                                 +'       '+la_Join
                                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                 +' PF1STATUS=1 '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                                 +' and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE ');


   if Trim(MDT1.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',true,strtodate(mdt1.text)));
   if Trim(MDT2.Text)<>'/  /' then
      Frm_Grafico.Tb_VPro.SQL.Add(fFormatdatetimeParaConsulta('PF1DATAENT',false,strtodate(mdt2.text)));

      mcinst2:=fItensListBox(0,lbx_codigo,OMITIR_COD);
      if trim(mcinst2)<>'' then
         Frm_Grafico.Tb_VPro.Sql.Add(' and PF1CODEMP '+mcinst2);
      Frm_Grafico.Tb_VPro.Sql.Add(fComplementoSql(1));
      Frm_Grafico.Tb_VPro.SQL.Add(' Group by '+mCampoGrupo);
      Frm_Grafico.Tb_VPro.SQL.Add(' Order by '+mCampoGrupo);
    Frm_Grafico.Tb_VPro.sql.text:=' select sum(TMVALOR) AS TMVALOR,SUM(TMTOTQTD) as TMTOTQTD,sum(TMTOTVAL) AS TMTOTVAL, TMANOMES FROM ( '
                             + Frm_Grafico.Tb_VPro.sql.text
                             +' ) group by TMANOMES  order by TMANOMES ';

   try
      Frm_Grafico.Tb_VPro.Open;
   except
      Frm_Grafico.Tb_VPro.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      fMensagem('Erro de Instrução Solicitar Suporte!',0,['0'],0);
      end;

      end;
   end;
result:=True;
end;


procedure TFrm_SelGra.CODSUPExit(Sender: TObject);
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

procedure TFrm_SelGra.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_proabc',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_SelGra.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_SelGra.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_SelGra.lbx_CODGRUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_CODGRU.ItemIndex>=0 then
    lbx_CODGRU.Items.Delete(lbx_CODGRU.ItemIndex);

end;

procedure TFrm_SelGra.lbx_RAMOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_RAMO.ItemIndex>=0 then
    lbx_RAMO.Items.Delete(lbx_RAMO.ItemIndex);
end;

procedure TFrm_SelGra.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codloc.ItemIndex>=0 then
    lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);
end;

procedure TFrm_SelGra.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_coduf.ItemIndex>=0 then
    lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);
end;

procedure TFrm_SelGra.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
  begin
  if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',Trim(CODGRU.Text)) then
    begin
    fMensagem('Grupo não cadastrado!',0,['0'],0);
    CODGRU.SetFocus;
    end
  else
    begin
    lbx_CODGRU.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.Text))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CODGRU.text := '';
    CODGRU.SetFocus;
    end;
  end;
end;

procedure TFrm_SelGra.RAMOExit(Sender: TObject);
begin
RAMO.Text:=fdeixanum2(RAMO.Text);
if Trim(RAMO.Text)<>'' then
  begin
  if not flqr1('RNOME','R','CADRAM','N','RCODRAM',Trim(RAMO.Text)) then
    begin
    fMensagem('Ramo não cadastrado!',0,['0'],0);
    RAMO.SetFocus;
    end
  else
    begin
    lbx_RAMO.Items.Add(FormatFloat('0000000',StrToFloat(RAMO.Text))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    RAMO.text := '';
    RAMO.SetFocus;
    end;
  end;

end;

procedure TFrm_SelGra.CIDADEExit(Sender: TObject);
begin
CIDADE.Text:=fdeixanum2(CIDADE.Text);
if Trim(CIDADE.Text)<>'' then
  begin
  if not flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(CIDADE.Text)) then
    begin
    fMensagem('Cidade não cadastrado!',0,['0'],0);
    CIDADE.SetFocus;
    end
  else
    begin
    lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CIDADE.Text))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CIDADE.text := '';
    CIDADE.SetFocus;
    end;
  end;
end;

procedure TFrm_SelGra.UFExit(Sender: TObject);
begin
UF.Text:=TRIM(UF.Text);
if Trim(UF.Text)<>'' then
  begin
  if not flqr1('PNOM','P','CADUF','N','PUF',QuotedStr(Trim(UF.Text))) then
    begin
    fMensagem('UF não cadastrado!',0,['0'],0);
    UF.SetFocus;
    end
  else
    begin
    lbx_coduf.Items.Add(TRIM(UF.Text)+'-'+DM1.Query1.Fields[0].AsString);
    UF.text := '';
    UF.SetFocus;
    end;
  end;
end;

procedure TFrm_SelGra.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODGRU.Text:=fChamaGPro(0,'Frm_Tab_Pro',key);
  key:=#0;
  end
else  if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

procedure TFrm_SelGra.RAMOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  RAMO.Text:=fChamaRamPro(0,'Frm_Tab_Pro',key);
  key:=#0;
  end
else  if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

procedure TFrm_SelGra.CIDADEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CIDADE.Text:=fChamaLoc(0,'Frm_Tab_Pro',key);
  key:=#0;
  end
else  if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;

end;

procedure TFrm_SelGra.UFKeyPress(Sender: TObject; var Key: Char);
begin
{if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  UF.Text:=fChamaUF(0,'Frm_Tab_Pro',key);
  key:=#0;
  end
else  if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;}

end;

procedure TFrm_SelGra.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_SelGra.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_SelGra.CODREGExit(Sender: TObject);
begin
CODREG.Text:=fdeixanum2(CODREG.Text);
if Trim(CODREG.Text)<>'' then
  begin
  if not flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',Trim(CODREG.Text)) then
    begin
    fMensagem('Região não cadastrado!',0,['0'],0);
    CODREG.SetFocus;
    end
  else
    begin
    lbx_codreg.Items.Add(FormatFloat('0000000',StrToFloat(CODREG.Text))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    CODREG.text := '';
    CODREG.SetFocus;
    end;
  end;

end;

procedure TFrm_SelGra.CODREGKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODREG.Text:=fChamaRegiao(0,'frm_cli',key);
  key:=#0;
  end
else  if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure TFrm_SelGra.lbx_codregKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codreg.ItemIndex>=0 then
    lbx_codreg.Items.Delete(lbx_codreg.ItemIndex);

end;

end.
