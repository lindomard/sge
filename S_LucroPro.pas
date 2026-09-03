unit S_LucroPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, ToolEdit, ExtCtrls, StdCtrls, ComCtrls, RLReport, DB,
  DBTables,S_SelEmp, s_lerarq_geral, RLXLSFilter, RLPDFFilter, RLFilters,
  RLRichFilter, Buttons, CheckLst;

type
  TFrm_LucroPro = class(TForm)
    PageControl1: TPageControl;
    Ts_Filtros: TTabSheet;
    Ts_Relatorios: TTabSheet;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label1: TLabel;
    lbx_codgru: TListBox;
    CODGRU: TEdit;
    Label2: TLabel;
    OMITIR_GRU: TCheckBox;
    lbx_codram: TListBox;
    CODRAM: TEdit;
    Label3: TLabel;
    OMITIR_RAM: TCheckBox;
    lbx_codcon: TListBox;
    CODCON: TEdit;
    Label4: TLabel;
    OMITIR_CON: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    dtini: TDateEdit;
    dtfim: TDateEdit;
    rg_Status: TRadioGroup;
    cb_emitidos: TCheckBox;
    Label9: TLabel;
    cb_tipodata: TComboBox;
    Label10: TLabel;
    cb_modelo: TComboBox;
    CODTIP: TEdit;
    OMITIR_TIP: TCheckBox;
    lbx_codtip: TListBox;
    RLReport1: TRLReport;
    Tb_LucroPro: TQuery;
    Tb_LucroProCODIGO: TFloatField;
    Tb_LucroProNOME: TStringField;
    Tb_LucroProPRECO1: TFloatField;
    Tb_LucroProPRECO2: TFloatField;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    rlcodigo: TRLLabel;
    RLDBText1: TRLDBText;
    RLNOME: TRLLabel;
    RLVALOR1: TRLLabel;
    RLVALOR2: TRLLabel;
    RLPERC: TRLLabel;
    Src_LucroPro: TDataSource;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    ValPerc: TRLDBText;
    RLBand3: TRLBand;
    totvalor1: TRLLabel;
    totvalor2: TRLLabel;
    totperc: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText6: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel4: TRLLabel;
    modelo: TRLLabel;
    periodo: TRLLabel;
    RLBand4: TRLBand;
    rl_banner: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLQTD: TRLLabel;
    RLDBText8: TRLDBText;
    Tb_LucroProQTD: TFloatField;
    RLTOTVAL1: TRLLabel;
    RLTOTVAL2: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLRichFilter_Word: TRLRichFilter;
    RLPDFFilter_PDF: TRLPDFFilter;
    RLXLSFilter_xls: TRLXLSFilter;
    sbt_expexcel: TSpeedButton;
    bbImp: TBitBtn;
    Tb_LucroProTOTAL_P1: TFloatField;
    Tb_LucroProTOTAL_P2: TFloatField;
    Tb_LucroProPERCENTUAL: TFloatField;
    Label11: TLabel;
    CLBNivel: TCheckListBox;
    rlcab_markup: TRLLabel;
    rlcab_diferenca: TRLLabel;
    rlrod_marckup: TRLLabel;
    rldet_diferenca: TRLDBText;
    rlrod_diferenca: TRLLabel;
    Tb_LucroPromarkup: TFloatField;
    Tb_LucroProdiferenca: TFloatField;
    rldet_markup: TRLDBText;
    tsTiposped: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    TabSheet1: TTabSheet;
    RLReport_industria: TRLReport;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText11: TRLDBText;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel13: TRLLabel;
    ind_modelo: TRLLabel;
    ind_periodo: TRLLabel;
    RLSystemInfo8: TRLSystemInfo;
    RLBand6: TRLBand;
    detind_CODIGO: TRLDBText;
    detind_NOME: TRLDBText;
    detind_PRECO1: TRLDBText;
    detind_PRECO2: TRLDBText;
    detind_QTD: TRLDBText;
    detind_TOTAL_P1: TRLDBText;
    detind_TOTAL_P2: TRLDBText;
    detind_diferenca: TRLDBText;
    detind_markup: TRLDBText;
    RLBand7: TRLBand;
    rodind_QTD: TRLLabel;
    rodind_TOTAL_P2: TRLLabel;
    rodind_markup: TRLLabel;
    rodind_diferenca: TRLLabel;
    RLBand8: TRLBand;
    RLLabel26: TRLLabel;
    detind_PRECO_FABRICA: TRLDBText;
    Tb_LucroProPRECO_FABRICA: TFloatField;
    cabind_CODIGO: TRLMemo;
    cabind_NOME: TRLMemo;
    cabind_QTD: TRLMemo;
    cabind_PRECO1: TRLMemo;
    cabind_TOTAL_P1: TRLMemo;
    cabind_PRECO_FABRICA: TRLMemo;
    cabind_PRECO2: TRLMemo;
    cabind_TOTAL_P2: TRLMemo;
    cabind_markup: TRLMemo;
    cabind_diferenca: TRLMemo;
    cabind_PRECO_COMPOSICAO: TRLMemo;
    cabind_TOTAL_COMPOSICAO: TRLMemo;
    detind_PRECO_COMPOSICAO: TRLDBText;
    rodind_PRECO_COMPOSICAO: TRLLabel;
    rodind_TOTAL_COMPOSICAO: TRLLabel;
    detind_TOTAL_COMPOSICAO: TRLDBText;
    Tb_LucroProPRECO_COMPOSICAO: TFloatField;
    Tb_LucroProTOTAL_COMPOSICAO: TFloatField;
    rodind_NOME: TRLLabel;
    rodind_TOTAL_P1: TRLLabel;
    Tb_LucroProperc_vdaxpcosug: TFloatField;
    Label12: TLabel;
    edt_codcli: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label13: TLabel;
    edt_codven: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    procedure bbimprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_LucroProCalcFields(DataSet: TDataSet);
    procedure sbt_expexcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport_industriaBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     mtotmark: real;

     mtotitens: integer;
     mtotqtde: real;
     mtotpreco01: real;
     mtotpreco02: real;
     mtotpreco_sugerido: real;


     function fAbrirBancoDados: Boolean;

  public
    { Public declarations }
  Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_LucroPro: TFrm_LucroPro;
  Total1, Total2: Real;

