unit S_QtdVia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ExtCtrls, RxGIF;
// RxGIF,
type
  TFrm_QtdVia = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    CB_QTDVIA: TComboBox;
    bbOk: TBitBtn;
    bbCancelar: TBitBtn;
    procedure bbOkClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      mQtdVia_Qtd: Integer;

  end;

var
  Frm_QtdVia: TFrm_QtdVia;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_QtdVia.bbOkClick(Sender: TObject);
begin
      mQtdVia_Qtd :=valint(CB_QTDVIA.Text);
      if mQtdVia_Qtd<1 then
         mQtdVia_Qtd:=1;
      close;

end;

procedure TFrm_QtdVia.bbCancelarClick(Sender: TObject);
begin
mQtdVia_Qtd:=0;
close;
end;

end.
