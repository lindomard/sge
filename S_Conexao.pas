unit S_Conexao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask;

type                          
  TFrm_Conexao = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    CB_TPENV: TCheckBox;
    CB_PROANT: TCheckBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    CB_RETORNO: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Conexao: TFrm_Conexao;

implementation

{$R *.dfm}

end.
