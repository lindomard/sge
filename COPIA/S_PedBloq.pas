unit S_PedBloq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB,
  DBTables,S_DM1,func,lerarq, ComCtrls,func2,S_Tra,S_InfPed,S_Ven,S_LucroPed,func_excecoes,S_Usr,
  CheckLst, RDprint,S_Princ, S_SelEmp;

type
  TFrm_PedBloq = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
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
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit29: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    bbEmitirNF: TBitBtn;
    bbSair: TBitBtn;
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
    Tb_Ped02PDNOME: TStringField;
    Tb_Ped02PDMARCA: TStringField;
    Tb_Ped02PDUND: TStringField;
    DBGrid2: TDBGrid;
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
    bbCusMer: TBitBtn;
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
    tsBloqueios: TTabSheet;
    Panel3: TPanel;
    bbSitCred: TBitBtn;
    Label5: TLabel;
    MCODUSR: TEdit;
    NOMUSR: TEdit;
    Label6: TLabel;
    SENHA: TEdit;
    cb_manter_senha: TCheckBox;
    bbLiberar: TBitBtn;
    memo1: TMemo;
    bbEmitirListaSep: TBitBtn;
    sb_SalvarPadrao: TSpeedButton;
    RG_TIPOPED: TRadioGroup;
    bbimprimir: TBitBtn;
    Src_PedBlq: TDataSource;
    bbEmitirTodas: TBitBtn;
    Ts_BLOQPED_MINAVISO: TTabSheet;
    Label7: TLabel;
    BLOQPED_MINAVISO: TEdit;
    Label8: TLabel;
    RDprint1: TRDprint;
    StaticText27: TStaticText;
    DBEdit40: TDBEdit;
    TsOutFil: TTabSheet;
    Label9: TLabel;
    CODTLV: TEdit;
    NOMTLV: TEdit;
    Label40: TLabel;
    TipoPed: TEdit;
    sgTipoPed: TSpeedButton;
    NomTipoPed: TEdit;
    Label38: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    CB_VALE: TCheckBox;
    Label10: TLabel;
    edt_qtdmin: TEdit;
    Label11: TLabel;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure Src_PedBlqDataChange(Sender: TObject; Field: TField);
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
    procedure sgTipoPedClick(Sender: TObject);
    procedure bbCusMerClick(Sender: TObject);
    procedure CHAVEIExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MCODUSRExit(Sender: TObject);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure bbLiberarClick(Sender: TObject);
    procedure bbSitCredClick(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure bbimprimirClick(Sender: TObject);
    procedure bbEmitirNFClick(Sender: TObject);
    procedure bbEmitirListaSepClick(Sender: TObject);
    procedure bbEmitirTodasClick(Sender: TObject);
    procedure BLOQPED_MINAVISOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODTLVExit(Sender: TObject);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure edt_qtdminExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fPedcliLerCorpo(ptipo: Integer): Boolean;

  public
    { Public declarations }
    mchave_ant: Real;
    ori_pedcli: String;
    plocemp_pcli: Integer;
    mPosicao_ChavePed: Real;
    mlin,mpag: Integer;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_PedBloq: TFrm_PedBloq;

implementation

uses S_DM4, S_DM6, S_SitCre, S_ManNF, S_PVO,
    S_GerarDuplic;

{$R *.dfm}

procedure TFrm_PedBloq.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_PedBloq.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_PedBloq.bbAtualizarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Data Final Maior que Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

DM6.Tb_PedBlq.close;
DM6.Tb_pedBlq.SQL.Clear;
DM6.Tb_PedBlq.SQL.add('Select '+chr(39)+' '+chr(39)+' AS OK,'
              +'           max(P1CODEMP) as P1CODEMP,'
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
              +'           max(CRAZAO) as CRAZAO '
              +'              from CADP01'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join );
mcinst:=' where ';
if trim(la_Empresas)<>'' then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+la_Empresas);
   mcinst:=' and ';
   end;
if (Trim(CHAVEI.Text)<>'') or (Trim(CHAVEF.Text)<>'') then
   begin
   if Trim(MLOTSEQ.Text)<>'' then
      DM6.Tb_PedBlq.SQL.add(mcinst+' P1LOTSEQ=0'+Trim(MLOTSEQ.Text))
   else
      DM6.Tb_PedBlq.SQL.add(mcinst+' P1LOTSEQ>=0');
   mcinst:=' and ';
   if trim(CHAVEI.Text)<>'' then
      DM6.Tb_PedBlq.SQL.add(mcinst+ ' P1CHAVE>='+Trim(CHAVEI.Text));
   mcinst:=' and ';
   if trim(CHAVEF.Text)<>'' then
      DM6.Tb_PedBlq.SQL.add(mcinst+ ' P1CHAVE<='+Trim(CHAVEF.Text));
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   DM6.Tb_PedBlq.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM6.Tb_PedBlq.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   mcinst:=' and ';
   end;
if Trim(CODCLI.Text)<>'' then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' P1CODCLI=0'+Trim(codcli.Text));
   mcinst:=' and ';
   end;
if Trim(CODTRA.Text)<>'' then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' P1CODTRA=0'+Trim(CODTRA.Text));
   mcinst:=' and ';
   end;
if Trim(CODVEN.Text)<>'' then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' P1CODVEN=0'+Trim(CODVEN.Text));
   mcinst:=' and ';
   end;
if RG_TIPOPED.ItemIndex=0 then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' (P1BLOQPEND>1 or P1STATUS<2) ');
   mcinst:=' and ';
   end
else if RG_TIPOPED.ItemIndex=1 then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' P1BLOQPEND>1 ');
   mcinst:=' and ';
   end
else if RG_TIPOPED.ItemIndex=2 then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' (P1STATUS<2 AND P1BLOQPEND<2) ');
   mcinst:=' and ';
   end
else if RG_TIPOPED.ItemIndex=0 then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' (P1BLOQPEND<2 or P1STATUS>=2) ');
   mcinst:=' and ';
   end;

if Trim(CODTLV.Text)<>'' then
   begin
   DM6.Tb_PedBlq.SQL.add(mcinst+' P1CODTLV=0'+Trim(CODTLV.Text));
   mcinst:=' and ';
   end;



if Trim(OBS1.Text)<>'' then
   begin
   DM6.Tb_PedBlq.SQL.Add(mcinst+' P1OBS1 like '+chr(39)+OBS1.Text+'%'+chr(39));
   mcinst:=' and ';
   end;
if Trim(PROCESSO.Text)<>'' then
   begin
   DM6.Tb_PedBlq.SQl.add(mcinst+' P1PROCESSO like '+chr(39)+Trim(PROCESSO.Text)+'%'+chr(39));
   mcinst:=' and ';
   end;
