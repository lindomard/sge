unit s_Imagem_WebCam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ExtDlgs,jpeg;
                                                                                          
type
  tfCapturaImagemWebCam = function (pTipoDisparo: integer; pWebCamPadrao: AnsiString; out pNomeRetorno: AnsiString): Boolean;  stdcall;

//function fCapturaImagemWebCam(pTipoDisparo: Integer;pWebCamPadrao: AnsiString; out pNomeRetorno: AnsiString): Boolean;  stdcall; export;

type
  Tfrm_Imagem_WebCam = class(TForm)
    sbnsalva: TSpeedButton;
    sbn_webcam: TSpeedButton;
    sbn_scanner: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    CANCELAR: TBitBtn;
    Label1: TLabel;
    edt_obs: TEdit;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    CB_TAMORI: TCheckBox;
    lbl_nomimagem: TLabel;
    opd1: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure sbn_webcamClick(Sender: TObject);
    procedure sbnsalvaClick(Sender: TObject);
    procedure sbn_scannerClick(Sender: TObject);
    procedure CB_TAMORIClick(Sender: TObject);
    procedure lbl_nomimagemDblClick(Sender: TObject);
  private
    { Private declarations }
   dllHandle : cardinal;
   fCapturaImagemWebCam : tfCapturaImagemWebCam;

  public
    { Public declarations }
    mAceitouImagem: Boolean;
    mNomeArquivo: string;

  end;

var
  frm_Imagem_WebCam: Tfrm_Imagem_WebCam;

implementation

uses Func, s_Captura_Scaner;

{$R *.dfm}

procedure Tfrm_Imagem_WebCam.SpeedButton1Click(Sender: TObject);
begin
    mAceitouImagem:=true;
    close;

end;

procedure Tfrm_Imagem_WebCam.FormCreate(Sender: TObject);
begin
    mAceitouImagem:=false;
end;

procedure Tfrm_Imagem_WebCam.CANCELARClick(Sender: TObject);
begin
    mAceitouImagem:=false;
    close;
end;

procedure Tfrm_Imagem_WebCam.sbn_webcamClick(Sender: TObject);
var
iRetorno: Boolean;
mMensagem: AnsiString;
mWebCamPadrao: AnsiString;


ImageJpg : TJPEGImage;

const
   mTipoDisparo=0;

begin



if dllHandle=0 then
   dllHandle := LoadLibrary('c:\sge\SGE_DLL_WEBCAM.dll');
if dllHandle <> 0 then
   begin
   @fCapturaImagemWebCam := GetProcAddress(dllHandle, 'fCapturaImagemWebCam') ;
//function fCapturaImagemWebCam(pTipoDisparo: Integer;pWebCamPadrao: AnsiString; out pNomeRetorno: AnsiString): Boolean;  stdcall; export;

//  tfCapturaImagemWebCam = function (pTipoDisparo: integer; pWebCamPadrao: AnsiString; out pNomeRetorno: AnsiString): Boolean;  stdcall;
   if Assigned (@fCapturaImagemWebCam) then
      begin
      mMensagem:='';
      iRetorno:=fCapturaImagemWebCam(mTipoDisparo,mWebCamPadrao,mmensagem);
      end
   else
      begin
      MessageDlg('"SGE_DLL_WEBCAM.dll" função nao Existente',mtError,[mbOk],0);  //call the function
      end
   end
else
   begin
   MessageDlg('"SGE_DLL_WEBCAM.dll" função nao Existente',mtError,[mbOk],0);  //call the function
   end;
if iRetorno=true then
   begin
   try
      Image1.Picture.LoadFromFile(mMensagem);
      ImageJpg := TJPEGImage.Create;

      if ConvertImageparajpg(mMensagem, ImageJpg) then
         begin
         Image1.Picture.Assign(ImageJpg);
         end;
    finally
       FreeAndNil(ImageJpg);
       end;
    mNomeArquivo:=mMensagem;
    end;


end;

procedure Tfrm_Imagem_WebCam.sbnsalvaClick(Sender: TObject);
var
ImageJpg : TJPEGImage;

begin
if Opd1.Execute then
   begin
   mNomeArquivo:=opd1.FileName;
   if fEImagem(Opd1.FileName) = true then
      begin
      try
         Image1.Picture.LoadFromFile(Opd1.FileName);
      except
         MessageDlg('Não é uma imagem válida!',mtError,[mbOk],0);
         exit;
         end;
      try
         ImageJpg := TJPEGImage.Create;
         if ConvertImageparajpg(opd1.FileName, ImageJpg) then
            begin
            Image1.Picture.Assign(ImageJpg);
           end;
      finally
         FreeAndNil(ImageJpg);
         end;
      lbl_nomimagem.visible:=false;
      Image1.Visible:=true;
      end
   else
      begin
      lbl_nomimagem.caption := opd1.filename+' de um duplo click para abrir o arquivo';
      lbl_nomimagem.visible:=true;
      Image1.Visible:=false;
      end;
   end;


end;

procedure Tfrm_Imagem_WebCam.sbn_scannerClick(Sender: TObject);
var
iRetorno: Boolean;
mMensagem: AnsiString;

ImageJpg : TJPEGImage;

begin

Application.CreateForm(TFrm_Captura_Scaner, Frm_Captura_Scaner);
Frm_Captura_scaner.showmodal;
if Frm_Captura_scaner.mResultado<>true then
   begin
   MessageDlg('Erro: '+Frm_Captura_Scaner.mArqRetorno,mtWarning,[mbOk],0);
   end
else
   begin
   if FileExists(Frm_Captura_scaner.mArqRetorno) then
      begin
      try
         Image1.Picture.LoadFromFile(Frm_Captura_scaner.mArqRetorno);
         ImageJpg := TJPEGImage.Create;

         if ConvertImageparajpg(Frm_Captura_scaner.mArqRetorno, ImageJpg) then
            begin
            Image1.Picture.Assign(ImageJpg);
            end;
      finally
         FreeAndNil(ImageJpg);
          end;
      mNomeArquivo:=Frm_Captura_scaner.mArqRetorno;
      end
  else
     begin
     MessageDlg('Arquivo '+Frm_Captura_scaner.mArqRetorno+' não encontrado!' ,mtWarning,[mbok],0);
     exit;
     end;
   end;
freeandnil(Frm_Captura_scaner);


end;

procedure Tfrm_Imagem_WebCam.CB_TAMORIClick(Sender: TObject);
begin
if CB_TAMORI.Checked then
   begin
   Image1.Stretch:=false;
   Image1.Align:=alNone;
   end
else
   begin
   Image1.Stretch:=true;
   Image1.Align:=alClient;
   end;

end;

procedure Tfrm_Imagem_WebCam.lbl_nomimagemDblClick(Sender: TObject);
begin
fExecutarArquivo(mNomeArquivo);
end;

end.
