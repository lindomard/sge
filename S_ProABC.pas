unit S_ProABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Sup,S_Cli,lerarq, CheckLst, ComCtrls, S_SelEmp, RLReport,
  RLFilters, RLDraftFilter, RLPDFFilter, RLRichFilter,s_lerarq_geral,
  ToolEdit, CurrEdit;

type
  TFrm_ProABC = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Qr_For: TQuery;
    Qr_ForNOME: TStringField;
    Qr_ForCODIGO: TFloatField;
    Qr_ForICMSR: TFloatField;
    Qr_ForQTDMULT: TFloatField;
    Qr_ForQTDFRACAO: TFloatField;
    Qr_ForTOTVLR: TFloatField;
    Qr_ForTOTQTD: TFloatField;
    TabSheet3: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label12: TLabel;
    bbImprimir: TBitBtn;
    sb_SalvarPadrao: TSpeedButton;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    lbl_codven: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    CB_ICMSRET: TCheckBox;
    CB_EMBMUL: TCheckBox;
    CB_EmiDoc: TCheckBox;
    CB_FORCAR: TCheckBox;
    Label11: TLabel;
    CLBNivel: TCheckListBox;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    OMITIR_PRO: TCheckBox;
    CLBStatus: TCheckListBox;
    OMITIR_FOR: TCheckBox;
    Label15: TLabel;
    Label14: TLabel;
    CLBEstoque: TCheckListBox;
    OMITIR_VEN: TCheckBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label8: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label7: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label9: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label10: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    lbl_codcli: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CB_QDEC_QTD: TComboBox;
    Label6: TLabel;
    Label16: TLabel;
    CB_TIPOPESQ: TComboBox;
    lbl_separado: TLabel;
    CB_SEPARADO: TComboBox;
    CB_AVANCPAG: TCheckBox;
    CB_SEMMOV: TCheckBox;
    Qr_ForGRUPO: TStringField;
    Qr_ForMARCA: TStringField;
    Qr_ForCODVEN: TFloatField;
    Qr_ForCOTAMES: TFloatField;
    CB_QUOTAVEN: TComboBox;
    lbl_prodserv: TLabel;
    CB_PRODSERV: TComboBox;
    Qr_ForLOCAL_INFO: TFloatField;
    Qr_ForTotalMultipla: TFloatField;
    Label13: TLabel;
    CB_TIPO: TComboBox;
    Label17: TLabel;
    CB_ORDEM: TComboBox;
    Label18: TLabel;
    CB_TPPRECO: TComboBox;
    StaticText3: TStaticText;
    CODSUP: TEdit;
    OMITIR_SUP: TCheckBox;
    lbx_codsup: TListBox;
    CB_PCOMEDUNI: TCheckBox;
    Qr_Forprecomedunit: TFloatField;
    Src_For: TDataSource;
    ts_rel: TTabSheet;
    rlreport1: TRLReport;
    RLBand2: TRLBand;
    RL_CABECALHO: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText8: TRLDBText;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    rl_banner: TRLLabel;
    RLLabel3: TRLLabel;
    rltotalqtd: TRLLabel;
    RLLabel4: TRLLabel;
    rlvaltot: TRLLabel;
    cb_impressao: TComboBox;
    Label19: TLabel;
    rlperiodo: TRLLabel;
    Label20: TLabel;
    edt_marca: TEdit;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RL_CODIGO: TRLLabel;
    RL_NOME: TRLLabel;
    RL_QUANTIDADE: TRLLabel;
    RL_PRECO: TRLLabel;
    RL_TOTAL: TRLLabel;
    RL_PERC: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand6: TRLBand;
    RLDBText9: TRLDBText;
    matricial: TRLDraftFilter;
    word: TRLRichFilter;
    PDF: TRLPDFFilter;
    bb_exportar: TBitBtn;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    CODBCO: TEdit;
    StaticText1: TStaticText;
    cb_nexibevalores: TCheckBox;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    edt_descini: TCurrencyEdit;
    Label22: TLabel;
    edt_descfin: TCurrencyEdit;
    Qr_ForTOTAL_VALOR: TFloatField;
    Qr_ForTOTAL_QTD: TFloatField;
    Qr_ForPERC_VALOR: TFloatField;
    Qr_ForPERC_QTD: TFloatField;
    Qr_Forpercentual: TFloatField;
    cb_vendedor_item: TCheckBox;
    tsFiltros03: TTabSheet;
    Label23: TLabel;
    edt_codloc: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    Label24: TLabel;
    edt_codred: TEdit;
    lbx_codred: TListBox;
    OMITIR_REDE: TCheckBox;
    Label25: TLabel;
    edt_codram_cli: TEdit;
    lbx_codram_cli: TListBox;
    OMITIR_RAM_CLI: TCheckBox;
    Label26: TLabel;
    edt_codreg: TEdit;
    lbx_codreg: TListBox;
    OMITIR_REG: TCheckBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure RG_TIPOExit(Sender: TObject);
    procedure RG_TIPOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_PROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_FORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBNivelClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_TPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_GRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_CONMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_RAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CLBStatusClick(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure CODUFMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLBNivelExit(Sender: TObject);
    procedure CLBEstoqueExit(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_SEPARADOClick(Sender: TObject);
    procedure Qr_ForCalcFields(DataSet: TDataSet);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_PCOMEDUNIClick(Sender: TObject);
    procedure CB_EMBMULClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure bb_exportarClick(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codlocExit(Sender: TObject);
    procedure edt_codlocKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codredExit(Sender: TObject);
    procedure edt_codredKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codram_cliExit(Sender: TObject);
    procedure edt_codram_cliKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codram_cliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codregExit(Sender: TObject);
    procedure edt_codregKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codregKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    mcampo_codven: string;
    mcampo_codemp: string;
    procedure FAbrirBanco;

  public
    { Public declarations }
    form_impres_proabc: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;    
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function FImprimeMod01(pTipo: Integer): Boolean;
    function FImprimeMod02_Cota(pTipo: Integer): Boolean;
  end;

var
  Frm_ProABC: TFrm_ProABC;
  fProabc_Origem: Integer;
  mcasas_abc : String;
  mtotgQtd,mTotgVlr,mTotgCota, mperc: Real;
  mtotQtd,mTotVlr,mTotCota: Real;
  mGrupo_ant, mNOmeView: String;

  mtotqtdm,mtotqtgdm: Real;
  mordem: Integer;

implementation

uses s_tipPro, S_GPro, S_TCon, S_For, S_Ram, S_UF, S_DM4, S_C, Func2;


{$R *.dfm}

procedure TFrm_ProABC.bbImprimirClick(Sender: TObject);
begin
if cb_vendedor_item.Checked=true then
   begin
   mcampo_codven:='P2CODVEN';
   mcampo_codemp:='P2CODEMP';
   end
else
   begin
   mcampo_codven:='P1CODVEN';
   mcampo_codemp:='P1CODEMP';
   end;


fAbrirBanco;
//Qr_For.SQL.SaveToFile(mpastatemp + 'SQLabc.txt');
//
if Qr_For.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
//Qr_For.SQL.SaveToFile(mpastatemp + 'SQLabc.txt');

if cb_impressao.ItemIndex=0 then
  begin
  testeform := TFrm_ProABC(FindGlobalComponent('form_impres_proabc'));
  if (testeform=nil)  then
     Application.CreateForm(Tfrm_Impres, form_impres_proabc);
  form_impres_proabc.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_P
  mtotqtdm :=0;
  form_impres_proabc.mpag     :=0;
  form_impres_proabc.mlin     :=0;
  mtotgQtd :=0;
  mTotgVlr :=0;
  mtotqtgdm:=0;
  mtotgQtd :=0;
  mTotgVlr :=0;
  mTotgCota:=0;
  mtotQtd  :=0;
  mTotVlr  :=0;
  mTotCota :=0;
  mtotqtdm :=0;
  mtotqtgdm:=0;

  While not Qr_For.Eof do
     begin
     mtotgQtd :=mtotgQtd+Qr_ForTOTQTD.Value;;
     mTotgVlr :=mTotgVlr+Qr_ForTOTVLR.Value;;
     Qr_For.Next;
     end;
  Qr_For.First;
  if CB_QUOTAVEN.ItemIndex>0 then
     FImprimeMod02_cota(0)
  else
     FImprimeMod01(0);
  end
else if cb_impressao.ItemIndex=1 then
  begin
  if (trim(MDT1.Text)<>'') and (trim(MDT2.Text)<>'') then
    begin
    rlperiodo.Caption:='De '+MDT1.Text+' à '+MDT2.Text+'.';
    end
  else if (trim(MDT1.Text)<>'') then
    begin
    rlperiodo.Caption:='Apos '+MDT1.Text+'.';
    end
  else if (trim(MDT2.Text)<>'') then
    begin
    rlperiodo.Caption:='Até o dia '+MDT2.Text+'.';
    end;
  mtotqtdm :=0;
  mtotgQtd :=0;
  mTotgVlr :=0;
  mtotqtgdm:=0;
  mtotgQtd :=0;
  mTotgVlr :=0;
  mTotgCota:=0;
  mtotQtd  :=0;
  mTotVlr  :=0;
  mTotCota :=0;
  mtotqtdm :=0;
  mtotqtgdm:=0;

  RLReport1.PreviewModal;
  end;
if Trim(mnomeView)<>'' then
  begin
  DM1.Query2.Close;
  DM1.Query2.Sql.Clear;
  DM1.Query2.SQL.Add('drop view '+mnomeView);
  try
    DM1.Query2.ExecSQL;
  except
    end;
  end;
mNOmeView:='';
end;

procedure TFrm_ProABC.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_ProABC.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_ProABC.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
PageControl1.ActivePage:=TabSheet1;
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

mcasas_abc:='0';
if FproABC_Origem=0 then
   begin
   Frm_ProABC.Caption:='ABC das Vendas por Produtos';
   RG_TIPOPED.Items.Clear;
   for x:=0 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   lbl_separado.Visible:=true;
   CB_SEPARADO.Visible :=true;
//   CB_QUOTAVEN.Visible :=true;
   CB_AVANCPAG.Visible :=true;
   if ValInt(copy(mpseg,7,2))=01 then  // Prestação de servicos
      begin
      lbl_prodserv.Visible:=true;
      CB_PRODSERV.Visible :=true;
      end;
   end
else
   begin
   Frm_ProABC.Caption:='ABC das Compras por Tipo de Produtos';
   RG_TIPOPED.Visible:=False;
   lbl_codcli.Visible:=false;
   CODCLI.Visible    :=false;
   lbx_codcli.Visible:=false;
   OMITIR_CLI.Visible:=false;
   LABEL12.Visible   :=False;
   CODBCO.Visible    :=False;
   lbx_codbco.Visible:=False;
   OMITIR_BCO.Visible:=False;
   CB_TIPOPESQ.Items.Add('Data de Entrega');
   end;

if pbanco=0 then
   begin
   CB_ORDEM.Items.add('Valor Crescente');
   CB_ORDEM.Items.add('Valor Decrescente');
   end;

RG_TIPOPED.Checked[1] := TRUE;

//for x:=0 to clbestoque.count -1 do clbestoque.Checked[x] := true;
//for x:=0 to CLBStatus.count -1  do CLBStatus.Checked[x]  := true;

CB_ORDEM.itemIndex:=0;

RG_TIPOPED.Checked[1]:=true;

if flfilpad(codusr,'_PROABC','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBSTATUS',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBStatus.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
        CLBStatus.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBESTOQUE',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBEstoque.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBEstoque.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBNIVEL',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            CLBNivel.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBNivel.Checked[ValInt(mcinst)]:=true;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOPED',[]) then
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
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ICMSRET',[]) then
      CB_ICMSRET.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMIDOC',[]) then
      CB_EmiDoc.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EMBMUL',[]) then
      CB_EMBMUL.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_TIPO',[]) then
      CB_TIPO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_VENDEDOR_ITEM',[]) then
      CB_VENDEDOR_ITEM.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_QDEC_QTD',[]) then
      CB_QDEC_QTD.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ORDEM',[]) then
      CB_ORDEM.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_SEMMOV',[]) then
      CB_SEMMOV.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IMPRESSAO',[]) then
      cb_impressao.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_AVANCPAG',[]) then
      CB_AVANCPAG.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_QUOTAVEN',[]) then
      CB_QUOTAVEN.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_SEPARADO',[]) then
      CB_SEPARADO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.Value);
   CB_SEPARADOClick(self);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_EXIBEVALORES',[]) then
     cb_nexibevalores.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;


if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

end;

procedure TFrm_ProABC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ProABC.RG_TIPOExit(Sender: TObject);
begin
if CB_TIPO.ItemIndex=0 then
   CB_ICMSRET.Visible:=True
else
   CB_ICMSRET.Visible:=False;
{
if RG_TIPO.ItemIndex=0 then
   mcasas_abc:=mcasas
else
   mcasas_abc:=mcasqtd;
^}
end;

procedure TFrm_ProABC.RG_TIPOClick(Sender: TObject);
begin
if CB_TIPO.ItemIndex=0 then
   CB_ICMSRET.Visible:=True
else
   CB_ICMSRET.Visible:=False;

end;

procedure TFrm_ProABC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ProABC.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      codpro.setfocus;
      end;

   end;
end;

procedure TFrm_ProABC.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;
end;

procedure TFrm_ProABC.CODPROMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.OMITIR_PROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_pro.Hint := 'Omitir Marcado - Todos Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProABC.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);

if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      codfor.setfocus;
      end;
   end;

end;

procedure TFrm_ProABC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      begin
      CODFORExit(self);
      end;
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ProABC.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_ProABC.OMITIR_FORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_for.Hint := 'Omitir Marcado - Todos Fornecedores '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProABC.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)='' then
   CODVEN.Text:='Todos...'
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end;

end;

procedure TFrm_ProABC.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_medtpro',key);
   if valfloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.AsFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end;
end;

procedure TFrm_ProABC.CODVENMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codven.Hint := 'Informe Codigo do Vendedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_ProABC.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProABC.CLBNivelClick(Sender: TObject);
begin
  inherited;
CLBNivel:=Valida_CheckList(CLBNivel);
end;

procedure TFrm_ProABC.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_ProABC.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_ProABC.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if ValFloat(CODTIP.Text)<=0 then
   exit;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   BEGIN
   lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   codtip.text := '';
   CODTIP.SetFocus;
   END
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_ProABC.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_medtpro',key);
   if valfloat(CODTIP.Text)<>0 then
      CODTIPExit(self);
   CODTIP.text := '';
   key:=#0;
   end;
end;

procedure TFrm_ProABC.CODTIPMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.OMITIR_TPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_tpro.Hint := 'Omitir Marcado - Todos Tipos de Produtos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProABC.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      CODGRU.SetFocus;
      end;
   end;

end;

procedure TFrm_ProABC.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      CODGRUExit(self);
   CODGRU.text := '';
   key:=#0;
   end;

end;

procedure TFrm_ProABC.CODGRUMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.OMITIR_GRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_GRU.Hint := 'Omitir Marcado - Todos Grupos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProABC.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   exit;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   BEGIN
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   CODCON.SetFocus;
   END
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;
end;

procedure TFrm_ProABC.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      CODCONExit(self);
   CODCON.text := '';
   key:=#0;
   end;


end;

procedure TFrm_ProABC.CODCONMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codcon.Hint := 'Informe Codigo do Tipo de Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.OMITIR_CONMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_CON.Hint := 'Omitir Marcado - Todos Tipos de Controles '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProABC.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   exit;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   CODRAM.SetFocus;
   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_ProABC.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      CODRAMExit(self);
   CODRAM.text := '';
   key:=#0;
   end;
end;

procedure TFrm_ProABC.CODRAMMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.OMITIR_RAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   OMITIR_RAM.Hint := 'Omitir Marcado - Todos Ramos '+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_ProABC.CLBStatusClick(Sender: TObject);
begin
  inherited;
CLBStatus:=Valida_CheckList(CLBStatus);

end;

procedure TFrm_ProABC.CLBEstoqueClick(Sender: TObject);
begin
  inherited;
CLBEstoque:=Valida_CheckList(CLBEstoque);
end;


procedure TFrm_ProABC.CODUFMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   CODUF.Hint := 'Informe Codigo do Estado ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_ProABC.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_ProABC.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_ProABC.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ProABC.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_ProABC.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_ProABC.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_ProABC.CLBNivelExit(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_ProABC.CLBEstoqueExit(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_ProABC.sb_SalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(codusr,'_PROABC','');
mcinst2:='';
for x:=0 to CLBStatus.Items.Count-1 do
   begin
   if CLBStatus.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBSTATUS'          ,'itemindex' ,'_PROABC',mcinst2);
mcinst2:='';
for x:=0 to CLBEstoque.Items.Count-1 do
   begin
   if CLBEstoque.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBESTOQUE'          ,'itemindex' ,'_PROABC',mcinst2);

mcinst2:='';
for x:=0 to CLBNivel.Items.Count-1 do
   begin
   if CLBNivel.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLBNivel'          ,'itemindex' ,'_PROABC',mcinst2);



mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_PROABC',mcinst2);

fGravaPadroes(codusr,'CB_VENDEDOR_ITEM','checked'    ,'_PROABC',iif(cb_vendedor_item.Checked,'true','false'));

fGravaPadroes(codusr,'CB_TIPO'        ,'itemindex'  ,'_PROABC',IntToStr(CB_TIPO.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'       ,'itemindex'  ,'_PROABC',IntToStr(CB_ORDEM.ItemIndex));
fGravaPadroes(codusr,'CB_ICMSRET'     ,'checked'    ,'_PROABC',iif(CB_ICMSRET.Checked,'true','false'));
fGravaPadroes(codusr,'CB_EMBMUL'      ,'checked'    ,'_PROABC',iif(CB_EMBMUL.Checked,'true','false'));
fGravaPadroes(codusr,'CB_EMIDOC'      ,'checked'    ,'_PROABC',iif(CB_EmiDoc.Checked,'true','false'));
fGravaPadroes(codusr,'CB_QDEC_QTD'    ,'itemindex'  ,'_PROABC',IntToStr(CB_QDEC_QTD.ItemIndex));
fGravaPadroes(codusr,'CB_SEMMOV'      ,'checked'    ,'_PROABC',iif(CB_SEMMOV.Checked,'true','false'));
fGravaPadroes(codusr,'CB_IMPRESSAO'   ,'itemindex'  ,'_PROABC',IntToStr(cb_impressao.ItemIndex));
fGravaPadroes(codusr,'CB_AVANCPAG'    ,'checked'    ,'_PROABC',iif(CB_AVANCPAG.Checked,'true','false'));
fGravaPadroes(codusr,'CB_QUOTAVEN'    ,'checked'    ,'_PROABC',IntToStr(CB_QUOTAVEN.ItemIndex));
fGravaPadroes(codusr,'CB_SEPARADO'    ,'itemindex'  ,'_PROABC',IntToStr(CB_SEPARADO.ItemIndex));
fGravaPadroes(codusr,'CB_EXIBEVALOES' ,'itemindex'  ,'_PROABC',iif(cb_nexibevalores.Checked,'true','false'));

end;

procedure TFrm_ProABC.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_ProABC.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if ValFloat(CODCLI.Text)<>0 then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',trim(CODCLI.Text)) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_ProABC.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_ProABC',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ProABC.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if not flcaduf(0,0,0,CODUF.Text) then
      begin
      fmensagem('Estado nao Cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   CODUF.SetFocus;
   end;

end;
function tFrm_ProABC.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_ProABC.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   coduf.SetFocus;
   end;

end;

procedure TFrm_ProABC.CB_SEPARADOClick(Sender: TObject);
begin
if CB_SEPARADO.Text<>'Vendedor - 15'  then
   CB_QUOTAVEN.Visible:=true
else
   CB_QUOTAVEN.Visible:=false;

end;

function TFrm_ProABC.FImprimeMod01(pTipo: Integer): Boolean;
begin

Qr_For.First;
mGrupo_ant:=Qr_ForGRUPO.AsString;
While not Qr_For.Eof do
   begin
   if form_impres_proabc.mlin=0 then
      begin
//      form_impres_proabc.mpag:=form_impres_proabc.mpag+1;
//      form_impres_proabc.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
//      form_impres_proabc.Rdprint1.Impf(01,120,'Pagina:     '+FormatFloat('0000',form_impres_proabc.mpag),mnormal);
      if FproABC_Origem=0 then
         form_impres_proabc.fImprimirCabecalho(136,'Vendas por Produto. Tipo de Preco: '+CB_TPPRECO.Items[CB_TPPRECO.itemindex])
      else
         form_impres_proabc.fImprimirCabecalho(136,'Compras por Produto.');
      form_impres_proabc.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_proabc.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      form_impres_proabc.mlin:=4;

      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
      if lbx_codven.Count>0 then
         FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);

      if lbx_codsup.Count>0 then
         FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);

      if lbx_codtip.Count>0 then
         FImprimeTitulo('Tipo de Produtos',lbx_codtip,OMITIR_TPRO);

      if lbx_codgru.Count>0 then
         FImprimeTitulo('Grupo de Produtos',lbx_codgru,OMITIR_GRU);

      if lbx_codcon.Count>0 then
         FImprimeTitulo('Controle de Produtos',lbx_codcon,OMITIR_CON);

      if lbx_codram.Count>0 then
         FImprimeTitulo('Ramo de Produtos',lbx_codram,OMITIR_RAM);

      if lbx_coduf.Count>0 then
         FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);

      if lbx_codcli.Count>0 then
         FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);

      if lbx_codpro.Count>0 then
         FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);

      if lbx_codloc.Count>0 then
         FImprimeTitulo('Cidade',lbx_codloc,OMITIR_LOC);

      if lbx_codred.Count>0 then
         FImprimeTitulo('Rede de Cliente',lbx_codred,OMITIR_REDE);

      if lbx_codreg.Count>0 then
         FImprimeTitulo('Regiao',lbx_codreg,OMITIR_REG);

      if lbx_codram_cli.Count>0 then
         FImprimeTitulo('Ramo de Atividade',lbx_codram_cli,OMITIR_RAM_CLI);

      if not CB_ICMSRET.Checked then
         begin
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,Centra('Totais sem Impostos e Fretes.',' ',80),mneg);
         end;
      if CB_SEPARADO.text<>'Sem Separar - 12' then
         begin
         mGrupo_ant:=Qr_ForGRUPO.AsString;
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         form_impres_proabc.RDprint1.impf(form_impres_proabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
         end;
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;

      if (CB_EMBMUL.Checked)  or (CB_PCOMEDUNI.Checked) then
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+',mReduz)
      else
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+-------------------------------------------------------------------------+----------------+----------------+------+',mreduz);
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
      if CB_EMBMUL.Checked then
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|Ordem| C o d i g o |Nome do Produto                                         |  Total Qtd     |  Qtd.Multipla  |     Total      |Percen|',mReduz)
      else if CB_PCOMEDUNI.Checked then
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|Ordem| C o d i g o |Nome do Produto                                         |  Pco.Med.Unit  |  Total Qtd     |     Total      |Percen|',mReduz)
      else
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|Ordem| C o d i g o |Nome do Produto                                                          |  Total Qtd     |     Total      |Percen|',mReduz);

{
|Ordem| C o d i g o |Nome do Produto                                         |  Total Qtd     |  Qtd.Multipla  |     Total      |Percen|
+-----+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+
|12345|1234567890123|12345678901234567890123456789012345678901234567890123456|123.123.1234.123|123.123.1234.123|123.123.1234.123|123.45|


//      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+-----------------------------------------'+iif(CB_EMBMUL.Checked,'+','-')+'------------+------------+------+',m12ccp);
//      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
//      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|Ordem| C o d i g o |Nome do Produto                          '+iif(CB_EMBMUL.Checked,'|Qtd.Multipla','             ')+'|   Total    |Percen|',m12ccp);

}
      end;
   mordem:=mordem+1;
   form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
   if CB_TIPO.ItemIndex=0 then
      begin
      if (Qr_ForTOTVLR.Value>0) and (mTotgVlr>0) then
         mperc:=((Qr_ForTOTVLR.Value)*100)/mTotgVlr
      else mperc:=0;
      end
   else
      begin
      if (Qr_ForTOTQTD.Value>0) and (mtotgQtd>0) then
         mperc:=((Qr_ForTOTQTD.Value)*100)/mtotgQtd
      else mperc:=0;
      end;
   mcinst3:='|'+FormatFloat('00000',mordem)
            +'|'+insere(Qr_ForCODIGO.AsString,' ',13)
                           +'|';

{
   if (CB_EMBMUL.Checked) or (CB_PCOMEDUNI.Checked) then
      begin
      if CB_EMBMUL.Checked then
         begin
         mcinst3:=mcinst3+insere2(Qr_ForNOME.AsString,' ',46)+'|'
              +insere(FormatFloat(mcasas_abc, Qr_ForTOTQTD.AsFloat),' ',16)
              +'|'+insere(FormatFloat(mcasas_abc, Qr_ForTotalMultipla.AsFloat),' ',16)+'|';
         end
     else
         begin
         mcinst3:=mcinst3+insere2(Qr_ForNOME.AsString,' ',46)+'|'
              +insere(FormatFloat(mcasas_abc, Qr_ForTOTQTD.AsFloat),' ',16)
              +'|'+insere(FormatFloat(mcasaspu, Qr_Forprecomedunit.AsFloat),' ',16)+'|';
         end;
      end
   else
      begin
      mcinst3:=mcinst3+insere2(Qr_ForNOME.AsString,' ',63);
      end;

}
 {
|Ordem| C o d i g o |Nome do Produto                                         |  Total Qtd     |  Qtd.Multipla  |     Total      |Percen|
+-----+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+
|12345|1234567890123|12345678901234567890123456789012345678901234567890123456|123.123.1234.123|123.123.1234.123|123.123.1234.123|123.45|
                                                                           12345678901234567|


12345678901234567890123456789012345678901234567890123456|123.123.1234.123
12345678901234567890123456789012345678901234567890123456
}
   if CB_EMBMUL.Checked then

      begin
      mcinst3:=mcinst3+insere2(Qr_ForNOME.Value,' ',56)+'|'
                              +insere(FormatFloat(mcasas, Qr_ForTOTQTD.Value),' ',16)+'|'
                              +insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas_abc, Qr_ForTotalMultipla.Value)),' ',16);
      mcinst3:=mcinst3+'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, Qr_ForTOTVLR.Value)),' ',16)+'|';
      end
   else if CB_PCOMEDUNI.Checked then
      begin
      mcinst3:=mcinst3+insere2(Qr_ForNOME.Value,' ',56)
                              +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasaspu, Qr_Forprecomedunit.Value)),' ',16)
                              +'|'+insere(FormatFloat(mcasas, Qr_ForTOTQTD.Value),' ',16);
      mcinst3:=mcinst3+'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, Qr_ForTOTVLR.Value)),' ',16)+'|';

      end
   else
      begin
      mcinst3:=mcinst3+insere2(Qr_ForNOME.Value,' ',73);
      mcinst3:=mcinst3+'|'+insere(FormatFloat(mcasas_abc, Qr_ForTOTQTD.Value),' ',16);
      mcinst3:=mcinst3+'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, Qr_ForTOTVLR.Value)),' ',16)+'|';
      end;

