unit S_SLib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, func,  Buttons;

type
  TFrm_SLib = class(TForm)
    CODLIB: TEdit;
    SENLIB: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BBnOK: TBitBtn;
    BBnCancela: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SLib: TFrm_SLib;

implementation

{$R *.DFM}

procedure TFrm_SLib.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
