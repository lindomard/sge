unit S_Ajuda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, DBCtrls, ExtCtrls, Func, S_DM1, S_DM4, Buttons, S_Aju01,
  S_Aju02;

type
  TFrm_Ajuda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBRichEdit1: TDBRichEdit;
    BBnPesquisar: TBitBtn;
    BBnEditar: TBitBtn;
    BBnFechar: TBitBtn;
    DESCR: TPanel;
    DBText1: TDBText;
    procedure BBnFecharClick(Sender: TObject);
    procedure BBnPesquisarClick(Sender: TObject);
    procedure BBnEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ajuda: TFrm_Ajuda;

implementation

{$R *.DFM}

procedure TFrm_Ajuda.BBnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Ajuda.BBnPesquisarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Aju01, Frm_Aju01);
Frm_Aju01.ShowModal;
Frm_Aju01.Free;
end;

procedure TFrm_Ajuda.BBnEditarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Aju02, Frm_Aju02);
Frm_Aju02.ShowModal;
Frm_Aju02.Free;
end;

procedure TFrm_Ajuda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
