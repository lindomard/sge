unit s_FTP_Transferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, ComCtrls,dateutils;

type
  TFrm_FTP_Transferencias = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BBnFechar: TBitBtn;
    Panel2: TPanel;
    sbSalvarPadrao: TSpeedButton;
    opd1: TOpenDialog;
    IdFTP1: TIdFTP;
    Label2: TLabel;
    edt_ip_host: TEdit;
    Shape_Conectado: TShape;
    Timer_aborto: TTimer;
    bbAbortar: TBitBtn;
    panel_download: TPanel;
    pgb_copia: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    lbl_duracao: TLabel;
    edt_ftp_porta_com: TEdit;
    edt_ftp_porta_data: TEdit;
    Label5: TLabel;
    sbn_receber: TSpeedButton;
    sbn_mostrar: TSpeedButton;
    Label6: TLabel;
    edt_changedir: TEdit;
    Label7: TLabel;
    edt_filefrom: TEdit;
    Label8: TLabel;
    edt_filtros: TEdit;
    gb_arquivos_encontrados: TGroupBox;
    memo_encontrados: TMemo;
    SaveDialog1: TSaveDialog;
    procedure BBnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IdFTP1Connected(Sender: TObject);
    procedure IdFTP1Disconnected(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure sbn_mostrarClick(Sender: TObject);
    procedure sbn_receberClick(Sender: TObject);
  private
    { Private declarations }

    mabortar: boolean;

    mpastamasterdestino: string;




    function fMostrarArquivos(filefrom, fileto: string; out pStringList: tStringList) : boolean;




  public
    { Public declarations }

    function fConectarftp: boolean;

    function fEnviarArquivo(pNomeArq: String): Boolean;

    function fBaixaArquivo(pNomearq: string): boolean;


    function fdesconectarftp: boolean;
  end;

var
  Frm_FTP_Transferencias: TFrm_FTP_Transferencias;

implementation

uses Func, Math;

{$R *.dfm}

procedure TFrm_FTP_Transferencias.BBnFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FTP_Transferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;



function TFrm_FTP_Transferencias.fConectarftp: boolean;
begin
//  AssErt(ftp.Connected);

IdFTP1.Port     := valint(edt_ftp_porta_com.text);
//IdFTP1.BoundPort:= valint(edt_ftp_porta_data.text);


idFTP1.Host     := edt_ip_host.Text;
idFTP1.Username := 'suporte';
idFTP1.Password := 'landscape';
IdFTP1.ReadTimeout:=36000000;


result:=true;
try
   idFTP1.Connect;
except on E: exception do
   begin
   MessageDlg('Erro ao conectar no servidor central '+e.Message ,mtWarning,[mbOk],0);
   result:=false;
   end;
   end;


end;

procedure TFrm_FTP_Transferencias.IdFTP1Connected(Sender: TObject);
begin
Shape_Conectado.Brush.Color := clLime;

end;

procedure TFrm_FTP_Transferencias.IdFTP1Disconnected(Sender: TObject);
begin
Shape_Conectado.Brush.Color := clBlack;

end;


function TFrm_FTP_Transferencias.fdesconectarftp: boolean;
begin
result:=true;
try
   idFTP1.Disconnect;
finally
   if idFTP1.Connected = False then
   Shape_Conectado.Brush.Color := clWhite;

   end;
end;



function TFrm_FTP_Transferencias.fEnviarArquivo(pNomeArq: String): Boolean;

var


m : TStream;
f : TStream;
t : Cardinal;
mhora_ini: TDateTime;

begin

result:=true;
if not fconectarftp then
   begin
   result:=false;
   exit;
   end;


mhora_ini:=now();




try
   f := TFileStream.Create(pNomeArq,fmOpenRead);
   m := TMemoryStream.Create;
   m.CopyFrom(f,f.Size);
   m.Seek(0,0) ;
   t := GetTickCount;
   idFTP1.Put(m,Fnomearq_Pasta(0, pNomeArq));
   f.Free;
   M.Free;
except on E: exception do
   begin
   if f<>nil then
      f.Free;
   if m<>nil then
      M.Free;
   MessageDlg('Erro ao transferir os arquivos para o servidor central '+e.Message ,mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;
   end;


fdesconectarftp;



panel_download.Visible:=false;
verteclado(0);
Timer_aborto.Enabled:=false;
bbAbortar.Visible:=false;

lbl_duracao.Caption:='Download iniciado em '+FormatDateTime(fdathor, mhora_ini)+' terminou '+FormatDateTime(fdathor, now())+' duração '+inttostr(SecondsBetween(now(),mhora_ini))+' segundos';


end;

procedure TFrm_FTP_Transferencias.sbSalvarPadraoClick(Sender: TObject);
begin
if opd1.Execute then
   fEnviarArquivo(opd1.filename);

{

// Obter um arquivo do servidor via FTP
procedure TForm2.ftpget(host, username, password, filefrom, fileto: string;
 port: integer);
var
 ftp: TIdFTP;
 ms: TMemoryStream;
begin
 ftp := TIdFTP.Create(Application);
 ms := TMemoryStream.Create;
 try
 try
 ftp.host := host; // Endereço do servidor FTP
 ftp.port := port;
 ftp.username := username;
 ftp.password := password;
 ftp.Connect();
 AssErt(ftp.Connected);
 ftp.ChangeDir('/'); // Definir a pasta no servidor
 ftp.Get(filefrom, fileto, true); // Receber o arquivo do servidor
 ShowMessage('Arquivo Recebido');
 finally
 ms.Free;
 
ftp.Free;
 end;
 except
 ShowMessage('Uma tentativa de receber um arquivo do servidor com falha');
 end;
end;
}



end;



function TFrm_FTP_Transferencias.fMostrarArquivos(filefrom, fileto: string; out pStringList: tStringList) : boolean;

var
// ftp: TIdFTP;
 ms: TMemoryStream;

begin
// ftp := TIdFTP.Create(Application);
 ms := TMemoryStream.Create;
if not fConectarftp then
   begin
   MessageDlg('Nao foi possivel conectar ao ftp ',mtWarning,[mbok],0);
   result:=false;
   exit;
   end;
try
   try
      result:=true;
      if pStringlist=nil then
         pStringlist:=tStringlist.create;
      IdFTP1.List(pStringlist, '', false);
   finally
      ms.Free;
      end;
  except
      ShowMessage('Uma tentativa de enviar um arquivo para o servidor falhou');
      result:=false;
   end;
fdesconectarftp;
end;


procedure TFrm_FTP_Transferencias.sbn_mostrarClick(Sender: TObject);
var
filefrom: string;
filtro: string;
listaDirectory: TStringList;
x_arq: integer;
begin
filefrom:='teste';
filtro:='*.*';
if not fMostrarArquivos(filefrom, filtro,listaDirectory) then
   exit;
memo_encontrados.Lines.clear;
for x_arq:=0 to listaDirectory.Count-1 do
   begin
   memo_encontrados.lines.add(listaDirectory[x_arq]);
   end;


end;

function TFrm_FTP_Transferencias.fBaixaArquivo(pNomearq: string): boolean;
begin





if not fConectarftp then
   begin
   MessageDlg('Nao foi possivel conectar ao ftp ',mtWarning,[mbok],0);
   exit;
   end;
try
   try
// IdFTP1.ChangeDir(edt_changedir.Text);

    IdFTP1.Get(Fnomearq_Pasta(0,'c:\IGESTAO\'+pNomeArq),pNomeArq, true, false);


   ShowMessage('Arquivo Recebido ');
   finally
     end;
except
   ShowMessage('Uma tentativa de enviar um arquivo para o servidor falhou');
   end;
fdesconectarftp;
end;

procedure TFrm_FTP_Transferencias.sbn_receberClick(Sender: TObject);
begin
fBaixaArquivo(memo_encontrados.lines[0]);

end;

end.
