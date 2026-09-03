unit S_TotCus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func;

type
  TFrm_TotCus = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TOTLIQ: TStaticText;
    TOTCUS: TStaticText;
    TOTDIF: TStaticText;
    PERCDIF: TStaticText;
    bbFechar: TBitBtn;
    lbl_obs: TLabel;
    procedure bbFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_TotCus: TFrm_TotCus;

implementation

{$R *.dfm}

procedure TFrm_TotCus.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_TotCus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
