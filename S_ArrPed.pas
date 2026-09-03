unit S_ArrPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func;

type
  TFrm_ArrPed = class(TForm)
    Label1: TLabel;
    TOTALP: TEdit;
    Label2: TLabel;
    TOTALN: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure TOTALNKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TOTALNExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ArrPed: TFrm_ArrPed;

implementation

{$R *.dfm}

procedure TFrm_ArrPed.TOTALNKeyPress(Sender: TObject; var Key: Char);
begin

if key in [',','.'] then
   key:=DecimalSeparator;
end;

procedure TFrm_ArrPed.BitBtn1Click(Sender: TObject);
begin
if ValFloat(TOTALN.Text)>ValFloat(TOTALP.Text) then
   begin
   MessageDlg('o Novo Valor não pode ser maior que o total do Pedido!',mtWarning,[mbOk],0);
   TOTALN.Text:=TOTALP.Text;
   TOTALN.SetFocus;
   end;
ModalResult:=MrOk;
end;

procedure TFrm_ArrPed.BitBtn2Click(Sender: TObject);
begin
ModalResult:=MrCancel;
end;

procedure TFrm_ArrPed.TOTALNExit(Sender: TObject);
begin
TOTALN.Text:=FormatFloat('##0.00',Valfloat(TOTALN.Text));
end;

procedure TFrm_ArrPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree

end;

end.
