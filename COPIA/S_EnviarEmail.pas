unit S_EnviarEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTP, IdBaseComponent, IdMessage, StdCtrls, Buttons, IdHTTP,Mapi,S_DM1,lerarq,
  func, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, Zip
  , XMLDoc, ComCtrls;

type
  TFrm_EnviarEmail = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsConfiguracao: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    sbnBuscarCliente: TSpeedButton;
    EdtAssunto: TEdit;
    bbAnexar: TBitBtn;
    bbEnviar: TBitBtn;
    bbFechar: TBitBtn;
    bbOutLook: TBitBtn;
    lb_Para: TListBox;
    edt_remetente: TEdit;
    edt_emailremetente: TEdit;
    bbSalvar: TBitBtn;
    GroupBox1: TGroupBox;
    mmMensagem: TMemo;
    GroupBox2: TGroupBox;
    lbxAnexos: TListBox;
    edtDestinatario: TComboBox;
    bbLimpar: TBitBtn;
    edt_copiapara: TEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    sbnsenha: TSpeedButton;
    edt_hostname: TEdit;
    edt_username: TEdit;
    edt_senha: TEdit;
    edt_porta: TEdit;
    OdAnexos: TOpenDialog;
    IdMessage: TIdMessage;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    IdSMTP1: TIdSMTP;
    Label10: TLabel;
    edt_aplicativo: TEdit;
    sbn_buscaraplicativo: TSpeedButton;
    bbEnviarNovo: TBitBtn;
    procedure bbAnexarClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure bbEnviarClick(Sender: TObject);
    procedure bbOutLookClick(Sender: TObject);
    procedure lb_ParaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbxAnexosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure edtDestinatarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbLimparClick(Sender: TObject);
    procedure edtDestinatarioExit(Sender: TObject);
    procedure edt_copiaparaExit(Sender: TObject);
    procedure GroupBox3Exit(Sender: TObject);
    procedure edt_usernameExit(Sender: TObject);
    procedure sbnsenhaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbnBuscarClienteClick(Sender: TObject);
    procedure sbn_buscaraplicativoClick(Sender: TObject);
    procedure bbEnviarNovoClick(Sender: TObject);
    procedure edt_aplicativoExit(Sender: TObject);
  private
    { Private declarations }
    colocaBaner: Boolean;
    path: string;
    zip: TZip;
  public
    { Public declarations }
    Tipo: Integer; // 0 - Cliente 1 - Fornecedor
    CliFor: String;
    function fZiparArquivos(pArqEntra,pArqSai,pComentario: String): Boolean;

    function fConfigurarSMPT1:boolean;


    function fEnviarDireto(out pResposta: String): Boolean;

    procedure fSetarEmaildoCliente;
    procedure fAtualizardadosIniciais(pSetarEmail: boolean);








  end;

var
  Frm_EnviarEmail: TFrm_EnviarEmail;

implementation

uses DB, S_DM4, S_DM2, Func2;

{$R *.dfm}

function TFrm_EnviarEmail.fZiparArquivos(pArqEntra,pArqSai,pComentario: String): Boolean;
begin
zip.filename := pArqSai;
zip.FileSpecList.Add(pArqEntra);
zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
zip.add;            //DO IT HERE!!!
if trim(pComentario)<>'' then
   zip.ZipComment := pComentario;
result:=true;
end;


procedure TFrm_EnviarEmail.bbAnexarClick(Sender: TObject);
begin
if odAnexos.Execute then
    lbxAnexos.Items.Add(odAnexos.FileName);
end;

procedure TFrm_EnviarEmail.bbFecharClick(Sender: TObject);
begin
close;
end;


function TFrm_EnviarEmail.fConfigurarSMPT1:boolean;
begin
result:=true;
if (lowercase(edt_hostname.Text)='gmail') then
   IdSMTP1.Host    :='smtp.gmail.com'
else
   IdSMTP1.Host    :='smtp.live.com';


IdSMTP1.Username:=edt_username.Text;
IdSMTP1.Password:=edt_senha.Text;
IdSMTP1.Port    :=valint(edt_porta.Text);
IdSMTP1.AuthenticationType  := atLogin;

