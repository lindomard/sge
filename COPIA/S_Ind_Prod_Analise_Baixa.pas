unit S_Ind_Prod_Analise_Baixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lbl_produto: TLabel;
    lbll_loteqtd: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses S_DM1;

{$R *.dfm}

end.
