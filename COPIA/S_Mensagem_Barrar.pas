unit S_Mensagem_Barrar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,MMSystem;
{
     checklst,
     Shellapi, filectrl,Registry
     ;

}
type
  TFrm_Mensagem_Barrar = class(TForm)
    lbl_mensagem: TLabel;
    lbl_atencao: TLabel;
    lbl_sair: TLabel;
    Timer1: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Mensagem_Barrar: TFrm_Mensagem_Barrar;
  mbeepou: Boolean=false;
implementation

uses Func;

{$R *.dfm}

procedure TFrm_Mensagem_Barrar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   Frm_Mensagem_Barrar.Close
else
   begin
   if FileExists('c:\SGE\CONFELE.WAV') then
      SndPlaySound('c:\SGE\CONFELE.wav',SND_ASYNC)
   else
      AvisoSonoro(3);
   key:=0;
   end;
end;

procedure TFrm_Mensagem_Barrar.Timer1Timer(Sender: TObject);
begin
{
sound(3000); delay(100);
sound(2000); delay(200);
sound(1000); delay(200);
nosound;
}
{
 beep;
 beep;
 beep;
 }
 if lbl_atencao.Visible then
    lbl_atencao.Visible:=false
 else
    lbl_atencao.Visible:=true;
{
if not mbeepou then
   begin
      if FileExists('c:\SGE\CONFELE.WAV') then
      SndPlaySound('c:\SGE\CONFELE.wav',SND_ASYNC)
   else
      AvisoSonoro(3);
   mbeepou:=true;
   end;
}
end;

procedure TFrm_Mensagem_Barrar.FormCreate(Sender: TObject);
begin
mbeepou:=false;
end;

procedure TFrm_Mensagem_Barrar.FormActivate(Sender: TObject);
begin
SetWindowPos (Handle,HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

if FileExists('c:\SGE\CONFELE.WAV') then
   SndPlaySound('c:\SGE\CONFELE.wav',SND_ASYNC)
else
   AvisoSonoro(3);

end;

procedure TFrm_Mensagem_Barrar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