if IdSMTP1.IOHandler=nil then
   begin
   IdSMTP1.IOHandler :=  IdSSLIOHandlerSocket1;
//   TIdSSLIOHandlerSocketOpenSSL
//   IdSMTP.UseTLS :=  utUseExplicitTLS;
   end;

if Trim(IdSMTP1.Host)='' then
  begin
  MessageDlg('Para Utilizar Esta Forma de Envio Favor cadastrar o Servidor de E-Mail!',mtWarning,[mbOk],0);
  result:=false;
  exit;
  end;

if Trim(IdSMTP1.Username)='' then
  begin
  MessageDlg('Para Utilizar Esta Forma de Envio Favor cadastrar o '+#13
            +'Nome do Usuario de Autenticação de E-Mail!',mtWarning,[mbOk],0);
  result:=false;
  exit;
  end;

if Trim(IdSMTP1.Password)='' then
  begin
  MessageDlg('Para Utilizar Esta Forma de Envio Favor cadastrar a '+#13
            +'Senha do Usuario de Autenticação de E-Mail!',mtWarning,[mbOk],0);
  result:=false;
  exit;
  end;


IdMessage.From.Name   :=edt_remetente.Text;

{ Destinatários em cópia oculta }

IdMessage.From.Text   :=edt_remetente.Text;
IdMessage.From.Address:=edt_emailremetente.Text;







try
   IdSMTP1.Disconnect;
   IdSMTP1.Connect;
except on e : exception do
    begin
//    Messagedlg('Erro ao conectar caixa de email '+e.message,mterror,[mbOk],0);
    end;
    end;

end;


procedure TFrm_EnviarEmail.bbEnviarClick(Sender: TObject);
var
mResposta: string;
begin
if not fEnviarDireto(mResposta) then
   MessageDlg(mResposta,mtWarning,[mbOk],0);

end;

function TFrm_EnviarEmail.fEnviarDireto(out pResposta: String): Boolean;

var
  mErros,y,x,Anexo : Integer;
  mDest,mDestino: String;
//  SSL : TIdSSLIOHandlerSocketOpenSSL;

begin
pResposta:='';
result:=false;
if lb_Para.Items.Count<1 then
   begin
   pResposta:=pResposta+'Não ha destinatarios!'+#13;
   end;



if (lowercase(edt_hostname.Text)<>'gmail') and
   (lowercase(edt_hostname.Text)<>'hotmail') then
   begin
   pResposta:=pResposta+'Validos para contas do hotmail ou gmail!'+#13;
   end;

if not fConfigurarSMPT1 then
   begin
   pResposta:=pResposta+'Nao Conectou ao servidor de email!'+#13;
   end;

if trim(edt_copiapara.Text)<>'' then
  IdMessage.BccList.EMailAddresses := edt_copiapara.Text;


mErros:=0;
if trim(pResposta)<>'' then
   begin
   result:=false;
   exit;
   end;
if fsonumero(clifor)>0 then
   begin
   if Tipo=0 then
     flcadcli_con(1,0,CliFor)
   else if Tipo=1 then
     flcadfor_con(1,0,CliFor);
   end;

