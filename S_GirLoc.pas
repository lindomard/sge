unit S_GirLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,S_DM1,db,dbtables,func,lerarq, Grids,
  S_GirLoc_Cons,func2,S_Loc,S_Impres,S_Bai;

type
  TFrm_GirLoc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    CODGIR: TEdit;
    Label2: TLabel;
    NOMGIR: TEdit;
    Label3: TLabel;
    OBS01: TEdit;
    OBS02: TEdit;
    OBS03: TEdit;
    STG1: TStringGrid;
    Panel_digitacao: TPanel;
    CODCID: TEdit;
    NOMCID: TEdit;
    CODBAI: TEdit;
    ITEM_GRAVAR: TBitBtn;
    ITEM_EDITAR: TBitBtn;
    ITEM_CANCELAR: TBitBtn;
    ITEM_EXCLUIR: TBitBtn;
    NOMBAI: TEdit;
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure NOMGIRExit(Sender: TObject);
    procedure OBS01Exit(Sender: TObject);
    procedure OBS02Exit(Sender: TObject);
    procedure OBS03Exit(Sender: TObject);
    procedure CODCIDKeyPress(Sender: TObject; var Key: Char);
    procedure CODCIDExit(Sender: TObject);
    procedure ITEM_GRAVARClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure ITEM_CANCELARClick(Sender: TObject);
    procedure ITEM_EXCLUIRClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure RG_TIPOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODBAIExit(Sender: TObject);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function fGirLocLerant(pTipo: Integer): Boolean;
    function fGirLocgant(pTipo: Integer): Boolean;
    function fexcluir(ptipo: Integer):Boolean;
    function fGravarGiro(ptipo: Integer): Boolean;
    function fGirLocCab(ptipo: Integer): Boolean;
  public
    { Public declarations }
    form_impres_girloc: TFrm_Impres;
  end;

var
  Frm_GirLoc: TFrm_GirLoc;
  mOper: Integer=0;
  mChave: Integer;
  gir_ori: String;
  mOp_item: Integer=0;
  bbalt_true : Boolean=True;
  bbinc_true : Boolean=True;
  bbexc_true : Boolean=True;
  bbrel_true : Boolean=True;
  mpag, mlin: Integer;
  mant_tipo: Integer;
  mcol_codloc:Integer=0;
  mcol_nomloc:Integer=1;
  mcol_codbai:Integer=2;
  mcol_nombai:Integer=3;

implementation

uses S_Agde, S_DM4, S_DM2, func_excecoes, S_SI, S_C;

{$R *.dfm}

procedure TFrm_GirLoc.BBLIMPARClick(Sender: TObject);
begin
if (moper=1) and (ValFloat(CODGIR.Text)<>0) then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADGC01 set GC1STATUS=0 '
                     +' where GC1CODEMP=0'+DM2.Tb_GC01GC1CODEMP.AsString
                     +' and GC1CODGIR=0'+DM2.Tb_GC01GC1CODGIR.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_novo(DM1.Query2,6216,'Frm_GirLoc','CADGC01');
      end;
   end;
mOper:=0;
CODGIR.Text:='';
NOMGIR.Text:='';
OBS01.Text :='';
OBS02.Text :='';
OBS03.Text :='';
CODCID.Text:='';
NOMCID.Text:='';
STG1.RowCount:=2;
stg1.Rows[1].Clear;
stg1.Rows[2].Clear;

BBINCLUIR.Enabled  :=bbinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
Panel_digitacao.Enabled  :=False;
Panel3.Enabled     :=False;


end;

procedure TFrm_GirLoc.BBINCLUIRClick(Sender: TObject);
begin

BBLIMPAR.Click;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;



Panel_digitacao.Enabled  :=true;
Panel3.Enabled     :=true;
NOMGIR.SetFocus;
moper:=0;



end;

procedure TFrm_GirLoc.FormCreate(Sender: TObject);
begin
if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   CODBAI.Enabled:=true;
//   NOMBAI.Enabled:=true;
   NOMBAI.Text:='';
   end
