unit s_banco_legenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Buttons,ComObj;

type
  TFrm_banco_Legenda = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


    mNomeArquivo: string;
    mprocsub : array of array of string;
//    mprocsub : array [0..1] of string;

    function LerXls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
  end;

var
  Frm_banco_Legenda: TFrm_banco_Legenda;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_banco_Legenda.BitBtn1Click(Sender: TObject);
var
x_qtdlin: Integer;
x_qtdcol: integer;

x_lin: Integer;
x_col: integer;
excel: variant;

x_proc: integer;


begin
x_qtdlin:=StringGrid1.RowCount;
x_qtdcol:=StringGrid1.ColCount;





excel := CreateOleObject('Excel.Application');

excel.Workbooks.Open(mNomeArquivo);

    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
//    Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

//excel.Workbooks.add(1);
excel.Cells.Select;
//excel.Selection.NumberFormat := '@';




for x_lin := 1 to x_qtdlin do
   begin
     for x_col := 1 to x_qtdcol do
        begin
        for x_proc:=0 to high(mprocsub) do
            begin
           if Pos(mprocsub[x_proc,0], StringGrid1.Cells[x_col-1,x_lin-1]) > 0 then
              begin
//            excel.cells[02,01] := 'TYETES'; // aqui são as colunas e linhas;
//            excel.cells[x_lin,x_col] := 'TYETES'; // aqui são as colunas e linhas;
//            sHOWMESSAGE('Linha '+inttostr(x_lin)+' coluna: '+Inttostr(x_col));
              excel.cells[x_lin,x_col]           := fSubstituirtexto(StringGrid1.Cells[x_col-1,x_lin-1],mprocsub[x_proc,0],mprocsub[x_proc,1]); // aqui são as colunas e linhas;
              StringGrid1.Cells[x_col-1,x_lin-1] := fSubstituirtexto(StringGrid1.Cells[x_col-1,x_lin-1],mprocsub[x_proc,0],mprocsub[x_proc,1]); // aqui são as colunas e linhas;
              end;
           end;
        end;
   end;
excel.columns.AutoFit;
excel.cells[1,1].Select;
excel.visible := true;



end;


function TFrm_Banco_Legenda.LerXls_To_StringGrid(AGrid: TStringGrid; AXLSFile: string): Boolean;
const
  xlCellTypeLastCell = $0000000B;
var
  XLApp, Sheet: OLEVariant;
  RangeMatrix: Variant;
  x, y, k, r,mqtdcol: Integer;
begin

  Result := False;
  // Create Excel-OLE Object
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;

    // Open the Workbook
    XLApp.Workbooks.Open(AXLSFile);

    // Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet := XLApp.Workbooks[ExtractFileName(AXLSFile)].WorkSheets[1];

    // In order to know the dimension of the WorkSheet, i.e the number of rows
    // and the number of columns, we activate the last non-empty cell of it

    try
    Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;
    except
      if not VarIsEmpty(XLApp) then
         begin
      // XLApp.DisplayAlerts := False;
         XLApp.Quit;
         XLAPP := Unassigned;
         Sheet := Unassigned;
         end;
       result:=false;
       exit;
       end;
    // Get the value of the last row
    x := XLApp.ActiveCell.Row;
    // Get the value of the last column
    y := XLApp.ActiveCell.Column;


    // Set Stringgrid's row &col dimensions.

    AGrid.RowCount := x;

    AGrid.ColCount := y;

    // Assign the Variant associated with the WorkSheet to the Delphi Variant

    RangeMatrix := XLApp.Range['A1', XLApp.Cells.Item[X, Y]].Value;
    //  Define the loop for filling in the TStringGrid
//    Gauge1.progress:= x;
    k := 1;
    repeat
      for r := 1 to y do
        begin
        try

//          AGrid.Cells[(r -1), (k+1)] := RangeMatrix[K, R];
          AGrid.Cells[(r - 1), (k - 1)] := RangeMatrix[K, R];
        except
          end;
        end;
      Inc(k, 1);
      AGrid.RowCount := k + 1;
    until k > x;
    // Unassign the Delphi Variant Matrix
    RangeMatrix := Unassigned;

  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
       XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
      Result := True;

    end;
  end;
//AGrid.FixedRows:=3;
end;



end.
