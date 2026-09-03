unit S_CodBarSeq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, RxMemDS, RLBarcode, RLReport,
  RLFilters, RLDraftFilter, RLPDFFilter, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFrm_CodBarSeq = class(TForm)
    PageControl1: TPageControl;
    tsCadastros: TTabSheet;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    edt_codini: TEdit;
    Label3: TLabel;
    edt_codfin: TEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLDBBarcode1: TRLDBBarcode;
    mem_etiqueta: TRxMemoryData;
    Src_Etiqueta: TDataSource;
    CB_VALORES: TCheckBox;
    lbl_tamanho: TLabel;
    edt_tamcod: TEdit;
    CB_ZEROESQ: TCheckBox;
    mem_etiquetaCODBAR: TStringField;
    Label4: TLabel;
    CB_TIPOCODBAR: TComboBox;
    RLPDFFilter1: TRLPDFFilter;
    btn_imprimir: TButton;
    Valores: TDBGrid;
    Nav_Valores: TDBNavigator;
    procedure bbSairClick(Sender: TObject);
    procedure edt_codiniExit(Sender: TObject);
    procedure edt_codfinExit(Sender: TObject);
    procedure edt_tamcodExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_adicionarClick(Sender: TObject);
    procedure ValoresDblClick(Sender: TObject);
    procedure mem_etiquetaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CodBarSeq: TFrm_CodBarSeq;

implementation

uses Func, Math;

{$R *.dfm}

procedure TFrm_CodBarSeq.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CodBarSeq.edt_codiniExit(Sender: TObject);
begin
edt_codini.Text:=fdeixanum2(edt_codini.Text);
end;

procedure TFrm_CodBarSeq.edt_codfinExit(Sender: TObject);
begin
edt_codfin.Text:=fdeixanum2(edt_codfin.Text);
end;

procedure TFrm_CodBarSeq.edt_tamcodExit(Sender: TObject);
begin
edt_tamcod.Text:=fdeixanum2(edt_tamcod.Text);
end;

procedure TFrm_CodBarSeq.bbImprimirClick(Sender: TObject);
var
mTam,mCodIni,mCodFin: Real;
X,mDif : integer;
mInserir: String;
begin
if fsonumero(edt_codfin.Text)<=0 then
   begin
   MessageDlg('Favor Digitar o Código Final',mtWarning,[mbOk],0);
   edt_codfin.SetFocus;
   exit;
   end;
if fsonumero(edt_codini.Text)<=0 then
   edt_codini.Text:='1';
if fsonumero(edt_codini.Text)>fsonumero(edt_codfin.Text) then
   begin
   MessageDlg('Codigo Inicial Maior que o Código Final!',mtWarning,[mbok],0);
   edt_codini.SetFocus;
   exit;
   end;
if fsonumero(edt_tamcod.Text)<=0 then
   edt_tamcod.Text:='10';
mTam:=fsonumero(edt_tamcod.Text);
mCodIni:=fsonumero(edt_codini.Text);
mCodFin:=fsonumero(edt_codfin.Text);
mDif:=Round(mCodfin)-Round(mcodIni);

mem_etiqueta.close;
mem_etiqueta.Open;
{if CB_ZEROESQ.Checked then
   mInserir:='0'
else
   mInserir:=' ';}
for X:=0 to mDif do
   begin
   mem_etiqueta.Append;
   mem_etiquetaCODBAR.Value:=FloatToStr(mCodIni+X);
   //mem_etiquetaCODBAR.Value:=Insere(IntToStr(mCodIni),minserir[1],mtam);
   mem_etiqueta.Post;
   end;
if CB_VALORES.Checked then
   RLDBBarcode1.ShowText:=boCode
else
   RLDBBarcode1.ShowText:=boNone;
if CB_TIPOCODBAR.ItemIndex=3 then
   RLDBBarcode1.BarcodeType:=bcEAN8
else if CB_TIPOCODBAR.ItemIndex=2 then
   RLDBBarcode1.BarcodeType:=bcEAN13
else if CB_TIPOCODBAR.ItemIndex=1 then
   RLDBBarcode1.BarcodeType:=bcCode39
else
   RLDBBarcode1.BarcodeType:=bcCode2OF5Interleaved;

RLReport1.PreviewModal;


end;

procedure TFrm_CodBarSeq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CodBarSeq.FormCreate(Sender: TObject);
begin
if codusr<>1111 then
  begin
  Nav_Valores.Visible :=False;
  btn_imprimir.Visible:=False;
  Valores.Visible:=False;
  mem_etiqueta.close;
  mem_etiqueta.Open;  
  end;
    
tsRelatorio.TabVisible:=false;
end;

procedure TFrm_CodBarSeq.btn_imprimirClick(Sender: TObject);
begin
if CB_VALORES.Checked then
   RLDBBarcode1.ShowText:=boCode
else
   RLDBBarcode1.ShowText:=boNone;
if CB_TIPOCODBAR.ItemIndex=3 then
   RLDBBarcode1.BarcodeType:=bcEAN8
else if CB_TIPOCODBAR.ItemIndex=2 then
   RLDBBarcode1.BarcodeType:=bcEAN13
else if CB_TIPOCODBAR.ItemIndex=1 then
   RLDBBarcode1.BarcodeType:=bcCode39
else
   RLDBBarcode1.BarcodeType:=bcCode2OF5Interleaved;

RLReport1.PreviewModal;

end;

procedure TFrm_CodBarSeq.btn_adicionarClick(Sender: TObject);
begin
{if fsonumero(edt_codini.Text)<=0 then
   edt_codini.Text:='1';

if fsonumero(edt_tamcod.Text)<=0 then
   edt_tamcod.Text:='10';

mem_etiqueta.Append;
if CB_ZEROESQ.Checked then
  mem_etiquetaCODBAR.Value:=Insere(edt_codini.Text,'0',ValInt(edt_tamcod.Text))
else
  mem_etiquetaCODBAR.Value:=Insere(edt_codini.Text,' ',ValInt(edt_tamcod.Text));
mem_etiqueta.Post;   }

end;

procedure TFrm_CodBarSeq.ValoresDblClick(Sender: TObject);
begin
if mem_etiqueta.Active=False then
  begin
  mem_etiqueta.close;
  mem_etiqueta.Open;
  end;
end;

procedure TFrm_CodBarSeq.mem_etiquetaBeforePost(DataSet: TDataSet);
begin
if CB_ZEROESQ.Checked then
   mem_etiquetaCODBAR.Value:=Insere(mem_etiquetaCODBAR.AsString,'0',ValInt(edt_tamcod.Text))
else
   mem_etiquetaCODBAR.Value:=Insere(mem_etiquetaCODBAR.AsString,' ',ValInt(edt_tamcod.Text));
end;

end.
