unit S_Rest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Buttons, ComCtrls,S_DM1,func,lerarq,zip,
  DB, DBTables;

type
  TFrm_Rest = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    NOMARQ: TEdit;
    bbRestaurar: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Animate1: TAnimate;
    bbProcurar: TBitBtn;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    Query1: TQuery;
    CB_COPSEG: TCheckBox;
    Database1: TDatabase;
    Label1: TLabel;
    USRORI: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure bbRestaurarClick(Sender: TObject);
    procedure bbProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  path: string;
  zip: TZip;

  public
    { Public declarations }
  end;

var
  Frm_Rest: TFrm_Rest;
  mnome,marq,marqcomp: String;
  mnombco,mcomando: String;
  mUsuarioGer: String;
  mSenGer: String;

implementation


{$R *.dfm}

procedure TFrm_Rest.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Rest.bbRestaurarClick(Sender: TObject);
var
f: TextFile;
temp: TextFile;

y, mext: Integer;
mcam,mlinha,mbkp: String;

begin

if Trim(marq)='' then
   begin
   fmensagem('Favor Selecionar o Arquivo a ser Restaurado!',0,['0'],0);
   exit;
   end;
if not FileExists(marqcomp) then
   begin
   Fmensagem('Arquivo não encontrado. Favor Selecionar o Arquivo a ser Restaurado!',0,['0'],0);
   exit;
   end;


if not FileExists(mcaminho+'\BKP'+Banco_Usuario+'.CF') then
   begin
   if not DirectoryExists('C:\BKP') then
      CreateDir('C:\BKP');
   if not DirectoryExists('C:\BKP') then
      begin
      fmensagem('Não foi encontrado o arquivo de configuração de backus entre na opção'+#13
             +'SISTEMA->BACKUPS->CONFIGURAÇOES DO BACKUPS e configure',0,['0'],0);
      exit;
      end;
   assignfile(f,mcaminho+'\BKP'+Banco_Usuario+'.CF');
   rewrite(f);
   mlinha:='C:\BKP';
   writeln(f,mlinha);
   writeln(f,mlinha);
   writeln(f,mlinha);
   writeln(f,mlinha);
   writeln(f,mlinha);
   writeln(f,mlinha);
   writeln(f,mlinha);
   closefile(f);
   end;
zip.filename := marqcomp;
if pbanco=0 then
   begin
   if zip.ZipComment <> 'BKPSGEORA' then
      begin
      Fmensagem('Este Arquivo não é um Backups Válido!',0,['0'],0);
      exit;
      end;
   end
else
   begin
   if zip.ZipComment <> 'BKPSGEINT' then
      begin
      Fmensagem('Este Arquivo não é um Backups Válido!',0,['0'],0);
      exit;
      end;
   end;
zip.FileSpecList.add('*.*');
zip.ExtractOptions := [eoUpdate, eoWithPaths];


assignFile(f,mcaminho+'\BKP'+Banco_Usuario+'.CF');

reset(f);
mUsuarioGer:='ORACLE';
mSenGer:='INTERNAL';

closefile(f);
mcam   :=Banco_Caminho;
if trim(mcam)='' then
   mcam:='C:\SGE\';

mnombco:=banco_caminho;
if (pbanco=1) or (pbanco=2) then
   begin
   if not FileExists(mcam) then
      begin
      Fmensagem('Não foi possivel encontrar o banco de dados no caminho Configurado!',0,['0'],0);
      exit;
      end;
   mbkp:=copy(Banco_Caminho,1,length(Banco_Caminho)-3);
   for mext:=0 to 999 do
      begin
      if not FileExists(mbkp+Formatfloat('000',mext)) then
         break;
      end;
   if mext=999 then
      begin
      Fmensagem('Favor limpar backups anteriores para que seja feita restauração!',0,['0'],0);
      exit;
      end;
   end
