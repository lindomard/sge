unit s_EventosWhatsApp;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  IdCoderMIME, ExtCtrls, Spin, DelphiZXingQRCode;


type
  TFrm_EventosWhatsApp = class(TForm)
    Label2: TLabel;
    cmbEncoding: TComboBox;
    Label3: TLabel;
    edtQuietZone: TEdit;
    PaintBox1: TPaintBox;
    Label4: TLabel;
    bbSair: TBitBtn;
    Timer1: TTimer;
    BitBtn1: TBitBtn;

    procedure Update(Base64: String );
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }

    QRCodeBitmap: TBitmap;








  public
    { Public declarations }
     pSession: String;
     mCanceladoChamada: boolean;
  end;


var
  Frm_EventosWhatsApp: TFrm_EventosWhatsApp;

implementation

uses funcoes_especificas;

{$R *.dfm}

{
procedure TFrm_EventosWhatsApp.converter(Base64: String; pNomeArquivo: String );
var
 Decoder:TIdDecoderMIME;
 MStream:TMemoryStream;
begin

 Decoder := TIdDecoderMIME.Create(nil);

    MStream := TMemoryStream.Create;

    Decoder.DecodeToStream(Base64,MStream);
//    MStream.SaveToFile(pNomeArquivo);
    FreeAndNil(Decoder);
    FreeAndNil(MStream);


    end;



 }


procedure TFrm_EventosWhatsApp.Update(Base64: String );

var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := Base64;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.Height:=QRCode.Rows;

    QRCodeBitmap.Width:=QRCode.Columns;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;



procedure TFrm_EventosWhatsApp.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
  mCanceladoChamada := false;

end;

procedure TFrm_EventosWhatsApp.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap .Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;


end;

procedure TFrm_EventosWhatsApp.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EventosWhatsApp.Timer1Timer(Sender: TObject);
var
mRetorno: string;
begin
timer1.Enabled:=false;
if fExecutarWhatsAppExternoSessionStatus(pSession,mRetorno) then
   begin
   if mRetorno='session_connected' then
      begin
      bbSairClick(self);
      exit;
      end;
   end;

timer1.Enabled:=true;






end;

procedure TFrm_EventosWhatsApp.BitBtn1Click(Sender: TObject);
begin
mCanceladoChamada:=true;
close;
end;

end.
