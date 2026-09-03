unit S_MCodP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, S_DM1, S_Pro, db, dbtables, func, S_Agde,lerarq, s_lerarq_geral;

type
  TFrm_MCodP = class(TForm)
    bbEfetivar: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    CODPRO: TEdit;
    NCODPRO: TEdit;
    CCODPRO: TEdit;
    NNOMPRO: TEdit;
    NOMPRO: TEdit;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure CCODPROExit(Sender: TObject);
    procedure bbEfetivarClick(Sender: TObject);
    procedure NCODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CCODPROKeyPress(Sender: TObject; var Key: Char);
    procedure NCODPROExit(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa,pCampo_Filial:  String;pCampo_Somar,pCampo_grupo: array of string):Boolean;

var
  Frm_MCodP: TFrm_MCodP;

implementation

uses func_excecoes, StrUtils;

{$R *.DFM}

procedure TFrm_MCodP.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MCodP.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
       begin
      CODPRO.Text:=fChamaPro(0,'Frm_MCodP',key);
      key:=#0;
      end;

end;

procedure TFrm_MCodP.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.text);
if bbSair.Focused then
   exit;
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   if fmensagem('Este Produto Não Existe Quer Continuar?',0,['1','2'],2)=mrYES then
      NOMPRO.Text:='Produto Inexistente'
   else
      begin
      fmensagem('Favor Selecionar um Código Válido!',0,['0'],0);
      CODPRO.SetFocus;
      end;
   end
else
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
end;

procedure TFrm_MCodP.CCODPROExit(Sender: TObject);
begin
bbEfetivar.Enabled:=True;
if not NCODPRO.Focused then
   bbEfetivar.SetFocus;
end;

procedure TFrm_MCodP.bbEfetivarClick(Sender: TObject);
var
msaldo: Real;
mCampo_Chave,mCampo_Empresa,mCampo_Filial: String;
mCampo_Manter, mCampo_Somar, mCampo_Grupo: Array of String;

x, mQtdArray: Integer;
begin
flcadpro(1,0,0,CODPRO.Text);
dm1.Tb_Pro.Edit;
fpro01gant(8);
dm1.Tb_Pro.Post;
bbEfetivar.Enabled:=False;

if (Trim(NCODPRO.Text)='') or (Trim(CCODPRO.Text)='') then
   begin
   fmensagem('Favor digitar um Código Valido!',0,['0'],0);
   NCODPRO.SetFocus;
   exit;
   abort;
   end;






if Trim(NCODPRO.Text)<>Trim(CCODPRO.Text) then
   begin
   fmensagem('Novo Código diferente da Confirmação!',0,['0'],0);
   CCODPRO.SetFocus;
   exit;
   end;