else
   begin
   CODBAI.Enabled:=false;
   NOMBAI.Enabled:=false;
   NOMBAI.Text:='todos';
   end;


STG1.Cells[mcol_codloc,0]:='Cód.Loc';
STG1.Cells[mcol_nomloc,0]:='Nome da Cidade';
STG1.Cells[mcol_codbai,0]:='Cód.Bai';
STG1.Cells[mcol_nombai,0]:='Nome do Bairro';

if flcadactab(0,0,IntToStr(codcar),'CADPED') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   if DM4.Tb_AcTabAT_REL.Value=1 then
      bbrel_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   bbrel_true:=true;
   end;
end;

procedure TFrm_GirLoc.BBLOCALIZARClick(Sender: TObject);
var
x,mqtd: Integer;

begin

if moper<>3 then
   begin
   Application.CreateForm(TFrm_GirLoc_Cons, Frm_GirLoc_Cons);
   Frm_GirLoc_Cons.ShowModal;
   mchave:=ValInt(Frm_GirLoc_Cons.CODGIR_INI.Text);
   Frm_GirLoc_Cons.Free;
   Frm_GirLoc_Cons:=nil;
   if mchave=0 then
      begin
      fMensagem('Giro não encontrado!',0,['0'],0);
      exit;
      end;
   end;
if (mchave>0) or (gir_ori='consulta') then
   begin
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Carregando os dados. Aguarde';
   Frm_Agde.Show;
   Frm_Agde.Update;
   if gir_ori='consulta' then
      fGirLocLerant(0)
   else
      begin
      BBINCLUIR.Enabled  :=bbinc_true;
      BBLOCALIZAR.Enabled:=True;
      BBALTERAR.Enabled  :=bbalt_true;
      BBEXCLUIR.Enabled  :=bbexc_true;
      BBGRAVAR.Enabled   :=False;
      BBIMPRIMIR.Enabled :=bbrel_true;
      if not flcadgc01(1,0,0,IntTostr(mChave)) then
         begin
         BBLIMPAR.Click;
         fMensagem('Giro não encontrado!',0,['0'],0);
         Frm_Agde.Free;
         Frm_Agde:=nil;
         exit;
         end;
      flcadgc02(0,0,0,DM2.Tb_GC01GC1TIPGIR.AsInteger, IntTostr(mChave));
      end;
   for x:=2 to STG1.RowCount do
      begin
      STG1.Rows[x-1].Clear;
      end;
   STG1.RowCount:=2;
   STG1.Rows[1].Clear;
   mqtd:=1;
   While not DM2.Tb_GC02.Eof do
      begin
      STG1.RowCount:=mqtd+2;
      STG1.Rows[mqtd].clear;
      STG1.Rows[mqtd+1].clear;
      STG1.Cells[mcol_codloc,mqtd]:=DM2.Tb_GC02GC2CODLOC.AsString;
      STG1.Cells[mcol_nomloc,mqtd]:=DM2.Tb_GC02LNOME.AsString+'-'+DM2.Tb_GC02LUF.AsString;
      STG1.Cells[mcol_codbai,mqtd]:=DM2.Tb_GC02CODBAI.AsString;
      STG1.Cells[mcol_nombai,mqtd]:=DM2.Tb_GC02NOMBAI.AsString;
      mqtd:=mqtd+1;
      DM2.Tb_GC02.Next;
      end;
   CODGIR.Text:=DM2.Tb_GC01GC1CODGIR.AsString;
   NOMGIR.Text:=DM2.Tb_GC01GC1NOMEGIR.Value;
   OBS01.Text :=DM2.Tb_GC01GC1OBSL01.Value;
   OBS02.Text :=DM2.Tb_GC01GC1OBSL02.Value;
   OBS03.Text :=DM2.Tb_GC01GC1OBSL03.Value;
   Frm_Agde.Free;
   Frm_Agde:=nil;
   end;

