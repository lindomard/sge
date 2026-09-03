unit S_AtuSis02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlExpr,Buttons,db,shellapi, ExtCtrls;

type
  TFrm_AtuSis02 = class(TForm)
    bbAtuaSGE: TBitBtn;
    edt_pasta: TComboBox;
    gb_progresso: TGroupBox;
    lbl_processo: TLabel;
    bbEnviar: TBitBtn;
    Timer1: TTimer;
    bbSGEFRENTE: TBitBtn;
    bbMasterBaixar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbAtuaSGEClick(Sender: TObject);
    procedure bbEnviarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure bbSGEFRENTEClick(Sender: TObject);
    procedure bbMasterBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     function fBaixarArquivo(pNomeArq: String): Boolean;
//     function fDeletarTExistentes(pNomeArq: String): Boolean;
     function fBaixarArquivos_geral(pNomeArq: String): Boolean;

     function fTestarGerenciador(pTipo: Integer): Boolean;


     function fBackupsOracle(pTipo: Integer): Boolean;

     function EnviarArquivos_geral(pNomeArq: String): Boolean;


  public
    { Public declarations }
  end;
// function CombineFiles(FileName: TFileName) : Boolean;

var
  Frm_AtuSis02: TFrm_AtuSis02;

implementation

uses S_DM_MYSQL, Func, S_DM1;

{$R *.dfm}

function TFrm_AtuSis02.fBaixarArquivos_geral(pNomeArq: String): Boolean;
var
query_Cons: tSqlQuery;
mParametros,mPastaProg: string;
mDataArq,mDataLocal: TDateTime;
mProgBaixar: String;
mNomeCNPJ: String;
begin
try
   Query_Cons:=TSQLQuery.Create(nil);
   Query_Cons.SQLConnection:=DM_MYSQL.SQLConnection_CEP;
   Query_Cons.SQL.Clear;

   Query_Cons.Close;
   Query_Cons.SQL.Clear;
   Query_Cons.SQL.Add('select ci01_datahora from intersys_cadins01 '
                   +' where ci01_chave_arq=:CHAVE '
                   +' order by ci01_datahora '
                   +' limit 1 ');
   Query_Cons.ParamByName('CHAVE').AsString:= fRetiraExtensao(Fnomearq_Pasta(0, pNomeArq))+'.ZIP';
   try
      Query_Cons.Open;
      if Query_Cons.IsEmpty then
         begin
         MessageDlg('Não foi encontrado o Versão Nova do '+pNomeArq+'!',mtInformation,[mbOk],0);
         FreeAndNil(Query_Cons);
         result:=false;
         exit;
         end;
   except
      Update;
      MessageDlg('Servidor de Versão não encontrado!',mtWarning,[mbOk],0);
      FreeAndNil(Query_Cons);
      result:=false;
      exit;
      end;

   mDataArq:=StrToDateTime(
                 formatdatetime('dd/mm/yyyy hh:mm',
                Query_Cons.FieldByName('ci01_datahora').AsDateTime)+':00'
                );


   if fileexists(pnomearq) then
      mDataLocal:=StrToDateTime(formatdatetime('dd/mm/yyyy hh:mm',
                       FileDateToDateTime(FileAge( pnomearq))
                       )+':00')
   else
      mDataLocal:=pdatanula;


   if mDataArq<=mDataLocal then
      begin
      Update;
      if Application.MessageBox(pChar('a Versão Sua é de '+FormatDatetime(fdathor, mDatalocal)
                               +' do servidor '+FormatDatetime(fdathor, mDataArq)),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
         begin
         FreeAndNil(Query_Cons);
         exit;
         end;
      end;
{
Parametros e funcoes do atualizador de versão

parametro 01 = 0-Upload Enviar 1-Download(receber)
Parametro 02 = HostName da Conexao

Parametro 03 = Nome_cnpj Primeiro nome e cnpj do cliente sem espaço

Parametro 04 = Pasta do Arquivo
Parametro 05 = Nome do Arquivo


Parametro 06 = DatabaseName
Parametro 07 = Usuario
Parametro 08 = Senha
}


   mPastaProg:=ExtractFilePath(Application.ExeName);
   mPastaProg:=mPastaProg+'SGE_ATUALIZA_VERSAO.EXE';
   //mPastaProg:=mPastaProg+'SGE_ATUALIZA_VERSAO.EXE'+' \'+Fnomearq_Pasta(0, edt_pasta.Text)+' \'+mPastaProg;
   //mPastaProg:=mPastaProg+'SGE_ATUALIZA_VERSAO.EXE '+Fnomearq_Pasta(0, edt_pasta.Text)+' '+mPastaProg;


   mProgBaixar:=Fnomearq_Pasta(0, pnomearq);



   if length(DM1.Tb_EmpFANTASIA.AsString)>4 then
      mNomeCNPJ:=PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)+'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)
   else
      mNomeCNPJ:=PrimeiroNome(DM1.Tb_EmpRAZAO.AsString)+'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat);

   mParametros:='0 '+mCEP_HostName+' '+mNomeCNPJ+' '+Fnomearq_Pasta(1, pnomearq)+' '+mProgBaixar;

   ShellExecute(Handle, 'open', pchar(mpastaprog), pchar(mParametros), nil, SW_SHOWNORMAL) ;

   //WinExec(pansiChar( mpastaprog),Sw_ShowNormal);

   Application.Terminate;
   exit;
