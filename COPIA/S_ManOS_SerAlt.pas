unit S_ManOS_SerAlt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func;

type
  TFrm_ManOS_SerAlt = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    bbCancelar: TBitBtn;
    bbGravar: TBitBtn;
    StaticText1: TStaticText;
    procedure bbGravarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ManOS_SerAlt: TFrm_ManOS_SerAlt;

implementation

{$R *.dfm}

procedure TFrm_ManOS_SerAlt.bbGravarClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ManOS_SerAlt.bbCancelarClick(Sender: TObject);
begin
Memo1.Text:='';
close;
end;

procedure TFrm_ManOS_SerAlt.FormActivate(Sender: TObject);
begin
Frm_ManOS_SerAlt.Memo1.SetFocus;

end;

procedure TFrm_ManOS_SerAlt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
