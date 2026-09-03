unit S_VisIns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, func, StdCtrls, Buttons, ExtCtrls;

type
  TFrm_VisIns = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_VisIns: TFrm_VisIns;

implementation

{$R *.dfm}

procedure TFrm_VisIns.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_VisIns.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