if fsonumero(CODPRO.Text)=fsonumero(NCODPRO.Text) then
   begin
   fmensagem('Código do Produto tem que ser diferente no novo Código!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;
if Frm_Agde=nil then
   Application.CreateForm(TFrm_Agde, Frm_Agde);




Frm_Agde.Label1.Caption:='Ajustando historicos anteriores! aguarde...';
Frm_Agde.Show;
Frm_Agde.Update;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADAGRU_PRO ('
                  +'AGP_CODEMP, '
                  +'AGP_CODPRO_ANT, '
                  +'AGP_DESCRICAO_ANT,'
                  +'AGP_UND_ANT,'
                  +'AGP_PRECO_ANT, '
                  +'AGP_QTD_ANT, '
                  +'AGP_CODPRO_NOV,'
                  +'AGP_DESCRICAO_NOV,'
                  +'AGP_UND_NOV,'
                  +'AGP_PRECO_NOV,'
                  +'AGP_QTD_NOV,'
                  +'AGP_CODUSR,'
                  +'AGP_DATHOR'
                  +') values ('
                  +':AGP_CODEMP, '
                  +':AGP_CODPRO_ANT, '
                  +':AGP_DESCRICAO_ANT,'
                  +':AGP_UND_ANT,'
                  +':AGP_PRECO_ANT, '
                  +':AGP_QTD_ANT, '
                  +':AGP_CODPRO_NOV,'
                  +':AGP_DESCRICAO_NOV,'
                  +':AGP_UND_NOV,'
                  +':AGP_PRECO_NOV,'
                  +':AGP_QTD_NOV,'
                  +':AGP_CODUSR,'
                  +':AGP_DATHOR'
                  +')');

DM1.Query2.ParamByName('AGP_CODEMP').AsInteger      :=codemp;
DM1.Query2.ParamByName('AGP_CODPRO_ANT').AsFloat    :=FSONUMERO(CODPRO.Text);
DM1.Query2.ParamByName('AGP_DESCRICAO_ANT').AsString:=NOMPRO.Text;
DM1.Query2.ParamByName('AGP_UND_ANT').AsString      :='';
DM1.Query2.ParamByName('AGP_PRECO_ANT').AsFloat     :=0;
DM1.Query2.ParamByName('AGP_QTD_ANT').AsFloat       :=0;
DM1.Query2.ParamByName('AGP_CODPRO_NOV').AsFloat    :=fsonumero(NCODPRO.Text);
DM1.Query2.ParamByName('AGP_DESCRICAO_NOV').AsString:=NNOMPRO.Text;
DM1.Query2.ParamByName('AGP_UND_NOV').AsString      :='';
DM1.Query2.ParamByName('AGP_PRECO_NOV').AsFloat     :=0;
DM1.Query2.ParamByName('AGP_QTD_NOV').AsFloat       :=0;
DM1.Query2.ParamByName('AGP_CODUSR').AsFloat        :=codusr;
DM1.Query2.ParamByName('AGP_DATHOR').AsDateTime     :=Now;



if flqr1('PDNOME,PDSALDO,PDPRECO1,PDUND','PD','CADPRO','N','PDCODPRO',Trim(CODPRO.Text)) then
   begin
   DM1.Query2.ParamByName('AGP_UND_ANT').AsString      :=DM1.Query1.fieldbyName('PDUND').AsString;
   DM1.Query2.ParamByName('AGP_PRECO_ANT').AsFloat     :=DM1.Query1.fieldbyName('PDPRECO1').AsFloat;
   DM1.Query2.ParamByName('AGP_QTD_ANT').AsFloat       :=DM1.Query1.fieldbyName('PDSALDO').AsFloat;
   end;

if flqr1('PDNOME,PDSALDO,PDPRECO1,PDUND','PD','CADPRO','N','PDCODPRO',Trim(NCODPRO.Text)) then
   begin
   DM1.Query2.ParamByName('AGP_UND_NOV').AsString      :=DM1.Query1.fieldbyName('PDUND').AsString;
   DM1.Query2.ParamByName('AGP_PRECO_NOV').AsFloat     :=DM1.Query1.fieldbyName('PDPRECO1').AsFloat;
   DM1.Query2.ParamByName('AGP_QTD_NOV').AsFloat       :=DM1.Query1.fieldbyName('PDSALDO').AsFloat;
   end;

try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
//   ex_erroSql_Novo(DM1.Query2,203,'s_mcodp','CADAGRU_PRO');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADAJU SET AJCODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' AJCODEMP='+IntToStr(codemp)+' and ')
                  +' AJCODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADP02 SET P2CODPRO='+Trim(NCODPRO.Text)
                  +',P2NOMPRO_ORI=:NOME '
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' P2CODEMP='+IntToStr(codemp)+' and ')
                  +' P2CODPRO='+Trim(CODPRO.Text));
DM1.query1.ParamByName('NOME').AsString:=COPY(NNOMPRO.Text,1,60);

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPF2 SET PF2CODPRO='+Trim(NCODPRO.Text));
if Trim(NNOMPRO.Text)<>'' then
  DM1.query1.SQL.Add(', PF2NOMPRO='+chr(39)+trim(NNOMPRO.Text)+chr(39));
DM1.query1.SQL.Add(' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PF2CODEMP='+IntToStr(codemp)+' and ')
                  +' PF2CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCOMP SET CPCODPRO='+Trim(NCODPRO.Text));