implementation

uses S_DM1, Func2, Func, lerarq;

{$R *.dfm}

procedure TFrm_LucroPro.bbimprimirClick(Sender: TObject);
begin
{la_empresas :='';
la_instrucao:='';
la_tabelas  :='';
Total1      :=0;
Total2      :=0;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if (lbx_codgru.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADGRU','GRCODEMP','PDCODEMP','GRCODGRU','PDCODGRU');
  end;

if (lbx_codram.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADRAM','RCODEMP','PDCODEMP','RCODRAM','PDCODRAM');
  end;

if (lbx_codcon.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADCON','CCODEMP','PDCODEMP','CCODCON','PDCODCON');
  end;

if (lbx_codtip.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADTP','TCODEMP','PDCODEMP','TCODTIP','PDCODTIP');
  end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' CREATE OR REPLACE VIEW CUSTOPRO AS                                                           ');
DM1.Query1.SQL.Add(' select p2codpro as Codigo,                                                                   ');
DM1.Query1.SQL.Add('        pdnome as nome,                                                                       ');
DM1.Query1.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
DM1.Query1.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD)),                       ');
DM1.Query1.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,max(P2QTD)*-1,max(P2QTD))) AS QTD,               ');
DM1.Query1.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
DM1.Query1.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PRECO)*-1,max(P2PRECO)),                   ');
DM1.Query1.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PRECO)*-1,sum(P2PRECO))) AS PRECO_VEN,     ');
DM1.Query1.SQL.Add('        max(PDPRECO1) AS PRECO_ATUAL,                                                         ');
DM1.Query1.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
DM1.Query1.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PCOFPG)*-1,max(P2PCOFPG)),                 ');
DM1.Query1.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOFPG)*-1,sum(P2PCOFPG))) AS PRECO_HORA,  ');
DM1.Query1.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
DM1.Query1.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PCOCUS)*-1,max(P2PCOCUS)),                 ');
DM1.Query1.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOCUS)*-1,sum(P2PCOCUS))) AS PCOCUS_HORA, ');
DM1.Query1.SQL.Add('        max(PDPRECOC) AS PCOCUS_ATUAL,                                                        ');
DM1.Query1.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
DM1.Query1.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,max(P2PCOTAB)*-1,max(P2PCOTAB)),                 ');
DM1.Query1.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOTAB)*-1,sum(P2PCOTAB))) AS PCOTAB_HORA, ');
DM1.Query1.SQL.Add('        max(PDPCOFAB) AS PCOTAB_ATUAL                                                         ');
DM1.Query1.SQL.Add(' from cadp01,cadp02, cadpro '+iif(la_tabelas='','',',')+la_tabelas                              );
DM1.Query1.SQL.Add(' where pdcodpro=p2codpro and p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotseq      ');
DM1.Query1.SQL.Add(' and P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_empresas
                  +'      '+iif(la_instrucao='','',' and ')+la_instrucao         );
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and PDCODPRO '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and PDCODGRU '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and PDCODRAM '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and PDCODCON '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and PDCODTIP '+mcinst2);

if rg_Status.ItemIndex=0 then
  begin
  DM1.Query1.SQL.Add(' and p1tipo=0');
  end
else if rg_Status.ItemIndex=1 then
  begin
  DM1.Query1.SQL.Add(' and p1tipo>0');
  end;

if cb_emitidos.Checked then
  begin
  DM1.Query1.SQL.Add(' and P1EMIDOC=1')
  end;