else
   begin
   mnombco:=mcaminho;
   if not FileExists('C:\ORACLE\ORA81\BIN\EXP.EXE') then
      begin
      Fmensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\EXP.EXE. Restauração CANCELADA!',0,['0'],0);
      exit;
      end;
   if not FileExists('C:\ORACLE\ORA81\BIN\IMP.EXE') then
      begin
      Fmensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\IMP.EXE. Restauração CANCELADA!',0,['0'],0);
      exit;
      end;

   if not FileExists('C:\ORACLE\ORA81\BIN\SVRMGRL.EXE') then
      begin
      Fmensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\SVRMGRL.EXE. Restauração CANCELADA!',0,['0'],0);
      exit;
      end;
   mnombco:=mcam+'CA';
   for mext:=0 to 999999 do
      begin
      if not FileExists(mnombco+Formatfloat('000000',mext)+'.dmp') then
         break;
      end;
   if mext=999999 then
      begin
      Fmensagem('Favor limpar backups anteriores para que seja feita restauração!',0,['0'],0);
      exit;
      end;
   mnombco:=mnombco+FormatFloat('000000',mext);
   end;
flparger(0,0,'1');
DM1.Tb_Parger.Edit;
if DM1.Tb_PargerPDDTPRES.IsNull then
   DM1.Tb_PargerPDDTPRES.Value:=date;
if DM1.Tb_PargerPDQTDRES.IsNull then
   DM1.Tb_PargerPDQTDRES.Value:=0;
DM1.Tb_PargerPDQTDRES.Value:=DM1.Tb_PargerPDQTDRES.Value+1;
DM1.Tb_PargerPDRESBKP.Value:=NOMARQ.Text;
DM1.Tb_Parger.Post;


DM1.Tb_cli.Close;
DM1.Tb_Pro.Close;
if mpcodace>0 then
   begin
   Try
      DM1.SG_ASSOC.StartTransaction;
   except
      ShowMessage('erro ao fechar o programa');
      Application.Terminate;
      exit;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADCAC set CADATAF='+chr(39)+FormatDatetime(fdt,date)+chr(39)
                    +' , CAHORAF='+chr(39)+FormatDatetime('hh:nn:ss',time)+chr(39)
                    +' where CASEQ=0'+IntToStr(mpcodace));
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   end;
DM1.Tb_Parger.Edit;
DM1.Tb_PargerUDTTRA.Value:=date;
DM1.Tb_Parger.Post;
DM1.SG_ASSOC.Connected:=False;
DM1.SG_ASSOC.close;
DM1.Free;
GroupBox2.Visible:=True;
Animate1.Active  :=True;

if pbanco=1 then
   begin
   if not RenameFile(mnombco,copy(mnombco,1,length(mnombco)-3)+FormatFloat('000',mext)) then
      begin
      ShowMessage('nome: '+mnombco+' novo: '+copy(mnombco,1,length(mnombco)-3)+FormatFloat('000',mext));
      Fmensagem('ha usuarios ativos favor retirar todos. '+#13
                +'Caso esta informação  esteja  incorreta '+#13
               +'reinicie o servidor e tente novamente!',0,['0'],0);
      Application.Terminate;
      exit;
      end;

   zip.ExtractPath := mcam;
   StatusBar1.SimpleText := format('%d Arquivos Extraidos do arquivo.',[zip.extract]);
   if zip.ExtractErrorCnt > 0 then
      begin
      Fmensagem('Erro: ao tentar extrair: '+IntToStr(zip.ExtractErrorCnt),0,['0'],0);
      Application.Terminate;
      exit;
      end;