if trim(TipoPed.text) <> '' then
   begin
   DM6.Tb_PedBlq.Sql.add(mcinst+' P1TIPO='+trim(TipoPed.Text));
   mcinst:=' and ';
   end;
if not CB_VALE.Checked then
   begin
   DM6.Tb_PedBlq.Sql.add(mcinst+' P1TIPO <> 9 ');
   mcinst:=' and ';
   end;
//DM6.Tb_PedBlq.Sql.add(mcinst+' P1TIPO <> 0 ');
//mcinst:=' and ';

DM6.Tb_PedBlq.SQL.Add(mcinst+' P1STATUS<'+mstatus_excluido+'');
if trim(la_instrucao)<>'' then
   DM6.Tb_PedBlq.SQL.Add(' and '+la_instrucao);
DM6.Tb_PedBlq.sql.Add('group by P1CHAVE,P1LOTSEQ');
//DM6.Tb_PedBlq.sql.savetofile('c:\sql.txt');

DM6.Tb_PedBlq.Open;



end;

procedure TFrm_PedBloq.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if (mLibBlqpedidos) or (codusr=1111) then
   Ts_BLOQPED_MINAVISO.TabVisible:=true
else
   Ts_BLOQPED_MINAVISO.TabVisible:=false;
Application.CreateForm(TFrm_PVO, Frm_PVO);
MCODUSR.Text:=IntToStr(codusr);
if flcadusr(1,0,Trim(MCODUSR.Text)) then
   NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value;


if (pconsemp) and (codemp>100) then
   flcadpar01(0,codemp-100,'1')
else
   flcadpar01(0,codemp,'1');
if flparger(0,0,'1') then
   begin
   if DM1.Tb_PargerPBLOQPED_MINAVISO.AsInteger=0 then
      begin
//      BLOQPED_MINAVISO.Text:=Floattostr(Frm_PPal.Timer1.Interval/1000);
      BLOQPED_MINAVISO.Text:=Inttostr(Frm_Princ.Timer1.Interval);
      end
   else
      BLOQPED_MINAVISO.Text:=DM1.Tb_PargerPBLOQPED_MINAVISO.AsString;
   end;


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

DM6.Tb_PedBlqP1DATAP.DisplayFormat     :=fdt2;
DM6.Tb_PedBlqP1TOTALB.DisplayFormat    :=mcasas;
DM6.Tb_PedBlqP1TOTALL.DisplayFormat    :=mcasas;
DM6.Tb_PedBlqP1TOTDES.DisplayFormat    :=mcasas;
DM6.Tb_PedBlqvalpag.DisplayFormat      :=mcasas;
DM6.Tb_PedBlqjuros.DisplayFormat       :=mcasas;
DM6.Tb_PedBlqdesc.DisplayFormat        :=mcasas;
DM6.Tb_PedBlqapagar.DisplayFormat      :=mcasas;
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
fCarregaDadosCaixa('CADDAR0');


DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PEDBLOQ','RG_TIPOPED']),[]) then
   RG_TIPOPED.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PEDBLOQ','CB_VALE']),[]) then
   CB_VALE.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_VALE.Checked:=false;

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
MDT1.Text:=FormatDateTime(fdt2, Date-30);
MDT2.Text:=FormatDateTime(fdt2, Date);
bbAtualizarClick(Self);

end;


procedure TFrm_PedBloq.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if DM6.Tb_PedBlqP1BLOQPEND.Value=1 then
   begin
   DBGrid1.Canvas.Brush.Color:=clRed;
//   DBGrid1.Canvas.Font.Color:=clRed;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

