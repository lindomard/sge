unit s_GerarQrCode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DelphiZXingQRCode, Buttons, Mask, ToolEdit,
  CurrEdit,jpeg, Spin;

type
  TFrm_GerarQrCode = class(TForm)
    Label1: TLabel;
    edtText: TEdit;
    cmbEncoding: TComboBox;
    edtQuietZone: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    PaintBox1: TPaintBox;
    Image1_ant: TImage;
    SaveDialog1: TSaveDialog;
    Label4: TLabel;
    cb_tipo_chave: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_nome_beneficiario: TEdit;
    Label8: TLabel;
    edt_cidade: TEdit;
    Label9: TLabel;
    bbGerarCodigo: TBitBtn;
    bbSalvarImagem: TBitBtn;
    bbSair: TBitBtn;
    bbLimpar: TBitBtn;
    Memo_descricao: TEdit;
    edt_chave_pix: TMaskEdit;
    edt_valor: TCurrencyEdit;
    Label10: TLabel;
    edt_tamanho: TSpinEdit;
    edt_chave: TEdit;
    bbdoTexto: TBitBtn;
    edt_pre_fixada: TMemo;
    BitBtn1: TBitBtn;
    edt_hexa: TEdit;
    procedure bbSairClick(Sender: TObject);
    procedure cmbEncodingClick(Sender: TObject);
    procedure edtQuietZoneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure BitBtn1Click(Sender: TObject);
    procedure bbGerarCodigoClick(Sender: TObject);
    procedure bbSalvarImagemClick(Sender: TObject);
    procedure bbLimparClick(Sender: TObject);
    procedure cb_tipo_chaveClick(Sender: TObject);
    procedure edt_chave_pixExit(Sender: TObject);
    procedure edt_tamanhoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbdoTextoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

    tamimg: integer;
    QRCodeBitmap: TBitmap;

    procedure QrCodeUpdate;

//    procedure fAtualizarImagem;


    function fGerardorLinkQrCode(pChavePix, ptipoChave, pValor, pNomeBeneficiario, pCidadeBeneficiario, pIdPgto: String): String;


    function PadronizaTamanho(Imagem: TGraphic; W, H: Integer; Tipo: TGraphicClass = nil): TGraphic;




   function CRC16CCITT(texto: string): String;




    procedure fMaskChavePix;


    procedure fSalvarPaintBox();

  public
    { Public declarations }
  end;

var
  Frm_GerarQrCode: TFrm_GerarQrCode;

implementation

uses Func;

{$R *.dfm}


procedure TFrm_GerarQrCode.QrCodeUpdate;
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
//    QRCodeBitmap.row S  etSize(QRCode.Rows, QRCode.Columns);

//    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
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

procedure TFrm_GerarQrCode.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_GerarQrCode.cmbEncodingClick(Sender: TObject);
begin
QrCodeUpdate;
end;

procedure TFrm_GerarQrCode.edtQuietZoneClick(Sender: TObject);
begin
QrCodeUpdate;
end;

procedure TFrm_GerarQrCode.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
  QrCodeUpdate;

end;

procedure TFrm_GerarQrCode.PaintBox1Paint(Sender: TObject);
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

//fAtualizarImagem;


end;
{
procedure TFrm_GerarQrCode.fAtualizarImagem;
var
stream_qrcode: TStream;

begin


stream_qrcode:=TMemoryStream.Create;
QRCodeBitmap.SaveToStream(stream_qrcode);
stream_qrcode.Seek(0,soFromBeginning);
Image1.Picture.Bitmap.LoadFromStream(stream_qrcode);
Image1.Height := 321;
Image1.Width := 345;
freeandnil(stream_qrcode);

end;
}

procedure TFrm_GerarQrCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
freeAndNil(QRCodeBitmap);
if (FormState<>[fsModal]) then
   Action := caFree;

