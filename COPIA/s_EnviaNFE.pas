unit s_EnviaNFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ImgList, StdCtrls, ExtCtrls;

type
  TFrm_EnviaNFE = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ImageList1: TImageList;
    Animate1: TAnimate;
    gb_corpo: TGroupBox;
    lbl_mensagem: TLabel;
    Timer_mudacor: TTimer;
    Timer3_concluir: TTimer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_EnviaNFE: TFrm_EnviaNFE;

implementation

{$R *.dfm}



end.
