unit s_Config_Impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,printers;

type
  TFrm_Config_Impressao = class(TForm)
    Label1: TLabel;
    cb_impressora: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Config_Impressao: TFrm_Config_Impressao;

implementation

{$R *.dfm}

procedure TFrm_Config_Impressao.FormCreate(Sender: TObject);
var
i: Integer;
begin
cb_impressora.Clear;
for i:=0 to printer.Printers.Count-1 do
   begin
   cb_impressora.Items.Add(printer.Printers[i]);
   end;
cb_impressora.Items.Add('Visualizar');


with cb_impressora do
    ItemIndex := Items.IndexOf('CutePDF Writer');
if (cb_impressora.Items.Count>1)  and (cb_impressora.ItemIndex<0) then
   cb_impressora.ItemIndex:=0;

end;

end.