end;

function TFrm_GirLoc.fGirLocLerant(pTipo: Integer): Boolean;
begin
result:=True;
end;
function TFrm_GirLoc.fGirLocGant(pTipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(GC1CODNOV) from OLD_CADGC01');
try
   DM1.Query1.Open;
   fdm1StartCommit;
except
   ex_erroSql_novo(DM1.query2,539,'Frm_GirLoc','CADGC01');
   end;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADGC01 (';
v:='';
for x:=0 to DM2.Tb_GC01.FieldCount-1 do
   begin
   if DM2.Tb_GC01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_GC01.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',GC1CODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_GC01.FieldCount-1 do
   begin
   if DM2.Tb_GC01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM2.Tb_GC01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as GC1CODNOV ';
minstru:=minstru+' from CADGC01 where GC1CODEMP=0'+DM2.Tb_GC01GC1CODEMP.AsString
                +' and GC1CODGIR=0'+DM2.Tb_GC01GC1CODGIR.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_novo(DM1.Query1,233,'Frm_GirLoc','CADGC01_OLD');
   end;

minstru:='Insert into OLD_CADGC02 (';
v:='';
for x:=0 to DM2.Tb_GC02.FieldCount-1 do
   begin
   if DM2.Tb_GC02.Fields[x].FieldKind=fkCalculated then
      Continue;
   if copy(DM2.Tb_GC02.Fields[x].FieldName,1,3)<>'GC2' then
      continue;
   minstru:=minstru+v+DM2.Tb_GC02.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',GC2CODNOV) Select ';
v:='';
for x:=0 to DM2.Tb_GC02.FieldCount-1 do
   begin
   if DM2.Tb_GC02.Fields[x].FieldKind=fkCalculated then
      Continue;
   if copy(DM2.Tb_GC02.Fields[x].FieldName,1,3)<>'GC2' then
      continue;
   minstru:=minstru+v+DM2.Tb_GC02.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as GC2CODNOV ';
minstru:=minstru+' from CADGC02 where GC2CODEMP=0'+DM2.Tb_GC01GC1CODEMP.AsString
                +' and GC2CODGIR=0'+DM2.Tb_GC01GC1CODGIR.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query1,265,'Frm_GirLoc','CADGC02_OLD');
   end;
result:=True;
end;

procedure TFrm_GirLoc.BBALTERARClick(Sender: TObject);
begin
if not flcadgc01(1,0,0,IntTostr(mChave)) then
   begin
   BBLIMPAR.Click;
   fMensagem('Giro não Encontrado!',0,['0'],0);
   exit;
   end;

if DM2.Tb_GC01GC1STATUS.Value<0 then
   begin
   if fmensagem('Este Giro Pode estar sendo alterado em outra estação, deseja continuar?',0,['1','2'],2)<>mrYes then
      exit;
   end;
Panel_digitacao.Enabled  :=true;
Panel3.Enabled     :=true;

BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADGC01 set GC1STATUS=-2 '
                  +' where GC1CODEMP=0'+DM2.Tb_GC01GC1CODEMP.AsString
                  +' and GC1CODGIR=0'+DM2.Tb_GC01GC1CODGIR.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_novo(DM1.Query2,6216,'Frm_GirLoc','CADGC01');
   end;
moper:=1;
{
if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   CODBAI.Enabled:=false;
   NOMBAI.Enabled:=false;
   NOMBAI.Text:='todos';
   end
else
   begin
   CODBAI.Enabled:=true;
   NOMBAI.Enabled:=true;
   NOMBAI.Text:='';
   end;

}
end;

procedure TFrm_GirLoc.BBEXCLUIRClick(Sender: TObject);
begin
if not flcadgc01(1,0,0,IntTostr(mChave)) then
   begin
   fMensagem('Este Giro ja foi Excluido em outra estação!',0,['0'],0);
   exit;
   end;


if DM2.Tb_GC01GC1STATUS.Value<0 then
   begin
   if Fmensagem('Este Giro Pode estar em manutenção em outra estação, deseja continuar?',0,['1','2'],2)<>mrYes then
      exit;
   end;

if fMensagem('Quer realmente excluir este giro?',0,['1','2'],2)<>mrYes then
   exit;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=31;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para Excluir o Giro';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   begin
   fMensagem('Acesso Não Permitido!',0,['0'],0);
   exit;
   end;
fGirLocgant(0);
fexcluir(1);
BBLIMPAR.Click;
fMensagem('Giro Excluido',0,['0'],0);

end;
function TFrm_GirLoc.fexcluir(ptipo: Integer):Boolean;
{
Parametros ptipo= Qualquer um Exclui tudo
}
begin
DM2.Tb_GC01.First;
While not DM2.Tb_GC01.Eof do
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('delete from CADGC01 where GC1CODEMP=0'+DM2.Tb_GC01GC1CODEMP.AsString
                     +' and GC1CODGIR=0'+DM2.Tb_GC01GC1CODGIR.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_novo(DM1.Query1,360,'Frm_GirLoc','CADGC01');
      end;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.add('delete from CADGC02 where GC2CODEMP=0'+DM2.Tb_GC01GC1CODEMP.AsString
                      +' and GC2CODGIR=0'+DM2.Tb_GC01GC1CODGIR.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_novo(DM1.Query1,371,'Frm_GirLoc','CADGC02');
      end;
   DM2.Tb_GC01.Next;
   end;
end;
procedure TFrm_GirLoc.BBGRAVARClick(Sender: TObject);
begin
if Trim(NOMGIR.Text)='' then
   Begin
   fMensagem('Favor informar um nome para o Giro!',0,['0'],0);
   NOMGIR.SetFocus;
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Gravando...';
Frm_Agde.Show;
Frm_Agde.Update;
if moper=0 then
   begin
   mchave:=0;
   end
else
   begin
   fGirLocgant(8);
   fexcluir(0);
   end;
fgravargiro(0);

CODGIR.Text :=Inttostr(mchave);
BBINCLUIR.Enabled  :=bbinc_true;
BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
Panel_digitacao.Enabled  :=False;
Panel3.Enabled     :=False;
Frm_Agde.free;
Frm_Agde:=nil;
if mchave=0 then
   begin
   AvisoSonoro(0);
   AvisoSonoro(1);
   fMensagem('Não foi gravado este giro!',0,['0'],0);
   end
else
   begin
   moper:=3;
   BBLOCALIZAR.Click;
   moper:=0;
   end;
end;

function TFrm_GirLoc.fGravarGiro(ptipo: Integer): Boolean;
var
mseq,x: Integer;

begin
if mChave=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select max(GC1CODGIR) from CADGC01 '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADGIR',[]),'','where GC1CODEMP=0'+ IntTostr(codemp) ) );
   try
      DM1.Query1.Open;
      fdm1StartCommit;
   except
      ex_erroSql_novo(DM1.query2,539,'Frm_GirLoc','CADGC01');
      end;

   mChave:=DM1.Query1.Fields[0].AsInteger+1;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.clear;
