unit s_erros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TFrm_erros = class(TForm)
    StaticText1: TStaticText;
    Image1: TImage;
    Memo_coderro: TMemo;
    bbSalvar: TBitBtn;
    bbFechar: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure bbSalvarClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure pCarregarMemo;

  public
    { Public declarations }
  end;

var
  Frm_erros: TFrm_erros;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_erros.bbSalvarClick(Sender: TObject);
begin
SaveDialog1.FileName:=ExtractFilePath(Application.ExeName)+'erros.txt';
if SaveDialog1.Execute then
   Memo_coderro.Lines.SaveToFile(SaveDialog1.FileName);

end;

procedure TFrm_erros.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_erros.FormShow(Sender: TObject);
begin
pCarregarMemo;
   SetWindowPos(handle, HWND_TOPMOST, Left, Top,Width,Height, 0);
   SetWindowPos(handle, HWND_NOTOPMOST, Left, Top,Width, Height, 0);

end;



procedure Tfrm_erros.pCarregarMemo;
begin
Memo_coderro.Lines.Clear;
if (DM1.cds_retorno.Active=false) or (DM1.cds_retorno.IsEmpty=true) then
   Memo_coderro.Lines.Add('-999 - Não identificado!')
else
   begin
   DM1.cds_retorno.First;
   while not DM1.cds_retorno.eof do
      begin
      Memo_coderro.Lines.Add(DM1.cds_retornoce_coderro.Asstring+'-'+DM1.cds_retornoce_motivo.AsString);
      DM1.cds_retorno.Next;
      end;

   end;

end;

end.
