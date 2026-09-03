unit S_ImpCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_DefBac, Gauges,S_DM1,Db,DbTables,func,
  ZIP,S_DM4,func2,S_Stru, S_SelEmp;

type
  TFrm_ImpCad = class(TForm)
    GroupBox1: TGroupBox;
    bbImportar: TBitBtn;
    bbSair: TBitBtn;
    lbl_pasta: TLabel;
    PASTA: TEdit;
    SB01: TSpeedButton;
    Tab_Origem: TTable;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    GroupBox3: TGroupBox;
    Gauge2: TGauge;
    lbl_lote: TLabel;
    LOTE: TEdit;
    OpenDialog1: TOpenDialog;
    BatchMove1: TBatchMove;
    tab_destino: TTable;
    Tb_DadExp: TTable;
    Qr_TestaChave: TQuery;
    cb_Cadpro: TCheckBox;
    cb_cadfor: TCheckBox;
    cb_cadgru: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PASTAExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    path: string;
    zip: TZip;

    { Private declarations }
    function fExpMovLog(pTipo: Integer): Boolean;
    function fCarregarTabela(pTabela: String): Boolean;
    function fDeletaDados(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
    function ftestaArq(pNome: String): Boolean;
    function fBuscaEmpresa(pEmpresa,PCampo: String): String;
    function fTestaArquivo(PTabela: String; pLote:Integer): Boolean;
    function fMigrarDados(PTabela,pCampo,pChaveSeq,PCamEmp,PNomPar: String; pLote:Integer): Boolean;
    function fAjustarSeqDoc(PTabela,pCampo,pCamEmp,pNomPar,pChaveSeq: String; pLote:Integer): Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ImpCad: TFrm_ImpCad;
  mlotEnv: Integer;
  mEmpresas: String;
  mTabExp, mTabGer: String;
  mQtdReg: Integer;
  mpasta: String;
  mTotTab: Integer;
  mTabLid: Integer;
  mTotReg: Integer;
  mRegLid: Integer;
  mCodEmp_Ori: Integer;
implementation

uses S_DM2, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_ImpCad.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpCad.SB01Click(Sender: TObject);
begin
if OpenDialog1.Execute then
   begin
   PASTA.Text:=OpenDialog1.FileName;
   if not ftestaArq(PASTA.Text) then
      begin
      MessageDlg('Este não é um arquivo válido!',mtWarning,[mbOk],0);
      end;
   end;

end;

procedure TFrm_ImpCad.bbImportarClick(Sender: TObject);
var
x: Integer;
begin
if not ftestaArq(PASTA.Text) then
   begin
   MessageDlg('Favor Selecionar um arquivo válido!',mtWarning,[mbOk],0);
   exit;
   end;
zip.Password :='BKPDADOS';
zip.FileSpecList.add('*.*');
zip.ExtractOptions := [eoUpdate, eoWithPaths];
zip.ExtractPath := mpasta;
if zip.ExtractErrorCnt > 0 then
   begin
   MessageDlg('Erro: ao tentar descompactar arquivos: '+IntToStr(zip.ExtractErrorCnt),mtWarning,[mbOk],0);
   exit;
   end;
zip.Extract;
//   StatusBar1.SimpleText := format('%d Arquivos Extraidos do arquivo.',[zip.extract]);


mTotTab:=0;
mTabLid:=0;
mTotReg:=0;
mRegLid:=0;
if cb_Cadpro.Checked then
   mTotTab:=mTotTab+3; // CADPRO,CADMPRO,CADGPRO
if cb_cadfor.Checked then
   mTotTab:=mTotTab+1;
if cb_cadgru.Checked then
   mTotTab:=mTotTab+1;
mlotEnv:=ValInt(LOTE.Text);
if mTotTab<1 then
   begin
   MessageDlg('Para Efetuar a Importação é preciso selecionar pelo menos uma tabela!',mtWarning,[mbOk],0);
   exit;
   end;

Panel1.Visible:=true;
if mpasta[length(mpasta)]<>'\' then
   mpasta:=mpasta+'\';
if Tab_Origem.Active  then Tab_Origem.Close;
if tab_destino.Active then tab_destino.Close;
Tab_origem.DatabaseName   :=mpasta;
Qr_TestaChave.DatabaseName:=mpasta;
if Tb_DadExp.Active then  Tb_DadExp.Close;
Tb_DadExp.DatabaseName:=mpasta;
Tb_DadExp.TableName:='CADEXPDAD_'+FormatFloat('00000', mLotEnv);
Tb_DadExp.Open;

if cb_Cadpro.Checked then
   begin
//   la_Empresas:=fBuscaEmpresa(Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'PDCODEMP');
   la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
   mTabExp:='CADPRO';
   if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
      mTabLid:=mTabLid+1;
//   la_Empresas:=fBuscaEmpresa(Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CMCODEMP');
   la_Empresas:=fEmpresas_Selecionadas('CADMPRO','CMCODEMP',Form_SelEmp.CLB_EMPRESAS);
   mTabExp:='CADMPRO';
   if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
      mTabLid:=mTabLid+1;
//   la_Empresas:=fBuscaEmpresa(Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'GPCODEMP');
   la_Empresas:=fEmpresas_Selecionadas('CADGPRO','GPCODEMP',Form_SelEmp.CLB_EMPRESAS);
   mTabExp:='CADGPRO';
   if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
      mTabLid:=mTabLid+1;
   end;

if cb_cadfor.Checked then
   begin
//   la_Empresas:=fBuscaEmpresa(Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'FCODEMP');
   la_Empresas:=fEmpresas_Selecionadas('CADFOR','FCODEMP',Form_SelEmp.CLB_EMPRESAS);
   mTabExp:='CADFOR';
   if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
      mTabLid:=mTabLid+1;
   end;

if cb_cadgru.Checked then
   begin
//   la_Empresas:=fBuscaEmpresa(Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'GRCODEMP');
   la_Empresas:=fEmpresas_Selecionadas('CADGRU','GRCODEMP',Form_SelEmp.CLB_EMPRESAS);
   mTabExp:='CADGRU';
   if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
      mTabLid:=mTabLid+1;
   end;

zip.AddPath:=mpasta;
zip.filename :=mpasta+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP';
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select EXP_PASTA,EXP_TABGER from cadexpdad '
                  +' where EXP_LOTE=0'+IntToStr(mlotEnv)
                  +' and  not exp_tabger is null ');
