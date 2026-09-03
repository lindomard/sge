unit S_SPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit;

type
  TFrm_SPED = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    rg_tiporemessa: TRadioGroup;
    Button1: TButton;
    cb_perfil: TComboBox;
    cb_industrial: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_SPED: TFrm_SPED;

implementation

uses Func, lerarq, S_DM1;

{$R *.dfm}

end.
