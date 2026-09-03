unit S_DtReaj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,func;

type
  TFrm_DtReaj = class(TForm)
    Label1: TLabel;
    MDATAREAJ: TMaskEdit;
    BitBtn1: TBitBtn;
    procedure MDATAREAJExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DtReaj: TFrm_DtReaj;

implementation

{$R *.dfm}

procedure TFrm_DtReaj.MDATAREAJExit(Sender: TObject);
begin
Try
  MDATAREAJ.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDATAREAJ.Text));
except
  ShowMessage('Data Invalida');
  MDATAREAJ.SetFocus;
  end;

end;

procedure TFrm_DtReaj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
