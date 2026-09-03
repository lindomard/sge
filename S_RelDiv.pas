unit S_RelDiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFrm_RelDiv = class(TForm)
    Memo_div: TMemo;
    Panel1: TPanel;
    bbSair: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelDiv: TFrm_RelDiv;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_RelDiv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RelDiv.bbSairClick(Sender: TObject);
begin
close;
end;

end.