except
   end;

end;


function TFrm_AtuSis02.fTestarGerenciador(pTipo: Integer): Boolean;

var
query_Cons: tSqlQuery;
mBaixarAtualizador: Boolean;
mParametros,mPastaProg: string;
mDataArq,mDataLocal: TDateTime;
mProgBaixar: String;
begin
result:=true;
lbl_processo.Caption:='Testando o Gerenciador, aguarde!';
try
   Query_Cons:=TSQLQuery.Create(nil);
   Query_Cons.SQLConnection:=DM_MYSQL.SQLConnection_CEP;
   Query_Cons.SQL.Clear;

   mPastaProg:=ExtractFilePath(Application.ExeName);
   mBaixarAtualizador:=false;
   if (not FileExists(mPastaProg+'SGE_ATUALIZA_VERSAO.EXE')) then
      mBaixarAtualizador:=true;

   if not mBaixarAtualizador then
      begin

      Query_Cons.SQL.Add('select * from intersys_cadins01 '
                      +' where ci01_chave_arq=:CHAVE '
                      +' order by ci01_datahora '
                      +' limit 1 ');
      Query_Cons.ParamByName('CHAVE').AsString:= 'SGE_ATUALIZA_VERSAO.ZIP';

      try
         Query_Cons.Open;
         if Query_Cons.IsEmpty then
            begin
            lbl_processo.Caption:='ERRO, Não foi encontrado o arquivo atualizador de versão!';
            MessageDlg('Não foi encontrado o arquivo atualizador de versão!',mtInformation,[mbOk],0);
            FreeAndNil(Query_Cons);
            result:=false;
            exit;
            end;
      except
         Update;
         lbl_processo.Caption:='ERRO, Servidor de Versão não encontrado!';

         MessageDlg('Servidor de Versão não encontrado!',mtWarning,[mbOk],0);
         FreeAndNil(Query_Cons);
         result:=false;
         exit;
         end;

      try

         mDataArq:=StrToDateTime(formatdatetime('dd/mm/yyyy hh:mm',
                Query_Cons.FieldByName('ci01_datahora').AsDateTime)+':00');

      except
         lbl_processo.Caption:='Erro ao converter data: '+Query_Cons.FieldByName('ci01_datahora').AsString;
         MessageDlg('Erro ao converter data: '+Query_Cons.FieldByName('ci01_datahora').AsString,mtWarning,[mbOk],0);
         FreeAndNil(Query_Cons);
         result:=false;
         exit;
         end;
      try

         mDataLocal:=StrToDateTime(formatdatetime('dd/mm/yyyy hh:mm',
                FileDateToDateTime(FileAge(mPastaProg+'SGE_ATUALIZA_VERSAO.EXE')))+':00');

      except
         lbl_processo.Caption:='Erro ao converter data: '+FloattoStr(FileDateToDateTime(FileAge(mPastaProg+'SGE_ATUALIZA_VERSAO.EXE')));

         MessageDlg('Erro ao converter data: '+FloattoStr(FileDateToDateTime(FileAge(mPastaProg+'SGE_ATUALIZA_VERSAO.EXE'))),mtWarning,[mbOk],0);
         FreeAndNil(Query_Cons);
         result:=false;
         exit;
         end;

      if mDataArq>mDataLocal then
         mBaixarAtualizador:=true;
      end;
   if mBaixarAtualizador then
      fBaixarArquivo('SGE_ATUALIZA_VERSAO.EXE');
