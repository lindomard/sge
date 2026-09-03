unit S_Bkp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func,S_DM1, ComCtrls,db,dbtables,lerarq; //,zip;
//  ShlObj, ActiveX, CommDlg;


type
  TFrm_Bkp = class(TForm)
    bbIniciar: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Animate1: TAnimate;
    StatusBar1: TStatusBar;
    procedure bbIniciarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  path: string;
//  zip: TZip;

  public
    { Public declarations }
//    function fZiparArquivos(pArqEntra,pArqSai,pComentario: String): Boolean;
//    function fUnZiparArquivos(pArqEntra,pPastaSaida,pComentario: String): Boolean;

  end;

var
  Frm_Bkp: TFrm_Bkp;
  mnombco: String;
implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Bkp.bbIniciarClick(Sender: TObject);
var
f: TextFile;
mlinha:String;
mhorai: TDateTime;
marq: String;
mdircor,mund,mcam,mcomando: String;
mlivre: Real;
x,y,mvalor: Integer;
mPastaXml: String;

pArquivosCompactar: TStrings;
lista : TStrings;


begin

if not FileExists(mcaminho+'\BKP'+Banco_Usuario+'.CF') then
   begin
   AssignFile(F,'c:\SGE\BKP'+Banco_Usuario+'.CF');
   rewrite(f);
   mlinha:='c:\BKP\';
   for y:=1 to 7 do
     begin
     writeln(f,mlinha);
     end;
   closefile(f);
   end;
{
   if not FileExists(ExtractFilePath(Application.ExeName)+'IGESTAO_BACKUPS.EXE') then
      begin
      FMensagem('Não foi encontrado o seguinte arquivo:'+ExtractFilePath(Application.ExeName)+'IGESTAO_BACKUPS.EXE'+#13
                +'Baixe o mesmo. Operação CANCELADA!',0,['0'],0);
      exit;
      end;
}
if not FileExists('C:\ORACLE\ORA81\BIN\EXP.EXE') then
   begin
   fmensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\EXP.EXE. '
            +' Favor Utilizar o Servidor ou um terminal com previlegios de servidor!'
            ,0,['0'],0);
   exit;
   end;
if not FileExists('C:\ORACLE\ORA81\BIN\SVRMGRL.EXE') then
   begin
   fmensagem('Não foi encontrado o seguinte arquivo: C:\ORACLE\ORA81\BIN\SVRMGRL.EXE. '
            +' Favor Utilizar o Servidor ou um terminal com previlegios de servidor!'
            ,0,['0'],0);
   exit;
   end;
bbIniciar.Enabled:=false;

assignFile(f,mcaminho+'\BKP'+Banco_Usuario+'.CF');

reset(f);
for y:=1 to DayOfWeek(date) do
   begin
   readln(f,mlinha);
   mcam:=mlinha;
   end;

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
if copy(mnombco,length(mnombco),1)='\' then
   mnombco:=mnombco+'BANCO.GDB'
else
   mnombco:=mnombco+'\BANCO.GDB';


if pbanco=1 then
   begin
   if not fileexists(mnombco) then
      begin
      Messagedlg('o nome do banco de dados é invalido. favor configurar',mterror,[mbok],0);
      bbIniciar.Enabled:=true;
      exit;
      end;
   end;

GroupBox2.Visible:=True;
Animate1.Active:=True;
case DayOfWeek(date) of
   1: marq:='bkdom';
   2: marq:='bkseg';
   3: marq:='bkter';
   4: marq:='bkqua';
   5: marq:='bkqui';
   6: marq:='bksex';
   7: marq:='bksab';
   end;
marq:=marq+Banco_usuario;
if StrToInt(FormatDateTime('HH',time))>11 then
   marq:=marq+'PM'
else
   marq:=marq+'AM';

if trim(mcam)='' then
   mcam:='\BKP';
if not DirectoryExists(mcam) then
   CreateDir(mcam);
//DISKFREE

//mcam:=mcam+'\';
DeleteFile(mcam+marq+'.dmp');
DeleteFile(mcam+marq+'.zip');

DeleteFile(marq+'.dmp');
DeleteFile(marq+'.zip');

if (mcam[2]=':') and (DM1.Tb_PargerPDTAMUBKP.Value>0) then
   begin
   mund:=LowerCase(copy(mcam,1,2));
   mlivre:=DiskFree( (integer(mund[1]))-96 );
   if mlivre<=DM1.Tb_PargerPDTAMUBKP.Value then
      begin
      MessageDlg('Espaço Livre:'+FloatToStr(mlivre)+' Bytes Não Sera o suficiente!'+#13
                +'Esvazie o disco ou troque-o!',mtError,[mbOk],0);
      bbIniciar.Enabled:=true;
      exit;
      end;
   end;




