unit S_Ppal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,shellapi;

type
  TFrm_Ppal = class(TForm)
    Animate1: TAnimate;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ppal: TFrm_Ppal;

implementation

{$R *.dfm}

procedure TFrm_Ppal.FormActivate(Sender: TObject);
var
f: TextFile;
mlinha,marqo, marqd, banco_servidor: String;
x, mposigual: Integer;
begin
if not SetCurrentDir('C:\SGE') then CreateDir('C:\SGE');
if not FileExists('\SGE\SGE.INI') then
   begin
   ShowMessage('Arquivo de Configuração de ambiente não encontrado. Contactar com suporte');
   Application.Terminate;
   exit;
   end;
AssignFile(f,'\SGE\SGE.INI');
Reset(F);

while not eof(f) do
   begin
   ReadLn(F,mlinha);
   for x:=1 to length(mlinha) do
      begin
      if mlinha[x]='=' then
         begin
         mposigual:=x;
         break;
         end;
      end;
   mposigual:=mposigual+1;
    if lowercase(copy(mlinha,1,08))='servidor' then
      begin
      Banco_servidor:=trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)));
      end;
   end;
closefile(f);

if Trim(banco_servidor)='' then
   begin
   ShowMessage('Servidor não Encontrado: '+banco_servidor);
   Application.Terminate;
   exit;
   end;
if Banco_Servidor[length(banco_servidor)]='\' then
   Banco_Servidor:=copy(Banco_Servidor,1,length(banco_servidor)-1);

marqo:=trim(banco_servidor)+'\NOVAVER\SGE.EXE';
if not FileExists(marqo) then
   begin
   MessageDlg('Não foi encontrado o arquivo de Origem: '+marqo,mtError,[mbOk],0);
   Application.Terminate;
   exit;
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\DLLINSCE.DLL';
marqd:='C:\SGE\DLLINSCE.DLL';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\UNZDLL.DLL';
marqd:='C:\SGE\UNZDLL.DLL';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;
marqo:=trim(banco_servidor)+'\NOVAVER\ZIPDLL.DLL';
marqd:='C:\SGE\ZIPDLL.DLL';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;


marqo:=trim(banco_servidor)+'\NOVAVER\IGESTAO_BACKUPS.EXE';
marqd:='C:\SGE\IGESTAO_BACKUPS.EXE';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;


marqo:=trim(banco_servidor)+'\NOVAVER\libeay32.DLL';
marqd:='C:\SGE\libeay32.DLL';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\SSLEAY32.DLL';
marqd:='C:\SGE\ssleay32.DLL';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\XTR\DEST.XTR';
marqd:='C:\SGE\XTR\DEST.XTR';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\XTR\DETA.XTR';
marqd:='C:\SGE\XTR\DETA.XTR';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\XTR\EMIS.XTR';
marqd:='C:\SGE\XTR\EMIS.XTR';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\XTR\IDEN.XTR';
marqd:='C:\SGE\XTR\IDEN.XTR';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\XTR\PARC.XTR';
marqd:='C:\SGE\XTR\PARC.XTR';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\XTR\TOTA.XTR';
marqd:='C:\SGE\XTR\TOTA.XTR';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\XTR\TRAN.XTR';
marqd:='C:\SGE\XTR\TRAN.XTR';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\MIDAS.DLL';
marqd:='C:\SGE\MIDAS.DLL';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

marqo:=trim(banco_servidor)+'\NOVAVER\SGE.SKN';
marqd:='C:\SGE\SGE.SKN';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;

if SetCurrentDir('C:\WINNT\SYSTEM32') then
   begin
   marqo:=trim(banco_servidor)+'\NOVAVER\BEMAFI32.DLL';
   marqd:='C:\WINNT\SYSTEM32\BEMAFI32.DLL';
   if FileAge(marqo)<>FileAge(marqd) then
      begin
      Animate1.Visible:=True;
      Animate1.Active:=True;
      Label1.Visible :=True;
      Label1.Update;
      CopyFile(pchar(marqo),pchar(marqd),true);
      end;
   end;
if SetCurrentDir('C:\WINDOWS\SYSTEM') then
   begin
   marqo:=trim(banco_servidor)+'\NOVAVER\BEMAFI32.DLL';
   marqd:='C:\WINDOWS\SYSTEM\BEMAFI32.DLL';
   if FileAge(marqo)<>FileAge(marqd) then
      begin
      Animate1.Visible:=True;
      Animate1.Active:=True;
      Label1.Visible :=True;
      Label1.Update;
      CopyFile(pchar(marqo),pchar(marqd),true);
      end;
   end;
marqo:=trim(banco_servidor)+'\NOVAVER\SGE.EXE';
marqd:='C:\SGE\SGE.EXE';
if FileAge(marqo)<>FileAge(marqd) then
   begin
   Animate1.Visible:=True;
   Animate1.Active:=True;
   Label1.Visible :=True;
   Label1.Update;
   DeleteFile('C:\SGE\SGE.EXE');
   CopyFile(pchar(marqo),pchar(marqd),true);
   end;
//WinExec(pchar(marqd),SW_NORMAL HIDE);
//WinExec(pchar(marqd),SW_NORMAL);

ShellExecute(Handle, 'open', pchar(marqd), pchar('SGE_INTERSYS'), nil, SW_SHOWNORMAL) ;

application.terminate;
end;

end.
