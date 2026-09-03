unit s_VoltaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CheckLst, ComCtrls, DB, DBTables,
  RLReport;

type
  TFrm_VoltaEstoque = class(TForm)
    PageControl1: TPageControl;
    tsFiltro: TTabSheet;
    Label2: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label1: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TIP: TCheckBox;
    lbx_codgru: TListBox;
    CODGRU: TEdit;
    OMITIR_GRU: TCheckBox;
    Label8: TLabel;
    Label7: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    lbx_codram: TListBox;
    CODRAM: TEdit;
    Label9: TLabel;
    OMITIR_RAM: TCheckBox;
    Label20: TLabel;
    edt_marca: TEdit;
    Label11: TLabel;
    CLBNivel: TCheckListBox;
    Label14: TLabel;
    CLBStatus: TCheckListBox;
    CLBEstoque: TCheckListBox;
    Label15: TLabel;
    Label3: TLabel;
    DataE: TDateEdit;
    btnExecutar: TButton;
    btnSair: TButton;
    btnImprimir: TButton;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    rlCodigo: TRLLabel;
    RLDBText1: TRLDBText;
    Query1: TQuery;
    Query2: TQuery;
    Query1PDCODPRO: TFloatField;
    Query1PDNOME: TStringField;
    Query1PDUND: TStringField;
    Query1PDSALDO: TFloatField;
    Query1CED_QTDDIA: TFloatField;
    DataSource1: TDataSource;
    rlNome: TRLLabel;
    rlund: TRLLabel;
    rlQtdAtual: TRLLabel;
    rlQtdDia: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    cb_somentediferente: TCheckBox;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_VoltaEstoque: TFrm_VoltaEstoque;

implementation

uses Func2, Func, lerarq, S_DM1;

{$R *.dfm}

procedure TFrm_VoltaEstoque.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_VoltaEstoque.FormCreate(Sender: TObject);
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

procedure TFrm_VoltaEstoque.btnImprimirClick(Sender: TObject);
begin
if Trim(DataE.Text)='/  /' then
  begin
  fmensagem('Favor Inserir uma Data Valida!',0,['0'],0);
  DataE.SetFocus;
  Exit;
  end;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' SELECT PDCODPRO, PDNOME, PDUND, PDSALDO, '
              +' CED_QTDDIA'+FormatDateTime('DD',DataE.Date)+' AS CED_QTDDIA '
              +' FROM CADPRO, CADEDIA '
              +' WHERE PDCODPRO=CED_CODPRO AND PDCODEMP=CED_CODEMP AND '
              +' CED_ANO='+FormatDateTime('YYYY',DataE.Date)
              +' AND CED_MES='+FormatDateTime('MM',DataE.Date)
              +' AND PDSTATUS<9 ');
if cb_somentediferente.Checked then
  Query1.SQL.Add(' and PDSALDO<>CED_QTDDIA'+FormatDateTime('DD',DataE.Date));

Query1.SQL.Add(iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp)));

mcinst:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODPRO '+mcinst);

mcinst:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODTIP '+mcinst);

mcinst:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODGRU '+mcinst);

mcinst:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODCON '+mcinst);

mcinst:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODRAM '+mcinst2);

if Trim(edt_marca.Text)<>'' then
  Query1.SQL.Add(' and PDMARCA like '+QuotedStr('%'+edt_marca.Text+'%'));

mcinst:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDNIVEL '+mcinst);

mcinst:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDSTATUS '+mcinst);

mcinst:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and  '+mcinst);

Query1.SQL.Add(' ORDER BY PDNOME ');
Query1.Open;
RLReport1.PreviewModal;
end;

procedure TFrm_VoltaEstoque.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);
end;

procedure TFrm_VoltaEstoque.btnExecutarClick(Sender: TObject);
begin

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' UPDATE CADPRO SET PDSALDO=( SELECT CED_QTDDIA'+FormatDateTime('DD',DataE.Date)+' FROM CADEDIA '
              +' WHERE CED_CODPRO=PDCODPRO AND CED_CODEMP=PDCODEMP AND '
              +' CED_ANO='+FormatDateTime('YYYY',DataE.Date)
              +' AND CED_MES='+FormatDateTime('MM',DataE.Date));
if cb_somentediferente.Checked then
  Query1.SQL.Add(' and CED_QTDDIA'+FormatDateTime('DD',DataE.Date)+'<>PDSALDO)');

Query1.SQL.Add(' where PDCODPRO is not null ');

Query1.SQL.Add(iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp)));

mcinst:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODPRO '+mcinst);

mcinst:=fItensListBox(0,lbx_codtip,OMITIR_TIP);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODTIP '+mcinst);

mcinst:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODGRU '+mcinst);

mcinst:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODCON '+mcinst);

mcinst:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDCODRAM '+mcinst2);

if Trim(edt_marca.Text)<>'' then
  Query1.SQL.Add(' and PDMARCA like '+QuotedStr('%'+edt_marca.Text+'%'));

mcinst:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDNIVEL '+mcinst);

mcinst:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and PDSTATUS '+mcinst);

mcinst:=fInstrucaoEstoque(CLBEstoque,'PDSALDO');
if trim(mcinst)<>'' then
  Query1.SQL.Add(' and  '+mcinst);
try
  Query1.ExecSQL;
except
  Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
  end;


Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' UPDATE CADEST SET CESALDO=( SELECT PDSALDO FROM CADPRO ');
Query1.SQL.Add(' WHERE PDCODPRO=CECODPRO ');
Query1.SQL.Add(iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'',' and PDCODEMP=0'+IntToStr(codemp))+')');
Query1.SQL.Add(' ,CESALDO_PRAT=( ');
Query1.SQL.Add(' SELECT SUM(PDSALDO_PRAT) FROM CADPRO WHERE CECODPRO=PDCODPRO ');
Query1.SQL.Add(iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))+')');
Query1.SQL.Add(' ,CESALDO_REP=( ');
Query1.SQL.Add(' SELECT SUM(CESALDO_REP) FROM CADPRO WHERE PDCODPRO=CECODPRO ');
Query1.SQL.Add(iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))+')');
Query1.SQL.Add(' ,CESALDO_DEP=( ');
Query1.SQL.Add(' SELECT SUM(PDSALDO_DEP) FROM CADPRO WHERE PDCODPRO=CECODPRO ');
Query1.SQL.Add(iif(DM1.Qr_TID.locate('TINOME','CADEST',[]),'',' and PDCODEMP=0'+IntToStr(codemp))+')');
Query1.SQL.Add(iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' where CECODEMP=0'+IntToStr(codemp)));
try
  Query1.ExecSQL;
except
  Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
  end;

end;

end.