{
if Tb_PedOK.Value<>'' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
//         DBGrid1.Canvas.Font.Color  := clInfoBk;
{     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

   DBGrid1.Color. Canvas. Font.Color:=clRed;
// DBGrid1.Canvas.Font.Style:=[fsbold];
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
}
end;

procedure TFrm_PedBloq.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PedBloq.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PedCli',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PedBloq.CODCLIExit(Sender: TObject);
begin
codcli.Text:=fdeixanum2(CODCLI.Text);
if CODCLI.Text='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      FMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text:='';
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;
end;

procedure TFrm_PedBloq.Src_PedBlqDataChange(Sender: TObject; Field: TField);
var
x: Integer;
begin
if Tab_Mer.Visible then
   fPedcliLerCorpo(0)
else if Tab_Ser.Visible then
   fPedcliLerCorpo(1)
else if ts_conhecimento.Visible then
   fPedcliLerCorpo(2);
if mchave_ant<>DM6.Tb_PedBlqP1CHAVE.Value then
   begin
   if length(DM6.Tb_PedBlqP1CODBLOQ.AsString)>0 then
      x:=1
   else
      x:=1;
   Memo1.Lines.Clear;
   While x<length(DM6.Tb_PedBlqP1CODBLOQ.AsString) do
      begin
      mcinst2:=copy(DM6.Tb_PedBlqP1CODBLOQ.Value,x,2);
      if fAdicionaRemoveTexto(2,DM6.Tb_PedBlqP1CODBLOQ_LIB.AsString,mcinst2)='' then
         begin
         if ValInt(mcinst2)=1 then
            Memo1.Lines.Add(mcinst2+' - Cliente sem limite de Crédito ')
         else if ValInt(mcinst2)=2 then
            Memo1.Lines.Add(mcinst2+' - Cliente Inadimplente')
         else if ValInt(mcinst2)=3 then
            Memo1.Lines.Add(mcinst2+' - Cliente com Cheques devolvidos')
         else if ValInt(mcinst2)=4 then
            Memo1.Lines.Add(mcinst2+' - Cliente Com titulos Protestado')
         else if ValInt(mcinst2)=5 then
            Memo1.Lines.Add(mcinst2+' - Cliente Com Cadastro Bloqueado Pelo Status=7')
         else if ValInt(mcinst2)=6 then
            Memo1.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Municipal Invalido')
         else if ValInt(mcinst2)=7 then
            Memo1.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Municipal Vencido')
         else if ValInt(mcinst2)=8 then
            Memo1.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Federal Invalido')
         else if ValInt(mcinst2)=9 then
            Memo1.Lines.Add(mcinst2+' - Registro Vigilancia Sanitario Federal Vencido')
         else if ValInt(mcinst2)=10 then
            Memo1.Lines.Add(mcinst2+' - Prazo Maior que o Permitido no Plano de Vendas')
         else if ValInt(mcinst2)=11 then
            Memo1.Lines.Add(mcinst2+' - Cliente Inativo Com Cadastro Bloqueado Pelo Status=9')
         else if ValInt(mcinst2)=13 then
            Memo1.Lines.Add(mcinst2+' - Cliente Novo(Cadastrado Automaticamente)')
         else if ValInt(mcinst2)=20 then
            Memo1.Lines.Add(mcinst2+' - Desconto Maior que o Permitido')
         else if ValInt(mcinst2)=30 then
            Memo1.Lines.Add(mcinst2+' - cfop  com problemas')
         else
            Memo1.Lines.Add(mcinst2+' - Bloqueio não Identificado');
         end;
      x:=x+3;
      end;
   Memo1.update;
   end;
mchave_ant:=DM6.tb_PedBlqP1CHAVE.Value;

end;

function TFrm_PedBloq.fPedcliLerCorpo(ptipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   if (not Tb_Ped02.Active) or
//      (DM6.Tb_PedBlqP1CODEMP.AsFloat<>Tb_Ped02P2CODEMP.AsFloat) or
      (DM6.Tb_PedBlqP1LOTSEQ.AsFloat<>Tb_Ped02P2LOTSEQ.AsFloat) or
      (DM6.Tb_PedBlqP1CHAVE.AsFloat<>Tb_Ped02P2CHAVE.AsFloat) or
      (DM6.Tb_PedBlqP1ORDEM.AsFloat<>Tb_Ped02P2ORDEM.AsFloat) then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);

      Tb_Ped02.Close;
      Tb_Ped02.SQL.Clear;
      Tb_Ped02.SQL.add('Select min(P2CODEMP) as P2CODEMP,'
                      +'P2CHAVE,'
                      +'max(P2ORDEM) AS P2ORDEM, '
                      +'max(P2ITEM)  AS P2ITEM, '
                      +'P2CODPRO,'
                      +'sum(P2QTD) AS P2QTD,'
                      +'max(P2LOTSEQ) AS P2LOTSEQ, '
                      +'max(P2LOTE)   AS P2LOTE,'
                      +'max(P2DTVCTO) AS P2DTVCTO, '
                      +'sum(NVL(P2QTD_ENTREGUE,0)) AS P2QTD_ENTREGUE,'
                      +'sum(NVL(P2QTD_ENTREGANDO,0)) AS P2QTD_ENTREGANDO,'
                      +'sum(NVL(P2QTDDEV,0)) AS  P2QTDDEV,'
                      +'max(P2DESC1) AS P2DESC1,'
                      +'max(P2DESC2) AS P2DESC2,'
                      +'sum(P2VALDES) AS P2VALDES, '
                      +'max(P2PRECO) AS P2PRECO,'
                      +'max(P2SIT) AS P2SIT,'
                      +'sum(P2BASEN)AS P2BASEN,'
                      +'sum(P2ICMSN) AS P2ICMSN, '
                      +'sum(P2BASER) AS P2BASER,'
                      +'sum(P2ICMSR) AS P2ICMSR,'
                      +'max(P2LISTA) AS P2LISTA, '
                      +'sum(P2TOTDES) AS P2TOTDES, '
                      +'max(P2ALIQ) AS P2ALIQ, '
                      +'sum(P2VCOMIS) AS P2VCOMIS, '
                      +'max(P2CFO) AS P2CFO, '
                      +'sum(P2TOTLIQ) AS P2TOTLIQ, '
                      +'sum(P2ACRECONV) AS P2ACRECONV, '
                      +'sum(P2ACREGER) AS P2ACREGER, '
                      +'max(PDNOME) as PDNOME, '
                      +'max(PDMARCA) as PDMARCA, '
                      +'max(PDUND) as PDUND '
                      +' from CADP02,CADPRO where '+iif(la_Empresas='','',la_Empresas+' and ')
                      +' P2LOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                      +' and P2CHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString
//                   +' and P2ORDEM=0'+Tb_PedP1ORDEM.AsString
                   +iif(DM1.QR_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=P2CODEMP ')
                   +' and PDCODPRO=P2CODPRO '
                   +' group by P2CHAVE,P2CODPRO '
                   +' order by P2CODEMP,P2CHAVE,P2ORDEM,P2ITEM ');
      try
         Tb_Ped02.Open;
      except
         Tb_Ped02.SQL.SaveToFile('C:\SQL.TXT');
         end;
      end;
   end
else if ptipo=1 then
   begin
   if (not Tb_Ped02S.Active) or
      (DM6.Tb_PedBlqP1CODEMP.AsFloat<>Tb_Ped02SP2SCODEMP.AsFloat) or
      (DM6.Tb_PedBlqP1LOTSEQ.AsFloat<>Tb_Ped02SP2SLOTSEQ.AsFloat) or
      (DM6.Tb_PedBlqP1CHAVE.AsFloat<>Tb_Ped02SP2SCHAVE.AsFloat) or
      (DM6.Tb_PedBlqP1ORDEM.AsFloat<>Tb_Ped02SP2SORDEM.AsFloat) then
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
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2SCODEMP=0'+DM6.Tb_PedBlqP1CODEMP.AsString+' and ')
                   +' P2SLOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                   +' and P2SCHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString
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
      (DM6.Tb_PedBlqP1CHAVE.AsFloat<>DM6.Tb_Con03C03CHAVE_PED.AsFloat) then
      begin
      flcadcon03(0,//tipo
                 0, // codemp
                 0, // codcon
                 DM6.Tb_PedBlqP1CODEMP.AsFloat,
                 DM6.Tb_PedBlqp1lotseq.AsFloat,
                 DM6.Tb_PedBlqP1CHAVE.AsFloat);
      end;


   end;
result:=true;
end;
procedure TFrm_PedBloq.Tb_Ped02CalcFields(DataSet: TDataSet);
begin
if (Tb_Ped02P2DTVCTO.IsNull) or (Tb_Ped02P2DTVCTO.Value<=pdatanula) then
   Tb_Ped02dtvcto.Value:=''
else
   Tb_Ped02dtvcto.Value:=FormatDateTime(fdt2, Tb_Ped02P2DTVCTO.Value);
end;

procedure TFrm_PedBloq.Tb_Ped02SCalcFields(DataSet: TDataSet);
begin
Tb_Ped02Stotal.Value:=Tb_Ped02SP2SQTD.Value*Tb_Ped02SP2SPRECO.Value;
end;

procedure TFrm_PedBloq.PageControl1Change(Sender: TObject);
begin
if Tab_Mer.Visible then
   fPedcliLerCorpo(0)
else if Tab_Ser.Visible then
   fPedcliLerCorpo(1)
else if ts_conhecimento.Visible then
   fPedcliLerCorpo(2);

end;

procedure TFrm_PedBloq.OBS1Exit(Sender: TObject);
begin
OBS1.Text:=fRetAspas(OBS1.Text);

end;

procedure TFrm_PedBloq.DBGrid1DblClick(Sender: TObject);
begin

DM6.Tb_PedBlq.Edit;
if trim(DM6.Tb_PedBlqOK.AsString)='' then
   DM6.Tb_PedBlqOK.Value:='X'
else
   DM6.Tb_PedBlqOK.Value:='';
DM6.Tb_PedBlq.Post;

end;

procedure TFrm_PedBloq.MLOTSEQExit(Sender: TObject);
begin
MLOTSEQ.Text:=fdeixanum2(MLOTSEQ.Text);

end;

procedure TFrm_PedBloq.CODTRAExit(Sender: TObject);
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
      FMensagem('Transportadora não Cadastrada!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;


end;

procedure TFrm_PedBloq.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_PedBloq',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_PedBloq.TipoPedExit(Sender: TObject);
begin
if Trim(TipoPed.Text)<>'' then
   begin
   TipoPed.Text:=fdeixanum2(TipoPed.Text);
   if valint(TipoPed.Text)>high(tab_tped) then
      begin
      FMensagem('Tipo Inexistente!',0,['0'],0);
      TipoPed.SetFocus;
      end
   else
      NomTipoPed.Text := tab_tped[valint(TipoPed.Text)];
   end
else
   NomTipoPed.Text:='Todos...';

end;

procedure TFrm_PedBloq.CODVENExit(Sender: TObject);
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
      FMensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;


end;

procedure TFrm_PedBloq.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_PedBloq',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_PedBloq.sgTipoPedClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_InfPed, Frm_InfPed);
  Frm_InfPed.ShowModal;
  TipoPed.Text    := copy(frm_infped.STG1.Cells[0,frm_infped.STG1.Row],1,2);
  NomTipoPed.Text := copy(frm_infped.STG1.cells[0,frm_infped.STG1.Row],3,40);
  Frm_InfPed.Free;

end;

procedure TFrm_PedBloq.bbCusMerClick(Sender: TObject);
begin
bbCusMer.Enabled:=false;
Application.Createform(TFrm_LucroPed, Frm_LucroPed);
Frm_LucroPed.MCODEMP.Text:=DM6.Tb_PedBlqP1CODEMP.AsString;
Frm_LucroPed.chave.Text:=DM6.Tb_PedBlqP1CHAVE.AsString;
Frm_LucroPed.atualiza.Click;
Frm_LucroPed.ShowModal;
Frm_LucroPed.Free;
bbCusMer.Enabled:=true;
end;

procedure TFrm_PedBloq.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=fdeixanum2(CHAVEI.Text);

end;

procedure TFrm_PedBloq.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=fdeixanum2(CHAVEF.Text);
end;


procedure TFrm_PedBloq.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Frm_PVO.Free;
Frm_PVO:=nil;
{
DM1.Qr_PedBlq.Close;
DM1.Qr_PedBlq.SQL.Clear;
DM1.Qr_PedBlq.SQL.Add('Select count(*) from CADP01 '
                     +' where ((P1CODEMP=0'+IntToStr(codemp)+') or (P1CODEMP='
                     +inttoStr(iif(codemp>100,codemp-100,codemp+100))+')) '
                     +' and  (P1BLOQPEND>1 or P1STATUS<2)'
                     +' and  P1STATUS<'+mstatus_excluido+' ');
DM1.Qr_PedBlq.Open;
mQtdPedBlq:=DM1.Qr_PedBlq.fields[0].AsInteger;
}
end;

procedure TFrm_PedBloq.MCODUSRExit(Sender: TObject);
begin
NOMUSR.Text:='';
MCODUSR.Text:=fdeixanum2(MCODUSR.Text);
if (MCODUSR.Text='1111') and (codusr=1111) then
   NOMUSR.Text:='Programador(Master)'
else
   begin
   if flcadusr(1,0,Trim(MCODUSR.Text)) then
      NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value
   else
      begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      MCODUSR.SetFocus;
      end;
   end;

end;

procedure TFrm_PedBloq.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_PedBloq',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PedBloq.bbLiberarClick(Sender: TObject);
var
x: Integer;
mAnvisa: Boolean;

begin
if DM6.Tb_PedBlqP1CHAVE.IsNull then
   exit;
bbLiberar.Enabled:=false;
if not flcadcli(1,0,DM6.Tb_PedblqP1CODCLI.AsString) then
   begin
   fmensagem('Erro ao Ler o Arquivo de Clientes!',0,['0'],0);
   bbLiberar.Enabled:=true;
   exit;
   end;

mAnvisa:=false;
mboolean:=false;
if length(DM6.Tb_PedBlqP1CODBLOQ.AsString)>1 then
   x:=1
else
   x:=1;
While x<length(DM6.Tb_PedBlqP1CODBLOQ.AsString) do
   begin
   mcinst2:=copy(DM6.Tb_PedBlqP1CODBLOQ.Value,x,2);
   if fAdicionaRemoveTexto(2,DM6.Tb_PedBlqP1CODBLOQ_LIB.AsString,mcinst2)='' then
      begin
      if ValInt(mcinst2)=1 then
         mboolean:=true
      else if ValInt(mcinst2)=2 then
         mboolean:=true
      else if ValInt(mcinst2)=3 then
         mboolean:=true
      else if ValInt(mcinst2)=4 then
         mboolean:=true
      else if ValInt(mcinst2)=5 then
         begin
         if DM1.Tb_CliCSITCLI.AsInteger>0 then
            mboolean:=true;
         end
      else if ValInt(mcinst2)=6 then
         begin
         if trim(DM1.Tb_CliCNALV.AsString)='' then
            begin
            mboolean:=true;
            mAnvisa :=true;
            end;
         end
      else if ValInt(mcinst2)=7 then
         begin
         if (DM1.Tb_CliCDTVALV.IsNull) or (DM1.Tb_CliCDTVALV.AsDateTime<date) then
            begin
            mboolean:=true;
            mAnvisa :=true;
            end;
         end
      else if ValInt(mcinst2)=8 then
         begin
         if trim(DM1.Tb_CliCNANVISA.AsString)='' then
            begin
            mboolean:=true;
            mAnvisa :=true;
            end;
         end
      else if ValInt(mcinst2)=9 then
         begin
         if (DM1.Tb_CliCDTANVISA.IsNull) or (DM1.Tb_CliCDTANVISA.AsDateTime<date) then
            begin
            mboolean:=true;
            mAnvisa :=true;
            end;
         end
      else if ValInt(mcinst2)=10 then
         mboolean:=true
      else if ValInt(mcinst2)=20 then
         mboolean:=true
      else if ValInt(mcinst2)=30 then
         mboolean:=true
      else
         mboolean:=true
      end;
   x:=x+3;
   end;
if not mboolean then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP01 SET P1QTDMAN=P1QTDMAN+1, P1CODBLOQ_LIB='+chr(39)+DM6.Tb_PedBlqP1CODBLOQ.AsString+chr(39)
                     +' ,P1BLOQPEND=1, P1CODUSR_LBLOQ=0'+fdeixanum(MCODUSR.Text)
                     +' where ');
   if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
      DM1.Query1.SQL.Add('(P1CODEMP=0'+DM6.Tb_PedBlqP1CODEMP.AsString+' or P1CODEMP='+IntToStr(iif(DM1.Tb_Ped01P1CODEMP.AsInteger>100,DM1.Tb_Ped01P1CODEMP.AsInteger-100,DM1.Tb_Ped01P1CODEMP.AsInteger+100))+' ) and ');
   DM1.Query1.SQL.Add(' P1LOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                     +' and P1CHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
//   fmensagem('Cliente com Cadastro ja Atualizado. Pedido Liberado para Faturamento!',1,['0'],0);
//   bbAtualizarClick(self);
//   exit;
   end;

if mAnvisa then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.Add('Select P2QTD,P2CODPRO,PDNOME,PDUND,PDCODCON,PDNOMCON from '
                     +' CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                     +' PDCODCON>0 '
                     +' and P2LOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                     +' and P2CHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString);
//   DM1.Query4.SQL.SAVETOFILE('C:\SQL.TXT');
   DM1.Query4.Open;

   mcinst4:='';
   if not DM1.Query4.IsEmpty then
      begin
      While not DM1.Query4.Eof do
         begin
         if trim(mcinst4)='' then
            mcinst4:=mcinst4+DM1.Query4.fieldbyName('PDNOME').AsString+' '+DM1.Query4.fieldbyName('PDNOMCON').AsString
         else
            mcinst4:=mcinst4+chr(13)+DM1.Query4.fieldbyName('PDNOME').AsString+' '+DM1.Query4.fieldbyName('PDNOMCON').AsString;
         DM1.Query4.Next;
         end;
      fmensagem_Barrar('Produtos: '+mcinst4+#13+' Nao Pode Ser Vendido com alvara vencido',0);
      exit;
      end;
   end;


if trim(MCODUSR.Text)='' then
   begin
   FMensagem('Favor Dgitar o Código do Usuário!',0,['0'],0);
   MCODUSR.SetFocus;
   bbLiberar.Enabled:=true;
   exit;
   end;
if Trim(SENHA.Text)='' then
   begin
   fmensagem('Favor Digitar uma Senha válida!',0,['0'],0);
   bbLiberar.Enabled:=true;
   exit;
   end;
flcadpar02(17,0,ValInt(MCODUSR.Text),DM4.Tb_LSenLSCODTAB.AsString);
if (Crip(SENHA.Text,ValInt(MCODUSR.Text))=DM4.Tb_Par02PA2SENHA.Value)
//if (Crip(SENHA.Text,DM4.Tb_LSenLSCODTAB.AsInteger)=DM4.Tb_Par02PA2SENHA.Value)
   or (Crip(SENHA.Text,0)=DM4.Tb_Par02senhageral.Value) or
   smaster(SENHA.Text) then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   mcinst2:='(P1CODEMP=0'+DM6.Tb_PedBlqP1CODEMP.AsString+' or P1CODEMP=0'
            +FloatToStr(iif(DM6.Tb_PedBlqP1CODEMP.asFloat>100,
                            DM6.Tb_PedBlqP1CODEMP.Asfloat-100,
                            DM6.Tb_PedBlqP1CODEMP.AsFloat+100))+')';
   DM1.Query1.SQL.Add('Update CADP01 SET P1QTDMAN=P1QTDMAN+1, P1CODBLOQ_LIB='+chr(39)+DM6.Tb_PedBlqP1CODBLOQ.AsString+chr(39)
                     +' ,P1BLOQPEND=1, P1CODUSR_LBLOQ=0'+fdeixanum(MCODUSR.Text)
                     +' where '+iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'', mcinst2+' and ')
                     +' P1LOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                     +' and P1CHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   if DM4.Tb_Par01PONLINE_LSEP.Value=1 then
      begin
      if not flcadp01(0, DM6.Tb_PedbLQP1CODEMP.AsInteger, DM6.Tb_PedbLQP1LOTSEQ.AsInteger
                  ,DM6.Tb_PedbLQP1CHAVE.AsString,'') then
         begin
         fMensagem('Erro ao Localizar o Pedido: '+DM6.Tb_PedbLQP1CHAVE.AsString,0,['0'],0);
         exit;
         end
      else if DM1.Tb_Ped01P1STATUS.Value<1 then
         begin
         if DM4.Tb_Par01PONLINE_LSEP_CONF.AsInteger=1 then
            begin
            if fmensagem('Confirma a emissao da lista de separacao?',0,['1','2'],2)=mrYes  then
               begin
               FPedEmiteNf(0,3,0,DM6.Tb_PedBlqP1LOTSEQ.AsInteger,
                  DM6.Tb_PedBlqP1CHAVE.AsInteger,
                  DM6.Tb_PedBlqP1ORDEM.AsInteger,
                  DM6.Tb_PedBlqP1CODEMP.AsInteger,1,
                  DM6.Tb_PedBlqP1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
               DM1.Query1.Close;
               DM1.Query1.SQl.clear;
               DM1.Query1.Sql.add('Update CADP01 set P1STATUS=1 '
                           +iif(DM6.Tb_PedBlqP1TIPO.AsInteger=9,', P1EMIDOC=1, P1DATDOC='+chr(39)+FormatDateTime(fdt, date)+chr(39),'')
                           +' where '
                           +'(P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+' )'
                           +' and P1LOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                           +' and P1CHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString
                           +' and P1STATUS=0');

               Try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  ex_erroSql(01,8291,'Frm_pedcli','CADP01');
                  end;
               DM1.Query1.Close;
               end;
            end
         else
            begin
            FPedEmiteNf(0,3,0,DM6.Tb_PedBlqP1LOTSEQ.AsInteger,
                     DM6.Tb_PedBlqP1CHAVE.AsInteger,
                  DM6.Tb_PedBlqP1ORDEM.AsInteger,
                  DM6.Tb_PedBlqP1CODEMP.AsInteger,1,
                  DM6.Tb_PedBlqP1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
            DM1.Query1.Close;
            DM1.Query1.SQl.clear;
            DM1.Query1.Sql.add('Update CADP01 set P1STATUS=1 '
                        +iif(DM6.Tb_PedBlqP1TIPO.AsInteger=9,', P1EMIDOC=1, P1DATDOC='+chr(39)+FormatDateTime(fdt, date)+chr(39),'')
                        +' where '
                        +'(P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+' )'
                        +' and P1LOTSEQ=0'+DM6.Tb_PedBlqP1LOTSEQ.AsString
                        +' and P1CHAVE=0'+DM6.Tb_PedBlqP1CHAVE.AsString
                        +' and P1STATUS=0');

            Try
              DM1.Query1.ExecSQL;
              fdm1StartCommit;
            except
               ex_erroSql(01,8291,'Frm_pedbloq','CADP01');
               end;
            DM1.Query1.Close;
            end;
         end;
      end
   else
      begin
      fmensagem('Pedido Liberado para Faturamento!',1,['0'],0);
      end;
   DM6.Tb_PedBlq.Next;
   if DM6.Tb_pedblq.eof then
      begin
      bbAtualizarClick(self);
      DM6.Tb_PedBlq.Last;
      end
   else
      begin
      mPosicao_ChavePed:=DM6.Tb_PedBlqP1CHAVE.AsFloat;
      bbAtualizarClick(self);
      DM6.Tb_PedBlq.Locate('P1CHAVE',mPosicao_ChavePed,[]);
      end;
   if not cb_manter_senha.Checked then
      SENHA.Text:='';
   end
else
   begin
   FMensagem('Senha Inválida!',0,['0'],0);
   bbLiberar.Enabled:=true;
   exit;
   end;

bbLiberar.Enabled:=true;


end;

procedure TFrm_PedBloq.bbSitCredClick(Sender: TObject);
begin
bbSitCred.Enabled:=false;
if DM6.Tb_PedBlqP1CODCLI.AsFloat<>0 then
   begin
   if Frm_SitCre=nil then
      Application.CreateForm(TFrm_SitCre, Frm_SitCre)
   else
      begin
      Frm_SitCre.free;
      Frm_SitCre:=nil;
      Application.CreateForm(TFrm_SitCre, Frm_SitCre)
      end;
   Frm_SitCre.CODCLI.Text:=DM6.Tb_PedBlqP1CODCLI.AsString;
   Frm_Sitcre.BBAPLICAR.Click;
   Frm_SitCre.Show;
   end;
bbSitCred.Enabled:=true;
end;

procedure TFrm_PedBloq.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_PEDBLOQ','');
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_PEDBLOQ',IntTostr(RG_TIPOPED.ItemIndex));
fGravaPadroes(codusr,'CB_VALE'             ,'checked'   ,'_PEDBLOQ',iif(CB_VALE.Checked,'true','false'));

Fmensagem('Gravado',0,['0'],0);end;

procedure TFrm_PedBloq.bbimprimirClick(Sender: TObject);
var
mtotal: Real;
begin
if DM6.Tb_PedBlq.IsEmpty then
   begin
   fmensagem('Nada a Ser Impresso!',0,['0'],0);
   exit;
   end;
bbimprimir.Enabled:=false;
RDprint1.FonteTamanhoPadrao:=S10cpp;
RDprint1.TamanhoQteColunas:=136;
RDprint1.TamanhoQteLinhas :=66;
RDprint1.TamanhoQteLPP  :=Seis;
RDprint1.OpcoesPreview.Preview:=False;
RDprint1.SetPrinterbyName(impressora_padrao(0));
RDprint1.Abrir;

//fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
mtotal:=0;
DM6.Tb_PedBlq.First;
While not DM6.Tb_pedBlq.Eof do
   begin
//   mtotal:=mtotal+DM6.Tb_PedBlqP1TOTALL.Value;
   if mlin=0 then
      begin
      mpag:=mpag+1;
      RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO_CAB.Value,mnormal);
      RDprint1.ImpF(01,60,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      mlin:=2;
      RDprint1.ImpF(02,01,'Relatorio de Pedidos. '+fperiodo(0,MDT1.Text,MDT2.Text),mnormal);
      RDprint1.ImpF(02,60,'Data: '+FormatDateTime(fdt2, date),mnormal);
      if RG_TIPOPED.ItemIndex=0 then
         mcinst4:='Pedidos Bloqueados e Pendentes'
      else if RG_TIPOPED.ItemIndex=1 then
         mcinst4:='Pedidos Bloqueados'
      else if RG_TIPOPED.ItemIndex=2 then
         mcinst4:='Pedidos Pendentes'
      else if RG_TIPOPED.ItemIndex=3 then
         mcinst4:='Pedidos s/Restricao'
      else
         mcinst4:='Todos os tipos de Pedidos';
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,centra(mcinst4,' ',80),mneg);
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,insere('-','-',80),mnormal);
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'Pedido   Dt.Pedid Cliente                              Cidade                    UF      Valor Vend. Tp.Pendencia Digitado(op/hora/data)',mreduz);

//Pedido   Dt.Pedid Cliente                              Cidade                    UF      Valor Vend. Tp.Pendencia Digitado(op/hora/data)
//1234567* 18/06/07 00587-123456789012345678901234567890 1234567890123456789012345 GOzZZZ.ZZ9,99 01001 Pendencias   00086 12:00 18/06/07

      end;
   mlin:=mlin+1;
   RDprint1.ImpF(mlin,01,insere(DM6.Tb_PedBlqP1CHAVE.AsString,'0',07)
                          +iif(DM6.Tb_PedblqP1CODEMP.Asinteger>100,'*',' ')
                          +' '+FormatDatetime(fdt3, DM6.Tb_PedBlqP1DATAP.Value)
                          +' '+insere(DM6.Tb_PedBlqP1CODCLI.AsString,'0',5)
                          +'-'+insere2(DM6.Tb_Pedblqrazsoc.value,' ',30)
                          +' '+Insere2(DM6.Tb_PedBlqcidade.Value,' ',25)
                          +' '+insere2(DM6.Tb_PedBlquf.Value,' ',02)
                          +insere(FormatFloat(mcasas, DM6.Tb_PedBlqP1TOTALL.Value),' ',11)
                          +' '
                          +insere(DM6.Tb_PedBlqP1CODVEN.AsString,'0',05)
                          +'  '+insere2(DM6.Tb_PedBlqpendencias.value,' ',13)
                          +' '+insere(DM6.Tb_PedBlqP1CODUSR.AsString,'0',05)
                          +' '+insere2(DM6.Tb_PedBlqP1HORADIG.AsString,' ',05)
                          +' '+FormatDatetime(fdt3, DM6.Tb_PedBlqP1DATAP.Value),mreduz);

   mtotal:=mtotal+DM6.Tb_PedBlqP1TOTALL.Value;
   DM6.Tb_PedbLQ.Next;
   if DM6.Tb_PedbLQ.Eof then
      begin
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,insere('Fim','-',80),mnormal);
      end
   else if mlin>61 then
      begin
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,insere('Continua...','-',80),mnormal);
      RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if mtotal<>0 then
   begin
   mlin:=mlin+1;
   RDprint1.ImpF(mlin,01,insere('- Total','.',82)
                          +insere(FormatFloat(mcasas,mTotal),' ',13),m12ccp);
   end;
