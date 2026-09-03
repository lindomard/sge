unit s_GerarQrCodeNormal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, Buttons, ExtCtrls, DelphiZXingQRCode,  Mask, ToolEdit,
  CurrEdit,jpeg;

type
  TFrm_GerarQrCodeNormal = class(TForm)
    Label1: TLabel;
    edtText: TEdit;
    Label2: TLabel;
    cmbEncoding: TComboBox;
    edtQuietZone: TEdit;
    Label3: TLabel;
    Label10: TLabel;
    edt_tamanho: TSpinEdit;
    PaintBox1: TPaintBox;
    bbSalvarImagem: TBitBtn;
    bbLimpar: TBitBtn;
    bbSair: TBitBtn;
    SaveDialog1: TSaveDialog;
    Image1_ant: TImage;
    procedure edtTextChange(Sender: TObject);
    procedure bbLimparClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbSalvarImagemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_tamanhoChange(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    tamimg: integer;

    QRCodeBitmap: TBitmap;

    function PadronizaTamanho(Imagem: TGraphic; W, H: Integer; Tipo: TGraphicClass = nil): TGraphic;

    procedure Update;

  public
    { Public declarations }
  end;

var
  Frm_GerarQrCodeNormal: TFrm_GerarQrCodeNormal;

implementation

{$R *.dfm}

procedure TFrm_GerarQrCodeNormal.edtTextChange(Sender: TObject);
begin
bbSalvarImagem.Enabled:= length(edtText.Text)>1;
Update;
end;

procedure TFrm_GerarQrCodeNormal.bbLimparClick(Sender: TObject);
begin
edtText.Clear;
edtTextChange(self);
end;

procedure TFrm_GerarQrCodeNormal.bbSairClick(Sender: TObject);
begin
close;
end;


procedure TFrm_GerarQrCodeNormal.Update;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := edtText.Text;
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


procedure TFrm_GerarQrCodeNormal.bbSalvarImagemClick(Sender: TObject);
var
 stream_qrcode: TStream;
Nova: TGraphic;
begin

if SaveDialog1.Execute then
   begin

   Update;
   stream_qrcode:=TMemoryStream.Create;
   QRCodeBitmap.SaveToStream(stream_qrcode);

   stream_qrcode.Seek(0,soFromBeginning);
//   RLImageMod01QrCode.Top:=6;;
//   Image1.Height:=321;
//   Image1.Height:=PaintBox1.Height+10;
    Image1_ant.Picture.Bitmap.LoadFromStream(stream_qrcode);
//    Image1.Height := 321;
//    Image1.Width := 345;
    freeandnil(stream_qrcode);

   nova := PadronizaTamanho(Image1_ant.Picture.Graphic , tamimg, tamimg, TJPEGImage);
   Image1_ant.Picture.Graphic := Nova;
   Image1_ant.Picture.SaveToFile(SaveDialog1.FileName);

//    PaintBox1.
//    Image1.Picture.SaveToFile(SaveDialog1.FileName);
   end;



end;

procedure TFrm_GerarQrCodeNormal.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
  Update;
edt_tamanhoChange(self);
end;

procedure TFrm_GerarQrCodeNormal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
freeAndNil(QRCodeBitmap);
if (FormState<>[fsModal]) then
   Action := caFree;

end;

function TFrm_GerarQrCodeNormal.PadronizaTamanho(Imagem: TGraphic; W, H: Integer; Tipo: TGraphicClass = nil): TGraphic;
var
B: TBitmap;
begin
B := TBitmap.Create;
try
B.Width := W;
B.Height := H;
B.Canvas.StretchDraw(Rect(0, 0, W, H), Imagem);
if Tipo = nil then
Result := TGraphic(Imagem.ClassType.Create)
else
Result := Tipo.Create;
Result.Assign(B);
finally
B.Free;
end;
end;

procedure TFrm_GerarQrCodeNormal.edt_tamanhoChange(Sender: TObject);
begin
tamimg := edt_tamanho.value;

end;

procedure TFrm_GerarQrCodeNormal.PaintBox1Paint(Sender: TObject);
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

procedure TFrm_GerarQrCodeNormal.FormShow(Sender: TObject);
begin
edt_tamanhoChange(self);
end;

end.
