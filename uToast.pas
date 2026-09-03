unit uToast;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ExtCtrls, StdCtrls;

type
  TFrmToast = class(TForm)
  private
    FTimer: TTimer;
    FBlinkTimer: TTimer;
    FLabel: TLabel;
    procedure OnTimerExecute(Sender: TObject);
    procedure OnBlinkTimerExecute(Sender: TObject);
  public
    constructor CreateToast(AOwner: TComponent; const ATexto: string; ADuracaoMS: Integer);
  end;

procedure ExibirToast(const ATexto: string; ADuracaoMS: Integer = 3000);

implementation

uses func_emitir_notas;

procedure ExibirToast(const ATexto: string; ADuracaoMS: Integer = 3000);
var
  Toast: TFrmToast;
begin
  Toast := TFrmToast.CreateToast(Application, ATexto, ADuracaoMS);
  Toast.Show;
end;

{ TFrmToast }

constructor TFrmToast.CreateToast(AOwner: TComponent; const ATexto: string; ADuracaoMS: Integer);
var
  R: TRect;
begin
  inherited CreateNew(AOwner);

  // Configuração da Janela (Popout)
  BorderStyle := bsNone;
  FormStyle   := fsStayOnTop;
  Color       := $002B2B2B; // Fundo escuro
  Font.Color  := clWhite;
  Font.Name   := 'Segoe UI';
  Font.Size   := 10;
  Font.Style  := [fsBold];

  // Rótulo da Mensagem
  FLabel := TLabel.Create(Self);
  FLabel.Parent := Self;
  FLabel.Caption := ATexto;
  FLabel.Transparent := True;
  FLabel.Left := 20;
  FLabel.Top := 16;

  // Redimensionamento automático do Form com base no texto
  ClientWidth := FLabel.Width + 40;
  ClientHeight := FLabel.Height + 32;

  // Posicionamento no CENTRO da tela principal
  SystemParametersInfo(SPI_GETWORKAREA, 0, @R, 0);
  Left := R.Left + ((R.Right - R.Left) - Width) div 2;
  Top  := R.Top + ((R.Bottom - R.Top) - Height) div 2;

  // Timer para encerramento da mensagem
  FTimer := TTimer.Create(Self);
  FTimer.Interval := ADuracaoMS;
  FTimer.OnTimer := OnTimerExecute;
  FTimer.Enabled := True;

  // Timer do efeito piscante (Altera a visibilidade a cada 300ms)
  FBlinkTimer := TTimer.Create(Self);
  FBlinkTimer.Interval := 300;
  FBlinkTimer.OnTimer := OnBlinkTimerExecute;
  FBlinkTimer.Enabled := True;
end;

procedure TFrmToast.OnBlinkTimerExecute(Sender: TObject);
begin
  // Alterna a visibilidade do texto para piscar
  FLabel.Visible := not FLabel.Visible;
end;

procedure TFrmToast.OnTimerExecute(Sender: TObject);
begin
  FTimer.Enabled := False;
  FBlinkTimer.Enabled := False;
  Close;
  Release; // Libera o formulário da memória
end;






end.
