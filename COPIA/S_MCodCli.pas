unit S_MCodCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, S_DM1, db, dbtables, func, S_Agde,lerarq;

type
  TFrm_MCodCli = class(TForm)
    bbEfetivar: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    CODCLI: TEdit;
    NCODCLI: TEdit;
    CCODCLI: TEdit;
    NNOMCLI: TEdit;
    NOMCLI: TEdit;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CCODCLIExit(Sender: TObject);
    procedure bbEfetivarClick(Sender: TObject);
    procedure NCODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CCODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure NCODCLIExit(Sender: TObject);
    procedure CODCLIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa:  String;pCampo_Somar: array of string):Boolean;
var
  Frm_MCodCli: TFrm_MCodCli;

implementation

{$R *.DFM}

procedure TFrm_MCodCli.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MCodCli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Ped',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_MCodCli.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.text);
if bbSair.Focused then
   exit;
if not flcadcli(1,0,CODCLI.Text) then
   begin
   if fmensagem('Este Cliente Não Existe Quer Continuar?',0,['1','2'],2)=mrYES then
      NOMCLI.Text:='Produto Inexistente'
   else
      begin
      MessageDlg('Favor Selecionar um Código Válido!',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      end;
   end
else
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
end;

procedure TFrm_MCodCli.CCODCLIExit(Sender: TObject);
begin
bbEfetivar.Enabled:=True;
if not NCODcli.Focused then
   bbEfetivar.SetFocus;
end;

procedure TFrm_MCodCli.bbEfetivarClick(Sender: TObject);
var
msaldo: Real;
mCampo_Chave,mCampo_Empresa: String;
mCampo_Manter, mCampo_Somar: Array of String;

x, mQtdArray: Integer;
begin
bbEfetivar.Enabled:=False;

if (Trim(NCODCLI.Text)='') or (Trim(CCODCLI.Text)='') then
   begin
   MessageDlg('Favor digitar um Código Valido!',mtWarning,[mbOk],0);
   NCODCLI.SetFocus;
   exit;
   abort;
   end;
if Trim(NCODCLI.Text)<>Trim(CCODCLI.Text) then
   begin
   MessageDlg('Novo Código diferente da Confirmação!',mtWarning,[mbOk],0);
   CCODCLI.SetFocus;
   exit;
   end;
if fsonumero(CODCLI.Text)=fsonumero(NCODCLI.Text) then
   begin
   MessageDlg('Código do Cliente tem que ser diferente no novo Código!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   exit;
   end;

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Aguarde. Efetuando Troca de Códigos!';
Frm_Agde.Label1.Update;
Frm_Agde.Show;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCHQ SET CHCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CHCODEMP='+IntToStr(codemp)+' and ')
                  +' CHCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 122 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADP01 SET P1CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' P1CODEMP='+IntToStr(codemp)+' and ')
                  +' P1CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 122 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPEN SET PECODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' PECODEMP='+IntToStr(codemp)+' and ')
                  +' PECODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 135 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CONTATO SET CTCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CTCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CTCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 122 ao Trocar Codigos de clientes!',mtError,[mbOk],0);
   exit;
   end;

   
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCL02 SET CL2CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CL2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CL2CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 189 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update FPCRDUP SET FPCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' FPCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 200 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update FPCR SET FPCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' FPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' FPCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 209 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADLC1 SET LC1_CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' LC1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' LC1_CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 186 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CARCOB SET CCCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CCCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CCCODCLI=0'+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 199 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADTAX SET TXCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' TXCODEMP=0'+IntToStr(codemp)+' and ')
                  +' TXCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 199 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADDAR SET CRCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CRCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CRCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 227 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADGNRE01 SET GN1CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' GN1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' GN1CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 236 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOS01 SET OS1CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' OS1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OS1CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 236 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCSER01 SET CS_CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CS_CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 236 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCSER02 SET CS2_CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CS2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CS2_CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 236 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;



DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADDUPREC SET DPCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' DPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' DPCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 333 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;
{
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADACRE01 SET AR1CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' OR1CODEMP=0'+IntToStr(codemp)+' and ')
                  +' AR1CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 346 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;
}
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADNS SET NSCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                  +' NSCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 358 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADTRO_CAB SET TCCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' TCCODEMP=0'+IntToStr(codemp)+' and ')
                  +' TCCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 372 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADTRO_ORI SET TOCODCLI_CP_DEV='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' TOCODEMP=0'+IntToStr(codemp)+' and ')
                  +' TOCODCLI_CP_DEV='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 385 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADLBR2 SET LB2CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' LB2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' LB2CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 398 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADBLQ SET BQCODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' BQCODEMP=0'+IntToStr(codemp)+' and ')
                  +' BQCODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 411 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADREMBCO SET RECODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' RECODEMP=0'+IntToStr(codemp)+' and ')
                  +' RECODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 425 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADLSEN SET LSCODCLI_DOC='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' LSCODEMP=0'+IntToStr(codemp)+' and ')
                  +' LSCODCLI_DOC='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 439 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCON02 SET C02CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' C02CODEMP=0'+IntToStr(codemp)+' and ')
                  +' C02CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 452 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;



DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCON02 SET C02CODCLI='+Trim(NCODCLI.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' C02CODEMP=0'+IntToStr(codemp)+' and ')
                  +' C02CODCLI='+Trim(CODCLI.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 452 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADLDR SET CODIGO='+Trim(NCODCLI.Text)
                  +' ,NOME=:NOME '
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CODIGO='+Trim(CODCLI.Text)
                  +' and TIPO='+chr(39)+'CL'+chr(39));
dm1.Query1.parambyname('NOME').asstring := copy(NNOMCLI.TEXT,1,60);

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 452 ao Trocar Codigos de Clientes!',mtError,[mbOk],0);
   exit;
   end;

// cadFCLI
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   mCampo_Empresa:='CF_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CF_CODCLI';

