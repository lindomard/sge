unit s_venda_pre_defensivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrm_Venda_Pre_Defensivo = class(TForm)
    Label1: TLabel;
    edt_numrec: TEdit;
    bbSair: TBitBtn;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    edt_cpf: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure edt_cpfExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mNumRec: String;
    mCpf: String;
  end;

var
  frm_Venda_Pre_Defensivo: Tfrm_Venda_Pre_Defensivo;

implementation

uses S_CABC, Func;

{$R *.dfm}

procedure Tfrm_Venda_Pre_Defensivo.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_Venda_Pre_Defensivo.bbSairClick(Sender: TObject);
begin

if not Fcpf(edt_cpf.Text) then 
   begin
   MessageDlg('Cpf invalido!',mtWarning,[mbOk],0);
   edt_cpf.SetFocus;
   end;

mNumRec:=edt_numrec.Text;
mCpf   :=edt_cpf.text;
end;

procedure Tfrm_Venda_Pre_Defensivo.edt_cpfExit(Sender: TObject);
begin
edt_cpf.Text:=MaskCPFCNPJ(edt_cpf.Text);
if not Fcpf(edt_cpf.Text) then
   begin
   MessageDlg('Cpf invalido!',mtWarning,[mbOk],0);
   end;
end;

end.
