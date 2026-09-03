unit S_EstGrf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, StdCtrls, Buttons,func;

type
  TFrm_EstGrf = class(TForm)
    Panel1: TPanel;
    RgEstilo: TRadioGroup;
    BV: TImage;
    BBnOk: TBitBtn;
    BBnCancela: TBitBtn;
    Image1: TImage;
    BH: TImage;
    LF: TImage;
    LS: TImage;
    Pontos: TImage;
    Pizza: TImage;
    Area: TImage;
    procedure RgEstiloClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EstGrf: TFrm_EstGrf;

implementation

{$R *.DFM}

procedure TFrm_EstGrf.RgEstiloClick(Sender: TObject);
begin
Case RgEstilo.ItemIndex of
   0: Image1.Picture:=BV.Picture;
   1: Image1.Picture:=BH.Picture;
   2: Image1.Picture:=LF.Picture;
   3: Image1.Picture:=LS.Picture;
   4: Image1.Picture:=Area.Picture;
   5: Image1.Picture:=Pontos.Picture;
   6: Image1.Picture:=Pizza.Picture;
   end;
end;

procedure TFrm_EstGrf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
