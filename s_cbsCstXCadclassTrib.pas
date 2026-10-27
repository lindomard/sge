unit s_cbsCstXCadclassTrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DB, DBTables, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls,
  Mask, Buttons, ExtCtrls;

type
  TFrm_cbsCstXCadclassTrib = class(TFrm_C)
    src_cbs_cst_x_classtrib: TDataSource;
    tb_cbs_cst_x_classtrib: TQuery;
    U_cbs_cst_x_classtrib: TUpdateSQL;
    tb_cbs_cst_x_classtribICC_ID: TFloatField;
    tb_cbs_cst_x_classtribICC_CODCBS: TStringField;
    tb_cbs_cst_x_classtribICC_CODCLASSTRIB: TStringField;
    tb_cbs_cst_x_classtribICC_DATHOR_INC: TDateTimeField;
    tb_cbs_cst_x_classtribICC_CODUSR_INC: TFloatField;
    tb_cbs_cst_x_classtribICC_ID_EMP_ORIGEM_INC: TFloatField;
    tb_cbs_cst_x_classtribICC_ORIGEM_INC: TStringField;
    tb_cbs_cst_x_classtribICC_DATHOR_UEVE: TDateTimeField;
    tb_cbs_cst_x_classtribICC_CODUSR_UEVE: TFloatField;
    tb_cbs_cst_x_classtribICC_ID_EMP_ORIGEM_UEVE: TFloatField;
    tb_cbs_cst_x_classtribICC_ORIGEM_UEVE: TStringField;
    tb_cbs_cst_x_classtribnomecbs: TStringField;
    tb_cbs_cst_x_classtribnomeclasstrib: TStringField;
    Label1: TLabel;
    DBE_ICC_ID: TDBEdit;
    Label2: TLabel;
    DBE_ICC_CODCBS: TDBEdit;
    Label3: TLabel;
    DBE_ICC_CODCLASSTRIB: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBE_nomecbs: TDBEdit;
    DBE_nomeclasstrib: TDBEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBE_ICC_CODCBSKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_ICC_CODCLASSTRIBKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_ICC_CODCBSExit(Sender: TObject);
    procedure DBE_ICC_CODCLASSTRIBExit(Sender: TObject);
  private
    { Private declarations }
    moper_cbs_cst_x_classtrib: integer;
    mcodcbs: string;
    mcodclassTrib: string;

    bbinc_true:boolean;
    bbalt_true:boolean;
    bbexc_true:boolean;


    function fJaExiste(pId: integer; pCodCbs: String; pCodclassTrib: String): boolean;


    function flcadcbs_cst_x_classtrib_local(ptipo,ppre: Integer; pvalor: String): Boolean;

  public
      cbs_cst_x_cadclass_trib_ori: string;

  end;

var
  Frm_cbsCstXCadclassTrib: TFrm_cbsCstXCadclassTrib;

implementation

uses Func, lerarq, S_DM1, func_excecoes, S_DM4;

{$R *.dfm}

procedure TFrm_cbsCstXCadclassTrib.INCLUIRClick(Sender: TObject);
begin
  inherited;

moper_cbs_cst_x_classtrib:=0;

tb_cbs_cst_x_classtrib.Append;
mcodcbs:=tb_cbs_cst_x_classtribICC_CODCBS.AsString;
mcodclassTrib:=tb_cbs_cst_x_classtribICC_CODCLASSTRIB.AsString;

DBE_ICC_CODCBS.SetFocus;


end;

procedure TFrm_cbsCstXCadclassTrib.ALTERARClick(Sender: TObject);
begin
  inherited;
if tb_cbs_cst_x_classtribICC_ID.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
moper_cbs_cst_x_classtrib:=1;

tb_cbs_cst_x_classtrib.Edit;
DBE_ICC_CODCBS.SetFocus;

end;

procedure TFrm_cbsCstXCadclassTrib.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if tb_cbs_cst_x_classtribICC_ID.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CADCBS_CST_X_CADCLASSTRIB','',''
               ,['ICC_ID'],[tb_cbs_cst_x_classtribICC_ID.AsString]
               ,tb_cbs_cst_x_classtrib);

   tb_cbs_cst_x_classtrib.Delete;
   end;

end;

procedure TFrm_cbsCstXCadclassTrib.GRAVARClick(Sender: TObject);
var
mensagem: String;
begin
  inherited;
mensagem:='';
if (tb_cbs_cst_x_classtribICC_CODCBS.Value='_') or (tb_cbs_cst_x_classtribICC_CODCBS.IsNull) then
   begin
   mensagem:=mensagem+'Codigo do CBS é invalido!'+mQuebraLinha
   end;