{
|Ordem| C o d i g o |Nome do Produto                                         |  Total Qtd     |  Qtd.Multipla  |     Total      |Percen|
+-----+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+
|12345|1234567890123|12345678901234567890123456789012345678901234567890123456|123.123.1234.123|123.123.1234.123|123.123.1234.123|123.45|
}
   mcinst3:=mcinst3+insere(FormatFloat(mcasas, mperc),' ',6)+'|';
   form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,mcinst3,mreduz);

//   mtotgQtd:=mtotgQtd+Qr_ForTOTQTD.Value;
//   mTotgVlr:=mTotgVlr+Qr_ForTOTVLR.Value;
   mtotqtgdm :=mtotqtgdm +Qr_ForTotalMultipla.Value;

   mtotQtd:=mtotQtd+Qr_ForTOTQTD.Value;
   mTotVlr:=mTotVlr+Qr_ForTOTVLR.Value;
   mtotqtdm :=mtotqtdm +Qr_ForTotalMultipla.Value;
   Qr_For.Next;

   if not Qr_For.Eof then
      begin
      if (CB_SEPARADO.text<>'Sem Separar - 12') and (mGrupo_ant<>Qr_ForGRUPO.AsString) then
         begin
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         mcinst3:='|     '
                 +'|'+insere2(' ',' ',13)
                 +'|';
         if CB_EMBMUL.Checked then
            begin
            mcinst3:=mcinst3+insere2('Total','.',56)
                               +'|'+insere(FormatFloat(mcasas_abc, mtotQtd),' ',16)
                               +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas_abc, mtotqtdm)),' ',16)
                               +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mTotVlr)),' ',16)+'|';
            end
         else if CB_PCOMEDUNI.Checked then
            begin
            mcinst3:=mcinst3+insere2('Total','.',56)
                               +'|'+insere(FormatFloat(mcasas_abc, mtotQtd),' ',16)
                               +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasaspu, mTotVlr/mtotQtd)),' ',16)
                               +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mTotVlr)),' ',16)+'|';
            end
         else
            begin
            mcinst3:=mcinst3+insere2('Total','.',73)+'|';
            mcinst3:=mcinst3+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas_abc, mtotqtd)),' ',16)+'|';
            mcinst3:=mcinst3+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mtotvlr)),' ',16)+'|'
            end;
         mcinst3:=mcinst3+insere('100.00',' ',6)+'|';
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,mcinst3,mreduz);
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;

         if (CB_EMBMUL.Checked)  or (CB_PCOMEDUNI.Checked) then
            form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+',mReduz)
         else
            form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+-------------------------------------------------------------------------+----------------+----------------+------+',mReduz);
         mtotQtd :=0;
         mtotqtdm:=0;
         mTotVlr :=0;
         mTotCota:=0;
         if (CB_AVANCPAG.Checked) or (form_impres_proabc.mlin>57) then
            begin
            form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
            form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,insere('=','=',136),mreduz);
            form_impres_proabc.RDprint1.Novapagina;
            form_impres_proabc.mlin:=0;
            end
         else
            begin
            mGrupo_ant:=Qr_ForGRUPO.AsString;
            form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
            form_impres_proabc.RDprint1.impf(form_impres_proabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
            form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
            if (CB_EMBMUL.Checked)  or (CB_PCOMEDUNI.Checked) then
               form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+',mReduz)
            else
               form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+-------------------------------------------------------------------------+----------------+----------------+------+',mReduz);
            end;
         end
      else if form_impres_proabc.mlin>57 then
         begin
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,insere('=Continua...','=',136),mreduz);
         form_impres_proabc.RDprint1.Novapagina;
         form_impres_proabc.mlin:=0;
         end;
      end
   else if form_impres_proabc.mlin>57 then
      begin
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,insere('=Continua...','=',136),mreduz);
      form_impres_proabc.RDprint1.Novapagina;
      form_impres_proabc.mlin:=0;
      end;
   end;



