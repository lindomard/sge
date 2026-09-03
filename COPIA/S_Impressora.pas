unit S_Impressora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, Printers, WinSpool,
  ToolEdit, CurrEdit;

type
  TFrm_Impressora = class(TForm)
    Label1: TLabel;
    cb_Impressoras: TComboBox;
    bb_Imprimir: TBitBtn;
    Label2: TLabel;
    cQtd: TCurrencyEdit;
    bb_Cancelar: TBitBtn;
    procedure bb_CancelarClick(Sender: TObject);
    procedure bb_ImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Porta: String;
  QtdImpress: Integer;
  end;

var
  Frm_Impressora: TFrm_Impressora;

implementation

uses func, S_DM1;

{$R *.dfm}

procedure TFrm_Impressora.bb_CancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Impressora.bb_ImprimirClick(Sender: TObject);
var
  PrnHandle :THandle;
  PrnInfo2 :PPRINTERINFO2;
  PrnInfoSize :DWord;
begin
if OpenPrinter(PChar(cb_Impressoras.Items[cb_Impressoras.ItemIndex]), PrnHandle, nil) then
  begin
  GetPrinter(PrnHandle, 2, nil, 0, @PrnInfoSize);
  PrnInfo2 := AllocMem(PrnInfoSize);
  if GetPrinter(PrnHandle, 2, PrnInfo2, PrnInfoSize, @PrnInfoSize) then
    begin
    if trim(PrnInfo2^.pServerName)<>'' then
      Porta := PrnInfo2^.pServerName +'\';
    if trim(PrnInfo2^.pShareName)<>'' then
      Porta := Porta + PrnInfo2^.pShareName;
    QtdImpress := StrToInt(cQtd.Text);
    end
  else
    begin
    Porta := '';
    QtdImpress := 0;
    end;
  ClosePrinter(PrnHandle);
  FreeMem(PrnInfo2, PrnInfoSize)
  end
else
  begin
  Porta:='';
  QtdImpress:=0;
  end;
close;
end;

procedure TFrm_Impressora.FormCreate(Sender: TObject);
var
  i: Integer;
  Printer: TPrinter;
begin
Printer:=TPrinter.Create;
try
  for i := 0 to Printer.Printers. Count - 1 do
    begin
    cb_Impressoras.Items. Add(Printer. Printers. Strings[i] );
    cb_Impressoras.ItemIndex:=0;
    end;
finally
  Printer.free;
  end;
end;

end.
