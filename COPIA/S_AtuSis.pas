unit S_AtuSis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ScktComp,S_DM1,func, Gauges,zip,commom,
  ComCtrls,func2, DB, DBTables,lerarq,S_Justif;


type
  TFrm_AtuSis = class(TForm)
    lbl_servidor: TLabel;
    SERVER: TEdit;
    bbAtuaSGE: TBitBtn;
    bbEnvCons: TBitBtn;
    ClientSocket1: TClientSocket;
    gbProgress: TGroupBox;
    Gauge1: TGauge;
    StaticText1: TStaticText;
    bbAtuaHelp: TBitBtn;
    Tb_Origem: TTable;
    Tb_OrigemHP_CODSEG: TFloatField;
    Tb_OrigemHP_FORMULARIO: TStringField;
    Tb_OrigemHP_NOMCAM: TStringField;
    Tb_OrigemHP_MAPA: TStringField;
    Tb_OrigemHP_CODLINK: TFloatField;
    Tb_Destino: TTable;
    BatchMove1: TBatchMove;
    bbSenhaLib: TBitBtn;
    bbSair: TBitBtn;
    bbTitAbertos: TBitBtn;
    bbAtuaSGEFrente: TBitBtn;
    bbDataServ: TBitBtn;
    procedure bbAtuaSGEClick(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbEnvConsClick(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtuaHelpClick(Sender: TObject);
    procedure bbSenhaLibClick(Sender: TObject);
    procedure bbTitAbertosClick(Sender: TObject);
    procedure bbAtuaSGEFrenteClick(Sender: TObject);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbAtuaSGECQClick(Sender: TObject);
    procedure bbDataServClick(Sender: TObject);
  private
    { Private declarations }
    zip: TZip;

    function FAguardaResp(ptipo: Integer): Boolean;
    function fRecebeArq(pDados: String; Phost:Integer): Boolean;
    function fRecebeTexto(pDados: String; Phost:Integer): Boolean;
    function fRecebeCabArq(pDados: String; Phost:Integer): Boolean;
    function FExtrairSGE(ptipo: Integer): Boolean;
    function FExtrairHelp(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;
Function HabilitaDesabilita(pTipo: Integer): Boolean;

var
  Frm_AtuSis: TFrm_AtuSis;
  mAgResp   : Boolean=False;
  mDataServ : TDateTime;
  mTestoRec : String;
  MsgLen, LenReceived: Integer;
  KbReceived: Integer;
  mTipoArq  : Boolean=false;
  mReceb    : Integer;
  mAtriba, mAtribn, mTamArq   : Integer;
  Fs        : TFileStream;
  mTmpLim   : Real;
  mcam: String;
  mavisaqueda: Boolean=False;
  mtentaautomatico: Boolean=false;
  matusisliberou  : Boolean=false;
//  mTimeOut01 : String='01:00:45';
//  mTimeOut02 : String='01:30:03';
  mTimeOut01 : String='00:02:45';
  mTimeOut02 : String='05:59:03';

  mhorai: TTime;
  mNomeArq: String;
  mAtuSisProcessou: Boolean=False;

implementation

uses S_Agde, S_DM2, S_DM4;

{$R *.dfm}

procedure TFrm_AtuSis.bbAtuaSGEClick(Sender: TObject);
var
f: TextFile;
marqo: String;
begin
//Label1.Caption:='Nada';
if not fEstanaNet then
   begin
   FMensagem('Favor conectar na internet antes de utilizar esta opcao!',0,['0'],0);
   exit;
   end;

mTipoArq:=false;
gbProgress.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
mcam:=Banco_Servidor;
if not DirectoryExists(trim(mcam)+'\NOVAVER') then
   CreateDir(trim(mcam)+'\NOVAVER');

marqo:=trim(mcam)+'\NOVAVER\'+Fnomearq_Pasta(0,Application.ExeName);

if not FileExists(marqo) then
   matriba:=0
else
   matriba:=FileAge(marqo);
mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      exit;
      end;
   end;
HabilitaDesabilita(1);
if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         ClientSocket1.Close;
         HabilitaDesabilita(0);
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;
ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   exit;
ClientSocket1.Socket.SendText('98'+Fnomearq_Pasta(0,Application.ExeName));
//ClientSocket1.Socket.SendText('98SGE.EXE');
if not FAguardaResp(0) then
   exit;
mAtribn:=ValInt(mTestoRec);
if matriba=mAtribn then
   begin
   mavisaqueda:=False;
   ClientSocket1.Close;
   FMensagem('Última Versão diponível é de: '+FormatDatetime(fdt, FileDateToDateTime(matriba))+' as '+
                       FormatDatetime(fhr, FileDateToDateTime(matriba))+#13
                       +'e é a mesma que esta disponível no seu computador!',0,['0'],0);
   gbProgress.Visible :=false;
   StaticText1.Visible:=false;
   exit;
   end;
{
FMensagem('Atual: '+FormatDatetime('dd/mm/yyyy hh:nn:sss',FileDateToDateTime(mAtriba))+#13
          +'Novo: '+FormatDatetime('dd/mm/yyyy hh:nn:sss',FileDateToDateTime(mAtribn)),0,['0'],0);
}
ClientSocket1.Socket.SendText('99'+fRetiraExtensao(Fnomearq_Pasta(0,Application.ExeName))+'.ZIP');
//ClientSocket1.Socket.SendText('99SGE.ZIP');
if not FAguardaResp(1) then
   exit;
mavisaqueda:=False;
ClientSocket1.Active:=False;
FExtrairSGE(0);
StaticText1.Caption:='Concluido!';


{
Tipo de Operaçao
00-Identificaçao de quem Conectou
90-Liberaçao do Sistema
98-Atributo de um determinado arquivo
99-Solicita um determinado arquivo
layout
nome            tamanho  conteudo
identificacao      02    00-Identicacao
CNPJ               14    cnpj/CPF com zeros a esquerda
NOME               40    Nome da Empresa/Vendedor
}


end;

function TFrm_AtuSis.FAguardaResp(ptipo: Integer): Boolean;
begin
mAgResp:=true;
mhorai:=Time;
While (mAgResp) and (ClientSocket1.Active) do
    begin
    if ptipo=0 then
       begin
       if (time-mhorai)>StrToTime(mTimeOut01) then
          begin
          FMensagem('Tempo Limite Esgotado!',0,['0'],0);
          ClientSocket1.Close;
          result:=False;
          end
       end
    else if ptipo=1 then
       begin
       if (time-mhorai)>StrToTime(mTimeOut02) then
          begin
          FMensagem('Tempo Limite Esgotado!',0,['0'],0);
          ClientSocket1.Close;
          result:=False;
          end
       end;
    verteclado_02(0);
    end;
if ClientSocket1.Active then
   result:=True
else
   result:=False;
end;

procedure TFrm_AtuSis.ClientSocket1Read(Sender: TObject;
  Socket: TCustomWinSocket);
var
 Buf         : string;
 y,x: Integer;
// Header      : TMsgHeader;
begin
   // get approximate message length

MsgLen := Socket.ReceiveLength;
   // prepare a buffer and get message
SetLength( Buf, MsgLen );
LenReceived := Socket.ReceiveBuf( Buf[1], MsgLen );

   // **always** adjust for actually received # of bytes!
Buf := Copy( Buf, 1, LenReceived );
inc( KbReceived, LenReceived );
if mTipoArq=true then
   begin
   fRecebeArq(buf,x-1);
   mReceb:=mReceb+LenReceived;
   if (mReceb>0) and (mtamarq>0) then
      begin
      try

          Gauge1.Progress:=mreceb div (mtamarq div 100);
      except
        end;
//      ClientSocket1.Socket.SendText('50'+IntTostr(mreceb div (mtamarq div 100)));
      end;
       if mReceb>=mTamArq then
      begin
      ClientSocket1.Socket.SendText('###%,,,%###');
      gbProgress.Visible:=False;
      fs.Free;
      fs:=nil;
      renamefile(mcam+'\NOVAVER\'+mNomeArq+'_$$$'
                 ,mcam+'\NOVAVER\'+mNomeArq);
      mTipoArq :=False;
      end;
   end
else if copy(buf,1,11)='###%,,,%###' then
  mAgResp:=False
else if copy(buf,1,11)='###%,89%###' then
  ClientSocket1.Active:=false
else if copy(buf,1,2)='00' then
   begin
   ClientSocket1.Socket.SendText('###%,,,%###');
   end
else if copy(buf,1,2)='01' then
   begin
   fRecebeTexto(buf,x-1);
   ClientSocket1.Socket.SendText('###%,,,%###');
   end
else if copy(buf,1,2)='02' then
   begin
   frecebecabarq(buf,x-1);
   ClientSocket1.Socket.SendText('###%,,,%###');
   gbProgress.Visible:=True;
   mReceb:=0;
   end;

{
Tipo de Operaçao
00-Identificaçao de quem Conectou
layout
nome            tamanho  conteudo
identificacao      02    00-Identicacao
CNPJ               14    cnpj/CPF com zeros a esquerda
NOME               40    Nome da Empresa/Vendedor



01-Receber Texto
 Recebendo Somente Texto
layout do texto
nome            tamanho  conteudo
identificacao      02    Identificacao
Restante           nn    Mensagem

02-Recebendo Arquivo Cabecalho
nome            tamanho  conteudo
identificacao      02    Tipo de Solicitaçao
Tamanho do Arquivo 14    Tamanho do arquivo a ser recebido
Nome do arquivo    60    Nome do arquivo

Serviços Comuns:
05-Cadastro de Produto
06-Cadastro de Clientes
07-Pedidos
08-Duplicatas


Servicos Especiais:
10-Retornos Pendentes
11-Liberação do Sistema
}

//recebido.Text:=recebido.Text+Socket.ReceiveText;


end;

function TFrm_AtuSis.fRecebeArq(pDados: String; Phost:Integer): Boolean;
begin
fs.write(pdados[1], length(pdados));
result:=True;
end;

function TFrm_AtuSis.fRecebeTexto(pDados: String; Phost:Integer): Boolean;
begin
mTestoRec:=copy(pDados,3,length(pdados)-2);
result:=True;
end;
function TFrm_AtuSis.fRecebeCabArq(pDados: String; Phost:Integer): Boolean;
var
x: Integer;
mArquivo: String;
begin
mNomeArq :=copy(pDados,17,60);
mArquivo :=Trim(mNomeArq);
x:=0;
if not DirExists(mcam+'\NOVAVER') then
   fcriarPastas(mcam+'\NOVAVER');

mcam:=TRIM(mcam);
While true do
   begin
   if (not FileExists(mcam+'\NOVAVER\'+mArquivo+'_$$$')) and
      (not FileExists(mcam+'\NOVAVER\'+mArquivo)) then
      break;
   DeleteFile(mcam+'\NOVAVER\'+mArquivo+'_$$$');
   DeleteFile(mcam+'\NOVAVER\'+mArquivo);
   if (not FileExists(mcam+'\NOVAVER\'+mArquivo+'_$$$')) and
      (not FileExists(mcam+'\NOVAVER\'+mArquivo)) then
      break;
   mArquivo:=trim(mNomeArq)+'_'+IntTostr(x);
   x:=x+1;
   end;
mNomeArq:=mArquivo;

Fs       := TFileStream.Create(trim(mcam)+'\NOVAVER\'+mNomeArq+'_$$$',
                             fmCREATE or fmOPENWRITE);
Mtamarq  :=StrToInt(copy(pdados,03,14));

mTipoArq :=True;
result:=True;
end;

procedure TFrm_AtuSis.FormCreate(Sender: TObject);
begin
if not flcademp(1,0,IntToStr(iif(codemp>100,codemp-100,codemp))) then
   begin
   FMensagem('Não Foi Possível identificar a Empresa Principal!',0,['0'],0)
   end;
if fEstanaNet then
   begin
//   if ObterIPRealInternet('http://checkip.dyndns.org/')='200.175.156.144' then
//   if ObterIPRealInternet('http://checkip.dyndns.org/')='189.27.118.191' then
//   if ObterIPRealInternet('http://checkip.dyndns.org/')='189.27.58.217' then
//187.115.66.177
 //  if (ObterIPRealInternet('http://checkip.dyndns.org/')=GetIP('http://www.intersysnet.com.br'))
//      or (ObterIPRealInternet('http://checkip.dyndns.org/')='187.115.66.177') then
   if (ObterIPRealInternet('http://checkip.dyndns.org/')='187.115.66.177') then
      SERVER.Text:='10.1.1.4'
   else
      SERVER.Text:='intersysnet.sytes.net';
//      SERVER.Text:='187.115.66.177';
//      SERVER.Text:='intersysnet.com.br';
//      SERVER.Text:='200.96.154.234';
   end;
   

zip := TZip.create(self);
if Not DirectoryExists('C:\SGE\RECEBE\') then
   CreateDir('C:\SGE\RECEBE');
if Not DirectoryExists('C:\SGE\ENVIAR\') then
   CreateDir('C:\SGE\ENVIAR');
if Not DirectoryExists('C:\SGE\SGE_LIBSIS\') then
   CreateDir('C:\SGE\SGE_LIBSIS');
if codusr=1111 then
   begin
   lbl_servidor.Visible:=true;
   SERVER.Visible      :=true;
   end
else
   begin
   lbl_servidor.Visible:=False;
   SERVER.Visible      :=False;
   end;
mcam:=Banco_Servidor;
{if DM4.Tb_ParGer02PG2UTILCQ.AsInteger=1 then
   bbAtuaSGECQ.Visible:=true
else
   bbAtuaSGECQ.Visible:=false;}
end;

procedure TFrm_AtuSis.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
mAgResp:=False;

HabilitaDesabilita(0);


if mavisaqueda then
   begin
   FMensagem('Conexão Perdida!',0,['0'],0);
   end;

end;

procedure TFrm_AtuSis.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if ClientSocket1.Active then
   ClientSocket1.Active:=False;
end;

procedure TFrm_AtuSis.bbEnvConsClick(Sender: TObject);
var
f: TextFile;
y: Integer;
mcomando,mlinha,mnombco,mnomarq: String;
begin



if not FileExists(mcaminho+'\BKP'+Banco_Usuario+'.CF') then
   begin
   FMensagem('Não foi encontrado o arquivo de configuração de backus entre na opção'+#13
             +'SISTEMA->BACKUPS->CONFIGURAÇOES DO BACKUPS e configure',0,['0'],0);
   exit;
   end;

assignFile(f,mcaminho+'\BKP'+Banco_Usuario+'.CF');
if not DirectoryExists(mcaminho) then
   begin
   FMensagem('Ha Algo de Errado, não Foi possível compactar o arquivo',0,['0'],0);
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Label1.Caption:='Criando Arquivo Temporário! Aguarde...';
verteclado_02(0);
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
   mnomarq:='bkpora.zip';
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
   mnomarq:='bkpint';
   if FileExists(mnombco+'BANCO.GDB') then
      begin
      CopyFile(pchar(mnombco+'BANCO.GDB'),pchar(mcaminho+'\bkpint.gdb'),false);
      mnombco:=mcaminho+'\bkpint';
      end
   else
      begin
      FMensagem('Erro ao Tentar Copiar o arquivo Interbase!',0,['0'],0);
      end;
   end;
if pbanco=0 then
   begin
   if not FileExists(ExtractFilePath(Application.ExeName)+'IGESTAO_BACKUPS.EXE') then
      begin
      FMensagem('Não foi encontrado o seguinte arquivo:'+ExtractFilePath(Application.ExeName)+'IGESTAO_BACKUPS.EXE'+#13
                +'Baixe o mesmo. Operação CANCELADA!',0,['0'],0);
      exit;
      end;


   if not FileExists('C:\ORACLE\ORA81\BIN\EXP.EXE') then
      begin
//      CopyFile(PCHAR(length(Banco_servidor,4)+'\ORACLE\ORA81\BIN\EXP.EXE'),PCHAR('C:\ORACLE\ORA81\BIN\EXP.EXE'),TRUE);
      FMensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\EXP.EXE. '+#13
                +'Utilize de Preferencia o SERVIDOR. Operação CANCELADA!',0,['0'],0);
      exit;
      end;
   if not FileExists('C:\ORACLE\ORA81\BIN\IMP.EXE') then
      begin
      FMensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\IMP.EXE. '+#13
                +'Utilize de Preferencia o SERVIDOR. Operação CANCELADA!',0,['0'],0);
      exit;
      end;

   if not FileExists('C:\ORACLE\ORA81\BIN\SVRMGRL.EXE') then
      begin
      FMensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\SVRMGRL.EXE. '+#13
                +'Utilize de Preferencia o SERVIDOR. Operação CANCELADA!',0,['0'],0);
      exit;
      end;
//   mcomando:='EXP '+Banco_usuario+'/'+Banco_senha+' OWNER="'+Banco_ServerName+'" FILE='+mnombco;
//   mcomando:='EXP '+Banco_usuario+'/'+Banco_senha+'@'+Banco_ServerName+' FILE='+mnombco;
   mcomando:='IGESTAO_BACKUPS.EXE ORACLE '+Banco_usuario+' '+Banco_ServerName+' '+mcaminho+' '+mnombco;
//   mcomando:='IGESTAO_BACKUPS.EXE ORACLE '+Banco_usuario+' '+Banco_ServerName+' '+mcam+' '+mcam+marq;

   if fexecprog(mcomando,0)=-1 then
      begin
      FMensagem('Erro ao iniciar o processo de Copia das Informações!',0,['0'],0);
      exit;
      end;
   if not FileExists(mnombco+'.dmp') then
      begin
      FMensagem('ERRO AO TENTAR CRIAR UM ARQUIVO DE SEGURANCA'+#13
                +'Não foi possivel completar o envio das informações!',0,['0'],0);
      exit;
      end;
   end;
Frm_Agde.Label1.Caption:='Compactando o Arquivo! Aguarde...';
verteclado_02(0);

{
Frm_Agde.Update;
Application.ProcessMessages;

zip.filename := mnombco+'.ZIP';
if pbanco=0 then
   begin
   zip.FileSpecList.Add(mnombco+'.DMP');
   zip.ZipComment := 'BKPSGEORA';
//   mcomando:='BKP-\'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+'\'+'BKPORA.ZIP';
   end
else
   begin
   zip.FileSpecList.Add(mnombco+'.GDB');
   zip.ZipComment := 'BKPSGEINT';
//   mcomando:='BKP-\'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+'\'+'BKPINT.ZIP';
   end;
zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
zip.add;           //DO IT HERE!!!

if DirExists(banco_servidor+'\PASTADOCS') then
   begin
   zip.FileSpecList.Add(banco_servidor+'\PASTADOCS\*.RTF');
   zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
   zip.add;            //DO IT HERE!!!
   zip.ZipComment := 'BKPINTERSYS';
   end;
if DirExists(banco_servidor+'\PASTADOCS\'+Banco_usuario) then
   begin
   zip.FileSpecList.Add(banco_servidor+'\PASTADOCS\'+Banco_usuario+'\*.RTF');
   zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
   zip.add;            //DO IT HERE!!!
   zip.ZipComment := 'BKPINTERSYS';
   end;

mnombco:=mnombco+'.ZIP';
}
Frm_Agde.Label1.Caption:='Conectando ao Servidor Remoto! Aguarde...';
verteclado_02(0);
Frm_Agde.Update;
Application.ProcessMessages;


mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      exit;
      end;
   end;
HabilitaDesabilita(1);

if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         HabilitaDesabilita(0);
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;
ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   begin
   ClientSocket1.Close;
   exit;
   end;
Frm_Agde.Label1.Caption:='Enviando os dados! Aguarde...';
verteclado_02(0);
Frm_Agde.Update;
Application.ProcessMessages;

mavisaqueda:=True;



Fs :=TFileStream.Create(mnombco, fmOPENREAD);

mTamArq :=fs.Size;
gbProgress.Visible:=True;
mReceb:=0;
ClientSocket1.Socket.SendText('02'+Formatfloat('00000000000000',mtamarq)+insere2(mnomarq,' ',60));
if not FAguardaResp(0) then

   exit;
ClientSocket1.Socket.SendStream(Fs);
if not FAguardaResp(1) then
   exit;
mavisaqueda:=False;
ClientSocket1.Close;
Frm_Agde.Free;
FMensagem('Envio de Arquivo Concluido!',0,['0'],0);


end;

procedure TFrm_AtuSis.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
mAgResp:=False

end;


function TFrm_AtuSis.FExtrairSGE(ptipo: Integer): Boolean;
var
y: Integer;
marqd: String;
begin
gbProgress.Visible    :=true;
if ptipo=3 then // SGE_CONFEC - CONFECÇOES
   begin
   if FileExists(mcam+'\NOVAVER\SGE_CONFECCOES.EXE') then
      begin
      for y:=0 to 100 do
         begin
         marqd:=mcam+'\NOVAVER\SGE_CONFECCOES.A'+FormatFloat('00',y);
         if not FileExists(marqd) then
            begin
            break;
            end;
         end;
     if y>99 then
         begin
         FMensagem('Elimine os arquivos com o nome: '+mcam+'\NOVAVER\SGE_CONFECCOES.A??'+#13
                  +'mais antigos ',0,['0'],0);
         y:=10;
         marqd:='SGE_CONFECCOES.A'+FormatFloat('00',y);
         DeleteFile(marqd);
         end;
      RenameFile(mcam+'\NOVAVER\SGE_CONFECCOES.EXE',marqd);
      end;
   zip.filename := trim(mcam)+'\NOVAVER\SGE_CONFECCOES.ZIP';
   zip.FileSpecList.add('*.*');
   zip.ExtractOptions := [eoUpdate, eoWithPaths];
   zip.ExtractPath := mcam+'\NOVAVER\';
   StaticText1.Caption := format('%d Arquivo Extraidos do arquivo.',[zip.extract]);
   end
else if ptipo=2 then // SGECQ - SAC
   begin
   if FileExists(mcam+'\NOVAVER\SGECQ.EXE') then
      begin
      for y:=0 to 100 do
         begin
         marqd:=mcam+'\NOVAVER\SGECQ.A'+FormatFloat('00',y);
         if not FileExists(marqd) then
            begin
            break;
            end;
         end;
     if y>99 then
         begin
         FMensagem('Elimine os arquivos com o nome: '+mcam+'\NOVAVER\SGECQ.A??'+#13
                  +'mais antigos ',0,['0'],0);
         y:=10;
         marqd:='SGECQ.A'+FormatFloat('00',y);
         DeleteFile(marqd);
         end;
      RenameFile(mcam+'\NOVAVER\SGECQ.EXE',marqd);
      end;
   zip.filename := trim(mcam)+'\NOVAVER\SGECQ.ZIP';
   zip.FileSpecList.add('*.*');
   zip.ExtractOptions := [eoUpdate, eoWithPaths];
   zip.ExtractPath := mcam+'\NOVAVER\';
   StaticText1.Caption := format('%d Arquivo Extraidos do arquivo.',[zip.extract]);
   end
else if ptipo=0 then
   begin
   if FileExists(mcam+'\NOVAVER\'+Fnomearq_Pasta(0,Application.ExeName)) then
      begin
      for y:=0 to 100 do
         begin
         marqd:=mcam+'\NOVAVER\'+fRetiraExtensao(Fnomearq_Pasta(0,Application.ExeName))+'.A'+FormatFloat('00',y);
         if not FileExists(marqd) then
            begin
            break;
            end;
         end;
     if y>99 then
         begin
         FMensagem('Elimine os arquivos com o nome: '+mcam+'\NOVAVER\'+fRetiraExtensao(Fnomearq_Pasta(0,Application.ExeName))+'.A??'+#13
                  +'mais antigos ',0,['0'],0);
         y:=10;
         marqd:=fRetiraExtensao(Fnomearq_Pasta(0,Application.ExeName))+'.A'+FormatFloat('00',y);
         DeleteFile(marqd);
         end;
      RenameFile(mcam+'\NOVAVER\'+Fnomearq_Pasta(0,Application.ExeName),marqd);
      end;
   zip.filename := trim(mcam)+'\NOVAVER\'+fRetiraExtensao(Fnomearq_Pasta(0,Application.ExeName))+'.ZIP';
   zip.FileSpecList.add('*.*');
   zip.ExtractOptions := [eoUpdate, eoWithPaths];
   zip.ExtractPath := mcam+'\NOVAVER\';
   StaticText1.Caption := format('%d Arquivo Extraidos do arquivo.',[zip.extract]);
   end
else
   begin
   if FileExists(mcam+'\NOVAVER\SGE_FRENTE.EXE') then
      begin
      for y:=0 to 100 do
         begin
         marqd:=mcam+'\NOVAVER\SGE_FRENTE.A'+FormatFloat('00',y);
         if not FileExists(marqd) then
            begin
            break;
            end;
         end;
     if y>99 then
         begin
         FMensagem('Elimine os arquivos com o nome: '+mcam+'\NOVAVER\SGE_FRENTE.A??'+#13
                  +'mais antigos ',0,['0'],0);
         y:=10;
         marqd:='SGE_FRENTE.A'+FormatFloat('00',y);
         DeleteFile(marqd);
         end;
      RenameFile(mcam+'\NOVAVER\SGE_FRENTE.EXE',marqd);
      end;
   zip.filename := trim(mcam)+'\NOVAVER\SGE_FRENTE.ZIP';
   zip.FileSpecList.add('*.*');
   zip.ExtractOptions := [eoUpdate, eoWithPaths];
   zip.ExtractPath := mcam+'\NOVAVER\';
   StaticText1.Caption := format('%d Arquivo Extraidos do arquivo.',[zip.extract]);
   end;
FMensagem('Concluido!',0,['0'],0);
gbProgress.Visible    :=False;
StaticText1.Visible:=False;
marqd:='Para que Voce Comece a utilizar a nova versão é preciso'+#13
      +'que o sistema seja reiniciado, deseja fazer isto agora?';
if fmensagem(pchar(marqd),0,['1','2'],2)=mrYes then
   begin
   ffechartudo(0);
   Application.Terminate;
   exit;
   end;
result:=True;
end;

function TFrm_AtuSis.FExtrairHelp(ptipo: Integer): Boolean;
var
y: Integer;
marqd: String;
begin
gbProgress.Visible    :=true;

zip.filename := trim(mcam)+'\NOVAVER\CADHELP.ZIP';
zip.FileSpecList.add('*.*');
zip.ExtractOptions    := [eoUpdate, eoWithPaths];
zip.ExtractPath := mcam+'\';
StaticText1.Caption   := format('%d Arquivos Extraidos do arquivo.',[zip.extract]);
gbProgress.Visible    :=False;
StaticText1.Visible   :=False;
if not FileExists(mcam+'\CADHELP.DB') then
   begin
   FMensagem('Houve erro na atualização, pois o arquivo'+#13
             +'de help não foi encontrado',0,['0'],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from CADHELP');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;
Tb_Origem.Close;
Tb_Destino.Close;
Tb_Origem.DatabaseName:=trim(mcam);

Tb_Origem.TableName:='CADHELP';
Tb_Destino.TableName:='CADHELP';
Tb_Origem.Open;
Tb_Destino.Open;



BatchMove1.Source     :=Tb_Origem;
BatchMove1.Destination:=Tb_Destino;
BatchMove1.Mappings.Clear;
BatchMove1.Mappings.Add('HP_CODSEG=HP_CODSEG');
BatchMove1.Mappings.Add('HP_FORMULARIO=HP_FORMULARIO');
BatchMove1.Mappings.Add('HP_NOMCAM=HP_NOMCAM');
BatchMove1.Mappings.Add('HP_MAPA=HP_MAPA');
BatchMove1.Mappings.Add('HP_CODLINK=HP_CODLINK');
BatchMove1.Execute;
Tb_Origem.Close;
Tb_Destino.Close;
DeleteFile(mcam+'\CADHELP.DB');
DeleteFile(mcam+'\NOVAVER\CADHELP.ZIP');
FMensagem('Atualização Completa!',0,['0'],0);
result:=True;
end;

procedure TFrm_AtuSis.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AtuSis.bbAtuaHelpClick(Sender: TObject);
var
f: TextFile;
marqo: String;
begin

gbProgress.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
if not DirectoryExists(trim(Banco_Servidor)+'\NOVAVER') then
   CreateDir(trim(Banco_Servidor)+'\NOVAVER');

marqo:=trim(Banco_Servidor)+'\NOVAVER\'+Fnomearq_Pasta(0,Application.ExeName);
if not FileExists(marqo) then
   matriba:=0
else
   matriba:=FileAge(marqo);
closefile(f);
mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      exit;
      end;
   end;
HabilitaDesabilita(1);

if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;
ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   exit;

ClientSocket1.Socket.SendText('98'+'CADHELP.ZIP');
if not FAguardaResp(0) then
   exit;
mAtribn:=ValInt(mTestoRec);
if matriba=mAtribn then
   begin
   mavisaqueda:=False;
   ClientSocket1.Close;
   FMensagem('Última Versão diponível é de: '+FormatDatetime(fdt, FileDateToDateTime(matriba))+' as '+
                       FormatDatetime(fhr, FileDateToDateTime(matriba))+#13
                       +'e é a mesma que esta disponível no seu computador!',0,['0'],0);
   gbProgress.Visible :=false;
   StaticText1.Visible:=false;
   HabilitaDesabilita(0);

   exit;
   end;
ClientSocket1.Socket.SendText('99'+'CADHELP.ZIP');
if not FAguardaResp(1) then
   exit;
mavisaqueda:=False;
ClientSocket1.Active:=False;
FExtrairhelp(0);
StaticText1.Caption:='Concluido!';


{
Tipo de Operaçao
00-Identificaçao de quem Conectou
98-Atributo de um determinado arquivo
99-Solicita um determinado arquivo
layout
nome            tamanho  conteudo
identificacao      02    00-Identicacao
CNPJ               14    cnpj/CPF com zeros a esquerda
NOME               40    Nome da Empresa/Vendedor
}


end;

procedure TFrm_AtuSis.bbSenhaLibClick(Sender: TObject);
var
f: TextFile;
marqo: String;
dia,mes,ano: word;
mdata_lib: TDateTime;
mCodLib: String;
mQtdDias: Integer;
begin
mAtuSisProcessou:=False;

mDataServ:=Date;
bbDataServClick(Self);
matusisliberou:=false;
mTipoArq:=false;
gbProgress.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      if not mtentaautomatico then
         FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
         mAtuSisProcessou:=true;
      exit;
      end;
   end;
HabilitaDesabilita(1);

if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         if not mtentaautomatico then
            FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         HabilitaDesabilita(0);
         mAtuSisProcessou:=true;
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;
ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   begin
   HabilitaDesabilita(0);
   mAtuSisProcessou:=true;
   exit;
   end;
mCodLib:=CalculaCodLib('0'+DM2.Tb_EmpCGC.AsString);
ClientSocket1.Socket.SendText('90'+mCodLib);
if not FAguardaResp(0) then
   begin
   HabilitaDesabilita(0);
   mAtuSisProcessou:=true;
   exit;
   end;
if copy(mTestoRec,1,16)='**INADIMPLENTE**' then
  begin
  if not FAguardaResp(1) then
     begin
     mavisaqueda:=False;
     ClientSocket1.Active:=False;
     HabilitaDesabilita(0);
     mAtuSisProcessou:=true;
     exit;
     end;

  if not FAguardaResp(1) then
     begin
     mavisaqueda:=False;
     ClientSocket1.Active:=False;
     HabilitaDesabilita(0);
     mAtuSisProcessou:=true;
     exit;
     end;

  if not FAguardaResp(1) then
     begin
     mavisaqueda:=False;
     ClientSocket1.Active   :=False;
     HabilitaDesabilita(0);
     mAtuSisProcessou:=true;
     exit;
     end;
  mavisaqueda:=False;
  ClientSocket1.Active:=False;
  mArqRec:=fRetiraExtensao(mNomeArq);
  mjust_Origem:='90';
  if not mtentaautomatico then
     begin
     Application.Createform(TFrm_Justif, Frm_Justif);
     Frm_Justif.ShowModal;
     Frm_Justif.Free;
     Frm_Justif:=nil;
     end
  else
     begin
     mavisaqueda:=False;
     ClientSocket1.Active   :=False;
     HabilitaDesabilita(0);
     mAtuSisProcessou:=true;
     exit;
     end;
  end
else
   begin
   mavisaqueda:=False;
   ClientSocket1.Active:=False;
   If Copy(mTestoRec,1,6)=CalculaSenhaLib(mCodLib) then
      begin
      flparger(0,0,'1');
      DM1.Tb_parger.Edit;
      mcinst:=FormatDateTime('ddmmyyyy',date);
      dia:=StrToInt(Copy(mcinst,1,2));
      mes:=StrToInt(Copy(mcinst,3,2));
      ano:=StrToInt(Copy(mcinst,5,4));
      mQtdDias:=StrToInt(PalNum_Sis(Copy(Trim(mTestoRec),7,4)));
      mdata_lib:=EncodeDate(ano,mes,dia);
      mcinst:=FormatDateTime('ddmmyyyy',mdata_lib+mQtdDias);
      DM1.tb_ParGerPA001.Value:=NumPal_Sis(mcinst);
      DM1.Tb_ParGer.Post;
      if flcademp(1,0,IntToStr(iif(codemp>100,codemp-100,codemp))) then
         begin
         DM2.Tb_emp.Edit;
         DM2.Tb_EmpPA001.Value:=Numpal_Sis(mcinst);
         DM2.Tb_Emp.Post;
         end;
      end;
   StaticText1.Caption:='Concluido!';
   flparger(0,0,'1');
   mcinst:=PalNum_Sis(DM1.Tb_PargerPA001.Value);
   dia:=StrToInt('0'+Copy(mcinst,1,2));
   mes:=StrToInt('0'+Copy(mcinst,3,2));
   ano:=StrToInt('0'+Copy(mcinst,5,4));
   If (dia in [1..31]) and (mes in [1..12]) and (ano>=2000) then
      begin
      mdata_lib:=EncodeDate(ano,mes,dia);
      matusisliberou:=true;
      end
   else mdata_lib:=date-60;
   if not mtentaautomatico then
      begin
      FMensagem('O Seu Sistema esta Liberado até: '+FormatDateTime(fdt2, mdata_lib),0,['0'],0);
      matusisliberou:=true;
      end;
   end;
HabilitaDesabilita(0);
mAtuSisProcessou:=true;

if mtentaautomatico then
   close;


{
Tipo de Operaçao
00-Identificaçao de quem Conectou
90-Liberaçao do Sistema
98-Atributo de um determinado arquivo
99-Solicita um determinado arquivo
layout
nome            tamanho  conteudo
identificacao      02    00-Identicacao
CNPJ               14    cnpj/CPF com zeros a esquerda
NOME               40    Nome da Empresa/Vendedor
}


end;

procedure TFrm_AtuSis.bbTitAbertosClick(Sender: TObject);
var
f: TextFile;
marqo: String;
dia,mes,ano: word;
mdata_lib: TDateTime;
mCodLib: String;
mQtdDias: Integer;
begin
mTipoArq:=false;
gbProgress.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      exit;
      end;
   end;
HabilitaDesabilita(1);

if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if ((time-mhorai)>StrToTime(mTimeOut01)) then
         begin
         FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         HabilitaDesabilita(0);
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;
ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   begin
   HabilitaDesabilita(0);
   exit;
   end;
mCodLib:=CalculaCodLib('0'+DM2.Tb_EmpCGC.AsString);
ClientSocket1.Socket.SendText('89Consultar Titulos');
{
if not FAguardaResp(0) then
   begin
   bbAtuaSGE.Enabled    :=matuasgetrue;
   bbEnvCons.Enabled    :=menvconstrue;
   bbAtuaHelp.Enabled   :=matuahelptrue;
   bbSenhaLib.Enabled   :=msenlibtrue;
   bbTitAbertos.Enabled :=mtitabertos;
   exit;
   end;
}
if not FAguardaResp(1) then
   begin
   mavisaqueda:=False;
   ClientSocket1.Active   :=False;
   HabilitaDesabilita(0);
   exit;
   end;

{
if not FAguardaResp(1) then
   begin
   mavisaqueda:=False;
   ClientSocket1.Active:=False;
   bbAtuaSGE.Enabled    :=matuasgetrue;
   bbEnvCons.Enabled    :=menvconstrue;
   bbAtuaHelp.Enabled   :=matuahelptrue;
   bbSenhaLib.Enabled   :=msenlibtrue;
   bbTitAbertos.Enabled :=mtitabertos;
   exit;
   end;

if not FAguardaResp(1) then
   begin
   mavisaqueda:=False;
   ClientSocket1.Active:=False;
   bbAtuaSGE.Enabled    :=matuasgetrue;
   bbEnvCons.Enabled    :=menvconstrue;
   bbAtuaHelp.Enabled   :=matuahelptrue;
   bbSenhaLib.Enabled   :=msenlibtrue;
   bbTitAbertos.Enabled :=mtitabertos;
   exit;

   end;
}


mavisaqueda:=False;
ClientSocket1.Active:=False;

mArqRec:=fRetiraExtensao(mNomeArq);

StaticText1.Caption:='Concluido!';
mjust_Origem:='89';
Application.Createform(TFrm_Justif, Frm_Justif);
Frm_Justif.ShowModal;
Frm_Justif.Free;
HabilitaDesabilita(0);



{
Tipo de Operaçao
00-Identificaçao de quem Conectou
90-Liberaçao do Sistema
98-Atributo de um determinado arquivo
99-Solicita um determinado arquivo
layout
nome            tamanho  conteudo
identificacao      02    00-Identicacao
CNPJ               14    cnpj/CPF com zeros a esquerda
NOME               40    Nome da Empresa/Vendedor
}


end;

procedure TFrm_AtuSis.bbAtuaSGEFrenteClick(Sender: TObject);
var
f: TextFile;
marqo: String;
begin
if not fEstanaNet then
   begin
   FMensagem('Favor conectar na internet antes de utilizar esta opcao!',0,['0'],0);
   exit;
   end;

mTipoArq:=false;
gbProgress.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
mcam:=Banco_Servidor;
if not DirectoryExists(trim(mcam)+'\NOVAVER') then
   CreateDir(trim(mcam)+'\NOVAVER');

marqo:=trim(mcam)+'\NOVAVER\SGE_FRENTE.EXE';
if not FileExists(marqo) then
   matriba:=0
else
   matriba:=FileAge(marqo);
mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      exit;
      end;
   end;
HabilitaDesabilita(1);

if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         ClientSocket1.Close;
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;
ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   exit;
ClientSocket1.Socket.SendText('98'+'SGE_FRENTE.EXE');
if not FAguardaResp(0) then
   exit;
mAtribn:=ValInt(mTestoRec);
if lowercase(mTestoRec)='arquivos não disponivel' then
   begin
   FMensagem('não foi encontrado o arquivo no servidor',0,['0'],0);
   ClientSocket1.Active:=False;
   exit;
   end;
if matriba=mAtribn then
   begin
   mavisaqueda:=False;
   ClientSocket1.Close;
   FMensagem('Última Versão diponível é de: '+FormatDatetime(fdt, FileDateToDateTime(matriba))+' as '+
                       FormatDatetime(fhr, FileDateToDateTime(matriba))+#13
                       +'e é a mesma que esta disponível no seu computador!',0,['0'],0);
   gbProgress.Visible :=false;
   StaticText1.Visible:=false;
   HabilitaDesabilita(0);
   exit;
   end;
{
FMensagem('Atual: '+FormatDatetime('dd/mm/yyyy hh:nn:sss',FileDateToDateTime(mAtriba))+#13
          +'Novo: '+FormatDatetime('dd/mm/yyyy hh:nn:sss',FileDateToDateTime(mAtribn)),0,['0'],0);
}
ClientSocket1.Socket.SendText('99'+'SGE_FRENTE.ZIP');
if not FAguardaResp(1) then
   exit;
mavisaqueda:=False;
ClientSocket1.Active:=False;
FExtrairSGE(1);
StaticText1.Caption:='Concluido!';


{
Tipo de Operaçao
00-Identificaçao de quem Conectou
90-Liberaçao do Sistema
98-Atributo de um determinado arquivo
99-Solicita um determinado arquivo
layout
nome            tamanho  conteudo
identificacao      02    00-Identicacao
CNPJ               14    cnpj/CPF com zeros a esquerda
NOME               40    Nome da Empresa/Vendedor
}



end;

procedure TFrm_AtuSis.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
mAgResp:=False;
HabilitaDesabilita(0);

end;

function HabilitaDesabilita(pTipo: Integer): Boolean;
begin
Frm_AtuSis.bbAtuaSGE.Enabled      :=pTipo=0;
Frm_AtuSis.bbAtuaSGEFrente.Enabled:=pTipo=0;
Frm_AtuSis.bbEnvCons.Enabled      :=pTipo=0;
Frm_AtuSis.bbAtuaHelp.Enabled     :=pTipo=0;
Frm_AtuSis.bbSenhaLib.Enabled     :=pTipo=0;
Frm_AtuSis.bbTitAbertos.Enabled   :=pTipo=0;

result:=true;
end;
procedure TFrm_AtuSis.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=118) and  (Shift=[ssCtrl]) then
   begin
   lbl_servidor.Visible:=true;
   SERVER.Visible      :=true;
   end;
end;

procedure TFrm_AtuSis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AtuSis.bbAtuaSGECQClick(Sender: TObject);
var
f: TextFile;
marqo: String;
begin
{if not fEstanaNet then
   begin
   FMensagem('Favor conectar na internet antes de utilizar esta opcao!',0,['0'],0);
   exit;
   end;

mTipoArq:=false;
gbProgress.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
mcam:=Banco_Servidor;
if not DirectoryExists(trim(mcam)+'\NOVAVER') then
   CreateDir(trim(mcam)+'\NOVAVER');

marqo:=trim(mcam)+'\NOVAVER\SGECQ.EXE';
if not FileExists(marqo) then
   matriba:=0
else
   matriba:=FileAge(marqo);
mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      exit;
      end;
   end;
HabilitaDesabilita(1);

if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         ClientSocket1.Close;
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;
ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   exit;
ClientSocket1.Socket.SendText('98'+'SGECQ.EXE');
if not FAguardaResp(0) then
   exit;
mAtribn:=ValInt(mTestoRec);
if lowercase(mTestoRec)='arquivos não disponivel' then
   begin
   FMensagem('não foi encontrado o arquivo no servidor',0,['0'],0);
   ClientSocket1.Active:=False;
   exit;
   end;
if matriba=mAtribn then
   begin
   mavisaqueda:=False;
   ClientSocket1.Close;
   FMensagem('Última Versão diponível é de: '+FormatDatetime(fdt, FileDateToDateTime(matriba))+' as '+
                       FormatDatetime(fhr, FileDateToDateTime(matriba))+#13
                       +'e é a mesma que esta disponível no seu computador!',0,['0'],0);
   gbProgress.Visible :=false;
   StaticText1.Visible:=false;
   HabilitaDesabilita(0);
   exit;
   end;
ClientSocket1.Socket.SendText('99'+'SGECQ.ZIP');
if not FAguardaResp(1) then
   exit;
mavisaqueda:=False;
ClientSocket1.Active:=False;
FExtrairSGE(2);
StaticText1.Caption:='Concluido!';
}

{
Tipo de Operaçao
00-Identificaçao de quem Conectou
90-Liberaçao do Sistema
98-Atributo de um determinado arquivo
99-Solicita um determinado arquivo
layout
nome            tamanho  conteudo
identificacao      02    00-Identicacao
CNPJ               14    cnpj/CPF com zeros a esquerda
NOME               40    Nome da Empresa/Vendedor
}
end;

procedure TFrm_AtuSis.bbDataServClick(Sender: TObject);
begin
mDataServ:=Date;
mTipoArq:=false;
gbProgress.Visible:=True;
StaticText1.Caption:='Conexão Iniciada';
StaticText1.Visible:=True;
mAgResp:=True;
if not ClientSocket1.Active then
   begin
   ClientSocket1.Host  :=SERVER.Text;
   try
      ClientSocket1.Active:=True;
   except
      FMensagem('Não Foi Possível Conectar ao Servidor da INTERSYS'+#13
                +'Verifique se esta conectado na internet e tente novamente!',0,['0'],0);
      exit;
      end;
   end;
HabilitaDesabilita(1);

if not ClientSocket1.Active then
   begin
   mhorai:=Time;
   While (mAgResp) do
      begin
      if ((time-mhorai)>StrToTime(mTimeOut01)) then
         begin
         FMensagem('Tempo Limite Esgotado!',0,['0'],0);
         HabilitaDesabilita(0);
         exit;
         end;
      verteclado_02(0);
      end;
   end;
mavisaqueda:=true;

ClientSocket1.Socket.SendText('00'+FormatFloat('00000000000000',DM2.Tb_EmpCGC.Value)+insere2(DM2.Tb_EmpRAZAO.Value,' ',60));
if not FAguardaResp(0) then
   begin
   HabilitaDesabilita(0);
   exit;
   end;

ClientSocket1.Socket.SendText('70DataServidor');
if not FAguardaResp(0) then
   begin
   mavisaqueda:=False;
   ClientSocket1.Active   :=False;
   HabilitaDesabilita(0);
   exit;
   end;

mavisaqueda:=False;
ClientSocket1.Active:=False;
if fsonumero(mTestoRec)>0 then
   mDataServ:=StrtoDate(mTestoRec);
StaticText1.Caption:='Concluido!';

end;

end.