DM1.Query2.Params.CreateParam(ftString,'GC1CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1CODGIR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1TIPGIR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1NOMEGIR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1QTDCID',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1OBSL01',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1OBSL02',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1OBSL03',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC1STATUS',ptInput);
DM1.Query2.SQL.Add('Insert into CADGC01 ('
                  +' GC1CODEMP '
                  +' ,GC1CODGIR '
                  +' ,GC1TIPGIR '
                  +' ,GC1NOMEGIR '
                  +' ,GC1QTDCID '
                  +' ,GC1OBSL01 '
                  +' ,GC1OBSL02 '
                  +' ,GC1OBSL03 '
                  +' ,GC1STATUS) values ('
                  +' :GC1CODEMP '
                  +' ,:GC1CODGIR '
                  +' ,:GC1TIPGIR '
                  +' ,:GC1NOMEGIR '
                  +' ,:GC1QTDCID '
                  +' ,:GC1OBSL01 '
                  +' ,:GC1OBSL02 '
                  +' ,:GC1OBSL03 '
                  +' ,:GC1STATUS) ');

DM1.Query2.ParamByName('GC1CODEMP').AsFloat  :=codemp;
DM1.Query2.ParamByName('GC1CODGIR').AsFloat  :=mChave;
DM1.Query2.ParamByName('GC1TIPGIR').AsFloat  :=0;
DM1.Query2.ParamByName('GC1NOMEGIR').AsString:=NOMGIR.Text;
DM1.Query2.ParamByName('GC1QTDCID').AsFloat  :=STG1.RowCount-2;
DM1.Query2.ParamByName('GC1OBSL01').AsString :=OBS01.Text;
DM1.Query2.ParamByName('GC1OBSL02').AsString :=OBS02.Text;
DM1.Query2.ParamByName('GC1OBSL03').AsString :=OBS03.Text;
DM1.Query2.ParamByName('GC1STATUS').AsFloat  :=0;
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_novo(DM1.query2,539,'Frm_GirLoc','CADGC01');
   end;


