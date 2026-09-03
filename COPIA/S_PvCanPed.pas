unit S_PvCanPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrm_PvCanPed = class(TForm)
    Label1: TLabel;
    NUMECF: TEdit;
    Label2: TLabel;
    DATA: TEdit;
    Label3: TLabel;
    CHAVE: TEdit;
    Label4: TLabel;
    VALOR: TEdit;
    Label5: TLabel;
    NOMASS: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PvCanPed: TFrm_PvCanPed;

implementation

{$R *.dfm}

procedure TFrm_PvCanPed.BitBtn2Click(Sender: TObject);
begin
ModalResult:=mrAbort;
close;
end;

procedure TFrm_PvCanPed.BitBtn1Click(Sender: TObject);
begin
ModalResult:=mrYes;
end;

end.