DM1.query1.SQL.Add(' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CPCODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCOMP SET CPCODMAT='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CPCODMAT='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCOMP SET CPCODPRO_ACAB='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CPCODPRO_ACAB='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;



DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADSGPRO SET SGPCODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' SGPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' SGPCODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADSGPRO_ANO SET SGPACODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' SGPACODEMP=0'+IntToStr(codemp)+' and ')
                  +' SGPACODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPROC02 SET CP_CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP_CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPROC02 SET CP_CODPRO_EMPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP_CODPRO_EMPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPROC SET CP_CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP_CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

   
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPPR SET PPCODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PPCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PPCODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPGEN SET PGCODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PGCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PGCODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except

   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADPEN SET PECODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' PECODEMP=0'+IntToStr(codemp)+' and ')
                  +' PECODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOS02 SET OS2CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OS2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OS2CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOP02 SET OP2_CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP2_CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOS03 SET OS3CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OS3CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OS3CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOS04 SET OS4CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OS4CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OS4CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOS05 SET OS5CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OS5CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OS5CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOS05D SET OS5DCODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OS5DCODEMP=0'+IntToStr(codemp)+' and ')
                  +' OS5DCODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADLC2 SET LC2_CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' LC2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' LC2_CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADCSER02 SET CS2_CODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CS2_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CS2_CODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADTRO_ENT SET TECODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' TECODEMP=0'+IntToStr(codemp)+' and ')
                  +' TECODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

// INICIO

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADOP03 SET OP3_CODMAT='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' OP3_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' OP3_CODMAT='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


// TERMINIO


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.query1.SQL.Add('Update CADTRO_SAI SET TSCODPRO='+Trim(NCODPRO.Text)
                  +' Where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' TSCODEMP=0'+IntToStr(codemp)+' and ')
                  +' TSCODPRO='+Trim(CODPRO.Text));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

mCampo_Chave:='';
mCampo_Somar:=nil;
mCampo_Grupo:=nil;
SetLength(mcampo_Somar,1);

SetLength(mCampo_Grupo,1);
mcampo_Grupo[00]:='CEFILIAL';

if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CECODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CECODPRO';


mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CESALDO';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CESALDOR';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CESALDOC';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CESALDOT';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CEENTPEN';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CESALDO_PRAT';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CESALDO_DEP';

mCampo_Filial:='CEFILIAL';


