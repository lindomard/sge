unit S_AgruForn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrm_AgruForn = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    bbEfetivar: TBitBtn;
    edt_codfor: TEdit;
    edt_ncodfor: TEdit;
    edt_ccodfor: TEdit;
    NNOMCLI: TEdit;
    edt_nomfor: TEdit;
    bbSair: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_AgruForn: TFrm_AgruForn;

implementation

{$R *.dfm}

end.