for x:=0 to lb_Para.Items.Count-1 do
  begin
  if trim(lb_Para.Items.Strings[x])='' then
    Continue;
  mDestino:='';
  if (valint(Copy(lb_Para.Items.Strings[x],1,4))=0)  and
     (Copy(lb_Para.Items.Strings[x],1,4)<>'0000') then
     mdest:=lb_Para.Items.Strings[x]
  else
     begin
     if Tipo=0 then
        begin
        if Copy(lb_Para.Items.Strings[x],1,4)<>'0000' then
           begin
           DM2.Tb_Con_Cli.Locate('CC_CODIGO',Copy(lb_Para.Items.Strings[x],1,4),[]);
           mDest:=Trim(DM2.Tb_Con_CliCC_EMAIL.AsString);
           end
        else
           begin
           mDest:=Copy(lb_Para.Items.Strings[x],5,length(lb_Para.Items.Strings[x]));
           end;
        end
     else if Tipo=1 then
        begin
        if Copy(lb_Para.Items.Strings[x],1,4)<>'0000' then
          begin
          DM2.Tb_Con_For.Locate('CC_CODIGO',Copy(lb_Para.Items.Strings[x],1,4),[]);
          mDest:=Trim(DM2.Tb_Con_ForCC_EMAIL.AsString);
          end
        else
          begin
          mDest:=Copy(lb_Para.Items.Strings[x],5,length(lb_Para.Items.Strings[x]));
          end;
        end
      else
        mDest:=Trim(lb_Para.Items.Strings[x]);
      end;
   for y:=1 to length(mDest) do
      begin
      if mDest[y]=' ' then
         break;
      mDestino:=mDestino+mDest[y];
      end;
   IdMessage.MessageParts.Clear;
   IdMessage.Recipients.EMailAddresses := mDestino;
   IdMessage.Subject := edtAssunto.Text;
   IdMessage.Body := mmMensagem.Lines;
   for Anexo := 0 to lbxAnexos.Items.Count-1 do
      TIdAttachment.Create(idmessage.MessageParts, TFileName(lbxAnexos.Items.Strings[Anexo]));

   try
      IdSMTP1.Send(IdMessage);
   except on e : exception do
      begin
      pResposta:=pResposta+'Erro ao Enviar o Email! '+e.Message+#13;
      mErros:=1;
      end;
      end;
  if mErros=1 then
      break;
  end;
if (mErros=0) then
   begin
   result:=true;
//  fmensagem('Email enviado com sucesso!', 0,['0'],0);
   if (DM1.Tb_EmpCGC.AsFloat=02299715000112) then
      colocaBaner:=True;
   Close;
   end;

end;

function SendEMail(Handle: THandle; Mail: TStrings):
Cardinal;
type
TAttachAccessArray = array [0..0] of TMapiFileDesc;
PAttachAccessArray = ^TAttachAccessArray;
var
MapiMessage: TMapiMessage;
Receip: TMapiRecipDesc;
Attachments: PAttachAccessArray;
AttachCount: Integer;
i1: integer;
FileName: string;
dwRet: Cardinal;
MAPI_Session: Cardinal;
WndList: Pointer;
begin
dwRet := MapiLogon(Handle,
PChar(''),
PChar(''),
MAPI_LOGON_UI or MAPI_NEW_SESSION,
0, @MAPI_Session);
if (dwRet <> SUCCESS_SUCCESS) then
   begin
   MessageBox(Handle,
   PChar('erro ao tentar enviar email - Error while trying to send email'),
   PChar('Error'),
   MB_ICONERROR or MB_OK);
   end