if (tb_cbs_cst_x_classtribICC_CODCLASSTRIB.Value='_') or (tb_cbs_cst_x_classtribICC_CODCLASSTRIB.IsNull) then
   begin
   mensagem:=mensagem+ 'Codigo da Classificação Trib é invalido!'+mQuebraLinha
   end;

if length(mensagem)>1 then
   begin
   fmensagem(mensagem,0,['1'],0);
   DBE_ICC_CODCBS.SetFocus;
   exit;
   end;

if not fJaExiste(tb_cbs_cst_x_classtribICC_ID.AsInteger,tb_cbs_cst_x_classtribICC_CODCBS.AsString,tb_cbs_cst_x_classtribICC_CODCLASSTRIB.AsString) then
   begin

   while true do
      begin
      if tb_cbs_cst_x_classtribICC_ID.AsInteger<=0 then
         tb_cbs_cst_x_classtribICC_ID.AsInteger := fBuscarSequencia('CADCBS_CST_X_CLASSTRIB_SEQ');

      if FAtualizaBanco(moper_cbs_cst_x_classtrib,'CADCBS_CST_X_CADCLASSTRIB','',''
               ,['ICC_ID'],[tb_cbs_cst_x_classtribICC_ID.AsString]
               ,tb_cbs_cst_x_classtrib) = 4 then
         begin
         mDadosSequence.nomeSequence := 'CADCBS_CST_X_CADCLASSTRIB_SEQ';
         mDadosSequence.nomeTabela   := 'CADCBS_CST_X_CADCLASSTRIB';
         mDadosSequence.nomeChaveId  := 'ICC_ID';
         fAjustarSequenceNova(mDadosSequence);
         tb_cbs_cst_x_classtribICC_ID.value:=0
         end
      else
         break;
      end;
   tb_cbs_cst_x_classtrib.Post;
   CANCELAR.Click;
   end;

end;

procedure TFrm_cbsCstXCadclassTrib.CANCELARClick(Sender: TObject);
begin
  inherited;
if tb_cbs_cst_x_classtrib.State in [dsEdit,dsInsert] then
   tb_cbs_cst_x_classtrib.Cancel;

end;

procedure TFrm_cbsCstXCadclassTrib.SAIRClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrm_cbsCstXCadclassTrib.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if cbs_cst_x_cadclass_trib_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;


function TFrm_cbsCstXCadclassTrib.fJaExiste(pId: integer; pCodCbs: String; pCodclassTrib: String): boolean;

var
query_existe: tQuery;

   procedure pFechartudo;
   begin
   query_existe.close;
   freeandnil(query_existe);

   end;

begin

query_existe:=tQuery.Create(nil);
query_existe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_existe.sql.add('SELECT  ICC_ID,  ICC_CODCBS,  ICC_CODCLASSTRIB  FROM CADCBS_CST_X_CLASSTRIB where 1=1 ');
if (pId<>0) then
    begin
    query_existe.SQL.add(' and ICC_ID='+IntToStr(pId));
    end;

if (trim(pCodCbs)<>'') then
    begin
    query_existe.SQL.add(' and ICC_CODCBS='+QuotedStr(pCodCbs));
    end;

if (trim(pCodclassTrib)<>'') then
    begin
    query_existe.SQL.add(' and ICC_CODCLASSTRIB='+QuotedStr(pCodclassTrib));
    end;

try
   query_existe.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_existe,228,'_stru '+e.message,'user');
   pfechartudo;
   result:=false;
   end;
   end;
if query_existe.IsEmpty then
   begin
   result:=false;
   end
else
   begin
   MessageDlg('Ja Existe um Registro igual a este. Id '+query_existe.fieldbyName('ICC_ID').AsString+' Codigo CBS: '+query_existe.fieldbyname('ICC_CODCBS').AsString

   +' Codigo Class Trib: '+query_existe.fieldbyname('ICC_CODCLASSTRIB').AsString,mtWarning,[mbOk],0);
   result:=true;
   end;
pFechartudo;



end;


function TFrm_cbsCstXCadclassTrib.flcadcbs_cst_x_classtrib_local(ptipo,ppre: Integer; pvalor: String): Boolean;
begin
tb_cbs_cst_x_classtrib.Close;
tb_cbs_cst_x_classtrib.Sql.clear;
tb_cbs_cst_x_classtrib.Sql.add('SELECT  CADCBS_CST_X_CLASSTRIB.*,CBS_NOME as nomecbs, CT_NOME AS nomeclasstrib  '
  +' FROM CADCBS_CST_X_CLASSTRIB,CADCBS_CST,CADCLASSTRIB '
   +'  WHERE CBS_CODIGO=ICC_CODCBS AND CT_CODIGO=ICC_CODCLASSTRIB '
  );


