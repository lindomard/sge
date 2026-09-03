unit S_CServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls, ExtCtrls, Buttons,func,S_CServerUser;

type
  TFrm_CServer = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Memo2: TMemo;
    Memo1: TMemo;
    eventos: TLabel;
    conectaqr: TBitBtn;
    desconectar: TBitBtn;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    sair: TBitBtn;
    procedure conectaqrClick(Sender: TObject);
    procedure desconectarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure sairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CServer: TFrm_CServer;
  Server: String;
  IsServer : Boolean;
  mavisoson: Boolean=True;
implementation


{$R *.dfm}

procedure TFrm_CServer.conectaqrClick(Sender: TObject);
begin
Application.CreateForm(TFrm_CServerUser, Frm_CServerUser);
{
if Frm_CServerUser.ShowModal=mrok then
   begin
   try
      Server:=Frm_CServerUser.usuario.Text;
//      if Frm_PPal.ClientSocket1.Active then Frm_PPal.ClientSocket1.Active := false;
      //if InputQuery('Computador de Conexão','Endereco IP ou Indentificação:', Server) then
      if Length(Server) > 0 then
         with Frm_PPal.ClientSocket1 do
         begin
           Host := Server;
           Active := True;
         end;
       eventos.Caption:='Conetado em: '+Server;
   except
      MessageDlg('Erro ao Conectar no computador: '+Frm_CServerUser.usuario.Text,mtWarning,[mbOk],0);
      end;

   end;
}
Frm_CServerUser.Free;
end;

procedure TFrm_CServer.desconectarClick(Sender: TObject);
begin
//Frm_PPal.ClientSocket1.Active := False;
//Frm_PPal.ServerSocket1.Active := True;
eventos.Caption      :='Não Conectado';

end;

procedure TFrm_CServer.BitBtn3Click(Sender: TObject);
begin
{
if IsServer then
   begin
   Frm_PPal.ServerSocket1.Socket.Connections[0].SendText(Memo1.Text);
   Memo2.Lines.Add(server+':'+Memo1.Text);
   Memo1.Text:='';
   end
else
   begin
   Frm_PPal.ClientSocket1.Socket.SendText(Memo1.Text);
   Memo2.Lines.Add(Frm_PPal.ClientSocket1.Socket.RemoteHost+':'+Memo1.Text);
   Memo1.Text:='';
   end;
}
Memo1.SetFocus;
end;

procedure TFrm_CServer.sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CServer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//if (FormState<>[fsModal]) then
//   Action := caFree;
end;

end.
