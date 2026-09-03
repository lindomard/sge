unit S_Tdet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,func;

type
  TFrm_TDet = class(TForm)
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TDet: TFrm_TDet;

implementation

{$R *.dfm}

procedure TFrm_TDet.BitBtn1Click(Sender: TObject);
begin
modalresult:=mrOk;
end;

procedure TFrm_TDet.BitBtn2Click(Sender: TObject);
begin
modalresult:=mrCancel;
end;

procedure TFrm_TDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
