unit S_Ped_ObsCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,func;

type
  TFrm_Ped_ObsCli = class(TForm)
    Panel1: TPanel;
    lbl_nomcli: TLabel;
    lbl_endereco: TLabel;
    lbl_fone: TLabel;
    lbl_cidade: TLabel;
    lbl_cnpj: TLabel;
    lbl_vend: TLabel;
    GB_OBS: TGroupBox;
    lbl_obs05: TLabel;
    lbl_obs04: TLabel;
    lbl_obs03: TLabel;
    lbl_obs02: TLabel;
    lbl_obs01: TLabel;
    Panel2: TPanel;
    bbSair: TBitBtn;
    CB_LEITURA: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ped_ObsCli: TFrm_Ped_ObsCli;

implementation

{$R *.dfm}

procedure TFrm_Ped_ObsCli.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_ObsCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
