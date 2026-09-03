unit S_ConectaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TFrm_ConectaBanco = class(TForm)
    RichEdit1: TRichEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConectaBanco: TFrm_ConectaBanco;
  mTentaConectar: Boolean=false;
implementation

{$R *.dfm}

procedure TFrm_ConectaBanco.FormCreate(Sender: TObject);
var
f: TextFile;
begin
Assignfile(f,'c:\sge\obscon.txt');
rewrite(f);
Writeln(f,'{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcharset0 Trebuchet MS;}{\f1\fswiss\fcharset0 Arial;}{\f2\fnil Courier New;}}');
Writeln(f,'{\colortbl ;\red0\green0\blue255;\red255\green0\blue0;}');
Writeln(f,'\viewkind4\uc1\pard\cf1\f0\fs28 HOUVE UMA PERDA DE COMUNICA\'+chr(39)+'c7\'+chr(39)+'c3O COM O BANCO DE DADOS. AS CAUSAS MAIS PROVAVEIS S\'+chr(39)+'c3O: O \cf2 SERVIDOR FOI DESLIGADO\cf1 , NO CASO DE REDE SEM PODE TER HAVIDO \cf2 PERDA DO SINAL\cf1 , TAMBEM PODE SER O \cf2 CABO DE REDE QUE FOI DESCONECTADO\cf1 .');
Writeln(f,'\par \pard\qr\cf0\f1\fs20');
Writeln(f,'\par \pard\f2\fs16');
Writeln(f,'\par }');
closefile(f);
RichEdit1.Lines.Clear;
RichEdit1.Lines.LoadFromFile('c:\sge\obscon.txt');

end;

end.
