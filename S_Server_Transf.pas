unit S_Server_Transf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids,lerarq,func,S_Editor, ExtCtrls,
  FileCtrl, Gauges, DB, DBTables, S_SelEmp;

type
  TFrm_Server_Transf = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label2: TLabel;
    NUMLOT: TEdit;
    GroupBox3: TGroupBox;
    STGP_REC: TStringGrid;
    bbIniciar: TBitBtn;
    Timer1: TTimer;
    Panel1: TPanel;
    bbSair: TBitBtn;
    FileListBox1: TFileListBox;
    TIPO: TEdit;
    FileListBox2: TFileListBox;
    Gauge1: TGauge;
    lbl_proces: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbIniciarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     function fimpdmtestaarq(parq: String): Boolean;
     function fimpdmProcessa(pTipo: Integer): Boolean;
     function FImpDMSolArquivo(ptipo: Integer): Boolean;
     function fApagaAntigos(pTipo: Integer): Boolean;
     function fDeletaDir(pTipo: Integer): Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;
function fimpdmtestanome(pnomrec: String): String;
function fExtensao(pnomrec: String): String;

function fCriarEvento(pTexto,plote: String): Boolean;
function fCriarArqLog(pTipo: Integer;pnumlot: String): String;

var
  Frm_Server_Transf: TFrm_Server_Transf;
  f: TextFile;
  mlinha: String;
  mqtdped: Integer;
  mqtdreg: Integer;
  mTipoOper: Integer=0;
  mNomeArq: String;
  mCodEmp_sol: Integer;
//0-Somente Recepcao
//1-Solicitacao de Cadastros

  F_Evento    : TextFile;
  mCriouEvento: Boolean=False;
  mNomeEvento : String;
  mArqProc: String;
  mchavepoc: String;
  mBuscando: Boolean=False;
  mglid, mgtot: Integer;
  mCadPro: Boolean=False;
  mCadcli: Boolean=False;
  mCadDar: Boolean=False;
  mCadPV : Boolean=False;
  mReceb: boolean=False;
  mOrigem_Chamada: Integer=0;

implementation

uses S_DM1, S_DM4, S_ExpMov,S_ImpMov, S_DM2;

{$R *.dfm}

procedure TFrm_Server_Transf.bbSairClick(Sender: TObject);
begin
close;
end;

function TFrm_Server_Transf.fimpdmtestaarq(parq: String): Boolean;
var
mtipo: String;
x: Integer;
begin
if not FileExists(parq) then
   begin
   MessageDlg('Arquivo não Encontrado!',mtWarning,[mbOk],0);
   result:=False;
   end
else
   begin
   AssignFile(f,parq);
   Reset(f);
   ReadLn(F,mlinha);
   if length(mlinha)<>69 then
      begin
      MessageDlg('Não é um arquivo válido de Importação, ou esta danificado!',mtWarning,[mbOk],0);
      result:=false
      end
   else
      begin
      mtipo:=copy(mlinha,01,02);
      Label1.Caption:='Empresa: ';
      CODVEN.Text   :=copy(mlinha, 03,05);
      NOMVEN.Text   :=copy(mlinha, 08,40);
      TIPO.Text     :=mtipo;
      mPastaEnv   :='C:\SGE\enviar\'+'EM'+FormatFloat('00000', ValFloat(CODVEN.Text))+'\';
      mcodemp_sol :=valint(CODVEN.Text);
      if not DirectoryExists(mPastaEnv) then
         CreateDir(mPastaEnv);
      if not DirectoryExists(mPastaEnv+'BKP') then
         CreateDir(mPastaEnv+'BKP');

      NUMLOT.Text:=copy(mlinha,50,10);
      mqtdreg    :=valint(copy(mlinha,60,10));
      x:=STGP_REC.RowCount-1;
      Frm_ImpMov.LOTE.Text:=NUMLOT.Text;
      Frm_ImpMov.NOMARQ.Text:=parq;
      STGP_REC.Cells[00,x]:=NUMLOT.Text;
      STGP_REC.Cells[01,x]:=CODVEN.Text;
      STGP_REC.Cells[02,x]:=NOMVEN.Text;
      STGP_REC.Cells[03,x]:=FormatDatetime(fdt2, date);
      STGP_REC.Cells[04,x]:=FormatDatetime(fhr, time);
      STGP_REC.RowCount:=x+2;
      mTipoOper:=valint(copy(mlinha, 48,02));
// lindomar
      result:=true;
      end;
   closefile(f);
   end;

end;

