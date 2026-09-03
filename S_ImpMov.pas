unit S_ImpMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_DefBac, Gauges,S_DM1,Db,DbTables,func,
  ZIP,S_DM4,func2, ComCtrls,S_ImpMov_Importados,S_ExpMov_Exportados, Grids, S_SelEmp;

type
  TFrm_ImpMov = class(TForm)
    bbImportar: TBitBtn;
    bbSair: TBitBtn;
    lbl_pasta: TLabel;
    NOMARQ: TEdit;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cb_ajuste: TCheckBox;
    cb_balanco: TCheckBox;
    cb_cadchq: TCheckBox;
    cb_cheques_cp: TCheckBox;
    cb_CadCli: TCheckBox;
    cb_dupRec: TCheckBox;
    cb_dupPag: TCheckBox;
    CB_CADEST: TCheckBox;
    cb_caixa: TCheckBox;
    CB_CADNE: TCheckBox;
    CB_CADNS: TCheckBox;
    cb_PedCompras: TCheckBox;
    cb_pedVendas: TCheckBox;
    cb_cadmi01: TCheckBox;
    TabSheet2: TTabSheet;
    cb_Cadpro: TCheckBox;
    cb_cadfor: TCheckBox;
    cb_cadgru: TCheckBox;
    Rg_Destino: TRadioGroup;
    lbl_endip: TLabel;
    ENDIP: TEdit;
    bbImpExistente: TBitBtn;
    bbExpExistentes: TBitBtn;
    TabSheet3: TTabSheet;
    STG_PED: TStringGrid;
    BM_Inclui_Altera: TBatchMove;
    CB_ACREM: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure bbImportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NOMARQExit(Sender: TObject);
    procedure Rg_DestinoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbImpExistenteClick(Sender: TObject);
    procedure bbExpExistentesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    path: string;
    zip: TZip;

    { Private declarations }
    function fCarregarTabela(pTabela: String): Boolean;

  public
    { Public declarations }

   end;


    function fImportar(pOrigem: Integer; pPasta, pNomArq: String): Boolean;
    function fBuscaEmpresa(pEmpresa,PCampo: String): String;
    function fMigrarDados(PTabela,pCampo,pChaveSeq,PCamEmp,PNomPar: String; pLote:Integer): Boolean;
    function fIncluirParcial(PTabela,pCampo,pChaveSeq,PCamEmp,PNomPar: String; pLote:Integer): Boolean;

    function fTestaArquivo(PTabela: String; pLote:Integer): Boolean;
    function fDeletaDados(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
  //  function fAjustarSeqDoc(PTabela,pCampo,pCamEmp,pNomPar,pChaveSeq: String; pLote:Integer): Boolean;
    function fExpMovLog(pTipo: Integer): Boolean;
    function fImpMovEnviaSol(ptipo: Integer): Boolean;
    function fImpMovCad_Mov(ptipo: Integer; pCad, pMov:Boolean): Boolean;
    function ftestaArq(pNome: String): Boolean;
    function finserirdados(pTabela: String): boolean;
    function finserirdados_Paradox_Oracle(pTabela: String): boolean;
    function fIncluirAlterar(pTabela: String): boolean;



var
  Frm_ImpMov: TFrm_ImpMov;
  Form_SelEmp: TFrm_SelEmp;
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
  mImpMov_Origem: Integer=0;
  mTruncar: Boolean=true;
  mTabNova: String;
implementation

uses S_DM2, lerarq, func_excecoes, S_Server_Transf, S_ExpMov, S_Agde,
  S_Stru, S_Pfor01, flerarq;

{$R *.dfm}

procedure TFrm_ImpMov.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpMov.SB01Click(Sender: TObject);
begin
if OpenDialog1.Execute then
   begin
   NOMARQ.Text:=OpenDialog1.FileName;
   if not ftestaArq(NOMARQ.Text) then
      begin
      MessageDlg('Este não é um arquivo válido!',mtWarning,[mbOk],0);
      end;
   end;

end;

procedure TFrm_ImpMov.bbImportarClick(Sender: TObject);
var
x: Integer;
begin
bbImportar.Enabled:=false;
if Rg_Destino.ItemIndex=2 then
   begin
   fImpMovEnviaSol(0);
   bbImportar.Enabled:=true;
   end
else
   begin
   if not ftestaArq(NOMARQ.Text) then
      begin
      MessageDlg('Favor Selecionar um arquivo válido!',mtWarning,[mbOk],0);
      bbImportar.Enabled:=true;
      exit;
      end;
   if mpasta[length(mpasta)]<>'\' then
      mpasta:=mpasta+'\';
   fHabDes_trigger(1,'');
   fImportar(0,mpasta,NOMARQ.Text);
   bbImportar.Enabled:=true;
   fHabDes_trigger(0,'');
   end;
end;

procedure TFrm_ImpMov.FormCreate(Sender: TObject);
begin
zip := TZip.create(self);
Application.CreateForm(TFrm_Stru, Frm_Stru);
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if not DirectoryExists('C:\SGE') then
   CreateDir('C:\SGE');
if not DirectoryExists('C:\SGE\ENVIAR') then
   CreateDir('C:\SGE\ENVIAR');
if not DirectoryExists('C:\SGE\RECEBE') then
   CreateDir('C:\SGE\RECEBE');
mPastaRec:='C:\SGE\RECEBE\';
if mImpMov_Origem=0 then
   begin
   Rg_Destino.Visible  :=false;
   lbl_endip.Visible   :=false;
   ENDIP.Visible       :=false;
   TabSheet2.TabVisible:=false;
   TabSheet3.TabVisible:=false;
   fImpMovCad_Mov(0,false,true);
   Frm_ImpMov.Caption:='Importacao dos Movimentos';
   end
else if mImpMov_Origem=1 then
   begin
   TabSheet1.TabVisible:=false;
   TabSheet3.TabVisible:=false;
   fImpMovCad_Mov(0,true,false);
   Rg_Destino.Visible   :=true;
   lbl_endip.Visible    :=false;
   ENDIP.Visible        :=false;
   Frm_ImpMov.Caption:='Importacao dos Cadastros';
   end
else if mImpMov_Origem=2 then
   begin
   TabSheet1.TabVisible:=false;
   TabSheet2.TabVisible:=false;
   fImpMovCad_Mov(0,true,false);
   Rg_Destino.Visible   :=true;
   lbl_endip.Visible    :=false;
   ENDIP.Visible        :=false;
   STG_PED.Visible      :=true;
   STG_PED.RowCount:=2;
   STG_PED.Cells[00,00]:='Chave';
   STG_PED.Cells[01,00]:='Dt.Emissão';
   STG_PED.Cells[02,00]:='Razão Social';
   STG_PED.Cells[03,00]:='Valor';
   STG_PED.Cells[04,00]:='Chave Entrada';
   Frm_ImpMov.Caption:='Importacao de Pedidos';
   end;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_IMPMOV','ENDIP']),[]) then
   ENDIP.Text:=DM4.Tb_FilPadFPVALOR.Value
else
   ENDIP.Text:='201.34.216.45';

end;

function fExpMovLog(pTipo: Integer): Boolean;
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
   ex_erroSql(01,236,'Frm_ImpMov','CADIMPDAD');
   result:=false;
   end;

mTabLid:=mTabLid+1;
Frm_ImpMov.Gauge2.Progress:=mTabLid*100 div mTotTab;
if mOrigem_Chamada=2 then
   Frm_Server_Transf.Gauge1.Progress:=mTabLid*100 div mTotTab;
verteclado(0);
end;

function TFrm_ImpMov.fCarregarTabela(pTabela: String): Boolean;
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
function fDeletaDados(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
begin
if pCampo='99999' then
   begin
   mTabNova:=fProcTemp(3);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Create Table '+mTabNova+' as Select * from '+pTabela );

   if trim(pEmpresa)<>'' then
      DM1.Query1.SQL.add(' where not ('+pEmpresa+')');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('truncate table  '+pTabela);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert into '+pTabela+' Select * from '+mTabNova );
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('drop table  '+mTabNova);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;




{
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Delete from '+pTabela
                     +iif(pempresa='','',' where  '+pEmpresa));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;
}
   end
else if pCampo='77777' then
   begin
   if mTruncar then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('truncate table '+pTabela);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,325,'Frm_ImpMov',pTabela);
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Delete from '+pTabela
                        +iif(pempresa='','',' where  '+pEmpresa));
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,298,'Frm_ImpMov',pTabela);
         end;
      end;
   end