DM1.Query2.Open;
While not DM1.Query2.Eof do
   begin
   if trim(DM1.Query2.fieldbyName('EXP_TABGER').AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   zip.FileSpecList.Add(mpasta+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.*');
   DM1.Query2.Next;
   end;
zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
zip.add;            //DO IT HERE!!!
zip.ZipComment := 'EXPORTACAO_DADOS';
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   if trim(DM1.Query2.fieldbyName('EXP_TABGER').AsString)='' then
      begin
      DM1.Query2.Next;
      Continue;
      end;
   DeleteFile(mpasta+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.db');
   DeleteFile(mpasta+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.mb');
   DM1.Query2.Next;
   end;
Panel1.Visible:=false;

messagedlg('Arquivo Gerado: '+mpasta+'EXP_LT'+FormatFloat('00000',mlotEnv)+'.ZIP',mtInformation,[mbOk],0);

end;

procedure TFrm_ImpCad.FormCreate(Sender: TObject);
begin
zip := TZip.create(self);

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

Application.CreateForm(TFrm_Stru, Frm_Stru);

end;

function TFrm_ImpCad.fExpMovLog(pTipo: Integer): Boolean;
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADIMPDAD ('
                  +' IMP_CODEMP_ORI '
                  +',IMP_TIPO '
                  +',IMP_LOTE '
                  +',IMP_EMPRESA '
                  +',IMP_TABIMP '
                  +',IMP_TABGER '
                  +',IMP_QTDREG '
                  +',IMP_PASTA '
                  +',IMP_ORIGEM '
                  +',IMP_DATA ) values ('
                  +IntToStr(codemp)
                  +','+'1'
                  +','+IntTostr(mlotEnv)
                  +','+chr(39)+mEmpresas+chr(39)
                  +','+chr(39)+mTabExp+chr(39)
                  +','+chr(39)+mTabGer+chr(39)
                  +','+IntTostr(mQtdReg)
                  +','+chr(39)+mpasta+chr(39)
                  +',0' // origem
                  +','+chr(39)+FormatDatetime(fdt, Date)+chr(39)
                  +')');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   result:=true;
except
   ex_erroSql(01,493,'Frm_ExpMov','CADIMPDAD');
   result:=false;
   end;

mTabLid:=mTabLid+1;
Gauge2.Progress:=mTabLid*100 div mTotTab;
verteclado(0);
end;

function TFrm_ImpCad.fCarregarTabela(pTabela: String): Boolean;
var
x: Integer;
begin
result:=true;
Tab_origem.Close;
Tab_origem.TableName:=pTabela+'_'+FormatFloat('00000',mlotEnv);
mTabGer         :=pTabela+'_'+FormatFloat('00000',mlotEnv);
if FileExists(mpasta+mTabGer) then
   begin
   if not DeleteFile(mpasta+mTabGer) then
      begin
      MessageDlg('Não Foi Possível excluir o arquivo anterior!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
Tab_origem.FieldDefs.Clear;
for x:=0 to DM1.Query1.FieldCount-1 do
    begin
    Tab_origem.FieldDefs.Add(DM1.Query1.Fields[x].FieldName,DM1.Query1.fields[x].DataType,DM1.Query1.fields[x].Size,false);
    end;
Tab_origem.CreateTable;
Tab_origem.Open;
While not DM1.Query1.Eof do
   begin
   mQtdReg:=mQtdReg+1;
   Gauge1.Progress:=mQtdReg*100 div mTotReg;
   Tab_origem.Append;
   for x:=0 to DM1.Query1.FieldCount-1 do
      begin
      Tab_origem.FieldByName(DM1.Query1.Fields[x].FieldName).Value:=DM1.Query1.fields[x].Value;
      end;
   Tab_origem.Post;
   DM1.Query1.Next;
   end;
Tab_origem.Close;
if mQtdReg=0 then
   mTabGer:='';
end;
function TFrm_ImpCad.fDeletaDados(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
begin
if pCampo='99999' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Delete from '+pTabela
                     +iif(pempresa='','',' where  '+pEmpresa));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,1747,'Frm_ExpMov',pTabela);
      end;
   end
else if pcampo<>'88888' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Delete from '+pTabela
                     +' where  '+pCampo+'=0'+IntToStr(plote)
                     +iif(pempresa='','',' and '+pEmpresa));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,1747,'Frm_ExpMov',pTabela);
      end;
   end;

result:=true;
end;

function TFrm_ImpCad.ftestaArq(pNome: String): Boolean;
var
mLote: Integer;

begin
if not FileExists(pNome) then
   begin
   result:=false;
   exit;
   end;
mpasta:=copy(pNome,1,length(pnome)-18);
mlote:=valint(copy(pNome,length(pnome)-8,5));
LOTE.text:=IntToStr(mlote);
zip.filename := Pnome;
if zip.ZipComment <> 'EXPORTACAO_DADOS' then
   result:=false
else
   result:=true;
end;



procedure TFrm_ImpCad.PASTAExit(Sender: TObject);
begin
if not ftestaArq(PASTA.Text) then
   begin
   MessageDlg('Este não é um arquivo válido!',mtWarning,[mbOk],0);
   end;

end;
function TFrm_ImpCad.fBuscaEmpresa(pEmpresa,PCampo: String): String;
var
mResult: String;
mLid,mTam: Integer;
begin
mResult:='';
mTam:=length(pEmpresa);
mlid:=1;
mcinst:=' (';
While mlid<mtam do
   begin
   mResult:=mResult+mcinst+' '+PCampo+'=0'+copy(pEmpresa,mlid,5);
   mlid:=mlid+6;
   mcinst:=' or ';
   end;
if mtam>0 then
   mresult:=mresult+')';
result:=mResult;

end;

function TFrm_ImpCad.fTestaArquivo(PTabela: String;pLote:Integer): Boolean;
begin
if FileExists(mpasta+ptabela+'_'+FormatFloat('00000',pLote)+'.db') then
   result:=true
else
   result:=false;
end;

function TFrm_ImpCad.fMigrarDados(PTabela,pCampo,pChaveSeq,PCamEmp,PNomPar: String; pLote:Integer): Boolean;

var
x: Integer;
begin
if fTestaArquivo(mTabExp,pLote) then
   begin
   fDeletaDados(mTabExp,la_Empresas,pCampo,pLote);
   if Tab_Origem.Active then  Tab_Origem.Close;
   Tab_Origem.TableName:=pTabela+'_'+Formatfloat('00000',pLote);
   Tab_Origem.Open;
   if trim(pChaveSeq)<>'' then
      fAjustarSeqDoc(pTabela,pCampo,PCamEmp,PNomPar,pChaveSeq,plote);
   if tab_destino.Active then tab_destino.close;
   tab_destino.TableName:=pTabela;
   tab_destino.open;
   mQtdReg:=tab_destino.RecordCount;
   BatchMove1.Mappings.Clear;
   for x:=0 to Tab_Origem.FieldCount - 1 do
      begin
      BatchMove1.Mappings.Add(Tab_Origem.fields[x].FieldName+'='+Tab_Origem.fields[x].FieldName);
      end;
   BatchMove1.Execute;
   Frm_Stru.marqsol:=PTabela;

   Frm_Stru.verificar(2);

   fExpMovLog(0);
   tab_destino.Close;
   tab_origem.Close;
   result:=true;
   end
else
   result:=false;
end;

function TFrm_ImpCad.fAjustarSeqDoc(PTabela,pCampo,pCamEmp,pNomPar,pChaveSeq: String; pLote:Integer): Boolean;
var
mcodemp_ant: Integer;
mcodreg: Real;
mAjusta: Boolean;
mNomeTab: String;
begin
mNomeTab:=pTabela+'_'+Formatfloat('00000',pLote);
mAjusta:=False;
Qr_TestaChave.Close;
Qr_TestaChave.SQL.Clear;
Qr_TestaChave.SQL.Add('Select max('+pChaveSeq+'),'+pCamEmp
                     +' from '+mNomeTab
                     +' Group by '+pCamEmp);
Qr_TestaChave.Open;
mcodemp_ant:=codemp;
While not Qr_TestaChave.Eof do
   begin
   codemp:=Qr_TestaChave.Fields[1].AsInteger;
   if flcadpar01(0,0,'1') then
      begin
      if DM4.Tb_par01.FieldByName(pNomPar).AsInteger>Qr_TestaChave.fields[0].AsInteger then
         mAjusta:=true;
      end;
   Qr_TestaChave.Next;
   end;
Qr_TestaChave.Close;
if mAjusta then
   begin
   Tab_Origem.First;
   While not Tab_Origem.Eof do
      begin
      Tab_Origem.Edit;
      codemp:=Tab_Origem.fieldbyName(pCamEmp).AsInteger;
      if PTabela='CADCHQ' then
         begin
         mcodreg:=fbuscacodigoChqCli(0);
         end
      else if PTabela='CADCHCP' then
         begin
         mcodreg:=fbuscacodigoChq_pe(0);
         end
      else if pTabela='FPCR' then
         begin
         mcodreg:=fbuscacodigofpcr(0);
         end
      else if pTabela='FPCRDUP' then
         begin
         mcodreg:=fbuscacodigofpcrdup(0);
         end
      else if pTabela='FPCP' then
         begin
         mcodreg:=fbuscacodigofpcp(0);
         end
      else if pTabela='FPCPDUP' then
         begin
         mcodreg:=fbuscacodigofpcpdup(0);
         end
      else if pTabela='CADLDR' then
         begin
         mcodreg:=fbuscacodigoldr(0);
         end;
      Tab_Origem.fieldbyName(pChaveSeq).value:=mcodreg;
      Tab_Origem.Post;
      Tab_Origem.Next
      end;
   end;
codemp:=mcodemp_ant;
result:=true;
end;


procedure TFrm_ImpCad.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
frm_stru.free;

end;

procedure TFrm_ImpCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ImpCad.FormKeyDown(Sender: TObject; var Key: Word;
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