except
   end;
//fBaixarArquivo('SGE.EXE');
end;


function TFrm_AtuSis02.fBaixarArquivo(pNomeArq: String): Boolean;

var
query_atu01,query_atu02: tSqlQuery;
mSeq: Integer;
mArqSaida: String;
begin
query_atu01:=TSQLQuery.Create(nil);
query_atu01.SQLConnection:=DM_MYSQL.SQLConnection_CEP;
query_atu01.SQL.Add('select * from intersys_cadins01 '
                   +' where ci01_chave_arq=:CHAVE '
                   +' order by ci01_datahora '
                   +' limit 1 ');
query_atu01.ParamByName('CHAVE').AsString:= fretiraExtensao(pNomeArq)+'.ZIP';
try
   query_atu01.Open;
   if query_atu01.IsEmpty then
      begin
      lbl_processo.Caption:='Não foi encontrado versão do '+pNomeArq+' para baixar!';
      MessageDlg('Não foi encontrado versão do '+pNomeArq+' para baixar!',mtInformation,[mbOk],0);
      FreeAndNil(query_atu01);
      exit;
      end;
except
   Update;
   lbl_processo.Caption:='Servidor de Versão não encontrado!';
   MessageDlg('Servidor de Versão não encontrado!',mtWarning,[mbOk],0);
   FreeAndNil(query_atu01);
   exit;
   end;


query_atu02:=TSQLQuery.Create(nil);
query_atu02.SQLConnection:=DM_MYSQL.SQLConnection_CEP;
query_atu02.close;
query_atu02.SQL.Clear;
query_atu02.SQL.Add('select ci02_dados,ci02_sequencia from intersys_cadins02 '
                   +' where ci02_chave_arq=:CHAVE '
                   +' and   ci02_datahora=:DATHOR '
                   +' order by ci02_sequencia ');

//query_atu02.SQL.Add('select ci02_dados,ci02_sequencia from intersys_cadins02 ');

query_atu02.ParamByName('CHAVE').AsString:=fretiraExtensao(pNomeArq)+'.ZIP';
query_atu02.ParamByName('DATHOR').Value:=query_atu01.FieldbyName('CI01_DATAHORA').Value;

try
   query_atu02.Open;
   if query_atu02.IsEmpty then
      begin
      lbl_processo.Caption:='Não foi encontrado versão do '+pNomeArq+' para baixar!';

      MessageDlg('Não foi encontrado versão do '+pNomeArq+' para baixar!',mtInformation,[mbOk],0);
      FreeAndNil(query_atu02);
      exit;
      end;
except
  lbl_processo.Caption:='Servidor de Versão não encontrado!';

   MessageDlg('Servidor de Versão não encontrado!',mtWarning,[mbOk],0);
   FreeAndNil(query_atu02);
   exit;
   end;
mSeq:=0;
mArqSaida:=ExtractFilePath(Application.ExeName);
if mArqSaida[length(marqsaida)]<>'\' then
   mArqSaida:=mArqSaida+'\';
mArqSaida:=mArqSaida+fretiraExtensao(pNomeArq)+'.ZIP';
fDeletarTExistentes(mArqSaida);

While not query_atu02.Eof do
   begin
   mSeq:=mSeq+1;
   (query_atu02.FieldByName('ci02_dados') as tblobfield).SaveToFile(mArqSaida+'.'+FormatFloat('000',mSeq));
   query_atu02.Next;
   end;

if FileExists(mArqSaida+'_ant') then
   DeleteFile(mArqSaida+'_ant');
//ShowMessage(fretiraExtensao(mArqSaida)+'.EXE');
lbl_processo.Caption:='Excluindo os anteriores!';