if trim(dtini.Text)<>'/  /' then
  begin
  if cb_tipodata.ItemIndex=0 then
    DM1.Query1.SQL.Add(' and p1datap>='+chr(39)+dtini.Text+chr(39))
  else
    DM1.Query1.SQL.Add(' and p1datanf>='+chr(39)+dtini.Text+chr(39));
  end;
if trim(dtfim.Text)<>'/  /' then
  begin
  if cb_tipodata.ItemIndex=0 then
    DM1.Query1.SQL.Add(' and p1datap<='+chr(39)+dtfim.Text+chr(39))
  else
    DM1.Query1.SQL.Add(' and p1datanf<='+chr(39)+dtfim.Text+chr(39));
  end;
DM1.Query1.SQL.Add(' group by p2chave,p2codpro, pdnome                                                            ');
DM1.Query1.SQL.Add(' order by pdnome                                                                              ');
try
  DM1.Query1.ExecSQL;
Except
  fmensagem('Erro ao executar o comando!',0,['0'],0);
  DM1.Query1.SQL.SaveToFile(mpastatemp +'sql.txt');
  end;


Tb_LucroPro.Close;
Tb_LucroPro.SQL.Clear;
Tb_LucroPro.SQL.Add(' SELECT CODIGO, MAX(NOME) as NOME, SUM(QTD) AS QTD, ');
if cb_modelo.ItemIndex=0 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_VEN)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_HORA)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=1 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_HORA)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_HORA)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=2 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_ATUAL)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_HORA)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=3 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_VEN)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_ATUAL)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=4 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_HORA)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_ATUAL)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=5 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_ATUAL)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_ATUAL)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=6 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_VEN)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_HORA)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=7 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_HORA)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_HORA)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=8 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_ATUAL)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_HORA)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=9 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_VEN)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_ATUAL)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=10 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_HORA)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_ATUAL)/sum(QTD),2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=11 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PRECO_ATUAL)/sum(QTD),2) as Preco1,   ');
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_ATUAL)/sum(QTD),2) as Preco2  ');
  end;
Tb_LucroPro.SQL.Add(' FROM CUSTOPRO                                     ');
Tb_LucroPro.SQL.Add(' GROUP BY CODIGO                                   ');
Tb_LucroPro.Open;                      }

if not fAbrirBancoDados then
   begin
   MessageDlg('Erro ao Abrir banco de Dados!',mtWarning,[mbOk],0);
   exit;
   end;





periodo.Caption:=fperiodo(0,dtini.Text,dtfim.Text);
ind_periodo.Caption:=periodo.Caption;

