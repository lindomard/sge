unit s_Captura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, DelphiTwain;

type
  TFrm_Captura = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    sbn_tirar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cb_tamreal: TCheckBox;
    DelphiTwain1: TDelphiTwain;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cb_tamrealClick(Sender: TObject);
    procedure sbn_tirarClick(Sender: TObject);
    procedure DelphiTwain1TwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
        mResultado: Boolean;
        mArqRetorno: String;

  end;

var
  Frm_Captura: TFrm_Captura;

implementation

{$R *.dfm}

procedure TFrm_Captura.SpeedButton2Click(Sender: TObject);
begin
if Image1=nil then
   begin
   mResultado   :=false;
   mArqRetorno  :='Não capturou imagem!';
   close;
   end
else
   begin
   mResultado   :=true;
   Image1.Picture.SaveToFile('c:\sge_paf\imagem_scaner01.bmp');
   mArqRetorno  :='c:\sge_paf\imagem_scaner01.bmp';
   close;
   end;

end;

procedure TFrm_Captura.FormCreate(Sender: TObject);
begin
    mResultado:=false;
    mArqRetorno:='';

end;

procedure TFrm_Captura.SpeedButton1Click(Sender: TObject);
begin
   mResultado   :=false;
   mArqRetorno  :='Ignorou foto!';

end;

procedure TFrm_Captura.cb_tamrealClick(Sender: TObject);
begin
if cb_tamreal.Checked=true then
   Image1.Stretch:=false
else
   Image1.Stretch:=true;

end;

procedure TFrm_Captura.sbn_tirarClick(Sender: TObject);
var
SourceIndex: Integer;
Source: TTwainSource;
begin

//Make sure that the library and Source Manager
  //are loaded
DelphiTwain1.LibraryLoaded := TRUE;
DelphiTwain1.SourceManagerLoaded := TRUE;
//SelectSource method displays a common Twain dialog
//to allow the user to select one of the avaliable
//sources and returns it's index or -1 if either
//the user pressed Cancel or if there were no sources
SourceIndex := DelphiTwain1.SelectSource();
if (SourceIndex <> -1) then
   begin
   //Now that we know the index of the source, we'll
   //get the object for this source
   Source := DelphiTwain1.Source[SourceIndex];
   //Load source and acquire image
   Source.Loaded := TRUE;
   Source.Enabled := TRUE;
   end {if (SourceIndex <> -1)}
else
   begin
   mArqRetorno:='Não encontrado scaner ou cancelado pelo usuario!';
   mResultado:=false;
   exit;
   end;
end;

procedure TFrm_Captura.DelphiTwain1TwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
begin
 //Copies the acquired bitmap to the TImage control
  Image1.Picture.Assign(Image);
  //Because the component supports multiple images
  //from the source device, Cancel will tell the
  //source that we don't want no more images
  Cancel := TRUE;

end;

end.
