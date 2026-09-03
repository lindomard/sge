unit s_scanner_ppal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DelphiTwain, ExtCtrls, StdCtrls, Buttons;

type
  Tfrm_scanner_ppal = class(TForm)
    Panel1: TPanel;
    sbn_tirar: TSpeedButton;
    sbncancelar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cb_tamreal: TCheckBox;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    DelphiTwain1: TDelphiTwain;
    procedure DelphiTwain1TwainAcquire(Sender: TObject;
      const Index: Integer; Image: TBitmap; var Cancel: Boolean);
    procedure sbn_tirarClick(Sender: TObject);
    procedure sbncancelarClick(Sender: TObject);
    procedure cb_tamrealClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNomeArq: String;
  end;

var
  frm_scanner_ppal: Tfrm_scanner_ppal;

implementation

{$R *.dfm}

procedure Tfrm_scanner_ppal.DelphiTwain1TwainAcquire(Sender: TObject;
  const Index: Integer; Image: TBitmap; var Cancel: Boolean);
begin
 //Copies the acquired bitmap to the TImage control
  Image1.Picture.Assign(Image);
  //Because the component supports multiple images
  //from the source device, Cancel will tell the
  //source that we don't want no more images
  Cancel := TRUE;
   SpeedButton2Click(self);


end;

procedure Tfrm_scanner_ppal.sbn_tirarClick(Sender: TObject);
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
   exit;
   end;

end;

procedure Tfrm_scanner_ppal.sbncancelarClick(Sender: TObject);
begin
close;

end;

procedure Tfrm_scanner_ppal.cb_tamrealClick(Sender: TObject);
begin
if cb_tamreal.Checked=true then
   Image1.Stretch:=false
else
   Image1.Stretch:=true;


end;

procedure Tfrm_scanner_ppal.SpeedButton2Click(Sender: TObject);
begin
if Image1=nil then
   begin
   close;
   end
else
   begin
   Image1.Picture.SaveToFile(mNomeArq);
   close;
   end;

end;

procedure Tfrm_scanner_ppal.FormCreate(Sender: TObject);
begin
    mNomeArq:=ExtractFilePath(Application.ExeName)+'sge_imgscanner.bmp';
    deletefile(mNomeArq);
end;

end.