DM1.Query2.Close;
DM1.Query2.SQL.clear;
{
DM1.Query2.Params.CreateParam(ftString,'GC2CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC2CODGIR',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC2SEQ',ptInput);
DM1.Query2.Params.CreateParam(ftString,'GC2CODLOC',ptInput);
}
DM1.Query2.SQL.Add('Insert into CADGC02 ('
                  +' GC2CODEMP '
                  +' ,GC2CODGIR '
                  +' ,GC2SEQ '
                  +' ,GC2CODLOC '
                  +' ,GC2CODBAI ) values ('
                  +'  :GC2CODEMP '
                  +' ,:GC2CODGIR '
                  +' ,:GC2SEQ '
                  +' ,:GC2CODLOC '
                  +' ,:GC2CODBAI) ');
mseq:=0;
for x:=1 to STG1.RowCount-1 do
   begin
   if ValInt(STG1.Cells[0,x])<=0 then
      continue;
   mseq:=mseq+1;
   DM1.Query2.ParamByName('GC2CODEMP').AsFloat  :=codemp;
   DM1.Query2.ParamByName('GC2CODGIR').AsFloat  :=mChave;
   DM1.Query2.ParamByName('GC2SEQ').AsFloat     :=mseq;
   DM1.Query2.ParamByName('GC2CODLOC').AsFloat  :=fsonumero(STG1.Cells[mcol_codloc,x]);
   DM1.Query2.ParamByName('GC2CODBAI').AsFloat  :=fsonumero(STG1.Cells[mcol_codbai,x]);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(DM1.Query2,575,'Frm_GirLoc','CADGC02');
      end;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('update CADCLI set CNOMROTA=(Select GC1NOMEGIR from  CADGC01 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' C1CODEMP=0'+IntTostr(codemp)+' and ')
                  +' CROTA=GC1CODGIR )'
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' where CCODEMP=0'+IntTostr(codemp)));
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query2,575,'Frm_GirLoc','CADGC02');
   end;

result:=true;
end;

procedure TFrm_GirLoc.NOMGIRExit(Sender: TObject);
begin
if not fTestaTam(0,40,NOMGIR.Text,'') then
   NOMGIR.Text:=copy(NOMGIR.Text,1,40);
end;

procedure TFrm_GirLoc.OBS01Exit(Sender: TObject);
begin
if not fTestaTam(0,78,OBS01.Text,'') then
   OBS01.Text:=copy(OBS01.Text,1,40);

end;

procedure TFrm_GirLoc.OBS02Exit(Sender: TObject);
begin
if not fTestaTam(0,78,OBS02.Text,'') then
   OBS02.Text:=copy(OBS02.Text,1,40);

end;