if (CB_SEPARADO.text<>'Sem Separar - 12') and (mTotVlr<>0) then
   begin
   form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
   mcinst3:='|     '
           +'|'+insere2(' ',' ',13)
           +'|';
   if CB_EMBMUL.Checked then
      begin
      mcinst3:=mcinst3+insere2('Total','.',56)
                         +'|'+insere(FormatFloat(mcasas_abc, mtotqtd),' ',16)
                         +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas_abc, mtotqtdm)),' ',16)
                         +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mTotVlr)),' ',16)+'|';
      end
   else if CB_PCOMEDUNI.Checked then
      begin
      mcinst3:=mcinst3+insere2('Total','.',56)
                         +'|'+insere(FormatFloat(mcasas_abc, mtotqtd),' ',16)
                         +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mTotVlr/mtotQtd)),' ',16)
                         +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mTotVlr)),' ',16)+'|';
      end
   else
      begin
      mcinst3:=mcinst3+insere2('Total','.',73);
      mcinst3:=mcinst3+'|'+insere(FormatFloat(mcasas_abc, mtotqtd),' ',16)+'|';
      mcinst3:=mcinst3+'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas,     mtotvlr)),' ',16)+'|';
      end;
   mcinst3:=mcinst3+insere('100.00',' ',6)+'|';
   form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,mcinst3,mreduz);
   form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
   if (CB_EMBMUL.Checked)  or (CB_PCOMEDUNI.Checked) then
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+',mReduz)
   else
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-----+-------------+-------------------------------------------------------------------------+----------------+----------------+------+',mReduz);
   mtotQtd :=0;
   mTotVlr :=0;
   mTotCota:=0;
   mtotqtdm:=0;

   end;
