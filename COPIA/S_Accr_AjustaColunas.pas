unit S_Accr_AjustaColunas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, StdCtrls, Buttons,func;

type
  TFrm_Accr_AjustaColunas = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    STG1: TStringGrid;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure STG1RowMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Accr_AjustaColunas: TFrm_Accr_AjustaColunas;

implementation

{$R *.dfm}

procedure TFrm_Accr_AjustaColunas.bbSairClick(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFrm_Accr_AjustaColunas.BitBtn1Click(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TFrm_Accr_AjustaColunas.STG1RowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
var
x: Integer;
begin
for x:=0 to STG1.RowCount do
   begin
   STG1.Cells[01,x]:=Inttostr(x);
   end;

end;

procedure TFrm_Accr_AjustaColunas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
