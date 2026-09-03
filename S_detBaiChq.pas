unit S_detBaiChq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func;

type
  TFrm_DetBaiChq = class(TForm)
    Memo1: TMemo;
    BBSAIR: TBitBtn;
    procedure BBSAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DetBaiChq: TFrm_DetBaiChq;

implementation

{$R *.dfm}

procedure TFrm_DetBaiChq.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DetBaiChq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