if mTotgVlr<>0 then
   begin
   form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
   mcinst3:='|     '
           +'|'+insere2(' ',' ',13)
           +'|';

   if CB_EMBMUL.Checked then
      begin
      mcinst3:=mcinst3+insere2('Total','.',56)
                            +'|'+insere(FormatFloat(mcasas_abc, mtotgqtd),' ',16)
                            +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas_abc, mtotqtgdm)),' ',16)
                            +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mTotgVlr)),' ',16)+'|';
      end


   else if CB_PCOMEDUNI.Checked then
      begin
      mcinst3:=mcinst3+insere2('Total','.',56)
                           +'|'+insere(FormatFloat(mcasas_abc, mTotgVlr/mtotgQtd),' ',16)
                           +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mtotgqtd)),' ',16)
                           +'|'+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mTotgVlr)),' ',16)+'|';
      end

   else
      begin
      mcinst3:=mcinst3+insere2('Total','.',73);
      mcinst3:=mcinst3+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas_abc, mtotgqtd)),' ',16)+' ';
      mcinst3:=mcinst3+insere(IIF(cb_nexibevalores.Checked,'******',FormatFloat(mcasas, mtotgvlr)),' ',16)+'|'
      end;

   mcinst3:=mcinst3+insere('100.00',' ',6)+'|';
   form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,mcinst3,mreduz);

   form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
   if (CB_EMBMUL.Checked)  or (CB_PCOMEDUNI.Checked) then
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+fim.-+-------------+--------------------------------------------------------+----------------+----------------+----------------+------+',mReduz)
   else
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+fim.-+-------------+-------------------------------------------------------------------------+----------------+----------------+------+',mReduz);
   end;
if form_impres_proabc.RDprint1.Setup then form_impres_proabc.RDprint1.Fechar;
form_impres_proabc.free;
form_impres_proabc:=nil;

end;


function TFrm_ProABC.FImprimeMod02_cota(pTipo: Integer): Boolean;
begin



Qr_For.First;
mtotgQtd :=0;
mTotgVlr :=0;
mTotgCota:=0;
mtotQtd  :=0;
mTotVlr  :=0;
mTotCota :=0;
mtotqtdm :=0;
mtotqtgdm:=0;


mGrupo_ant:=Qr_ForGRUPO.AsString;

While not Qr_For.Eof do
   begin
   if form_impres_proabc.mlin=0 then
      begin
//      form_impres_proabc.mpag:=form_impres_proabc.mpag+1;
//      form_impres_proabc.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
//      form_impres_proabc.Rdprint1.Impf(01,120,'Pagina: '+FormatFloat('0000',form_impres_proabc.mpag),mnormal);
      if FproABC_Origem=0 then
         form_impres_proabc.RDprint1.ImpF(02,01,'Vendas por Produto.Tipo de Preco: '+CB_TPPRECO.Items[CB_TPPRECO.itemindex] ,mnormal)
      else
         form_impres_proabc.RDprint1.ImpF(02,01,'Compras por Produto.',mnormal);

      form_impres_proabc.RDprint1.ImpF(02,120,'Data: '+FormatDateTime(fdt2,pdatasis),mnormal);
      form_impres_proabc.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      form_impres_proabc.RDprint1.ImpF(04,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text),' ',80),mneg);
      form_impres_proabc.mlin:=4;

      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
      if lbx_codven.Count>0 then
         FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);

      if lbx_codsup.Count>0 then
         FImprimeTitulo('Supervisor',lbx_codsup,OMITIR_SUP);

      if lbx_codtip.Count>0 then
         FImprimeTitulo('Tipo de Produtos',lbx_codtip,OMITIR_TPRO);

      if lbx_codgru.Count>0 then
         FImprimeTitulo('Grupo de Produtos',lbx_codgru,OMITIR_GRU);

      if lbx_codcon.Count>0 then
         FImprimeTitulo('Controle de Produtos',lbx_codcon,OMITIR_CON);

      if lbx_codram.Count>0 then
         FImprimeTitulo('Ramo de Produtos',lbx_codram,OMITIR_RAM);

      if lbx_coduf.Count>0 then
         FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);

      if lbx_codcli.Count>0 then
         FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);

      if lbx_codpro.Count>0 then
         FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
      if not CB_ICMSRET.Checked then
         begin
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,Centra('Totais sem Impostos e Fretes.',' ',80),mneg);
         end;
      if CB_SEPARADO.text<>'Sem Separar - 12' then
         begin
         mGrupo_ant:=Qr_ForGRUPO.AsString;
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         form_impres_proabc.RDprint1.impf(form_impres_proabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
         end;
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-------------+-----------------------------------------------------+----------------+-----------+--------------+--------------+-------+',mreduz);
{
+-------------+-----------------------------------------------------+----------------+-----------+--------------+--------------+-------+
| C o d i g o |Nome do Produto                                      | Marca          | Quatidade |    Valor     |  Cota do Mes |Percen |
|1234567890123|12345678901234567890123456789012345678901234567890123|1234567890123456|zzzzz.zz999|zzz.zzz.zz9,99|zzz.zzz.zz9,99|100,00%|
}
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'| C o d i g o |Nome do Produto                                      | Marca          | Quatidade |    Valor     |'+centra((iif(CB_QUOTAVEN.ItemIndex=2,'Cota Qtd','Cota Valores')),' ',14)+'|Percen |',mreduz);

      end;
   mordem:=mordem+1;
   form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
   form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|'
                           +insere(Qr_ForCODIGO.AsString,' ',13)+'|'
                           +insere2(Qr_ForNOME.AsString,' ',53)+'|'
                           +Insere2(Qr_ForMARCA.AsString,' ',16)+'|'
                           +Insere(FormatFloat(mcasas_abc, Qr_ForTOTQTD.AsFloat),' ',11)+'|'
                           +Insere(FormatFloat(mcasaspu,   Qr_ForTOTVLR.AsFloat),' ',14)+'|'
                           +Insere(FormatFloat(mcasaspu,   Qr_Forcotames.AsFloat),' ',14)+'|'
                           +Insere(FormatFloat(mcasas_pct, Qr_Forpercentual.AsFloat),' ',07)+'|',mreduz);


   mtotgQtd:=mtotgQtd+Qr_ForTOTQTD.Value;
   mTotgVlr:=mTotgVlr+Qr_ForTOTVLR.Value;
   mTotgCota:=mTotgCota+Qr_Forcotames.Value;

   mtotQtd  :=mtotQtd +Qr_ForTOTQTD.Value;
   mTotVlr  :=mTotVlr +Qr_ForTOTVLR.Value;
   mTotCota :=mTotCota+Qr_Forcotames.Value;



   mtotqtdm :=mtotqtdm +Qr_ForTotalMultipla.Value;

   Qr_For.Next;
   if not Qr_For.Eof then
      begin
      if (CB_SEPARADO.text<>'Sem Separar - 12') and (mGrupo_ant<>Qr_ForGRUPO.AsString) then
         begin
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         if (mTotCota>0) and (mTotVlr>0) then
            mperc:=(mTotCota*100)/+iif(CB_QUOTAVEN.ItemIndex=2,mtotQtd,mTotVlr)
         else
            mperc:=0;
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|'
                        +insere(' ',' ',13)+'|'
                        +insere2('- Total','.',53)+'|'
                        +Insere2('.','.',16)+'|'
                        +Insere(FormatFloat(mcasas_abc, mtotQtd),' ',11)+'|'
                        +Insere(FormatFloat(mcasaspu,   mTotVlr),' ',14)+'|'
                        +Insere(FormatFloat(mcasaspu,   mTotCota),' ',14)+'|'
                        +Insere(FormatFloat(mcasas_pct, mperc),' ',07)+'|',mreduz);
         mtotQtd :=0;
         mTotVlr :=0;
         mTotCota:=0;
         mtotqtdm:=0;

         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-------------+-----------------------------------------------------+----------------+-----------+--------------+--------------+-------+',mreduz);

         if (CB_AVANCPAG.Checked) or (form_impres_proabc.mlin>57) then
            begin
            form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
            form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,insere('=','=',136),mreduz);
            form_impres_proabc.RDprint1.Novapagina;
            form_impres_proabc.mlin:=0;
            end
         else
            begin
            mGrupo_ant:=Qr_ForGRUPO.AsString;
            form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
            form_impres_proabc.RDprint1.impf(form_impres_proabc.mlin,01,centra(mGrupo_ant,' ',80),mneg);
            form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
            form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'+-------------+-----------------------------------------------------+----------------+-----------+--------------+--------------+-------+',mreduz);
            end;
         end
      else if form_impres_proabc.mlin>57 then
         begin
         form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
         form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,insere('=Continua...','=',136),mreduz);
         form_impres_proabc.RDprint1.Novapagina;
         form_impres_proabc.mlin:=0;
         end;
      end
   else if form_impres_proabc.mlin>57 then
      begin
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,insere('=Continua...','=',136),mreduz);
      form_impres_proabc.RDprint1.Novapagina;
      form_impres_proabc.mlin:=0;
      end;
   end;
if CB_SEPARADO.text<>'Sem Separar - 12' then
   begin
   if mTotVlr<>0 then
      begin
      form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
      if (mTotCota>0) and (mTotVlr>0) then
         mperc:=(mTotCota*100)/+iif(CB_QUOTAVEN.ItemIndex=2,mtotQtd,mTotVlr)
      else
         mperc:=0;
      form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|'
                     +insere(' ',' ',13)+'|'
                     +insere2('- Total','.',53)+'|'
                     +Insere2('.','.',16)+'|'
                     +Insere(FormatFloat(mcasas_abc, mtotQtd),' ',11)+'|'
                     +Insere(FormatFloat(mcasaspu,   mTotVlr),' ',14)+'|'
                     +Insere(FormatFloat(mcasaspu,   mTotCota),' ',14)+'|'
                     +Insere(FormatFloat(mcasas_pct, mperc),' ',07)+'|',mreduz);
      mtotQtd :=0;
      mTotVlr :=0;
      mTotCota:=0;
      mtotqtdm:=0; 
      end;
   end;
if mTotgVlr<>0 then
   begin
   form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
   if (mTotgCota>0) and (mTotgVlr>0) then
       mperc:=(mTotgCota*100)/+iif(CB_QUOTAVEN.ItemIndex=2,mtotQtd,mTotgVlr)
   else
      mperc:=0;
   form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,'|'
                  +insere(' ',' ',13)+'|'
                  +insere2('- Total Geral ','.',53)+'|'
                  +Insere2('.','.',16)+'|'
                  +Insere(FormatFloat(mcasas_abc, mtotgQtd),' ',11)+'|'
                  +Insere(FormatFloat(mcasaspu,   mTotgVlr),' ',14)+'|'
                  +Insere(FormatFloat(mcasaspu,   mTotgCota),' ',14)+'|'
                  +Insere(FormatFloat(mcasas_pct, mperc),' ',07)+'|',mreduz);
   mtotgQtd :=0;
   mTotgVlr :=0;
   mTotgCota:=0;
   end;
