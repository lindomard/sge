unit S_Tent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg,func;

type
  TFrm_Tent = class(TForm)
    Panel1: TPanel;
    ST1: TStaticText;
    Label3: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    Image2: TImage;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tent: TFrm_Tent;

implementation

{$R *.dfm}

procedure TFrm_Tent.FormCreate(Sender: TObject);
begin
Label3.Caption:=' Versão: '+pversao;
//Label2.Caption:='Telefone de Contato: (0xx62)  '+pfonsup;
end;

procedure TFrm_Tent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