if PTIPO=1 then
  begin
  if ppre=0 then
     tb_cbs_cst_x_classtrib.SQl.Add(' and ICC_CODCBS like '+QuotedStr(pvalor+'%'))
   else
     tb_cbs_cst_x_classtrib.SQl.Add(' and ICC_CODCBS like '+QuotedStr(pvalor+'%'));
     tb_cbs_cst_x_classtrib.SQl.add(' order by ICC_CODCBS');

   end
else if (ptipo=2) then
   begin
   if (trim(pvalor)<>'') then
      tb_cbs_cst_x_classtrib.SQl.add(' and ICC_CODCLASSTRIB like '+QuotedStr(pvalor+'%'));
    tb_cbs_cst_x_classtrib.SQl.add(' order by ICC_CODCLASSTRIB');
  end
else
   begin
   if (trim(pvalor)<>'') then
      tb_cbs_cst_x_classtrib.SQl.add(' and ICC_ID='+fdeixanum('0'+pvalor));
   tb_cbs_cst_x_classtrib.SQl.Add(' order by ICC_ID')
   end;
tb_cbs_cst_x_classtrib.open;
if tb_cbs_cst_x_classtrib.Eof then
   Result:=False
else
   Result:=True;
end;


procedure TFrm_cbsCstXCadclassTrib.FormCreate(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=1;

cbs_cst_x_cadclass_trib_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCBS_CST_X_CLASSTRIB') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;
DBNavigator1.DataSource:=src_cbs_cst_x_classtrib;
DBGrid1.DataSource:=src_cbs_cst_x_classtrib;

end;

procedure TFrm_cbsCstXCadclassTrib.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadcbs_cst_x_classtrib_local(CAMPO.ItemIndex,1,Edit1.Text);

end;

procedure TFrm_cbsCstXCadclassTrib.DBE_ICC_CODCBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   tb_cbs_cst_x_classtribICC_CODCBS.Value:=fChamaCbsCst(0,'frmCBSCSTXcadclasstrib',Key,'');
   DBE_ICC_CODCBSExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_cbsCstXCadclassTrib.DBE_ICC_CODCLASSTRIBKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   tb_cbs_cst_x_classtribICC_CODCLASSTRIB.Value:=fChamaclasstrib(0,'frmCBSCSTXcadclasstrib',Key,'');
   DBE_ICC_CODCLASSTRIBExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_cbsCstXCadclassTrib.DBE_ICC_CODCBSExit(Sender: TObject);
var
query_cbs: tQuery;
begin
  inherited;

if Trim(tb_cbs_cst_x_classtribICC_CODCBS.AsString)<>'' then
   begin
   if fLerGenerico_query('CADCBS_CST','CBS_NOME,CBS_CODIGO',' CBS_CODIGO='+tb_cbs_cst_x_classtribICC_CODCBS.AsString,query_cbs) then
      BEGIN
      tb_cbs_cst_x_classtribnomecbs.Value:=query_cbs.fields[0].AsString;
      END
   else
      begin
      fmensagem('Cbs cst não Cadastrada!',0,['0'],0);
      DBE_ICC_ID.SetFocus;
      end;
   query_cbs.close;
   freeandnil(query_cbs);

   end;

end;

procedure TFrm_cbsCstXCadclassTrib.DBE_ICC_CODCLASSTRIBExit(
  Sender: TObject);
var
query_classtrib: tQuery;
begin
  inherited;
if Trim(tb_cbs_cst_x_classtribICC_CODCLASSTRIB.AsString)<>'' then
   begin
   if fLerGenerico_query('CADCLASSTRIB','CT_NOME,CT_CODIGO',' CT_CODIGO='+tb_cbs_cst_x_classtribICC_CODCLASSTRIB.AsString,query_classtrib) then
      BEGIN
      tb_cbs_cst_x_classtribnomeclasstrib.Value:=query_classtrib.fields[0].AsString;
      END
   else
      begin
      fmensagem('Classif Trib não Cadastrada!',0,['0'],0);
      DBE_ICC_CODCLASSTRIB.SetFocus;
      end;
   query_classtrib.close;
   freeandnil(query_classtrib);
   end;

end;

end.
