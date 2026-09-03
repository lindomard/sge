unit S_ConDat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,func, db,dbtables,S_DM1,s_usr,lerarq;

type
  TFrm_ConDat = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MDTSIS: TMaskEdit;
    MDTUACE: TMaskEdit;
    QTDD: TEdit;
    NOMUSR: TEdit;
    edt_codusr: TEdit;
    edt_senha: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codusrExit(Sender: TObject);
    procedure edt_codusrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConDat: TFrm_ConDat;

implementation

uses S_DM4, DateUtils;

{$R *.dfm}

procedure TFrm_ConDat.BitBtn2Click(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFrm_ConDat.BitBtn1Click(Sender: TObject);
begin
if (smaster(edt_senha.Text)) then
   begin
   edt_CODUSR.Text:='1111';
   modalresult:=mrOk;
   end
else if not flcadusr(1,0,edt_CODUSR.Text) then
   begin
   fMensagem('Usuário não cadastrado',0,['0'],0);
   edt_CODUSR.SetFocus;
   exit;
   end;
If (DM4.Tb_UsrSENHA.Value=Crip(edt_SENHA.Text,DM4.Tb_UsrCODUSR.AsInteger)) or (smaster(edt_SENHA.Text)) then
   modalResult:=mrOk
else
   Begin
   fMensagem('Senha  não confere',0,['0'],0);
   edt_SENHA.SetFocus;
   end;

end;

procedure TFrm_ConDat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure TFrm_ConDat.edt_codusrExit(Sender: TObject);
begin
if flcadusr(1,0,edt_codusr.Text) then
   NOMUSR.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_ConDat.edt_codusrKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codusr.Text:=fChamaUsr(0,'frm_ConDat',Key);
   if trim(edt_codusr.Text)<>'' then
      edt_codusrExit(Self);
   edt_senha.SetFocus;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

end.
