unit S_Fontes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_Fontes_Ajusta,func;

type
  TFrm_Fontes = class(TForm)
    bbProdutos: TBitBtn;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure bbProdutosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Fontes: TFrm_Fontes;

implementation

{$R *.dfm}

procedure TFrm_Fontes.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fontes.bbProdutosClick(Sender: TObject);
begin
pNomTer:='todos';
pNomFor:='frm_pro';
pNomCom:='frm_pro';
Application.CreateForm(TFrm_Fontes_Ajusta, Frm_Fontes_Ajusta);
Frm_Fontes_Ajusta.ShowModal;
Frm_Fontes_Ajusta.Free;
end;

procedure TFrm_Fontes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
