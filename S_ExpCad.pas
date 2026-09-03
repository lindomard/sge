unit S_ExpCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_DefBac, Gauges,S_DM1,Db,DbTables,func,
  ZIP, S_SelEmp;

type
  TFrm_ExpCad = class(TForm)
    rg_tpExp: TRadioGroup;
    lbl_lote: TLabel;
    LOTE: TEdit;
    GroupBox1: TGroupBox;
    cb_Cadpro: TCheckBox;
    cb_cadfor: TCheckBox;
    bbexportar: TBitBtn;
    bbSair: TBitBtn;
    Rg_Destino: TRadioGroup;
    lbl_pasta: TLabel;
    PASTA: TEdit;
    SB01: TSpeedButton;
    Table1: TTable;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    GroupBox3: TGroupBox;
    Gauge2: TGauge;
    cb_cadgru: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure bbexportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Rg_DestinoClick(Sender: TObject);
    procedure rg_tpExpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    path: string;
    zip: TZip;

    { Private declarations }
    function fExpMovLog(pTipo: Integer): Boolean;
    function fCarregarTabela(pTabela: String): Boolean;
    function fUpdateTabela(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ExpCad: TFrm_ExpCad;
  mlotEnv: Integer;
  mEmpresas: String;
  mTabExp, mTabGer: String;
  mQtdReg: Integer;
  mpasta: String;
  mTotTab: Integer;
  mTabLid: Integer;
  mTotReg: Integer;
  mRegLid: Integer;
implementation

uses S_DM2, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_ExpCad.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpCad.SB01Click(Sender: TObject);
begin
testeform := TFrm_ExpCad(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   PASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_ExpCad.bbexportarClick(Sender: TObject);
var
x: Integer;
begin
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
if rg_tpExp.ItemIndex=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('SELECT MAX(EXP_LOTE) FROM CADEXPDAD ');
   DM1.Query1.Open;
   mlotEnv:=DM1.Query1.Fields[0].AsInteger+1;
   LOTE.Text:=InttoStr(mlotEnv);
   end;
if ValInt(LOTE.Text)<=0 then
   begin
   LOTE.Text:='';
   mlotEnv  :=0;
   end
else
   begin
   mlotEnv:=ValInt(LOTE.Text);
   end;
if mTotTab<1 then
   begin
   MessageDlg('Para Efetuar a Exportação é preciso selecionar pelo menos uma tabela!',mtWarning,[mbOk],0);
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from cadexpdad '
                  +' where EXP_LOTE=0'+IntToStr(mlotEnv));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,163,'Frm_ExpMov','CADEXPDAD');
   end;

Panel1.Visible:=true;
mEmpresas:='';
mcinst:='';
{for x:=0 to high(ce_codempati) do
   begin
   mEmpresas:=mEmpresas+mcinst+ce_codempati[x];
   mcinst:='/';
   end;}
if trim(mEmpresas)='' then
   begin
   flcademp(1,0,'');
   mcinst:='';
   While not DM2.Tb_Emp.Eof do
      begin
      mEmpresas:=mEmpresas+mcinst+DM2.Tb_EmpCODEMP.AsString;
      mcinst:='/';
      DM2.Tb_Emp.Next;
      end;
   end;

if Rg_Destino.ItemIndex=1 then
   begin
   mpasta:=PASTA.Text;
   if not DirectoryExists(mpasta) then
      begin
      MessageDlg('Favor Selecionar uma Pasta Válida!',mtWarning,[mbOk],0);
      PASTA.SetFocus;
      exit;
      end;
   end
else
   begin
   mpasta:='C:\SGE\TEMP\';
   if not DirectoryExists('C:\SGE') then
      CreateDir('C:\SGE');
   mpasta:='C:\SGE\TEMP\';
   if not DirectoryExists(mpasta) then
      CreateDir(mpasta);
   end;
if mpasta[length(mpasta)]<>'\' then
   mpasta:=mpasta+'\';
if Table1.Active then Table1.Close;
Table1.DatabaseName:=mpasta;

if cb_Cadpro.Checked then
   begin
   mTabExp:='CADPRO';
   mTabGer:='';
   mQtdReg:=0;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('Select * from CADPRO '
                     +iif(la_Empresas='','',' where ')+la_Empresas);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
// contagem do registro
      DM1.Query3.Close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.Add('Select count(*) from CADPRO '
                        +iif(la_Empresas='','',' where ')+la_Empresas);
      DM1.Query3.Open;
      mTotReg:=DM1.Query3.Fields[0].AsInteger;
      mRegLid:=0;
