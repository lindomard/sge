unit S_EmitirNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB, S_SelEmp,
  DBTables,S_DM1,func,lerarq, ComCtrls,func2,S_Tra,S_InfPed,S_Ven,S_LucroPed,func_excecoes;

type
  TFrm_EmitirNF = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Src_Ped: TDataSource;
    Tb_Ped: TQuery;
    Tb_PedP1CODEMP: TFloatField;
    Tb_PedP1CHAVE: TFloatField;
    Tb_PedP1ORDEM: TFloatField;
    Tb_PedP1DATAP: TDateTimeField;
    Tb_PedP1TIPO: TFloatField;
    Tb_PedP1DATDOC: TDateTimeField;
    Tb_PedP1CODCLI: TFloatField;
    Tb_PedP1CODVEN: TFloatField;
    Tb_PedP1ORIGEM: TFloatField;
    Tb_PedP1CODTRA: TFloatField;
    Tb_PedP1DATANF: TDateTimeField;
    Tb_PedP1NUMNF: TFloatField;
    Tb_PedP1STATUS: TFloatField;
    Tb_PedP1TOTALB: TFloatField;
    Tb_PedP1TOTALL: TFloatField;
    Tb_PedP1CODUSR: TFloatField;
    Tb_PedP1HORADIG: TStringField;
    Tb_PedP1DTMOD: TDateTimeField;
    Tb_PedP1HRMOD: TStringField;
    Tb_PedP1USRMOD: TFloatField;
    Tb_PedP1CONF: TStringField;
    Tb_PedP1CODCON: TFloatField;
    Tb_PedP1DATCON: TDateTimeField;
    Tb_PedP1HORCON: TStringField;
    Tb_PedP1EMIDOC: TFloatField;
    Tb_PedP1TIPENT: TFloatField;
    Tb_PedP1PREVENT: TDateTimeField;
    Tb_PedP1HPREVENT: TStringField;
    Tb_PedP1CODENT: TFloatField;
    Tb_PedP1DATENT: TDateTimeField;
    Tb_PedP1HORENT: TStringField;
    Tb_PedP1CUPOM: TFloatField;
    Tb_PedP1TOTDES: TFloatField;
    Tb_PedP1QTDVOL: TFloatField;
    Tb_PedP1PESOL: TFloatField;
    Tb_PedP1PESOB: TFloatField;
    Tb_PedP1BANCO: TFloatField;
    Tb_PedP1CODTLV: TFloatField;
    Tb_PedP1ETIVOL: TFloatField;
    Tb_PedP1NUMCF: TFloatField;
    Tb_PedP1CODECF: TFloatField;
    Tb_PedP1DATACF: TDateTimeField;
    Tb_PedP1CODSEP: TFloatField;
    Tb_PedP1DATASEP: TDateTimeField;
    Tb_PedP1HORSEP: TStringField;
    Tb_PedP1CODEMB: TFloatField;
    Tb_PedP1DATAEMB: TDateTimeField;
    Tb_PedP1HOREMB: TStringField;
    Tb_PedP1ACRECONV: TFloatField;
    Tb_PedP1ACREGER: TFloatField;
    Tb_PedP1PACRECONV: TFloatField;
    Tb_PedP1PACREGER: TFloatField;
    Tb_PedCRAZAO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit15: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Tb_PedP1ESPECIE: TStringField;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit29: TDBEdit;
    Tb_PedP1MINUTA: TFloatField;
    DBCheckBox2: TDBCheckBox;
    Tb_Pednomdig: TStringField;
    Tb_Pednomalt: TStringField;
    Tb_Pednomsep: TStringField;
    Tb_Pednomcon: TStringField;
    Tb_Pednomemb: TStringField;
    Tb_Peddatalt: TStringField;
    Tb_Peddatsep: TStringField;
    Tb_Peddatcon: TStringField;
    Tb_Peddatemb: TStringField;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Tb_Pednomtra: TStringField;
    DBEdit35: TDBEdit;
    Tb_Peddatanf: TStringField;
    Tb_Peddatacf: TStringField;
    Tb_Pedemitiuls: TIntegerField;
    Tb_Peddatpent: TStringField;
    Tb_Peddatent: TStringField;
    Tb_Pedtipo: TStringField;
    Tb_Peddatdoc: TStringField;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Tb_Pednomven: TStringField;
    Tb_PedP1FORMACE: TFloatField;
    Tab_Mer: TTabSheet;
    Tb_Ped02: TQuery;
    Tb_Ped02P2CODEMP: TFloatField;
    Tb_Ped02P2CHAVE: TFloatField;
    Tb_Ped02P2ORDEM: TFloatField;
    Tb_Ped02P2ITEM: TFloatField;
    Tb_Ped02P2CODPRO: TFloatField;
    Tb_Ped02P2QTD: TFloatField;
    Tb_Ped02P2LOTE: TStringField;
    Tb_Ped02P2DTVCTO: TDateTimeField;
    Tb_Ped02P2DESC1: TFloatField;
    Tb_Ped02P2DESC2: TFloatField;
    Tb_Ped02P2VALDES: TFloatField;
    Tb_Ped02P2PRECO: TFloatField;
    Tb_Ped02P2SIT: TStringField;
    Tb_Ped02P2BASEN: TFloatField;
    Tb_Ped02P2ICMSN: TFloatField;
    Tb_Ped02P2BASER: TFloatField;
    Tb_Ped02P2ICMSR: TFloatField;
    Tb_Ped02P2LISTA: TFloatField;
    Tb_Ped02P2TOTDES: TFloatField;
    Tb_Ped02P2ALIQ: TFloatField;
    Tb_Ped02P2VCOMIS: TFloatField;
    Tb_Ped02P2CFO: TFloatField;
    Tb_Ped02P2TOTLIQ: TFloatField;
    Tb_Ped02P2ACRECONV: TFloatField;
    Tb_Ped02P2ACREGER: TFloatField;
    Tb_Ped02dtvcto: TStringField;
    Src_Ped02: TDataSource;
    Tb_PedP1LOTSEQ: TFloatField;
    Tb_Ped02PDNOME: TStringField;
    Tb_Ped02PDMARCA: TStringField;
    Tb_Ped02PDUND: TStringField;
    DBGrid2: TDBGrid;
    Tb_Pedvalpag: TFloatField;
    Tb_Peddesc: TFloatField;
    Tb_Pedjuros: TFloatField;
    Tb_Pedapagar: TFloatField;
    Tab_Ser: TTabSheet;
    Tb_Ped02S: TQuery;
    DBGrid3: TDBGrid;
    Tb_Ped02SP2SCODEMP: TFloatField;
    Tb_Ped02SP2SCHAVE: TFloatField;
    Tb_Ped02SP2SORDEM: TFloatField;
    Tb_Ped02SP2SITEM: TFloatField;
    Tb_Ped02SP2SCODPRO: TFloatField;
    Tb_Ped02SP2SQTD: TFloatField;
    Tb_Ped02SP2SDESC1: TFloatField;
    Tb_Ped02SP2SDESC2: TFloatField;
    Tb_Ped02SP2SVALDES: TFloatField;
    Tb_Ped02SP2SPRECO: TFloatField;
    Tb_Ped02SP2SSIT: TStringField;
    Tb_Ped02SP2SBCISSQN: TFloatField;
    Tb_Ped02SP2SVISSQN: TFloatField;
    Tb_Ped02SP2SLISTA: TFloatField;
    Tb_Ped02SP2STOTDES: TFloatField;
    Tb_Ped02SP2SALIQ: TFloatField;
    Tb_Ped02SP2SVCOMIS: TFloatField;
    Tb_Ped02SP2SCFO: TFloatField;
    Tb_Ped02SPDNOME: TStringField;
    Tb_Ped02SPDMARCA: TStringField;
    Tb_Ped02SPDUND: TStringField;
    Tb_Ped02Stotal: TFloatField;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Src_Ped02S: TDataSource;
    PageControl2: TPageControl;
    ts_filtros: TTabSheet;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    ts_outros: TTabSheet;
    chavedopedido: TLabel;
    CHAVEI: TEdit;
    Label35: TLabel;
    PROCESSO: TEdit;
    Label34: TLabel;
    OBS1: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    Panel1: TPanel;
    bbAtualizar: TBitBtn;
    lbl_lotseq: TLabel;
    MLOTSEQ: TEdit;
    Label39: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    obs_lotseq: TLabel;
    U_Ped: TUpdateSQL;
    Tb_PedOK: TStringField;
    bbCusMer: TBitBtn;
    Tb_Pedrazsoc: TStringField;
    ts_conhecimento: TTabSheet;
    dbg_conhec: TDBGrid;
    Tb_Ped02P2LOTSEQ: TFloatField;
    Tb_Ped02SP2SLOTSEQ: TFloatField;
    Tb_Ped02P2QTD_ENTREGUE: TFloatField;
    Tb_Ped02P2QTD_ENTREGANDO: TFloatField;
    Tb_Ped02P2QTDDEV: TFloatField;
    sb_VendasVend: TSpeedButton;
    CHAVEF: TEdit;
    Label4: TLabel;
    Tb_PedP1BLOQPEND: TFloatField;
    Tb_PedP1CODBLOQ: TStringField;
    Tb_PedP1CODBLOQ_LIB: TStringField;
    Tb_PedP1EMITENTE: TStringField;
    Label40: TLabel;
    TipoPed: TEdit;
    sgTipoPed: TSpeedButton;
    NomTipoPed: TEdit;
    Label38: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    Tb_PedP1OBS1: TMemoField;
    Tb_PedP1OBS2: TMemoField;
    Tb_PedP1OBS3: TMemoField;
    Tb_PedP1ID_NEW: TFloatField;
    Tb_Ped02SP2SID_NEW: TFloatField;
    Tb_Ped02SP2SID_PED01_NEW: TFloatField;
    Tb_Ped02P2ID_NEW: TFloatField;
    Tb_Ped02P2ID_PED01_NEW: TFloatField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_PedCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure Src_PedDataChange(Sender: TObject; Field: TField);
    procedure Tb_Ped02CalcFields(DataSet: TDataSet);
    procedure Tb_Ped02SCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure MLOTSEQExit(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure TipoPedExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure sgTipoPedClick(Sender: TObject);
    procedure bbCusMerClick(Sender: TObject);
    procedure sb_VendasVendClick(Sender: TObject);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fPedcliLerCorpo(ptipo: Integer): Boolean;


    function fValidarCheckout: boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_EmitirNF: TFrm_EmitirNF;
  ori_pedcli: String='';
  plocemp_pcli: Integer=0;

implementation

uses S_DM4, S_DM6, S_Vend_Venda, S_ManNF, S_PVO, S_GerarDuplic;

{$R *.dfm}

procedure TFrm_EmitirNF.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_EmitirNF.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_EmitirNF.bbAtualizarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      MessageDlg('Data Final Maior que Inicial. Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

Tb_ped.close;
Tb_ped.SQL.Clear;
Tb_Ped.SQL.add('Select '+chr(39)+'P'+chr(39)+' AS OK,'
              +'           P1CODEMP,'
              +'           P1CHAVE, P1LOTSEQ, max(P1ORDEM) as  P1ORDEM,'
              +'           max(P1DATAP) AS P1DATAP, max(P1DATDOC) as P1DATDOC, max(P1CODCLI) as  P1CODCLI, '
              +'           max(P1CODVEN) AS P1CODVEN, max(P1ORIGEM) as  P1ORIGEM, max(P1CODTRA) as P1CODTRA,'
              +'           max(P1DATANF) P1DATANF,max(P1NUMNF) as P1NUMNF, max(P1STATUS) as P1STATUS,'
              +'           max(P1TIPO) as P1TIPO, max(P1CODUSR) AS P1CODUSR, max(P1HORADIG) as P1HORADIG, '
              +'           max(P1DTMOD) AS P1DTMOD,max(P1HRMOD) as  P1HRMOD, '
              +'           max(P1USRMOD) as  P1USRMOD, max(P1CONF) as P1CONF,max(P1CODCON) as P1CODCON,'
              +'           max(P1DATCON) as P1DATCON, MAX(P1HORCON) as P1HORCON, max(P1EMIDOC) as  P1EMIDOC, '
              +'           max(P1TIPENT) as P1TIPENT,max(P1PREVENT) as P1PREVENT,max(P1HPREVENT) AS P1HPREVENT, '
              +'           max(P1CODENT) AS P1CODENT,max(P1DATENT) AS P1DATENT,max(P1HORENT) as P1HORENT, '
              +'           max(P1CUPOM) AS P1CUPOM, '
              +'           max(P1BANCO) AS P1BANCO, max(P1CODTLV) AS  P1CODTLV, max(P1ETIVOL) as P1ETIVOL,'
              +'           max(P1NUMCF) AS P1NUMCF, max(P1CODECF) AS  P1CODECF, max(P1DATACF) as P1DATACF, '
              +'           max(P1CODSEP) AS P1CODSEP, max(P1DATASEP) as  P1DATASEP, max(P1HORSEP) as P1HORSEP, '
              +'           max(P1CODEMB) AS P1CODEMB, max(P1DATAEMB) as P1DATAEMB, max(P1HOREMB) AS P1HOREMB, '
              +'           max(P1ESPECIE) as  P1ESPECIE,max(P1MINUTA) as P1MINUTA,'
              +'           max(P1FORMACE) as P1FORMACE,max(P1OBS1) as P1OBS1,max(P1OBS2) as P1OBS2,'
              +'           max(P1OBS3) as P1OBS3, '
              +'           max(P1QTDVOL) as P1QTDVOL, max(P1PESOL) as P1PESOL,'
              +'           max(P1PESOB) as P1PESOB,'
              +'           max(P1BLOQPEND) AS P1BLOQPEND,'
              +'           max(P1CODBLOQ) AS P1CODBLOQ,'
              +'           max(P1CODBLOQ_LIB) AS P1CODBLOQ_LIB, '
              +'           sum(P1TOTALB) as P1TOTALB, sum(P1TOTALL) as P1TOTALL,sum(P1TOTDES) as P1TOTDES, '
              +'           sum(P1ACRECONV) as P1ACRECONV,sum(P1ACREGER) as P1ACREGER,sum(P1ACRECONV) as P1PACRECONV,'
              +'           sum(P1ACREGER) as  P1PACREGER, '
              +'           max(CRAZAO) as CRAZAO,MAX(P1EMITENTE) AS P1EMITENTE'
              +'              from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join +' where P1TIPO>0 ');
mcinst:=' and ';
if trim(la_Empresas)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+la_Empresas);
   mcinst:=' and ';
   end;
if (Trim(CHAVEI.Text)<>'') or (Trim(CHAVEF.Text)<>'') then
   begin
   if Trim(MLOTSEQ.Text)<>'' then
      Tb_Ped.SQL.add(mcinst+' P1LOTSEQ=0'+Trim(MLOTSEQ.Text))
   else
     Tb_Ped.SQL.add(mcinst+' P1LOTSEQ>=0');
   mcinst:=' and ';
   if trim(CHAVEI.Text)<>'' then
      Tb_Ped.SQL.add(mcinst+ ' P1CHAVE>='+Trim(CHAVEI.Text));
   mcinst:=' and ';
   if trim(CHAVEF.Text)<>'' then
      Tb_Ped.SQL.add(mcinst+ ' P1CHAVE<='+Trim(CHAVEF.Text));
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   Tb_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Tb_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   mcinst:=' and ';
   end;
if Trim(CODCLI.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODCLI=0'+Trim(codcli.Text));
   mcinst:=' and ';
   end;
if Trim(CODTRA.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODTRA=0'+Trim(CODTRA.Text));
   mcinst:=' and ';
   end;
if Trim(CODVEN.Text)<>'' then
   begin
   Tb_Ped.SQL.add(mcinst+' P1CODVEN=0'+Trim(CODVEN.Text));
   mcinst:=' and ';
   end;
Tb_Ped.SQL.add(mcinst+' P1NUMNF<=0');
Tb_Ped.SQL.add(' and (P1EMITENTE<>'+chr(39)+'T'+chr(39)+' or P1EMITENTE is null )');
if Trim(OBS1.Text)<>'' then
   begin
   Tb_Ped.SQL.Add(mcinst+' P1OBS1 like '+chr(39)+OBS1.Text+'%'+chr(39));
   mcinst:=' and ';
   end;
if Trim(PROCESSO.Text)<>'' then
   begin
   Tb_Ped.SQl.add(mcinst+' P1PROCESSO like '+chr(39)+Trim(PROCESSO.Text)+'%'+chr(39));
   mcinst:=' and ';
   end;
if trim(TipoPed.text) <> '' then
   begin
   Tb_Ped.Sql.add(mcinst+' P1TIPO = '+TipoPed.Text);
   mcinst:=' and ';
   end;
Tb_Ped.SQL.Add(mcinst+' P1STATUS<'+mstatus_excluido+'');
if trim(la_instrucao)<>'' then
   Tb_Ped.SQL.Add(' and '+la_instrucao);
Tb_Ped.sql.Add('group by P1CODEMP,P1CHAVE,P1LOTSEQ');
try
   Tb_Ped.Open;
except
   Tb_Ped.Sql.SavetoFile(mpastatemp +'sql.txt')
   end;




end;

procedure TFrm_EmitirNF.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if (pconsemp) and (codemp>100) then
   flcadpar01(0,codemp-100,'1')
else
   flcadpar01(0,codemp,'1');

if DM1.Tb_PargerPLS_NUMPED.Value=1 then
   begin
   obs_lotseq.Visible:=True;
   lbl_lotseq.Visible:=True;
   MLOTSEQ.Visible   :=True;
   end;
MLOTSEQ.Text:=IntToStr(ls_numped);
plocemp_pcli:=0;

if ValInt(copy(mpseg,7,2))<>01 then  // Prestação de servicos
   Tab_Ser.TabVisible:=False;
if ValInt(copy(mpseg,4,2))=2 then
   begin
   Tb_Ped02P2LOTE.DisplayLabel:='Grade';
   DBGrid2.Columns[8].Visible :=false;
   end
else
   begin
   Tb_Ped02P2LOTE.DisplayLabel:='Lote';
   DBGrid2.Columns[8].Visible :=true;
   end;

Tb_PedP1DATAP.DisplayFormat     :=fdt2;
Tb_PedP1TOTALB.DisplayFormat    :=mcasas;
Tb_PedP1TOTALL.DisplayFormat    :=mcasas;
Tb_PedP1TOTDES.DisplayFormat    :=mcasas;
Tb_Pedvalpag.DisplayFormat      :=mcasas;
Tb_Pedjuros.DisplayFormat       :=mcasas;
Tb_Peddesc.DisplayFormat        :=mcasas;
Tb_Pedapagar.DisplayFormat      :=mcasas;
Tb_Ped02SP2SQTD.DisplayFormat   :=mcasqtd;
Tb_Ped02SP2SPRECO.DisplayFormat :=mcasaspu;
Tb_Ped02SP2STOTDES.DisplayFormat:=mcasas;
Tb_Ped02Stotal.DisplayFormat    :=mcasas;
Tb_Ped02P2QTD.DisplayFormat     :=mcasqtd;
Tb_Ped02P2PRECO.DisplayFormat   :=mcasaspu;
Tb_Ped02P2TOTDES.DisplayFormat  :=mcasas;
Tb_Ped02P2TOTLIQ.DisplayFormat  :=mcasas;
Tb_Ped02P2QTD_ENTREGANDO.DisplayFormat  :=mcasqtd;
Tb_Ped02P2QTD_ENTREGUE.DisplayFormat    :=mcasqtd;
Tb_Ped02P2QTDDEV.DisplayFormat          :=mcasqtd;
if trim(MDT1.Text)='/  /' then
   MDT1.Text:=FormatDatetime(fdt2, date);
if codusr=1111 then
   begin
   sb_VendasVend.Visible:=true;
   end;
if (log_codven<>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
   begin
   sb_VendasVend.Visible:=true;
   bbCusMer.Visible     :=false;
   end;
Application.CreateForm(TFrm_PVO, Frm_PVO);
fCarregaDadosCaixa('CADDAR0');

end;


procedure TFrm_EmitirNF.Tb_PedCalcFields(DataSet: TDataSet);
begin
if Tb_PedP1CODUSR.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODUSR.AsString) then
      Tb_Pednomdig.Value:=DM1.Query1.Fields[0].AsString;
   end;

if Tb_PedP1USRMOD.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1USRMOD.AsString) then
      Tb_Pednomdig.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DTMOD.IsNull) or (Tb_PedP1DTMOD.Value<=pdatanula) then
   Tb_Peddatalt.Value:='Não Definido'
else
   Tb_Peddatalt.Value:=FormatDateTime(fdt2, Tb_PedP1DTMOD.Value);

if Tb_PedP1CODSEP.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODSEP.AsString) then
      Tb_Pednomsep.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATASEP.IsNull) or (Tb_PedP1DATASEP.Value<=pdatanula) then
   Tb_Peddatsep.Value:='Não Definido'
