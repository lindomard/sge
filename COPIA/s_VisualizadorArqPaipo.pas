unit s_VisualizadorArqPaipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, DBClient,
  ComCtrls;

type
  TFrm_VisualizadorArqPaipo = class(TForm)
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    bbSair: TBitBtn;
    cds_arqpaipo: TClientDataSet;
    cds_arqpaipocampo: TIntegerField;
    DataSource1: TDataSource;
    cds_arqpaipovalor: TStringField;
    Label1: TLabel;
    edt_nome_tag: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    cds_arqpaipoorigem_campo: TStringField;
    opd1: TOpenDialog;
    BitBtn1: TBitBtn;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    cds_arqpaipovalor_linha2: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }


    procedure fLerArquivoPaipo(pNomeArquivo: String);
    procedure fLerArquivoPaipoComparaLinha1c2(pNomeArquivo: String);


    function fBuscarOrigemCampo(xPaipo: integer): string;

  public
    { Public declarations }

  end;

var
  Frm_VisualizadorArqPaipo: TFrm_VisualizadorArqPaipo;

implementation

uses Math, Func;

{$R *.dfm}

procedure TFrm_VisualizadorArqPaipo.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_VisualizadorArqPaipo.BitBtn2Click(Sender: TObject);
begin
if opd1.Execute then
   fLerArquivoPaipo(opd1.FileName);
end;


procedure TFrm_VisualizadorArqPaipo.fLerArquivoPaipo(pNomeArquivo: String);
var
f: TextFile;
xQtdPaipo: integer;
xPaipo: integer;
mLinha: string;
mAchouTag: boolean;
begin
If not cds_arqpaipo.Active then
   begin
   cds_arqpaipo.CreateDataSet;
   cds_arqpaipo.Open;
   end;
cds_arqpaipo.EmptyDataSet;
AssignFile(f,pNomeArquivo);
reset(f);
if trim(edt_nome_tag.text)='' then
   mAchouTag := true
else
   mAchouTag := false;

While not  eof(f) do
   begin
   readln(f,mlinha);
   if not mAchouTag then
      begin
      if fBuscarValor_paipo(1,mlinha)=edt_nome_tag.text then
         mAchouTag:=true
      else
         continue;
      end;
   xQtdPaipo := fQtd_Del_Par('|',mLinha);
   for xPaipo:=1 to xQtdPaipo do
      begin
      cds_arqpaipo.append;
      cds_arqpaipocampo.value := xPaipo;
      cds_arqpaipovalor.value := fBuscarValor_paipo(xPaipo,mlinha);
      cds_arqpaipoorigem_campo.value := fBuscarOrigemCampo(xPaipo);
      cds_arqpaipo.post;
      end;
   end;
closefile(f);

end;
function TFrm_VisualizadorArqPaipo.fBuscarOrigemCampo(xPaipo: integer): string;
var
xLin: integer;
xTam: integer;
begin
xTam:=memo1.Lines.Count;
for xLin:=1 to xTam do
   begin
   if trim(memo1.lines[xLin])='' then
      continue;
   if valint(fBuscarValor_paipo(1,memo1.lines[xLin]))=xPaipo then
      begin
      result := fBuscarValor_paipo(2,memo1.lines[xLin]);
      exit;
      end;
   end;
result:='';

end;




procedure TFrm_VisualizadorArqPaipo.fLerArquivoPaipoComparaLinha1c2(pNomeArquivo: String);
var
f: TextFile;
xQtdPaipo: integer;
xPaipo: integer;
mLinha01: string;
mLinha02: string;
begin
If not cds_arqpaipo.Active then
   begin
   cds_arqpaipo.CreateDataSet;
   cds_arqpaipo.Open;
   end;
cds_arqpaipo.EmptyDataSet;
AssignFile(f,pNomeArquivo);
reset(f);
readln(f,mlinha01);
readln(f,mlinha02);

xQtdPaipo := fQtd_Del_Par('|',mLinha01);
for xPaipo:=1 to xQtdPaipo do
   begin
   cds_arqpaipo.append;
   cds_arqpaipocampo.value        := xPaipo;
   cds_arqpaipovalor.value        := fBuscarValor_paipo(xPaipo,mlinha01);
   cds_arqpaipovalor_linha2.value := fBuscarValor_paipo(xPaipo,mlinha02);
   cds_arqpaipo.post;
   end;
closefile(f);

end;


procedure TFrm_VisualizadorArqPaipo.BitBtn1Click(Sender: TObject);
begin
if opd1.Execute then
   fLerArquivoPaipoComparaLinha1c2(opd1.FileName);

end;

end.