if not DeleteFile(fretiraExtensao(mArqSaida)+'.EXE') then
   begin
   lbl_processo.Caption:='Não foi possivel deletar o arquivo: '+fretiraExtensao(mArqSaida)+'.EXE'+' Pode haver erros durante o processo!';
   MessageDlg('Não foi possivel deletar o arquivo: '+fretiraExtensao(mArqSaida)+'.EXE'+' Pode haver erros durante o processo!' ,mtWarning,[mbOk],0);
   end;

lbl_processo.Caption:='Renomeando os arquivos, aguarde!';

RenameFile(mArqSaida,mArqSaida+'_ant');
lbl_processo.Caption:='Agrupando os arquivos temporarios, aguarde!';

CombineFiles(mArqSaida);
lbl_processo.Caption:='Descompactando os arquivos temporarios, aguarde!';

fUnZiparArquivos(marqSaida,Fnomearq_Pasta(1,mArqSaida)+'\','');
lbl_processo.Caption:='Deletando Temporarios, aguarde!';
fDeletarTExistentes(mArqSaida);



end;

procedure TFrm_AtuSis02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;


end;




procedure TFrm_AtuSis02.bbAtuaSGEClick(Sender: TObject);
begin
gb_progresso.Visible:=true;
Timer1.Enabled:=true;

//edt_pasta.Text:='C:\SGE\SGE.EXE';

edt_pasta.Text:=banco_caminho+'\NOVAVER';
if not DirExists(edt_pasta.text) then
   edt_pasta.Text:='C:\SGE\NOVAVER\SGE.EXE'
else
   edt_pasta.Text:=edt_pasta.Text+'\SGE.EXE';

if fTestarGerenciador(0) then
   fBaixarArquivos_geral(edt_pasta.Text);
Timer1.Enabled:=false;

gb_progresso.Visible:=false;

end;
function TFrm_AtuSis02.fBackupsOracle(pTipo: Integer): Boolean;
var
mCaminho: String;
mComando: String;
mPasta: String;
begin
lbl_processo.Caption:='Executando a Exportação do Banco de Dados, aguarde!';
lbl_processo.update;
mPasta:=ExtractFilePath(Application.ExeName)+'BKPTEMP\';

if not DirectoryExists(mPasta) then
   CreateDir(mPasta);

case DayOfWeek(date) of
   1: mCaminho:='bkdom';
   2: mCaminho:='bkseg';
   3: mCaminho:='bkter';
   4: mCaminho:='bkqua';
   5: mCaminho:='bkqui';
   6: mCaminho:='bksex';
   7: mCaminho:='bksab';
   end;
mCaminho:=mCaminho+Banco_usuario;
if StrToInt(FormatDateTime('HH',time))>11 then
   mCaminho:=mCaminho+'PM'
else
   mCaminho:=mCaminho+'AM';

if length(trim(DM1.Tb_EmpFANTASIA.text))>4 then
   mCaminho:=mPasta+mCaminho+'_'+PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)+'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)
else
   mCaminho:=mPasta+mCaminho+'_'+PrimeiroNome(DM1.Tb_EmpRAZAO.AsString)+'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat);
mComando:='EXP '+Banco_usuario+'/'+Banco_senha+'@'+Banco_ServerName+' OWNER="'+Banco_usuario+'" FILE='+mCaminho;

result:=true;
if fexecprog(mcomando,0)=-1 then
   begin
   result:=false;
   exit;
   end;
if not FileExists(mCaminho+'.dmp') then
   begin
   result:=false;
   exit;
   end;
if EnviarArquivos_geral(mCaminho) then
   begin
   lbl_processo.Caption:='Arquivo enviado!';
   lbl_processo.update;
   MessageDlg('Arquivo enviado!',mtInformation,[mbOk],0);
   end
else
   begin
   lbl_processo.Caption:='Erro ao enviar Arquivo!';
   lbl_processo.update;
   MessageDlg('Erro ao enviar Arquivo!',mtError,[mbOk],0);
   end;


end;

procedure TFrm_AtuSis02.bbEnviarClick(Sender: TObject);
begin
gb_progresso.Visible:=true;
Timer1.Enabled:=true;