else
   Tb_Peddatsep.Value:=FormatDateTime(fdt2, Tb_PedP1DATASEP.Value);


if Tb_PedP1CODCON.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODCON.AsString) then
      Tb_Pednomcon.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATCON.IsNull) or (Tb_PedP1DATCON.Value<=pdatanula) then
   Tb_Peddatcon.Value:='Não Definido'
else
   Tb_Peddatcon.Value:=FormatDateTime(fdt2, Tb_PedP1DATCON.Value);

if Tb_PedP1CODEMB.Value>0 then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',Tb_PedP1CODEMB.AsString) then
      Tb_Pednomemb.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATAEMB.IsNull) or (Tb_PedP1DATAEMB.Value<=pdatanula) then
   Tb_Peddatemb.Value:='Não Definido'
else
   Tb_Peddatemb.Value:=FormatDateTime(fdt2, Tb_PedP1DATAEMB.Value);

if Tb_PedP1CODTRA.Value>0 then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Tb_PedP1CODTRA.AsString) then
      Tb_Pednomtra.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Tb_PedP1CODVEN.Value>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Tb_PedP1CODVEN.AsString) then
      Tb_Pednomven.Value:=DM1.Query1.Fields[0].AsString;
   end;

if (Tb_PedP1DATANF.IsNull) or (Tb_PedP1DATANF.Value<=pdatanula) then
   Tb_Peddatanf.Value:='Não Emitiu'
