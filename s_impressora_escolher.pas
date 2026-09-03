unit s_impressora_escolher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs,  ExtCtrls,
  StdCtrls, Buttons,printers, RxGIF, DB, DBTables ;

type
  Tfrm_impressora_escolher = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    cb_impressora: TComboBox;
    bbOk: TBitBtn;
    bbCancelar: TBitBtn;
    Query1: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    mimpressora_selecionada: string;
  end;

var
  frm_impressora_escolher: Tfrm_impressora_escolher;

implementation

uses S_DM1, Func, func_excecoes, lerarq;

{$R *.dfm}

procedure Tfrm_impressora_escolher.bbCancelarClick(Sender: TObject);
begin
mimpressora_selecionada:='';
close;

end;

procedure Tfrm_impressora_escolher.bbOkClick(Sender: TObject);
begin
mimpressora_selecionada:=cb_impressora.Text;
close;
end;

procedure Tfrm_impressora_escolher.FormCreate(Sender: TObject);
var
x_imp: integer;
mimpressoras: string;
begin
cb_impressora.Items.Clear;
cb_impressora.Items.Add('Visualizar');

for x_imp:=0 to printer.Printers.Count-1 do
   begin
   cb_impressora.Items.Add(printer.Printers[x_imp]);
   end;

cb_impressora.ItemIndex:=0;

mimpressoras:=fRetornaImpressoraPadraodoTerminal('NFCE');

if trim(mimpressoras)<>'' then
   begin
   with cb_impressora do
      ItemIndex := Items.IndexOf(mimpressoras);
   end;


end;



end.