end;
{
procedure TFrm_GerarQrCode.BitBtn1Click(Sender: TObject);
var
  bm: TBitmap;
begin


if SaveDialog1.Execute then
   begin

  bm := TBitmap.Create;
  try
    bm.Width:=Image1.Picture.Width;
    bm.Height:=Image1.Picture.Height;

    bm.Canvas.Brush.Color := clSkyBlue;
    bm.Canvas.FillRect(Rect(0, 0, bm.Width, bm.Height));
    bm.Canvas.Draw(0, 0, Image1.Picture.Graphic);
    bm.SaveToFile(SaveDialog1.FileName);
  finally
    bm.Free;
  end;
end;

end;
}
//     function fGerardorLinkQrCode(pChavePix, ptipoChave, pValor, pNomeBeneficiario, pCidadeBeneficiario, pIdPgto: String): String;


function TFrm_GerarQrCode.fGerardorLinkQrCode(pChavePix, ptipoChave, pValor, pNomeBeneficiario, pCidadeBeneficiario, pIdPgto: String): String;
var
mComplemento: String;
mGui: String;

mChaveGerada: String;
mChave: String;
mIdTrans: String;
mHexa: String;
mCep: String;
x: integer;
begin
{

fonte da informação:
https://www.bcb.gov.br/content/estabilidadefinanceira/spb_docs/ManualBRCode.pdf
COMO TESTAR

https://gerarqrcodepix.com.br/

}


if (ptipoChave='CPF') or (ptipoChave='CNPJ') or (ptipoChave='Telefone') then
   pChavePix:=fdeixanum(pChavePix)
else
   pChavePix:=Trim(pChavePix);


pValor:= mudaVP(floattostr(valfloat(pValor)));



if (ptipoChave='Telefone') then
   mComplemento :='+55'
else
   mComplemento :='';
mChaveGerada :='';
mChaveGerada := mChaveGerada + '0002'; //Payload Format Indicator e tamanho
mChaveGerada := mChaveGerada + '01'; //fixo 01

mChaveGerada := mChaveGerada + '26'; //fixo 01

    mGUI := '0014br.gov.bcb.pix';

    mChave := '01' + InsereEsquerda(inttostr(Length(mComplemento+pChavePix)),'0',2) + mComplemento+pChavePix;



    mChaveGerada := mChaveGerada + InsereEsquerda(InttoStr(length(mGui+mChave)),'0',2);
    mChaveGerada := mChaveGerada + mGui+mChave;



mChaveGerada := mChaveGerada + '520400005303986';//PADRAO Moeda
if valfloat(pValor)>0 then
   begin
   mChaveGerada := mChaveGerada + '54';
   mChaveGerada := mChaveGerada + InsereEsquerda(intToStr(length(pValor)),'0',2);
   mChaveGerada := mChaveGerada + pValor;
   end;
mChaveGerada := mChaveGerada + '5802BR';//Padrao BR Pais

mChaveGerada := mChaveGerada + '59';
mChaveGerada := mChaveGerada + InsereEsquerda(intToStr(length(pNomeBeneficiario)),'0',2);
mChaveGerada := mChaveGerada + pNomeBeneficiario;

mChaveGerada := mChaveGerada +'60';
mChaveGerada := mChaveGerada +InsereEsquerda(intToStr(length(pCidadeBeneficiario)),'0',2);
mChaveGerada := mChaveGerada + pCidadeBeneficiario;

{
mCep:='74305110';
mChaveGerada := mChaveGerada +'61';
mChaveGerada := mChaveGerada +InsereEsquerda(intToStr(length(mCep)),'0',2);
mChaveGerada := mChaveGerada + mCep;
 }

//6108 70074900

{
if(length(pIdPgto)<1) then
  pIdPgto:='PAGAMENTO';
 }

if(length(pIdPgto)>0) then
   begin


//   mIdTrans := '05' + InsereEsquerda(intToStr(length(pIdPgto)),'0',2) +pIdPgto ;
   mIdTrans := '05' + InsereEsquerda(intToStr(length(pIdPgto)),'0',2) +pIdPgto ;

   mChaveGerada := mChaveGerada + '62'; //Padrao ID transação

   mChaveGerada := mChaveGerada + InsereEsquerda(intToStr(length(mIdTrans)),'0',2);
   mChaveGerada := mChaveGerada + mIdTrans;