else
   Tb_Peddatanf.Value:=FormatDateTime(fdt2, Tb_PedP1DATANF.Value);

if (Tb_PedP1DATDOC.IsNull) or (Tb_PedP1DATDOC.Value<=pdatanula) then
   Tb_Peddatdoc.Value:='Não Emitiu'
else
   Tb_Peddatdoc.Value:=FormatDateTime(fdt2, Tb_PedP1DATDOC.Value);

if (Tb_PedP1DATACF.IsNull) or (Tb_PedP1DATACF.Value<=pdatanula) then
   Tb_Peddatacf.Value:='Não Emitiu'
else
   Tb_Peddatacf.Value:=FormatDateTime(fdt2, Tb_PedP1DATACF.Value);

if (Tb_PedP1PREVENT.IsNull) or (Tb_PedP1PREVENT.Value<=pdatanula) then
   Tb_Peddatpent.Value:='Não Definida'
else
   Tb_Peddatpent.Value:=FormatDateTime(fdt2, Tb_PedP1PREVENT.Value);

if (Tb_PedP1DATENT.IsNull) or (Tb_PedP1DATENT.Value<=pdatanula) then
   Tb_Peddatent.Value:='Não Definida'
else
   Tb_Peddatent.Value:=FormatDateTime(fdt2, Tb_PedP1DATENT.Value);

