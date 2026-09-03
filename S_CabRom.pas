unit S_CabRom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func;

type
  TFrm_CabRom = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    razsoc: TEdit;
    nomfan: TEdit;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CabRom: TFrm_CabRom;

implementation

{$R *.dfm}

procedure TFrm_CabRom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
