unit S_Grafico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, BubbleCh, ArrowCha, Series, TeeShape, GanttCh,
  TeEngine, TeeProcs, Chart, DBChart, StdCtrls, Mask, Buttons, func,
  S_DM1, variants, ComCtrls, RLXLSFilter, RLRichFilter, RLHTMLFilter,
  RLFilters, RLPDFFilter, RLDraftFilter, RLReport;

type
  TFrm_Grafico = class(TForm)
    Tb_VPro: TQuery;
    Tb_VProTMANOMES: TStringField;
    Tb_VProTMVALOR: TFloatField;
    Tb_VPronome: TStringField;
    Panel2: TPanel;
    ESTILO: TBitBtn;
    IMPRIMIR: TBitBtn;
    SAIR: TBitBtn;
    cbxfundo: TCheckBox;
    bbImpGra: TBitBtn;
    PageControl1: TPageControl;
    tsGrafico: TTabSheet;
    tsRel: TTabSheet;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: THorizBarSeries;
    Series3: TLineSeries;
    Series4: TFastLineSeries;
    Series5: TAreaSeries;
    Series6: TPointSeries;
    Series7: TPieSeries;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    Matricial: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    Src_VPro: TDataSource;
    RLBand2: TRLBand;
    rlTitulo: TRLMemo;
    RLBand3: TRLBand;
    lblcab_periodo: TRLLabel;
    lblcab_qtd: TRLLabel;
    lbl_cabpqtd: TRLLabel;
    lbl_cabvalp: TRLLabel;
    lbl_cabval: TRLLabel;
    RLBand4: TRLBand;
    lbl_periodo: TRLDBText;
    lbl_qtd: TRLDBText;
    lbl_pqtd: TRLDBText;
    lbl_val: TRLDBText;
    lbl_valp: TRLDBText;
    Tb_VPropercentvlr: TFloatField;
    Tb_VPropercentqtd: TFloatField;
    Tb_VProTMTOTQTD: TFloatField;
    Tb_VProTMTOTVAL: TFloatField;
    RLBand5: TRLBand;
    lbltot_periodo: TRLLabel;
    lbl_totpqtd: TRLLabel;
    lbltot_qtd: TRLLabel;
    lbl_totval: TRLLabel;
    lbl_totvalp: TRLLabel;
    procedure SAIRClick(Sender: TObject);
    procedure ESTILOClick(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure cbxfundoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Tb_VProCalcFields(DataSet: TDataSet);
    procedure bbImpGraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Grafico: TFrm_Grafico;
  mitem: integer=0;
  mtotqtd: Real=0;
  mtotval: Real=0;
  mPar_Periodos: Boolean=False;

implementation

uses S_EstGrf, S_GPer, S_DM2;

{$R *.DFM}

procedure TFrm_Grafico.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Grafico.ESTILOClick(Sender: TObject);
var
  x: integer;
begin
if Frm_EstGrf=nil then
   Application.Createform(TFrm_EstGrf, Frm_EstGrf);
Frm_EstGrf.RgEstilo.ItemIndex:=mitem;

If Frm_EstGrf.ShowModal=mrOk then
   begin
   for x:=1 to DBChart1.SeriesCount do
      DBChart1.Series[x-1].Active:=False;
   DBChart1.Series[Frm_EstGrf.RgEstilo.ItemIndex].Active:=True;
   mitem:=Frm_EstGrf.RgEstilo.ItemIndex;
   end;
Frm_EstGrf.Free;
Frm_EstGrf:=nil;
DBChart1.View3DOptions.Orthogonal:=True;
end;
procedure TFrm_Grafico.IMPRIMIRClick(Sender: TObject);
begin
DBChart1.PrintLandscape;
end;

procedure TFrm_Grafico.cbxfundoClick(Sender: TObject);
begin
If CBxFundo.Checked then
   DBChart1.Gradient.EndColor:=clGreen
else
   DBChart1.Gradient.EndColor:=clWhite;
end;


procedure TFrm_Grafico.FormActivate(Sender: TObject);
begin
DBChart1.Gradient.EndColor:=clGreen

end;

procedure TFrm_Grafico.Tb_VProCalcFields(DataSet: TDataSet);
var
mes: Integer;
begin
if mPar_Periodos then
   begin
//   mes:=valint(Trim(copy(Tb_VProTMANOMES.Value,5,2)));
   mes:=ValInt(copy(fdeixanum(Tb_VProTMANOMES.AsString),3,2));
   if (mes>12) or (mes<1) then
      Tb_VPronome.Value:='Indefinido'
   else
      Tb_VPronome.Value:=copy(tabmes[mes],1,3);
   Tb_VPronome.Value:=Tb_VPronome.Value+'/'+copy(fdeixanum(Tb_VProTMANOMES.AsString),5,4);
   end
else
   Tb_VPronome.Value:=Tb_VProTMANOMES.Value;

if mtotval>0 then
   begin
   Tb_VPropercentvlr.Value:=(Tb_VProTMTOTVAL.Value*100)/mtotval;
   end;
if mtotqtd>0 then
   begin
   Tb_VPropercentqtd.Value:=(Tb_VProTMTOTQTD.Value*100)/mtotqtd;
   end;

end;

procedure TFrm_Grafico.bbImpGraClick(Sender: TObject);
var
x: Integer;
begin
Tb_VPro.First;
mtotqtd:=0;
mtotval:=0;
While not Tb_VPro.Eof do
   begin
   mtotqtd:=mtotqtd+Tb_VProTMTOTQTD.Value;
   mtotval:=mtotval+Tb_VProTMTOTVAL.Value;
   Tb_VPro.Next;
   end;
rlTitulo.Lines.Clear;
rlTitulo.Lines.Add(Frm_Grafico.Caption);

for x:=0 to DBChart1.Title.Text.Count-1 do
   begin
   rlTitulo.Lines.Add(DBChart1.Title.Text[x]);
   end;
Tb_VPro.First;
RLReport1.PreviewModal;

end;

procedure TFrm_Grafico.FormCreate(Sender: TObject);
begin
Tb_VPropercentvlr.DisplayFormat:=mcasas;
Tb_VPropercentqtd.DisplayFormat:=mcasas;
Tb_VProTMTOTQTD.DisplayFormat  :=mcasqtd;
Tb_VProTMTOTVAL.DisplayFormat  :=mcasas;
if codusr=1111 then
   tsRel.TabVisible:=true
else
   tsRel.TabVisible:=false;

end;


procedure TFrm_Grafico.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbltot_qtd.Caption :=FormatFloat(mcasqtd, mtotqtd);
lbl_totpqtd.Caption:=FormatFloat(mcasas, 100);
lbl_totval.Caption :=FormatFloat(mcasas, mtotval);
lbl_totvalp.Caption:=FormatFloat(mcasas, 100);

end;

procedure TFrm_Grafico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