if fTestarGerenciador(0) then
   begin
   if fBackupsOracle(0) then
   end;
Timer1.Enabled:=false;

gb_progresso.Visible:=false;


end;


function TFrm_AtuSis02.EnviarArquivos_geral(pNomeArq: String): Boolean;
var
mNomeCNPJ: String;
pArquivosCompactar: TStrings;
mcomando: String;

begin
if not FileExists(pNomeArq+'.DMP') then
   begin
   result:=false;
   exit;
   end;

if FileExists(pnomearq+'.zip') then
   begin
   if not DeleteFile(pnomearq+'.zip') then
      begin
      result:=false;
      exit;
      end;
   end;


lbl_processo.Caption:='Compactando o arquivo,aguarde!';
lbl_processo.update;
pArquivosCompactar:=TStringList.Create;

pArquivosCompactar.Add(pNomeArq+'.DMP');

if not fZiparArquivos(pArquivosCompactar,pNomeArq+'.ZIP','Backups de '+DM1.Tb_EmpRAZAO.AsString+' '+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)) then
   begin
   lbl_processo.Caption:='Erro ao Compactar o arquivo!';
   lbl_processo.update;

   FreeandNil(pArquivosCompactar);

   result:=false;
   exit;
   end;
FreeandNil(pArquivosCompactar);
{
if length(DM1.Tb_EmpFANTASIA.AsString)>4 then
   mNomeCNPJ:=PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)
else
   mNomeCNPJ:=PrimeiroNome(DM1.Tb_EmpRAZAO.AsString)+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat);


   ShellExecute(Handle, 'open', 'SGE_ATUALIZA_VERSAO.EXE',  pchar(mParametros), nil, SW_SHOWNORMAL) ;

   mParametros:=mProgBaixar+' '+Fnomearq_Pasta(1, pnomearq);



   mPastaProg:=mPastaProg+'SGE_ATUALIZA_VERSAO.EXE';
   //mPastaProg:=mPastaProg+'SGE_ATUALIZA_VERSAO.EXE'+' \'+Fnomearq_Pasta(0, edt_pasta.Text)+' \'+mPastaProg;
   //mPastaProg:=mPastaProg+'SGE_ATUALIZA_VERSAO.EXE '+Fnomearq_Pasta(0, edt_pasta.Text)+' '+mPastaProg;


   mProgBaixar:=Fnomearq_Pasta(0, pnomearq);


   ShowMessage(

    pchar(
   ExtractFilePath(Application.ExeName)+'SGE_ATUALIZA_VERSAO.EXE')+' parametro '+
   pchar(Fnomearq_Pasta(0,pNomeArq)+'.DMP '+
    Fnomearq_Pasta(1,pNomeArq)+'\ BKP'+PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)
       +'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)+'_EM_'+FormatDatetime('ddmmyyyy', date)));

   ShellExecute(Handle, 'open', pchar(
   ExtractFilePath(Application.ExeName)+'SGE_ATUALIZA_VERSAO.EXE'),
   pchar(Fnomearq_Pasta(0,pNomeArq)+'.DMP '+
    Fnomearq_Pasta(1,pNomeArq)+'\ BKP'+PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)
       +'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)+'_EM_'+FormatDatetime('ddmmyyyy', date)
       ), nil, SW_SHOWNORMAL) ;
}

mcomando:=ExtractFilePath(Application.ExeName)+'SGE_ATUALIZA_VERSAO.EXE'+' '+
       '1 '
       +mCEP_HostName
       +' '+PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)+'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)+'_EM_'+FormatDatetime('ddmmyyyy', date)
       +' '+Fnomearq_Pasta(1,pNomeArq)
       +' '+Fnomearq_Pasta(0,pNomeArq+'.ZIP')
       +' '+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)
       +' '+'DADOS_DO_CLIENTE';

