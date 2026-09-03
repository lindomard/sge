unit s_MDFE_justificativa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrm_MDFE_Justificativa = class(TForm)
    Label1: TLabel;
    edt_justificativa: TEdit;
    lbl_faltam: TLabel;
    bbOk: TBitBtn;
    bbCancelar: TBitBtn;
    procedure edt_justificativaChange(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MDFE_Justificativa: TFrm_MDFE_Justificativa;

implementation

{$R *.dfm}

procedure TFrm_MDFE_Justificativa.edt_justificativaChange(Sender: TObject);
var
x_qtd: integer;
begin
x_qtd:=15-length( edt_justificativa.Text);
if x_qtd=1 then
  lbl_faltam.Caption:='Falta 1 Letra'
else if x_Qtd>0 then
  lbl_faltam.Caption:='Faltam '+InttoStr(x_qtd)+' Letras'
else
  lbl_faltam.Caption:='';


end;

procedure TFrm_MDFE_Justificativa.bbCancelarClick(Sender: TObject);
begin
edt_justificativa.text:='';
close;
end;

procedure TFrm_MDFE_Justificativa.bbOkClick(Sender: TObject);
begin
if length(edt_justificativa.Text)<15 then
   begin
   MessageDlg('Justificativa invalida!',mtWarning,[mbOk],0);
   edt_justificativa.SetFocus;
   exit;
   end
else
  close;
end;

end.