Case cb_modelo.ItemIndex of
    0  :
      begin
      modelo.Caption            :=' Preco Vendido / Custo Hora da Venda ';
      RLVALOR1.Caption          :='Pco Medio Vendido';
      RLTOTVAL1.Caption         :='Total Vendido';
      RLVALOR2.Caption          :='Preco Custo';
      RLTOTVAL2.Caption         :='Total Custo';

      ind_modelo.Caption        :=' Preco Vendido / Custo Hora da Venda ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Preco Custo';
      cabind_TOTAL_P2.Lines.Text:='Total Custo';

      end;
    1  :
      begin
      modelo.Caption:=' Preco Hora da Venda / Custo Hora da Venda ';
      RLVALOR1.Caption:='Pco Medio Venda';
      RLTOTVAL1.Caption:='Total Venda';
      RLVALOR2.Caption:='Preco Custo';
      RLTOTVAL2.Caption:='Total Custo';

      ind_modelo.Caption        :=' Preco Hora da Venda / Custo Hora da Venda ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Preco Custo';
      cabind_TOTAL_P2.Lines.Text:='Total Custo';


      end;
    2  :
      begin
      modelo.Caption:=' Preco Atual / Custo Hora da Venda ';
      RLVALOR1.Caption:='Preco Atual';
      RLTOTVAL1.Caption:='Total Atual';
      RLVALOR2.Caption:='Preco Custo';
      RLTOTVAL2.Caption:='Total Custo';


      ind_modelo.Caption        :=' Preco Atual / Custo Hora da Venda ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Preco Custo';
      cabind_TOTAL_P2.Lines.Text:='Total Custo';

      end;
    3  :
      begin
      modelo.Caption:=' Preco Vendido / Custo Hora da Atual ';
      RLVALOR1.Caption:='Pco Medio Vendido';
      RLTOTVAL1.Caption:='Total Vendido';
      RLVALOR2.Caption:='Custo Atual';
      RLTOTVAL2.Caption:='Total C.Atual';


      ind_modelo.Caption        :=' Preco Vendido / Custo Hora da Atual ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Preco Custo';
      cabind_TOTAL_P2.Lines.Text:='Total Custo';


      end;

    4  :
      begin
      modelo.Caption:=' Preco Hora da Venda / Custo Hora da Atual ';
      RLVALOR1.Caption:='Pco Medio Venda';
      RLTOTVAL1.Caption:='Total Venda';
      RLVALOR2.Caption:='Custo Atual';
      RLTOTVAL2.Caption:='Total C.Atual';

      ind_modelo.Caption        :=' Preco Hora da Venda / Custo Hora da Atual ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Custo Atual ';
      cabind_TOTAL_P2.Lines.Text:='Total C.Atual';



      end;
    5  :
      begin
      modelo.Caption:=' Preco Atual / Custo Hora da Atual ';
      RLVALOR1.Caption:='Preco Atual';
      RLTOTVAL1.Caption:='Total Atual';
      RLVALOR2.Caption:='Custo Atual';
      RLTOTVAL2.Caption:='Total C.Atual';

      ind_modelo.Caption        :=' Preco Atual / Custo Hora da Atual ';
      cabind_PRECO1.Lines.Text  :='Preco Atual';
      cabind_TOTAL_P1.Lines.Text:='Total Atual';
      cabind_PRECO2.Lines.Text  :='Custo Atual ';
      cabind_TOTAL_P2.Lines.Text:='Total C.Atual';


      end;
    6  :
      begin


      modelo.Caption:=' Preco Vendido / Fabrica Hora da Venda ';
      RLVALOR1.Caption:='Pco Medio Vendido';
      RLTOTVAL1.Caption:='Total Vendido';
      RLVALOR2.Caption:='Preco Fabrica';
      RLTOTVAL2.Caption:='Total Fabrica';

      ind_modelo.Caption        :=' Preco Vendido / Fabrica Hora da Venda ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Preço Fabrica';
      cabind_TOTAL_P2.Lines.Text:='Total Fabrica';


      end;
    7  :
      begin
      modelo.Caption:=' Preco Hora da Venda / Fabrica Hora da Venda ';
      RLVALOR1.Caption:='Pco Medio Venda';
      RLTOTVAL1.Caption:='Total Venda';
      RLVALOR2.Caption:='Preco Fabrica';
      RLTOTVAL2.Caption:='Total Fabrica';


      ind_modelo.Caption        :=' Preco Vendido / Fabrica Hora da Venda ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Venda';
      cabind_PRECO2.Lines.Text  :='Preço Fabrica';
      cabind_TOTAL_P2.Lines.Text:='Total Fabrica';

      end;
    8  :
      begin


      modelo.Caption:=' Preco Atual / Fabrica Hora da Venda ';
      RLVALOR1.Caption:='Preco Atual';
      RLTOTVAL1.Caption:='Total Atual';
      RLVALOR2.Caption:='Preco Fabrica';
      RLTOTVAL2.Caption:='Total Fabrica';


      ind_modelo.Caption        :=' Preco Vendido / Fabrica Hora da Venda ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Preço Fabrica';
      cabind_TOTAL_P2.Lines.Text:='Total Fabrica';

      end;
    9  :
      begin
      modelo.Caption:=' Preco Vendido / Fabrica Hora da Atual ';
      RLVALOR1.Caption:='Pco Medio Vendido';
      RLTOTVAL1.Caption:='Total Vendido';
      RLVALOR2.Caption:='Fabrica Atual';
      RLTOTVAL2.Caption:='Total F.Atual';

      ind_modelo.Caption        :=' Preco Vendido / Fabrica Hora Atual ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Fabrica Atual';
      cabind_TOTAL_P2.Lines.Text:='Total F.Atual';

      end;
    10 :
      begin
      modelo.Caption:=' Preco Hora da Venda / Fabrica Hora da Atual ';
      RLVALOR1.Caption:='Pco Medio Venda';
      RLTOTVAL1.Caption:='Total Venda';
      RLVALOR2.Caption:='Fabrica Atual';
      RLTOTVAL2.Caption:='Total F.Atual';


      ind_modelo.Caption        :=' Preco Hora da Venda / Fabrica Hora da Atual ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Vendido';
      cabind_TOTAL_P1.Lines.Text:='Total Vendido';
      cabind_PRECO2.Lines.Text  :='Fabrica Atual';
      cabind_TOTAL_P2.Lines.Text:='Total F.Atual';

      end;
    11 :
      begin
      modelo.Caption:=' Preco Atual / Fabrica Hora da Atual ';
      RLVALOR1.Caption:='Pco Medio Atual';
      RLTOTVAL1.Caption:='Total Atual';
      RLVALOR2.Caption:='Fabrica Atual';
      RLTOTVAL2.Caption:='Total F.Atual';



      ind_modelo.Caption        :=' Preco Atual / Fabrica Hora da Atual ';
      cabind_PRECO1.Lines.Text  :='Pco Medio Atual';
      cabind_TOTAL_P1.Lines.Text:='Total Atual';
      cabind_PRECO2.Lines.Text  :='Fabrica Atual';
      cabind_TOTAL_P2.Lines.Text:='Total F.Atual';

      end;
  else
    modelo.Caption:='Indefinido!';
  end;

