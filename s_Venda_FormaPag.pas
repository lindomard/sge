unit s_Venda_FormaPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrm_Venda_FormaPag = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    lbl_nome: TStaticText;
    lbl_dados_pedido: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Venda_FormaPag: TFrm_Venda_FormaPag;

implementation

{$R *.dfm}

end.
