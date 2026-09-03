unit S_mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFrm_Mensagem = class(TForm)
    Panel1: TPanel;
    lbl_mensagem: TLabel;
    image_info: TImage;
    image_atencao: TImage;
    image_erro: TImage;
    bbOK: TBitBtn;
    bbCancel: TBitBtn;
    bbYes: TBitBtn;
    bbNo: TBitBtn;
    bbIgnore: TBitBtn;
    bbRepetir: TBitBtn;
    bbAbort: TBitBtn;
    Timer1: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Mensagem: TFrm_Mensagem;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_Mensagem.FormActivate(Sender: TObject);
var
mQtdvis: Integer;
mleft: Integer;
begin
SetWindowPos (Handle,HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

mQtdvis:=0;
if bbOK.Visible then
   mQtdvis:=mQtdvis+1;
if bbCancel.Visible then
   mQtdvis:=mQtdvis+1;
if bbYes.Visible then
   mQtdvis:=mQtdvis+1;
if bbNo.Visible then
   mQtdvis:=mQtdvis+1;
if bbIgnore.Visible then
   mQtdvis:=mQtdvis+1;
if bbRepetir.Visible then
   mQtdvis:=mQtdvis+1;
if bbAbort.Visible then
   mQtdvis:=mQtdvis+1;

mleft:=(Frm_Mensagem.Width-(78*mQtdvis)) div 2;
if bbOK.Visible then
   begin
   bbOK.Left:=mleft;
   mleft:=mleft+78;
   end;

if bbCancel.Visible then
   begin
   bbCancel.Left:=mleft;
   mleft:=mleft+78;
   end;
if bbYes.Visible then
   begin
   bbYes.Left:=mleft;
   mleft:=mleft+78;
   end;
if bbNo.Visible then
   begin
   bbNo.Left:=mleft;
   mleft:=mleft+78;
   end;
if bbIgnore.Visible then
   begin
   bbIgnore.Left:=mleft;
   mleft:=mleft+78;
   end;

if bbAbort.Visible then
   begin
   bbAbort.Left:=mleft;
   mleft:=mleft+78;
   end;
if length(lbl_mensagem.Caption)>104 then
   lbl_mensagem.Font.Size:=10;








end;

procedure TFrm_Mensagem.Timer1Timer(Sender: TObject);
begin
if lbl_mensagem.Font.Color=clblue then
   lbl_mensagem.Font.Color:=clTeal
else
   lbl_mensagem.Font.Color:=clBlue;

end;

procedure TFrm_Mensagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