procedure TFrm_Server_Transf.FormCreate(Sender: TObject);
begin
STGP_REC.RowCount:=2;
STGP_REC.Cells[00,00]:='Lote';
STGP_REC.Cells[01,00]:='Cód.Emp';
STGP_REC.Cells[02,00]:='Nome da Empresa';
STGP_REC.Cells[03,00]:='Data';
STGP_REC.Cells[04,00]:='Hora';

if not DirectoryExists('C:\SGE') then
   CreateDir('C:\SGE');
if not DirectoryExists('C:\SGE\ENVIAR') then
   CreateDir('C:\SGE\ENVIAR');
if not DirectoryExists('C:\SGE\RECEBE') then
   CreateDir('C:\SGE\RECEBE');
mPastaRec:='C:\SGE\RECEBE\';
mpastaEnv:='C:\SGE\ENVIAR\';


FileListBox1.Directory:='C:\SGE\RECEBE\';
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADEMP');
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger<3 then
   mTruncar:=true;
fApagaAntigos(0);
fDeletaDir(0);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

function fimpdmtestanome(pNomRec: String): String;

var
mPonto,mtam: Integer;
begin
mPonto:=0;
mtam   :=length(pnomrec);
for mPonto:=1 to mtam do
   begin
   if pnomrec[mPonto]='.' then break;
   end;
if mPonto>0 then
   Result:=copy(pnomrec, 1, mponto-1)
else
   Result:=pnomrec;
end;

function fExtensao(pnomrec: String): String;
var
mPonto,mtam: Integer;
begin
mPonto:=0;
mtam   :=length(pnomrec);
for mPonto:=mtam downto 0 do
   begin
   if pnomrec[mPonto]='.' then break;
   end;
if mPonto>0 then
   Result:=copy(pnomrec,mponto+1, (mtam-mponto))
else
   Result:=pnomrec;
end;


function TFrm_Server_Transf.fimpdmProcessa(pTipo: Integer): Boolean;

begin
mCriouEvento:=False;
lbl_proces.Visible:=true;
Gauge1.Visible    :=true;
if ptipo=0 then
   begin
   if UpperCase(copy(mNomeArq,1,7))='EXPCAD_' then
      begin
      lbl_proces.Caption:='Processando arquivos para envio, aguarde...';
      lbl_proces.Update;

      mImpMov_Origem:=1;
      fImpMovCad_Mov(1,true,false);
      end
   else if UpperCase(copy(mNomeArq,1,7))='EXPMOV_' then
      begin
      lbl_proces.Caption:='Recebendo Arquivo(s), aguarde...';
      lbl_proces.Update;

      mImpMov_Origem:=0;
      fImpMovCad_Mov(1,false,true);
      end
   else if UpperCase(copy(mNomeArq,1,7))='EXPPED_' then
      begin
      lbl_proces.Caption:='Recebendo Pedido(s), aguarde...';
      lbl_proces.Update;
      mImpMov_Origem:=2;
      fImpMovCad_Mov(1,false,true);
      end;
   mGerarNovo:=true;
   fImportar(1,mPastaRec,mPastaRec+mNomeArq);
   end
else if ptipo=1 then
   begin
   lbl_proces.Caption:='Processando arquivos para envio, aguarde...';
   lbl_proces.Update;
   if UpperCase(copy(mNomeArq,1,7))='EXPCAD_' then
      begin
      mExpMov_Origem:=1;
      fExpMovCad_Mov(0,true,false);
      end
   else
      begin
      mExpMov_Origem:=0;
      fExpMovCad_Mov(0,false,true);
      end;
   mGerarNovo:=true;
   fExportar(1,mpastaEnv,mpastaEnv+mNomeArq);
   end;

fCriarEvento('Recebido o Recebimento do Lote: '+NUMLOT.Text,NUMLOT.Text);
if mCriouEvento then
   begin
   CloseFile(F_Evento);
   RenameFile(mPastaEnv+fimpdmtestanome(mNomeEvento)+'.$$$',
              mPastaEnv+fimpdmtestanome(mNomeEvento)+'.RET');
   end;


{
Arquivo de Cabeçalho/Identificação
Registro   Tamanho   Posicao Inicial  Posição Final          Conteúdo/Valor
  01               02                 01                      02                    00-Identificação do Vendedor
  02               02                 03                      04                    00-Identificação do Vendedor
  03               05                 05                      09                    Codigo do Vendedor
  04               40                 10                      49                     Nome do Vendedor
  05               10                 50                      59                     Lote
  06               10                 60                      69                     Quantidade de Registros
}
lbl_proces.Caption:='Concluido!';
lbl_proces.Update;
Gauge1.Visible:=False;
if mCriouEvento then
   result:=false