if Tb_LucroPro.RecordCount > 0 then
  begin
  if DM1.Tb_PargerPINDUSTRIA.AsInteger<0 then
     RLReport1.PreviewModal
  else
     RLReport_industria.PreviewModal;
  end
else
  begin
  fmensagem('Não existe registro a ser impresso!',0,['0'],0);
  Exit;
  end;
end;


function TFrm_LucroPro.fAbrirBancoDados: Boolean;
var
mdatapesq: String;
begin

la_empresas :='';
la_instrucao:='';
la_tabelas  :='';
Total1      :=0;
Total2      :=0;

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if (lbx_codgru.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADGRU','GRCODEMP','PDCODEMP','GRCODGRU','PDCODGRU');
  end;

if (lbx_codram.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADRAM','RCODEMP','PDCODEMP','RCODRAM','PDCODRAM');
  end;

if (lbx_codcon.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADCON','CCODEMP','PDCODEMP','CCODCON','PDCODCON');
  end;



if (lbx_codtip.Items.Count>0) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(0,'CADTP','TCODEMP','PDCODEMP','TCODTIP','PDCODTIP');
  end;

Tb_LucroPro.SQL.Clear;
Tb_LucroPro.SQL.Add(' select tab01.* '
                  +' ,( round( (TOTAL_VENDA/QTD) ,2) ) AS PRECO1 '
                  +' , TOTAL_VENDA  AS TOTAL_P1 '
                  +' ,(QTD*PRECO2) AS TOTAL_P2 '
                  +' ,round( ((((TOTAL_VENDA))-(QTD*PRECO2)) *100) / case when ( (TOTAL_VENDA) )=0 then 1 else  (TOTAL_VENDA) end ,2) AS percentual '
                  +' ,100- ( round( (((TOTAL_VENDA)-(QTD*PRECO2)) *100) / case when (TOTAL_VENDA)=0 then 1 else  (TOTAL_VENDA) end ,2)) diferenca '


                  +'  from '
                  +' ( ' );


Tb_LucroPro.SQL.Add(' SELECT CODIGO, MAX(NOME) as NOME, MAX(markup) as markup,SUM(QTD) AS QTD, sum(TOTDES) as TOTDES, sum(PRECO_VENDA) as TOTAL_VENDA,');
if cb_modelo.ItemIndex=0 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_HORA)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=1 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_HORA)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=2 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_HORA)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=3 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_ATUAL)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=4 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_ATUAL)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=5 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOCUS_ATUAL)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=6 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_HORA)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=7 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_HORA)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=8 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_HORA)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=9 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_ATUAL)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=10 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_ATUAL)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end
else if cb_modelo.ItemIndex=11 then
  begin
  Tb_LucroPro.SQL.Add(' round(SUM(QTD*PCOTAB_ATUAL)/case when sum(QTD)=0 then 1 else sum(qtd) end,2) as Preco2  ');
  end;
Tb_LucroPro.SQL.Add(' FROM (                                   ');

Tb_LucroPro.SQL.Add(' select p2codpro as Codigo,                                                                   ');
Tb_LucroPro.SQL.Add('        pdnome as nome,                                                                       ');
Tb_LucroPro.SQL.Add('       ((MAX(PDPRECO1)-NVL(MAX(PDPRECOC),0))*100)  /  ');
Tb_LucroPro.SQL.Add('         MAX( case when NVL(PDPRECOC,0)=0 THEN 1 ELSE PDPRECOC END) as markup, ');
Tb_LucroPro.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
Tb_LucroPro.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD)),                       ');
Tb_LucroPro.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD))) AS QTD,               ');
Tb_LucroPro.SQL.Add('       sum(P2TOTDES) as TOTDES,  ');





Tb_LucroPro.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
Tb_LucroPro.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2TOTLIQ)*-1,sum(P2TOTLIQ)),                   ');
Tb_LucroPro.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2TOTLIQ)*-1,sum(P2TOTLIQ))) AS PRECO_VENDA,     ');