procedure TFrm_GirLoc.OBS03Exit(Sender: TObject);
begin
if not fTestaTam(0,78,OBS03.Text,'') then
   OBS03.Text:=copy(OBS03.Text,1,40);

end;

procedure TFrm_GirLoc.CODCIDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCID.Text:=fChamaLoc(0,'frm_GirLoc',Key);
   if trim(CODCID.Text)<>'' then
      CODCIDExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_GirLoc.CODCIDExit(Sender: TObject);
begin
if ITEM_CANCELAR.Focused then
   exit;
if fsonumero(CODCID.Text)<=0 then
   CODCID.Text:=''
else
   CODCID.Text:=fdeixanum2(CODCID.Text);
if Trim(CODCID.Text)='' then
   begin
   if (ITEM_GRAVAR.Focused) or (CODBAI.Focused) then
      CODCID.SetFocus;
   exit;
   end;
if not flcadloc(1,0,CODCID.Text) then
   begin
   fMensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   CODCID.SetFocus;
   end
else
   begin
   NOMCID.Text:=DM1.Tb_LocLNOME.Value+'-'+DM1.Tb_LocLUF.Value;
   if DM1.Tb_PargerPCODBAI.Value<>1 then
      ITEM_GRAVARClick(self);
   end;
end;

procedure TFrm_GirLoc.ITEM_GRAVARClick(Sender: TObject);
var
mqtd: Integer;
begin
if (Trim(CODCID.Text)='') or (Trim(NOMCID.Text)='') then
   begin
   fMensagem('Favor Digitar um código Valido!',0,['0'],0);
   CODCID.Text;
   exit;
   end;

if not flcadloc(1,0,CODCID.Text) then
   begin
   fMensagem('Localidade/Cidade não Cadastrada.',0,['0'],0);
   CODCID.SetFocus;
   end;
if CODBAI.Text<>'' then
   begin
   if not flcadbai(1,0,CODBAI.Text) then
      begin
      fMensagem('Bairro não Cadastrada.',0,['0'],0);
      CODBAI.SetFocus;
      exit;
      end;
   end;


if mOp_item>0 then
   begin
   mqtd:=STG1.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG1.RowCount;
   STG1.RowCount:=mqtd+1;
   STG1.Rows[mqtd+1].Clear;
   STG1.Rows[mqtd].Clear;
   end;
STG1.Cells[mcol_codloc,mqtd-1]:=CODCID.Text;
STG1.Cells[mcol_nomloc,mqtd-1]:=NOMCID.Text;
STG1.Cells[mcol_codbai,mqtd-1]:=CODBAI.Text;
STG1.Cells[mcol_nombai,mqtd-1]:=NOMBAI.Text;
if DM1.Tb_PargerPCODBAI.AsInteger=1 then
   begin
   CODBAI.Text:='';
   NOMBAI.Text:='';
   end
else
   begin
   CODCID.Text  :='';
   NOMCID.Text  :='';
   end;

if mqtd>9 then
   STG1.TopRow:=mqtd-8;

mOp_item:=0;
CODCID.SetFocus;

end;

