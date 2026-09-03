unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls,frame_video;

type
  TForm2 = class(TForm)
    Panel_Left: TPanel;
    Frame_Video1: TFrame1;
    Timer_executa: TTimer;
    procedure Frame_Video1SpeedButton_RunVideoClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_PauseClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_StopClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_VidSettingsClick(Sender: TObject);
    procedure Frame_Video1SpeedButton_VidSizeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer_executaTimer(Sender: TObject);
    procedure bbFotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.bbFotoClick(Sender: TObject);
begin
Frame_Video1.msalvar:=true;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frame_Video1.Close;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
//  SplitterRatio := 0.5;

end;

procedure TForm2.FormResize(Sender: TObject);
begin
//  Panel_Left.Width := round(SplitterRatio * (Width-Splitter1.Width div 2));

end;

procedure TForm2.FormShow(Sender: TObject);
begin
  Frame_Video1.InitFrame;

end;

procedure TForm2.Frame_Video1SpeedButton_PauseClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_PauseClick(Sender);

end;

procedure TForm2.Frame_Video1SpeedButton_RunVideoClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_RunVideoClick(Sender);

end;

procedure TForm2.Frame_Video1SpeedButton_StopClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_StopClick(Sender);

end;

procedure TForm2.Frame_Video1SpeedButton_VidSettingsClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_VidSettingsClick(Sender);

end;

procedure TForm2.Frame_Video1SpeedButton_VidSizeClick(Sender: TObject);
begin
  Frame_Video1.SpeedButton_VidSizeClick(Sender);

end;

procedure TForm2.Timer_executaTimer(Sender: TObject);
begin
Timer_executa.Enabled:=false;
Frame_Video1.SpeedButton_RunVideoClick(self);

end;

end.
