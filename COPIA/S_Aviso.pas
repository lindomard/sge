unit S_Aviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TFrm_Aviso = class(TForm)
    lbl_obs: TLabel;
    Timer1: TTimer;
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    bbSair: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Aviso: TFrm_Aviso;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Aviso.Timer1Timer(Sender: TObject);
begin
if lbl_obs.Font.Color=clred then
   lbl_obs.Font.Color:=clCream
else
   lbl_obs.Font.Color:=clred;

end;

procedure TFrm_Aviso.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Aviso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
