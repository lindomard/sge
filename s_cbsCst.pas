unit s_cbsCst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TFrm_CbsCst = class(TFrm_C)
    tb_cbs_cst: TQuery;
    U_cbs_cst: TUpdateSQL;
    tb_cbs_cstCBS_ID: TFloatField;
    tb_cbs_cstCBS_CODIGO: TStringField;
    tb_cbs_cstCBS_NOME: TStringField;
    tb_cbs_cstCBS_IND_IBS_CBS: TFloatField;
    tb_cbs_cstCBS_IND_IBS_CBS_MONO: TFloatField;
    tb_cbs_cstCBS_IND_G_RED: TFloatField;
    tb_cbs_cstCBS_IND_G_DIF: TFloatField;
    tb_cbs_cstCBS_IND_G_TANSF_CRED: TFloatField;
    tb_cbs_cstCBS_IND_G_CRED_PRES_IBSZFM: TFloatField;
    tb_cbs_cstCBS_IND_G_AJUSTE_COMPET: TFloatField;
    tb_cbs_cstCBS_IND_RED_BC: TFloatField;
    tb_cbs_cstCBS_DATHOR_INC: TDateField;
    tb_cbs_cstCBS_CODUSR_INC: TFloatField;
    tb_cbs_cstCBS_ID_EMP_ORIGEM_INC: TFloatField;
    tb_cbs_cstCBS_ORIGEM_INC: TStringField;
    tb_cbs_cstCBS_DATHOR_UEVE: TDateField;
    tb_cbs_cstCBS_CODUSR_UEVE: TFloatField;
    tb_cbs_cstCBS_ID_EMP_ORIGEM_UEVE: TFloatField;
    tb_cbs_cstCBS_ORIGEM_UEVE: TStringField;
    Label1: TLabel;
    DBE_CBS_ID: TDBEdit;
    src_cbs_cst: TDataSource;
    Label2: TLabel;
    DBE_CBS_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_CBS_NOME: TDBEdit;
    GroupBox1: TGroupBox;
    DBCB_ox1: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    lbl_filtros_extras: TLabel;
    edt_filtros_extras: TEdit;
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure tb_cbs_cstAfterInsert(DataSet: TDataSet);
    
  private
    { Private declarations }
    moper_cbs_cst: integer;
    mcodigo: string;
    bbinc_true:boolean;
    bbalt_true:boolean;
    bbexc_true:boolean;


    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;


    function flcadcbs_cst_local(ptipo,ppre: Integer; pvalor: String): Boolean;

  public
      cbs_cst_ori: string;
    { Public declarations }
  end;

var
  Frm_CbsCst: TFrm_CbsCst;

implementation

uses S_DM1, S_DM4, func_excecoes, lerarq, S_mensagem, Func;

{$R *.dfm}

procedure TFrm_CbsCst.INCLUIRClick(Sender: TObject);
begin
  inherited;

moper_cbs_cst:=0;

tb_cbs_cst.Append;
mcodigo:=tb_cbs_cstCBS_CODIGO.AsString;
DBE_CBS_CODIGO.SetFocus;

end;

procedure TFrm_CbsCst.ALTERARClick(Sender: TObject);
begin
  inherited;
if tb_cbs_cstCBS_ID.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
moper_cbs_cst:=1;

tb_cbs_cst.Edit;
DBE_CBS_CODIGO.SetFocus;

end;

procedure TFrm_CbsCst.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if tb_cbs_cstCBS_ID.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CADCBS_CST','',''
               ,['CBS_ID'],[tb_cbs_cstCBS_ID.AsString]
               ,tb_cbs_cst);

   tb_cbs_cst.Delete;
   end;

end;

procedure TFrm_CbsCst.GRAVARClick(Sender: TObject);
begin
  inherited;
if (tb_cbs_cstCBS_NOME.Value='_') or (tb_cbs_cstCBS_NOME.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['1'],0);
   DBE_CBS_CODIGO.SetFocus;
   exit;
   end;

if not fJaExiste(tb_cbs_cstCBS_ID.AsInteger,tb_cbs_cstCBS_NOME.AsString,tb_cbs_cstCBS_CODIGO.AsString) then
   begin
   while true do
      begin
      if tb_cbs_cstCBS_ID.AsInteger<=0 then
         tb_cbs_cstCBS_ID.AsInteger := fBuscarSequencia('CADCBS_CST_SEQ');
      if FAtualizaBanco(moper_cbs_cst,'CADCBS_CST','',''
                  ,['CBS_ID'],[tb_cbs_cstCBS_ID.AsString]
                  ,tb_cbs_cst) = 4 then
         begin
         mDadosSequence.nomeSequence := 'CADCBS_CST_SEQ';
         mDadosSequence.nomeTabela   := 'CADCBS_CST';
         mDadosSequence.nomeChaveId  := 'CBS_ID';
         fAjustarSequenceNova(mDadosSequence);
         tb_cbs_cstCBS_ID.value:=0
         end
      else
         break;   
      end;
   tb_cbs_cst.Post;
   CANCELAR.Click;
   end;

