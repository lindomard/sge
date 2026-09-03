unit S_Ped_DescAlter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,func;

type
  TFrm_Ped_DescAlter = class(TForm)
    Panel1: TPanel;
    DESCALTER: TMemo;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    SAIR: TBitBtn;
    GroupBox1: TGroupBox;
    NOMPRO: TEdit;
    lbl_TamTexto: TLabel;
    procedure CANCELARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DESCALTERKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    mTamTexto: Integer;
    end;

var
  Frm_Ped_DescAlter: TFrm_Ped_DescAlter;

implementation

{$R *.dfm}

procedure TFrm_Ped_DescAlter.CANCELARClick(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFrm_Ped_DescAlter.GRAVARClick(Sender: TObject);
begin
DESCALTER.Text:=trim(DESCALTER.Text);
ModalResult:=mrOk;
end;

procedure TFrm_Ped_DescAlter.SAIRClick(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFrm_Ped_DescAlter.FormActivate(Sender: TObject);
begin
DESCALTER.SetFocus;

end;

procedure TFrm_Ped_DescAlter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ped_DescAlter.FormCreate(Sender: TObject);
begin
mTamTexto:=0;

end;

procedure TFrm_Ped_DescAlter.DESCALTERKeyPress(Sender: TObject;
  var Key: Char);
begin
if mTamTexto>0 then
   lbl_TamTexto.Caption:='Tamanho Permitido: '+IntToStr(mTamTexto)+' Digitado: '+IntTostr(length(DESCALTER.Text))
                     +' Restam: '+IntToStr(mTamTexto-length(DESCALTER.Text))
else
   lbl_TamTexto.Visible:=false;

end;

end.
