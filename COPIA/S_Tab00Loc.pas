unit S_Tab00Loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,func;

type
  TFrm_Tab00Loc = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tab00Loc: TFrm_Tab00Loc;

implementation

{$R *.dfm}

procedure TFrm_Tab00Loc.BitBtn2Click(Sender: TObject);
begin
modalresult:=mrCancel;

end;

procedure TFrm_Tab00Loc.BitBtn1Click(Sender: TObject);
begin
modalresult:=mrOk;

end;

procedure TFrm_Tab00Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
