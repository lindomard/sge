unit S_Sen01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, func, S_DM1, S_Usr,db, dbtables, StdCtrls,lerarq;

type
  TFrm_Sen01 = class(TForm)
    ScrollBox1: TScrollBox;
    MCODUSR: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    edt_senha: TEdit;
    Label3: TLabel;
    OK: TButton;
    Fechar: TButton;
    NOMUSR: TLabel;
    Label4: TLabel;
    edt_conf: TEdit;
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure FecharClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure MCODUSRExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Sen01: TFrm_Sen01;

implementation

uses S_DM4;


{$R *.DFM}

procedure TFrm_Sen01.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_Sen01',Key);
   if trim(MCODUSR.Text)<>'' then
      MCODUSRExit(Self);
   key:=#0;
   end
else
   begin
   If not (Key in ['0'..'9']) and (Key<>#8) then Key:=#0;
   end;
end;

procedure TFrm_Sen01.FecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Sen01.OKClick(Sender: TObject);
begin
if edt_senha.Text<>edt_conf.Text then
   begin
   fmensagem('Confirmacao nao confere!',0,['0'],0);
   edt_senha.SetFocus;
   exit;
   end;
if ValFloat(MCODUSR.Text)<1 then
   begin
   fmensagem('Código do usuário inválido!',0,['0'],0);
   exit;
   end;
flcadpar02(0,0,codusr,'20');


If DM4.Tb_UsrCODUSR.AsInteger=ValInt(MCODUSR.Text) then
   begin
   If    (Crip(Edit2.Text,DM4.Tb_UsrCODUSR.AsInteger)=DM4.Tb_UsrSENHA.Value)
      or (Crip(Edit2.Text,0)=DM4.Tb_Par02senhageral.Value)
      or (Trim(DM4.Tb_UsrSENHA.Value)='')
      or (smaster(Edit2.Text)) then
      begin
      DM4.Tb_Usr.Edit;
      DM4.Tb_UsrSENHA.Value:=Crip(Trim(edt_senha.Text),DM4.Tb_UsrCODUSR.AsInteger);
      DM4.Tb_Usr.Post;
      fGerarSenhaGenesis(DM4.Tb_UsrCODUSR.AsInteger,trim(edt_senha.Text));

      if trim(DM4.Tb_UsrSENHA.Value)='' then
         fmensagem('Erro ao gravar a Senha',0,['0'],0)
      else
         fmensagem('Senha Gravada!',0,['0'],0);
      MCODUSR.Text:='';
      Edit2.Text:='';
      edt_senha.Text:='';

      MCODUSR.SetFocus;
      end
   else
      begin
      fmensagem('Senha Incorreta!',0,['0'],0);
      Edit2.SetFocus;
      end;
   end
else
   begin
   fmensagem('Código de Usuário Inválido!',0,['0'],0);
   MCODUSR.SetFocus;
   end;
end;

procedure TFrm_Sen01.MCODUSRExit(Sender: TObject);
begin
flcadusr(1,0,Trim(MCODUSR.Text));
if not DM4.Tb_Usr.Eof then
   NOMUSR.Caption:=DM4.Tb_UsrNOMUSR.Value
else
   begin
   if MCODUSR.Text<>'' then
      begin
      NOMUSR.Caption:='';
      AvisoSonoro(0);
      fmensagem('Usuário Não Cadastrado',0,['0'],0);
      MCODUSR.SetFocus;
      end;
   end;
end;

procedure TFrm_Sen01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
