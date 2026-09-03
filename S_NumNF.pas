unit S_NumNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFrm_NumNf = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SERIE: TEdit;
    SUBSERIE: TEdit;
    MODELO: TEdit;
    Label4: TLabel;
    NUMNF: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure NUMNFKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_NumNf: TFrm_NumNf;

implementation

uses Func;

{$R *.dfm}

procedure TFrm_NumNf.NUMNFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_NumNf.BitBtn2Click(Sender: TObject);
begin
modalresult:=mrNo;
end;

procedure TFrm_NumNf.BitBtn1Click(Sender: TObject);
begin
ModalResult:=mrOk;
end;

procedure TFrm_NumNf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
