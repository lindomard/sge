unit s_tef_pendentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrm_tef_pendentes = class(TForm)
    Label1: TLabel;
    lbl_notifica: TLabel;
    bbConcluir: TBitBtn;
    bbCancellar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure bbConcluirClick(Sender: TObject);
    procedure bbCancellarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mConclusao: integer; // 0-concluir a transação 1-cancelar a transação
  end;

var
  Frm_tef_pendentes: TFrm_tef_pendentes;

implementation

{$R *.dfm}

procedure TFrm_tef_pendentes.FormCreate(Sender: TObject);
begin
mConclusao:=-1;
end;

procedure TFrm_tef_pendentes.bbConcluirClick(Sender: TObject);
begin
mConclusao:=0;
close;
end;

procedure TFrm_tef_pendentes.bbCancellarClick(Sender: TObject);
begin
mConclusao:=1;
close;

end;

end.