if Tb_PedP1STATUS.Value>0 then
   Tb_Pedemitiuls.Value:=1
else
   Tb_Pedemitiuls.Value:=0;
Tb_Pedvalpag.Value:=0;
Tb_Peddesc.Value  :=0;
Tb_Pedjuros.Value :=0;
Tb_Pedapagar.Value:=0;
Tb_Pedtipo.Value:=tab_tped[Tb_PedP1TIPO.AsInteger];

Tb_Pedrazsoc.Value:=Tb_PedCRAZAO.Value;
if Tb_PedP1CODCLI.AsInteger<3 then
   begin
   if fLCadCSF2(0,Tb_PedP1CODEMP.AsInteger,Tb_PedP1LOTSEQ.AsFloat,Tb_PedP1CHAVE.AsFloat,0,0) then
      Tb_Pedrazsoc.Value:=DM1.Tb_CSFCFRAZAO.Value;
   end;


end;

procedure TFrm_EmitirNF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Tb_PedP1BLOQPEND.Value=2 then
   begin
   DBGrid1.Canvas.Brush.Color:=clRed;
//   DBGrid1.Canvas.Font.Color:=clRed;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

if Tb_PedOK.Value<>'' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
//         DBGrid1.Canvas.Font.Color  := clInfoBk;
{     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

   DBGrid1.Color. Canvas. Font.Color:=clRed;
// DBGrid1.Canvas.Font.Style:=[fsbold];
}   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