else
   result := true;

end;

function fCriarArqLog(pTipo: Integer; pnumlot: String): String;
var
mtabtemp: String;
x: Integer;
begin
x:=0;

mtabtemp:=fimpdmtestanome(mArqProc)+'_'+pnumlot;
if FileExists(mPastaEnv+mtabtemp+'.$$$') then
   DeleteFile(mPastaEnv+mtabtemp+'.$$$');
if FileExists(mPastaEnv+mtabtemp+'.RET') then
   DeleteFile(mPastaEnv+mtabtemp+'.RET');
mtabtemp:=mtabtemp+'.$$$';
result:=mtabtemp;
end;


procedure TFrm_Server_Transf.bbIniciarClick(Sender: TObject);
begin
if mBuscando then
   begin
   mBuscando:=False;
   bbIniciar.Caption:='Iniciar as Buscas';
   Timer1.Enabled   :=false;
   end
else
   begin

   STGP_REC.RowCount:=2;
   STGP_REC.Rows[1].Clear;
   mBuscando:=true;
   bbIniciar.Caption:='Finalizar as Buscas';
   FileListBox1.Refresh;
   Timer1.Enabled:=true;
   end;

end;

procedure TFrm_Server_Transf.Timer1Timer(Sender: TObject);
var
x: Integer;
begin
if mBuscando then
   begin
   FileListBox1.Update;
   if FileListBox1.Items.Count>0 then
      begin
      mBuscando:=false;
      for x:=0 to FileListBox1.Items.Count-1 do
         begin
         mNomeArq:=FileListBox1.Items[0];
         if not FileExists(mPastaRec+mNomeArq) then
            begin
            Continue;
            end;
         mglid:=0;
         if not fimpdmtestaarq(mNomeArq) then
            Continue;
         if mTipoOper=0 then
            begin
            mArqProc:=fimpdmtestanome(mNomeArq)+'.ZIP';
            if not FileExists(mPastaRec+mArqProc) then
               begin
               Continue;
               end;
            end;

         mgtot:=mqtdreg;
         fimpdmProcessa(mTipoOper);
//         lindomar
         mArqProc:=fimpdmtestanome(mNomeArq)+'.ID';
         DeleteFile(mpastarec+mArqProc);
         mArqProc:=fimpdmtestanome(mNomeArq)+'.ZIP';
         DeleteFile(mpastarec+mArqProc);
         end;
      mBuscando:=true;
      end;
   end;
end;


function TFrm_Server_Transf.FImpDMSolArquivo(ptipo: Integer): Boolean;
var
mArqSol: Integer;
begin
{
mCadPro:=False;
mCadcli:=False;
mCadDar:=False;
mCadPV :=False;
mArqSol:=valint(copy(mlinha,1,3));
if mArqSol=105 then
   mCadPro:=true
else if mArqSol=110 then
   mCadcli:=true
else if mArqSol=115 then
   mCadpv :=true
else if mArqSol=120 then
   mCaddar :=true;


While not (eof(f)) and (copy(mlinha,1,1)='1') do
   begin
   Readln(f, mlinha);
   mArqSol:=valint(copy(mlinha,1,3));
   if mArqSol=105 then
      mCadPro:=true
   else if mArqSol=110 then
      mCadcli:=true
   else if mArqSol=115 then
      mCadpv :=true
   else if mArqSol=120 then
      mCaddar :=true;

   end;
Application.CreateForm(TFrm_ExpMov, Frm_ExpMov);
if TIPO.Text='EM' then
   begin
   x:=STGP_REC.RowCount;
   STGP_REC.Cells


   STGP_REC.Cells[00,00]:='Lote';
STGP_REC.Cells[01,00]:='Cód.Emp';
STGP_REC.Cells[02,00]:='Nome da Empresa';
STGP_REC.Cells[03,00]:='Data';
STGP_REC.Cells[04,00]:='Hora';

   LINDOMAR
   Frm_ExpMov.CODSUP.Text:=Frm_Server_Transf.CODVEN.Text;
   Frm_ExpMov.NOMSUP.Text:=Frm_Server_Transf.NOMVEN.Text;
   Frm_ExpMov.CODVEN.Text:='';
   Frm_ExpMov.NOMVEN.Text:='';
   end
else if TIPO.Text='VD' then
   begin
   Frm_ExpMov.CODVEN.Text:=Frm_Server_Transf.CODVEN.Text;
   Frm_ExpMov.NOMVEN.Text:=Frm_Server_Transf.NOMVEN.Text;
   Frm_ExpMov.CODSUP.Text:='';
   Frm_ExpMov.NOMSUP.Text:='';
   end
else if TIPO.Text='VD' then
   begin
   Frm_ExpMov.CODVEN.Text:='';
   Frm_ExpMov.NOMVEN.Text:='';
   Frm_ExpMov.CODSUP.Text:='';
   Frm_ExpMov.NOMSUP.Text:='';
   end;


if not fExpDMExportar(1,ValInt(Frm_ExpMov.CODVEN.Text),ValInt(Frm_ExpMov.CODSUP.Text),
                 '/  /',
                 '/  /',
                 mCadPro,
                 mCadcli,
                 mCadDar,
                 mCadPV,30) then
   begin
   MessageDlg('Erro ao Gerar o Arquivo de Exportacao!',mtWarning,[mbOk],0);
   end;
Frm_ExpMov.Free;
}
end;