{   mcomando:='ARJ E '+Trim(marqcomp)+' -y -VA';
   if fexecprog(mcomando,0)=-1 then
      begin
      GroupBox2.Visible:=False;
      Animate1.Active  :=False;
      Fmensagem('Erro ao descompactar o arquivo!',0,['0'],0);
      Application.Terminate;
      exit;
      end;
}   end
else
   begin
   mcomando:='EXP '+Banco_usuario+'/'+Banco_senha+' OWNER="'+Banco_ServerName+'" FILE='+mnombco;
   if CB_COPSEG.Checked then
      begin
      if fexecprog(mcomando,0)=-1 then
         begin
         GroupBox2.Visible:=False;
         Animate1.Active  :=False;
         Fmensagem('Erro ao iniciar o processo de restauração!',0,['0'],0);
         exit;
         end;
      if not FileExists(mnombco+'.dmp') then
         begin
         Fmensagem('ERRO AO TENTAR CRIAR UM ARQUIVO DE SEGURANCA'+#13
                   +'Não foi possivel completar a restauração!',0,['0'],0);
         Application.Terminate;
         exit;
         end;
      end;
   if trim(mcam)='' then
      mcam:='C:\SGE\'
   else
      begin
      if mcam[length(mcam)]<>'\' then
         mcam:=mcam+'\';
      end;
   DeleteFile(mcam+'temp.sql');
   if FileExists(mcam+'temp.sql') then
      begin
      Fmensagem('ERRO AO TENTAR CRIAR UM ARQUIVO TEMPORARIO'+#13
                +'Feche todos os usuarios reinicie o computador e tente novamente!',0,['0'],0);
      Application.Terminate;
      exit;
      end;
   if FileExists(mcam+mnome+'.DMP') then
      DeleteFile(mcam+mnome+'.DMP');
   zip.ExtractPath := mcam;
   StatusBar1.SimpleText := format('%d Arquivos Extraidos do arquivo.',[zip.extract]);
   if zip.ExtractErrorCnt > 0 then
      begin
      Fmensagem('Erro: ao tentar extrair: '+IntToStr(zip.ExtractErrorCnt),0,['0'],0);
      Application.Terminate;
      exit;
      end;


   if not FileExists(mcam+mnome+'.DMP') then
      begin
      Fmensagem('ERRO GRAVISSIMO!!! SOLICITE SUPORTE IMEDIATAMENTE!'
               +mcam+mnome ,0,['0'],0);
      Application.Terminate;
      exit;
      end;
   Database1.Connected:=False;

   AssignFile(temp,mcam+'temp.sql');
   Rewrite(temp);
   Writeln(temp,'CONNECT '+mUsuarioGer+'/'+mSenGer+';');
   Writeln(temp,'DROP USER '+banco_Usuario+' CASCADE;');
   Writeln(temp,'COMMIT;');
   writeln(temp,'EXIT;');
   closefile(temp);
   marq:='SVRMGRL COMMAND=@'+mcam+'temp.SQL';
   if fexecprog(marq,0)=-1 then
      begin
      DeleteFile(mcam+'temp.sql');
      AssignFile(temp,mcam+'temp.sql');
      Rewrite(temp);
      mUsuarioGer:='SYSTEM';
      mSenGer    :='MANAGER';
      Writeln(temp,'CONNECT '+mUsuarioGer+'/'+mSenGer+';');
      Writeln(temp,'DROP USER '+banco_Usuario+' CASCADE;');
      Writeln(temp,'COMMIT;');
      writeln(temp,'EXIT;');
      closefile(temp);
      marq:='SVRMGRL COMMAND=@'+mcam+'temp.SQL';
      if fexecprog(marq,0)=-1 then
         begin
         GroupBox2.Visible:=False;
         Animate1.Active  :=False;
         Fmensagem('ERRO GRAVISSIMO!!! SOLICITE SUPORTE IMEDIATAMENTE!',0,['0'],0);
         Application.Terminate;
         exit;
         end;
      DeleteFile(mcam+'temp.sql');
      Database1.Connected:=True;
      end;

   Query1.Close;
   Query1.SQL.clear;
   Query1.SQL.add('Select count(*) FROM ALL_USERS where USERNAME='+chr(39)+Banco_usuario+chr(39));
   Query1.Open;
   if Query1.Fields[0].AsInteger>0 then
      begin
      DeleteFile(mcam+'temp.sql');
      AssignFile(temp,mcam+'temp.sql');
      Rewrite(temp);
      mUsuarioGer:='SYSTEM';
      mSenGer    :='MANAGER';
      Writeln(temp,'CONNECT '+mUsuarioGer+'/'+mSenGer+';');
      Writeln(temp,'DROP USER '+banco_Usuario+' CASCADE;');
      Writeln(temp,'COMMIT;');
      writeln(temp,'EXIT;');
      closefile(temp);
      marq:='SVRMGRL COMMAND=@'+mcam+'temp.SQL';
      if fexecprog(marq,0)=-1 then
         begin
         GroupBox2.Visible:=False;
         Animate1.Active  :=False;
         Fmensagem('ERRO GRAVISSIMO!!! SOLICITE SUPORTE IMEDIATAMENTE!',0,['0'],0);
         Application.Terminate;
         exit;
         end;
      DeleteFile(mcam+'temp.sql');
      Database1.Connected:=True;
      Query1.Close;
      Query1.SQL.clear;
      Query1.SQL.add('Select count(*) FROM ALL_USERS where USERNAME='+chr(39)+Banco_usuario+chr(39));
      Query1.Open;
      if Query1.Fields[0].AsInteger>0 then
         begin
         GroupBox2.Visible:=False;
         Animate1.Active  :=False;
         Fmensagem('Não Foi Possível Excluir o Banco de Dados Atual '+#13
                +'Retire Todos os Usuários do Sistema e Tente Novamente!'+#13
                +'Se mesmo assim não conseguir então Reinicialize o Servidor!',0,['0'],0);
         Application.Terminate;
         exit;
         end;
      end;
   Database1.Connected:=False;
   AssignFile(temp,mcam+'temp.sql');
   Rewrite(temp);
   Writeln(temp,'CONNECT '+mUsuarioGer+'/'+mSenGer+';');
   writeln(temp,'CREATE USER "'+banco_usuario+'" IDENTIFIED BY "DEZENOVE"');
   writeln(temp,'DEFAULT TABLESPACE "SGE"');
   writeln(temp,'TEMPORARY TABLESPACE "TEMP";');
   writeln(temp,'GRANT CONNECT, DBA TO '+banco_usuario+';');
   Writeln(temp,'COMMIT;');
   writeln(temp,'EXIT;');
   closefile(temp);
   marq:='SVRMGRL COMMAND=@'+mcam+'temp.SQL';
   if fexecprog(marq,0)=-1 then
      begin
      DeleteFile(mcam+'temp.sql');
      GroupBox2.Visible:=False;
      Animate1.Active  :=False;
      Fmensagem('ERRO GRAVISSIMO!!! SOLICITE SUPORTE IMEDIATAMENTE!',0,['0'],0);
      Application.Terminate;
      exit;
      end;
   DeleteFile(mcam+'temp.sql');
   marq:='IMP '+Banco_usuario+'/DEZENOVE FILE="'+mcam+mnome+'" FROMUSER="'+trim(USRORI.Text)+'" TOUSER="'+Banco_usuario+'"';
   if fexecprog(marq,0)=-1 then
      begin
      GroupBox2.Visible:=False;
      Animate1.Active  :=False;
      Fmensagem('ERRO GRAVISSIMO!!! SOLICITE SUPORTE IMEDIATAMENTE!',0,['0'],0);
      Application.Terminate;
      exit;
      end;
   end;