else
   begin
   FillChar(MapiMessage, SizeOf(MapiMessage), #0);
   Attachments := nil;
   FillChar(Receip, SizeOf(Receip), #0);
   if Mail.Values['to'] <> '' then
      begin
      Receip.ulReserved := 0;
      Receip.ulRecipClass := MAPI_TO;
      Receip.lpszName :=
      StrNew(PChar(Mail.Values['to']));
      Receip.lpszAddress := StrNew(PChar('SMTP:' +
      Mail.Values['to']));
      Receip.ulEIDSize := 0;
      MapiMessage.nRecipCount := 1;
      MapiMessage.lpRecips := @Receip;
      end;
   AttachCount := 0;
   for i1 := 0 to MaxInt do
      begin
      if Mail.Values['attachment' + IntToStr(i1)] = '' then
         break;
      Inc(AttachCount);
      end;
   if AttachCount > 0 then
      begin
      GetMem(Attachments, SizeOf(TMapiFileDesc) *
      AttachCount);
   for i1 := 0 to AttachCount - 1 do
      begin
      FileName := Mail.Values['attachment' +
      IntToStr(i1)];
      Attachments[i1].ulReserved := 0;
      Attachments[i1].flFlags := 0;
      Attachments[i1].nPosition := ULONG($FFFFFFFF);
      Attachments[i1].lpszPathName :=
      StrNew(PChar(FileName));
      Attachments[i1].lpszFileName :=
      StrNew(PChar(ExtractFileName(FileName)));
      Attachments[i1].lpFileType := nil;
      end;
   MapiMessage.nFileCount := AttachCount;
   MapiMessage.lpFiles := @Attachments^;
   end;

   if Mail.Values['subject'] <> '' then
      MapiMessage.lpszSubject :=StrNew(PChar(Mail.Values['subject']));
   if Mail.Values['body'] <> '' then
      MapiMessage.lpszNoteText :=StrNew(PChar(Mail.Values['body']));
   WndList := DisableTaskWindows(0);
   try
      Result := MapiSendMail(MAPI_Session, Handle,
      MapiMessage, MAPI_DIALOG, 0);
   finally
      EnableTaskWindows( WndList );
      end;
  for i1 := 0 to AttachCount - 1 do
     begin
     StrDispose(Attachments[i1].lpszPathName);
     StrDispose(Attachments[i1].lpszFileName);
     end;
  if Assigned(MapiMessage.lpszSubject) then
     StrDispose(MapiMessage.lpszSubject);
  if Assigned(MapiMessage.lpszNoteText) then
     StrDispose(MapiMessage.lpszNoteText);
  if Assigned(Receip.lpszAddress) then
     StrDispose(Receip.lpszAddress);
  if Assigned(Receip.lpszName) then
     StrDispose(Receip.lpszName);
  MapiLogOff(MAPI_Session, Handle, 0, 0);
  end;
end;

procedure TFrm_EnviarEmail.bbOutLookClick(Sender: TObject);
var
  mail: TStringList;
  y,x,Anexo : Integer;
  mDest,mDestino: String;
begin
for x:=0 to lb_Para.Items.Count-1 do
   begin
   if trim(lb_Para.Items.Strings[x])='' then
      Continue;
   mDestino:='';
//   mDest:=Trim(lb_Para.Items.Strings[x]);
   if (fsonumero(Copy(lb_Para.Items.Strings[x],5,length(lb_Para.Items.Strings[x])))>0) OR (Copy(lb_Para.Items.Strings[x],1,4)='0000') then
      mDest:=Trim(Copy(lb_Para.Items.Strings[x],5,length(lb_Para.Items.Strings[x])))
   else
      mDest:=lb_Para.Items.Strings[x];

   for y:=1 to length(mDest) do
      begin
      if mDest[y]=' ' then
         break;
      mDestino:=mDestino+mDest[y];
      end;
   mail := TStringList.Create;
   try
      mail.values['to'] := mDestino; ///AQUI VAI O EMAIL DO DESTINATARIO///
      mail.values['subject'] := EdtAssunto.Text; ///AQUI O ASSUNTO///
      mail.values['body'] := mmMensagem.Text; ///AQUI O TEXTO NO CORPO DO EMAIL///
      for Anexo := 0 to lbxAnexos.Items.Count-1 do
         mail.values['attachment'+inttoStr(anexo)]:=lbxAnexos.Items.Strings[anexo];
      sendEMail(Application.Handle, mail);
   except
      MessageDlg('Erro ao Tentar enviar E_Mail!',mtError,[mbOk],0);
      mail.Free;
      exit;
      end;
   mail.Free;
   end;
end;

procedure TFrm_EnviarEmail.lb_ParaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   begin
   if lb_Para.ItemIndex>=0 then
      lb_Para.Items.Delete(lb_Para.ItemIndex);
   end;
end;

procedure TFrm_EnviarEmail.lbxAnexosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   begin
   if lbxAnexos.ItemIndex>=0 then
      lbxAnexos.Items.Delete(lbxAnexos.ItemIndex);
   end;

end;

procedure TFrm_EnviarEmail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
IF IdSMTP1.Connected then
  IdSMTP1.Disconnect;

if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_EnviarEmail.FormShow(Sender: TObject);
begin
fAtualizardadosIniciais(false);

end;


procedure TFrm_EnviarEmail.fAtualizardadosIniciais(pSetarEmail: boolean);
begin

edtDestinatario.Items.Clear;
if Tipo=0 then
  begin
  flcadcli(1,0,CliFor);
  flcadcli_con(1,0,DM1.Tb_CliCCODCLI.AsString);
  if length(trim(DM1.Tb_CliCEMAIL.AsString))>5 then
    edtDestinatario.Items.Add('0000'+DM1.Tb_CliCEMAIL.AsString);
  while not DM2.Tb_Con_Cli.Eof do
    begin
    if not DM2.Tb_Con_CliCC_EMAIL.IsNull then
      begin
      edtDestinatario.Items.Add(copy( FormatFloat('0000',DM2.Tb_Con_CliCC_CODIGO.AsFloat),1,4)+'['+DM2.Tb_Con_CliCC_NOME.AsString+'-'+DM2.Tb_Con_CliCC_DEPTO.AsString+']');
      end;
    DM2.Tb_Con_Cli.Next;
    end;
  end
else if Tipo=1 then
  begin
  flcadfor(1,0,CliFor);
  flcadfor_con(1,0,DM1.Tb_ForFCODFOR.AsString);
  if length(trim(DM1.Tb_ForFEMAIL.AsString))>5 then
    edtDestinatario.Items.Add('0000'+DM1.Tb_ForFEMAIL.AsString);
  while not DM2.Tb_Con_For.Eof do
    begin
    if not DM2.Tb_Con_ForCC_EMAIL.IsNull then
      begin
      edtDestinatario.Items.Add(copy(FormatFloat('0000',DM2.Tb_Con_ForCC_CODIGO.AsFloat),1,4)+'['+DM2.Tb_Con_CliCC_NOME.AsString+'-'+DM2.Tb_Con_ForCC_DEPTO.AsString+']');
      end;
    DM2.Tb_Con_For.Next;
    end;
  end;
if pSetarEmail then
   fSetarEmaildoCliente;


end;

procedure TFrm_EnviarEmail.bbSalvarClick(Sender: TObject);
var
  x: Integer;
begin
fDeletaPadroes(-1,'_enviaremail','');
for x:=0 to mmMensagem.Lines.Count-1 do
   begin
   fGravaPadroes2(-1,'LINHA'+IntToStr(x)   ,'memo'       ,'_enviaremail','',mmMensagem.Lines[x]);
   end;
MessageDlg('Gravado!',mtInformation,[mbOk],0);
end;

procedure TFrm_EnviarEmail.edtDestinatarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=Vk_space then
  begin
  if edtDestinatario.Items.IndexOf(edtDestinatario.Text) >= 0 then
    begin
    if Trim(edtDestinatario.Text)<>'' then
       begin
       lb_Para.Items.Add(edtDestinatario.Text);
       edtDestinatario.Text:='';
       edtDestinatario.SetFocus;
       end;
    end
  else
    begin
    if Trim(edtDestinatario.Text)<>'' then
       begin
       lb_Para.Items.Add('0000'+edtDestinatario.Text);
       edtDestinatario.Text:='';
       edtDestinatario.SetFocus;
       end;
    end;
  end;
end;

procedure TFrm_EnviarEmail.bbLimparClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_enviaremail','');
end;

procedure TFrm_EnviarEmail.edtDestinatarioExit(Sender: TObject);
begin
  if Trim(edtDestinatario.Text)<>'' then
     begin
     lb_Para.Items.Add(edtDestinatario.Text);
     edtDestinatario.Text:='';
     edtDestinatario.SetFocus;
     end;

end;

procedure TFrm_EnviarEmail.edt_copiaparaExit(Sender: TObject);
begin
fDeletaPadroes(-1,'_enviaremail','');
if trim(edt_copiapara.Text)<>'' then 
   fGravaPadroes(-1,'edt_copiapara'     ,'text'   ,'_enviaremail',edt_copiapara.Text);

end;

procedure TFrm_EnviarEmail.GroupBox3Exit(Sender: TObject);
begin

fDeletaPadroes(codusr,'_enviaremail','');
if trim(edt_hostname.Text)<>'' then
   fGravaPadroes(codusr,'edt_hostname'     ,'text'   ,'_enviaremail',edt_hostname.Text);

if trim(edt_username.Text)<>'' then
   fGravaPadroes(codusr,'edt_username'     ,'text'   ,'_enviaremail',edt_username.Text);

if trim(edt_senha.Text)<>'' then
   fGravaPadroes(codusr,'edt_senha'        ,'text'   ,'_enviaremail',edt_senha.Text);
if trim(edt_porta.Text)<>'' then
   fGravaPadroes(codusr,'edt_porta'        ,'text'   ,'_enviaremail',edt_porta.Text);



end;

procedure TFrm_EnviarEmail.edt_usernameExit(Sender: TObject);
begin
edt_emailremetente.Text:=edt_username.Text;
if pos('gmail',edt_username.Text)>0 then                   
   edt_hostname.Text:='gmail'
else if pos('hotmail',edt_username.Text)>0 then
   edt_hostname.Text:='hotmail'
else
   edt_hostname.Text:='invalida!';








end;

procedure TFrm_EnviarEmail.sbnsenhaClick(Sender: TObject);
begin
MessageDlg('Senha: '+edt_senha.Text,mtInformation, [mbOk],0);
end;

procedure TFrm_EnviarEmail.FormCreate(Sender: TObject);
begin
if (DM1.Tb_EmpCGC.AsFloat=02299715000112) then
   colocaBaner:=True;
zip := TZip.create(self);
pagecontrol1.activepageindex:=0;


if flfilpad(-2,'_enviaremail','edt_aplicativo') then
   edt_aplicativo.Text:=DM4.Tb_FilPad2FPVALOR2.AsString;


if flfilpad(-1,'_enviaremail','edt_copiapara') then
  edt_copiapara.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

if flparger(0,0,'1') then
  begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','edt_hostname',[]) then
      edt_hostname.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','edt_username',[]) then
      edt_username.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','edt_senha',[]) then
      edt_senha.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','edt_porta',[]) then
      edt_porta.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
  end;

edt_emailremetente.Text:=DM1.Tb_EmpE_MAIL.AsString;
edt_senha.Text:=DM4.Tb_UsrSENHAEMAILUSR.AsString;
edt_username.Text      :=edt_emailremetente.Text;

if flfilpad(codusr,'_enviaremail','edt_copiapara') then
  edt_copiapara.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   // inicio

if DM1.Tb_PargerPHOSTEMAIL.IsNull then
   IdSMTP1.Host:='smtp.gmail.com'
 else
   IdSMTP1.Host:=DM1.Tb_PargerPHOSTEMAIL.Value;

 if DM1.Tb_PargerPUSEREMAIL.IsNull then
   IdSMTP1.Username:=''
 else
    begin
    IdSMTP1.Username:=DM1.Tb_PargerPUSEREMAIL.Value;
    edt_username.Text      :=DM1.Tb_PargerPUSEREMAIL.Value;
    end;


 if DM1.Tb_PargerPSENHAEMAIL.IsNull then
   begin
   IdSMTP1.Password:='';
   edt_senha.Text:='';

   end
 else
   begin
   IdSMTP1.Password:=DM1.Tb_PargerPSENHAEMAIL.Value;
   edt_senha.Text:=DM1.Tb_PargerPSENHAEMAIL.Value;

   end;

 if DM1.Tb_PargerPPORTAEMAIL.IsNull then
   IdSMTP1.Port:=0
 else
   begin
   IdSMTP1.Port   :=DM1.Tb_PargerPPORTAEMAIL.AsInteger;
   edt_porta.Text:=DM1.Tb_PargerPPORTAEMAIL.AsString;
   end;

 if DM1.Tb_PargerPTLOGINEMAIL.AsInteger=0 then
   IdSMTP1.AuthenticationType:=atLogin
 else
   IdSMTP1.AuthenticationType:=atNone;


 if DM1.Tb_PargerPTAUTENTICAEMAIL.AsInteger=1 then
   IdSSLIOHandlerSocket1.SSLOptions.Method:=sslvTLSv1
 else if DM1.Tb_PargerPTAUTENTICAEMAIL.AsInteger=2 then
   IdSSLIOHandlerSocket1.SSLOptions.Method:=sslvSSLv2
 else if DM1.Tb_PargerPTAUTENTICAEMAIL.AsInteger=3 then
   IdSSLIOHandlerSocket1.SSLOptions.Method:=sslvSSLv23
 else if DM1.Tb_PargerPTAUTENTICAEMAIL.AsInteger=4 then
   IdSSLIOHandlerSocket1.SSLOptions.Method:=sslvSSLv3
 else
   IdSMTP1.IOHandler:=nil;
   // termino

flcademp(1,0,IntToStr(iif(codemp>100,codemp-100,codemp)));
edt_remetente.Text:=DM1.Tb_EmpRAZAO.AsString;


if CODUSR=1111 then
  sbnsenha.visible:=true
else
  begin
  sbnsenha.visible:=false;
  flcadusr(1,0,inttostr(codusr));
  if not DM4.Tb_Usr.IsEmpty then
    begin
    edt_remetente.Text:=DM4.Tb_UsrNOMUSR.AsString;
    if length(trim(DM4.Tb_UsrEMAILUSR.AsString))>10 then
      begin
      edt_emailremetente.Text:=DM4.Tb_UsrEMAILUSR.AsString;
      end;
    if (TRIM(DM4.Tb_UsrEMAILUSR.AsString)<>'')
        and (TRIM(DM4.Tb_UsrSENHAEMAILUSR.AsString)<>'') then
      begin
      IdSMTP1.Username:=DM4.Tb_UsrEMAILUSR.AsString;
      IdSMTP1.Password:=DM4.Tb_UsrSENHAEMAILUSR.AsString;
      edt_username.Text:=DM4.Tb_UsrEMAILUSR.AsString;
      edt_senha.Text:=DM4.Tb_UsrSENHAEMAILUSR.AsString;
      edt_usernameExit(self);
      end;
    end;

  end;
edt_usernameExit(self);

lbxAnexos.Items.Clear;



//mmMensagem.Lines.Clear;
if flfilpad(-1,'_enviaremail','') then
  begin
  while not DM4.Tb_FilPad2.Eof do
    begin
    mmMensagem.Lines.Add(DM4.Tb_FilPad2FPVALOR2.AsString);
    DM4.Tb_FilPad2.Next;
    end;
  end;

fConfigurarSMPT1;


if (colocaBaner=True)  then

  begin
  mmMensagem.Lines.Add(' ');
  mmMensagem.Lines.Add(' ');
  mmMensagem.Lines.Add(' Intersys Sistemas de Gestão Empresarial ');
  mmMensagem.Lines.Add('   (62) 3247 - 1560 / (62) 3247 - 1580   ');
  mmMensagem.Lines.Add('   Acesse http://www.intersysnet.com.br  ');
  mmMensagem.Lines.Add(' Ligue e agende uma visita com nossos consultores. ');
  colocaBaner:=False;
  end;

end;

procedure TFrm_EnviarEmail.sbnBuscarClienteClick(Sender: TObject);
var
mcodcli: real;
begin
mcodcli:=fSonumero(fChamaCli(0,'Frm_enviaremail',edtDestinatario.Text));
if mcodcli>0 then
   begin
   if fLerGenerico_query('CADCLI','CEMAIL','CCODCLI=0'+floattostr(mcodcli),query_consulta) then
      begin
      edtDestinatario.Text:=query_consulta.fieldbyname('CEMAIL').asstring;
      edtDestinatarioExit(self);
      end;

   end;

end;

procedure TFrm_EnviarEmail.sbn_buscaraplicativoClick(Sender: TObject);
begin
if OdAnexos.Execute then
   begin
   edt_aplicativo.text:=OdAnexos.FileName;
   edt_aplicativoExit(self);
   end;

end;

procedure TFrm_EnviarEmail.bbEnviarNovoClick(Sender: TObject);
var
mxml_enviou: TStringList;
x_email: integer;
mnomesaida: string;
marqdestino: string;
marqdestino_novo: string;
mpasadestino: string;
mEmail: string;
x_Arqdest: integer;
begin
if trim(edt_aplicativo.text)='' then
   begin
   MessageDlg('E Necessario que seja configurado a pasta do aplicativo para envio de e-mail!',mtWarning,[mbOk],0);
   exit;
   end;
if not fileexists(edt_aplicativo.Text) then
   begin
   MessageDlg('o Aplicative de Envio de E-Mail '+edt_aplicativo.Text+' nao foi encontrado!',mtWarning,[mbOk],0);
   exit;
   end;
mxml_enviou:=TStringList.create;
mxml_enviou.Add('<Enviaremail>');
mxml_enviou.Add('<destinatarios>');
for x_email:=0 to lb_Para.Items.Count-1 do
   begin
  if (valint(Copy(lb_Para.Items.Strings[x_email],1,4))=0)  and
     (Copy(lb_Para.Items.Strings[x_email],1,4)<>'0000') then
     mEmail:=lb_Para.Items.Strings[x_email]
  else
     mEmail:=Copy(lb_Para.Items.Strings[x_email],5,length(lb_Para.Items.Strings[x_email]));

   mxml_enviou.Add(fGeraXMLString_comacento(0, 'destinatario', mEmail));
   end;
mxml_enviou.Add('</destinatarios>');



mxml_enviou.Add('<copiasocultas>');
mxml_enviou.Add(fGeraXMLString_comacento(0,'copiaoculta',edt_copiapara.Text));
mxml_enviou.Add('</copiasocultas>');



mxml_enviou.Add('<anexos>');
for x_email:=0 to lbxAnexos.Items.Count-1 do
   begin
   mpasadestino:=Fnomearq_Pasta(1,edt_aplicativo.Text);


   if mpasadestino[length(mpasadestino)]<>'\' then
      mpasadestino:=mpasadestino+'\';
   mpasadestino:=mpasadestino+'ENVIAR';
   if not DirExists(mpasadestino) then
      createdir(mpasadestino);
   mpasadestino:=mpasadestino+'\';

   marqdestino:=uppercase(mpasadestino+Fnomearq_Pasta(0,lbxAnexos.Items[x_email]));
   x_Arqdest:=0;
   marqdestino_novo:=marqdestino;
   While true do
      begin
      if not FileExists(marqdestino_novo) then
         begin
         break
         end
      else
         begin
         x_Arqdest:=x_Arqdest+1;
         marqdestino_novo:=fgerarnovonomearquivo(marqdestino,x_Arqdest);
         end;
      end;
   marqdestino:=marqdestino_novo;

   if UpperCase(lbxAnexos.Items[x_email])<>marqdestino then
      begin
      CopyFile(pchar(lbxAnexos.Items[x_email]),pchar(marqdestino),true);
      end;
   mxml_enviou.Add(fGeraXMLString_comacento(0,'anexo',Fnomearq_Pasta(0,marqdestino)));
   end;
mxml_enviou.Add('</anexos>');



mxml_enviou.Add('<observacoes>');
mxml_enviou.Add(fGeraXMLString_comacento(0,'assunto',fSubstituirtexto(EdtAssunto.Text,#13#10,'|')));
mxml_enviou.Add(fGeraXMLString_comacento(0,'cabecalho',''));
mxml_enviou.Add(fGeraXMLString_comacento(0,'corpo',fSubstituirtexto(mmMensagem.Lines.Text,#13#10,'|')));
mxml_enviou.Add(fGeraXMLString_comacento(0,'rodape',''));
mxml_enviou.Add('</observacoes>');
mxml_enviou.Add('</Enviaremail>');

x_email:=0;
{
mnomesaida:=Fnomearq_Pasta(1,edt_aplicativo.Text);
if mnomesaida[length(mnomesaida)]<>'\' then
   mnomesaida:=mnomesaida+'\';
}
mnomesaida:=mpasadestino+mnomesaida+'envio_email';
While true do
   begin
   if FileExists(mnomesaida+inttostr(x_email)+'.xml') then
      begin
      x_email:=x_email+1;
      continue;
      end;
   break;
   end;

mxml_enviou.savetofile(mnomesaida+inttostr(x_email)+'.xml');
freeandnil(mxml_enviou);
MessageDlg('Enviado!',mtWarning,[mbOk],0);

end;

procedure TFrm_EnviarEmail.edt_aplicativoExit(Sender: TObject);
begin

fDeletaPadroes(-2,'_enviaremail','');
if (trim(edt_aplicativo.Text)<>'') and (FileExists(edt_aplicativo.Text)) then
   begin
   fGravaPadroes2(-2,'edt_aplicativo'   ,'text'       ,'_enviaremail','',edt_aplicativo.Text);
   end;

end;


procedure TFrm_EnviarEmail.fSetarEmaildoCliente;
var
x_dest: Integer;
begin
for x_dest:=0 to edtDestinatario.Items.Count-1 do
   begin
   if trim(edtDestinatario.Items[x_dest])<>'' then
      lb_Para.Items.Add(edtDestinatario.Items[x_dest]);
   end;

end;

end.