Tb_LucroPro.SQL.Add('        max(PDPRECO1) AS PRECO_ATUAL,                                                         ');
Tb_LucroPro.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
Tb_LucroPro.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOFPG)*-1,sum(P2PCOFPG)),                 ');
Tb_LucroPro.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOFPG)*-1,sum(P2PCOFPG))) AS PRECO_HORA,  ');
Tb_LucroPro.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
Tb_LucroPro.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOCUS)*-1,sum(P2PCOCUS)),                 ');
Tb_LucroPro.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOCUS)*-1,sum(P2PCOCUS))) AS PCOCUS_HORA, ');
Tb_LucroPro.SQL.Add('        max(PDPRECOC) AS PCOCUS_ATUAL,                                                        ');
Tb_LucroPro.SQL.Add('        DECODE(max(P1FORMACE),                                                                ');
Tb_LucroPro.SQL.Add('               0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOTAB)*-1,sum(P2PCOTAB)),                 ');
Tb_LucroPro.SQL.Add('               1,DECODE(max(P1TIPO_ENTSAI),1,sum(P2PCOTAB)*-1,sum(P2PCOTAB))) AS PCOTAB_HORA, ');
Tb_LucroPro.SQL.Add('        max(PDPCOFAB) AS PCOTAB_ATUAL                                                         ');
Tb_LucroPro.SQL.Add(' from cadp01,cadp02, cadpro '+iif(la_tabelas='','',',')+la_tabelas                              );
Tb_LucroPro.SQL.Add(' where pdcodpro=p2codpro and p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotseq      ');
Tb_LucroPro.SQL.Add(' and P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_empresas
                  +'      '+iif(la_instrucao='','',' and ')+la_instrucao         );

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Tb_LucroPro.SQL.Add(' and  P1TIPO '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
  Tb_LucroPro.SQL.Add(' and PDCODPRO '+mcinst2);
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   Tb_LucroPro.SQL.Add(' and PDNIVEL '+mcinst2);;

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
  Tb_LucroPro.SQL.Add(' and PDCODGRU '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
  Tb_LucroPro.SQL.Add(' and PDCODRAM '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
  Tb_LucroPro.SQL.Add(' and PDCODCON '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
if trim(mcinst2)<>'' then
  Tb_LucroPro.SQL.Add(' and PDCODTIP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
  Tb_LucroPro.SQL.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
  Tb_LucroPro.SQL.Add(' and P1CODVEN '+mcinst2);


if rg_Status.ItemIndex=0 then
  begin
  Tb_LucroPro.SQL.Add(' and p1tipo=0');
  end
else if rg_Status.ItemIndex=1 then
  begin
  Tb_LucroPro.SQL.Add(' and p1tipo>0');
  end;

if cb_emitidos.Checked then
  begin
  Tb_LucroPro.SQL.Add(' and P1EMIDOC=1')
  end;
if cb_tipodata.ItemIndex=1 then
   mdatapesq:='P1DATDOC'
else
   mdatapesq:='P1DATAP';




if trim(dtini.Text)<>'/  /' then
  begin
  Tb_LucroPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(dtini.text)));
  end;
if trim(dtfim.Text)<>'/  /' then
  begin
  Tb_LucroPro.SQL.Add(fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(dtfim.text)));
  end;
Tb_LucroPro.SQL.Add(' group by p2chave,p2codpro, pdnome  ');
Tb_LucroPro.SQL.Add('                 )');
Tb_LucroPro.SQL.Add(' GROUP BY CODIGO                                   ');

Tb_LucroPro.SQL.Add(' ) tab01 '
                   +' order by nome ' );


if DM1.Tb_PargerPINDUSTRIA.AsInteger<0 then
   begin
   Tb_LucroPro.SQL.Text:=' select tab10.*, 0 as  PRECO_FABRICA'
                   +', 0 AS PRECO_COMPOSICAO '
                   +', 0 AS TOTAL_COMPOSICAO'
                   +' from ('
                   +tb_Lucropro.SQL.text
                   +' ) tab10 order by NOME ';
   end
else
   begin
   Tb_LucroPro.SQL.Text:='select tab11.*,  CASE WHEN PRECO_COMPOSICAO<>0 AND PRECO1<>0 THEN  ROUND(  ((PRECO_COMPOSICAO-PRECO1)*100/PRECO_COMPOSICAO),2)*-1  ELSE 0 END AS perc_vdaxpcosug  from ('
                      +' select tab10.*, PDPCOFAB as PRECO_FABRICA'
                     +', ROUND(  fBuscarCustoProduto('+QuotedStr('N')+',CODIGO ),3)  AS PRECO_COMPOSICAO '
                   +', ROUND(  (ROUND(  fBuscarCustoProduto('+QuotedStr('N')+',CODIGO ),3)*QTD) ,2) AS TOTAL_COMPOSICAO'
                   +' from ('
                   +tb_Lucropro.SQL.text
                   +' ) tab10,cadpro where PDCODPRO=CODIGO) tab11 order by NOME ';
   end;




//Tb_LucroPro.SQL.SaveToFile(mpastatemp +'sql.txt');

try
  Tb_LucroPro.Open;
  result:=true;
except
  Tb_LucroPro.SQL.SaveToFile(mpastatemp +'sql.txt');
  result:=false;
  end;

end;

procedure TFrm_LucroPro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LucroPro.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
  begin
  if not flcadpro(1,0,0,CODPRO.Text) then
    begin
    fmensagem('Produto nao Cadastrado!',0,['0'],0);
    CODPRO.SetFocus;
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

procedure TFrm_LucroPro.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODPRO.Text:=fChamaPro(0,'LucroPro',key);
  key:=#0;
  CODPROExit(Self);
  end;
end;

procedure TFrm_LucroPro.CODPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LucroPro.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
  begin
  if not flcadGPro(1,0,CODGRU.Text) then
    begin
    fmensagem('Grupo não Cadastrado!',0,['0'],0);
    CODGRU.SetFocus;
    end
  else
    begin
    lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.ASSTRING))
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
    CODGRU.text := '';
    CODGRU.setfocus;
    end;
  end;
