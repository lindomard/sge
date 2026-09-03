unit S_ExpMov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_DefBac, Gauges,S_DM1,Db,DbTables,func,
  ZIP, ScktComp, ComCtrls, Grids, ExtDlgs, S_SelEmp;

type
  TFrm_ExpMov = class(TForm)
    rg_tpExp: TRadioGroup;
    lbl_lote: TLabel;
    LOTE: TEdit;
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
    lbl_endip: TLabel;
    ENDIP: TEdit;
    ClientSocket1: TClientSocket;
    gbprogress: TGroupBox;
    Gauge3: TGauge;
    PC_Tipo: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    cb_Cadpro: TCheckBox;
    cb_cadfor: TCheckBox;
    cb_cadgru: TCheckBox;
    cb_deletar: TCheckBox;
    Qr_Triggers: TQuery;
    bbImpExistente: TBitBtn;
    bbExpExistentes: TBitBtn;
    TabSheet3: TTabSheet;
    STG_PED: TStringGrid;
    bbExcEti: TBitBtn;
    SB02: TSpeedButton;
    Opd1: TOpenPictureDialog;
    CB_ACREM: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure bbexportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Rg_DestinoClick(Sender: TObject);
    procedure rg_tpExpClick(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure bbImpExistenteClick(Sender: TObject);
    procedure bbExpExistentesClick(Sender: TObject);
    procedure STG_PEDClick(Sender: TObject);
    procedure STG_PEDSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure bbExcEtiClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure LOTEExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    path: string;
    zip: TZip;
    { Private declarations }
// funcoes do socket
   function fRecebeArq(pDados: String; Phost:Integer): Boolean;
   function fRecebeTexto(pDados: String; Phost:Integer): Boolean;
   function fRecebeCabArq(pDados: String; Phost:Integer): Boolean;
   function FCriarTriggers(ptipo: Integer): Boolean;
   function FDeletaTriggers(ptipo: Integer): Boolean;
   function FGerarArqPed(ptipo: Integer; pPasta: String): Boolean;

// fim das funcoes do socket
  public
    { Public declarations }

  end;
function fExportar(pOrigem: Integer; pPasta, pNomArq: String): Boolean;
function fUpdateTabela(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
function fDeletaTabela(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
function fCarregarTabela(pTabela: String): Boolean;
function fExpMovLog(pTipo: Integer): Boolean;
function FAguardaResp(ptipo: Integer): Boolean;
function fExpMovConecta_Remoto(pTipo: Integer; pEndIp,pIdentif: STring): Boolean;
function fExpMovEnviarArq(ptipo: Integer; pPasta, pArqEnv: String): Boolean;
function fExpMovEnviarTexto(ptipo: Integer; pTexto: String): Boolean;
function fExpMovCad_Mov(ptipo: Integer; pCad, pMov:Boolean): Boolean;
function FAguardaArquivo(ptipo: Integer): Boolean;

var
  Frm_ExpMov : TFrm_ExpMov;
  Form_SelEmp: TFrm_SelEmp;  
// campos da conexao socket
  mAgResp    : Boolean=False;
  mSimula    : Boolean=false;
  mConcluiu_transmissao: Boolean=true;
  mavisaqueda: Boolean=False;
  MsgLen, LenReceived: Integer;
  KbReceived         : Integer;
  mTipoArq           : Boolean;
  mReceb                    : Integer;
  mAtriba, mAtribn, mTamArq : Integer;
  Fs        : TFileStream;
  mArqExtra : Integer=0;
  mTestoRec : String;
  mExpMov_Origem: Integer=0;
  // especifica o local de origem sendo: 0-Exportar Movimentos
//                                       1-Exportar Cadastros

// fim dos campos da conexao socket

  mlotEnv: Integer;
  mEmpresas: String;
  mTabExp, mTabGer: String;
  mQtdReg: Integer;
  mpastaEnv: String;
  mpastabkp: String;

  mPastaRec: String;
  mTotTab: Integer;
  mTabLid: Integer;
  mTotReg: Integer;
  mRegLid: Integer;
  mTotGer_reg: Integer;
  f: TextFile;
  mTimeOut01 : String='00:00:30';
  mTimeOut02 : String='00:30:00';
  mhorai: TTime;
  mGerarNovo: Boolean;
  colclick, rowclick: Integer;

implementation

uses S_DM2, lerarq, func_excecoes, S_Server_Transf, S_ImpMov_Importados,
  S_ExpMov_Exportados, S_DM4;

{$R *.dfm}

procedure TFrm_ExpMov.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpMov.SB01Click(Sender: TObject);
begin

testeform := TFrm_expmov(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   PASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);


end;

procedure TFrm_ExpMov.bbexportarClick(Sender: TObject);
begin
{
EXPMOV   = vai na empresa de origem
EXPCAD   = vai para a empresa solicitante
EXPPED   = entra na empresa atual - solicitante
}
if Rg_Destino.ItemIndex=1 then
   begin
   mpastaEnv:=PASTA.Text;
   if not DirectoryExists(mpastaEnv) then
      begin
      MessageDlg('Favor Selecionar uma Pasta Válida!',mtWarning,[mbOk],0);
      PASTA.SetFocus;
      exit;
      end;
   if mpastaEnv[length(mpastaEnv)]<>'\' then
      mpastaEnv:=mpastaEnv+'\';

   if not DirectoryExists(mpastaEnv+'BKP') then
      CreateDir(mpastaEnv+'BKP');
   if mExpMov_Origem=2 then
      begin
      if Trim(STG_PED.Cells[0,1])='' then
         begin
         MessageDlg('Favor Selecionar pelo menos um pedido!',mtWarning,[mbOk],0);
         exit;
         end;
      end;
   end
else if Rg_Destino.ItemIndex=2 then
   begin
   mpastaEnv:='C:\SGE\ENVIAR\';
   if not DirectoryExists('C:\SGE') then
      CreateDir('C:\SGE');
   mpastaEnv:='C:\SGE\ENVIAR\';
   if not DirectoryExists(mpastaEnv) then
      CreateDir(mpastaEnv);
   mpastaEnv:='C:\SGE\ENVIAR\BKP';

   if not DirectoryExists(mpastaEnv) then
      CreateDir(mpastaEnv);
   end
else
   begin
   mpastaEnv:='C:\SGE\ENVIAR\';
   if not DirectoryExists('C:\SGE') then
      CreateDir('C:\SGE');
   mpastaEnv:='C:\SGE\ENVIAR\';
   if not DirectoryExists(mpastaEnv) then
      CreateDir(mpastaEnv);
   if not DirectoryExists('C:\SGE\ENVIAR\BKP') then
      CreateDir('C:\SGE\ENVIAR\BKP');
   end;


if mpastaEnv[length(mpastaEnv)]<>'\' then
   mpastaEnv:=mpastaEnv+'\';
mGerarNovo:=true;
if rg_tpExp.ItemIndex=1 then
   begin
   mLotEnv:=ValInt(LOTE.Text);
   if mExpMov_Origem=0 then
      begin
      if FileExists(mpastaEnv+'BKP\EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP') then
         begin
         if Rg_Destino.ItemIndex<>0 then
            begin
            CopyFile(pchar(mpastaEnv+'BKP\EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID'),pchar(mpastaEnv+'EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID'),true);
            CopyFile(pchar(mpastaEnv+'BKP\EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),pchar(mpastaEnv+'EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),true);
            end;
         mGerarNovo:=false;
         end
      else
         begin
         MessageDlg('o Arquivo Origem não foi encontrado!',mtWarning,[mbOk],0);
         exit;
         end;
      end
   else if mExpMov_Origem=1 then
      begin
      if FileExists(mpastaEnv+'BKP\EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP') then
         begin
         if Rg_Destino.ItemIndex<>0 then
            begin
            CopyFile(pchar(mpastaEnv+'BKP\EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID'),pchar(mpastaEnv+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID'),true);
            CopyFile(pchar(mpastaEnv+'BKP\EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),pchar(mpastaEnv+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),true);
            end;
         mGerarNovo:=false;
         end
      else
         begin
         MessageDlg('o Arquivo Origem não foi encontrado!',mtWarning,[mbOk],0);
         exit;
         end;
      end
   else if mExpMov_Origem=2 then
      begin
      if FileExists(mpastaEnv+'BKP\EXPPED_LT'+FormatFloat('00000',mlotEnv)+'.ZIP') then
         begin
         if Rg_Destino.ItemIndex<>0 then
            begin
            CopyFile(pchar(mpastaEnv+'BKP\EXPPED_LT'+FormatFloat('00000',mlotEnv)+'.ID'),pchar(mpastaEnv+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID'),true);
            CopyFile(pchar(mpastaEnv+'BKP\EXPPED_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),pchar(mpastaEnv+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),true);
            end;
         mGerarNovo:=false;
         end
      else
         begin
         MessageDlg('o Arquivo Origem não foi encontrado!',mtWarning,[mbOk],0);
         exit;
         end;
      end;

   end;
if mExpMov_Origem=2 then
   mGerarNovo:=false;
if mGerarNovo then
   FCriarTriggers(0);
if mExpMov_Origem=2 then
   begin
   FGerarArqPed(0,mpastaEnv);
   end
else if fExportar(0,mpastaEnv,'') then
   begin
   if mGerarNovo then
      FDeletaTriggers(0);
   if mExpMov_Origem=0 then
      messagedlg('Arquivo Gerado: '+mpastaEnv+'EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP',mtInformation,[mbOk],0)
   else if mExpMov_Origem=1 then
      messagedlg('Arquivo Gerado: '+mpastaEnv+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP',mtInformation,[mbOk],0);
   end
else
   begin
   if mGerarNovo then
      FDeletaTriggers(0);
   end;
end;

procedure TFrm_ExpMov.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if Not DirectoryExists('C:\SGE\RECEBE\') then
   CreateDir('C:\SGE\RECEBE');
if Not DirectoryExists('C:\SGE\ENVIAR\') then
   CreateDir('C:\SGE\ENVIAR');
mPastaRec:='C:\SGE\RECEBE\';
mpastaEnv:='C:\SGE\ENVIAR\';



zip := TZip.create(self);
if mExpMov_Origem=0 then
   begin
   Frm_ExpMov.Caption:='Exportação dos Movimentos';
   cb_Cadpro.Checked:=false;
   cb_Cadfor.Checked:=false;
   cb_cadgru.Checked:=false;

   cb_ajuste.checked     :=true;
   cb_balanco.Checked   :=true;
   cb_cadchq.Checked    :=true;
   cb_cheques_cp.Checked:=true;
   cb_CadCli.Checked    :=true;
   cb_dupRec.Checked    :=true;
   cb_dupPag.Checked    :=true;
   CB_CADEST.Checked    :=true;
   cb_caixa.Checked     :=true;
   CB_CADNE.Checked     :=true;
   CB_CADNS.Checked     :=true;
   cb_PedCompras.Checked:=true;
   cb_pedVendas.Checked :=true;
   cb_cadmi01.Checked   :=true;
   CB_ACREM.Checked     :=true;
   TabSheet3.TabVisible:=false;
   TabSheet2.TabVisible:=false;

   end
else if mExpMov_Origem=1 then
   begin
   Frm_ExpMov.Caption:='Exportação dos Cadastros';
   TabSheet1.TabVisible:=false;
   TabSheet3.TabVisible:=false;
   cb_Cadpro.Checked:=true;
   cb_Cadfor.Checked:=true;
   cb_cadgru.Checked:=true;

   cb_ajuste.checked    :=false;
   cb_balanco.Checked   :=false;
   cb_cadchq.Checked    :=false;
   cb_cheques_cp.Checked:=false;
   cb_CadCli.Checked    :=false;
   cb_dupRec.Checked    :=false;
   cb_dupPag.Checked    :=false;
   CB_CADEST.Checked    :=false;
   cb_caixa.Checked     :=false;
   CB_CADNE.Checked     :=false;
   CB_CADNS.Checked     :=false;
   cb_PedCompras.Checked:=false;
   cb_pedVendas.Checked :=false;
   cb_cadmi01.Checked   :=false;
   CB_ACREM.Checked     :=false;
   end
else if mExpMov_Origem=2 then
   begin
   Frm_ExpMov.Caption:='Exportação de Pedidos';
   TabSheet1.TabVisible:=false;
   TabSheet2.TabVisible:=false;
   cb_Cadpro.Checked:=false;
   cb_Cadfor.Checked:=false;
   cb_cadgru.Checked:=false;

   cb_ajuste.checked    :=false;
   cb_balanco.Checked   :=false;
   cb_cadchq.Checked    :=false;
   cb_cheques_cp.Checked:=false;
   cb_CadCli.Checked    :=false;
   cb_dupRec.Checked    :=false;
   cb_dupPag.Checked    :=false;
   CB_CADEST.Checked    :=false;
   cb_caixa.Checked     :=false;
   CB_CADNE.Checked     :=false;
   CB_CADNS.Checked     :=false;
   cb_PedCompras.Checked:=false;
   cb_pedVendas.Checked :=false;
   cb_cadmi01.Checked   :=false;
   CB_ACREM.Checked     :=false;
   STG_PED.Visible      :=true;
   STG_PED.RowCount:=2;
   STG_PED.Cells[00,00]:='Chave';
   STG_PED.Cells[01,00]:='Dt.Emissão';
   STG_PED.Cells[02,00]:='Razão Social';
   STG_PED.Cells[03,00]:='Valor';
   STG_PED.Cells[04,00]:='Tipo do Pedido';
   with STG_PED do
      begin
      col:=00;
      row:=1;
      colclick:=col;
      rowclick:=row;
      end;
   end;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EXPMOV','ENDIP']),[]) then
   ENDIP.Text:=DM4.Tb_FilPadFPVALOR.Value
else
   ENDIP.Text:='201.34.216.45';
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EXPMOV','PASTA']),[]) then
   PASTA.Text:=DM4.Tb_FilPadFPVALOR.Value;



end;

procedure TFrm_ExpMov.Rg_DestinoClick(Sender: TObject);
begin
if Rg_Destino.ItemIndex=1 then
   begin
   lbl_pasta.Visible:=true;
   PASTA.Visible    :=true;
   lbl_endip.Visible:=false;
   ENDIP.Visible    :=false;
   SB01.Visible     :=true;
   end
else if Rg_Destino.ItemIndex=2 then
   begin
   lbl_pasta.Visible:=false;
   PASTA.Visible    :=false;
   lbl_endip.Visible:=true;
   ENDIP.Visible    :=true;
   if Trim(PASTA.Text)='' then
      PASTA.Text       :='C:\SGE\ENVIAR';
   SB01.Visible     :=false;
   end
else
   begin
   lbl_pasta.Visible:=false;
   PASTA.Visible    :=false;
   lbl_endip.Visible:=false;
   ENDIP.Visible    :=false;
   SB01.Visible     :=False;
   end;
end;


function fExpMovLog(pTipo: Integer): Boolean;
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
                  +','+'1'
                  +','+IntTostr(mlotEnv)
                  +','+chr(39)+mEmpresas+chr(39)
                  +','+chr(39)+mTabExp+chr(39)
                  +','+chr(39)+mTabGer+chr(39)
                  +','+IntTostr(mQtdReg)
                  +','+IntToStr(Frm_ExpMov.Rg_Destino.ItemIndex)
                  +','+chr(39)+mpastaEnv+chr(39)
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
Frm_ExpMov.Gauge2.Progress:=mTabLid*100 div mTotTab;
if mOrigem_Chamada=2 then
   Frm_Server_Transf.Gauge1.Progress:=mTabLid*100 div mTotTab;
verteclado(0);
end;

function fCarregarTabela(pTabela: String): Boolean;
var
x: Integer;
pNomeComp: String;
begin
result:=true;
Frm_ExpMov.Table1.Close;
pNomeComp:=pTabela+'_'+FormatFloat('00000',mlotEnv);

Frm_ExpMov.Table1.TableName:=pNomeComp;
mTabGer         :=pTabela+'_'+FormatFloat('00000',mlotEnv);
if FileExists(mpastaEnv+mTabGer) then
   begin
   if not DeleteFile(mpastaEnv+mTabGer) then
      begin
      MessageDlg('Não Foi Possível excluir o arquivo anterior!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
Frm_ExpMov.Table1.FieldDefs.Clear;

Frm_ExpMov.Table1.IndexDefs.Clear;
{if pTabela='CADLGC' then // retirado em 13/08/2005
   begin
//   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','CLCODEMP;CLCODPRO;CLDTVCTO;CLNUMERO',[ixNonMaintained]);
   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','CLCODEMP;CLCODPRO;CLDTVCTO;CLNUMERO',[ixPrimary]);
   end;
}
{
if pTabela='CADPRO' then
   begin
   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','PDCODEMP;PDCODPRO',[ixPrimary]);
   end
else if pTabela='CADMPRO' then
   begin
   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','MPCODEMP;MPCODMAS',[ixPrimary]);
   end
else if pTabela='CADGPRO' then
   begin
   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','GPCODEMP;GPCODPRO;GPCODMAS;GPGRADE',[ixPrimary]);
   end
else if pTabela='CADFOR' then
   begin
   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','FCODEMP;FCODFOR',[ixPrimary]);
   end
else if pTabela='CADLGC' then
   begin
//   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','CLCODEMP;CLCODPRO;CLDTVCTO;CLNUMERO',[ixNonMaintained]);
   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','CLCODEMP;CLCODPRO;CLDTVCTO;CLNUMERO',[ixPrimary]);
   end
else if pTabela='CADGRU' then
   begin
   Frm_ExpMov.Table1.IndexDefs.Add(pnomecomp+'0','GRCODEMP;GRCODGRU',[ixPrimary]);
   end;

 }

for x:=0 to DM1.Query1.FieldCount-1 do
    begin
    Frm_ExpMov.Table1.FieldDefs.Add(DM1.Query1.Fields[x].FieldName,DM1.Query1.fields[x].DataType,DM1.Query1.fields[x].Size,false);
    end;
Frm_ExpMov.Table1.CreateTable;
Frm_ExpMov.Table1.Open;
While not DM1.Query1.Eof do
   begin
   mQtdReg:=mQtdReg+1;
   Frm_ExpMov.Gauge1.Progress:=mQtdReg*100 div mTotReg;
   Frm_ExpMov.Table1.Append;
   for x:=0 to DM1.Query1.FieldCount-1 do
      begin
      Frm_ExpMov.Table1.FieldByName(DM1.Query1.Fields[x].FieldName).Value:=DM1.Query1.fields[x].Value;
      end;
   try
      Frm_ExpMov.Table1.Post;
   except
      end;
   DM1.Query1.Next;
   end;
Frm_ExpMov.Table1.Close;
if mQtdReg=0 then
   mTabGer:='';
end;
function fUpdateTabela(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update '+pTabela
                  +' set '+pCampo+'=0'+IntToStr(plote)
                  +' where '+iif(pempresa='','',pEmpresa+' and ')
                  +'('+pCampo+' is null or '+pcampo+'=0)');
if UpperCase(ptabela)='CADP01' then
   begin
   DM1.Query1.SQL.add(' and P1EMIDOC>0');
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1747,'Frm_ExpMov',pTabela);
   end;
if UpperCase(ptabela)='CADPF1' then
   DM1.Query1.SQL.add(' and PF1STATUS>0');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1747,'Frm_ExpMov',pTabela);
   end;


result:=true;
end;


function fDeletaTabela(pTabela,pEmpresa,pCampo: String; pLote: Integer): Boolean;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Delete from  '+pTabela
                  +' where '+iif(pempresa='','',pEmpresa+' and ')
                  +pcampo+'=0'+InttoStr(pLote));
if UpperCase(ptabela)='CADP01' then
   begin
   DM1.Query1.SQL.Add(' and (P1TIPO<>7 and P1TIPO<>11 and P1TIPO<>12 '
                     +'      and P1TIPO<>13 and P1TIPO<>14 and P1TIPO<>15) ');
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1747,'Frm_ExpMov',pTabela);
   end;

{
                  +'('+pCampo+' is null or '+pcampo+'=0)');
if UpperCase(ptabela)='CADP01' then
   DM1.Query1.SQL.add(' and P1EMIDOC>0');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1747,'Frm_ExpMov',pTabela);
   end;

}

result:=true;
end;


procedure TFrm_ExpMov.rg_tpExpClick(Sender: TObject);
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

procedure TFrm_ExpMov.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
mAgResp:=False;

end;

procedure TFrm_ExpMov.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
if mavisaqueda then
   begin
   MessageDlg('Conexão Perdida!',mtError,[mbOk],0);
   end;

end;

procedure TFrm_ExpMov.ClientSocket1Read(Sender: TObject;
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
//      if mreceb<>mTamArq then
//         begin
//         ShowMessage(IntTostr(mreceb)+' tamanhio: '+InttosTr(mtamarq));
   //     Gauge1.Progress:=mreceb div (mtamarq div 100);
//         end;
//      ClientSocket1.Socket.SendText('50'+IntTostr(mreceb div (mtamarq div 100)));
      end;
   if mReceb>=mTamArq then
      begin
      ClientSocket1.Socket.SendText('###%,,,%###');
      gbProgress.Visible:=False;
      fs.Free;
      mTipoArq :=False;
      end;
   end
else if copy(buf,1,11)='###%,,,%###' then
  mAgResp:=False
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
   end
else if not (mConcluiu_transmissao) and (copy(buf,1,14)='###CONCLUIU###') then
   mConcluiu_transmissao:=true;

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
function TFrm_ExpMov.fRecebeArq(pDados: String; Phost:Integer): Boolean;
begin
fs.write(pdados[1], length(pdados));
result:=True;
end;

function TFrm_ExpMov.fRecebeTexto(pDados: String; Phost:Integer): Boolean;
begin
mTestoRec:=copy(pDados,3,length(pdados)-2);
result:=True;
end;

function TFrm_ExpMov.fRecebeCabArq(pDados: String; Phost:Integer): Boolean;
var
mNomeArq: String;
begin
mNomeArq :=copy(pDados,17,60);
Fs       := TFileStream.Create(trim(mPastaRec)+'\'+trim(mNomeArq),
                             fmCREATE or fmOPENWRITE);

if fExtensao(mNomeArq)='RET' then
   mArqExtra:=mArqExtra+1;
Mtamarq  :=StrToInt(copy(pdados,03,14));

mTipoArq :=True;
result:=True;
end;
function fExportar(pOrigem: Integer; pPasta, pNomArq: String): Boolean;
var
x: Integer;
begin
mTotTab    :=0;
mTabLid    :=0;
mTotReg    :=0;
mRegLid    :=0;
mTotGer_reg:=0;
if mGerarNovo then
   begin
   if Frm_ExpMov.cb_Cadpro.Checked then
      mTotTab:=mTotTab+4; // CADPRO,CADMPRO,CADGPRO,CADLGC
   if Frm_ExpMov.cb_ajuste.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.cb_balanco.Checked then
      mTotTab:=mTotTab+2;
   if Frm_ExpMov.cb_cadchq.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.cb_cheques_cp.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.cb_CadCli.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.cb_dupRec.Checked then
      mTotTab:=mTotTab+3;
   if Frm_ExpMov.cb_dupPag.Checked then
      mTotTab:=mTotTab+3;
   if Frm_ExpMov.CB_CADEST.Checked then
      mTotTab:=mTotTab+2;
   if Frm_ExpMov.cb_caixa.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.CB_CADNE.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.CB_CADNS.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.cb_PedCompras.Checked then
      mTotTab:=mTotTab+3;
   if Frm_ExpMov.cb_pedVendas.Checked then
      mTotTab:=mTotTab+7;
   if Frm_ExpMov.cb_cadmi01.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.CB_ACREM.Checked then
      mTotTab:=mTotTab+2;
   if Frm_ExpMov.cb_cadfor.Checked then
      mTotTab:=mTotTab+1;
   if Frm_ExpMov.cb_cadgru.Checked then
      mTotTab:=mTotTab+1;

   if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('SELECT MAX(EXP_LOTE) FROM CADEXPDAD ');
      DM1.Query1.Open;
      mlotEnv:=DM1.Query1.Fields[0].AsInteger+1;
      Frm_ExpMov.LOTE.Text:=InttoStr(mlotEnv);
      end;
   if ValInt(Frm_ExpMov.LOTE.Text)<=0 then
      begin
      Frm_ExpMov.LOTE.Text:='';
      mlotEnv  :=0;
      end
   else
      begin
      mlotEnv:=ValInt(Frm_ExpMov.LOTE.Text);
      end;
   if mTotTab<1 then
      begin
      if pOrigem=0 then
         MessageDlg('Para Efetuar a Exportação é preciso selecionar pelo menos uma tabela!',mtWarning,[mbOk],0)
      else
         fcriarEvento('Para Efetuar a Exportação é preciso selecionar pelo menos uma tabela!',Frm_ExpMov.LOTE.Text);
      result:=false;
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
   Frm_ExpMov.Panel1.Visible:=true;
   mEmpresas:='';
   mcinst:='';             
{   for x:=0 to high(ce_codempati) do
      begin
      mEmpresas:=mEmpresas+mcinst+ce_codempati[x];
      mcinst:='/';
      end;
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
      end;                                                  }
   if Frm_ExpMov.Table1.Active then Frm_ExpMov.Table1.Close;
   Frm_ExpMov.Table1.DatabaseName:=mpastaEnv;
   if Frm_ExpMov.cb_ajuste.Checked then
      begin
      mTabExp:='CADAJU';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'AJLEMAT',mLotEnv);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from CADAJU where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('AJLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
   // contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADAJU where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('AJLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
   // fim da contagem
         if not fCarregarTabela('CADAJU') then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'AJLEMAT',mLotEnv);
      end;
// tabela de cheques de clientes
   if Frm_ExpMov.cb_cadchq.Checked then
      begin
      mTabExp:='CADCHQ';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'CHLEMAT',mLotEnv);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('CHLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
   // contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('CHLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
   // fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'CHLEMAT',mLotEnv);

      end;
 // TABELA DE CHEQUES EMITIDOS

  if Frm_ExpMov.cb_cheques_cp.Checked then
      begin
      mTabExp:='CADCHCP';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('CHLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
   // contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('CHLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
  // fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'CHLEMAT',mLotEnv);

      end;

// TABELA DE CLIENTES ESSA IRA TODOS OS REGISTROS
   if Frm_ExpMov.cb_CadCli.Checked then
      begin
      mTabExp:='CADCLI';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADCLI','CCODEMP',Form_SelEmp.CLB_EMPRESAS);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp
                     +iif(la_Empresas='','',' where '+la_Empresas));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
   // contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp
                           +iif(la_Empresas='','',' where '+la_Empresas));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      end;

// tabelas de duplicatas a receber
// essa inclui tambem o fpcr e o fpcrdup

   if Frm_ExpMov.cb_dupRec.Checked then
      begin
      mTabExp:='CADDAR';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
          fUpdateTabela(mtabExp,la_Empresas,'CRLEMAT',mLotEnv);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('CRLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('CRLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'CRLEMAT',mLotEnv);

// ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCR';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'FPLEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'FPLEMAT',mLotEnv);



// ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCRDUP';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'FPLEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
   // contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
//    fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'FPLEMAT',mLotEnv);
      end;

// arquivos de duplicatas a pagar
// essa inclui tambem o fpcr e o fpcrdup

   if Frm_ExpMov.cb_dupPag.Checked then
      begin
      mTabExp:='CADDAP';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'CALEMAT',mLotEnv);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('CALEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('CALEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
//         fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'CALEMAT',mLotEnv);


// ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCP';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'FPLEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'FPLEMAT',mLotEnv);


// ARQUIVO DE FORMAS DE PAGAMENTOS DAS DUPLICATAS RECEBIDAS
      mTabExp:='FPCPDUP';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADFP','FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'FPLEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
 // contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('FPLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'FPLEMAT',mLotEnv);
      end;

// fim das duplicatas a pagar


// TABELA DE ESTOQUE
// ESSA Tabela ira o CADEST e o CADLGC E IRA ENVIAR TODOS OS REGISTROS SEM FILTROS DE LOTES
   if Frm_ExpMov.CB_CADEST.Checked then
      begin
      mTabExp:='CADEST';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADEST','CECODEMP',Form_SelEmp.CLB_EMPRESAS);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp
                     +iif(la_Empresas='','',' where '+la_Empresas));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
   // contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp
                           +iif(la_Empresas='','',' where '+la_Empresas));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
//    fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);

// CADASTRO DE GRADES
      mTabExp:='CADLGC';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADLGC','CLCODEMP',Form_SelEmp.CLB_EMPRESAS);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp
                     +iif(la_Empresas='','',' where '+la_Empresas));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp
                           +iif(la_Empresas='','',' where '+la_Empresas));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
   // fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      end;

// TABELA DE LANCAMENTOS DO CAIXA - FLUXO DE CAIXA
   if Frm_ExpMov.cb_caixa.Checked then
      begin
      mTabExp:='CADLDR';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'LEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
           exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'LEMAT',mLotEnv);

      end;

// CADASTRO DE NOTAS DE ENTRADAS
   if Frm_ExpMov.CB_CADNE.Checked then
      begin
      mTabExp:='CADNE';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADNE','NECODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'NELEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('NELEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('NELEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'NELEMAT',mLotEnv);
      end;

// CADASTRO DE NOTAS DE SAIDAS



   if Frm_ExpMov.CB_CADNS.Checked then
      begin
      mTabExp:='CADNS';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADNS','NSCODEMP',Form_SelEmp.CLB_EMPRESAS);      
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'NSLEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from '+mTabExp+' where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('NSLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
        DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from '+mTabExp+' where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('NSLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela(mTabExp) then
            exit;
         end;
      fExpMovLog(0);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'NSLEMAT',mLotEnv);
      end;
// INICIO DOS PEDIDOS DE COMPRAS

   if Frm_ExpMov.cb_pedCompras.Checked then
      begin
      mTabExp:='CADPF1';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'PF1LEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from CADPF1 where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('PF1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADPF1 where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('PF1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela('CADPF1') then
            exit;
         end;
      fExpMovLog(0);


// TABELA DE PEDIDOS CADPF1V
      mTabExp:='CADPF1V';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADPF1V where PF1VCODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin3(1,'CADPF1V','PF1VCODEMP','PF1CODEMP','PF1VLOTSEQ','PF1LOTSEQ','PF1VCHAVE','PF1CHAVE');
      // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +la_Empresas
                    +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('PF1LEMAT=0'+IntToStr(mlotEnv));

      DM1.Query1.Open;
      mTabExp:='CADPF1V';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +la_Empresas
                    +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('PF1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADPF1V') then
            exit;
         end;
      fExpMovLog(0);


// FIM DA TABELA DE PEDIDOS PF1V MERCADORIAS


// TABELA DE PEDIDOS 02 MERCADORIAS
      mTabExp:='CADPF2';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADPF2 where PF2CODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('PF1LEMAT=0'+IntToStr(mlotEnv));

      DM1.Query1.Open;
      mTabExp:='CADPF2';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                          +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('PF1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;

         if not fCarregarTabela('CADPF2') then
            exit;
         end;
      fExpMovLog(0);
      mTabExp:='CADPF1';
      if DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'PF1LEMAT',mLotEnv);

// FIM DA TABELA DE PEDIDOS 02 MERCADORIAS
      end;




// FIM DOS PEDIDOS DE COMPRAS



// tabela de Pedidos de Vendas
   if Frm_ExpMov.cb_pedVendas.Checked then
      begin
      mTabExp:='CADP01';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'P1LEMAT',mLotEnv);
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from CADP01 where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADP01';
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela('CADP01') then
            exit;
         end;
      fExpMovLog(0);


// TABELA DE PEDIDOS 01D
      mTabExp:='CADP01D';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADP01D where P1DCODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP01D','P1DCODEMP','P1CODEMP','P1DLOTSEQ','P1LOTSEQ','P1DCHAVE','P1CHAVE','P1DORDEM','P1ORDEM');
      // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADP01D';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +la_Empresas
                    +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADP01D') then
            exit;
         end;
      fExpMovLog(0);


// FIM DA TABELA DE PEDIDOS 01D MERCADORIAS



// TABELA DE PEDIDOS 01V
      mTabExp:='CADP01V';
      mTabGer:='';
     mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADP01V where P1VCODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP01V','P1VCODEMP','P1CODEMP','P1VLOTSEQ','P1LOTSEQ','P1VCHAVE','P1CHAVE','P1VORDEM','P1ORDEM');
     // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +la_Empresas
                    +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADP01V';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                          +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADP01V') then
            exit;
         end;
      fExpMovLog(0);


// FIM DA TABELA DE PEDIDOS 01V MERCADORIAS



// TABELA DE PEDIDOS 02 MERCADORIAS
      mTabExp:='CADP02';
      mTabGer:='';
      mQtdReg:=0;
      // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADP02 where P2CODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));

      DM1.Query1.Open;
      mTabExp:='CADP02';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADP02') then
            exit;
         end;
      fExpMovLog(0);


// FIM DA TABELA DE PEDIDOS 02 MERCADORIAS


// TABELA DE PEDIDOS 02D
      mTabExp:='CADP02D';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADP02D where P2DCODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP02D','P2DCODEMP','P1CODEMP','P2DLOTSEQ','P1LOTSEQ','P2DCHAVE','P1CHAVE','P2DORDEM','P1ORDEM');
        // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));

      DM1.Query1.Open;
      mTabExp:='CADP02D';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADP02D') then
            exit;
         end;
      fExpMovLog(0);


// FIM DA TABELA DE PEDIDOS 02D MERCADORIAS


// TABELA DE PEDIDOS 02S
      mTabExp:='CADP02S';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADP02S where P2SCODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
        end;

      DM1.Query1.SQL.Add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));

       DM1.Query1.Open;
      mTabExp:='CADP02S';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;

         if not fCarregarTabela('CADP02S') then
            exit;
         end;
      fExpMovLog(0);


// FIM DA TABELA DE PEDIDOS 02S MERCADORIAS




//******

// TABELA DE PEDIDOS FP
      mTabExp:='CADPFP';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADPFP where PFPCODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin3(1,'CADPFP','PFPCODEMP','P1CODEMP','PFPLOTSEQ','P1LOTSEQ','PFPCHAVE','P1CHAVE');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));

      DM1.Query1.Open;
      mTabExp:='CADPFP';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ') );
        DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;

        if not fCarregarTabela('CADPFP') then
            exit;
         end;
      fExpMovLog(0);