form_impres_proabc.mlin:=form_impres_proabc.mlin+1;
form_impres_proabc.RDprint1.ImpF(form_impres_proabc.mlin,01,insere('=Fim.','=',136),mreduz);

if form_impres_proabc.RDprint1.Setup then form_impres_proabc.RDprint1.Fechar;
form_impres_proabc.free;
form_impres_proabc:=nil;

end;

procedure TFrm_ProABC.Qr_ForCalcFields(DataSet: TDataSet);
begin
if (Qr_ForCOTAMES.AsFloat<>0) and (Qr_ForTOTVLR.Value<>0) then
   Qr_Forpercentual.Value:=(iif(CB_QUOTAVEN.ItemIndex=2,Qr_ForTOTQTD.Value,Qr_ForTOTVLR.Value)*100)/Qr_Forcotames.AsFloat
else
   begin
   if cb_tipo.itemindex=0 then
      Qr_Forpercentual.Value:=Qr_ForPERC_VALOR.asfloat
   else
      Qr_Forpercentual.Value:=Qr_ForPERC_QTD.asfloat;
   end;
if (Qr_ForQTDMULT.AsFloat>0) then
   Qr_ForTotalMultipla.AsFloat:=Qr_ForTOTQTD.AsFloat*Qr_ForQTDMULT.AsFloat
else
   Qr_ForTotalMultipla.AsFloat:=0;
if (Qr_ForTOTQTD.AsFloat<>0) and (Qr_ForTOTVLR.AsFloat<>0) then
   Qr_Forprecomedunit.AsFloat:=Qr_ForTOTVLR.AsFloat/Qr_ForTOTQTD.AsFloat
else
   Qr_Forprecomedunit.AsFloat:=0;


end;

procedure TFrm_ProABC.CODSUPExit(Sender: TObject);
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

procedure TFrm_ProABC.CODSUPKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_ProABC.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_ProABC.CB_PCOMEDUNIClick(Sender: TObject);
begin
if CB_PCOMEDUNI.Checked then
   begin
   CB_EMBMUL.Enabled:=false;
   CB_EMBMUL.Checked:=false;
   end
else
   begin
   CB_EMBMUL.Enabled:=true;
   end

end;

procedure TFrm_ProABC.CB_EMBMULClick(Sender: TObject);
begin
if CB_EMBMUL.Checked then
   CB_PCOMEDUNI.Checked:=false;

end;

procedure TFrm_ProABC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_ProABC.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if FproABC_Origem=0 then
  begin
  RL_CABECALHO.Caption:='Vendas por Produto. Tipo de Preco: '+CB_TPPRECO.Text;
  end
else
  begin
  RL_CABECALHO.Caption:='Compras por Produto';
  end;
end;

procedure TFrm_ProABC.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_banner.Caption:=pBanner_Intersys;
end;

procedure TFrm_ProABC.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rltotalqtd.Caption:=FormatFloat(mcasqtd,mtotgQtd);
rlvaltot.Caption:='R$ '+FormatFloat(mcasas,mTotgVlr);
end;

procedure TFrm_ProABC.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotgQtd :=mtotgQtd+Qr_ForTOTQTD.Value;
mTotgVlr :=mTotgVlr+Qr_ForTOTVLR.Value;
end;

procedure TFrm_ProABC.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');


if DM1.Tb_EmpCGC.asfloat=11131694000112 then
   fAjustarCabecalhodoPedidoDiferentedosItens(now-30,pdatanula,true);

end;

procedure TFrm_ProABC.bb_exportarClick(Sender: TObject);
begin
bb_exportar.Enabled:=false;
fAbrirBanco;
fGerarPlanilhaExcel([],Src_For);
bb_exportar.Enabled:=true;

end;

procedure TFrm_ProABC.FAbrirBanco;
var
  mcampoqtd,mcampo_qtd,mcampo_vlr,mperiodo:String;
  mordemp: Array [0..3] of string;
  mCampoGrupo: String;
  mCampoCota,mCampoOrdem: String;
  x: Integer;
  mUsouCliFor,mUSouVend: boolean;
begin
Qr_Forprecomedunit.DisplayFormat:=mcasaspu;
Qr_ForTOTVLR.DisplayFormat      :=mcasas;

mcasas_abc:='0';
if CB_QDEC_QTD.ItemIndex>0 then
   mcasas_abc :=mcasas_abc+'.'+insere('0','0',CB_QDEC_QTD.ItemIndex);

mUsouCliFor:=false;
mordemp[0]:='PDCODPRO';
mordemp[1]:='PDNOME';

mordemp[0]:='CODIGO';
mordemp[1]:='NOME';

if CB_TIPO.ItemIndex=0 then
   begin
   mordemp[2]:='totvlr';
   mordemp[3]:='totvlr desc';
   end
else
   begin
   mordemp[2]:='totqtd';
   mordemp[3]:='totqtd desc';
   end;
mUSouVend:=false;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if FproABC_Origem=0 then
  begin
  la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
{  if CB_PRODSERV.ItemIndex=0 then
    begin
    fInnerJoin4(0,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
    end
  else if CB_PRODSERV.ItemIndex=1 then
    begin
    fInnerJoin4(0,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');
    end;
  else
    begin
    fInnerJoin4(0,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
    la_instrucao:=la_instrucao+' and ';
    fInnerJoin4(0,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');
    end;}

   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';
   end
else
   begin
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP(+)','PF2CODEMP','PDCODPRO(+)','PF2CODPRO');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='PF1DATANF'
   else if CB_TIPOPESQ.ItemIndex=1 then
      pdatapesq:='PF1DATA'
   else
      pdatapesq:='PF1DATAENT';
   end;
mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);

mCampoOrdem:='';
if FproABC_Origem=0 then
  begin
//  if (LBX_CODLOC.Items.Count>0) or (lbx_codred.Items.Count>0) or (lbx_codram_cli.Items.count>0) or (lbx_codreg.items.count>0) then

     mUsouCliFor:=true;

  if (CB_SEPARADO.ItemIndex=0)   then // bairro
    begin
    mCampoOrdem:='CUF,CCIDADE,CBAIRRO';
    mCampoGrupo:='CUF  ||'+chr(39)+' '+chr(39)+'|| CCIDADE ||'+chr(39)+' '+chr(39)+'|| CBAIRRO';
    mUsouCliFor:=true;
    end
  else if CB_SEPARADO.ItemIndex=1 then // cidade
    begin
    mCampoOrdem:='CUF,CCIDADE';
    mCampoGrupo:='CUF || '+chr(39)+' '+chr(39)+'|| CCIDADE ';
    mUsouCliFor:=true;
    end
  else if CB_SEPARADO.ItemIndex=2 then // cliente
    begin
    mCampoOrdem:='CRAZAO,P1CODCLI';
    mCampoGrupo:='TO_CHAR(P1CODCLI) || '+chr(39)+' - '+chr(39)+'|| trim(CRAZAO) ||'+chr(39)+' - '+chr(39)
                +'|| decode(max(ccnpj), null, to_char(max(ccpf),'+chr(39)+'00000000000'+chr(39)+')'
                +',0,to_char(max(ccpf),'+chr(39)+'00000000000'+chr(39)+')'
                +',to_char(max(ccnpj),'+chr(39)+'00000000000000'+chr(39)+'))';
    mUsouCliFor:=true;
    end
  else if CB_SEPARADO.ItemIndex=3 then // Estado
    begin
    mCampoOrdem:='CUF';
    mCampoGrupo:='CUF';
    mUsouCliFor:=true;
    end
  else if CB_SEPARADO.ItemIndex=4 then // fornecedor
    begin
    if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
    fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','PDCODEMP','FCODFOR(+)','PDCODFOR');
    mCampoOrdem:='FRAZAO,FCODFOR';
    mCampoGrupo:='TO_CHAR(FCODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
    end
  else if CB_SEPARADO.ItemIndex=5 then // grupo
    begin
    mCampoOrdem:='PDNOMGRU,PDCODGRU';
    mCampoGrupo:=' PDNOMGRU || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODGRU) ';
    end
  else if CB_SEPARADO.ItemIndex=6 then // marca
    begin
    mCampoOrdem:='PDMARCA';
    mCampoGrupo:='PDMARCA';
    end
  else if CB_SEPARADO.ItemIndex=7 then //data
    begin
    mCampoOrdem:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
    mCampoGrupo:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
    end
  else if CB_SEPARADO.ItemIndex=8 then // RAMO DE ATIVIDADE DO CLIENTE
    begin
    mCampoOrdem:='CNOMRAM,CCODRAM';
    mCampoGrupo:='CNOMRAM   || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(CCODRAM)';
    mUsouCliFor:=true;
    end
  else if CB_SEPARADO.ItemIndex=9 then // RAMO DO PRODUTO
    begin
    mCampoOrdem:='PDNOMRAM,PDCODRAM';
    mCampoGrupo:='PDNOMRAM   || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODRAM)';
    end
  else if CB_SEPARADO.ItemIndex=10 then // REDE DE CLIENTE
    begin
    mCampoOrdem:='CNOMRED,CCODRED';
    mCampoGrupo:='CNOMRED   || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(CCODRED)';
    mUsouCliFor:=true;
    end
  else if CB_SEPARADO.ItemIndex=11 then // REGIAO DO CLIENTE
    begin
    mCampoOrdem:='CNOMROTA,CROTA';
    mCampoGrupo:='CNOMROTA   || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(CROTA)';
    mUsouCliFor:=true;
    end
  else if CB_SEPARADO.ItemIndex=12 then // sem separara
    begin
    mCampoOrdem:='';
    mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
    end
  else if CB_SEPARADO.ItemIndex=13 then // controle
    begin
    mCampoOrdem:='PDNOMCON,PDCODCON';
    mCampoGrupo:='PDNOMCON || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODCON) ';
    end
  else if CB_SEPARADO.ItemIndex=14 then //  TIPO DE PRODUTO
    begin
    mCampoOrdem:='PDNOMTIP,PDCODTIP';
    mCampoGrupo:='PDNOMTIP || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODTIP) ';
    end

  else if CB_SEPARADO.ItemIndex=15 then // Vendedor
    begin
    if (pbanco=0) and (trim(la_instrucao)<>'') then
       la_instrucao:=la_instrucao+' and ';
    fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP',mcampo_codemp,'VCODVEN',mcampo_codven);
    mCampoOrdem:='VNOME,'+mcampo_codven ;
    mCampoGrupo:='VNOME || '+chr(39)+'-'+chr(39)+' || TO_CHAR('+mcampo_codven+') ';
    mUSouVend:=true;
    end;
  if (not mUSouVend) and (lbx_codsup.Items.Count>0) then
    begin
    if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
    fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP',mcampo_codemp,'VCODVEN',mcampo_codven);
    mUSouVend:=true;
    end;
{
4Fornecedor
5Grupo de Produtos
6Marca
7Mes/Ano
8Ramo/Sub-Grupo
9Sem Separar
10Tipo de Controle
11Vendedor
}
  if not (mUsouCliFor) and (lbx_coduf.Items.Count>0) then
    begin
    mUsouCliFor:=true;
    end;

  if mUsouCliFor= true then
     begin
    if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
    fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
    end;

  if CB_PRODSERV.ItemIndex<>1 then
    begin
    if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
//    la_tabelas  :='';
//    la_Join     :='';
//    la_instrucao:='';
    fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
    mcampoqtd:='P2QTD';
    mcampo_vlr:=fBuscarTipoPreco(CB_TPPRECO.ItemIndex,CB_ICMSRET.Checked);


    //mcampo_qtd:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
    mcampo_qtd:=' DECODE(max(P1FORMACE),                                     '
               +'   0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD)), '
               +'   1,DECODE(max(P1TIPO_ENTSAI),1,max(P2QTD)*-1,max(P2QTD))) ';
    Qr_For.Close;
    Qr_For.SQl.Clear;
    Qr_For.SQl.Add('  SELECT MAX(NOME) AS NOME , MAX(MARCA) AS MARCA, CODIGO , max(CODVEN) AS CODVEN, SUM(totvlr) AS TOTVLR,  '
                  +'  SUM(totqtd) AS TOTQTD, SUM(iCMSR) AS ICMSR, MAX(COTAMES) AS COTAMES, MAX(QTDMULT) AS QTDMULT, '
                  +'  SUM(QTDFRACAO) AS QTDFRACAO, MAX(GRUPO) AS GRUPO, MAX(LOCAL_INFO) AS LOCAL_INFO  '
                  +'  FROM  ( '
                  +'     Select PDNOME AS NOME, PDMARCA AS MARCA, PDCODPRO AS CODIGO,max('+mcampo_codven+') AS CODVEN,'+mcampo_vlr+' as totvlr,'+mcampo_qtd+' as totqtd,'
                  +'       sum(P2ICMSR) as ICMSR ');
    if (CB_QUOTAVEN.ItemIndex>0) or (CB_PRODSERV.ItemIndex<>0) then
      begin
      mNomeView:=fProcTemp(22);
      end;
    Qr_For.sql.Add(',0 as COTAMES ');
    Qr_For.sql.Add(',   max(PDEMBMUL) as QTDMULT, '
                  +' sum('+mcampoqtd+'/decode(PDEMBPAD,null,1,0,1,PDEMBPAD)) as QTDFRACAO  '
                  +','+mCampoGrupo+' as GRUPO '
                  +', 0 AS LOCAL_INFO '
                  +' from CADP01,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_empresas
                  +'      '+iif(la_instrucao='','',' and ')+la_instrucao
                  +iif(MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS)='','',' and '+MEmpresa('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS))
                  +' and PDCODPRO(+)=P2CODPRO ');//and PF1CODFOR=FCODFOR');


    if CB_EmiDoc.Checked then
      Qr_For.SQL.add(' and (P1EMIDOC>0)');
    if Trim(MDT1.Text)<>'/  /' then
      begin
      Qr_For.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));

      end;
    if Trim(MDT2.Text)<>'/  /' then
      begin
      Qr_For.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,false,StrToDate(MDT2.Text)));
      end;
    if trim(edt_marca.Text)<>'' then
      Qr_For.SQL.Add(' and upper(PDMARCA) like '+chr(39)+UpperCase(edt_marca.Text)+'%'+chr(39));
    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and P1CODCLI '+mcinst2);
    mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
    if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODPRO '+mcinst2);
    mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
    if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODFOR '+mcinst2);