end;

procedure TFrm_LucroPro.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODGRU.Text:=fChamaGPro(0,'LucroPro',key);
  key:=#0;
  CODGRUExit(Self);
  end;
end;

procedure TFrm_LucroPro.CODGRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
CODGRU.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LucroPro.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if Trim(CODRAM.Text)<>'' then
  begin
  if not flcadram(1,0,CODRAM.Text) then
    begin
    fmensagem('Ramo não Cadastrado!',0,['0'],0);
    CODRAM.SetFocus;
    end
  else
    begin
    lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_RamRCODRAM.ASSTRING))
                                    +' - '+DM1.Tb_RamRNOME.AsString);
    CODRAM.text := '';
    CODRAM.setfocus;
    end;
  end;
end;

procedure TFrm_LucroPro.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODRAM.Text:=fChamaRamPro(0,'LucroPro',key);
  key:=#0;
  CODRAMExit(Self);
  end;
end;

procedure TFrm_LucroPro.CODRAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
CODRAM.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LucroPro.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
  exit;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
  begin
  lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
  codcon.text := '';
  end
else
  begin
  fmensagem('Controle não Cadastrado!',0,['0'],0);
  CODCON.SetFocus;
  end;
end;

procedure TFrm_LucroPro.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODCON.Text:=fChamaTCon(0,'LucroPro',key);
  if valfloat(CODCON.Text)<>0 then
    CODCONExit(self);
  CODCON.text := '';
  key:=#0;
  end;
end;

procedure TFrm_LucroPro.CODCONMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CODCON.Hint := 'Informe Codigo do Controle ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LucroPro.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if ValFloat(CODTIP.Text)<=0 then
   exit;
if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   BEGIN
   lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   codtip.text := '';
   END
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_LucroPro.CODTIPKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_LucroPro.CODTIPMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
CODTIP.Hint := 'Informe Codigo do Tipo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_LucroPro.FormCreate(Sender: TObject);
var
x: Integer;
begin
     mtotmark :=0;
     mtotitens:=0;



RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[0] := TRUE;


dtini.text:='01/'+FormatDatetime('mm/yyyy',date);

PageControl1.ActivePageIndex:=0;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Tb_LucroProPRECO_FABRICA.DisplayFormat    :=mcasaspu;
Tb_LucroProPRECO_COMPOSICAO.DisplayFormat :=mcasaspu;
Tb_LucroProTOTAL_COMPOSICAO.DisplayFormat :=mcasaspu;
Tb_LucroProPRECO_FABRICA.DisplayFormat    :=mcasaspu;
Ts_Relatorios.TabVisible:=False;
Tb_LucroProPRECO1.DisplayFormat:=mcasaspu;
Tb_LucroProPRECO2.DisplayFormat:=mcasaspu;
Tb_LucroProTOTAL_P1.DisplayFormat:=mcasaspu;
Tb_LucroProTOTAL_P2.DisplayFormat:=mcasaspu;
Tb_LucroProPERCENTUAL.DisplayFormat:=mcasaspu;
Tb_LucroPromarkup.DisplayFormat:=mcasaspu;
Tb_LucroProdiferenca.DisplayFormat:=mcasaspu;


end;

procedure TFrm_LucroPro.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codpro.ItemIndex>=0 then
    lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);
end;

procedure TFrm_LucroPro.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codgru.ItemIndex>=0 then
    lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);
end;

procedure TFrm_LucroPro.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codram.ItemIndex>=0 then
    lbx_codram.Items.Delete(lbx_codram.ItemIndex);
end;

procedure TFrm_LucroPro.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codcon.ItemIndex>=0 then
    lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);
end;

procedure TFrm_LucroPro.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codtip.ItemIndex>=0 then
    lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);
end;

procedure TFrm_LucroPro.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
Total1:=Total1+Tb_LucroProTOTAL_P1.AsFloat;
Total2:=Total2+Tb_LucroProTOTAL_P2.AsFloat;


     mtotmark :=mtotmark+Tb_LucroPromarkup.asfloat;
     mtotitens:=mtotitens+1;


end;

procedure TFrm_LucroPro.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
Begin
totvalor1.Caption:=FormatFloat(mcasaspu,Total1);
totvalor2.Caption:=FormatFloat(mcasaspu,Total2);
totperc.Caption:=FormatFloat(mcasaspu,100-(Total2/Total1*100));