{

               String idTrans = "05" + AlinhamentoDireita(String.valueOf(idPgto.length()), "0", 2) + idPgto;
            str.append("62");//Padrao ID transação
            str.append(AlinhamentoDireita(String.valueOf(idTrans.length()), "0", 2));
            str.append(idTrans);


   mChaveGerada := mChaveGerada + '62'; //Padrao ID transação
   mChaveGerada := mChaveGerada + InsereEsquerda(intToStr(length(pIdPgto)),'0',2);
   mChaveGerada := mChaveGerada + pidPgto;

//   mIdTrans := AlinhamentoDireita(String.valueOf(idPgto.length()), "0", 2) + idPgto;
   mIdTrans := '

   AlinhamentoDireita(String.valueOf(idPgto.length()), "0", 2) + idPgto;

   mChaveGerada := mChaveGerada + '05'; //Padrao ID transação
   mChaveGerada := mChaveGerada + InsereEsquerda(intToStr(length(mIdTrans)),'0',2);
   mChaveGerada := mChaveGerada + mIdTrans;
   }
    end
else
   begin
   mChaveGerada := mChaveGerada + '62';//Padrao ID transação
   mChaveGerada := mChaveGerada + '070503***';//Padrao ID transação
   end;

mChaveGerada := mChaveGerada + '6304';//Padrao ID transação

{
  //      return "" + Integer.toHexString(crc);


//  ShowMessage(result);
  result := IntToHex(mRetorno,2);
//  result:=mRetorno;

}


mHexa := CRC16CCITT(mChaveGerada);

mChaveGerada := mChaveGerada +mHexa;

//mHexa := CRC_16(mChaveGerada);

//mChaveGerada := mChaveGerada +mHexa;


edt_chave.text:=mchaveGerada;
result:=mChaveGerada;






end;


{segundo rotina exclusivo para modelo CCITT}

function TFrm_GerarQrCode.CRC16CCITT(texto: string): String;
var
mRetorno: Word;

const
  polynomial = $1021;

var
  crc: WORD;
  i, j: Integer;
  b: Byte;
  bit, c15: Boolean;
begin
  crc := $FFFF;
  for i := 1 to length(texto) do
  begin
    b := Byte(texto[i]);
    for j := 0 to 7 do
    begin
      bit := (((b shr (7 - j)) and 1) = 1);
      c15 := (((crc shr 15) and 1) = 1);
      crc := crc shl 1;
      if (c15 xor bit) then
        crc := crc xor polynomial;
    end;
  end;
//  Result := crc and $FFFF;

  mRetorno := crc and $FFFF;
//    crc &= 0xffff;
  //      return "" + Integer.toHexString(crc);


//  ShowMessage(result);
  result := IntToHex(mRetorno,2);
//  result:=mRetorno;
end;
procedure TFrm_GerarQrCode.bbGerarCodigoClick(Sender: TObject);
var
mMensagem: String;
begin
mMensagem:='';

if length(edt_chave_pix.text)<1 then
   begin
   mMensagem:=mMensagem+'Chave Pix, campo Obrigatório!' + mQuebraLinha;
   end;

if length(edt_nome_beneficiario.text)<1 then
   begin
   mMensagem:=mMensagem+'Nome do Beneficiario é obrigatório!' + mQuebraLinha;
   end;

if length(edt_cidade.text)<1 then
   begin
   mMensagem:=mMensagem+'Cidade do Beneficiario é obrigatório!' + mQuebraLinha;
   end;
if cb_tipo_chave.Text='CPF' then
   begin
   if not Fcpf(fdeixanum(edt_chave_pix.Text)) then
      mMensagem:=mMensagem+'CPF '+edt_chave_pix.text+' é invalido!';
   end;
if cb_tipo_chave.Text='CNPJ' then
   begin
   if not (FCGC(fsonumero(edt_chave_pix.Text))) then
      mMensagem:=mMensagem+'CNPJ '+edt_chave_pix.text+' é invalido!';
   end;
