unit S_Informacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TFrm_Informacoes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bbSair: TBitBtn;
    RichEdit1: TRichEdit;
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Informacoes: TFrm_Informacoes;

implementation

{$R *.dfm}

procedure TFrm_Informacoes.bbSairClick(Sender: TObject);
begin
close;
end;

end.