//      Qr_For.SQL.Add(' and P2CODFAB '+mcinst2);
    mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
    if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and '+mcampo_codven+' '+mcinst2);
    mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
    if trim(mcinst2)<>'' then
       begin
       Qr_For.SQL.Add(' and CUF '+mcinst2);
       end;

    mcinst2:='';
    if valfloat(edt_descini.Text)>0  then
       mcinst2:=mcinst2+' and P2DESC1>='+mudavp(edt_descini.Text);
    if valfloat(edt_descfin.Text)>0  then
       mcinst2:=mcinst2+' and P2DESC1<='+mudavp(edt_descfin.Text);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(mcinst2);


    mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
    if trim(mcinst2)<>'' then
       begin
       Qr_For.SQL.Add(' and CUF '+mcinst2);
       end;



    mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and VCODSUP '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and PDCODTIP '+mcinst2);


    mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and CCODLOC '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codred,OMITIR_REDE);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and CCODRED '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codram_cli,OMITIR_RAM_CLI);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and CCODRAM '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_REG);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and CROTA '+mcinst2);


    mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and PDCODGRU '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and PDCODCON '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and PDCODRAM '+mcinst2);
    mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and  P1TIPO '+mcinst2);

    mcinst2:=fItenstCheckListBox(0,CLBNivel);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and PDNIVEL '+mcinst2);

    mcinst2:=fItenstCheckListBox(0,CLBStatus);
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and PDSTATUS  '+mcinst2);;

    mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
    if trim(mcinst2)<>'' then
       Qr_For.SQL.Add(' and  '+mcinst2);

    mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
    if trim(mcinst2)<>'' then
       Qr_For.sql.Add(' and P1CX_CODCAI '+mcinst2);

    if trim(mCampoOrdem)<>'' then
       begin
       Qr_For.SQL.Add(' Group by P2CHAVE,P2ITEM, '+mCampoOrdem+', PDNOME,PDMARCA,PDCODPRO');
       if (not CB_QUOTAVEN.ItemIndex>0) or (CB_PRODSERV.ItemIndex=0) then
          Qr_For.SQL.Add(' order by '+mCampoOrdem+','+mordemp[CB_ORDEM.itemindex]);
       Qr_For.SQL.ADD(' ) GROUP BY CODIGO, GRUPO ');
       end
    else
       begin
       Qr_For.SQL.Add(' Group by  P2CHAVE,P2ITEM, PDNOME,PDMARCA,PDCODPRO');
//       if (CB_QUOTAVEN.ItemIndex=0) and (CB_PRODSERV.ItemIndex=0) then
//          Qr_For.SQL.Add(' order by '+mordemp[CB_ORDEM.itemindex]);
       Qr_For.SQL.ADD(' )  GROUP BY CODIGO, GRUPO ');
       end;
    end;
    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;

//    if not DirExists('c:\abc') then
//      CreateDir('c:\abc');
//    Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_vendas.txt');


//*********************MONTA INSTRUCAO PARA SERVICOS ***************************
     if CB_PRODSERV.ItemIndex<>0 then
        begin
        if (CB_QUOTAVEN.ItemIndex>0) or(CB_PRODSERV.ItemIndex=2) then
           begin
           DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
           DM1.Query1.SQL.add(Qr_For.SQL.Text);
           DM1.Query1.SQL.add(' union all ');
           end;
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
{
         if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
            la_Empresas:=''
         else
            la_Empresas:=fla_sqlmp('',Form_SelEmp.CLB_EMPRESAS);
 }

//        la_tabelas  :='';
//        la_Join     :='';
//        la_instrucao:='';
    if (pbanco=0) and (trim(la_instrucao)<>'') then
        la_instrucao:=la_instrucao+' and ';

         la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

        fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');

         if (pbanco=0) and (trim(la_instrucao)<>'') then
            la_instrucao:=la_instrucao+' and ';
         fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP(+)','P2SCODEMP','PDCODPRO(+)','P2SCODPRO');

         if CB_TIPOPESQ.ItemIndex=0 then
            pdatapesq:='P1DATDOC'
         else
            pdatapesq:='P1DATAP';


         mcampoqtd:='P2SQTD';
//         if CB_ICMSRET.Checked then
//            mcampo_vlr:='sum(P2SQTD*P2SPRECO-P2STOTDES)'
//         else
            mcampo_vlr:='sum(P2SQTD*P2SPRECO-P2STOTDES)';
         mcampo_qtd:=fGerarInstrucaoQtd(0,'P2SQTD',Form_SelEmp.CLB_EMPRESAS);
        //   'sum(P2QTD)';
         Qr_For.Close;
         Qr_For.SQl.Clear;


         Qr_For.SQl.Add('Select PDNOME AS NOME, PDMARCA AS MARCA, PDCODPRO AS CODIGO,max('+mcampo_codven+') AS CODVEN,'+mcampo_vlr+' as totvlr,'+mcampo_qtd+' as totqtd,'
                       +'       0 as ICMSR ');
         Qr_For.sql.Add(',0 as COTAMES ');

         Qr_For.sql.Add(', max(PDEMBMUL) as QTDMULT, '
                       +' sum('+mcampoqtd+'/decode(PDEMBPAD,null,1,0,1,PDEMBPAD)) as QTDFRACAO  '
                       +','+mCampoGrupo+' as GRUPO '
                       +', 1 AS LOCAL_INFO '
                       +' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+la_Empresas+iif(la_Empresas='','',' and ')
                       +'      '+la_instrucao+ iif(la_instrucao='','',' and ')
                       +' P1STATUS<'+mstatus_excluido+' ');
         if CB_EmiDoc.Checked then
            Qr_For.SQL.add(' and (P1EMIDOC>0) ');
//(P1NUMNF>0 or P1NUMCF>0)

         if Trim(MDT1.Text)<>'/  /' then
            begin
            Qr_For.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));

            end;
         if Trim(MDT2.Text)<>'/  /' then
            begin
            Qr_For.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,false,StrToDate(MDT2.Text)));
            end;
         mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and P1CODCLI '+mcinst2);
         mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and PDCODPRO '+mcinst2);
         mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and P2SCODFAB '+mcinst2);
         mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and '+mcampo_codven+' '+mcinst2);
         mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and VCODSUP '+mcinst2);

         mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and PDCODTIP '+mcinst2);
         mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and PDCODGRU '+mcinst2);
         mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and PDCODCON '+mcinst2);

         mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and PDCODRAM '+mcinst2);
         mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and  P1TIPO '+mcinst2);


         mcinst2:=fItenstCheckListBox(0,CLBNivel);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and PDNIVEL '+mcinst2);;

         mcinst2:=fItenstCheckListBox(0,CLBStatus);
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' PDSTATUS  '+mcinst2);;

         mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
         if trim(mcinst2)<>'' then
            Qr_For.SQL.Add(' and  '+mcinst2);

         if trim(mCampoOrdem)<>'' then
            begin
            Qr_For.SQL.Add(' Group by '+mCampoOrdem+', PDNOME,PDMARCA,PDCODPRO');
              if (not CB_QUOTAVEN.ItemIndex=0)  and (CB_PRODSERV.ItemIndex=1)  then
                Qr_For.SQL.Add(' order by '+mCampoOrdem+','+mordemp[CB_ORDEM.itemindex]);
            end
         else
            begin
            Qr_For.SQL.Add(' Group by  PDNOME,PDMARCA,PDCODPRO');
              if (CB_QUOTAVEN.ItemIndex=0) then // and (CB_PRODSERV.ItemIndex=1) then
               Qr_For.SQL.Add(' order by '+mordemp[CB_ORDEM.itemindex]);
            end;

         end;