end;

procedure TFrm_CbsCst.CANCELARClick(Sender: TObject);
begin
  inherited;
if tb_cbs_cst.State in [dsEdit,dsInsert] then
   tb_cbs_cst.Cancel;


   
end;

procedure TFrm_CbsCst.SAIRClick(Sender: TObject);
begin
  inherited;
  close;
end;

function TFrm_CbsCst.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
query_existe.sql.add('SELECT CBS_ID,CBS_NOME,CBS_CODIGO from CADCBS_CST where 1=1 ');
if (pId<>0) then
    begin
    query_existe.SQL.add(' and CBS_ID='+IntToStr(pId));
    end;

if (trim(pNome)<>'') then
    begin
    query_existe.SQL.add(' and CBS_NOME='+QuotedStr(pNome));
    end;

if (trim(pCodigo)<>'') then
    begin
    query_existe.SQL.add(' and CBS_CODIGO='+QuotedStr(pCodigo));
    end;

try
   query_existe.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_existe,201,'_stru '+e.message,'user');
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
   MessageDlg('Ja Existe um Registro igual a este. Id '+query_existe.fieldbyName('CBS_ID').AsString+' Nome: '+query_existe.fieldbyname('CBS_NOME').AsString
   +' Nome: '+query_existe.fieldbyname('CBS_CODIGO').AsString,mtWarning,[mbOk],0);
   result:=true;
   end;
pFechartudo;


end;

procedure TFrm_CbsCst.FormCreate(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=1;
cbs_cst_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCBS_CST') then
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
DBNavigator1.DataSource:=src_cbs_cst;
DBGrid1.DataSource:=src_cbs_cst;


end;

procedure TFrm_CbsCst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CbsCst.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if cbs_cst_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;


function TFrm_CbsCst.flcadcbs_cst_local(ptipo,ppre: Integer; pvalor: String): Boolean;
begin
tb_cbs_cst.Close;
tb_cbs_cst.Sql.clear;
tb_cbs_cst.Sql.add('Select * from CADCBS_CST where 1=1 ');

if trim(edt_filtros_extras.Text)<>'' then
   tb_cbs_cst.sql.add(' and '+edt_filtros_extras.Text);

if PTIPO<1 then
  begin
  if ppre=0 then
     tb_cbs_cst.SQl.Add(' and CBS_NOME like '+QuotedStr(pvalor+'%'))
   else
     tb_cbs_cst.SQl.Add(' and CBS_NOME like '+QuotedStr(pvalor+'%'));
    tb_cbs_cst.SQl.add(' order by CBS_NOME');

   end
else if (ptipo=1) then
   begin
   if (trim(pvalor)<>'') then
      tb_cbs_cst.SQl.add(' and CBS_CODIGO like '+QuotedStr(pvalor+'%'));
    tb_cbs_cst.SQl.add(' order by CBS_CODIGO');
  end
else
   begin
   if (trim(pvalor)<>'') then
      tb_cbs_cst.SQl.add(' and CBS_ID='+fdeixanum('0'+pvalor));
   tb_cbs_cst.SQl.Add(' order by CBS_ID')
   end;
tb_cbs_cst.open;
if tb_cbs_cst.Eof then
   Result:=False
else
   Result:=True;
end;



procedure TFrm_CbsCst.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadcbs_cst_local(CAMPO.ItemIndex,1,Edit1.Text);

end;

procedure TFrm_CbsCst.tb_cbs_cstAfterInsert(DataSet: TDataSet);
begin
  inherited;

tb_cbs_cstCBS_IND_IBS_CBS.Value            := 0;
tb_cbs_cstCBS_IND_IBS_CBS_MONO.Value       := 0;
tb_cbs_cstCBS_IND_G_RED.Value              := 0;
tb_cbs_cstCBS_IND_G_DIF.Value              := 0;
tb_cbs_cstCBS_IND_G_TANSF_CRED.Value       := 0;
tb_cbs_cstCBS_IND_G_CRED_PRES_IBSZFM.Value := 0;
tb_cbs_cstCBS_IND_G_AJUSTE_COMPET.Value    := 0;
Tb_cbs_cstCBS_IND_RED_BC.Value             := 0;


end;

end.