if not fAgruparItems('CADFCLI',CODCLI.Text,NCODCLI.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadFCLI



// cadFCLI
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   mCampo_Empresa:='CI_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CI_CODCLI';

if not fAgruparItems('CADICLI',CODCLI.Text,NCODCLI.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadICLI


// cadCLI_REFBAN
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   mCampo_Empresa:='RB_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='RB_CODCLI';

if not fAgruparItems('CADCLI_REFBAN',CODCLI.Text,NCODCLI.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadCLI_REFBAN



// cadCLI_REFPES
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   mCampo_Empresa:='RP_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='RP_CODCLI';

if not fAgruparItems('CADCLI_REFPES',CODCLI.Text,NCODCLI.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadCLI_REFPES



// cadCLI_BENS
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   mCampo_Empresa:='CB_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CB_CODCLI';

if not fAgruparItems('CADCLI_BENS',CODCLI.Text,NCODCLI.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadCLI_BENS

// cadCLI_OUTINF
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   mCampo_Empresa:='OI_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='OI_CODCLI';

if not fAgruparItems('CADCLI_OUTINF',CODCLI.Text,NCODCLI.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadCLI_OUTINF




// cadCLI
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   mCampo_Empresa:='CCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CCODCLI';

if not fAgruparItems('CADCLI',CODCLI.Text,NCODCLI.Text,mcampo_chave,mCampo_Empresa
             ,mCampo_Somar) then
   exit;

// termino cadCLI




Frm_Agde.Free;
Frm_Agde:=nil;
CODCLI.Text:='';
NCODCLI.Text:='';
CCODCLI.Text:='';
NOMCLI.Text:='';
NNOMCLI.Text:='';

end;

procedure TFrm_MCodCli.NCODCLIKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
       begin
      CODCLI.Text:=fChamaCli(0,'Frm_MCodCli',key);
      key:=#0;
      end;

end;

procedure TFrm_MCodCli.CCODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_MCodCli.NCODCLIExit(Sender: TObject);
var
nome: String;
begin
NCODCLI.Text:=fdeixanum2(NCODCLI.text);
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(NCODCLI.Text)) then
   begin
   NNOMCLI.Text:=DM1.Query1.Fields[0].AsString;
   nome:='Este Código é do Cliente:'+DM1.Query1.Fields[0].AsString+#13
        +'Quer Continuar e Efetivar a Troca?';
   if fmensagem(pchar(nome),0,['1','2'],2)<>mrYES then
      begin
      NCODCLI.Text:='';
      NCODCLI.SetFocus;
      exit;
      end;
   end
else
   NNOMCLI.Text:='';
end;

function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa:  String;pCampo_Somar: array of string):Boolean;
var
x: Integer;
begin
DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Select Count(*) from '+pTabela+' where ');
if Trim(pCampo_Empresa)<>'' then
   begin
   DM1.Query1.Sql.add(pCampo_Empresa+' and ');
   end;
DM1.Query1.Sql.add(pCampo_Chave+'='+pCodAnt);
try
   DM1.Query1.Open;
except
   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if DM1.query1.Fields[0].AsInteger<1 then
   begin
   result:=true;
   exit;
   end;

DM1.Query1.close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Select Count(*) from '+pTabela+' where ');
if Trim(pCampo_Empresa)<>'' then
   begin
   DM1.Query1.Sql.add(pCampo_Empresa+' and ');
   end;
DM1.Query1.Sql.add(pCampo_Chave+'='+pCodNov);
try
   DM1.Query1.Open;
except
   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
   result:=false;
   exit;
   end;
if DM1.query1.Fields[0].AsInteger<1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Update '+pTabela+' set '+pcampo_chave+'='+pCodNov);
   DM1.Query1.SQL.Add(' where ');
   if Trim(pCampo_Empresa)<>'' then
      DM1.Query1.SQL.add(pCampo_Empresa+' and ');
   DM1.Query1.SQL.add(pCampo_Chave+'='+pCodAnt);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
      MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
      result:=false;
      exit;
      end;
   end
else
   begin
   if high(pcampo_somar)>0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      DM1.Query2.SQL.Add('Select ');
      mcinst:='';
      for x:=0 to high(pCampo_Somar)-1 do
         begin
         DM1.Query2.SQL.Add(mcinst+' sum(decode('+pCampo_Somar[x]+',null,0,'+pCampo_Somar[x]+')) as '+pCampo_Somar[x]);
         mcinst:=',';
         end;
      DM1.Query2.SQL.Add(' from '+pTabela+' where ');
      if Trim(pCampo_Empresa)<>'' then
         DM1.Query2.SQL.add(pCampo_Empresa+' and ');
      DM1.Query2.SQL.add('('+pCampo_Chave+'='+pCodAnt);
      DM1.Query2.SQL.add(' or '+ pCampo_Chave+'='+pCodNov+')');
      try
         DM1.Query2.Open;
      except
         DM1.Query2.SQL.SaveToFile('c:\sql.txt');
         MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
         result:=false;
         exit;
         end;

      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Update '+pTabela+' set ');
      mcinst:='';
      for x:=0 to high(pCampo_Somar)-1 do
         begin
         DM1.Query1.SQL.Add( mcinst+pCampo_Somar[x]+'='+mudavp(DM1.Query2.Fields[x].AsString));
         mcinst:=',';
         end;
      DM1.Query1.SQL.Add(' where ');
      if Trim(pCampo_Empresa)<>'' then
         DM1.Query1.SQL.add(pCampo_Empresa+' and ');
      DM1.Query1.SQL.add(pCampo_Chave+'='+pCodNov);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query1.SQL.SaveToFile('c:\sql.txt');
         MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
         result:=false;
         exit;
         end;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from '+pTabela);
   DM1.Query1.SQL.Add(' where ');
   if Trim(pCampo_Empresa)<>'' then
      DM1.Query1.SQL.add(pCampo_Empresa+' and ');
   DM1.Query1.SQL.add(pCampo_Chave+'='+pCodAnt);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
      MessageDlg('Erro ao Ler arquivo!',mtError,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
result:=true;
end;

procedure TFrm_MCodCli.CODCLIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113)  then
   CODCLI.Text:=fChamaCli(0,'Frm_MCodCli','');

end;

procedure TFrm_MCodCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