GroupBox2.Visible:=False;
Animate1.Active  :=False;
StatusBar1.SimpleText:='Restauração Concluida com Sucesso';
Application.Terminate;
exit;
end;

procedure TFrm_Rest.bbProcurarClick(Sender: TObject);
var
y: integer;
begin
OpenDialog1.Options := OpenDialog1.Options + [ofAllowMultiSelect];
OpenDialog1.Filter := 'All Files (*.*)|*.*';
OpenDialog1.Title := 'Arquivos de Backups';
if OpenDialog1.execute then
   begin
   marqcomp := OpenDialog1.FileName;
   NOMARQ.Text:=marqcomp;
   end;
mnome:='';
for y:=length(marqcomp) downto 1 do
  begin
  if marqcomp[y]='\' then
     break;
  mnome:=marqcomp[y]+mnome;
  end;


if Trim(marqcomp)<>'' then
   begin
   NOMARQ.Text:=marqcomp+' Criado em: '+FormatDateTime('dd/mm/yyyy',FileDateToDateTime(FileAge(marqcomp)))
                                   +' as '+FormatDateTime('hh:nn:ss',FileDateToDateTime(FileAge(marqcomp)))+' horas ';
   end;
marq:=mnome;
mnome:='';
for y:=1 to length(marq) do
  begin
  if marq[y]='.' then
     break;
  mnome:=mnome+marq[y];
  end;

end;

procedure TFrm_Rest.FormCreate(Sender: TObject);
begin
zip := TZip.create(self);
if codcar=1111 then
   cb_copseg.Visible:=true
else
   cb_copseg.Visible:=false;

end;

procedure TFrm_Rest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
