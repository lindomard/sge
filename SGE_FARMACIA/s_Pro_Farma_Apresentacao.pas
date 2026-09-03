unit s_Pro_Farma_Apresentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrm_Pro_Farma_Apresentacao = class(TForm)
    lbl_produto: TLabel;
    Label1: TLabel;
    edt_apres: TEdit;
    CB_APRES_NOME: TComboBox;
    bbConfirmar: TBitBtn;
    bbCancelar: TBitBtn;
    procedure edt_apresExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbConfirmarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mOperacao: Boolean;
    Procedure fMelhorColocacao(pNome: String);

  end;

var
  frm_Pro_Farma_Apresentacao: Tfrm_Pro_Farma_Apresentacao;

implementation

uses Func;

{$R *.dfm}

procedure Tfrm_Pro_Farma_Apresentacao.edt_apresExit(Sender: TObject);
begin
edt_apres.Text:=fdeixanum(edt_apres.Text);
end;

procedure Tfrm_Pro_Farma_Apresentacao.FormCreate(Sender: TObject);
begin
    mOperacao:=false;

end;

procedure Tfrm_Pro_Farma_Apresentacao.bbConfirmarClick(Sender: TObject);
begin
    mOperacao:=true;
    close;
end;

procedure Tfrm_Pro_Farma_Apresentacao.bbCancelarClick(Sender: TObject);
begin
    mOperacao:=false;
    close;

end;


Procedure Tfrm_Pro_Farma_Apresentacao.fMelhorColocacao(pNome: String);
var
x_string: Integer;
mAchou: Boolean;
mApresent: string;
mNome_Ana: String;
begin
x_string:=pos('MG',pNome);
if x_string=0 then
   mNome_Ana:=pNome
else
   begin
   x_string:=x_string+2;
   mNome_Ana:=copy(pnome,x_string,length(pnome)-x_string);
   end;
mAchou:=false;
for x_string:=1 to length(mNome_Ana) do
   begin
   if not (mNome_Ana[x_string] in ['0'..'9']) then
      begin
      if (mAchou) then
         begin
         break
         end
      end
   else 
      begin
      mApresent:=mApresent+mNome_Ana[x_string];
      mAchou:=true;
      end;
   end;
edt_apres.Text:=mApresent;
if pos('ML',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='ML'
else if pos('CP ',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='CAPSULAS'
else if pos('CAPS',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='CAPSULAS'
else if pos('CPR',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='COMPRIMIDOS'
else if pos('COMP',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='COMPRIMIDOS'
else if pos('DRG',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='DRAGEAS'
else if pos('DRAG',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='DRAGEAS'
else if pos('GR',uppercase(pNome))>0 then
   CB_APRES_NOME.Text:='GRAMAS';

end;

end.