// FIM DA TABELA DE PEDIDOS FP

//******

// TABELA DE PEDIDOS CSF
      mTabExp:='CADCSF';
      mTabGer:='';
      mQtdReg:=0;
     // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADCSF where CFCODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin4(1,'CADCSF','CFCODEMP','P1CODEMP','CFLOTSEQ','P1LOTSEQ','CFCHAVEP','P1CHAVE','CFORDEMP','P1ORDEM');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADCSF';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +la_Empresas
                        +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('P1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADCSF') then
            exit;
         end;
      fExpMovLog(0);
      mTabExp:='CADP01';
      if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.cb_deletar.Checked then
         fDeletaTabela(mTabExp,la_Empresas,'P1LEMAT',mLotEnv);

// FIM DA TABELA DE PEDIDOS 02S MERCADORIAS
      end;


// tabela de balanço
   if Frm_ExpMov.cb_balanco.Checked then
      begin
      mTabExp:='CADBAL01';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('B1CODEMP',Form_SelEmp.CLB_EMPRESAS);
      if Frm_ExpMov.rg_tpExp.ItemIndex=0 then
         fUpdateTabela(mtabExp,la_Empresas,'B1LEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from CADBAL01 where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('B1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADBAL01';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADBAL01 where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('B1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADBAL01') then
            exit;
         end;
      fExpMovLog(0);

// TABELA DE BALANCO
      mTabExp:='CADBAL02';
      mTabGer:='';
      mQtdReg:=0;
      // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADBAL02 where B2CODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin(1,'CADBAL02','B2CODEMP','B1CODEMP','B2CHAVE','B1CHAVE');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADBAL01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('B1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADBAL02';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADBAL01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('B1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADBAL02') then
            exit;
         end;
      fExpMovLog(0);
      end;
// FIM DA TABELA DE REDUÇOES Z


// tabela de Reduçoes Z
   if Frm_ExpMov.cb_cadmi01.Checked then
      begin
      mTabExp:='CADMI01';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if DM1.Qr_Tid.Locate('TINOME','CADECF',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('CMCODEMP',Form_SelEmp.CLB_EMPRESAS);
      fUpdateTabela(mtabExp,la_Empresas,'CMLEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from CADMI01 where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('CMLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADMI01';
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADMI01 where '+la_Empresas
                           +iif(la_Empresas='','',' and ') );
        DM1.Query3.SQL.Add('CMLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela('CADECF') then
            exit;
         end;
      fExpMovLog(0);

// TABELA DE PEDIDOS 01D
      mTabExp:='CADMI02';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADMI02 where CM2CODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin3(1,'CADMI02','CM2CODEMP','CMCODEMP','CM2CODIMP','CMCODIMP','CM2DATA','CMDATA');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADMI01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('CMLEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADMI02';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADMI01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +la_Empresas
                 +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('CMLEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADMI02') then
            exit;
         end;
      fExpMovLog(0);
      end;
// FIM DA TABELA DE REDUÇOES Z


// tabela do acerto de remessa
   if Frm_ExpMov.CB_ACREM.Checked then
      begin
      mTabExp:='CADACRE01';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:=fEmpresas_Selecionadas('CADACRE01','AR1CODEMP',Form_SelEmp.CLB_EMPRESAS);

      fUpdateTabela(mtabExp,la_Empresas,'AR1LEMAT',mLotEnv);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from CADACRE01 where '+la_Empresas
                        +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('AR1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADACRE01';
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADACRE01 where '+la_Empresas
                          +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('AR1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela('CADACRE01') then
            exit;
         end;
      fExpMovLog(0);

// TABELA DE PEDIDOS 01D
      mTabExp:='CADACRE02';
      mTabGer:='';
      mQtdReg:=0;
   // somente para buscar os nomes dos campos atuais
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.add('Select * from CADACRE02 where AR2CODEMP is null');
      DM1.Query2.Open;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      fInnerJoin(1,'CADACRE02','AR2CODEMP','AR1CODEMP','AR2CHAVE','AR1CHAVE');
   // nome dos campos a serem selecionados
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to DM1.Query2.FieldCount-1 do
         begin
         DM1.Query1.SQL.add(mcinst+DM1.Query2.Fields[x].FieldName);
         mcinst:=',';
         end;

      DM1.Query1.SQL.Add(' from CADACRE01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +la_Empresas
                    +iif(la_Empresas='','',' and ') );
      DM1.Query1.SQL.Add('AR1LEMAT=0'+IntToStr(mlotEnv));
      DM1.Query1.Open;
      mTabExp:='CADACRE02';
      if not DM1.Query1.Eof then
         begin
         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADACRE01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +la_Empresas
                    +iif(la_Empresas='','',' and ') );
         DM1.Query3.SQL.Add('AR1LEMAT=0'+IntToStr(mlotEnv));
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mTotGer_reg:=mTotGer_reg+mTotReg;
         mRegLid:=0;
         if not fCarregarTabela('CADACRE02') then
            exit;
         end;
      fExpMovLog(0);
      end;

// fim da tabela de acerto de remessa


   if Frm_ExpMov.cb_Cadpro.Checked then
      begin
      mTabExp:='CADPRO';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('PDCODEMP',Form_SelEmp.CLB_EMPRESAS);

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
      if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('MPCODEMP',Form_SelEmp.CLB_EMPRESAS);

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
      if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('GPCODEMP',Form_SelEmp.CLB_EMPRESAS);

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

// CADLGC        mascara das grades
      mTabExp:='CADLGC';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
         la_Empresas:=''
      else
          la_Empresas:=fla_sqlmp('CLCODEMP',Form_SelEmp.CLB_EMPRESAS);

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.SQL.Add('Select * from CADLGC '
                     +iif(la_Empresas='','',' where ')+la_Empresas);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         begin
// contagem do registro
         DM1.Query3.Close;
         DM1.Query3.Sql.Clear;
         DM1.Query3.SQL.Add('Select count(*) from CADLGC '
                        +iif(la_Empresas='','',' where ')+la_Empresas);
         DM1.Query3.Open;
         mTotReg:=DM1.Query3.Fields[0].AsInteger;
         mRegLid:=0;
// fim da contagem
         if not fCarregarTabela('CADLGC') then
            exit;
         end;
      fExpMovLog(0);


      end;
// TABELA DE FORNECEDORES
   if Frm_ExpMov.cb_cadfor.Checked then
      begin
      mTabExp:='CADFOR';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if DM1.Qr_Tid.Locate('TINOME','CADFOR',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('FCODEMP',Form_SelEmp.CLB_EMPRESAS);

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
//    fim da contagem
         if not fCarregarTabela('CADFOR') then
            exit;
         end;
      fExpMovLog(0);

      end;


// TABELA DE GRUPOS DE PRODUTOS
   if Frm_ExpMov.cb_cadgru.Checked then
      begin
      mTabExp:='CADGRU';
      mTabGer:='';
      mQtdReg:=0;
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      if DM1.Qr_Tid.Locate('TINOME','CADGRU',[]) then
         la_Empresas:=''
      else
         la_Empresas:=fla_sqlmp('GRCODEMP',Form_SelEmp.CLB_EMPRESAS);
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
      mTotGer_reg:=mTotGer_reg+mTotReg;
      mRegLid:=0;
   // fim da contagem
      if not fCarregarTabela('CADEXPDAD') then
         exit;
      end;
   Frm_ExpMov.Table1.Close;
   // fim dos resumos das tabelas enviadas

   Frm_ExpMov.zip.AddPath:=mpastaEnv;
   if mExpMov_Origem=0 then
      Frm_ExpMov.zip.filename :=mpastaEnv+'EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'
   else if mExpMov_Origem=1 then
      Frm_ExpMov.zip.filename :=mpastaEnv+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP';
   Frm_ExpMov.zip.Password :='BKPINTERSYS';
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
      Frm_ExpMov.zip.FileSpecList.Add(mpastaEnv+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.*');
      DM1.Query2.Next;
      end;
   Frm_ExpMov.zip.FileSpecList.Add(mpastaEnv+'CADEXPDAD_'+FormatFloat('00000',mlotEnv)+'.*');
   Frm_ExpMov.zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
   Frm_ExpMov.zip.add;            //DO IT HERE!!!
   if mExpMov_Origem=0 then
      Frm_ExpMov.zip.ZipComment := 'EXPORTACAO'
   else if mExpMov_Origem=1 then
      Frm_ExpMov.zip.ZipComment := 'EXPORTACAO_DADOS';
   DM1.Query2.First;
   While not DM1.Query2.Eof do
      begin
      if trim(DM1.Query2.fieldbyName('EXP_TABGER').AsString)='' then
         begin
         DM1.Query2.Next;
         Continue;
         end;
      DeleteFile(mpastaEnv+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.db');
      DeleteFile(mpastaenv+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.mb');
      DeleteFile(mpastaenv+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.YG0');
      DeleteFile(mpastaenv+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.XG0');
      DeleteFile(mpastaenv+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.PX');
      DM1.Query2.Next;
      end;
   deletefile(mpastaEnv+'CADEXPDAD_'+FormatFloat('00000',mlotEnv)+'.db');
   deletefile(mpastaEnv+'CADEXPDAD_'+FormatFloat('00000',mlotEnv)+'.mb');
   if mExpMov_Origem=0 then
      AssignFile(f,mpastaEnv+'BKP\EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID')
   else if mExpMov_Origem=1 then
      AssignFile(f,mpastaEnv+'BKP\EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID');
   rewrite(f);
   WriteLn(f,'EM',Formatfloat('00000',codemp)
          +insere2(DM1.Tb_EmpRAZAO.Value,' ',40)
          +'00'
          +insere(FormatFloat('0',mlotEnv),'0',10)
          +insere(FormatFloat('0',mTotGer_reg),'0',10));
   closefile(f);
   if mExpMov_Origem=0 then
      begin
      CopyFile(pchar(mpastaEnv+'BKP\EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID'),pchar(mpastaEnv+'\EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID'),true);
      CopyFile(pchar(mpastaEnv+'EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),pchar(mpastaEnv+'BKP\EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),true)
      end
   else if mExpMov_Origem=1 then
      begin
      CopyFile(pchar(mpastaEnv+'BKP\EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID'),pchar(mpastaEnv+'\EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID'),true);
      CopyFile(pchar(mpastaEnv+'EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),pchar(mpastaEnv+'BKP\EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'),true);
      end;
   end;

if Frm_ExpMov.Rg_Destino.ItemIndex=2 then
   begin
   mcinst:='00'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+insere2(DM1.Tb_EmpRAZAO.Value,' ',60);
   if not fExpMovConecta_Remoto(1,Frm_ExpMov.ENDIP.Text,mcinst) then
      begin
      Result:=false;
      exit;
      end;
//   mcinst:='00'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+insere2(DM1.Tb_EmpRAZAO.Value,' ',60);
//   if not fExpMovEnviarTexto(1,mcinst) then
//      begin
//      Result:=false;
//      exit;
//      end;
   if mExpMov_Origem=0 then
      mNomeArq:='EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'
   else if mExpMov_Origem=1 then
      mNomeArq:='EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP';
   if not fExpMovEnviarArq(1,mpastaEnv,mNomeArq) then
      begin
      Result:=false;
      exit;
      end;
   if mExpMov_Origem=0 then
      mNomeArq:='EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID'
   else if mExpMov_Origem=1 then
      mNomeArq:='EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID';
   if not fExpMovEnviarArq(1,mpastaEnv,mNomeArq) then
      begin
      Result:=false;
      exit;
      end;
   Frm_ExpMov.ClientSocket1.Close;
   end
else if Frm_ExpMov.Rg_Destino.ItemIndex=0 then
   begin
   if mExpMov_Origem=0 then
      mNomeArq:='EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ZIP'
   else if mExpMov_Origem=1 then
      mNomeArq:='EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ZIP';
   Frm_ExpMov.zip.Filename:=mpastaEnv+mNomeArq;
   Frm_ExpMov.zip.SpanArchiveTo('a:\'+extractfilename(Frm_ExpMov.zip.Filename),0,0);
   if mExpMov_Origem=0 then
      mNomeArq:='EXPMOV_LT'+FormatFloat('00000',mlotEnv)+'.ID'
   else if mExpMov_Origem=1 then
      mNomeArq:='EXPCAD_LT'+FormatFloat('00000',mlotEnv)+'.ID';
   CopyFile(pchar(mpastaEnv+mNomeArq),pchar('A:'+mNomeArq),True);

   if not fExpMovEnviarArq(1,mpastaEnv,mNomeArq) then
      begin
      Result:=false;
      exit;
      end;
   Frm_ExpMov.ClientSocket1.Close;
   end;

if Frm_ExpMov.Panel1.Visible then
   Frm_ExpMov.Panel1.Visible:=false;

result:=true;
end;

function FAguardaResp(ptipo: Integer): Boolean;
begin
mAgResp:=true;
mhorai:=Time;
While (mAgResp) and (Frm_ExpMov.ClientSocket1.Active) do
    begin
    if ptipo=0 then
       begin
       if (time-mhorai)>StrToTime(mTimeOut01) then
          begin
          MessageDlg('Tempo Limite Esgotado!',mtWarning,[mbOk],0);
          result:=False;
          exit;
          end
       end
    else if ptipo=1 then
       begin
       if (time-mhorai)>StrToTime(mTimeOut02) then
          begin
          MessageDlg('Tempo Limite Esgotado!',mtWarning,[mbOk],0);
          result:=False;
          exit;
          end
       end;
    verteclado(0);
    end;
if Frm_ExpMov.ClientSocket1.Active then
   result:=True
else
   result:=False;
end;

function fExpMovConecta_Remoto(pTipo: Integer; pEndIp,pIdentif: STring): Boolean;
begin
if mSimula then
   begin
   result:=true;
   exit;
   end;
if not Frm_ExpMov.ClientSocket1.Active then
   begin
   Frm_ExpMov.ClientSocket1.Host  :=pEndIp;
   try
      Frm_ExpMov.ClientSocket1.Active:=True;
   except
      MessageDlg('Não Foi Possível Conectar  ao  Servidor Remoto'+#13
                +'Verifique se esta conectado na internet  e  se'+#13
                +'o endereco IP esta Correto, e tente novamente!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
if not Frm_ExpMov.ClientSocket1.Active then
   begin
//lindomar
   magResp:=true;
   mhorai:=Time;
   While (mAgResp) and not (Frm_ExpMov.ClientSocket1.Active) do
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         MessageDlg('Tempo Limite Esgotado!',mtWarning,[mbOk],0);
         result:=false;
         exit;
         end;
      verteclado(0);
      end;
   end;
if not fExpMovEnviarTexto(1,pIdentif) then
  begin
  Result:=false;
  exit;
  end;
result:=true;
end;

function fExpMovEnviarArq(ptipo: Integer; pPasta, pArqEnv: String): Boolean;
begin
if mSimula then
   begin
   result:=true;
   exit;
   end;
Fs :=TFileStream.Create(pPasta+pArqEnv, fmOPENREAD);
mavisaqueda:=True;
mTamArq :=fs.Size;
mReceb:=0;
if not fexpmovEnviarTexto(1,'02'+Formatfloat('00000000000000',mtamarq)+insere2(pArqEnv,' ',60)) then
   begin
   result:=false;
   exit;
   end;
Frm_ExpMov.ClientSocket1.Socket.SendStream(Fs);
if not FAguardaResp(1) then
   begin
   result:=false;
   exit;
   end;
mavisaqueda:=False;
result:=true;
end;

function fExpMovEnviarTexto(ptipo: Integer; pTexto: String): Boolean;
begin
if mSimula then
   begin
   result:=true;
   exit;
   end;
Frm_ExpMov.ClientSocket1.Socket.SendText(pTexto);
if not FAguardaResp(0) then
   begin
   Frm_ExpMov.ClientSocket1.Close;
   result:=false;
   exit;
   end;
result:=true;

end;

function fExpMovCad_Mov(ptipo: Integer; pCad, pMov:Boolean): Boolean;
begin
Frm_ExpMov.cb_Cadpro.Checked:=pCad;
Frm_ExpMov.cb_Cadfor.Checked:=pCad;
Frm_ExpMov.cb_cadgru.Checked:=pCad;

Frm_ExpMov.cb_ajuste.checked    :=pMov;
Frm_ExpMov.cb_balanco.Checked   :=pMov;
Frm_ExpMov.cb_cadchq.Checked    :=pMov;
Frm_ExpMov.cb_cheques_cp.Checked:=pMov;
Frm_ExpMov.cb_CadCli.Checked    :=pMov;
Frm_ExpMov.cb_dupRec.Checked    :=pMov;
Frm_ExpMov.cb_dupPag.Checked    :=pMov;
Frm_ExpMov.CB_CADEST.Checked    :=pMov;
Frm_ExpMov.cb_caixa.Checked     :=pMov;
Frm_ExpMov.CB_CADNE.Checked     :=pMov;
Frm_ExpMov.CB_CADNS.Checked     :=pMov;
Frm_ExpMov.cb_PedCompras.Checked:=pMov;
Frm_ExpMov.cb_pedVendas.Checked :=pMov;
Frm_ExpMov.cb_cadmi01.Checked   :=pMov;
result:=true;
end;
{

function FAguardaArquivo(ptipo: Integer): Boolean;
var
mEspera: Boolean;
begin
mEspera:=True;
mhorai:=Time;
Frm_Server_Transf.FileListBox2.Directory:=mPastaRec;
While (mEspera) and (Frm_ExpMov.ClientSocket1.Active) do
    begin
    if ptipo=0 then
       begin
       if (time-mhorai)>StrToTime(mTimeOut01) then
          begin
          MessageDlg('Tempo Limite Esgotado!',mtWarning,[mbOk],0);
          result:=False;
          exit;
          end
       end
    else if ptipo=1 then
       begin
       if (time-mhorai)>StrToTime(mTimeOut02) then
          begin
          MessageDlg('Tempo Limite Esgotado!',mtWarning,[mbOk],0);
          result:=False;
          exit;
          end
       end;
   Frm_Server_Transf.FileListBox2.Update;
   if Frm_Server_Transf.FileListBox2.Items.Count>0 then
      begin
      mEspera:=False;
      end;
    verteclado(0);
    end;
if Frm_ExpMov.ClientSocket1.Active then
   result:=True
else
   result:=False;
end;
}
function FAguardaArquivo(ptipo: Integer): Boolean;
begin
mhorai:=Time;
While not (mConcluiu_transmissao) and (Frm_ExpMov.ClientSocket1.Active) do
   begin
   if ptipo=0 then
      begin
      if (time-mhorai)>StrToTime(mTimeOut01) then
         begin
         MessageDlg('Tempo Limite Esgotado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      end
   else if ptipo=1 then
      begin
      if (time-mhorai)>StrToTime(mTimeOut02) then
         begin
         MessageDlg('Tempo Limite Esgotado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      end;
   verteclado(0);
   end;
if Frm_ExpMov.ClientSocket1.Active then
   result:=True
else
   result:=False;
end;
function TFrm_ExpMov.FCriarTriggers(ptipo: Integer): Boolean;
// esta trigger é para deletar os registros relacionados que
// nao possui o numero do lote de envio ou qualquer referencia
begin
// PEDIDO DE COMPRA
if pbanco=0 then
   begin
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADPF1_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADPF1 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF1V where PF1VCODEMP=:OLD.PF1CODEMP ');
   Qr_Triggers.SQL.add('                     and PF1VLOTSEQ=:OLD.PF1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and PF1VCHAVE =:OLD.PF1CHAVE;  ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF2  where PF2CODEMP=:OLD.PF1CODEMP ');
   Qr_Triggers.SQL.add('                     and PF2LOTSEQ=:OLD.PF1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and PF2CHAVE =:OLD.PF1CHAVE;  ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
      Qr_Triggers.ExecSQL;
      fdm1StartCommit;
   except
      //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
      end;


// FIM DO PEDIDO DE COMPRA

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADP01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADP01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP01D where P1DCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P1DLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P1DCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P1DORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP01V where P1VCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P1VLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P1VCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P1VORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP02 where P2CODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P2LOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P2CHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P2ORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP02D where P2DCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P2DLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P2DCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P2DORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP02S where P2SCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P2SLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P2SCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P2SORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPFP where PFPCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and PFPLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and PFPCHAVE =:OLD.P1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCSF where CFCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and CFLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CFCHAVEP =:OLD.P1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;
   // TABELA DE BALANCO
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADBAL_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADBAL01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADBAL02 where B2CODEMP=:OLD.B1CODEMP ');
   Qr_Triggers.SQL.add('                     and B2CHAVE=:OLD.B1CHAVE; ');

   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   // TABELA DE CUPOONS FISCAIS
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADMI01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADMI01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADMI02 where CM2CODEMP=:OLD.CMCODEMP ');
   Qr_Triggers.SQL.add('                     and CM2CODIMP=:OLD.CMCODIMP ');
   Qr_Triggers.SQL.add('                     and CM2DATA  =:OLD.CMDATA; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;
   end
else
   begin
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADPF1_TRIG_TMP01 FOR CADPF1 ');
   Qr_Triggers.SQL.Add(' AFTER DELETE AS ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF1V where PF1VCODEMP=:OLD.PF1CODEMP ');
   Qr_Triggers.SQL.add('                     and PF1VLOTSEQ=:OLD.PF1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and PF1VCHAVE =:OLD.PF1CHAVE;  ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF2  where PF2CODEMP=:OLD.PF1CODEMP ');
   Qr_Triggers.SQL.add('                     and PF2LOTSEQ=:OLD.PF1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and PF2CHAVE =:OLD.PF1CHAVE;  ');
   Qr_Triggers.SQL.add('END;');
   try
      Qr_Triggers.ExecSQL;
      fdm1StartCommit;
   except
      //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
      end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADP01_TRIG_TMP01 FOR CADP01');
   Qr_Triggers.SQL.Add(' AFTER DELETE AS ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP01D where P1DCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P1DLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P1DCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P1DORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP01V where P1VCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P1VLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P1VCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P1VORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP02 where P2CODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P2LOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P2CHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P2ORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP02D where P2DCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P2DLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P2DCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P2DORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADP02S where P2SCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and P2SLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and P2SCHAVE =:OLD.P1CHAVE  ');
   Qr_Triggers.SQL.add('                    and P2SORDEM  =:OLD.P1ORDEM; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPFP where PFPCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and PFPLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and PFPCHAVE =:OLD.P1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCSF where CFCODEMP=:OLD.P1CODEMP ');
   Qr_Triggers.SQL.add('                     and CFLOTSEQ=:OLD.P1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CFCHAVEP =:OLD.P1CHAVE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;
   // TABELA DE BALANCO
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADBAL_TRIG_TMP01 FOR CADBAL01 ');
   Qr_Triggers.SQL.Add(' AFTER DELETE AS ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADBAL02 where B2CODEMP=:OLD.B1CODEMP ');
   Qr_Triggers.SQL.add('                     and B2CHAVE=:OLD.B1CHAVE; ');

   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   // TABELA DE CUPOONS FISCAIS
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADMI01_TRIG_TMP01 FOR CADMI01 ');
   Qr_Triggers.SQL.Add(' AFTER DELETE AS ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADMI02 where CM2CODEMP=:OLD.CMCODEMP ');
   Qr_Triggers.SQL.add('                     and CM2CODIMP=:OLD.CMCODIMP ');
   Qr_Triggers.SQL.add('                     and CM2DATA  =:OLD.CMDATA; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;
   end;
result:=true;

end;

function TFrm_ExpMov.Fdeletatriggers (ptipo: Integer): Boolean;
//  esta trigger é para deletar os triggers temporarias
begin
// PEDIDO DE COMPRA
Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADPF1_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Deletar Trigges',mtWarning,[mbOk],0);
  end;


// FIM DO PEDIDO DE COMPRA
Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADP01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao DELETAR Trigges',mtWarning,[mbOk],0);
  end;

// TABELA DE BALANCO
Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADBAL_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao DELETAR Trigges',mtWarning,[mbOk],0);
  end;


// TABELA DE CUPOONS FISCAIS
Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADMI01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao DELETAR Trigges',mtWarning,[mbOk],0);
  end;
result:=true;

end;

procedure TFrm_ExpMov.bbImpExistenteClick(Sender: TObject);
begin
Application.CreateForm(TFrm_ImpMov_Importados, Frm_ImpMov_Importados);
Frm_ImpMov_Importados.ShowModal;
Frm_ImpMov_Importados.Free;

end;

procedure TFrm_ExpMov.bbExpExistentesClick(Sender: TObject);
begin
Application.CreateForm(TFrm_ExpMov_Exportados, Frm_ExpMov_Exportados);
Frm_ExpMov_Exportados.ShowModal;
Frm_ExpMov_Exportados.Free;

end;

procedure TFrm_ExpMov.STG_PEDClick(Sender: TObject);
begin
colclick:=STG_PED.col;
rowclick:=STG_PED.Row;

end;

procedure TFrm_ExpMov.STG_PEDSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
if (arow<=0) or (rowclick<=0) then
   exit;
if (colclick=0) and (acol=1) then
   begin
   if trim(STG_PED.Cells[colclick,rowclick])='' then
      exit;
   STG_PED.Cells[colclick,rowclick]:=fdeixanum(STG_PED.Cells[colclick,rowclick]);
   if not flcadp01(9,0,0,Trim(STG_PED.Cells[colclick,rowclick]),'') then
      begin
      MessageDlg('Pedido não cadastrado!',mtWarning,[mbOk],0);
      abort;
      end
   else
      begin
      STG_PED.Cells[01,rowclick]:=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
      STG_PED.Cells[02,rowclick]:=DM1.Tb_Ped01nomcli.Value;
      STG_PED.Cells[03,rowclick]:=Formatfloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
      STG_PED.Cells[04,rowclick]:=tab_tped[DM1.Tb_Ped01P1TIPO.Asinteger];
      if (STG_PED.Row+1)=STG_PED.RowCount then
         begin
         STG_PED.RowCount:=STG_PED.RowCount+1;
         STG_PED.Rows[STG_PED.Row+1].Clear;
         with STG_PED do
            begin
            col:=00;
            row:=STG_PED.Row+1;
            colclick:=Col;
            rowclick:=row;
            SetFocus;
            end;
         abort;
         end;
      end;
   end;


end;

function TFrm_ExpMov.FGerarArqPed(ptipo: Integer; pPasta: String): Boolean;

var
x: Integer;
f: TextFile;
MnomeArqSai,mlinha: String;
begin

{
fiz algo errado aqui os lotseq nao existe nem os cadp01d e cadpfp
 layout do arquivo de exporta ção de pedido
CAMPO    TIPO   TAMANHO   POSICAO   POSICAO
                          INICIAL    FINAL   FORMATO
IDENTIF   NUMBER   02        001       002   00-Valor Fixo cabecalho
CODEMP    NUMBER   05        003       007   ZEROS A ESQUERDA
CHAVE     NUMBER   10        008       017   ZEROS A ESQUERDA
ORDEM     NUMBER   03        018       020   ZEROS A ESQUERDA
CODCLI    NUMBER   10        021       030   ZEROS A ESQUERDA
DATAPED   DATE     08        031       038   YYYYMMDD
OBS       VARCHAR  40        039       078
PDESC01   NUMBER   07        079       085   COM 2 DECIMAIS E SEM O PONTO
PDESC02   NUMBER   07        086       092   COM 2 DECIMAIS E SEM O PONTO
PDESC03   NUMBER   07        093       099   COM 2 DECIMAIS E SEM O PONTO
TOTDESC   NUMBER   15        100       114   COM 2 DECIMAIS E SEM O PONTO
TOTLIQ    NUMBER   15        115       129   COM 2 DECIMAIS E SEM O PONTO
DATANF    DATE     08        130       137   YYYYMMDD
NUMNF     NUMBER   10        138       147   ZEROS A ESQUERDA
MODELONF  VARCHAR  02        148       149   MODELO NF
SERIE     VARCHAR  02        150       151   SERIE NF
SUBSERIE  VARCHAR  02        152       153   SUB-SERIE NF
TOTFRE    NUMBER   15        154       168   COM 2 DECIMAIS E SEM O PONTO
TOTIPI    NUMBER   15        169       183   COM 2 DECIMAIS E SEM O PONTO
TOTIPIFRE NUMBER   15        184       198   COM 2 DECIMAIS E SEM O PONTO
TIPOFRE   NUMBER   01        199       199   1-CIF 2-FOB
CODBCO    NUMBER   05        200       204   CODIGO DO BANCO 00000-CARTEIRA
DESCVLR   NUMBER   15        205       219   COM 2 DECIMAIS E SEM O PONTO
ISENTAS   NUMBER   15        220       234   COM 2 DECIMAIS E SEM O PONTO
OUTRAS    NUMBER   15        235       249   COM 2 DECIMAIS E SEM O PONTO
DATACF    DATE     08        250       257   YYYYMMDD
NUMNF     NUMBER   10        258       267   ZEROS A ESQUERDA
CODECF    NUMBER   05        268       272   ZEROS A ESQUERDA
VALFRE    NUMBER   15        273       287   COM 2 DECIMAIS E SEM O PONTO
CNPJ      NUMBER   14        288       301   COM 2 DECIMAIS E SEM O PONTO
LOTSEQ    NUMBER   10        302       311   ZEROS A ESQUERDA

 layout do arquivo de exporta ção de pedido
CAMPO    TIPO   TAMANHO   POSICAO   POSICAO
                          INICIAL    FINAL   FORMATO
IDENTIF   NUMBER   02        001       002   01-Valor Fixo
CODEMP    NUMBER   05        003       007   ZEROS A ESQUERDA
CHAVE     NUMBER   10        008       017   ZEROS A ESQUERDA
ORDEM     NUMBER   03        018       020   ZEROS A ESQUERDA

ITEM      NUMBER   10        021       030   ZEROS A ESQUERDA
CODPRO    NUMBER   14        031       044   ZEROS A ESQUERDA
LOTE      VARCHAR  20        045       064
DTVCTO    DATE     08        065       072   FORMATO YYYYMMDD
QTDP      NUMBER   15        073       087   3 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
PRECOU    NUMBER   15        088       102   3 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
DESC01    NUMBER   06        103       108   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
DESC02    NUMBER   06        109       114   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
DESC03    NUMBER   06        115       120   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
DESVLR    NUMBER   15        121       135   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
TOTDES    NUMBER   15        136       150   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
SITTRI    VARCHAR  03        151       153   000, 010, ETC...
BASEN     NUMBER   15        154       168   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
ALIQ      NUMBER   06        169       174   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
ICMSN     NUMBER   15        175       190   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
BASER     NUMBER   15        190       204   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
ICMSR     NUMBER   15        205       219   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
LISTA     NUMBER   01        220       220   Lista do Produto 0-Inalterada, 1-Positiva 2-Negativa
ISENTAS   NUMBER   15        218       235   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
OUTRAS    NUMBER   15        236       250   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
ALIQIPI   NUMBER   06        251       256   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
VLRIPI    NUMBER   15        257       271   2 DECIMAIS E COM ZEROS A ESQUERDA SEM PONTO
CFOP      NUMBER   04        272       275
LOTSEQ    NUMBER   10        276       285   ZEROS A ESQUERDA



 layout do arquivo de exporta ção de pedido
CAMPO    TIPO   TAMANHO   POSICAO   POSICAO
                          INICIAL    FINAL   FORMATO
IDENTIF   NUMBER   02        001       002   02 VALOR FIXO
CODEMP    NUMBER   05        003       007   ZEROS A ESQUERDA
CHAVE     NUMBER   10        008       017   ZEROS A ESQUERDA
ORDEM     NUMBER   03        018       020   ZEROS A ESQUERDA
NUMERO    NUMBER   10        021       030   ZEROS A ESQUERDA
DESD      NUMBER   02        031       032
VALOR     NUMBER   15        033       047   VALOR COM 2 DECIMAIS SEM PONTOS E ZEROS A ESQUERDA
DTVCTO    DATE     08        048       055   FORMATO YYYYMMDD
VLRDESC   NUMBER   15        056       070   VALOR COM 2 DECIMAIS SEM PONTOS E ZEROS A ESQUERDA
DTPAG     DATE     08        071       078   FORMATO YYYYMMDD
LOTSEQ    NUMBER   10        079       088   ZEROS A ESQUERDA




 layout do arquivo de exporta ção de pedido CADP01D
CAMPO      TIPO   TAMANHO   POSICAO   POSICAO
                            INICIAL    FINAL   FORMATO
IDENTIF    NUMBER   02        001       002   03 VALOR FIXO
CODEMP     NUMBER   05        003       007   ZEROS A ESQUERDA
CHAVE      NUMBER   10        008       017   ZEROS A ESQUERDA
ORDEM      NUMBER   03        018       020   ZEROS A ESQUERDA
LOTSEQ     NUMBER   10        021       030   ZEROS A ESQUERDA

CHAVE_ORI  NUMBER   10        031       040   ZEROS A ESQUERDA
ORDEM_ORI  NUMBER   10        041       050   ZEROS A ESQUERDA
LOTSEQ_ORI NUMBER   10        051       060   ZEROS A ESQUERDA
CODEMP     NUMBER   10        061       070   ZEROS A ESQUERDA
DATAP      DATE     08        071       078   FORMATO YYYYMMDD


 layout do arquivo de exporta ção de pedido CADPFP
CAMPO      TIPO   TAMANHO   POSICAO   POSICAO
                            INICIAL    FINAL   FORMATO
IDENTIF    NUMBER   02        001       002   04 VALOR FIXO
CODEMP     NUMBER   05        003       007   ZEROS A ESQUERDA
LOTSEQ     NUMBER   10        008       017   ZEROS A ESQUERDA
CHAVE      NUMBER   10        018       027   ZEROS A ESQUERDA
SEQ        NUMBER   10        028       037   ZEROS A ESQUERDA
FORMA      NUMBER   03        038       040   ZEROS A ESQUERDA
DATAP      DATE     08        041       048   FORMATO YYYYMMDD
NUMDOC     STRING   20        049       068   ZEROS A ESQUERDA
BANCO      NUMBER   05        069       073   ZEROS A ESQUERDA
SERIE      STRING   20        074       093   ZEROS A ESQUERDA
VALOR      NUMBER   15        094       108   VALOR COM 2 DECIMAIS SEM PONTOS E ZEROS A ESQUERDA
CC         STRING   20        109       128
COMP       STRING   05        129       134
AGENCIA    STRING   08        135       142
EMITENTE   STRING   40        143       182





}
if mGerarNovo then
   begin
   MnomeArqSai:='EXPPED_LT'+FormatFloat('00000',mlotEnv);
   AssignFile(f,pPasta+MnomeArqSai+'.TXT');
   rewrite(f);
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
                  +','+'1'
                  +','+IntTostr(mlotEnv)
                  +','+chr(39)+IntToStr(codemp)+chr(39)
                  +','+chr(39)+'CADP01'+chr(39)
                  +','+chr(39)+MnomeArqSai+'.TXT'+chr(39)
                  +','+IntTostr(STG_PED.RowCount-1)
                  +','+IntToStr(Frm_ExpMov.Rg_Destino.ItemIndex)
                  +','+chr(39)+mpastaEnv+chr(39)
                  +','+chr(39)+FormatDatetime(fdt, Date)+chr(39)
                  +')');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2999,'Frm_ExpMov','CADEXPDAD');
      result:=false;
     end;
   for x:=1 to STG_PED.RowCount do
      begin
      if Trim(STG_PED.Cells[0,x])='' then
         Continue;
      DM1.Query2.Close;
      DM1.Query2.sQL.Clear;
      DM1.Query2.sQL.Add('Select * from CADP01 where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+InttoStr(codemp)+' and ')
                        +' P1CHAVE=0'+trim(STG_PED.Cells[0,x]));
      DM1.Query2.Open;
      While not DM1.Query2.Eof do
         begin
         mlinha:='00';
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1CODEMP').AsFloat,5,0);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1CHAVE').AsFloat,10,0);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1ORDEM').AsFloat,3,0);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1CODCLI').AsFloat,10,0);
         mlinha:=mlinha+FormatDateTime('yyyymmdd',DM1.Query2.FieldbyName('P1DATAP').AsDateTime);
         mlinha:=mlinha+insere2(DM1.Query2.FieldbyName('P1OBS1').AsString,' ',40);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1DESC01').AsFloat,07,2);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1DESC02').AsFloat,07,2);
         mlinha:=mlinha+FormataValores(0,07,2);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1TOTDES').AsFloat,15,2);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1TOTALL').AsFloat,15,2);
         mlinha:=mlinha+FormatDateTime('yyyymmdd',DM1.Query2.FieldbyName('P1DATANF').AsDateTime);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1NUMNF').AsFloat,10,0);
         mlinha:=mlinha+insere2(DM1.Query2.FieldbyName('P1MODELO').AsString,' ',02);
         mlinha:=mlinha+insere2(DM1.Query2.FieldbyName('P1SERIE').AsString,' ',02);
         mlinha:=mlinha+insere2(DM1.Query2.FieldbyName('P1SUBSER').AsString,' ',02);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1VALFRE').AsFloat,15,2);
         mlinha:=mlinha+FormataValores((DM1.Query2.FieldbyName('P1IPIINA').AsFloat
                                        +DM1.Query2.FieldbyName('P1IPIPOS').AsFloat
                                        +DM1.Query2.FieldbyName('P1IPINEG').AsFloat),15,2);
         mlinha:=mlinha+FormataValores(0,15,2);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1FRETEPC').AsFloat,01,00);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1BANCO').AsFloat,05,00);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1VLRDES').AsFloat,15,02);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1TOTISE').AsFloat,15,02);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1TOTOUT').AsFloat,15,02);
         mlinha:=mlinha+FormatDateTime('yyyymmdd',DM1.Query2.FieldbyName('P1DATACF').AsDateTime);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1NUMCF').AsFloat,10,0);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1CODECF').AsFloat,05,0);
         mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1VALFRE').AsFloat,15,2);
         mlinha:=mlinha+FormataValores(DM1.Tb_EmpCGC.Value,14,0);
//         mlinha:=mlinha+FormataValores(DM1.Query2.fieldbyName('P1LOTSEQ').AsFloat,10,0);
         Writeln(f,mlinha);
         DM1.Query3.Close;
         DM1.Query3.sql.Clear;
         DM1.Query3.Sql.Add('Select * from CADP02 where '
                           +' P2CODEMP=0'+DM1.Query2.fieldbyName('P1CODEMP').AsString
                           +' and P2LOTSEQ=0'+DM1.Query2.fieldbyName('P1LOTSEQ').AsString
                           +' and P2CHAVE=0'+DM1.Query2.fieldbyName('P1CHAVE').AsString
                           +' and P2ORDEM=0'+DM1.Query2.fieldbyName('P1ORDEM').AsString
                           +' order by P2ITEM');
         DM1.Query3.Open;
         While not DM1.Query3.Eof do
            begin
            mlinha:='01';
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2CODEMP').AsFloat,5,0);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2CHAVE').AsFloat,10,0);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ORDEM').AsFloat,03,0);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ITEM').AsFloat,10,0);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2CODPRO').AsFloat,14,0);
            mlinha:=mlinha+insere2(DM1.Query3.FieldbyName('P2LOTE').AsString,' ',20);
            mlinha:=mlinha+FormatDateTime('yyyymmdd',DM1.Query3.FieldbyName('P2DTVCTO').AsDateTime);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2QTD').AsFloat,15,03);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2PRECO').AsFloat,15,03);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2DESC1').AsFloat,06,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2DESC2').AsFloat,06,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2DESC3').AsFloat,06,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2VALDES').AsFloat,15,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2TOTDES').AsFloat,15,02);
            mlinha:=mlinha+insere2(DM1.Query3.FieldbyName('P2SIT').AsString,' ',03);
            if DM1.Query3.FieldbyName('P2BASEN').AsFloat>0 then
               begin
               mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2BASEN').AsFloat,15,02);
               mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ALIQ').AsFloat,06,02);
               mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ICMSN').AsFloat,15,02);
               end
            else
               begin
               mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2BCINR').AsFloat,15,02);
               mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ALIQNR').AsFloat,06,02);
               mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ICMSNR').AsFloat,15,02);
               end;
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2BASER').AsFloat,15,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ICMSR').AsFloat,15,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2LISTA').AsFloat,01,00);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ISENTAS').AsFloat,15,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2TOTOUT').AsFloat,15,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2ALIPI').AsFloat,06,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2VALIPI').AsFloat,15,02);
            mlinha:=mlinha+FormataValores(DM1.Query3.FieldbyName('P2CFO').AsFloat,04,00);
            Writeln(f,mlinha);
            DM1.Query3.Next;
            end;

         DM1.Query4.Close;
         DM1.Query4.sql.Clear;
         DM1.Query4.Sql.Add('Select * from CADP01V where '
                        +' P1VCODEMP=0'+DM1.Query2.fieldbyName('P1CODEMP').AsString
                        +' and P1VLOTSEQ=0'+DM1.Query2.fieldbyName('P1LOTSEQ').AsString
                        +' and P1VCHAVE=0'+DM1.Query2.fieldbyName('P1CHAVE').AsString
                        +' and P1VORDEM=0'+DM1.Query2.fieldbyName('P1ORDEM').AsString
                        +' order by P1VDATAV');
         DM1.Query4.Open;
         While not DM1.Query4.Eof do
            begin
            mlinha:='02';
            mlinha:=mlinha+FormataValores(DM1.Query4.FieldbyName('P1VCODEMP').AsFloat,5,0);
            mlinha:=mlinha+FormataValores(DM1.Query4.FieldbyName('P1VCHAVE').AsFloat,10,0);
            mlinha:=mlinha+FormataValores(DM1.Query4.FieldbyName('P1VORDEM').AsFloat,03,0);
            mlinha:=mlinha+FormataValores(DM1.Query2.FieldbyName('P1NUMNF').AsFloat,10,0);
            mlinha:=mlinha+insere2(chr(64+DM1.Query4.FieldbyName('P1VSEQ').AsInteger),' ',2);
            mlinha:=mlinha+FormataValores(DM1.Query4.FieldbyName('P1VVALOR').AsFloat,15,2);
            mlinha:=mlinha+FormatDateTime('yyyymmdd',DM1.Query4.FieldbyName('P1VDATAV').AsDateTime);
            mlinha:=mlinha+FormataValores(DM1.Query4.FieldbyName('P1VDESCF').AsFloat,15,2);
            mlinha:=mlinha+FormatDateTime('yyyymmdd',DM1.Query4.FieldbyName('P1VDTDESCF').AsDateTime);
            Writeln(f,mlinha);
            DM1.Query4.Next;
            end;
         DM1.Query2.Next;
         end;
      end;
   closefile(f);
   Frm_ExpMov.zip.AddPath:=mpastaEnv;
   Frm_ExpMov.zip.filename :=mpastaEnv+MnomeArqSai+'.ZIP';
   Frm_ExpMov.zip.Password :='BKPINTERSYS';
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
      Frm_ExpMov.zip.FileSpecList.Add(mpastaEnv+DM1.Query2.fieldbyName('EXP_TABGER').AsString+'.*');
      DM1.Query2.Next;
      end;
   Frm_ExpMov.zip.FileSpecList.Add(mpastaEnv+MnomeArqSai+'.*');
   Frm_ExpMov.zip.AddOptions := [aoUpdate]; //overwrites existing files if they are older
   Frm_ExpMov.zip.add;            //DO IT HERE!!!
   Frm_ExpMov.zip.ZipComment := 'EXPORTACAO_PED';
   DM1.Query2.First;
   While not DM1.Query2.Eof do
      begin
      if trim(DM1.Query2.fieldbyName('EXP_TABGER').AsString)='' then
         begin
         DM1.Query2.Next;
         Continue;
         end;
      DeleteFile(mpastaEnv+DM1.Query2.fieldbyName('EXP_TABGER').AsString);
      DM1.Query2.Next;
      end;
   AssignFile(f,mpastaEnv+'BKP\'+MnomeArqSai+'.ID');
   rewrite(f);
   WriteLn(f,'EM',Formatfloat('00000',codemp)
   +insere2(DM1.Tb_EmpRAZAO.Value,' ',40)
   +'02'
   +insere(FormatFloat('0',mlotEnv),'0',10)
    +insere(FormatFloat('0',mTotGer_reg),'0',10));
   closefile(f);
   CopyFile(pchar(mpastaEnv+'BKP\'+MnomeArqSai+'.ID'),pchar(mpastaEnv+MnomeArqSai+'.ID'),true);
   CopyFile(pchar(mpastaEnv+MnomeArqSai+'.ZIP'),pchar(mpastaEnv+'BKP\'+MnomeArqSai+'.ZIP'),true);
   end;
if Frm_ExpMov.Rg_Destino.ItemIndex=2 then
   begin
   mcinst:='00'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+insere2(DM1.Tb_EmpRAZAO.Value,' ',60);
   if not fExpMovConecta_Remoto(1,Frm_ExpMov.ENDIP.Text,mcinst) then
      begin
      Result:=false;
      exit;
      end;
//   mcinst:='00'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+insere2(DM1.Tb_EmpRAZAO.Value,' ',60);
//   if not fExpMovEnviarTexto(1,mcinst) then
//      begin
//    Result:=false;
//    exit;
//    end;
   mNomeArq:=MnomeArqSai+'.ZIP';
   if not fExpMovEnviarArq(1,mpastaEnv,mNomeArq) then
      begin
      Result:=false;
      exit;
      end;
   mNomeArq:=MnomeArqSai+'.ID';
   if not fExpMovEnviarArq(1,mpastaEnv,mNomeArq) then
      begin
      Result:=false;
      exit;
      end;
   Frm_ExpMov.ClientSocket1.Close;
   end;
result:=true;
end;
procedure TFrm_ExpMov.bbExcEtiClick(Sender: TObject);
var
x: Integer;
begin
if (trim(STG_PED.Cells[00,STG_PED.Row])='') or (STG_PED.Row=0) then
   exit;
mcinst:='Quer Realmente excluir o pedido '+#13
       +STG_PED.Cells[00,STG_PED.Row]+'/'+STG_PED.Cells[01,STG_PED.Row];
if fmensagem(pchar(mcinst),0,['1','2'],2)<>mryes then
   exit;
if STG_PED.RowCount=2 then
   begin
   STG_PED.Rows[1].Clear;
   STG_PED.Rows[2].Clear;
   end
else
   begin
   for x:=STG_PED.Row to STG_PED.RowCount-2 do
      begin
      STG_PED.Cells[00,x]:=STG_PED.Cells[00,x+1];
      STG_PED.Cells[01,x]:=STG_PED.Cells[01,x+1];
      STG_PED.Cells[02,x]:=STG_PED.Cells[02,x+1];
      STG_PED.Cells[03,x]:=STG_PED.Cells[03,x+1];
      STG_PED.Cells[04,x]:=STG_PED.Cells[04,x+1];
      STG_PED.Cells[05,x]:=STG_PED.Cells[05,x+1];
      end;
   STG_PED.RowCount:=STG_PED.RowCount-1;
   end;

end;

procedure TFrm_ExpMov.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
mcriar: Boolean;
begin
if not DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EXPMOV','ENDIP']),[]) then
   mcriar:=true
else
   begin
   if ENDIP.Text<>DM4.Tb_filpadFPVALOR.value then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Delete From FILPAD where FPCODUSR=0'+IntToStr(codusr)
                        +' and FPCOMP='+chr(39)+'ENDIP'+chr(39)+' and FPFORM='+chr(39)+'_EXPMOV'+chr(39));
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
                     +chr(39)+'_EXPMOV'+chr(39)+')');
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
mcriar:=false;

if not DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EXPMOV','PASTA']),[]) then
   mcriar:=true
else
   begin
   if PASTA.Text<>DM4.Tb_filpadFPVALOR.value then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Delete From FILPAD where FPCODUSR=0'+IntToStr(codusr)
                        +' and FPCOMP='+chr(39)+'PASTA'+chr(39)+' and FPFORM='+chr(39)+'_EXPMOV'+chr(39));
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
                     +chr(39)+'PASTA'+chr(39)+','
                     +chr(39)+'Text'+chr(39)+','
                     +chr(39)+PASTA.Text+chr(39)+','
                     +chr(39)+'_EXPMOV'+chr(39)+')');
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
end;

procedure TFrm_ExpMov.LOTEExit(Sender: TObject);
begin
{
if Trim(LOTE.Text)<>'' then
   begin
   if not FileExists(LOTE.Text) then
      begin
      MessageDlg('Lote não Encontrado!',mtWarning,[mbOk],0);
      LOTE.SetFocus;
      end;
   end;
if not lowercase(fExtensao(LOTE.Text)<>)'zip' then
   begin
   MessageDlg('Opção válida somente para arquivos do tipo zip!',mtWarning,[mbOk],0);
   LOTE.SetFocus;
   exit;
   end;
}
end;

procedure TFrm_ExpMov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ExpMov.FormKeyDown(Sender: TObject; var Key: Word;
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