if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   exit;
   end;


edtText.Text :=  fGerardorLinkQrCode(edt_chave_pix.Text, cb_tipo_chave.Text, edt_valor.Text,edt_nome_beneficiario.Text,edt_cidade.text,Memo_descricao.Text);

QrCodeUpdate;
PaintBox1Paint(self);

if length(trim(edtText.Text))>1 then
   bbSalvarImagem.Enabled:=true;


end;


procedure TFrm_GerarQrCode.fSalvarPaintBox();
var
Bitmap: TBitmap;
mNomeSaida: String;

begin
if SaveDialog1.Execute then
   begin

   Bitmap := TBitmap.Create;
   with Bitmap do
      begin
      Width := PaintBox1.Width;
      Height := PaintBox1.Height;
      end;
   Bitmap.Canvas.CopyRect(Rect(0, 0, Bitmap.Width, Bitmap.Height),
                          PaintBox1.Canvas,
                          Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
   mNomeSaida:= fRetiraExtensao(saveDialog1.filename)+'.bmp';

   Bitmap.SaveToFile(mnomeSaida); // Example: save as BMP
   end;
end;



procedure TFrm_GerarQrCode.bbSalvarImagemClick(Sender: TObject);

 var
 stream_qrcode: TStream;

var
Nova: TGraphic;
mNomeSaida: String;
begin
fSalvarPaintBox();

{


if SaveDialog1.Execute then
   begin

   QrCodeUpdate;
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
   mNomeSaida:= fRetiraExtensao(saveDialog1.filename)+'.jpg';
   Image1_ant.Picture.SaveToFile(mNomeSaida);

//    PaintBox1.
//    Image1.Picture.SaveToFile(SaveDialog1.FileName);
   end;

 }
end;

procedure TFrm_GerarQrCode.bbLimparClick(Sender: TObject);
begin
edt_chave_pix.Clear;
edt_valor.Clear;
edt_nome_beneficiario.Clear;
edt_cidade.Clear;
Memo_descricao.Clear;
edt_chave.clear;

end;


procedure TFrm_GerarQrCode.fMaskChavePix;
begin
if cb_tipo_chave.Text='CPF' then
   edt_chave_pix.EditMask := pmaskcpf
else if cb_tipo_chave.Text='CNPJ' then
   edt_chave_pix.EditMask := pmaskcnpj
else
   edt_chave_pix.EditMask:='';
end;

procedure TFrm_GerarQrCode.cb_tipo_chaveClick(Sender: TObject);
begin
fMaskChavePix;

end;

procedure TFrm_GerarQrCode.edt_chave_pixExit(Sender: TObject);
begin
if cb_tipo_chave.text='Telefone' then
   edt_chave_pix.text:=MaskFone(edt_chave_pix.text);


end;



function TFrm_GerarQrCode.PadronizaTamanho(Imagem: TGraphic; W, H: Integer; Tipo: TGraphicClass = nil): TGraphic;
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

procedure TFrm_GerarQrCode.edt_tamanhoChange(Sender: TObject);
begin
tamimg := edt_tamanho.value;
end;

procedure TFrm_GerarQrCode.FormShow(Sender: TObject);
begin
fMaskChavePix;
bbLimparClick(self);
end;

procedure TFrm_GerarQrCode.bbdoTextoClick(Sender: TObject);
begin

edtText.Text :=  edt_pre_fixada.Lines.text;


QrCodeUpdate;
PaintBox1Paint(self);

if length(trim(edtText.Text))>1 then
   bbSalvarImagem.Enabled:=true;


end;

{
function TFrm_GerarQrCode.WordToBinary(W: Word): String;
var
  I: Integer;
begin
  Result := '0000000000000000';
  for I := 0 to 15 do // process bits 0..15
  begin
    if Odd(W) then
      Result[16 - I] := '1';
    W := W shr 1;
  end;
end;


 }
procedure TFrm_GerarQrCode.BitBtn1Click(Sender: TObject);
begin
edt_hexa.text:= CRC16CCITT(edt_pre_fixada.lines.text);
end;

end.