//    Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_vendas1.txt');

//**************************************************

   if (CB_QUOTAVEN.ItemIndex>0)  then
      begin
      if (CB_PRODSERV.ItemIndex=0) then
         begin
         DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
         DM1.Query1.SQL.add(Qr_For.SQL.Text);
         DM1.Query1.SQL.add(' union all ');
         end
      else
         begin
         DM1.Query1.SQL.add(Qr_For.SQL.Text);
         DM1.Query1.SQL.add(' union  all ');
         end;
      if CB_QUOTAVEN.ItemIndex=2 then
         mCampoCota:='CPV_COTAQTD'
      else
         mCampoCota:='CPV_COTAVLR';
      DM1.Query1.SQL.add(' union all ');
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if CB_SEPARADO.ItemIndex=14 then // vendedor
         begin
         mCampoOrdem:='VNOME,CPV_CODVEN';
         mCampoGrupo:='TO_CHAR(CPV_CODVEN) || '+chr(39)+'-'+chr(39)+'|| VNOME ';
         end
      else
         begin
         mCampoOrdem:='';
         mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
         end;
      la_Empresas:=fEmpresas_Selecionadas('CADPROVEN_COTAMES','CPV_CODEMP',Form_SelEmp.CLB_EMPRESAS);

      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(1,'CADPRO','PDCODEMP(+)','CPV_CODEMP','PDCODPRO(+)','CPV_CODPRO');
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADVEN','VCODEMP','CPV_CODEMP','VCODVEN','CPV_CODVEN');

      DM1.Query1.SQl.Add('Select PDNOME AS NOME, PDMARCA AS MARCA, PDCODPRO AS CODIGO,'
                 +' max(CPV_CODVEN) AS CODVEN,0 as totvlr,0 as totqtd,'
                 +'       0 as ICMSR ');
      DM1.Query1.Sql.Add(',sum('+mCampoCota+') as COTAMES ');
      DM1.Query1.Sql.Add(',max(PDEMBMUL) as QTDMULT, '
                 +' 0 as QTDFRACAO  '
                 +','+mCampoGrupo+' as GRUPO '
                 +', 3 AS LOCAL_INFO '

                 +' from CADPROVEN_COTAMES'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where  '+mCampoCota+'<>-9999999 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
      if trim(MDT1.Text)<>'/  /' then
         begin
         DM1.query1.SQL.add(' and CPV_ANO>='+FormatDatetime('yyyy', StrToDate(MDT1.Text))
                           +' and CPV_MES>='+FormatDatetime('mm', StrToDate(MDT1.Text)));
         mcinst:=' and ';
         end;
      if trim(MDT2.Text)<>'/  /' then
         begin
         DM1.query1.SQL.add(' and CPV_ANO<='+FormatDatetime('yyyy', StrToDate(MDT2.Text))
                     +' and CPV_MES<='+FormatDatetime('mm', StrToDate(MDT2.Text)));
         end;
      mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CPV_CODVEN '+mcinst2);
      mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and VCODSUP '+mcinst2);

      DM1.Query1.SQL.Add(' group by '+mCampoGrupo+', PDNOME, PDMARCA, PDCODPRO ');

      try
         DM1.Query1.ExecSQL;
      except
         DM1.Query1.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      end
   else if CB_PRODSERV.ItemIndex=2 then
      begin
      DM1.Query1.SQL.add(Qr_For.SQL.Text);

      try
         DM1.Query1.Sql.SavetoFile('c:\SGE\CURVAABCPROD.txt');
        DM1.Query1.ExecSQL;
      except
         DM1.Query1.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      end;

   if (CB_QUOTAVEN.ItemIndex>0) or (CB_PRODSERV.ItemIndex=2) then
      begin
      Qr_For.Close;
      Qr_For.SQl.Clear;
      Qr_For.SQl.Add('Select NOME,MARCA,CODIGO,'
                    +iif(cb_separado.itemindex=15,'CODVEN','max(CODVEN) as CODVEN')
                    +',GRUPO,sum(totvlr) as totvlr'
                    +',sum(totqtd)  as totqtd'
                    +',sum(ICMSR) as ICMSR ');
      Qr_For.sql.Add(',sum(COTAMES) as COTAMES ');
      Qr_For.sql.Add(', max(QTDMULT) as QTDMULT '
                    +', sum(QTDFRACAO) as QTDFRACAO  '
                    +', max(LOCAL_INFO) AS LOCAL_INFO '
                    +' from '+mNOmeView
                    +' group by GRUPO,NOME,MARCA,CODIGO'+iif(cb_separado.itemindex=15,',CODVEN ',''));
       if CB_ORDEM.ItemIndex=1 then
          Qr_for.SQL.add(' Order by GRUPO,NOME ')
       else if CB_ORDEM.ItemIndex=0 then
          Qr_for.SQL.add(' Order by GRUPO,CODIGO ')
       else if CB_ORDEM.ItemIndex=2 then
          begin
          if CB_TIPO.ItemIndex=0 then
             Qr_For.SQL.add(' order by totvlr ')
          else
             Qr_For.SQL.add(' order by totqtd ');
          end
       else if CB_ORDEM.ItemIndex=3 then
          begin
          if CB_TIPO.ItemIndex=0 then
             Qr_For.SQL.add(' order by totvlr desc')
          else
             Qr_For.SQL.add(' order by totqtd desc');
          end;

      try
         Qr_For.SQL.Text:='select abc2.* '
                         +',round( (TOTVLR*100/TOTAL_VALOR),3) as PERC_VALOR '
                         +',round( (TOTQTD*100/TOTAL_QTD),3) as PERC_QTD '
                         +'  from ( '
                         +'select abc.*, '
                         +' sum(TOTVLR) over (partition by 1 ) AS TOTAL_valor '
                         +'  ,sum(TOTQTD) over (partition by 1 ) AS TOTAL_QTD'
                         +' from ( '
                         +Qr_For.SQL.Text
                         +') abc '
                         +') abc2 ';


       if CB_ORDEM.ItemIndex=1 then
          begin
          if mCampoGrupo<> chr(39)+insere(' ',' ',40)+chr(39) then
             Qr_for.SQL.add(' Order by GRUPO,NOME ')
          else
             Qr_for.SQL.add(' Order by NOME ');

          end
       else if CB_ORDEM.ItemIndex=0 then
          begin
          if mCampoGrupo<> chr(39)+insere(' ',' ',40)+chr(39) then
             Qr_for.SQL.add(' Order by GRUPO,CODIGO ')
          else
             Qr_for.SQL.add(' Order by CODIGO ')
          end
       else if CB_ORDEM.ItemIndex=2 then
          begin
          if CB_TIPO.ItemIndex=0 then
             Qr_For.SQL.add(' order by totvlr ')
          else
             Qr_For.SQL.add(' order by totqtd ');
          end
       else if CB_ORDEM.ItemIndex=3 then
          begin
          if CB_TIPO.ItemIndex=0 then
             Qr_For.SQL.add(' order by totvlr desc')
          else
             Qr_For.SQL.add(' order by totqtd desc');
          end;
//         Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_vendas4.txt');

         Qr_For.Open;
      except
         Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_vendas4.txt');
         end;
      end
   else
      begin
      try
         Qr_For.SQL.Text:='select abc2.* '
                         +',round( (TOTVLR*100/TOTAL_VALOR),3) as PERC_VALOR '
                         +',round( (TOTQTD*100/TOTAL_QTD),3) as PERC_QTD '
                         +'  from ( '
                         +'select abc.*, '
                         +' sum(TOTVLR) over (partition by 1 ) AS TOTAL_valor '
                         +'  ,sum(TOTQTD) over (partition by 1 ) AS TOTAL_QTD'
                         +' from ( '
                         +Qr_For.SQL.Text
                         +') abc '
                         +') abc2 ';

       if CB_ORDEM.ItemIndex=1 then
          Qr_for.SQL.add(' Order by GRUPO,NOME ')
       else if CB_ORDEM.ItemIndex=0 then
          Qr_for.SQL.add(' Order by GRUPO,CODIGO ')
       else if CB_ORDEM.ItemIndex=2 then
          begin
          if CB_TIPO.ItemIndex=0 then
             Qr_For.SQL.add(' order by totvlr ')
          else
             Qr_For.SQL.add(' order by totqtd ');
          end
       else if CB_ORDEM.ItemIndex=3 then
          begin
          if CB_TIPO.ItemIndex=0 then
             Qr_For.SQL.add(' order by totvlr desc')
          else
             Qr_For.SQL.add(' order by totqtd desc');
          end;


//         Qr_For.Sql.SavetoFile('c:\sge\curvaabcprodutos.txt');
         Qr_For.Open;
//         Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_vendas5.txt');
      except
         Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_vendas5.txt');
         end;
      end;
   end
else
   begin


   if CB_SEPARADO.ItemIndex=0 then // bairro
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';

      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      }
      mCampoOrdem:='FUF,FCIDADE,FBAIRRO';
      mCampoGrupo:='FUF || '+chr(39)+' '+chr(39)+'|| FCIDADE ||'+chr(39)+' '+chr(39)+'|| FBAIRRO';
      mUsouCliFor:=true;
      end
   else if CB_SEPARADO.ItemIndex=1 then // cidade
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      }
      mCampoOrdem:='FUF,FCIDADE';
      mCampoGrupo:='FUF || '+chr(39)+' '+chr(39)+'|| FCIDADE ';
      mUsouCliFor:=true;
      end
   else if CB_SEPARADO.ItemIndex=2 then // cliente
      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
}
      mCampoOrdem:='FRAZAO,PF1CODFOR';
      mCampoGrupo:='TO_CHAR(PF1CODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
      mUsouCliFor:=true;
      end
   else if CB_SEPARADO.ItemIndex=3 then // Estado

      begin
{
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      }
      mCampoOrdem:='FUF';
      mCampoGrupo:='FUF';
      mUsouCliFor:=true;
      end
   else if CB_SEPARADO.ItemIndex=4 then // fornecedor
      begin
      mCampoOrdem:='FRAZAO,FCODFOR';
      mCampoGrupo:='TO_CHAR(FCODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
      end
   else if CB_SEPARADO.ItemIndex=5 then // GRUPO DE PRODUTO
      begin
