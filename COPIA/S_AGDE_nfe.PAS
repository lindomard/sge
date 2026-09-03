unit S_Agde_nfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Gauges, jpeg, 
  ComCtrls;

type
  TFrm_Agde_nfe = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    bbCancelar: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    lbl_cliente: TLabel;
    lbl_cidade_uf: TLabel;
    lbl_valornumero: TLabel;
    lbl_arqenv: TLabel;
    Animate1: TAnimate;
    lbl_arqesperado: TLabel;
    Timer2: TTimer;
    lbl_doc: TLabel;
    Timer3: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer2Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArguardAssinado : String;
    ArqLocal: String;
  end;

var
  Frm_Agde_nfe: TFrm_Agde_nfe;
  cancelar_proc:Boolean=False;
  mArquivoRetornou: Boolean=false;
  mSaidaAutorizada: Boolean=False;
  mNomeArqRet: String;
implementation

uses Func;

{$R *.dfm}

procedure TFrm_Agde_nfe.Timer1Timer(Sender: TObject);
begin
if Label1.Font.Color=clred then
   Label1.Font.Color:=clGreen
else
   label1.Font.Color:=ClRed;
Label1.Update;
end;

procedure TFrm_Agde_nfe.bbCancelarClick(Sender: TObject);
begin
if fMensagem('Quer Realmente Cancelar o Processamento?',0,['1','2'],2)=mrYes then
   begin
   cancelar_proc:=True;
   mArquivoRetornou:=false;
   mSaidaAutorizada:=true;
   close;
   end;


end;


procedure TFrm_Agde_nfe.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if not mSaidaAutorizada then
   CanClose:=true;
end;

procedure TFrm_Agde_nfe.Timer2Timer(Sender: TObject);
begin
if FileExists(mNomeArqRet) then
   begin
   mArquivoRetornou:=true;
   mSaidaAutorizada:=true;
   close;
   end;

end;

procedure TFrm_Agde_nfe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Agde_nfe.Timer3Timer(Sender: TObject);
begin
if FileExists((ArguardAssinado)) then
  begin
  if FileAge(ArguardAssinado)<>FileAge(ArqLocal) then
    begin
    Animate1.Visible:=True;
    Animate1.Active:=True;
    Label1.Visible :=True;
    Label1.Update;
    if FileAge(ArguardAssinado)<>FileAge(ArqLocal+'2') then
      begin
      DeleteFile(pchar(ArqLocal+'2'));
      CopyFile(pchar(ArguardAssinado),pchar(ArqLocal+'2'),true);
      end;
    end;
  end;
end;

end.
