unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    lblresultado: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    Label4: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

Function  textoParaNumero(ptexto: String): String;
Function codigoLetra(str : String): string;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Function  textoParaNumero(ptexto: String): String;
var
tmp: String;
i: Integer;
begin
tmp:='';
for i:=1 to length(ptexto) do
   begin
   tmp := tmp + codigoletra(copy(lowercase(ptexto),i,1));
   end;
result:=tmp;
end;


Function codigoLetra(str : String): string;
var
mcodigoletra: string;
begin

    mcodigoLetra := inttostr(  integer(str[1])-97);
//    mcodigoLetra := inttostr(  integer(str[1]) - 97);
    result := mcodigoLetra;


end;
procedure TForm1.Button1Click(Sender: TObject);
begin
lblresultado.Caption:=textoParaNumero(Edit1.Text);

//Label2.Caption:=codigoLetra(Edit1.Text);

end;

procedure TForm1.Button2Click(Sender: TObject);
var
y_final: Integer;
x_pos: Integer;
mValor: String;
mLetra: Integer;
x_geral: Integer;
begin
y_final:=strtoint(Edit2.Text);
Memo1.Lines.clear;
mLetra:=65;
mValor:=' ';
x_pos:=1;
x_geral:=0;
While x_Geral<y_final do
  begin
  x_geral:=x_geral+1;
  if length(mvalor)=1 then
     mValor[length(mvalor)]:=char(x_pos+64)
  else
     mValor:=copy(mvalor,1,length(mValor)-1)+char(x_pos+64);
  x_pos:=x_pos+1;
   if x_pos>26 then
      begin
      x_pos:=1;
      mValor:=mValor+' ';
      end;
   Memo1.Lines.add(mvalor);

   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
    function DecToAlphal(Value: Cardinal): string;
    begin
      if Value = 0 then exit; // test for end of recursion
      dec(Value);
      result := DecToAlphal(Value div 26) + chr((Value mod 26) + 65);
    end;

begin
    lblresultado.Caption:=DecToAlphal(strtoint(edit1.text));
end;

end.