//      if (pbanco=0) and (trim(la_instrucao)<>'') then
//         la_instrucao:=la_instrucao+' and ';
      mCampoOrdem:='PDNOMGRU,PDCODGRU';
      mCampoGrupo:='TO_CHAR(PDCODGRU) || '+chr(39)+'-'+chr(39)+'|| PDNOMGRU ';
      end
   else if CB_SEPARADO.ItemIndex=6 then // MARCA
      begin
      mCampoOrdem:='PDMARCA';
      mCampoGrupo:='PDMARCA';
      end
   else if CB_SEPARADO.ItemIndex=7 then // MESANO
      begin
      mCampoOrdem:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
      mCampoGrupo:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
      end
   else if CB_SEPARADO.ItemIndex=8 then // RAMO DO CLIENTE
      begin
      mCampoOrdem:='CNOMRAM,CCODRAM';
      mCampoGrupo:=' CNOMRAM || '+chr(39)+'-'+chr(39)+'||  TO_CHAR(CCODRAM)';
      end
   else if CB_SEPARADO.ItemIndex=9 then // RAMO
      begin
      mCampoOrdem:='PDNOMRAM,PDCODRAM';
      mCampoGrupo:=' PDNOMRAM || '+chr(39)+'-'+chr(39)+'||  TO_CHAR(PDCODRAM)';
      end
   else if CB_SEPARADO.ItemIndex=10 then // REDE DO CLIENTE
      begin
      mCampoOrdem:='CNOMRED,CCODRED';
      mCampoGrupo:=' CNOMRED || '+chr(39)+'-'+chr(39)+'||  TO_CHAR(CCODRED)';
      end


   else if CB_SEPARADO.ItemIndex=11 then // REGIAO DO CLIENTE
      begin
      mCampoOrdem:='CNOMROTA,CROTA';
      mCampoGrupo:=' CNOMROTA || '+chr(39)+'-'+chr(39)+'||  TO_CHAR(CROTA)';
      end

   else if CB_SEPARADO.ItemIndex=12 then // sem separara
      begin
      mCampoOrdem:='';

      mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
      end
   else if CB_SEPARADO.ItemIndex=13 then // RAMO
      begin
      mCampoOrdem:='PDNOMCON,PDCODCON';
      mCampoGrupo:=' PDNOMCON || '+chr(39)+'-'+chr(39)+'|| TO_CHAR(PDCODCON) ';
      end
   else if CB_SEPARADO.ItemIndex=15 then // vendedor
      begin
      mCampoOrdem:='';
      mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
      end;
{
   if not (mUsouCliFor) and (lbx_coduf.Items.Count>0) then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
      mUsouCliFor:=true;
      end;
}

   mcampoqtd:='PF2QTDP';
   if CB_ICMSRET.Checked then
     mcampo_vlr:='sum( ( PF2QTDP*PF2PU)-PF2TOTDES+PF2ICMSR )'
   else
     mcampo_vlr:='sum( ( PF2QTDP*PF2PU)-PF2TOTDES )';
   mcampo_qtd:='sum(PF2QTDP)';
   Qr_For.Close;
   Qr_For.SQl.Clear;
   Qr_For.SQl.Add('Select NVL(TRIM(PF2NOMPRO),PDNOME) AS NOME, PDMARCA AS MARCA, PDCODPRO AS CODIGO,PDCODPRO AS CODVEN, '+mcampo_vlr+' as totvlr,'+mcampo_qtd+' as totqtd,'
                 +'       sum(PF2ICMSR) as ICMSR '
                 +','+mCampoGrupo+' as GRUPO '
                 +', max(PDEMBMUL) as QTDMULT, '
                 +' sum('+mcampoqtd+'/decode(PDEMBPAD,null,1,0,1,PDEMBPAD)) as QTDFRACAO ');
   Qr_For.sql.Add(',0 as COTAMES '
                 +', 0 AS LOCAL_INFO ');


   Qr_For.sql.Add(' from CADPF1,CADFOR '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS<>9 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                 +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE and PF1CODFOR=FCODFOR'
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if Trim(MDT1.Text)<>'/  /' then
      Qr_For.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_For.Sql.Add(fFormatdatetimeParaConsulta(pDataPesq,false,StrToDate(MDT2.Text)));

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);

   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODPRO '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PF1CODFOR '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODTIP '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODGRU '+mcinst2);
   mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODCON '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDCODRAM '+mcinst2);


   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and PDNIVEL '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLBStatus);
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' PDSTATUS  '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
   if trim(mcinst2)<>'' then
      begin
      Qr_For.SQL.Add(' and CUF '+mcinst2);
      end;
   mcinst2:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
   if trim(mcinst2)<>'' then
      Qr_For.SQL.Add(' and  '+mcinst2);

   if CB_EmiDoc.Checked then
      Qr_For.SQL.add(' and PF1STATUS=1');

   if trim(mCampoOrdem)<>'' then
      begin
      Qr_For.SQL.Add(' Group by '+mCampoOrdem+',PF2NOMPRO, PDNOME,PDMARCA,PDCODPRO');
      Qr_For.SQL.Add(' order by '+mCampoGrupo+','+mordemp[CB_ORDEM.itemindex]);
      end
   else
      begin
      Qr_For.SQL.Add(' Group by  PF2NOMPRO,PDNOME,PDMARCA,PDCODPRO');
      Qr_For.SQL.Add(' order by '+mordemp[CB_ORDEM.itemindex]);

      end;
   try
      Qr_For.SQL.Text:='select abc2.* '
                      +',round( (TOTVLR*100/TOTAL_VALOR),3) as PERC_VALOR '
                      +',round( (TOTQTD*100/TOTAL_QTD),3) as PERC_QTD '
                      +'  from ( '
                      +'select abc.*, '
                      +' sum(TOTVLR) over (partition by 1 ) AS TOTAL_valor '
                      +'  ,sum(TOTQTD) over (partition by 1 ) AS TOTAL_QTD'
                      +' from ( '
                      +Qr_For.SQL.Text
                      +') abc '
                      +') abc2 '
                      ;
      if CB_ORDEM.ItemIndex=1 then
         Qr_for.SQL.add(' Order by GRUPO,NOME ')
      else if CB_ORDEM.ItemIndex=0 then
         Qr_for.SQL.add(' Order by GRUPO,CODIGO ')
      else if CB_ORDEM.ItemIndex=2 then
         begin
         if CB_TIPO.ItemIndex=0 then
            Qr_For.SQL.add(' order by totvlr ')
         else
            Qr_For.SQL.add(' order by totqtd ');
         end
      else if CB_ORDEM.ItemIndex=3 then
         begin
         if CB_TIPO.ItemIndex=0 then
            Qr_For.SQL.add(' order by totvlr desc')
         else
            Qr_For.SQL.add(' order by totqtd desc');
         end;
       Qr_For.Open;
//         Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_vendas4.txt');

     except;
         Qr_For.Sql.SavetoFile('c:\curva_abc_produtos_compras.txt');
       end;
   end;

end;

procedure TFrm_ProABC.CODBCOExit(Sender: TObject);
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

procedure TFrm_ProABC.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'Frm_ProABC',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ProABC.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_ProABC.edt_codlocExit(Sender: TObject);
begin
edt_codloc.Text:=fdeixanum2(edt_codloc.Text);
if Trim(edt_codloc.Text)<>'' then
   begin
   if not fLerGenerico_query('CADLOC','LNOME,LUF,LCODLOC','LCODLOC='+edt_codloc.Text,query_consulta) then
      begin
      fmensagem('Cidade nao Cadastrado!',0,['0'],0);
      edt_codloc.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000', query_consulta.fieldbyname('LCODLOC').AsInteger)
                                    +' - '+query_consulta.FieldByName('LNOME').AsString);
      edt_codloc.text := '';
      edt_codloc.setfocus;
      end;
   end;

end;

procedure TFrm_ProABC.edt_codlocKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codloc.Text:=fChamaLoc(0,'proabc',key);
   key:=#0;
   edt_codlocExit(Self);
   end;

end;

procedure TFrm_ProABC.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);


end;

procedure TFrm_ProABC.edt_codredExit(Sender: TObject);
begin
edt_codred.Text:=fdeixanum2(edt_codred.Text);
if Trim(edt_codred.Text)<>'' then
   begin
   if not fLerGenerico_query('CADRED','RDNOME,RDCODRED','RDCODRED='+edt_codred.Text,query_consulta) then
      begin
      fmensagem('Rede nao Cadastrado!',0,['0'],0);
      edt_codred.SetFocus;
      end
   else
      begin
      lbx_codred.Items.Add(FormatFloat('0000000', query_consulta.fieldbyname('RDCODRED').AsInteger)
                                    +' - '+query_consulta.fieldbyname('RDNOME').asstring);
      edt_codred.text := '';
      edt_codred.setfocus;
      end;

   end;

end;

procedure TFrm_ProABC.edt_codredKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codred.Text:=fChamaRedCli(0,'MedPro02',key);
   key:=#0;
   edt_codredExit(Self);
   end;

end;

procedure TFrm_ProABC.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_ProABC.edt_codram_cliExit(Sender: TObject);
begin
edt_codram_cli.Text:=fdeixanum2(edt_codram_cli.Text);
if Trim(edt_codram_cli.text)<>'' then
   begin
   if not fLerGenerico_query('CADRCLI','RNOME,RCODRAM','RCODRAM='+edt_codram_cli.Text,query_consulta) then
      begin
      fmensagem('Ramo de Cliente  nao Cadastrado!',0,['0'],0);
      edt_codram_cli.SetFocus;
      end
   else
      begin
      lbx_codram_cli.Items.Add(FormatFloat('0000000', query_consulta.fieldbyname('RCODRAM').AsInteger)
                                    +' - '+query_consulta.fieldbyname('RNOME').asstring);
      edt_codram_cli.text := '';
      edt_codram_cli.setfocus;
      end;

   end;

end;

procedure TFrm_ProABC.edt_codram_cliKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codram_cli.Text:=fChamaRamoCli(0,'MedPro02',key);
   key:=#0;
   edt_codram_cliExit(Self);
   end;

end;

procedure TFrm_ProABC.lbx_codram_cliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram_cli.ItemIndex>=0 then
      lbx_codram_cli.Items.Delete(lbx_codram_cli.ItemIndex);

end;

procedure TFrm_ProABC.edt_codregExit(Sender: TObject);
begin
edt_codreg.Text:=fdeixanum2(edt_codreg.Text);
if Trim(edt_codreg.Text)<>'' then
   begin
   if not fLerGenerico_query('CADREGIAO','CR_NOMREG,CR_CODREG','CR_CODREG='+edt_codreg.Text,query_consulta) then
      begin
      fmensagem('Regiao nao Cadastrado!',0,['0'],0);
      edt_codreg.SetFocus;
      end
   else
      begin
      lbx_codreg.Items.Add(FormatFloat('0000000', query_consulta.fieldbyname('CR_CODREG').AsInteger)
                                    +' - '+query_consulta.fieldbyname('CR_NOMREG').asstring);
      edt_codreg.text := '';
      edt_codreg.setfocus;
      end;

   end;


end;

procedure TFrm_ProABC.edt_codregKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codreg.Text:=fChamaRegiao(0,'MedPro02',key);
   key:=#0;
   edt_codregExit(Self);
   end;

end;

procedure TFrm_ProABC.lbx_codregKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codreg.ItemIndex>=0 then
      lbx_codreg.Items.Delete(lbx_codreg.ItemIndex);

end;

end.