rlrod_marckup.Caption:=Formatfloat(mcasaspu, mtotmark/mtotitens);

totperc.Caption:=FormatFloat(mcasaspu,100-(Total2/Total1*100));

rlrod_diferenca.Caption:=Formatfloat(mcasaspu, (Total2/Total1*100));


     mtotmark :=0;
     mtotitens:=0;


end;

procedure TFrm_LucroPro.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_banner.Caption:=pBanner_Intersys;
end;

procedure TFrm_LucroPro.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_LucroPro.Tb_LucroProCalcFields(DataSet: TDataSet);
begin
//Tb_LucroProTOTAL_P1.AsFloat:=Tb_LucroProQTD.AsFloat*Tb_LucroProPRECO1.AsFloat;
//Tb_LucroProTOTAL_P2.AsFloat:=Tb_LucroProQTD.AsFloat*Tb_LucroProPRECO2.AsFloat;
end;

procedure TFrm_LucroPro.sbt_expexcelClick(Sender: TObject);
var
Campos: Array of string;
begin
if not fAbrirBancoDados then
   begin
   MessageDlg('Erro ao Abrir banco de Dados!',mtWarning,[mbOk],0);
   exit;
   end;



SetLength(Campos,08);
Campos[00]:='CODIGO';
Campos[01]:='NOME';
Campos[02]:='QTD';
Campos[03]:='PRECO1';
Campos[04]:='TOTAL_P1';
Campos[05]:='PRECO2';
Campos[06]:='TOTAL_P2';
Campos[07]:='Percentual';


fGerarPlanilhaExcel(Campos,Src_LucroPro);

end;

procedure TFrm_LucroPro.FormShow(Sender: TObject);
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

end;

procedure TFrm_LucroPro.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_LucroPro.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_LucroPro.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     mtotmark :=0;
     mtotitens:=0;

end;

procedure TFrm_LucroPro.RLReport_industriaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     mtotitens         :=0;
     mtotqtde          :=0;
     mtotpreco01       :=0;
     mtotpreco02       :=0;
     mtotpreco_sugerido:=0;

end;

procedure TFrm_LucroPro.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


rodind_NOME.Caption    :='Totais...['+floattostr(mtotitens)+']';
rodind_QTD.Caption     :=floattostr(mtotqtde);
rodind_TOTAL_P1.Caption     :=floattostr(mtotpreco01);

rodind_TOTAL_P2.Caption     :=floattostr(mtotpreco02);

rodind_TOTAL_COMPOSICAO.Caption     :=floattostr(mtotpreco_sugerido);

rodind_markup.caption := floattostr(
((mtotpreco01-mtotpreco02)*100) / mtotpreco01);




     mtotitens         :=0;
     mtotqtde          :=0;
     mtotpreco01       :=0;
     mtotpreco02       :=0;
     mtotpreco_sugerido:=0;


end;

procedure TFrm_LucroPro.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

     mtotitens         :=mtotitens+1;
     mtotqtde          :=mtotqtde+Tb_LucroProQTD.AsFloat;
     mtotpreco01       :=mtotpreco01+Tb_LucroProTOTAL_P1.AsFloat;
     mtotpreco02       :=mtotpreco02+Tb_LucroProTOTAL_P2.AsFloat;
     mtotpreco_sugerido:=mtotpreco_sugerido+Tb_LucroProTOTAL_COMPOSICAO.AsFloat;

end;

procedure TFrm_LucroPro.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if ValFloat(edt_codcli.Text)<=0 then
   exit;
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',trim(edt_codcli.Text)) then
   BEGIN
   lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(edt_codcli.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   edt_codcli.text := '';
   END
else
   begin
   fmensagem('Cliente Produto não Cadastrado!',0,['0'],0);
   edt_codcli.SetFocus;
   end;

end;

procedure TFrm_LucroPro.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum2(edt_codven.Text);
if ValFloat(edt_codven.Text)<=0 then
   exit;
if flqr1('VNOME','T','CADVEN','N','VCODVEN',trim(edt_codven.Text)) then
   BEGIN
   lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(edt_codven.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
   edt_codven.text := '';
   END
else
   begin
   fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
   edt_codven.SetFocus;
   end;

end;

procedure TFrm_LucroPro.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'frm_medtpro',key);
   if valfloat(edt_codcli.Text)<>0 then
      edt_codcliExit(self);
   edt_codcli.text := '';
   key:=#0;
   end;

end;

procedure TFrm_LucroPro.edt_codvenKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codven.Text:=fChamaven(0,'frm_medtpro',key);
   if valfloat(edt_codven.Text)<>0 then
      edt_codvenExit(self);
   edt_codven.text := '';
   key:=#0;
   end;

end;

procedure TFrm_LucroPro.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codcli.ItemIndex>=0 then
    lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_LucroPro.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
  if lbx_codven.ItemIndex>=0 then
    lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

end.