{
ExtractFilePath(Application.ExeName)+'SGE_ATUALIZA_VERSAO.EXE'+' '+
   pchar(Fnomearq_Pasta(0,pNomeArq)+'.DMP '+
    Fnomearq_Pasta(1,pNomeArq)+'\ BKP'+PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)
       +'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)+'_EM_'+FormatDatetime('ddmmyyyy', date));
}
{
Parametros e funcoes do atualizador de versão

parametro 01 = 0-Upload Enviar 1-Download(receber)
Parametro 02 = HostName da Conexao

Parametro 03 = Nome_cnpj Primeiro nome e cnpj do cliente sem espaço

Parametro 04 = Pasta do Arquivo
Parametro 05 = Nome do Arquivo

Parametro 06 = CNPJ

Parametro 07 = categoria

Parametro 08 = DatabaseName
Parametro 09 = Usuario
Parametro 10 = Senha

}

//mComando:='EXP '+Banco_usuario+'/'+Banco_senha+'@'+Banco_ServerName+' OWNER="'+Banco_usuario+'" FILE='+mCaminho;

result:=true;
if fexecprog(mcomando,4)=-1 then
   begin
   lbl_processo.Caption:='Erro ao enviar o arquivo!';
   lbl_processo.update;

   result:=false;
   exit;
   end;



{
mcinst2:='SGE_ATUALIZA_VERSAO.EXE '+Fnomearq_Pasta(0,pNomeArq)+' '+ Fnomearq_Pasta(1,pNomeArq)+' BKP'+PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString)
       +'_'+Formatfloat('00000000000000', DM1.Tb_EmpCGC.AsFloat)+' EM '+FormatDatetime(fdt, date)+' as '+FormatDatetime(fhr, time);


if fexecprog(mcinst2,0)=-1 then
   begin
   result:=false;
   exit;
   end;
}
end;


procedure TFrm_AtuSis02.Timer1Timer(Sender: TObject);
begin
if lbl_processo.Font.Color=$00408000 then
   lbl_processo.Font.Color:=clWindowText
else
   lbl_processo.Font.Color:=$00408000;
lbl_processo.Update;

end;

procedure TFrm_AtuSis02.bbSGEFRENTEClick(Sender: TObject);
begin
gb_progresso.Visible:=true;
Timer1.Enabled:=true;


edt_pasta.Text:=banco_caminho+'\NOVAVER';
if not DirExists(edt_pasta.text) then
   edt_pasta.Text:='C:\SGE\NOVAVER\SGE_FRENTE.EXE'
else
   edt_pasta.Text:=edt_pasta.Text+'\SGE_FRENTE.EXE';



if fTestarGerenciador(0) then
   fBaixarArquivos_geral(edt_pasta.Text);

Timer1.Enabled:=false;
gb_progresso.Visible:=false;
end;

procedure TFrm_AtuSis02.bbMasterBaixarClick(Sender: TObject);
begin
gb_progresso.Visible:=true;
Timer1.Enabled:=true;
if fTestarGerenciador(0) then
   fBaixarArquivos_geral(edt_pasta.Text);
Timer1.Enabled:=false;

gb_progresso.Visible:=false;

end;

procedure TFrm_AtuSis02.FormCreate(Sender: TObject);
begin
if codusr=1111 then
   begin
   edt_pasta.Visible:=true;
   bbMasterBaixar.Visible:=true;
   end;

end;

procedure TFrm_AtuSis02.FormShow(Sender: TObject);
begin
if FileExists(ExtractFilePath(Application.ExeName)+'dbxconnections.ini') then
   begin
   if FileExists(ExtractFilePath(Application.ExeName)+'dbxconnections_aa.ini') then
      deletefile(ExtractFilePath(Application.ExeName)+'dbxconnections_aa.ini');
   renamefile(ExtractFilePath(Application.ExeName)+'dbxconnections.ini',ExtractFilePath(Application.ExeName)+'dbxconnections_aa.ini');

   end;


if FileExists(ExtractFilePath(Application.ExeName)+'dbxdrivers.ini') then
   begin
   if FileExists(ExtractFilePath(Application.ExeName)+'dbxdrivers_aa.ini') then
      deletefile(ExtractFilePath(Application.ExeName)+'dbxdrivers_aa.ini');
   renamefile(ExtractFilePath(Application.ExeName)+'dbxdrivers.ini',ExtractFilePath(Application.ExeName)+'dbxdrivers_aa.ini');
   end;

end;

end.
