unit S_ConDiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func, ScktComp,
  ComCtrls, ExtCtrls,commom,zip,func2,S_Agde;
// 200.103.27.52 da assumed
// 200.175.182.139 da intersys

type
  TReceiveMode = ( rmWAIT_HEADER, rmRECEIVING_FILE, rmRECEIVING_LIST );

  TFrm_ConDiv = class(TForm)
    bbAtuaSGE: TBitBtn;
    BitBtn2: TBitBtn;
    ClientSocket1: TClientSocket;
    PBar: TProgressBar;
    StaticText1: TStaticText;
    bbEnvCons: TBitBtn;
    Label1: TLabel;
    SERVER: TEdit;
    Timer1: TTimer;
    procedure bbAtuaSGEClick(Sender: TObject);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure bbEnvConsClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    RMode : TReceiveMode;
    Header        : TMsgHeader;
    KbReceived    : integer;
    DataLen       : integer;
    SecCount      : integer;
    Fs            : TFileStream;
    FRequestedFile: string;
    path: string;
    zip: TZip;

    procedure ProcessHeader( Data: string);
    procedure ProcessFile(Data: string);
    procedure ProcessList(Data: string);
    function fcondivContinua(ptipo: Integer): Boolean;
    function FConDivExtrair(ptipo: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConDiv: TFrm_ConDiv;
  mrecebido: String;
  mtempo: Integer=5;
  mhorai: TDateTime;
  mEspera: Boolean=False;
  msolicit: String;
  f: TextFile;
  marqo, marqd, mcam: String;
  y,matriba, matribn: Integer;
  mavisaqueda: Boolean=False;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_ConDiv.bbAtuaSGEClick(Sender: TObject);

begin

if ClientSocket1.Active then ClientSocket1.Close;
ClientSocket1.Address:=Trim(SERVER.Text);

Try
   ClientSocket1.Open;
except
   MessageDlg('Não Foi Possível Conectar ao Servidor,  Verifique'+#13
             +'se Vc Esta Conectado a Internet e Tente Novamente!',
             mtWarning,[mbOk],0);
   exit;
   end;
if not FileExists('\SGE\SGE.CF') then
   begin
   MessageDlg('Arquivo de Configuração de ambiente não encontrado. Contactar com suporte!',mtWarning,[mbOk],0);
   exit;
   end;
AssignFile(f,'\SGE\SGE.CF');
Reset(F);
ReadLn(F,mcam);
mcam:=copy(mcam,2,50);
if Trim(mcam)='' then
   begin
   MessageDlg('Arquivo de Configuração de ambiente não encontrado. Contactar com suporte!',mtWarning,[mbOk],0);
   closefile(f);
   exit;
   end;

if mcam[length(mcam)]='\' then
   mcam:=copy(mcam,1,length(mcam)-1);

PBar.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
frequestedfile:=trim(mcam)+'\NOVAVER\SGE.ZIP';

marqo:=trim(mcam)+'\NOVAVER\SGE.EXE';
if not FileExists(marqo) then
   matriba:=0
else
   matriba:=FileAge(marqo);
mEspera:=True;
msolicit:=insere2('ATRIBUTO-SGE',' ',19)+insere(DM1.Tb_EmpCGC.AsString,'0',14);
SendData(  ClientSocket1.Socket , MSG_REQUEST_LIST, msolicit);
closefile(f);
end;

procedure TFrm_ConDiv.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
MessageDlg('Não Foi Possível  Conectar ao Servidor,  Verifique'+#13
          +'se Vc Esta Conectado a Internet e Tente Novamente!'+#13
          +'Codigo do Erro: '+IntToStr(ErrorCode),
          mtWarning,[mbOk],0);
   exit;

end;

procedure TFrm_ConDiv.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ConDiv.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
var
 Buf   : string;
 MsgLen,
 LenReceived : integer;
begin
   // get the *approximate* message length
   MsgLen := Socket.ReceiveLength;
   // prepare a buffer and get message
   SetLength( Buf, MsgLen );
   LenReceived := Socket.ReceiveBuf( Buf[1], MsgLen );
   // **always** adjust for actual received # of bytes!
   Buf := Copy( Buf, 1, LenReceived );
   inc( KbReceived, LenReceived );

   case RMode of
    rmWAIT_HEADER    :  ProcessHeader( Buf );
    rmRECEIVING_FILE :  ProcessFile( Buf );
    rmRECEIVING_LIST :  ProcessList( Buf );
   end;
//   mEspera:=False;

end;
procedure TFrm_ConDiv.ProcessHeader( Data: string );
begin
  showMessage('Data: '+Data);
  Move( Data[1], Header, SizeOf(Header));
  // delete header
  Delete( Data, 1, SizeOf(Header));
  // remember number of bytes
  DataLen := Header.PayLoadLen;
  // init. progressbar
  PBar.Max := DataLen;
  PBar.StepBy( length(Data));
  KbReceived := 0;
  SecCount := 0;
  case Header.OpCode of
   MSG_FILE_FOLLOWS :
         begin
            RMode := rmRECEIVING_FILE;

            try
              Fs := TFileStream.Create( FRequestedFile,
                             fmCREATE or fmOPENWRITE);
              StaticText1.Caption:='Recebendo arquivo: '+IntToStr(DataLen)+' bytes';
              ProcessFile( Data );
            except
              StaticText1.Caption:='Erro Recebendo arquivo: '+SysErrorMessage(GetLastError);
            end;
         end;
   MSG_LIST_FOLLOWS :
        begin
         RMode := rmRECEIVING_LIST;
         mrecebido:=data;
//         lbFiles.Clear;
         ProcessList( Data );
        end

   else MessageDlg('Erro no Servidor!',mtWarning,[mbOk],0);
  end;

end;

//*****************************************************************************
procedure TFrm_ConDiv.ProcessFile( Data: string );
begin
 try
   PBar.StepBy( length(Data));
   Fs.Write(Data[1], Length(Data));
   Dec( DataLen, Length(Data));
   if DataLen = 0 then
   begin
     RMode := rmWAIT_HEADER;
     Fs.Free;
     mEspera:=False;
     PBar.Position := 0;
     KbReceived := 0;
   end;
   Data := '';
 except
     MessageDlg('Erro ao gravar arquivo: '
         + SysErrorMessage(GetLastError),mtWarning,[mbOk],0);
 end;
end;


//*****************************************************************************
procedure TFrm_ConDiv.ProcessList( Data: string );
begin
  dec(DataLen, Length(Data));
  Data := '';
  if DataLen = 0 then
  begin
    StaticText1.Caption:='Arquivos Recebidos';
    mEspera:=False;
    RMode := rmWAIT_HEADER;
    PBar.Position := 0;
  end;
end;



procedure TFrm_ConDiv.FormCreate(Sender: TObject);
begin
zip := TZip.create(self);
end;

procedure TFrm_ConDiv.bbEnvConsClick(Sender: TObject);
var
f: TextFile;
y: Integer;
mcomando,mlinha,mnombco: String;
begin


if not FileExists(mcaminho+'\SGE.CF') then
   begin
   ShowMessage('Arquivo de Configuração de ambiente não encontrado. Contactar com suporte');
   exit;
   end;

if not FileExists(mcaminho+'\BKP.CF') then
   begin
   MessageDlg('Não foi encontrado o arquivo de configuração de backus entre na opção'+#13
             +'SISTEMA->BACKUPS->CONFIGURAÇOES DO BACKUPS e configure',mtError,[mbok],0);
   exit;
   end;

assignFile(f,mcaminho+'\BKP.CF');
if not DirectoryExists(mcaminho) then
   begin
   MessageDlg('Ha Algo de Errado, não Foi possível compactar o arquivo',mtError,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Label1.Caption:='Criando Arquivo Temporário! Aguarde...';
Frm_Agde.Update;
Application.ProcessMessages;

reset(f);
mnombco:='';
for y:=1 to 8 do
   begin
   readln(f,mlinha);
   if trim(mlinha)='' then
      Continue;
   if copy(mlinha,1,3)='-B-' then
      begin
      mnombco:=copy(mlinha,4,length(mlinha)-3);
      break;
      end;
   end;
closefile(f);
if trim(mnombco)='' then
   mnombco:='C:\SGE\'
else
   begin
   if copy(mnombco,length(mnombco),1)<>'\' then
      mnombco:=mnombco+'\';
   end;

if pbanco=0 then
   begin
   mnombco:=mcaminho+'\bkpora';
   if FileExists(mnombco+'.DMP') then
      DeleteFile(mnombco+'.DMP');
   if FileExists(mnombco+'.ZIP') then
      DeleteFile(mnombco+'.ZIP');
   end
else
   begin
   if FileExists(mcaminho+'\bkpint.gdb') then
      deletefile(mcaminho+'\bkpint.gdb');
   if FileExists(mcaminho+'\bkpint.zip') then
      deletefile(mcaminho+'\bkpint.zip');
   if FileExists(mnombco+'BANCO.GDB') then
      begin
      CopyFile(pchar(mnombco+'BANCO.GDB'),pchar(mcaminho+'\bkpint.gdb'),false);
      mnombco:=mcaminho+'\bkpint';
      end
   else
      begin
      MessageDlg('Erro ao Tentar Copiar o arquivo Interbase!',mtWarning,[mbOk],0);
      end;
   end;
if pbanco=0 then
   begin
   if not FileExists('C:\ORACLE\ORA81\BIN\EXP.EXE') then
      begin
      MessageDlg('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\EXP.EXE. '+#13
                +'Utilize de Preferencia o SERVIDOR. Operação CANCELADA!',mtError,[mbok],0);
      exit;
      end;
   if not FileExists('C:\ORACLE\ORA81\BIN\IMP.EXE') then
      begin
      MessageDlg('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\IMP.EXE. '+#13
                +'Utilize de Preferencia o SERVIDOR. Operação CANCELADA!',mtError,[mbok],0);
      exit;
      end;

   if not FileExists('C:\ORACLE\ORA81\BIN\SVRMGRL.EXE') then
      begin
      MessageDlg('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\SVRMGRL.EXE. '+#13
                +'Utilize de Preferencia o SERVIDOR. Operação CANCELADA!',mtError,[mbok],0);
      exit;
      end;
   mcomando:='EXP '+Banco_usuario+'/'+Banco_senha+' OWNER="'+Banco_ServerName+'" FILE='+Banco_Usuario;
   if fexecprog(mcomando,0)=-1 then
      begin
      MessageDlg('Erro ao iniciar o processo de Copia das Informações!',mtError,[mbOk],0);
      exit;
      end;
   if not FileExists(mnombco+'.dmp') then
      begin
      MessageDlg('ERRO AO TENTAR CRIAR UM ARQUIVO DE SEGURANCA'+#13
                +'Não foi possivel completar o enviou das informações!',mtError,[mbok],0);
      exit;
      end;
   end;
Frm_Agde.Label1.Caption:='Compactando o Arquivo! Aguarde...';
Frm_Agde.Update;
Application.ProcessMessages;

zip.filename := mnombco+'.ZIP';
if pbanco=0 then
   begin
   zip.FileSpecList.Add(mnombco+'.DMP');
   zip.ZipComment := 'BKPSGEORA';
   mcomando:='BKP-\'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+'\'+'BKPORA.ZIP';
   end
else
   begin
   zip.FileSpecList.Add(mnombco+'.GDB');
   zip.ZipComment := 'BKPSGEINT';
   mcomando:='BKP-\'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+'\'+'BKPINT.ZIP';
   end;
zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
zip.add;           //DO IT HERE!!!

Try
   ClientSocket1.Open;
except
   MessageDlg('Não Foi Possível Conectar ao Servidor,  Verifique'+#13
             +'se Vc Esta Conectado a Internet e Tente Novamente!',
             mtWarning,[mbOk],0);
   exit;
   end;
mcomando:='BKP-\'+'SQLNET.LOG';
{
matributo:=False;
SendData(  ClientSocket1.Socket , MSG_REQUEST_LIST, mcomando);
mhorai:=Now;
While matributo=false do
   begin
   Application.ProcessMessages;
   if StrToInt(FormatDateTime('hhnnss',now-mhorai))>mtempo then
      begin
      MessageDlg('Tempo Limite Esgotado!, Tente outra hora!',mtError,[mbOk],0);
      ClientSocket1.Close;
      exit;
      end;
   end;
   }
//SendFile(  ClientSocket1.Socket,mnombco+'.ZIP');
SendFile(  ClientSocket1.Socket,'\SGE\SQLNET.LOG');
mhorai:=Now;
{While matributo=false do
   begin
   Application.ProcessMessages;
   if StrToInt(FormatDateTime('hhnnss',now-mhorai))>mtempo then
      begin
      MessageDlg('Tempo Limite Esgotado!, Tente outra hora!',mtError,[mbOk],0);
      ClientSocket1.Close;
      exit;
      end;
   end;
}ClientSocket1.Close;
Frm_Agde.Free;
MessageDlg('Enviou de Arquivo Concluido!',mtInformation,[mbok],0);

end;


function TFrm_ConDiv.fcondivContinua(ptipo: Integer): Boolean;
begin
if matriba=StrToInt(Trim(mrecebido)) then
   begin
   ClientSocket1.Close;
   MessageDlg('Última Versão diponível é de: '+FormatDatetime(fdt, FileDateToDateTime(matriba))+' as '+
                       FormatDatetime(fhr, FileDateToDateTime(matriba))+#13
                       +'e é a mesma que esta disponível no seu computador!',mtInformation,[mbOk],0);
   result:=false;
   exit;
   end;
mEspera:=true;
msolicit:='PROGRAMA-SGE';
msolicit:=insere2(msolicit,' ',19)+insere(DM1.Tb_EmpCGC.AsString,'0',14);
SendData( ClientSocket1.Socket , MSG_REQUEST_LIST, msolicit);
result:=False;
end;
function TFrm_ConDiv.FConDivExtrair(ptipo: Integer): Boolean;
begin

if FileExists(mcam+'\NOVAVER\SGE.EXE') then
   begin
   for y:=0 to 100 do
      begin
      marqd:=mcam+'\NOVAVER\SGE.A'+FormatFloat('00',y);
      if not FileExists(marqd) then
         begin
         break;
         end;
      end;
   if y>99 then
      begin

      Messagedlg('Elimine os arquivos com o nome: '+mcam+'\NOVAVER\SGE.A??'+#13
               +'mais antigos ',mtInformation,[mbOk],0);
      y:=10;
      marqd:='SGE.A'+FormatFloat('00',y);
      DeleteFile(marqd);
      end;
   RenameFile(mcam+'\NOVAVER\SGE.EXE',marqd);
   end;
zip.filename := trim(mcam)+'\NOVAVER\SGE.ZIP';
zip.FileSpecList.add('*.*');
zip.ExtractOptions := [eoUpdate, eoWithPaths];
zip.ExtractPath := mcam+'\NOVAVER\';
StaticText1.Caption := format('%d Arquivos Extrados do arquivo.',[zip.extract]);
MessageDlg('Concluido!',mtWarning,[mbOk],0);
PBar.Visible       :=False;
StaticText1.Visible:=False;
marqd:='Para que Voce Comece a utilizar a nova versão é preciso'+#13
      +'que o sistema seja reiniciado, deseja fazer isto agora?';
if Application.MessageBox(pchar(marqd),'',MB_YESNO+MB_DEFBUTTON2)=mrYes then
   begin
   ffechartudo(0);
   Application.Terminate;
   result:=true;
   exit;
   end;
result:=True;
end;
procedure TFrm_ConDiv.Timer1Timer(Sender: TObject);
begin
if (trim(msolicit)<>'') and (mEspera=False) then
   begin
   if copy(msolicit,1,12)='ATRIBUTO-SGE' then
      begin
      msolicit:='';
      fcondivContinua(0);
      end                         
   else if copy(msolicit,1,12)='PROGRAMA-SGE' then
      begin
      msolicit:='';
      FConDivExtrair(0);
      end;
   end;
end;

end.
