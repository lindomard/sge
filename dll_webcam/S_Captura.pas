unit S_Captura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls,frame_video;

type
  TFrm_Captura = class(TForm)
    Panel_Left: TPanel;
    Frame_Video1: TFrame1;
    Timer_executa: TTimer;
    Timer2: TTimer;
    procedure Frame_Video1SpeedButton_RunVideoClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_PauseClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_StopClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_VidSettingsClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_VidSizeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bbFotoClick(Sender: TObject);
    procedure Frame_Video1sbn_tirarClick(Sender: TObject);
    procedure Timer_executaTimer(Sender: TObject);
    procedure Frame_Video1bbSairClick(Sender: TObject);
    procedure Frame_Video1bbCancelarClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Captura: TFrm_Captura;

implementation

{$R *.dfm}

procedure TFrm_Captura.bbFotoClick(Sender: TObject);
begin
Frame_Video1.msalvar:=true;

end;

procedure TFrm_Captura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frame_Video1.Close;

end;

procedure TFrm_Captura.FormCreate(Sender: TObject);
begin
//  SplitterRatio := 0.5;

end;

procedure TFrm_Captura.FormResize(Sender: TObject);
begin
//  Panel_Left.Width := round(SplitterRatio * (Width-Splitter1.Width div 2));

end;

procedure TFrm_Captura.FormShow(Sender: TObject);
begin
  Frame_Video1.InitFrame;
  if Frame_Video1.mdisparoautomatico=true then
     begin
     Top:=-2000;
     end;


end;

procedure TFrm_Captura.Frame_Video1bbCancelarClick(Sender: TObject);
begin
  Frame_Video1.bbCancelarClick(Sender);
  close;

end;

procedure TFrm_Captura.Frame_Video1bbSairClick(Sender: TObject);
begin

Frame_Video1.SpeedButton_StopClick(Sender);

if Frame_Video1.Image_foto=nil then
   begin
   Frame_Video1.mResultado   :=false;
   Frame_Video1.mArqRetorno  :='Não Tirou Foto!';
   Frame_Video1.Close;
   close;
   end
else
   begin
   Frame_Video1.mResultado   :=true;
   Frame_Video1.mArqRetorno  :='C:\SGE\foto01.bmp';
//   Frame_Video1.mArqRetorno  :=ExtractFilePath(Application.ExeName)+'foto01.bmp';
   Frame_Video1.Close;
   close;
   end;

end;

procedure TFrm_Captura.Frame_Video1sbn_tirarClick(Sender: TObject);
begin
  Frame_Video1.sbn_tirarClick(Sender);

end;

procedure TFrm_Captura.Frame_Video1SpeedButton_PauseClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_PauseClick(Sender);

end;

procedure TFrm_Captura.Frame_Video1SpeedButton_RunVideoClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_RunVideoClick(Sender);

end;

procedure TFrm_Captura.Frame_Video1SpeedButton_StopClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_StopClick(Sender);

end;

procedure TFrm_Captura.Frame_Video1SpeedButton_VidSettingsClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_VidSettingsClick(Sender);

end;

procedure TFrm_Captura.Frame_Video1SpeedButton_VidSizeClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_VidSizeClick(Sender);

end;

procedure TFrm_Captura.Timer2Timer(Sender: TObject);
begin



if Frame_Video1.mImagemSalva then
   begin
   Timer2.Enabled:=false;
   Frame_Video1.bbSair.Click;
   end;


end;

procedure TFrm_Captura.Timer_executaTimer(Sender: TObject);
begin
Timer_executa.Enabled:=false;
Frame_Video1.SpeedButton_RunVideoClick(self);
if Frame_Video1.mErroInicializar=1 then
   begin
   Frame_Video1.mResultado   :=false;
   Frame_Video1.mArqRetorno  :='01|Webcam ja aberta em outro sistema!';
   close;
   end
else if Frame_Video1.ComboBox_Cams.Items.Count<1 then
   begin
   Frame_Video1.mErroInicializar:=2;
   Frame_Video1.mResultado   :=false;
   Frame_Video1.mArqRetorno  :='02|Não Possui WebCam ou Não Esta Configurada Corretamente!';
   close;
   end;
if Frame_Video1.mdisparoautomatico then
   begin
   Frame_Video1.sbn_tirarClick(self);
   Timer2.Enabled:=true;
   end;

end;

end.