else if (pcampo<>'88888') then
   begin

   mTabNova:=fProcTemp(3);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Create Table '+mTabNova+' as Select * From '+pTabela );
   if trim(pEmpresa)<>'' then
      DM1.Query1.SQL.add(' where not ('+pEmpresa+' and '+pCampo+'=0'+IntTostr(pLote)+')')
   else
      DM1.Query1.SQL.add(' where not ('+pCampo+'=0'+IntTostr(pLote)+')');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('truncate table  '+pTabela);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Insert into '+pTabela+' Select * from '+mTabNova );
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('drop table  '+mTabNova);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,298,'Frm_ImpMov',pTabela);
      end;



{
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Delete from '+pTabela
                     +' where  '+pCampo+'=0'+IntToStr(plote)
                     +iif(pempresa='','',' and '+pEmpresa));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,312,'Frm_ImpMov',pTabela);
      end;
}
   end;

result:=true;
end;

function ftestaArq(pNome: String): Boolean;
var
mLote: Integer;

begin
if not FileExists(pNome) then
   begin
   result:=false;
   exit;
   end;
if uppercase(copy(pnome,1,2))='A:' then
   mpasta:='C:\SGE'
else
   mpasta:=copy(pNome,1,length(pnome)-18);
mlote:=valint(copy(pNome,length(pnome)-8,5));
Frm_ImpMov.LOTE.text:=IntToStr(mlote);
Frm_ImpMov.zip.filename := Pnome;
if mImpMov_Origem=0 then
   begin
   if (Frm_ImpMov.zip.ZipComment <> 'EXPORTACAO')  then
      result:=false
   else
      result:=true;
   end
else if mImpMov_Origem=1 then
   begin
   if (Frm_ImpMov.zip.ZipComment <> 'EXPORTACAO_DADOS') then
      result:=false
   else
      result:=true;
   end
else
   begin
   if (Frm_ImpMov.zip.ZipComment <> 'EXPORTACAO_PED') then
      result:=false
   else
      result:=true;
   end;

end;



procedure TFrm_ImpMov.NOMARQExit(Sender: TObject);
begin
if not ftestaArq(NOMARQ.Text) then
   begin
   MessageDlg('Este não é um arquivo válido!',mtWarning,[mbOk],0);
   end;

end;
function fBuscaEmpresa(pEmpresa,PCampo: String): String;
var
mResult: String;
mLid,mTam: Integer;
begin
mResult:='';
mTam:=length(pEmpresa);
mlid:=0;
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

function fTestaArquivo(PTabela: String;pLote:Integer): Boolean;
begin
if FileExists(mpasta+ptabela+'_'+FormatFloat('00000',pLote)+'.db') then
   result:=true
else
   result:=false;
end;

function fIncluirParcial(PTabela,pCampo,pChaveSeq,PCamEmp,PNomPar: String; pLote:Integer): Boolean;