if RDprint1.Setup then RDprint1.Fechar;
bbimprimir.Enabled:=true;

end;

procedure TFrm_PedBloq.bbEmitirNFClick(Sender: TObject);
var
x: Integer;
mcodemp,mnumnf: Real;
mdupacum,mcomp: String;
mannf_aceito, emitiu: Boolean;
pSerieNF,pModNF: string;

mTotserv: Real;
begin
if not flcadp01(0, DM6.Tb_PedbLQP1CODEMP.AsInteger, DM6.Tb_PedbLQP1LOTSEQ.AsInteger
               ,DM6.Tb_PedbLQP1CHAVE.AsString,'') then
   begin
   fMensagem('Erro ao Localizar o Pedido: '+DM6.Tb_PedbLQP1CHAVE.AsString,0,['0'],0);
   exit;
   end;
if DM1.Tb_Ped01P1TIPO.Asinteger=0 then
   begin
   fMensagem('Orçamento Favor Faturar!',0,['0'],0);
   exit;
   end;

if DM1.Tb_Ped01P1BLOQPEND.Value=2 then
   begin
   verteclado(0);
   Fmensagem('Este Pedido é Possui Restrições, verifique!',0,['0'],0);
   exit;
   end;



if (DM1.Tb_Ped01P1SITPED.Value = 1) and ( (DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
   and (trunc((now-DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1)) then
   begin
   mcinst2:=DM1.Tb_Ped01P1CODUSR.AsString+' - ';
   if DM1.Tb_Ped01P1CODUSR.AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,DM1.Tb_Ped01P1CODUSR.AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   mcinst := 'Este Pedido Sendo Alterado no Computador: '+DM1.Tb_Ped01P1COMP_ULTEVE.AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime);


   fMensagem(mcinst,0,['0'],0);
   exit;
   end;


if DM1.Tb_Ped01P1STATUS.Value>1 then
   begin
   verteclado(0);
   if fmensagem('Este Pedido ja Foi Emitido Nota Fiscal. Quer Reemitir?',0,['1','2'],2)=mrYes then
      begin
      FPedEmiteNf(0,0,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1CODEMP.AsInteger,0,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // Reemisao de Nota fiscal
      fmensagem('Impressão Concluida',0,['0'],0);
      bbAtualizarClick(self);
      end;
   exit;
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

     fCarregarPO99(DM1.Tb_Ped01P1TABPV.Value,DM1.Tb_Ped01P1CODEMP.Value,
                    DM1.Tb_Ped01P1LOTSEQ.Value,iif(DM1.Tb_Ped01P1TABPV.AsString='PO'
                    ,DM1.Tb_Ped01P1CHAVE.Value, DM1.Tb_Ped01P1CODPV.Value));

     fgvencto(iif(DM1.Tb_Ped01P1TABPV.Value='PP',1,0),DM1.Tb_Ped01P1CODEMP.AsInteger,
               DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,
                   DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1PRAZO.AsInteger,DM1.Tb_Ped01P1CODPV.AsInteger,
                   DM1.Tb_Ped01P1PVDDESCF.AsInteger,DM1.Tb_Ped01P1PVDIASDESCF.AsInteger,
                   DM1.Tb_Ped01P1TOTALL.Value,DM1.Tb_Ped01P1COMIS.Value,DM1.Tb_Ped01P1COMV02.Value,
                   DM1.Tb_Ped01P1COMV03.Value,
                   DM1.Tb_Ped01P1COMV03.Value,
                   DM1.Tb_Ped01P1COMISS.Value,DM1.Tb_Ped01P1COMIST.Value,DM1.Tb_Ped01P1SEMCOM.Value,
                   DM1.Tb_Ped01P1COMASSE.Value,
                   DM1.Tb_Ped01P1ICMSR.Value,
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
                   DM1.Tb_Ped01submod.Value,
                   date,
                   DM1.Tb_Ped01P1TABPV.Value);
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
   mcomp     :='';
   emitiu    :=true;
   pSerieNF:='';
   pModNF  :='';
   mnumnf:=fBuscarNUMNF(DM1.Tb_Ped01P1CODEMP.AsInteger,'SERIE'+IntToStr(dm1.Tb_Ped01P1CODSER.AsInteger+1),pSerieNF,pModNF,0);

   DM1.Tb_Ped01.Edit;
   DM1.Tb_Ped01P1NUMNF.Value :=mnumnf;
   DM1.Tb_Ped01P1DATANF.Value:=date;
   DM1.Tb_Ped01P1DATDOC.Value:=date;
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
               DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // Reemisao de Nota fiscal
   DM1.Tb_Ped01.Next;
   end;


fmensagem('Impressão Concluida',0,['0'],0);
bbAtualizarClick(self);

end;

procedure TFrm_PedBloq.bbEmitirListaSepClick(Sender: TObject);
var
mNivel: Integer;
mCodAnt: String;
begin
if not flcadp01(0, DM6.Tb_PedBlqP1CODEMP.AsInteger, DM6.Tb_PedBlqP1LOTSEQ.AsInteger,
       DM6.Tb_PedBlqP1CHAVE.AsString,'') then
   begin
   fMensagem('Erro ao Localizar o Pedido: '+DM6.Tb_PedBlqP1CHAVE.AsString,0,['0'],0);
   exit;
   end;
bbEmitirTodas.Enabled   :=false;
bbEmitirListaSep.Enabled:=false;

if DM1.Tb_Ped01P1BLOQPEND.Value=2 then
   begin
   verteclado(0);
   if Fmensagem('O Pedido: '+DM1.Tb_Ped01P1CHAVE.AsString+' Cliente: '+DM1.Tb_Ped01nomcli.Value+
                             ' Possui Restrições, Imprimir Mesmo Assim?',0,['1','2'],2)<>mrYes then
      begin
      bbEmitirTodas.Enabled   :=true;
      bbEmitirListaSep.Enabled:=true;
      exit;
      end;
   end;
While not DM1.Tb_Ped01.eof do
   begin
   mnivel:=0;
   if mcodant<>DM1.Tb_Ped01P1CHAVE.AsString then
      begin
      FPedEmiteNf(0,3,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1CODEMP.AsInteger,1,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
      if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
         FPedEmiteNf(0,5,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1CODEMP.AsInteger,1,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
      mcodant:=DM1.Tb_Ped01P1CHAVE.AsString;
      mnivel:=1;
      end;
   if mnivel=1 then
      begin
      if DM1.Tb_Ped01P1STATUS.AsInteger=0 then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQl.clear;
         DM1.Query1.Sql.add('Update CADP01 set P1STATUS='+iif(DM1.Tb_Ped01P1TIPO.AsInteger=0,'0','1')
                        +iif(DM1.Tb_Ped01P1TIPO.AsInteger=9,', P1EMIDOC=1, P1DATDOC='+chr(39)+FormatDateTime(fdt, date)+chr(39),'')
                        +' where '
                        +'(P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+' )'
                        +' and P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                        +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                        +' and P1STATUS=0');
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            end;
         end
      end;
   DM1.Query1.Close;
   DM1.Tb_Ped01.Next;
   end;
bbEmitirTodas.Enabled   :=true;
bbEmitirListaSep.Enabled:=true;

fmensagem('Impressão Concluida',0,['0'],0);
end;

procedure TFrm_PedBloq.bbEmitirTodasClick(Sender: TObject);
var
mNivel: Integer;
mCodAnt: String;
begin
bbEmitirTodas.Enabled   :=false;
bbEmitirListaSep.Enabled:=false;

DM6.Tb_PedBlq.First;
While not DM6.Tb_PedBlq.Eof do
   begin
   if DM6.Tb_PedBlqP1STATUS.asinteger>0 then
      begin
      DM6.Tb_PedBlq.Next;
      Continue;
      end;
   if DM6.Tb_PedblqP1TIPO.AsInteger<1 then
      begin
      DM6.Tb_PedBlq.Next;
      Continue;
      end;


   if not flcadp01(0, DM6.Tb_PedBlqP1CODEMP.AsInteger, DM6.Tb_PedBlqP1LOTSEQ.AsInteger,
      DM6.Tb_PedBlqP1CHAVE.AsString,'') then
      begin
      fMensagem('Erro ao Localizar o Pedido: '+DM6.Tb_PedBlqP1CHAVE.AsString,0,['0'],0);
      bbEmitirTodas.Enabled   :=true;
      bbEmitirListaSep.Enabled:=true;
      exit;
      end;
   if DM1.Tb_Ped01P1BLOQPEND.Value=2 then
      begin
      DM6.Tb_PedBlq.Next;
      Continue;
      end;
   While not DM1.Tb_Ped01.eof do
      begin
      if DM1.Tb_Ped01P1STATUS.asinteger>0 then
         begin
         DM1.Tb_Ped01.Next;
         Continue;
         end;

      mnivel:=0;
      if mcodant<>DM1.Tb_Ped01P1CHAVE.AsString then
         begin
         FPedEmiteNf(0,3,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1CODEMP.AsInteger,1,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
         if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
            FPedEmiteNf(0,5,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger,DM1.Tb_Ped01P1ORDEM.AsInteger,DM1.Tb_Ped01P1CODEMP.AsInteger,1,DM1.Tb_Ped01P1FORMACE.AsInteger,false,false,true,1,0,0); // lista de separacao
         mcodant:=DM1.Tb_Ped01P1CHAVE.AsString;
         mnivel:=1;
         end;
      if mnivel=1 then
         begin
         if DM1.Tb_Ped01P1STATUS.AsInteger=0 then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQl.clear;
            DM1.Query1.Sql.add('Update CADP01 set P1STATUS='+iif(DM1.Tb_Ped01P1TIPO.AsInteger=0,'0','1')
                           +iif(DM1.Tb_Ped01P1TIPO.AsInteger=9,', P1EMIDOC=1, P1DATDOC='+chr(39)+FormatDateTime(fdt, date)+chr(39),'')
                           +' where '
                           +'(P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+' )'
                           +' and P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                           +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                           +' and P1STATUS=0');
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               end;
            end;
         end;
      DM1.Query1.Close;
      DM1.Tb_Ped01.Next;
      end;
   DM6.Tb_PedBlq.Next;
   end;
bbEmitirListaSep.Enabled:=true;
bbEmitirTodas.Enabled   :=true;
fmensagem('Impressão Concluida',0,['0'],0);
bbAtualizarClick(self);
end;

procedure TFrm_PedBloq.BLOQPED_MINAVISOExit(Sender: TObject);
begin
BLOQPED_MINAVISO.Text:=fdeixanum2(BLOQPED_MINAVISO.Text);
edt_qtdmin.Text:=FloatToStr(ValFloat(BLOQPED_MINAVISO.Text)/1000);


if flparger(0,0,'1') then
   begin
   if DM1.Tb_PargerPBLOQPED_MINAVISO.AsInteger<>ValInt(BLOQPED_MINAVISO.Text) then
      begin
      DM1.Query1.close;
      DM1.Query1.sql.clear;
      DM1.Query1.SQL.Add('Update PARGER set PBLOQPED_MINAVISO=0'+Trim(BLOQPED_MINAVISO.Text));
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
      flparger(0,0,'1');
      end;
   end;

end;

procedure TFrm_PedBloq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PedBloq.CODTLVExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODTLV.Text:=fdeixanum2(CODTLV.Text);
if trim(CODTLV.Text)='' then
   NOMTLV.text:='Todos...'
else
   begin
   if not flcadusr(1,0,CODTLV.Text) then
      begin
      fmensagem('Televendas não Cadastrado!',0,['0'],0);
      CODTLV.SetFocus;
      end
   else
      NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;



end;

procedure TFrm_PedBloq.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_PedCli',Key);
   if valfloat(CODTLV.Text)<>0 then
      CODTLVExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_PedBloq.edt_qtdminExit(Sender: TObject);
begin
edt_qtdmin.Text:=FloatToStr(ValFloat(edt_qtdmin.Text));

BLOQPED_MINAVISO.Text:=IntTostr(round(valfloat(edt_qtdmin.Text)*1000));
BLOQPED_MINAVISOExit(self);
end;

procedure TFrm_PedBloq.FormKeyDown(Sender: TObject; var Key: Word;
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