// fim da contagem
      if not fCarregarTabela('CADPRO') then
         exit;
      end;
   fExpMovLog(0);

// CADMPRO        mascara dos produtos
   mTabExp:='CADMPRO';
   mTabGer:='';
   mQtdReg:=0;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADMPRO','CMCODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('Select * from CADMPRO '
                     +iif(la_Empresas='','',' where ')+la_Empresas);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
// contagem do registro
      DM1.Query3.Close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.Add('Select count(*) from CADMPRO '
                        +iif(la_Empresas='','',' where ')+la_Empresas);
      DM1.Query3.Open;
      mTotReg:=DM1.Query3.Fields[0].AsInteger;
      mRegLid:=0;
// fim da contagem
      if not fCarregarTabela('CADMPRO') then
         exit;
      end;
   fExpMovLog(0);

// CADGPRO        mascara dos produtos
   mTabExp:='CADGPRO';
   mTabGer:='';
   mQtdReg:=0;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADPRO','GPCODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('Select * from CADGPRO '
                     +iif(la_Empresas='','',' where ')+la_Empresas);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
// contagem do registro
      DM1.Query3.Close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.Add('Select count(*) from CADGPRO '
                        +iif(la_Empresas='','',' where ')+la_Empresas);
      DM1.Query3.Open;
      mTotReg:=DM1.Query3.Fields[0].AsInteger;
      mRegLid:=0;
// fim da contagem
      if not fCarregarTabela('CADGPRO') then
         exit;
      end;
   fExpMovLog(0);
   end;
// TABELA DE FORNECEDORES
if cb_cadfor.Checked then
   begin
   mTabExp:='CADFOR';
   mTabGer:='';
   mQtdReg:=0;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADFOR','FCODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('Select * from CADFOR '
                     +iif(la_Empresas='','',' where ')+la_Empresas);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
// contagem do registro
      DM1.Query3.Close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.Add('Select count(*) from CADFOR '
                        +iif(la_Empresas='','',' where ')+la_Empresas);
      DM1.Query3.Open;
      mTotReg:=DM1.Query3.Fields[0].AsInteger;
      mRegLid:=0;
// fim da contagem
      if not fCarregarTabela('CADFOR') then
         exit;
      end;
   fExpMovLog(0);

   end;


// TABELA DE GRUPOS DE PRODUTOS
if cb_cadgru.Checked then
   begin
   mTabExp:='CADGRU';
   mTabGer:='';
   mQtdReg:=0;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';

   la_Empresas:=fEmpresas_Selecionadas('CADGRU','GRCODEMP',Form_SelEmp.CLB_EMPRESAS);

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.SQL.Add('Select * from CADGRU '
                     +iif(la_Empresas='','',' where ')+la_Empresas);
   DM1.Query1.Open;
   if not DM1.Query1.Eof then
      begin
// contagem do registro
      DM1.Query3.Close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.SQL.Add('Select count(*) from CADGRU '
                        +iif(la_Empresas='','',' where ')+la_Empresas);
      DM1.Query3.Open;
      mTotReg:=DM1.Query3.Fields[0].AsInteger;
      mRegLid:=0;
// fim da contagem
      if not fCarregarTabela('CADGRU') then
         exit;
      end;
   fExpMovLog(0);

   end;





// resumo das tabelas envidadas
// tabela de Reduçoes Z
mTabExp:='CADEXPDAD';
mTabGer:='';
mQtdReg:=0;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=' EXP_CODEMP_ORI=0'+IntToStr(codemp);
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQL.Add('Select * from CADEXPDAD where '+la_Empresas
                  +iif(la_Empresas='','',' and ') );
DM1.Query1.SQL.Add('EXP_LOTE=0'+IntToStr(mlotEnv));
DM1.Query1.Open;
if not DM1.Query1.Eof then
   begin
// contagem do registro
   DM1.Query3.Close;
   DM1.Query3.Sql.Clear;
   DM1.Query3.SQL.Add('Select count(*) from CADEXPDAD where '+la_Empresas
   +iif(la_Empresas='','',' and ') );
   DM1.Query3.SQL.Add('EXP_LOTE=0'+IntToStr(mlotEnv));
   DM1.Query3.Open;
   mTotReg:=DM1.Query3.Fields[0].AsInteger;
   mRegLid:=0;
// fim da contagem
   if not fCarregarTabela('CADEXPDAD') then
      exit;
   end;
Table1.Close;
// fim dos resumos das tabelas enviadas

