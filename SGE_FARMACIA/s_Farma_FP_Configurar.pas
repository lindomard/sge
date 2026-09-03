unit s_Farma_FP_Configurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFrm_Farma_FP_Configurar = class(TForm)
    Label1: TLabel;
    edt_usuario: TEdit;
    Label2: TLabel;
    edt_senha: TEdit;
    Label3: TLabel;
    cb_ambiente: TComboBox;
    Label4: TLabel;
    CB_COTACAO: TComboBox;
    Label5: TLabel;
    bbConfirmar: TBitBtn;
    bbSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bbConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Farma_FP_Configurar: TFrm_Farma_FP_Configurar;

implementation

uses Func, flerarq, S_DM4, lerarq;

{$R *.dfm}

procedure TFrm_Farma_FP_Configurar.FormShow(Sender: TObject);
begin
if flfilpad(0,'_FCIA_POPULAR','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','USUARIO',[]) then
      edt_usuario.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','SENHA',[]) then
      edt_senha.Text:=desCriptografar(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','AMBIENTE',[]) then
      begin
      cb_ambiente.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
      with cb_ambiente do
        ItemIndex:=Items.IndexOf(cb_ambiente.Text);
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','COTACAO',[]) then
      begin
      CB_COTACAO.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
      with CB_COTACAO do
        ItemIndex:=Items.IndexOf(CB_COTACAO.Text);
      end;
   end;
end;

procedure TFrm_Farma_FP_Configurar.bbConfirmarClick(Sender: TObject);
begin
fDeletaPadroes(0,'_FCIA_POPULAR','');
fGravaPadroes(0,'USUARIO'   ,'text','_FCIA_POPULAR',edt_usuario.Text);
fGravaPadroes(0,'SENHA'     ,'text','_FCIA_POPULAR',Criptografar(edt_senha.Text));
fGravaPadroes(0,'AMBIENTE'  ,'text','_FCIA_POPULAR',cb_ambiente.Text);
fGravaPadroes(0,'COTACAO'   ,'text','_FCIA_POPULAR',CB_COTACAO.Text);
MessageDlg('Gravado!',mtInformation,[mbOk],0);
end;

procedure TFrm_Farma_FP_Configurar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Farma_FP_Configurar.bbSairClick(Sender: TObject);
begin
close;
end;

end.