procedure TFrm_GirLoc.ITEM_EDITARClick(Sender: TObject);
begin
if (Trim(stg1.Cells[mcol_codloc,STG1.Row])='') or (STG1.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   end;
mop_item:=1;
CODCID.Text  :=STG1.Cells[mcol_codloc,STG1.Row];
NOMCID.Text  :=STG1.Cells[mcol_nomloc,STG1.Row];
CODBAI.Text  :=STG1.Cells[mcol_codbai,STG1.Row];
NOMBAI.Text  :=STG1.Cells[mcol_nombai,STG1.Row];
CODCID.Setfocus;

end;

procedure TFrm_GirLoc.ITEM_CANCELARClick(Sender: TObject);
begin
NOMCID.Text:='';
CODCID.Text:='';
if DM1.Tb_PargerPCODBAI.AsInteger=0 then
   begin
   CODBAI.Text    :='';
   NOMBAI.Text    :='todos';
   end
else
   begin
   CODBAI.Text    :='';
   NOMBAI.Text    :='';
   end;


mOp_item   :=0;
end;

procedure TFrm_GirLoc.ITEM_EXCLUIRClick(Sender: TObject);
var
mqtd,x: Integer;
begin
mqtd:=STG1.Row;

if (STG1.Cells[mcol_codloc,1]='') or (STG1.Cells[mcol_codloc,mqtd]='') then
   exit;

mOp_item :=2;
CODCID.Text  :=STG1.Cells[mcol_codloc,STG1.Row];
NOMCID.Text  :=STG1.Cells[mcol_nomloc,STG1.Row];
CODBAI.Text  :=STG1.Cells[mcol_codbai,STG1.Row];
NOMBAI.Text  :=STG1.Cells[mcol_nombai,STG1.Row];
if Fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[mcol_codloc,x]:=STG1.Cells[mcol_codloc,x+1];
      STG1.Cells[mcol_nomloc,x]:=STG1.Cells[mcol_nomloc,x+1];
      STG1.Cells[mcol_codbai,x]:=STG1.Cells[mcol_codbai,x+1];
      STG1.Cells[mcol_nombai,x]:=STG1.Cells[mcol_nombai,x+1];
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
ITEM_CANCELAR.Click;
end;

procedure TFrm_GirLoc.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_GirLoc.BBIMPRIMIRClick(Sender: TObject);
var
mcabgc02: Boolean;
begin
testeform := TFrm_GirLoc(FindGlobalComponent('form_impres_girloc'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_girloc);

form_impres_girloc.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mpag:=0;
mlin:=0;
DM2.Tb_GC01.First;
While not DM2.Tb_GC01.Eof do
   begin
   if mlin=0 then
      begin
      fGirLocCab(0);
      mcabgc02:=True;
      end;
   mcabgc02:=True;
   flcadgc02(0,0,0,DM2.Tb_GC01GC1TIPGIR.AsInteger,DM2.Tb_GC02GC2CODGIR.AsString);
   While not DM2.Tb_GC02.Eof do
      begin
      if mcabgc02 then
         begin
         mlin:=mlin+1;
         if mlin>65 then
            begin
            form_impres_girloc.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
            fGirLocCab(0);
            mlin:=mlin+1;
            end;
         form_impres_girloc.RDprint1.ImpF(mlin,01,'Codigo: '+DM2.Tb_GC01GC1CODGIR.AsString+' '
                                 +'Nome do Giro: '+DM2.Tb_GC01GC1NOMEGIR.Value
                                 ,mneg);
         if (Trim(DM2.Tb_GC01GC1OBSL01.Value)<>'') or
            (Trim(DM2.Tb_GC01GC1OBSL02.Value)<>'') or
            (Trim(DM2.Tb_GC01GC1OBSL03.Value)<>'') then
            begin
            mlin:=mlin+1;
            form_impres_girloc.RDprint1.ImpF(mlin,01,centra('Observacoes',' ',80),mnormal);
            if Trim(DM2.Tb_GC01GC1OBSL01.Value)<>'' then
               begin
               mlin:=mlin+1;
               form_impres_girloc.RDprint1.ImpF(mlin,01,DM2.Tb_GC01GC1OBSL01.Value,mnormal);
               end;
            if Trim(DM2.Tb_GC01GC1OBSL02.Value)<>'' then
               begin
               mlin:=mlin+1;
               form_impres_girloc.RDprint1.ImpF(mlin,01,DM2.Tb_GC01GC1OBSL02.Value,mnormal);
               end;
            if Trim(DM2.Tb_GC01GC1OBSL03.Value)<>'' then
               begin
               mlin:=mlin+1;
               form_impres_girloc.RDprint1.ImpF(mlin,01,DM2.Tb_GC01GC1OBSL03.Value,mnormal);
               end;
{
Seq Cód.Loc UF Nome da Cidade                   Cod.Bai Nome do Bairro
123 123456  12 12345678901234567890123456789012 123456  123456789012345678901234
}
            end;
         mlin:=mlin+1;
         form_impres_girloc.RDprint1.ImpF(mlin,01,'Seq Cód.Loc UF Nome da Cidade                   Cod.Bai Nome do Bairro',mnormal);
         mcabgc02:=False;
         end;
      mlin:=mlin+1;
      form_impres_girloc.RDprint1.ImpF(mlin,01,insere2(DM2.Tb_GC02GC2SEQ.AsString,' ',03)
                              +' '+insere2(DM2.Tb_GC02GC2CODLOC.AsString,' ',06)
                              +'  '+insere2(DM2.Tb_GC02LUF.AsString,' ',2)
                              +' '+insere2(DM2.Tb_GC02LNOME.AsString,' ',32)
                              +' '+insere2(DM2.Tb_GC02CODBAI.AsString,' ',06)
                              +'  '+insere2(DM2.Tb_GC02NOMBAI.AsString,' ',24)
                              ,mnormal);

      if mlin>58 then
         begin
         mlin:=mlin+1;
         form_impres_girloc.RDprint1.impf(mlin,01,insere2('-','-',80),mnormal);
         form_impres_girloc.RDprint1.Novapagina;
         mlin:=0;
         end;
      DM2.Tb_GC02.Next;
      end;
   DM2.Tb_GC01.Next;
   end;
if form_impres_girloc.RDprint1.Setup then form_impres_girloc.RDprint1.Fechar;
form_impres_girloc.free;
form_impres_girloc:=nil;
{

      DM2.Tb_GC02GC2SEQ
      78901      7890123
123456     123456       12       123456789012345678901234567890


Código: 12345 Nome do Giro: 1234567890123456789012345678901234567890
                                    Observações
12345678901234567890123456789012345678901234567890123456789012345678901234567890

         mcabgc02:=False;
         end;
      end;

   end;


Código: 12345 Nome do Giro: 1234567890123456789012345678901234567890
                                    Observações
12345678901234567890123456789012345678901234567890123456789012345678901234567890

Sequencia  Código       UF       Nome da Cidade
123456     123456       12       123456789012345678901234567890
}
end;
function TFrm_GirLoc.fGirLocCab(ptipo: Integer): Boolean;
begin
mpag:=mpag+1;
form_impres_girloc.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',64)+'Pagina:     '+FormatFloat('0000', mpag),mnormal);
form_impres_girloc.RDprint1.ImpF(02,01,insere2('Relatorio de Giros por Cidade.',' ',64)+'Data: '+FormatDateTime(fdt2, Date),mnormal);
form_impres_girloc.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
mlin:=3;
end;

procedure TFrm_GirLoc.RG_TIPOClick(Sender: TObject);
begin
STG1.Cells[mcol_codloc,0]:='Código';
STG1.Cells[mcol_nomloc,0]:='Nome da Cidade';
STG1.Cells[mcol_codbai,0]:='Cód.Bai';
STG1.Cells[mcol_nombai,0]:='Nome do Bairro';

end;

procedure TFrm_GirLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_GirLoc.CODBAIExit(Sender: TObject);
begin
if ITEM_CANCELAR.Focused then
   exit;
CODBAI.Text:=fdeixanum2(CODBAI.Text);

if CODBAI.Text='' then
   begin
   NOMBAI.Text:='Todos...';
   exit;
   end;
if not flcadbai(1,0,CODBAI.Text) then
   begin
   fMensagem('Bairro não Cadastrado.',0,['0'],0);
   CODBAI.SetFocus;
   end
else
   begin
   NOMBAI.Text:=DM1.Tb_BaiBNOME.Value;
   ITEM_GRAVARClick(SELF); 
   end;


end;

procedure TFrm_GirLoc.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBAI.Text:=fChamaBai(0,'frm_GirLoc',Key);
   if trim(CODBAI.Text)<>'' then
      CODBAIExit(Self);
   key:=#0;
   end;

end;

end.
