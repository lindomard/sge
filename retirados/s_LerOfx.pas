unit s_LerOfx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,YMOFXReader;

type
  TFrm_LerOfx = class(TForm)
    Panel1: TPanel;
    bbAbrir: TBitBtn;
    bbSair: TBitBtn;
    opd1: TOpenDialog;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    procedure bbSairClick(Sender: TObject);
    procedure bbAbrirClick(Sender: TObject);
  private

    { Private declarations }

    procedure fLerArquivo(pNomeArq: String);

  public
    { Public declarations }
  end;

var
  Frm_LerOfx: TFrm_LerOfx;

implementation

{$R *.dfm}

procedure TFrm_LerOfx.bbSairClick(Sender: TObject);
begin
close;
end;


procedure TFrm_LerOfx.fLerArquivo(pNomeArq: String);
var
    YMOFXReader1: TYMOFXReader;
  i:integer;
begin

YMOFXReader1:= TYMOFXReader.create(self);
  YMOFXReader1.OFXFile := pNomeArq;
  YMOFXReader1.Process;
  ListBox1.Clear;
  for i := 0 to YMOFXReader1.Count-1 do
  begin
    ListBox1.Items.Add(YMOFXReader1.Get(i).Desc + ' ' +
                       FloatToStr(YMOFXReader1.Get(i).Value) + ' ' +
                       YMOFXReader1.Get(i).MovType + ' ' +
                       dateToStr(YMOFXReader1.Get(i).MovDate) + ' ' +
                       YMOFXReader1.Get(i).ID + ' ' +
                       YMOFXReader1.Get(i).Document + ' '  );
  end;
end;  

procedure TFrm_LerOfx.bbAbrirClick(Sender: TObject);
begin
if opd1.Execute then
   fLerArquivo(opd1.FileName);

end;

end.