if not fAgruparItems('CADEST',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;




// cadlgc

mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CLCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CLCODPRO';


mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CLQTD';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CLQTDC';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CLQTDR';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CLQTDT';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CLQTD_PRAT';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='CLQTD_DEP';


SetLength(mCampo_Grupo,3);
mcampo_Grupo[00]:='CLNUMERO';
mcampo_Grupo[01]:='CLDTVCTO';
mcampo_Grupo[02]:='CLFILIAL';

mCampo_Filial:='CLFILIAL';

if not fAgruparItems('CADLGC',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;

mCampo_Grupo:=nil;

// termino cadlgc




// codpfor
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='PFCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='PFCODPRO';


mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PFSALDO';

SetLength(mCampo_Grupo,3);
mcampo_Grupo[00]:='PFCODFOR';
mcampo_Grupo[01]:='PFCODPFOR';
mcampo_Grupo[02]:='';


mCampo_Filial:='';

if not fAgruparItems('CODPFOR',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;
mCampo_Grupo:=nil;


// termino CODPFOR


// CADPRO_CODBAR
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);


if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CBCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CBCODPRO';


mCampo_Filial:='';

if not fAgruparItems('CADPRO_CODBAR',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;




// CADCUS
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CUCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CUCODIGO';



mCampo_Filial:='';
if not fAgruparItems('CADCUS',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;




// termino CADCUS


// CADCUS2
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CUCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CUCODIGO';


mCampo_Filial:='';
if not fAgruparItems('CADCUS2',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;

// termino CADCUS2

// CADGPRO
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='GPCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='GPCODPRO';

mCampo_Filial:='';

if not fAgruparItems('CADGPRO',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;

// termino CADGPRO


// CADEGD
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CED_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CED_CODPRO';

SetLength(mCampo_Grupo,3);
mcampo_Grupo[00]:='CED_MES';
mcampo_Grupo[01]:='CED_ANO';
mcampo_Grupo[02]:='CED_FILIAL';


DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select * from CADEGD where  ');
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   DM1.Query1.SQL.Add(' CED_CODEMP=0'+IntToStr(codemp)+' and ');
DM1.Query1.SQL.Add(' CED_CODPRO=0');
DM1.Query1.Open;
for x:=0 to DM1.Query1.FieldCount-1 do
   begin
   if ( UpperCase( copy(DM1.Query1.fields[x].FieldName,1,10) )='CED_QTDDIA' )  then
//   if ( UpperCase( copy(DM1.Query1.fields[x].FieldName,1,10) )='CED_QTDDIA' ) or
//      ( UpperCase( copy(DM1.Query1.fields[x].FieldName,1,10) )='CED_RESDIA' ) then

      begin
      mQtdArray:=high(mcampo_Somar)+1;
      SetLength(mCampo_Somar,mqtdarray+1);
      mcampo_Somar[mQtdArray-1]:=DM1.Query1.fields[x].FieldName;
      end;
   end;

mCampo_Filial:='CED_FILIAL';
mCampo_Somar:=nil;

if not fAgruparItems('CADEGD',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;

// termino CADEGD

mCampo_Grupo:=nil;


// CADEDIA
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CED_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CED_CODPRO';


DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select * from CADEDIA where  ');
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   DM1.Query1.SQL.Add(' CED_CODEMP=0'+IntToStr(codemp)+' and ');
DM1.Query1.SQL.Add(' CED_CODPRO=0');
DM1.Query1.Open;
for x:=0 to DM1.Query1.FieldCount-1 do
   begin
   if ( UpperCase( copy(DM1.Query1.fields[x].FieldName,1,10) )='CED_QTDDIA' ) then
//   if ( UpperCase( copy(DM1.Query1.fields[x].FieldName,1,10) )='CED_QTDDIA' ) or
//      ( UpperCase( copy(DM1.Query1.fields[x].FieldName,1,10) )='CED_RESDIA' ) then
      begin
      mQtdArray:=high(mcampo_Somar)+1;
      SetLength(mCampo_Somar,mqtdarray+1);
      mcampo_Somar[mQtdArray-1]:=DM1.Query1.fields[x].FieldName;
      end;
   end;

SetLength(mCampo_Grupo,3);
mcampo_Grupo[00]:='CED_MES';
mcampo_Grupo[01]:='CED_ANO';
mcampo_Grupo[02]:='CED_FILIAL';

mCampo_Filial:='CED_FILIAL';
mCampo_Somar:=nil;
if not fAgruparItems('CADEDIA',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;

// termino CADEGD


// CADFPRO
mCampo_Chave:='';
mCampo_Somar:=nil;
mCampo_Grupo:=nil;

SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='CF_CODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='CF_CODPRO';
mCampo_Filial:='';
if not fAgruparItems('CADFPRO',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;

// termino CADfpro

// cadpro
mCampo_Chave:='';
mCampo_Somar:=nil;
SetLength(mcampo_Somar,1);
if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
   mCampo_Empresa:='PDCODEMP='+IntToStr(codemp)
else
   mcampo_Empresa:='';
mCampo_Chave:='PDCODPRO';


mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDSALDO';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDSALDOR';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDSALDOC';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDSALDOT';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDBAIXO';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDBAIXOR';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDBAIXOC';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDBAIXOT';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDALTO';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDALTOR';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDALTOC';
mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDALTOT';
mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDSALDO_PRAT';
mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDSALDO_DEP';

mQtdArray:=high(mcampo_Somar)+1;
SetLength(mCampo_Somar,mqtdarray+1);
mcampo_Somar[mQtdArray-1]:='PDENTPEN';
mCampo_Filial:='';
if not fAgruparItems('CADPRO',CODPRO.Text,NCODPRO.Text,mcampo_chave,mCampo_Empresa,mCampo_Filial
             ,mCampo_Somar,mCampo_Grupo) then
   exit;

// termino cadPRO

Frm_Agde.Free;
Frm_Agde:=nil;
CODPRO.Text:='';
NCODPRO.Text:='';
CCODPRO.Text:='';
NOMPRO.Text:='';
NNOMPRO.Text:='';

end;

procedure TFrm_MCodP.NCODPROKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
       begin
      NCODPRO.Text:=fChamaPro(0,'Frm_MCodP',key);
      key:=#0;
      end;

end;

procedure TFrm_MCodP.CCODPROKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_MCodP.NCODPROExit(Sender: TObject);
var
nome: String;
begin
NCODPRO.Text:=fdeixanum2(NCODPRO.text);
if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Trim(NCODPRO.Text)) then
   begin
   NNOMPRO.Text:=DM1.Query1.Fields[0].AsString;
   nome:='Este Código é do Produto:'+DM1.Query1.Fields[0].AsString+#13
        +'Quer Continuar e Efetivar a Troca?';
   if fmensagem(nome,0,['1','2'],2)<>mrYES then
      begin
      NCODPRO.Text:='';
      NCODPRO.SetFocus;
      exit;
      end;
   end
else
   NNOMPRO.Text:='';
end;
function fAgruparItems(pTabela,pCodAnt,pCodNov,pCampo_Chave,pCampo_Empresa,pCampo_Filial:  String;pCampo_Somar,pCampo_grupo: array of string):Boolean;
var
x: Integer;
mInstrucao: WideString;
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
   ex_erroSql_Novo(DM1.Query1,887,'frm_mcodp',pTabela);
   result:=false;
   exit;
   end;
if DM1.query1.Fields[0].AsInteger<1 then
   begin
   result:=true;
   exit;
   end;

if high(pcampo_somar)>0 then
   begin
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.Add('select COLUMN_NAME,DATA_TYPE from USER_TAB_COLUMNS WHERE '
                     +' TABLE_NAME=:NOMETAB and DATA_TYPE<>'+quotedstr('LONG')+' and DATA_TYPE<>'+Quotedstr('LONG RAW'));
{
                     +' and (COLUMN_NAME<>:CAMPO01 '
                     +' and   COLUMN_NAME<>:CAMPO02 '
                     +' and   COLUMN_NAME<>:CAMPO03 '
                     +' )');
}
   DM1.Query3.ParamByName('NOMETAB').AsString:=pTabela;
//   DM1.Query3.ParamByName('CAMPO01').AsString:='PDDTALT';
//   DM1.Query3.ParamByName('CAMPO02').AsString:='PDDATCAD';
//   DM1.Query3.ParamByName('CAMPO03').AsString:='PDAPLIC';

   DM1.Query3.Open;

// Inicio da query2
   mInstrucao:='Select '+pcodnov+' as '+pcampo_chave;
   mcinst:=',';
   for x:=0 to high(pCampo_Somar)-1 do
      begin
      mInstrucao:=mInstrucao+mcinst+' sum(decode('+pCampo_Somar[x]+',null,0,'+pCampo_Somar[x]+')) as '+pCampo_Somar[x];
      mcinst:=',';
      end;

   While not DM1.Query3.Eof do
      begin
      x:=0;
      if DM1.Query3.fieldbyName('COLUMN_NAME').AsString=pCampo_Chave then
         x:=1;
      if x<1 then
         x:=AnsiIndexText(DM1.Query3.fieldbyName('COLUMN_NAME').AsString,pCampo_Somar);
      if x<1 then
         begin
         x:=AnsiIndexText(DM1.Query3.fieldbyName('COLUMN_NAME').AsString,pCampo_grupo);
         if x>0 then
            begin
            mInstrucao:=mInstrucao+mcinst+' '+DM1.Query3.fieldbyName('COLUMN_NAME').AsString;
            mcinst:=',';
            end;
         end;

      if x<1 then
         x:=AnsiIndexText(DM1.Query3.fieldbyName('COLUMN_NAME').AsString,pCampo_grupo);
      if x>0 then
         begin
         DM1.Query3.Next;
         Continue;
         end;
      mInstrucao:=mInstrucao+mcinst+'max('+DM1.Query3.fieldbyName('COLUMN_NAME').AsString
                         +') as '+DM1.Query3.fieldbyName('COLUMN_NAME').AsString;
      DM1.Query3.Next;
      end;
   mInstrucao:=mInstrucao+' from '+pTabela+' where ';
   if Trim(pCampo_Empresa)<>'' then
      mInstrucao:=mInstrucao+pCampo_Empresa+' and ';
   mInstrucao:=mInstrucao+'('+pCampo_Chave+'='+pCodAnt;
   mInstrucao:=mInstrucao+' or '+pCampo_Chave+'='+pCodNov+')';
   x:=AnsiIndexText(DM1.Query3.fieldbyName('COLUMN_NAME').AsString,pCampo_grupo);
   mcinst:='group by ';
   for x:=0 to high(pCampo_Grupo) do
      begin
      if trim(pcampo_grupo[x])='' then
         Continue;
      mInstrucao:=mInstrucao+mcinst+pCampo_Grupo[x];
      mcinst:=',';
      end;
   DM1.Query2.Close;
   DM1.Query2.sql.clear;
   DM1.Query2.sql.add(minstrucao);
   try
      DM1.Query2.Open;
   except
      ex_erroSql_Novo(DM1.Query2,937,'_mcodp',pTabela);
      exit;
      end;
// inicio da copia

// termino da query2
 //  DM1.Query2.SQL.SaveToFile('c:\sql.txt');


   if trim(UpperCase(pTabela))='CADPRO' then
     begin
     DM1.Query5.Close;
     DM1.Query5.SQL.Clear;
     DM1.Query5.SQL.Add(' select * from cadpro where pdcodpro='+pCodNov);
     if trim(pCampo_Empresa)<>'' then
       DM1.Query5.SQL.Add(' and '+pCampo_Empresa);
     DM1.Query5.Open;
     end;

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from '+pTabela);
   DM1.Query1.SQL.Add(' where ');
   if Trim(pCampo_Empresa)<>'' then
      DM1.Query1.SQL.add(pCampo_Empresa+' and ');
   DM1.Query1.SQL.add(pCampo_Chave+'='+pCodAnt);
   DM1.Query1.SQL.add(' or '+pCampo_Chave+'='+pCodNov);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile('c:\sql.txt');
      ex_erroSql_Novo(DM1.Query1,967,'frm_mcodp',pTabela);
      result:=false;
      exit;
      end;
   DM1.Query2.First;
//   DM1.Query2.SQL.SaveToFile('c:\sqlmcodp.txt');

//   ShowMessage('Quantidade: '+IntToStr(DM1.Query2.RecordCount)+' '+pTabela);


   While not DM1.Query2.Eof do

      begin
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      mInstrucao:='Insert into '+pTabela+' (';
      mcinst:='';
      DM1.Query3.First;
      While not DM1.Query3.Eof do
         begin
         mInstrucao:=mInstrucao+mcinst+DM1.Query3.fieldbyName('COLUMN_NAME').AsString;
         mcinst:=',';
         DM1.Query3.Next;
         end;

      mcinst:='';
      mInstrucao:=mInstrucao+') Values (';
      DM1.Query3.First;
      While not DM1.Query3.Eof do
         begin
         mInstrucao:=mInstrucao+mcinst+':'+DM1.Query3.fieldbyName('COLUMN_NAME').AsString;
         DM1.Query3.Next;
         mcinst:=',';
         end;
      mInstrucao:=mInstrucao+') ';

      DM1.Query4.SQL.add(mInstrucao);

      DM1.Query3.First;
      While not DM1.Query3.Eof do
         begin
         if DM1.Query3.fieldbyName('COLUMN_NAME').AsString=pCampo_Chave then
            DM1.Query4.ParamByName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsString
                               :=pCodNov
         else
           begin
           try
             if DM1.Query3.fieldbyName('DATA_TYPE').AsString='DATE' then
               begin
               DM1.Query4.ParamByName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsDateTime
                              :=DM1.Query2.fieldbyName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsDateTime;
               end
             else if DM1.Query3.fieldbyName('DATA_TYPE').AsString='VARCHAR2' then
               begin
               if (trim(UpperCase(pTabela))='CADPRO') and not (DM1.Query5.IsEmpty) then
                  begin
                  DM1.Query4.ParamByName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsString
                              :=DM1.Query5.fieldbyName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsString;
                  end
               else
                  begin
                  DM1.Query4.ParamByName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsString
                              :=DM1.Query2.fieldbyName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsString;
                  end;
                end
             else
                begin
                DM1.Query4.ParamByName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsString
                               :=DM1.Query2.fieldbyName(DM1.Query3.fieldbyName('COLUMN_NAME').AsString).AsString;
                end;
           except
              ex_erroSql_Novo(DM1.Query2,999,
              'Campo Faltando: '+DM1.Query3.fieldbyName('COLUMN_NAME').AsString,pTabela);
              exit;
              end;
           end;
         DM1.Query3.Next;
         end;
   //   DM1.Query4.SQL.SaveToFile('c:\sql.txt');

      try
         DM1.Query4.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.SQL.SaveToFile('c:\sql02.txt');
         DM1.Query4.SQL.SaveToFile('c:\sql04.txt');
         ex_erroSql_Novo(DM1.Query4,999,'frm_mcodp',pTabela);
         result:=false;
         exit;
         end;
      DM1.Query2.Next;

      end;
   end
else
   begin
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
      ex_erroSql_Novo(DM1.Query1,999,'frm_mcodp',pTabela);
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
         if high(pcampo_Grupo)>0 then
            begin
            for x:=0 to high(pCampo_Grupo) do
               begin
               if trim(pcampo_grupo[x])='' then
                  Continue;
               DM1.Query2.SQL.Add(mcinst+pCampo_Grupo[x]);
               mcinst:=',';
               end;
            end;


         DM1.Query2.SQL.Add(' from '+pTabela+' where ');
         if Trim(pCampo_Empresa)<>'' then
            DM1.Query2.SQL.add(pCampo_Empresa+' and ');
         DM1.Query2.SQL.add('('+pCampo_Chave+'='+pCodAnt);
         DM1.Query2.SQL.add(' or '+pCampo_Chave+'='+pCodNov+')');

         if high(pcampo_Grupo)>0 then
            begin
            DM1.Query2.SQL.Add(' Group by ');
            mcinst:=' ';
            for x:=0 to high(pCampo_Grupo) do
               begin
               if trim(pcampo_grupo[x])='' then
                  Continue;

               DM1.Query2.SQL.Add(mcinst+pCampo_Grupo[x]);
               mcinst:=',';
               end;
            end;
         try
            DM1.Query2.Open;
         except
            ex_erroSql_Novo(DM1.Query2,999,'frm_mcodp',pTabela);
            result:=false;
            exit;
            end;

         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.SQL.Add('Update '+pTabela+' set ');
         mcinst:=' ';
         for x:=0 to high(pCampo_Somar)-1 do
            begin
            DM1.Query1.SQL.Add( mcinst+pCampo_Somar[x]+'='+mudavp(DM1.Query2.Fields[x].AsString));
            mcinst:=',';
            end;
         DM1.Query1.SQL.Add(' where ');
         if Trim(pCampo_Empresa)<>'' then
            DM1.Query1.SQL.add(pCampo_Empresa+' and ');
         DM1.Query1.SQL.add(pCampo_Chave+'='+pCodNov);


         if high(pcampo_Grupo)>0 then
            begin
            for x:=0 to high(pCampo_Grupo) do
               begin
               if trim(pcampo_grupo[x])='' then
                  Continue;

               DM1.Query1.SQL.Add(' and '+pCampo_Grupo[x]+'=:'+pCampo_Grupo[x]);
               DM1.Query1.ParamByName(pCampo_Grupo[x]).Value:=
               DM1.Query2.FieldbyName(pCampo_Grupo[x]).Value;
               end;
            ex_erroSql_Novo(DM1.Query1,1002,'frm_mcodp',pTabela);

            end;
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
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
         end;
      end;
   end;
result:=true;
end;

procedure TFrm_MCodP.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113)  then
   CODPRO.Text:=fChamaPro(0,'Frm_MCodP','');

end;

procedure TFrm_MCodP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