function fCriarEvento(pTexto,pLote: String): Boolean;
begin
if not mCriouEvento then
   begin
   mNomeEvento:=fcriarArqLog(0,FormatFloat('0000',ValInt(pLote)));
   Assignfile(F_Evento,mPastaEnv+mNomeEvento);
   Rewrite(F_Evento);
   mCriouEvento:=true;
   end;
Writeln(f_Evento, pTexto);
result:=true;
end;


procedure TFrm_Server_Transf.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
mtruncar:=false;

end;

function TFrm_Server_Transf.fApagaAntigos(pTipo: Integer): Boolean;
//Esta função Apaga os Arquivos antigos Existentes de outras conexoes
var
x: Integer;
begin
{
FileListBox1.Directory:=mpastaEnv;

FileListBox1.Update;
if FileListBox1.Items.Count>0 then
   begin
   for x:=0 to FileListBox1.Items.Count-1 do
      begin
      mNomeArq:=FileListBox1.Items[0];
      if not FileExists(mpastaEnv+mNomeArq) then
         begin
         Continue;
         end;
      mglid:=0;
      mArqProc:=fimpdmtestanome(mNomeArq)+'.ID';
      DeleteFile(mpastaEnv+mArqProc);
      mArqProc:=fimpdmtestanome(mNomeArq)+'.ZIP';
      DeleteFile(mpastaEnv+mArqProc);
     end;
  end;
}

FileListBox1.Directory:=mPastaRec;

FileListBox1.Update;
if FileListBox1.Items.Count>0 then
   begin
   for x:=0 to FileListBox1.Items.Count-1 do
      begin
      mNomeArq:=FileListBox1.Items[0];
      if not FileExists(mPastaRec+mNomeArq) then
         begin
         Continue;
         end;
      mglid:=0;
      mArqProc:=fimpdmtestanome(mNomeArq)+'.ID';
      DeleteFile(mpastarec+mArqProc);
      mArqProc:=fimpdmtestanome(mNomeArq)+'.ZIP';
      DeleteFile(mpastarec+mArqProc);
     end;
  end;

result:=true;
end;
function TFrm_Server_Transf.fDeletaDir(pTipo: Integer): Boolean;
var
x: Integer;
mnomepasta: String;

begin
result:=true;
{
if mpastaEnv[length(mPastaEnv)]='\' then
   mnomepasta:=copy(mPastaEnv,1,length(mPastaEnv))
else
   mnomepasta:=mPastaEnv;
DirectoryListBox1.Directory:=mnomepasta;
DirectoryListBox1.Update;
for x:=DirectoryListBox1.ItemIndex to  DirectoryListBox1.Count-1 do
   begin
   if DirectoryListBox1.Items[x]='CONFIG' then
      continue;
   DeleteFolder(mnomepasta+DirectoryListBox1.Items[x],false);
   end;
}
// recebe

if mpastaRec[length(mPastaRec)]='\' then
   mnomepasta:=copy(mPastaRec,1,length(mPastaRec))
else
   mnomepasta:=mPastaRec;
DirectoryListBox1.Directory:=mnomepasta;
DirectoryListBox1.Update;
for x:=DirectoryListBox1.ItemIndex to  DirectoryListBox1.Count-1 do
   begin
   if DirectoryListBox1.Items[x]='CONFIG' then
      continue;
   DeleteFolder(mnomepasta+DirectoryListBox1.Items[x],false);
   end;

end;
procedure TFrm_Server_Transf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Server_Transf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
