unit S_DefBac;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, FileCtrl,func;

type
  Tfrm_DefBac = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    bbconfirma: TBitBtn;
    bbsair: TBitBtn;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bbconfirmaClick(Sender: TObject);
    procedure bbsairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mcam: String;

  end;

var
  frm_DefBac: Tfrm_DefBac;

implementation

{$R *.dfm}

procedure Tfrm_DefBac.FormCreate(Sender: TObject);
begin
mcam:='';
end;

procedure Tfrm_DefBac.bbconfirmaClick(Sender: TObject);
begin
mcam:=Label1.Caption;
close;
end;

procedure Tfrm_DefBac.bbsairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_DefBac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