var
x: Integer;
begin
if fTestaArquivo(mTabExp,pLote) then
   begin
   if Frm_ImpMov.Tab_Origem.Active then  Frm_ImpMov.Tab_Origem.Close;
   Frm_ImpMov.Tab_Origem.TableName:=pTabela+'_'+Formatfloat('00000',pLote);
   Frm_ImpMov.Tab_Origem.Open;
   if PTabela='CADLGC' then
      begin
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
         begin
         DM1.Query5.Params.CreateParam(ftString,Frm_ImpMov.Tab_Origem.Fields[x].FieldName,ptInput);
         end;
      DM1.Query5.SQL.Add('Insert into CADLGC (');
      mcinst:='';
      for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
         begin
         DM1.Query5.SQL.add(mcinst+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query5.SQL.Add(') Values (');
      mcinst:='';
      for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
         begin
         DM1.Query5.SQL.add(mcinst+':'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
         mcinst:=',';
         end;
      DM1.Query5.SQL.Add(')');

      While not Frm_ImpMov.Tab_Origem.Eof do
         begin
         if Frm_ImpMov.Tab_Origem.FieldByName('CLDTVCTO').IsNull then
            mcinst:=''
         else if Frm_ImpMov.Tab_Origem.FieldByName('CLDTVCTO').AsDateTime<=pdatanula then
            mcinst:=''
         else
            mcinst:=FormatDatetime(fdt,  Frm_ImpMov.Tab_Origem.FieldByName('CLDTVCTO').AsDateTime);
         if not flcadlgc(0,1,0,Frm_ImpMov.Tab_Origem.fieldbyName('CLCODPRO').AsString,
                             Frm_ImpMov.Tab_Origem.fieldbyName('CLNUMERO').AsString,mcinst) then
            begin
            for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
               begin
               DM1.Query5.ParamByName(Frm_ImpMov.Tab_Origem.Fields[x].FieldName).Value:=Frm_ImpMov.Tab_Origem.Fields[x].Value;
               end;
            DM1.Query5.ParamByName('CLCODEMP').AsInteger:=codemp;
            DM1.Query5.ExecSQL;
            end;
         Frm_ImpMov.Tab_Origem.Next;
         end;
      end;
   fExpMovLog(0);
   Frm_ImpMov.tab_destino.Close;
   Frm_ImpMov.tab_origem.Close;
   mcinst:=Frm_ImpMov.Tab_Origem.DatabaseName;
   if mcinst[length(mcinst)]<>'\' then
      mcinst:=mcinst+'\';
   DeleteFile(mcinst+pTabela+'_'+Formatfloat('00000',pLote)+'.db');
   DeleteFile(mcinst+pTabela+'_'+Formatfloat('00000',pLote)+'.mb');
   DeleteFile(mcinst+pTabela+'_'+Formatfloat('00000',pLote)+'.YG0');
   DeleteFile(mcinst+pTabela+'_'+Formatfloat('00000',pLote)+'.XG0');
   DeleteFile(mcinst+pTabela+'_'+Formatfloat('00000',pLote)+'.PX');

   marqsol:=mTabExp;
//   verificar(2);
   result:=true;
   end
else
   result:=false;
end;
function fMigrarDados(PTabela,pCampo,pChaveSeq,PCamEmp,PNomPar: String; pLote:Integer): Boolean;
var
x: Integer;
begin
if fTestaArquivo(mTabExp,pLote) then
   begin
   if (pCampo='77777') and  (PTabela='CADLGC') then
      x:=0
   else
      fDeletaDados(mTabExp,la_Empresas,pCampo,pLote);
   if Frm_ImpMov.Tab_Origem.Active then  Frm_ImpMov.Tab_Origem.Close;
   Frm_ImpMov.Tab_Origem.TableName:=pTabela+'_'+Formatfloat('00000',pLote);
   Frm_ImpMov.Tab_Origem.Open;
   if (pCampo='77777') and  (PTabela='CADLGC') then
      begin
      Frm_ImpMov.Qr_TestaChave.Close;
      Frm_ImpMov.Qr_TestaChave.SQL.Clear;
      Frm_ImpMov.Qr_TestaChave.SQL.Add('Update '+ pTabela+'_'+Formatfloat('00000',pLote)+' set '+PCamEmp+'=0'+IntToStr(codemp));
      Frm_ImpMov.Qr_TestaChave.ExecSQL;
      fdm1StartCommit;
      end
   else if (pCampo='77777') and  ((PTabela='CADPRO') or
      (PTabela='CADMPRO') or
      (PTabela='CADGPRO') or
      (PTabela='CADFOR') or
      (PTabela='CADGRU')) then
      begin
      finserirdados_Paradox_Oracle(pTabela);


//      DM1.SG_ASSOC.StartTransaction;
//      Frm_ImpMov.Qr_TestaChave.Close;
//      Frm_ImpMov.Qr_TestaChave.SQL.Clear;
//      Frm_ImpMov.Qr_TestaChave.SQL.Add('Update '+ pTabela+'_'+Formatfloat('00000',pLote)+' set '+PCamEmp+'=0'+IntToStr(codemp));
//      Frm_ImpMov.Qr_TestaChave.ExecSQL;
//      DM1.SG_ASSOC.Commit;
      end
   else
      begin
{      if trim(pChaveSeq)<>'' then
         fAjustarSeqDoc(pTabela,pCampo,PCamEmp,PNomPar,pChaveSeq,plote);
}      finserirdados_Paradox_Oracle(pTabela);

{
lindomar
      if Frm_ImpMov.tab_destino.Active then Frm_ImpMov.tab_destino.close;
      Frm_ImpMov.tab_destino.TableName:=pTabela;
      Frm_ImpMov.tab_destino.open;
      mQtdReg:=Frm_ImpMov.tab_destino.RecordCount;
}
{   if pcampo='77777' then
      begin
      While not Frm_ImpMov.Tab_Origem.Eof do
         begin
         if (PTabela='CADPRO') then
            begin
            if not Frm_ImpMov.tab_destino.Locate('PDCODEMP;PDCODPRO',
               vararrayof([Frm_ImpMov.Tab_Origem.fieldbyName('PDCODEMP').AsFloat,
                          Frm_ImpMov.Tab_Origem.fieldbyName('PDCODPRO').AsFloat]),[]) then
               begin
               finserirdados(pTabela);
               end;
            end
         else if (PTabela='CADMPRO') then
            begin
            if not Frm_ImpMov.tab_destino.Locate('MPCODEMP;MPCODMAS',
               vararrayof([Frm_ImpMov.Tab_Origem.fieldbyName('MPCODEMP').AsFloat,
               Frm_ImpMov.Tab_Origem.fieldbyName('MPCODMAS').AsString]),[]) then
               begin
               finserirdados(pTabela);
               end;
            end
         else if (PTabela='CADGPRO') then
            begin
            if not Frm_ImpMov.tab_destino.Locate('GPCODEMP;GPCODPRO;GPCODMAS;GPGRADE',
                   vararrayof([Frm_ImpMov.Tab_Origem.fieldbyName('GPCODEMP').AsFloat,
                   Frm_ImpMov.Tab_Origem.fieldbyName('GPCODPRO').AsFloat,
                   Frm_ImpMov.Tab_Origem.fieldbyName('GPCODMAS').AsString,
                   Frm_ImpMov.Tab_Origem.fieldbyName('GPGRADE').AsString]),[]) then
               begin
                   finserirdados(pTabela);
               end;
            end
         else if (PTabela='CADFOR') then
            begin
            if not Frm_ImpMov.tab_destino.Locate('FCODEMP;FCODFOR',
               vararrayof([Frm_ImpMov.Tab_Origem.fieldbyName('FCODEMP').AsFloat
               ,Frm_ImpMov.Tab_Origem.fieldbyName('FCODFOR').AsFloat]),[]) then
               begin
               finserirdados(pTabela);
               end;
            end
         else if (PTabela='CADLGC') then
            begin
            if not Frm_ImpMov.tab_destino.Locate('CLCODEMP;CLCODPRO;CLDTVCTO;CLNUMERO',
               vararrayof([Frm_ImpMov.Tab_Origem.fieldbyName('CLCODEMP').AsFloat
                          ,Frm_ImpMov.Tab_Origem.fieldbyName('CLCODPRO').AsFloat
                          ,Frm_ImpMov.Tab_Origem.fieldbyName('CLDTVCTO').AsDateTime
                          ,Frm_ImpMov.Tab_Origem.fieldbyName('CLNUMERO').AsString]),[]) then
               begin
               finserirdados(pTabela);
               end;
            end
         else if (PTabela='CADGRU') then
            begin
            if not Frm_ImpMov.tab_destino.Locate('GRCODEMP;GRCODGRU',
               vararrayof([Frm_ImpMov.Tab_Origem.fieldbyName('CRCODEMP').AsFloat,
               Frm_ImpMov.Tab_Origem.fieldbyName('CRCODGRU').AsFloat]),[]) then
               begin
               finserirdados(pTabela);
               end;
            end
         else
            MessageDlg('Tabela Desconhecida: '+PTabela,mtWarning,[mbOk],0);
         Frm_ImpMov.Tab_Origem.Next;
         end;
      end
   else

      begin
      }
{      Frm_ImpMov.BatchMove1.Mappings.Clear;
      for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount - 1 do
         begin
         Frm_ImpMov.BatchMove1.Mappings.Add(Frm_ImpMov.Tab_Origem.fields[x].FieldName+'='+Frm_ImpMov.Tab_Origem.fields[x].FieldName);
         end;
      Frm_ImpMov.BatchMove1.Execute;
}
//   end;
   end;
   fExpMovLog(0);
   Frm_ImpMov.tab_destino.Close;
   Frm_ImpMov.tab_origem.Close;
   mcinst:=Frm_ImpMov.Tab_Origem.DatabaseName;
   if mcinst[length(mcinst)]<>'\' then
      mcinst:=mcinst+'\';
   DeleteFile(mcinst+pTabela+'_'+Formatfloat('00000',pLote)+'.db');
   DeleteFile(mcinst+pTabela+'_'+Formatfloat('00000',pLote)+'.mb');
   marqsol:=mTabExp;
//   verificar(2);
   result:=true;
   end
else
   result:=false;
end;


{
function fAjustarSeqDoc(PTabela,pCampo,pCamEmp,pNomPar,pChaveSeq: String; pLote:Integer): Boolean;
var
mcodemp_ant: Integer;
mcodreg: Real;
mAjusta: Boolean;
mNomeTab: String;
begin
mNomeTab:=pTabela+'_'+Formatfloat('00000',pLote);
mAjusta:=False;
Frm_ImpMov.Qr_TestaChave.Close;
Frm_ImpMov.Qr_TestaChave.SQL.Clear;
Frm_ImpMov.Qr_TestaChave.SQL.Add('Select max('+pChaveSeq+'),'+pCamEmp
                     +' from '+mNomeTab
                     +' Group by '+pCamEmp);
Frm_ImpMov.Qr_TestaChave.Open;
mcodemp_ant:=codemp;
While not Frm_ImpMov.Qr_TestaChave.Eof do
   begin
   codemp:=Frm_ImpMov.Qr_TestaChave.Fields[1].AsInteger;
   if flcadpar01(0,0,'1') then
      begin
      if DM4.Tb_par01.FieldByName(pNomPar).AsInteger>Frm_ImpMov.Qr_TestaChave.fields[0].AsInteger then
         mAjusta:=true;
      end;
   Frm_ImpMov.Qr_TestaChave.Next;
   end;
Frm_ImpMov.Qr_TestaChave.Close;
if mAjusta then
   begin
   Frm_ImpMov.Tab_Origem.First;
   While not Frm_ImpMov.Tab_Origem.Eof do
      begin
      Frm_ImpMov.Tab_Origem.Edit;
      codemp:=Frm_ImpMov.Tab_Origem.fieldbyName(pCamEmp).AsInteger;
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
      Frm_ImpMov.Tab_Origem.fieldbyName(pChaveSeq).value:=mcodreg;
      Frm_ImpMov.Tab_Origem.Post;
      Frm_ImpMov.Tab_Origem.Next
      end;
   end;
codemp:=mcodemp_ant;
result:=true;
end;
}
function fImportar(pOrigem: Integer; pPasta, pNomArq: String): Boolean;
var
f: TextFile;
y,x,z,mchave:Integer;
mlinha: String;
begin

Frm_ImpMov.zip.Password :='BKPINTERSYS';
Frm_ImpMov.zip.FileSpecList.add('*.*');
Frm_ImpMov.zip.ExtractOptions := [eoUpdate, eoWithPaths];
Frm_ImpMov.zip.ExtractPath := pPasta;
Frm_ImpMov.zip.Filename    :=  fimpdmtestanome(pNomArq)+'.ZIP';
Frm_ImpMov.zip.Password    :='BKPINTERSYS';

//pNomArq;
//lindomar
//Frm_ImpMov.zip.AddPath:=pPasta;
//Frm_ImpMov.zip.filename :=pPasta+'EXP_LT'+FormatFloat('00000',mlotEnv)+'.ZIP';

if Frm_ImpMov.zip.ExtractErrorCnt > 0 then
   begin
   if pOrigem=0 then
      MessageDlg('Erro: ao tentar descompactar arquivos: '+IntToStr(Frm_ImpMov.zip.ExtractErrorCnt),mtWarning,[mbOk],0)
   else
      fcriarEvento('Erro: ao tentar descompactar arquivos: '+IntToStr(Frm_ImpMov.zip.ExtractErrorCnt),Frm_ImpMov.LOTE.Text);
   result:=false;
   exit;
   end;
Frm_ImpMov.zip.Extract;
//   StatusBar1.SimpleText := format('%d Arquivos Extraidos do arquivo.',[zip.extract]);

if mImpMov_Origem<>2 then
   begin
   mTotTab:=0;
   mTabLid:=0;
   mTotReg:=0;
   mRegLid:=0;
   if Frm_ImpMov.cb_ajuste.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.cb_balanco.Checked then
      mTotTab:=mTotTab+2;
   if Frm_ImpMov.cb_cadchq.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.cb_cheques_cp.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.cb_CadCli.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.cb_dupRec.Checked then
   mTotTab:=mTotTab+3;
   if Frm_ImpMov.cb_dupPag.Checked then
      mTotTab:=mTotTab+3;
   if Frm_ImpMov.CB_CADEST.Checked then
      mTotTab:=mTotTab+2;
   if Frm_ImpMov.cb_caixa.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.CB_CADNE.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.CB_CADNS.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.cb_PedCompras.Checked then
      mTotTab:=mTotTab+3;
   if Frm_ImpMov.cb_pedVendas.Checked then
      mTotTab:=mTotTab+7;
   if Frm_ImpMov.CB_ACREM.Checked then
      mTotTab:=mTotTab+2;
   if Frm_ImpMov.cb_cadmi01.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.cb_Cadpro.Checked then
      mTotTab:=mTotTab+4; // CADPRO,CADMPRO,CADGPRO
   if Frm_ImpMov.cb_cadfor.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ImpMov.cb_cadgru.Checked then
      mTotTab:=mTotTab+1;

   mlotEnv:=ValInt(Frm_ImpMov.LOTE.Text);
   if mTotTab<1 then
      begin
      if pOrigem=0 then
         MessageDlg('Para Efetuar a Importação é preciso selecionar pelo menos uma tabela!',mtWarning,[mbOk],0)
      else
         fcriarEvento('Para Efetuar a Importação é preciso selecionar pelo menos uma tabela!',Frm_ImpMov.LOTE.Text);
      result:=false;
      exit;
      end;
   Frm_ImpMov.Panel1.Visible:=true;
   verteclado(0);
   if Frm_ImpMov.Tab_Origem.Active  then Frm_ImpMov.Tab_Origem.Close;
   if Frm_ImpMov.tab_destino.Active then Frm_ImpMov.tab_destino.Close;
   Frm_ImpMov.Tab_origem.DatabaseName   :=ppasta;
   Frm_ImpMov.Qr_TestaChave.DatabaseName:=ppasta;
   if Frm_ImpMov.Tb_DadExp.Active then  Frm_ImpMov.Tb_DadExp.Close;
   Frm_ImpMov.Tb_DadExp.DatabaseName:=ppasta;
   Frm_ImpMov.Tb_DadExp.TableName:='CADEXPDAD_'+FormatFloat('00000', mLotEnv);
   Frm_ImpMov.Tb_DadExp.Open;
   if Frm_ImpMov.cb_ajuste.Checked then
      begin
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'AJCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
      mTabExp:='CADAJU';
      if not fMigrarDados(mTabExp,'AJLEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

  // tabela de cheques de clientes
   if Frm_ImpMov.cb_cadchq.Checked then
      begin
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CHCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
      mTabExp:='CADCHQ';
      if not fMigrarDados(mTabExp,'CHLEMAT','CHSEQ','CHCODEMP','PCODCHQCLI',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;
  // TABELA DE CHEQUES EMITIDOS

   if Frm_ImpMov.cb_cheques_cp.Checked then
      begin
      mTabExp:='CADCHCP';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CHCODEMP');
//      la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'CHLEMAT','CHSEQ','CHCODEMP','PCODCHQ_PE',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

  // TABELA DE CLIENTES ESSA IRA TODOS OS REGISTROS
   if Frm_ImpMov.cb_CadCli.Checked then
      begin
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
      mTabExp:='CADCLI';
      if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

// tabelas de duplicatas a receber
// essa inclui tambem o fpcr e o fpcrdup

   if Frm_ImpMov.cb_dupRec.Checked then
      begin
      mTabExp:='CADDAR';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CRCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'CRLEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      // ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCR';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'FPCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'FPLEMAT','FPSEQ','FPCODEMP','PCODFPCR',mlotEnv) then
         mTabLid:=mTabLid+1;

   // ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCRDUP';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'FPCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'FPLEMAT','FPSEQ','FPCODEMP','PCFPCRDUP',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

// arquivos de duplicatas a pagar
// essa inclui tambem o fpcr e o fpcrdup

   if Frm_ImpMov.cb_dupPag.Checked then
      begin
      mTabExp:='CADDAP';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CACODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'CALEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;

  // ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCP';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'FPCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'FPLEMAT','FPSEQ','FPCODEMP','PCODFPCP',mlotEnv) then
         mTabLid:=mTabLid+1;


  // ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCPDUP';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'FPCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'FPLEMAT','FPSEQ','FPCODEMP','PCFPCPDUP',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

  // fim das duplicatas a pagar


  // TABELA DE ESTOQUE
  // ESSA Tabela ira o CADEST e o CADLGC E IRA ENVIAR TODOS OS REGISTROS SEM FILTROS DE LOTES
   if Frm_ImpMov.cb_CadEst.Checked then
      begin
      mTabExp:='CADEST';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CECODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADEST','CECODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
   // CADASTRO DE GRADES
      mTabExp:='CADLGC';
      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CLCODEMP');
      if not fMigrarDados(mTabExp,'99999','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

  // TABELA DE LANCAMENTOS DO CAIXA - FLUXO DE CAIXA
   if Frm_ImpMov.cb_caixa.Checked then
      begin
      mTabExp:='CADLDR';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'LEMAT','CODLDR','CODEMP','PCODLDR',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

  // CADASTRO DE NOTAS DE ENTRADAS
   if Frm_ImpMov.CB_CADNE.Checked then
      begin
      mTabExp:='CADNE';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'NECODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADNE','NECODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'NELEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

  // CADASTRO DE NOTAS DE SAIDAS



   if Frm_ImpMov.CB_CADNS.Checked then
      begin
      mTabExp:='CADNS';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'NSCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADNS','NSCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'NSLEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;
   // INICIO DOS PEDIDOS DE COMPRAS

   if Frm_ImpMov.cb_pedCompras.Checked then
      begin
      mTabExp:='CADPF1';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'PF1CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'PF1LEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;

  // TABELA DE PEDIDOS CADPF1V
      mTabExp:='CADPF1V';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'PF1VCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADPF1V','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
         mTabLid:=mTabLid+1;

  // FIM DA TABELA DE PEDIDOS PF1V MERCADORIAS


  // TABELA DE PEDIDOS 02 MERCADORIAS
      mTabExp:='CADPF2';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'PF2CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADPF2','PF2CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
   // FIM DA TABELA DE PEDIDOS 02 MERCADORIAS
      end;




  // FIM DOS PEDIDOS DE COMPRAS



  // tabela de Pedidos de Vendas
   if Frm_ImpMov.cb_pedVendas.Checked then
      begin
      mTabExp:='CADP01';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'P1CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'P1LEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;

  // TABELA DE PEDIDOS 01D
      mTabExp:='CADP01D';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'P1DCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADP01D','P1DCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
         mTabLid:=mTabLid+1;

  // FIM DA TABELA DE PEDIDOS 01D MERCADORIAS



// TABELA DE PEDIDOS 01V
    mTabExp:='CADP01V';
//    la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'P1VCODEMP');
    la_Empresas:=fEmpresas_Selecionadas('CADP01V','P1VCODEMP',Form_SelEmp.CLB_EMPRESAS);
    if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
       mTabLid:=mTabLid+1;


// FIM DA TABELA DE PEDIDOS 01V MERCADORIAS



// TABELA DE PEDIDOS 02 MERCADORIAS
    mTabExp:='CADP02';
//    la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'P2CODEMP');
    la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
    if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
       mTabLid:=mTabLid+1;



// FIM DA TABELA DE PEDIDOS 02 MERCADORIAS


// TABELA DE PEDIDOS 02D
    mTabExp:='CADP02D';
//    la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'P2DCODEMP');
    la_Empresas:=fEmpresas_Selecionadas('CADP02D','P2DCODEMP',Form_SelEmp.CLB_EMPRESAS);
    if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
       mTabLid:=mTabLid+1;


// FIM DA TABELA DE PEDIDOS 02D MERCADORIAS


// TABELA DE PEDIDOS 02S
    mTabExp:='CADP02S';
//    la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'P2SCODEMP');
    la_Empresas:=fEmpresas_Selecionadas('CADP02S','P2SCODEMP',Form_SelEmp.CLB_EMPRESAS);
    if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
       mTabLid:=mTabLid+1;

// FIM DA TABELA DE PEDIDOS 02S MERCADORIAS


// TABELA DE PEDIDOS FP
    mTabExp:='CADPFP';
//    la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'PFPCODEMP');
    la_Empresas:=fEmpresas_Selecionadas('CADPFP','PFPCODEMP',Form_SelEmp.CLB_EMPRESAS);
    if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
       mTabLid:=mTabLid+1;

// FIM DA TABELA DE PEDIDOS FP

// TABELA DE PEDIDOS CSF
    mTabExp:='CADCSF';
//    la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CFCODEMP');
    la_Empresas:=fEmpresas_Selecionadas('CADCSF','CFCODEMP',Form_SelEmp.CLB_EMPRESAS);
    if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
       mTabLid:=mTabLid+1;
 // FIM DA TABELA DE PEDIDOS 02S MERCADORIAS
    end;

  // tabela de balanço
   if Frm_ImpMov.cb_balanco.Checked then
      begin
      mTabExp:='CADBAL01';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'B1CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADBAL01','B1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'B1LEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
  // TABELA DE BALANCO
      mTabExp:='CADBAL02';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'B2CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADBAL02','B2CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;
  // FIM DA TABELA DE REDUÇOES Z


  // tabela de Reduçoes Z
   if Frm_ImpMov.cb_cadmi01.Checked then
      begin
      mTabExp:='CADMI01';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CMCODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADMI01','CMCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'CMLEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;

  // TABELA DE PEDIDOS 01D
      mTabExp:='CADMI02';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CM2CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADMI02','CM2CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;
  // FIM DA TABELA DE REDUÇOES Z

   if Frm_ImpMov.cb_Cadpro.Checked then
      begin
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'PDCODEMP');
//      la_empresas:=' (PDCODEMP=0'+IntToStr(codemp)+' or PDCODEMP=0'+iif(codemp>99,intToStr(codemp-100),intToStr(codemp+100))+' )';
      la_Empresas:=fEmpresas_Selecionadas('CADPRO','PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
      mTabExp:='CADPRO';
      if not fMigrarDados(mTabExp,'77777','','PDCODEMP','',mlotEnv) then
         mTabLid:=mTabLid+1;
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'MPCODEMP');
//      la_empresas:=' (MPCODEMP=0'+IntToStr(codemp)+' or MPCODEMP=0'+iif(codemp>99,intToStr(codemp-100),intToStr(codemp+100))+' )';
      la_Empresas:=fEmpresas_Selecionadas('CADMPRO','MPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      mTabExp:='CADMPRO';
      if not fMigrarDados(mTabExp,'77777','','MPCODEMP','',mlotEnv) then
         mTabLid:=mTabLid+1;
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'GPCODEMP');
//      la_empresas:=' (GPCODEMP=0'+IntToStr(codemp)+' or GPCODEMP=0'+iif(codemp>99,intToStr(codemp-100),intToStr(codemp+100))+' )';
      la_Empresas:=fEmpresas_Selecionadas('CADGPRO','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);

      mTabExp:='CADGPRO';
      if not fMigrarDados(mTabExp,'77777','','GPCODEMP','',mlotEnv) then
         mTabLid:=mTabLid+1;

//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'CLCODEMP');
//      la_empresas:=' (CLCODEMP=0'+IntToStr(codemp)+' and CLCODEMP=0'+iif(codemp>99,intToStr(codemp-100),intToStr(codemp+100))+' )';
      la_Empresas:=fEmpresas_Selecionadas('CADLGC','CLCODEMP',Form_SelEmp.CLB_EMPRESAS);
      mTabExp:='CADLGC';
      if not fMigrarDados(mTabExp,'77777','','CLCODEMP','',mlotEnv) then
         mTabLid:=mTabLid+1;

//      if not fIncluirParcial(mTabExp,'99999','','CLCODEMP','',mlotEnv) then
//         mTabLid:=mTabLid+1;
      end;
// inicio dos acertos de remessa
   if Frm_ImpMov.CB_ACREM.Checked then
      begin
      mTabExp:='CADACRE01';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'AR1CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADACRE01','AR1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'AR1LEMAT','','','',mlotEnv) then
         mTabLid:=mTabLid+1;

  // TABELA DE PEDIDOS 01D
      mTabExp:='CADACRE02';
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'AR2CODEMP');
      la_Empresas:=fEmpresas_Selecionadas('CADACRE02','AR2CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if not fMigrarDados(mTabExp,'88888','','','',mlotEnv) then
         mTabLid:=mTabLid+1;
      end;

// termino dos acertos de remessa

   if Frm_ImpMov.cb_cadfor.Checked then
      begin
//      la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'FCODEMP');
//      la_empresas:=' (FCODEMP=0'+IntToStr(codemp)+' or FCODEMP=0'+iif(codemp>99,intToStr(codemp-100),intToStr(codemp+100))+' )';
      la_Empresas:=fEmpresas_Selecionadas('CADFOR','FCODEMP',Form_SelEmp.CLB_EMPRESAS);
      mTabExp:='CADFOR';
      if not fMigrarDados(mTabExp,'77777','','FCODEMP','',mlotEnv) then
        mTabLid:=mTabLid+1;
      end;

  if Frm_ImpMov.cb_cadgru.Checked then
     begin
//     la_Empresas:=fBuscaEmpresa(Frm_ImpMov.Tb_DadExp.FieldbyName('EXP_EMPRESA').AsString,'GRCODEMP');
//    la_empresas:=' (GRCODEMP=0'+IntToStr(codemp)+' or GRCODEMP=0'+iif(codemp>99,intToStr(codemp-100),intToStr(codemp+100))+' )';
      la_Empresas:=fEmpresas_Selecionadas('CADGRU','GPCODEMP',Form_SelEmp.CLB_EMPRESAS);
     mTabExp:='CADGRU';
     if not fMigrarDados(mTabExp,'77777','','GRCODEMP','',mlotEnv) then
        mTabLid:=mTabLid+1;
     end;
   Frm_ImpMov.Panel1.Visible:=false;

   end
else
   begin
   mOrigem_PF:=1;
   Application.CreateForm(TFrm_PFor01, Frm_Pfor01);
   Frm_PFor01.FormStyle:=fsNormal;
   Frm_PFor01.Visible  :=false;
   AssignFile(f,fimpdmtestanome(pNomArq)+'.TXT');
   Reset(f);
   while not eof(f) do
      begin
      readln(f,mlinha);
      if trim(mlinha)='' then
         break;
      While not eof(f) do
         begin
         if copy(mlinha,01,02)='00' then
            begin
            Frm_PFor01.BBLIMPAR.Click;
            flcadpv(1,0,'1','');
//            Frm_PFor01.STG_VCTO.RowCount:=2;
//            Frm_PFor01.STG_VCTO.Rows[1].Clear;
            for x:=2 to Frm_Pfor01.STG1.RowCount do
               begin
               Frm_Pfor01.STG1.Rows[x-1].Clear;
               end;
            Frm_Pfor01.STG1.RowCount:=2;
//            for x:=2 to Frm_Pfor01.STG_VCTO.RowCount do
//               begin
//               Frm_Pfor01.STG_VCTO.Rows[x-1].Clear;
//               end;
            Frm_Pfor01.STG1.Rows[1].Clear;
            y:=1;
            x:=1;
            if not flcadfor(3,1,copy(mlinha,288,14)) then
               begin
               flcadfor(0,1,'');
               end;
            z:=Frm_ImpMov.STG_PED.RowCount;
            Frm_ImpMov.STG_PED.RowCount:=z+1;
            mcinst:=copy(mlinha,136,02)+'/'+copy(mlinha,134,02)+'/'+copy(mlinha,130,4);
            try
               Frm_PFor01.DATAE.Text:=FormatDatetime(fdt2, StrToDate(mcinst))
            except
               Frm_PFor01.DATAE.Text:='/  /';
               end;
            Frm_PFor01.TOTNOT.Text  :=FormatFloat(mcasas, valfloat(copy(mlinha,115,15))/100);

            mchave:=valint(copy(mlinha,03,05));
            Frm_ImpMov.STG_PED.Cells[00,z-1]:=copy(mlinha,03,05);
            Frm_ImpMov.STG_PED.Cells[01,z-1]:=Frm_Pfor01.DATAE.Text;
            Frm_ImpMov.STG_PED.Cells[02,z-1]:=DM1.Tb_ForFRAZAO.Value;
            Frm_ImpMov.STG_PED.Cells[03,z-1]:=Frm_Pfor01.TotnoT.text;


            Frm_PFor01.CODFOR.Text :=DM1.Tb_ForFCODFOR.AsString;
            Frm_PFor01.CONDPAG.Text:='';
            Frm_PFor01.NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
            Frm_PFor01.DATAP.Text :=FormatDatetime(fdt2,date);
            mcinst:=copy(mlinha,136,02)+'/'+copy(mlinha,134,02)+'/'+copy(mlinha,130,4);
            try
               Frm_PFor01.DATAE.Text:=FormatDatetime(fdt2, StrToDate(mcinst))
            except
               Frm_PFor01.DATAE.Text:='/  /';
               end;
            Frm_PFor01.DATAENT.Text :=FormatDateTime(fdt2,date);
            Frm_PFor01.NUMNF.Text   :=copy(mlinha,138,10);
            Frm_PFor01.SERIE.Text   :=copy(mlinha,150,02);
//            Frm_PFor01.SUBSERIE.Text:=copy(mlinha,152,02);
            Frm_PFor01.CB_MODELO.Text  :=copy(mlinha,148,02);
            with Frm_PFor01.CB_MODELO do ItemIndex:=Items.IndexOf(Frm_PFor01.CB_MODELO.Text);
            Frm_PFor01.TOTMER.Text  :=FormatFloat(mcasas, valfloat(copy(mlinha,115,15))/100);
            Frm_PFor01.MBASEN.Text  :=FormatFloat(mcasas, 0);
            Frm_PFor01.ICMSN.Text   :=FormatFloat(mcasas, 0);
            Frm_PFor01.MBASER.Text  :=FormatFloat(mcasas, 0);
            Frm_PFor01.ICMSR.Text   :=FormatFloat(mcasas, 0);
            Frm_PFor01.OUTRAS.Text  :=FormatFloat(mcasas, 0);
            Frm_PFor01.VALFRE.Text  :=FormatFloat(mcasas, valfloat(copy(mlinha,273,15))/100);
            Frm_PFor01.IPIFRETE.Text:=FormatFloat(mcasas, valfloat(copy(mlinha,184,15))/100);
            Frm_PFor01.IPI.Text     :=FormatFloat(mcasas, valfloat(copy(mlinha,169,15))/100);
            Frm_PFor01.VALIPI.Text  :=FormatFloat(mcasas, valfloat(copy(mlinha,169,15))/100);
            Frm_PFor01.SEGURO.Text  :=FormatFloat(mcasas, 0);
            Frm_PFor01.DESC.Text    :=FormatFloat(mcasas, valfloat(copy(mlinha,100,15))/100);
            Frm_PFor01.ISENTAS.Text :=FormatFloat(mcasas, valfloat(copy(mlinha,220,15))/100);
            Frm_PFor01.PERCFRE.Text :=FormatFloat(mcasas, 0);
            Frm_Pfor01.DTPFAT.Text  :=FormatDateTime(fdt2, pdatasis);
            Frm_Pfor01.DTPENT.Text  :=FormatDateTime(fdt2, pdatasis);
            Frm_Pfor01.RGFRETEPC.ItemIndex:=valint(copy(mlinha, 199,1))-1;
            Frm_Pfor01.CB_GNF.Checked  :=true;
            Frm_Pfor01.CB_GDP.Checked  :=true;
            Frm_PFor01.OBSERVACAO.Text :=copy(mlinha, 39,40);
            Frm_Pfor01.STATUS.Text     :='0';
            Frm_Pfor01.CODDIG.Text     :=IntToStr(codusr);
            Frm_Pfor01.HORDIG.Text     :=FormatDateTime('hh:nn:ss', time);
            Frm_Pfor01.DTMOD.Text      :='/  /';
            Frm_Pfor01.NOMUSRM.Text    :='';
            Frm_PFor01.USRMOD.Text     :='';
            Frm_PFor01.DESC01.Text     :=FormatFloat(mcasas, valfloat(copy(mlinha,79,07))/100);
            Frm_PFor01.DESC02.Text     :=FormatFloat(mcasas, valfloat(copy(mlinha,86,07))/100);
            Frm_PFor01.VALDES.Text     :=FormatFloat(mcasas, valfloat(copy(mlinha,205,15))/100);
            Frm_PFor01.CODTRA.Text     :='';
            Frm_PFor01.NOMTRA.Text        :='';
            Frm_PFor01.CODBCO.Text        :=copy(mlinha,200,05);
            mcodldr                       :=0;
            Frm_PFor01.CB_BOLETO.Checked  :=true;
            Frm_PFor01.CODEMP_ORI.Text :=copy(mlinha,03,05);
            Frm_PFor01.NUMPED_ORI.Text :=copy(mlinha,08,10);
            Frm_PFor01.PAG_ORI.Text    :=copy(mlinha,18,03);
            Frm_PFor01.NUMDUP.Text     :='';
            Frm_PFor01.DESD.Text       :='';

            readln(f,mlinha);
            While not (eof(f)) and (trim(mlinha)<>'') do
               begin
               if copy(mlinha,01,02)='01' then
                  begin
                  flcadpro(1,0,0,copy(mlinha,31,14));
                  Frm_PFor01.STG1.RowCount:=x+1;
                  Frm_PFor01.STG1.Cells[00,x]:=copy(mlinha,31,14); // codigo
                  Frm_PFor01.STG1.Cells[01,x]:=FormatFloat(mcasas, valfloat(copy(mlinha,73,15))/1000); // quantidade
                  Frm_PFor01.STG1.Cells[02,x]:=DM1.Tb_ProPDUND.Value; // unidade
                  Frm_PFor01.STG1.Cells[03,x]:=DM1.Tb_ProPDNOME.Value; // nome do produto
                  Frm_PFor01.STG1.Cells[04,x]:=Formatfloat(mcasaspu,valfloat(copy(mlinha,88,15))/1000); // preco unitario
                  Frm_PFor01.STG1.Cells[05,x]:=Formatfloat(mcasas,valfloat(copy(mlinha,103,06))/100);  // desconto 01
                  Frm_PFor01.STG1.Cells[06,x]:=Formatfloat(mcasas,valfloat(copy(mlinha,109,06))/100); // desconto 02
                  Frm_Pfor01.STG1.Cells[07,x]:=Formatfloat(mcasas,valfloat(copy(mlinha,121,15))/100);  // desconto em valor
                  Frm_Pfor01.STG1.Cells[08,x]:=Formatfloat(mcasas, ( ValFloat(Frm_PFor01.stg1.Cells[01,x]) * ValFloat(Frm_PFor01.stg1.Cells[04,x]) )); // valor quantidade * preco unitario
                  Frm_Pfor01.STG1.Cells[09,x]:=copy(mlinha,45,20); // numero do lote ou grade
                  mcinst:=copy(mlinha,071,02)+'/'+copy(mlinha,069,02)+'/'+copy(mlinha,065,4); // data de vencimento
                  try
                     Frm_PFor01.STG1.Cells[10,x]:=FormatDatetime(fdt2, StrToDate(mcinst))
                  except
                     Frm_PFor01.STG1.Cells[10,x]:='';
                     end;
                  Frm_Pfor01.STG1.cells[11,x]:=Formatfloat(mcasas, valfloat(copy(mlinha,190,15))/100); // base do icms retido
                  Frm_Pfor01.STG1.cells[12,x]:=Formatfloat(mcasas, valfloat(copy(mlinha,205,15))/100); // valor do icms retido
                  Frm_Pfor01.STG1.cells[13,x]:=Formatfloat(mcasas, valfloat(copy(mlinha,154,15))/100); // BASE de icms normal
                  Frm_Pfor01.STG1.cells[14,x]:=Formatfloat(mcasas, valfloat(copy(mlinha,175,15))/100); // valor do icms normal
                  Frm_Pfor01.STG1.cells[15,x]:=Formatfloat(mcasas, valfloat(copy(mlinha,136,15))/100); // total dos descontos
                  Frm_Pfor01.STG1.cells[16,x]:=copy(mlinha,151,03); // situação tributaria
                  Frm_Pfor01.STG1.cells[17,x]:=DM1.Tb_ProPDTABICM.Value;
                  Frm_Pfor01.STG1.Cells[18,x]:=copy(mlinha,220,1); // lista 0-inalt 1-pos 2-neg
                  Frm_Pfor01.STG1.Cells[19,x]:=copy(mlinha,272,04); // cfop
                  if valint(copy(mlinha,272,4))>5000 then
                     begin
                     if flcadcfo(1,1,copy(mlinha,272,4)) then
                        begin
                        if DM1.Tb_CfoCFCFOENT.Value>0 then
                           Frm_Pfor01.STG1.Cells[19,x]:=FormatFloat('0000',DM1.Tb_CfoCFCFOENT.Value);
                        end;
                     end;
                  Frm_Pfor01.STG1.cells[20,x]:=Formatfloat(mcasas,valfloat( copy(mlinha,251,06) )/100); // aliquota de ipi
                  Frm_Pfor01.STG1.cells[21,x]:=Formatfloat(mcasas,valfloat( copy(mlinha,257,15) )/100); // valor do ipi
                  Frm_Pfor01.STG1.cells[22,x]:=Formatfloat(mcasas,valfloat( copy(mlinha,169,06) )/100); // aliquota de icms
                  Frm_Pfor01.STG1.cells[25,x]:=Formatfloat(mcasas,0); // base icms normal do retido
                  Frm_Pfor01.STG1.cells[26,x]:=Formatfloat(mcasas,0); // icms normal do retido
                  Frm_Pfor01.STG1.cells[27,x]:=Formatfloat(mcasas,valfloat( copy(mlinha,218,15) )/100); // valor das isentas
                  Frm_PFor01.STG1.Cells[28,x]:=Formatfloat(mcasas,valfloat( copy(mlinha,115,06) )/100);  // desconto 03
                  Frm_PFor01.STG1.Cells[29,x]:=Formatfloat(mcasas,DM1.Tb_PROPDPMC.Value);  // preco maximo consumidor
                  Frm_PFor01.STG1.Cells[30,x]:=Formatfloat(mcasas,0);  // desconto ratiado
                  x:=x+1;
                  end
               else if copy(mlinha,01,02)='02' then
                  begin
{                  Frm_Pfor01.STG_VCTO.RowCount  :=y+1;
                  mcinst:=copy(mlinha,050,02)+'/'+copy(mlinha,052,02)+'/'+copy(mlinha,048,4); // data de vencimento
                  try
                     Frm_PFor01.STG1.Cells[0,y]:=FormatDatetime(fdt2, StrToDate(mcinst))
                  except
                     Frm_PFor01.STG1.Cells[0,y]:=FormatDateTime(fdt2, Date);
                     end;
                  Frm_PFor01.STG_VCTO.Cells[1,y]:=Formatfloat(mcasas,valfloat( copy(mlinha,33,15) )/100); // valor do TITULO
                  Frm_PFor01.STG_VCTO.Cells[2,y]:=Formatfloat(mcasas,valfloat( copy(mlinha,56,15) )/100); // valor do desconto por antecipaçao
 }                 mcinst:=copy(mlinha,074,02)+'/'+copy(mlinha,076,02)+'/'+copy(mlinha,072,4); // data de vencimento
                  try
                     Frm_PFor01.STG1.Cells[3,y]:=FormatDatetime(fdt2, StrToDate(mcinst))
                  except
                     Frm_PFor01.STG1.Cells[3,y]:='';
                     end;
                  if Trim(Frm_PFor01.NUMDUP.Text)='' then
                     Frm_PFor01.NUMDUP.Text:=copy(mlinha,21,10);
                  if Trim(Frm_PFor01.DESD.Text)='' then
                     Frm_PFor01.DESD.Text:=copy(mlinha,31,02);
                  y:=y+1;
//                  Frm_Pfor01.STG_VCTO.Rows[y].Clear;
                  end;
               readln(f,mlinha);
               end;
            end
         else
            begin
            MessageDlg('Registro Fora de Ordem!',mtWarning,[mbOk],0);
            end;
         Frm_PFor01.BBCALCULAR.Click;
         Frm_PFor01.BBGRAVAR.Click;
         Frm_ImpMov.STG_PED.Cells[04,z-1]:=Frm_Pfor01.CHAVE.Text;
         end;
      end;
   mOrigem_PF:=0;
   Frm_PFor01.Free;
   closefile(f);
   end;

if mCriouEvento then
   begin
   CloseFile(F_Evento);
   RenameFile(pPasta+fimpdmtestanome(mNomeEvento)+'.$$$',
              pPasta+fimpdmtestanome(mNomeEvento)+'.RET');
   end;
if pOrigem=0 then
   messagedlg('Arquivo Gerado: '+pPasta+'EXP_LT'+FormatFloat('00000',mlotEnv)+'.ZIP',mtInformation,[mbOk],0)
else
   begin
   DeleteFile(fimpdmtestanome(pNomArq)+'.ID');
   DeleteFile(fimpdmtestanome(pNomArq)+'.ZIP');
   end;
DM1.Query2.Close;

DeleteFile(pPasta+'CADEXPDAD_'+FormatFloat('00000', mLotEnv)+'.db');

result:=true;
end;


procedure TFrm_ImpMov.Rg_DestinoClick(Sender: TObject);
begin
if Rg_Destino.ItemIndex=2 then
   begin
   if mImpMov_Origem=2 then
      begin
      MessageDlg('Não é válida esta opção para esse tipo de importação!',mtWarning,[mbOk],0);
      Rg_Destino.ItemIndex:=0;
      Rg_Destino.SetFocus;
      end
   else
      begin
      lbl_endip.Visible:=true;
      ENDIP.Visible    :=true;
      lbl_pasta.Visible:=false;
      NOMARQ.Visible   :=false;
      SB01.Visible     :=false;
      end;
   end
else
   begin
   lbl_endip.Visible:=false;
   ENDIP.Visible    :=false;
   lbl_pasta.Visible:=true;
   NOMARQ.Visible   :=true;
   SB01.Visible     :=true;
   end;
end;

function fImpMovEnviaSol(ptipo: Integer): Boolean;
var
mNomeArq: String;
x: Integer;
begin
if mImpMov_Origem=0 then
   mNomeArq:='EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID'
else if mImpmov_Origem=1 then
   mNomeArq:='EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID';
AssignFile(f,mpastaEnv+mNomeArq);
rewrite(f);
WriteLn(f,'EM',Formatfloat('00000',codemp)
       +insere2(DM1.Tb_EmpRAZAO.Value,' ',40)
       +'01'
       +insere(FormatFloat('0',0),'0',10)
       +insere(FormatFloat('0',0),'0',10));
//       +insere(FormatFloat('0',mlotEnv),'0',10)
//       +insere(FormatFloat('0',mTotGer_reg),'0',10));
closefile(f);
mArqExtra:=0;
mcinst:='00'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+insere('EM'+Formatfloat('00000',codemp),' ',40);
if not fExpMovConecta_Remoto(1,Frm_ImpMov.ENDIP.Text,mcinst) then
   begin
   Result:=false;
   exit;
   end;

//0000000000000000123456789012345678901234567890123456789012345678901234567890EM00000890123456789012345678901234567890


if not fExpMovEnviarArq(1,mpastaEnv,mNomeArq) then
   begin
   Result:=false;
   exit;
   end;
mConcluiu_transmissao:=false;
FAguardaArquivo(1);
Frm_ExpMov.ClientSocket1.Close;
Frm_Server_Transf.FileListBox2.Directory:=mPastaRec;
Frm_Server_Transf.FileListBox2.Update;
for x:=0 to Frm_Server_Transf.FileListBox2.Count-1 do
   begin
   mNomeArq:=fimpdmtestanome(Frm_Server_Transf.FileListBox2.Items[x])+'.ZIP';
   if fTestaArq(mPastaRec+mNomeArq) then
      begin
      fImportar(1,mPastaRec,mPastaRec+mNomeArq);
      end;
   end;
result:=true;
end;

function fImpMovCad_Mov(ptipo: Integer; pCad, pMov:Boolean): Boolean;
begin
Frm_ImpMov.cb_Cadpro.Checked:=pCad;
Frm_ImpMov.cb_Cadfor.Checked:=pCad;
Frm_ImpMov.cb_cadgru.Checked:=pCad;

Frm_ImpMov.cb_ajuste.checked    :=pMov;
Frm_ImpMov.cb_balanco.Checked   :=pMov;
Frm_ImpMov.cb_cadchq.Checked    :=pMov;
Frm_ImpMov.cb_cheques_cp.Checked:=pMov;
Frm_ImpMov.cb_CadCli.Checked    :=pMov;
Frm_ImpMov.cb_dupRec.Checked    :=pMov;
Frm_ImpMov.cb_dupPag.Checked    :=pMov;
Frm_ImpMov.CB_CADEST.Checked    :=pMov;
Frm_ImpMov.cb_caixa.Checked     :=pMov;
Frm_ImpMov.CB_CADNE.Checked     :=pMov;
Frm_ImpMov.CB_CADNS.Checked     :=pMov;
Frm_ImpMov.cb_PedCompras.Checked:=pMov;
Frm_ImpMov.cb_pedVendas.Checked :=pMov;
Frm_ImpMov.cb_cadmi01.Checked   :=pMov;
Frm_ImpMov.CB_ACREM.Checked     :=pMov;

result:=true;
end;

procedure TFrm_ImpMov.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
mcriar: Boolean;
begin
if not DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_IMPMOV','ENDIP']),[]) then
   mcriar:=true
else
   begin
   if ENDIP.Text<>DM4.Tb_filpadFPVALOR.value then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Delete From FILPAD where FPCODUSR=0'+IntToStr(codusr)
                        +' and FPFORM='+chr(39)+'_IMPMOV'+chr(39));
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         end;
      mcriar:=true;
      end;
   end;
if mcriar then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Insert into FILPAD ('
                     +' FPCODUSR, '
                     +'  FPCOMP, '
                     +'  FPTPCOMP, '
                     +'  FPVALOR, '
                     +'  FPFORM) Values ('
                     +IntTostr(codusr)+','
                     +chr(39)+'ENDIP'+chr(39)+','
                     +chr(39)+'Text'+chr(39)+','
                     +chr(39)+ENDIP.Text+chr(39)+','
                     +chr(39)+'_IMPMOV'+chr(39)+')');
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
Frm_Stru.Free;
end;

procedure TFrm_ImpMov.bbImpExistenteClick(Sender: TObject);
begin
Application.CreateForm(TFrm_ImpMov_Importados, Frm_ImpMov_Importados);
Frm_ImpMov_Importados.ShowModal;
Frm_ImpMov_Importados.Free;
end;

procedure TFrm_ImpMov.bbExpExistentesClick(Sender: TObject);
begin
Application.CreateForm(TFrm_ExpMov_Exportados, Frm_ExpMov_Exportados);
Frm_ExpMov_Exportados.ShowModal;
Frm_ExpMov_Exportados.Free;

end;
function finserirdados(pTabela: String): boolean;
var
x: Integer;
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   DM1.Query5.Params.CreateParam(ftString,Frm_ImpMov.Tab_Origem.Fields[x].FieldName,ptInput);
   end;
DM1.Query5.SQL.Add('Insert into '+ptabela+'(');
mcinst:='';
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   DM1.Query5.SQL.add(mcinst+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
   mcinst:=',';
   end;

DM1.Query5.SQL.Add(') Values (');
mcinst:='';
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   DM1.Query5.SQL.add(mcinst+':'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
   mcinst:=',';
   end;
DM1.Query5.SQL.Add(')');
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   DM1.Query5.ParamByName(Frm_ImpMov.Tab_Origem.Fields[x].FieldName).Value:=Frm_ImpMov.Tab_Origem.Fields[x].Value;
   end;
DM1.Query5.ExecSQL;
result:=true;
end;


function finserirdados_Paradox_Oracle(pTabela: String): boolean;
var
x: Integer;
mtabcomp: String;
begin
Frm_ImpMov.Qr_TestaChave.Close;
Frm_ImpMov.Qr_TestaChave.SQL.Clear;
Frm_ImpMov.Qr_TestaChave.SQL.Add('Insert into ":SG_ASSOC:'+ptabela+'" (');
mtabcomp:=Frm_ImpMov.Tab_Origem.TableName;
mcinst:='';
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
   mcinst:=',';
   end;

Frm_ImpMov.Qr_TestaChave.SQL.Add(') Select ');
mcinst:='';
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
{
   if pTabela='CADPRO' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='PDCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADMPRO' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='MPCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADGPRO' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='GPCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADFOR' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='FCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADLGC' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='CLCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADGRU' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='GRCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADCLI' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='CCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADCLI' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='CCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else
      begin
      MessageDlg('Tabela desconhecida: '+pTabela,mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
}
   mcinst:=',';
   end;
Frm_ImpMov.Qr_TestaChave.SQL.add(' from '+Frm_ImpMov.Tab_Origem.TableName+' Antes ');
Frm_ImpMov.Qr_TestaChave.ExecSQL;
//Frm_ImpMov.Qr_TestaChave.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

//fHabDes_trigger(1,'');
marqsol:=pTabela;
//verificar(2);
//fHabDes_trigger(0,'');
result:=true;
end;

{
function finserirdados_Paradox_Oracle(pTabela: String): boolean;
var
x: Integer;
mtabcomp: String;
begin
Frm_ImpMov.Qr_TestaChave.Close;
Frm_ImpMov.Qr_TestaChave.SQL.Clear;
Frm_ImpMov.Qr_TestaChave.SQL.Add('Insert into ":SG_ASSOC:'+ptabela+'" (');
mtabcomp:=Frm_ImpMov.Tab_Origem.TableName;
mcinst:='';
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
   mcinst:=',';
   end;

Frm_ImpMov.Qr_TestaChave.SQL.Add(') Select ');
mcinst:='';
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount-1 do
   begin
   if pTabela='CADPRO' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='PDCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADMPRO' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='MPCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADGPRO' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='GPCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADFOR' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='FCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADLGC' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='CLCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else if pTabela='CADGRU' then
      begin
      if Frm_ImpMov.Tab_Origem.Fields[x].FieldName='GRCODEMP' then
         Frm_ImpMov.Qr_TestaChave.SQl.add(mcinst+InttoStr(codemp)+' as codemp ')
      else
         Frm_ImpMov.Qr_TestaChave.SQL.add(mcinst+'Antes.'+Frm_ImpMov.Tab_Origem.Fields[x].FieldName);
      end
   else
      begin
      MessageDlg('Tabela desconhecida: '+pTabela,mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   mcinst:=',';
   end;
Frm_ImpMov.Qr_TestaChave.SQL.add(' from '+Frm_ImpMov.Tab_Origem.TableName+' Antes ');
if pTabela='CADPRO' then
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(' LEFT OUTER JOIN ":SG_ASSOC:CADPRO" Cadpro ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' ON  ('+mtabcomp+'.PDCODEMP = Cadpro.PDCODEMP) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.PDCODPRO = Cadpro.PDCODPRO) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' where cadpro.PDCODPRO is null');
   end
else if pTabela='CADMPRO' then
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(' LEFT OUTER JOIN ":SG_ASSOC:CADMPRO" Cadpro ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' ON  ('+mtabcomp+'.MPCODEMP = Cadpro.MPCODEMP) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.MPCODMAS = Cadpro.MPCODMAS) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' where cadpro.MPCODMAS is null');
   end
else if pTabela='CADGPRO' then
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(' LEFT OUTER JOIN ":SG_ASSOC:CADGPRO" Cadpro ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' ON  ('+mtabcomp+'.GPCODEMP = Cadpro.GPCODEMP) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.GPCODPRO = Cadpro.GPCODPRO) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.GPCODMAS = Cadpro.GPCODMAS) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.GPGRADE = Cadpro.GPGRADE) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' where cadpro.GPGRADE is null');
   end
else if pTabela='CADFOR' then
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(' LEFT OUTER JOIN ":SG_ASSOC:CADFOR" Cadpro ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' ON  ('+mtabcomp+'.FCODEMP = Cadpro.FCODEMP) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.FCODFOR = Cadpro.FCODFOR) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' where cadpro.FCODFOR is null');
   end
else if pTabela='CADLGC' then
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(' LEFT OUTER JOIN ":SG_ASSOC:CADLGC" Cadpro ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' ON  ('+mtabcomp+'.CLCODEMP = Cadpro.CLCODEMP) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.CLCODPRO = Cadpro.CLCODPRO) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.CLDTVCTO = Cadpro.CLDTVCTO) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.CLNUMERO = Cadpro.CLNUMERO) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' where cadpro.CLCODPRO is null');
   end