procedure TFrm_EmitirNF.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EmitirNF.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PedCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_EmitirNF.CODCLIExit(Sender: TObject);
begin
codcli.Text:=fdeixanum2(CODCLI.Text);
if CODCLI.Text='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.Text:='';
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
end;

procedure TFrm_EmitirNF.Src_PedDataChange(Sender: TObject; Field: TField);
begin
if Tab_Mer.Visible then
   fPedcliLerCorpo(0)
else if Tab_Ser.Visible then
   fPedcliLerCorpo(1)
else if ts_conhecimento.Visible then
   fPedcliLerCorpo(2);

end;

function TFrm_EmitirNF.fPedcliLerCorpo(ptipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   if (not Tb_Ped02.Active) or
      (Tb_PedP1CODEMP.AsFloat<>Tb_Ped02P2CODEMP.AsFloat) or
      (Tb_PedP1LOTSEQ.AsFloat<>Tb_Ped02P2LOTSEQ.AsFloat) or
      (Tb_PedP1CHAVE.AsFloat<>Tb_Ped02P2CHAVE.AsFloat) or
      (Tb_PedP1ORDEM.AsFloat<>Tb_Ped02P2ORDEM.AsFloat) then
      begin
      Tb_Ped02.Close;
      Tb_Ped02.SQL.Clear;
      Tb_Ped02.SQL.add('Select P2CODEMP,P2CHAVE,P2ORDEM,P2ID_NEW,P2ID_PED01_NEW, '
                   +'       P2ITEM,P2CODPRO,P2QTD,P2LOTSEQ, '
                   +'        P2LOTE,P2DTVCTO, P2QTD_ENTREGUE,NVL(P2QTD_ENTREGANDO,0) AS P2QTD_ENTREGANDO,NVL(P2QTDDEV,0) AS P2QTDDEV,'
                   +'        P2DESC1,P2DESC2,P2VALDES, '
                   +'        P2PRECO,P2SIT,P2BASEN,P2ICMSN, '
                   +'        P2BASER,P2ICMSR,P2LISTA, '
                   +'        P2TOTDES,P2ALIQ, '
                   +'        P2VCOMIS,P2CFO,P2TOTLIQ,P2ACRECONV,P2ACREGER, '
                   +'        PDNOME,PDMARCA,PDUND '
                   +' from CADP02,CADPRO where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+Tb_PedP1CODEMP.AsString+' and ')
                   +' P2LOTSEQ=0'+Tb_PedP1LOTSEQ.AsString
                   +' and P2CHAVE=0'+Tb_PedP1CHAVE.AsString
//                   +' and P2ORDEM=0'+Tb_PedP1ORDEM.AsString
                   +iif(DM1.QR_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                   +' and PDCODPRO=P2CODPRO '
                   +' order by P2CODEMP,P2CHAVE,P2ORDEM,P2ITEM ');
      Tb_Ped02.Open;
      end;
   end
else if ptipo=1 then
   begin
   if (not Tb_Ped02S.Active) or
      (Tb_PedP1CODEMP.AsFloat<>Tb_Ped02SP2SCODEMP.AsFloat) or
      (Tb_PedP1LOTSEQ.AsFloat<>Tb_Ped02SP2SLOTSEQ.AsFloat) or
      (Tb_PedP1CHAVE.AsFloat<>Tb_Ped02SP2SCHAVE.AsFloat) or
      (Tb_PedP1ORDEM.AsFloat<>Tb_Ped02SP2SORDEM.AsFloat) then
      begin
      Tb_Ped02S.Close;
      Tb_Ped02S.SQL.Clear;
      Tb_Ped02S.SQL.add('Select P2SCODEMP,P2SCHAVE,P2SORDEM,P2SLOTSEQ,'
                    +'       P2SITEM,P2SCODPRO,P2SQTD, '
                    +'       P2SDESC1,P2SDESC2,P2SVALDES, '
                    +'        P2SPRECO,P2SSIT,P2SBCISSQN,P2SVISSQN, '
                    +'        P2SLISTA, '
                    +'        P2STOTDES,P2SALIQ, '
                    +'        P2SVCOMIS,P2SCFO, '
                    +'        PDNOME,PDMARCA,PDUND '
                    +' from CADP02S,CADPRO '
                    +' where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2SCODEMP=0'+Tb_PedP1CODEMP.AsString+' and ')
                   +' P2SLOTSEQ=0'+Tb_PedP1LOTSEQ.AsString
                   +' and P2SCHAVE=0'+Tb_PedP1CHAVE.AsString
//                   +' and P2SORDEM=0'+Tb_PedP1ORDEM.AsString
                   +iif(DM1.QR_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2SCODEMP ')
                   +' and PDCODPRO=P2SCODPRO '
                   +' order by P2SCODEMP,P2SCHAVE,P2SORDEM,P2SITEM ');
      Tb_Ped02S.Open;
      end;
   end
else if ptipo=2 then // conhecimento
   begin
   if (not DM6.Tb_Con03.Active) or
      (Tb_PedP1CHAVE.AsFloat<>DM6.Tb_Con03C03CHAVE_PED.AsFloat) then
      begin
      flcadcon03(0,//tipo
                 0, // codemp
                 0, // codcon
                 Tb_PedP1CODEMP.AsFloat,
                 Tb_Pedp1lotseq.AsFloat,
                 Tb_PedP1CHAVE.AsFloat);
      end;


   end;
result:=true;
end;
procedure TFrm_EmitirNF.Tb_Ped02CalcFields(DataSet: TDataSet);
begin
if (Tb_Ped02P2DTVCTO.IsNull) or (Tb_Ped02P2DTVCTO.Value<=pdatanula) then
   Tb_Ped02dtvcto.Value:=''
else
   Tb_Ped02dtvcto.Value:=FormatDateTime(fdt2, Tb_Ped02P2DTVCTO.Value);
end;

procedure TFrm_EmitirNF.Tb_Ped02SCalcFields(DataSet: TDataSet);
begin
Tb_Ped02Stotal.Value:=Tb_Ped02SP2SQTD.Value*Tb_Ped02SP2SPRECO.Value;
end;

procedure TFrm_EmitirNF.PageControl1Change(Sender: TObject);
begin
if Tab_Mer.Visible then
   fPedcliLerCorpo(0)
else if Tab_Ser.Visible then
   fPedcliLerCorpo(1)
else if ts_conhecimento.Visible then
   fPedcliLerCorpo(2);

end;

procedure TFrm_EmitirNF.OBS1Exit(Sender: TObject);
begin
OBS1.Text:=fRetAspas(OBS1.Text);

end;

procedure TFrm_EmitirNF.DBGrid1DblClick(Sender: TObject);
begin
Tb_Ped.Edit;
if trim(Tb_PedOK.AsString)='' then
   Tb_PedOK.Value:='P'
else
   Tb_PedOK.Value:='';
Tb_Ped.Post;
end;

procedure TFrm_EmitirNF.MLOTSEQExit(Sender: TObject);
begin
MLOTSEQ.Text:=fdeixanum2(MLOTSEQ.Text);

end;

procedure TFrm_EmitirNF.CODTRAExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)='' then
   NOMTRA.text:='Todos...'
else
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      MessageDlg('Transportadora não Cadastrada!',mtWarning,[mbOk],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;


end;

procedure TFrm_EmitirNF.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_EmitirNF',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_EmitirNF.TipoPedExit(Sender: TObject);
begin
if Trim(TipoPed.Text)<>'' then
   begin
   TipoPed.Text:=fdeixanum2(TipoPed.Text);
   if valint(TipoPed.Text)>high(tab_tped) then
      begin
      MessageDlg('Tipo Inexistente!',mtWarning,[mbOk],0);
      TipoPed.SetFocus;
      end
   else
      NomTipoPed.Text := tab_tped[valint(TipoPed.Text)];
   end
else
   NomTipoPed.Text:='Todos...';

end;

procedure TFrm_EmitirNF.CODVENExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if trim(CODVEN.Text)='' then
   NOMVEN.text:='Todos...'
else
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;


end;

procedure TFrm_EmitirNF.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_EmitirNF',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_EmitirNF.FormActivate(Sender: TObject);
begin
if (log_codven<>0) and (DM1.Tb_PargerPLOGUSRPED.AsInteger=1) then
   begin
   if flcadven(1,0,FloatToStr(log_codven)) then
      begin
      CODVEN.Text:=FloattoStr(log_codven);
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
      CODVEN.Enabled:=false;
      end
   else
      CODVEN.Enabled:=true;
   end
else
   CODVEN.Enabled:=true;


MDT1.Text:=FormatDateTime(fdt2, Date);
MDT2.Text:=FormatDateTime(fdt2, Date);
bbAtualizarClick(Self);

end;

procedure TFrm_EmitirNF.sgTipoPedClick(Sender: TObject);
begin
  if frm_infped=nil then
     Application.CreateForm(TFrm_InfPed, Frm_InfPed)
  else
     begin
     Frm_InfPed.free;
     Frm_InfPed:=nil;
     Application.CreateForm(TFrm_InfPed, Frm_InfPed);
     end;

  Frm_InfPed.ShowModal;
  TipoPed.Text    := copy(frm_infped.STG1.Cells[0,frm_infped.STG1.Row],1,2);
  NomTipoPed.Text := copy(frm_infped.STG1.cells[0,frm_infped.STG1.Row],3,40);
  Frm_InfPed.Free;
  Frm_InfPed:=nil;
end;

procedure TFrm_EmitirNF.bbCusMerClick(Sender: TObject);
begin
if Frm_LucroPed=nil then
   Application.Createform(TFrm_LucroPed, Frm_LucroPed)
else
   begin
   Frm_LucroPed.free;
   Frm_LucroPed:=nil;
   Application.Createform(TFrm_LucroPed, Frm_LucroPed);

   end;
Frm_LucroPed.MCODEMP.Text:=Tb_PedP1CODEMP.AsString;
Frm_LucroPed.chave.Text:=Tb_PedP1CHAVE.AsString;
Frm_LucroPed.atualiza.Click;
Frm_LucroPed.ShowModal;
Frm_LucroPed.Free;
Frm_LucroPed:=nil;
end;

procedure TFrm_EmitirNF.sb_VendasVendClick(Sender: TObject);
begin
if Frm_Vend_Venda=nil then
   Application.CreateForm(TFrm_Vend_Venda, Frm_Vend_Venda)
else
   begin
   Frm_Vend_Venda.free;
   Frm_Vend_Venda:=nil;
   Application.CreateForm(TFrm_Vend_Venda, Frm_Vend_Venda);
   end;
Frm_Vend_Venda.ShowModal;
Frm_Vend_Venda.Free;
Frm_Vend_Venda:=nil;
end;

procedure TFrm_EmitirNF.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=fdeixanum2(CHAVEI.Text);

end;

procedure TFrm_EmitirNF.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=fdeixanum2(CHAVEF.Text);
end;

procedure TFrm_EmitirNF.bbImprimirClick(Sender: TObject);
var
x: Integer;
mcodemp,mnumnf: Real;
mdupacum,mcomp: String;
mannf_aceito, emitiu: Boolean;
mTotserv: Real;
pSerieNF,pModNF: string;

begin
if not fValidarCheckout then
   begin
   exit;
   end;


Tb_Ped.First;
While not Tb_Ped.Eof do
   begin
   if Tb_PedOK.AsString='' then
      begin
      Tb_Ped.Next;
      Continue;
      end;

   if not flcadp01(0, Tb_PedP1CODEMP.AsInteger, Tb_PedP1LOTSEQ.AsInteger,Tb_PedP1CHAVE.AsString,'') then
      begin
      fMensagem('Erro ao Localizar o Pedido: '+Tb_PedP1CHAVE.AsString,0,['0'],0);
      Continue;
      end;
   if DM1.Tb_Ped01P1BLOQPEND.AsInteger=2 then
      begin
      Tb_Ped.Next;
      Continue;
      end;
   if (DM1.Tb_Ped01P1SITPED.Value = 1) and ( (DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
      and (trunc((now-DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1)) then
      begin
      Tb_Ped.Next;
      Continue;
      end;

   if DM1.Tb_Ped01P1NUMNF.AsInteger>0 then
      begin
      Tb_Ped.Next;
      Continue;
      end;

   mtotServ:=0;
   if DM1.Tb_Ped01P1DATAP.Value<>Date then
      begin
      while not DM1.Tb_Ped01.Eof do
         begin
         if DM1.Tb_Ped01P1STATUS.Value>1 then
            begin
            DM1.Tb_Ped01.next;
            Continue;
            end;
         if DM1.Tb_Ped01P1NUMNF.AsInteger>0 then
            begin
            DM1.Tb_Ped01.Next;
            Continue;
            end;
         mOutrosParametros.pid_ped01_new:=DM1.Tb_Ped01P1ID_NEW.AsInteger;


         fCarregarPO99(DM1.Tb_Ped01P1TABPV.Value,DM1.Tb_Ped01P1CODEMP.Value,
                      DM1.Tb_Ped01P1LOTSEQ.Value,iif(DM1.Tb_Ped01P1TABPV.AsString='PO',DM1.Tb_Ped01P1CHAVE.Value, DM1.Tb_Ped01P1CODPV.Value));

         fgvencto(iif(DM1.Tb_Ped01P1TABPV.Value='PP',1,0),DM1.Tb_Ped01P1CODEMP.AsInteger,
                    DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,
                    DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1PRAZO.AsInteger,DM1.Tb_Ped01P1CODPV.AsInteger,
                    DM1.Tb_Ped01P1PVDDESCF.AsInteger,DM1.Tb_Ped01P1PVDIASDESCF.AsInteger,
                    DM1.Tb_Ped01P1TOTALL.Value,DM1.Tb_Ped01P1COMIS.Value,DM1.Tb_Ped01P1COMV02.Value,
                    DM1.Tb_Ped01P1COMV03.Value,
                    DM1.Tb_Ped01P1COMV03.Value,
                    DM1.Tb_Ped01P1COMISS.Value,DM1.Tb_Ped01P1COMIST.Value,DM1.Tb_Ped01P1SEMCOM.Value,
                    DM1.Tb_Ped01P1ICMSR.Value,
                    DM1.Tb_Ped01P1COMASSE.Value,
                    DM1.Tb_Ped01P1VALFRE.Value,
                    DM1.Tb_Ped01P1VALSEG.Value,
                    DM1.Tb_Ped01P1DESCFIN.Value,
                    DM1.Tb_Ped01P1TOTDI01.Value,
                    DM1.Tb_Ped01P1TOTDI02.Value,
                    DM1.Tb_Ped01P1TOTDI03.Value,
                    DM1.Tb_Ped01P1TOTDIVL.Value,
                    DM1.Tb_Ped01P1VALDES01.Value,
                    DM1.Tb_Ped01P1VALDES02.Value,
                    DM1.Tb_Ped01P1VLRDES.Value,
                    DM1.Tb_Ped01P1TARBAN.Value,
                    DM1.Tb_Ped01P1IPIINA.Value+DM1.Tb_Ped01P1IPIPOS.Value+DM1.Tb_Ped01P1IPINEG.Value,
                    DM1.Tb_Ped01P1TOTCGRU.Value,
                    DM1.Tb_Ped01P1TOTSGRU.Value,
                    DM1.Tb_Ped01P1TOTSERLIQ.Value,
                    DM1.Tb_Ped01P1VALENT.Value,
                    DM1.Tb_Ped01P1PRAZO_ENT.Value,
                    DM1.Tb_Ped01P1COMIS_EXTRA.Value,
                    DM1.Tb_Ped01submod.AsFloat,
                    date,
                    DM1.Tb_Ped01P1TABPV.Value
                    ,mOutrosParametros);


         DM1.Tb_Ped01.Next;
         end;
      end;
   DM1.Tb_Ped01.First;
   emitiu:=true;
   mdupacum:='';
   While not DM1.Tb_Ped01.Eof do
      begin
      if DM1.Tb_Ped01P1STATUS.Value>1 then
         begin
         FPedEmiteNf(0,DM1.Tb_Ped01P1CODSER.AsInteger,0,
                     DM1.Tb_Ped01P1LOTSEQ.AsInteger,
                     DM1.Tb_Ped01P1CHAVE.AsInteger,
                     DM1.Tb_Ped01P1ORDEM.AsInteger,
                     DM1.Tb_Ped01P1CODEMP.AsInteger,
                     0,
                     DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // Reemisao de Nota fiscal
         DM1.Tb_Ped01.Next;
         Continue;
         end;

      fAjustarDataHoraDeSaida(DM1.Tb_Ped01P1CHAVE.AsInteger,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CODEMP.AsInteger);

      mcomp     :='';
      emitiu    :=true;

      pSerieNF:='';
      pModNF  :='';
      mnumnf:=fBuscarNUMNF(DM1.Tb_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(dm1.Tb_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,1);
      if mnumnf=-99 then
        begin
        fmensagem('Processo de Emissão Cancelado!',0,['0'],0);
        Exit;
        end;
      DM1.Tb_Ped01.Edit;
      DM1.Tb_Ped01P1NUMNF.Value :=mnumnf;
      DM1.Tb_Ped01P1DATANF.Value:=date;
      DM1.Tb_Ped01P1DATDOC.Value:=Now;
      DM1.Tb_Ped01P1SERIE.Value :=pSerieNF;
      DM1.Tb_Ped01P1MODELO.Value:=pModNF;
      DM1.Tb_Ped01P1STATUS.Value:=2;
      DM1.Tb_Ped01P1EMIDOC.Value:=1;
      DM1.Tb_Ped01.Post;
      flcadp01V(0,DM1.Tb_Ped01P1CODEMP.AsInteger,
                  DM1.Tb_Ped01P1LOTSEQ.AsInteger,
                  DM1.Tb_Ped01P1CHAVE.AsString,
                  DM1.Tb_Ped01P1ORDEM.AsString);
      FPedEmiteNf(0,DM1.Tb_Ped01P1CODSER.AsInteger,0,
                  DM1.Tb_Ped01P1LOTSEQ.AsInteger,
                  DM1.Tb_Ped01P1CHAVE.AsInteger,
                  DM1.Tb_Ped01P1ORDEM.AsInteger,
                  DM1.Tb_Ped01P1CODEMP.AsInteger,0,
                  DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,false,1,0,0); // Reemisao de Nota fiscal

      DM1.Tb_Ped01.Next;
      end;
   Tb_Ped.Next;
   end;

fmensagem('Impressão Concluida',0,['0'],0);
bbAtualizarClick(self);
end;


procedure TFrm_EmitirNF.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Frm_PVO.Free;
Frm_PVO:=nil;

end;

procedure TFrm_EmitirNF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_EmitirNF.FormKeyDown(Sender: TObject; var Key: Word;
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


function TFrm_EmitirNF.fValidarCheckout: boolean;
var
mMensagem: String;
begin
mMensagem:='';
if flfilpad(-1,'_VENDA_PRE','CB_EMINF_COM_CHECKOUT') then
   begin

   if DM4.Tb_FilPad2FPVALOR.AsString='true' then
      begin
      Tb_Ped.First;
      While not Tb_Ped.Eof do
         begin
         if Tb_PedOK.AsString='' then
            begin
            Tb_Ped.Next;
            Continue;
            end;
         if Tb_PedP1DATCON.AsDateTime<=pdatanula then
            begin
            mMensagem:=mMensagem+'Pedido '+Tb_PedP1CHAVE.AsString+' falta a conferencia eletronica '+#13;
            end;
         Tb_Ped.Next;
         end;
      end;
   end;

if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   result:=false;
   end
else
   result:=true;

end;

end.
