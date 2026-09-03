unit S_Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons,func;

type
  TFrm_Editor = class(TForm)
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Editor: TFrm_Editor;

implementation

{$R *.dfm}

procedure TFrm_Editor.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Editor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.