else if pTabela='CADGRU' then
   begin
   Frm_ImpMov.Qr_TestaChave.SQL.add(' LEFT OUTER JOIN ":SG_ASSOC:CADGRU" Cadpro ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' ON  ('+mtabcomp+'.GRCODEMP = Cadpro.GRCODEMP) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' AND  ('+mtabcomp+'.GRCODGRU = Cadpro.GRCODGRU) ');
   Frm_ImpMov.Qr_TestaChave.SQL.add(' where cadpro.GRCODGRU is null');
   end;


Frm_ImpMov.Qr_TestaChave.ExecSQL;
result:=true;
end;

}

function fIncluirAlterar(pTabela: String): boolean;
var
x: Integer;
begin
if Frm_ImpMov.tab_destino.Active then Frm_ImpMov.tab_destino.close;
Frm_ImpMov.tab_destino.TableName:=pTabela;
Frm_ImpMov.tab_destino.open;
mQtdReg:=Frm_ImpMov.tab_destino.RecordCount;
Frm_ImpMov.BM_Inclui_Altera.Mappings.Clear;
for x:=0 to Frm_ImpMov.Tab_Origem.FieldCount - 1 do
   begin
   if (Frm_ImpMov.Tab_Origem.Fields[x].FieldName='CLQTD') or
      (Frm_ImpMov.Tab_Origem.Fields[x].FieldName='CLQTDR') or
      (Frm_ImpMov.Tab_Origem.Fields[x].FieldName='CLQTDC') then
      Continue;
   Frm_ImpMov.BM_Inclui_Altera.Mappings.Add(Frm_ImpMov.Tab_Origem.fields[x].FieldName+'='+Frm_ImpMov.Tab_Origem.fields[x].FieldName);
   end;
Frm_ImpMov.BM_Inclui_Altera.Execute;
result:=true;
end;

procedure TFrm_ImpMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ImpMov.FormKeyDown(Sender: TObject; var Key: Word;
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