zip.AddPath:=mpasta;
zip.filename :=mpasta+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP';
zip.Password :='BKPDADOS';

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
zip.FileSpecList.Add(mpasta+'CADEXPDAD_'+FormatFloat('00000',mlotEnv)+'.*');
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
deletefile(mpasta+'CADEXPDAD_'+FormatFloat('00000',mlotEnv)+'.db');
deletefile(mpasta+'CADEXPDAD_'+FormatFloat('00000',mlotEnv)+'.mb');
Panel1.Visible:=false;

messagedlg('Arquivo Gerado: '+mpasta+'EXP_LT'+FormatFloat('00000',mlotEnv)+'.ZIP',mtInformation,[mbOk],0);

end;

procedure TFrm_ExpCad.FormCreate(Sender: TObject);
begin
zip := TZip.create(self);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_ExpCad.Rg_DestinoClick(Sender: TObject);
begin
if Rg_Destino.ItemIndex=1 then
   begin
   lbl_pasta.Visible:=true;
   PASTA.Visible    :=true;
   end
else if Rg_Destino.ItemIndex=2 then
   begin
   lbl_pasta.Visible:=false;
   PASTA.Visible    :=false;
   end
else
   begin
   lbl_pasta.Visible:=false;
   PASTA.Visible    :=false;
   end;
end;


function TFrm_ExpCad.fExpMovLog(pTipo: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Insert into CADEXPDAD ('
                  +' EXP_CODEMP_ORI '
                  +',EXP_TIPO '
                  +',EXP_LOTE '
                  +',EXP_EMPRESA '
                  +',EXP_TABEXP '
                  +',EXP_TABGER '
                  +',EXP_QTDREG '
                  +',EXP_DESTINF '
                  +',EXP_PASTA '
                  +',EXP_DATA ) values ('
                  +IntToStr(codemp)
                  +','+'2'
                  +','+IntTostr(mlotEnv)
                  +','+chr(39)+mEmpresas+chr(39)
                  +','+chr(39)+mTabExp+chr(39)
                  +','+chr(39)+mTabGer+chr(39)
                  +','+IntTostr(mQtdReg)
                  +','+IntToStr(Rg_Destino.ItemIndex)
                  +','+chr(39)+mpasta+chr(39)
                  +','+chr(39)+FormatDatetime(fdt, Date)+chr(39)
                  +')');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
   result:=true;
except
   ex_erroSql(01,201,'Frm_ExpMov','CADEXPDAD');
   result:=false;
   end;
mTabLid:=mTabLid+1;
Gauge2.Progress:=mTabLid*100 div mTotTab;
verteclado(0);
end;

function TFrm_ExpCad.fCarregarTabela(pTabela: String): Boolean;
var
x: Integer;
begin
result:=true;
Table1.Close;
Table1.TableName:=pTabela+'_'+FormatFloat('00000',mlotEnv);
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
Table1.FieldDefs.Clear;
for x:=0 to DM1.Query1.FieldCount-1 do
    begin
    Table1.FieldDefs.Add(DM1.Query1.Fields[x].FieldName,DM1.Query1.fields[x].DataType,DM1.Query1.fields[x].Size,false);
    end;
Table1.CreateTable;
Table1.Open;
While not DM1.Query1.Eof do
   begin
   mQtdReg:=mQtdReg+1;
   Gauge1.Progress:=mQtdReg*100 div mTotReg;
   Table1.Append;
   for x:=0 to DM1.Query1.FieldCount-1 do
      begin
      Table1.FieldByName(DM1.Query1.Fields[x].FieldName).Value:=DM1.Query1.fields[x].Value;
      end;
   Table1.Post;
   DM1.Query1.Next;
   end;
Table1.Close;
if mQtdReg=0 then
   mTabGer:='';
end;
function TFrm_ExpCad.fUpdateTabela(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update '+pTabela
                  +' set '+pCampo+'=0'+IntToStr(plote)
                  +' where '+iif(pempresa='','',pEmpresa+' and ')
                  +'('+pCampo+' is null or '+pcampo+'=0)');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1747,'Frm_ExpMov',pTabela);
   end;
result:=true;
end;


procedure TFrm_ExpCad.rg_tpExpClick(Sender: TObject);
begin
if rg_tpExp.ItemIndex=0 then
   begin
   lbl_lote.Visible:=false;
   LOTE.Visible    :=false;
   end
else
   begin
   lbl_lote.Visible:=true;
   LOTE.Visible    :=true;
   end;
end;

procedure TFrm_ExpCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_ExpCad.FormKeyDown(Sender: TObject; var Key: Word;
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