//mcomando:='EXP '+Banco_usuario+'/'+Banco_senha+'@'+Banco_ServerName+' OWNER="'+Banco_usuario+'" FILE='+mcam+marq;

if FileExists(ExtractFilePath(Application.ExeName)+'IGESTAO_BACKUPS.EXE') then
   mcomando:=ExtractFilePath(Application.ExeName)+'IGESTAO_BACKUPS.EXE ORACLE '+Banco_usuario+' '+Banco_ServerName+' '+mcam+' '+mcam+marq
else
   mcomando:='EXP '+Banco_usuario+'/'+Banco_senha+'@'+Banco_ServerName+' OWNER="'+Banco_usuario+'" FILE='+mcam+marq;


//mcomando:='IGESTAO_BACKUPS.EXE ORACLE '+Banco_usuario+' '+Banco_ServerName+' '+mcam+' '+mcam+marq;

if fexecprog(mcomando,0)=-1 then
   begin
   GroupBox2.Visible:=False;
   Animate1.Active  :=False;
   MessageDlg('Erro ao Tentar Exportar o banco de dados',mtError,[mbok],0);
   bbIniciar.Enabled:=true;
   exit;
   end;
if not FileExists(mcam+marq+'.dmp') then
   begin
   GroupBox2.Visible:=False;
   Animate1.Active  :=False;
   bbIniciar.Enabled:=true;
   MessageDlg('Arquivo nao exportado!',mtError,[mbok],0);
   exit;
   end;
if mcam[length(mcam)]<>'\' then
   mcam:=mcam+'\';
{
pArquivosCompactar:=TStringList.Create;

pArquivosCompactar.Add(mcam+marq+'.dmp');
if DirExists(banco_servidor+'\PASTADOCS\') then
   pArquivosCompactar.Add(banco_servidor+'\PASTADOCS\*.RTF');

if DirExists(banco_servidor+'\PASTADOCS\'+Banco_usuario) then
   pArquivosCompactar.Add(banco_servidor+'\PASTADOCS\'+Banco_usuario+'\*.RTF');


if (trim(DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString)<>'') and
   (DirExists(DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString)) then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('SELECT CGC FROM CADEMP where CGC>0 ORDER BY CODEMP');
   DM1.Query1.Open;
   While not DM1.Query1.Eof do
      begin
      mPastaXml:=DM4.Tb_ParGer02PG2NFEPASTAMASTER.AsString;
      if mPastaXml[length(mpastaxml)]<>'\' then
         mPastaXml:=mPastaXml+'\';
      mPastaXml:=mPastaXml+insere(DM1.Query1.FieldByName('CGC').AsString,'0',14)+'\ENVIADOS';
      Lista := TStringList.Create;
      GetDirList(mPastaXml, Lista ,true);
      for x:=0 to lista.Count-1 do
         begin
         if copy(lista[x],length(lista[x])-13,14)<>'VERSAO_CLIENTE' then
            continue;
         pArquivosCompactar.Add(lista[x]+'\*.XML');
         end;
      DM1.Query1.Next;
      end;
   end;

// TERMINO



FZiparArquivos(pArquivosCompactar,mcam+marq+'.zip','BKPSGEORA');

freeandnil(pArquivosCompactar);
 }


if not flparger(0,0,'1') then
   MessageDlg('Nao Encontrado!',mtWarning,[mbOk],0);


DM1.Tb_Parger.Edit;
DM1.Tb_PargerPDTUBKP.Value:=date;
DM1.Tb_PargerPHRABKP.Value:=FormatDateTime('hh:nn:ss', time);
DM1.Tb_ParGerPDCAMBKP.Value:=mcam+marq;
if mcam[length(mcam)]<>'\' then
   DM1.Tb_PargerPDTAMUBKP.Value:=fTamanhoArq(mcam+'\'+marq+'.zip')
else
   DM1.Tb_PargerPDTAMUBKP.Value:=fTamanhoArq(mcam+marq+'.zip');

DM1.Tb_Parger.Post;
GroupBox2.Visible:=False;
Animate1.Active  :=False;
Messagedlg('Concluido com Sucesso!',mtWarning,[mbOk],0);
bbIniciar.Enabled:=true;
end;

procedure TFrm_Bkp.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Bkp.FormCreate(Sender: TObject);
begin
//zip := TZip.create(self);
end;

procedure TFrm_Bkp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;





    


end.
