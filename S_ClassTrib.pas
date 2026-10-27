unit S_ClassTrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DBTables, DB, RxDBComb, ToolEdit, RXDBCtrl;

type
  TFrm_ClassTrib = class(TFrm_C)
    src_classTrib: TDataSource;
    tb_classTrib: TQuery;
    U_classTrib: TUpdateSQL;
    tb_classTribCT_ID: TFloatField;
    tb_classTribCT_CODIGO: TStringField;
    tb_classTribCT_NOME: TStringField;
    tb_classTribCT_DESCRICAO: TMemoField;
    tb_classTribCT_REDACAO: TMemoField;
    tb_classTribCT_LC_214_25: TStringField;
    tb_classTribCT_TIPO_ALIQ: TFloatField;
    tb_classTribCT_PRED_IBS: TFloatField;
    tb_classTribCT_PRED_CBS: TFloatField;
    tb_classTribCT_IND_G_TRIB_REGULAR: TFloatField;
    tb_classTribCT_IND_G_MONO_PADRAO: TFloatField;
    tb_classTribCT_IND_G_MONO_RETEN: TFloatField;
    tb_classTribCT_IND_G_MONO_RET: TFloatField;
    tb_classTribCT_IND_G_MONO_DIF: TFloatField;
    tb_classTribCT_IND_G_ESTORNO_CRED: TFloatField;
    tb_classTribCT_DT_VIG_INI: TDateTimeField;
    tb_classTribCT_DT_VIG_FIN: TDateTimeField;
    tb_classTribCT_DT_ATUALIZACAO: TDateTimeField;
    tb_classTribCT_IND_NFE_ABI: TFloatField;
    tb_classTribCT_IND_NFE: TFloatField;
    tb_classTribCT_IND_NFCE: TFloatField;
    tb_classTribCT_IND_CTE: TFloatField;
    tb_classTribCT_IND_CTE_OS: TFloatField;
    tb_classTribCT_IND_BPE: TFloatField;
    tb_classTribCT_IND_BPE_TA: TFloatField;
    tb_classTribCT_IND_BPE_TM: TFloatField;
    tb_classTribCT_IND_NF_3E: TFloatField;
    tb_classTribCT_IND_NFSE: TFloatField;
    tb_classTribCT_IND_NFSE_VIA: TFloatField;
    tb_classTribCT_IND_NF_COM: TFloatField;
    tb_classTribCT_IND_NF_AG: TFloatField;
    tb_classTribCT_IND_NF_GAS: TFloatField;
    tb_classTribCT_IND_DERE: TFloatField;
    tb_classTribCT_ANEXO: TStringField;
    tb_classTribCT_LINK: TStringField;
    tb_classTribCT_DATHOR_INC: TDateTimeField;
    tb_classTribCT_CODUSR_INC: TFloatField;
    tb_classTribCT_ID_EMP_ORIGEM_INC: TFloatField;
    tb_classTribCT_ORIGEM_INC: TStringField;
    tb_classTribCT_DATHOR_UEVE: TDateTimeField;
    tb_classTribCT_CODUSR_UEVE: TFloatField;
    tb_classTribCT_ID_EMP_ORIGEM_UEVE: TFloatField;
    tb_classTribCT_ORIGEM_UEVE: TStringField;
    Label1: TLabel;
    DBE_CT_ID: TDBEdit;
    Label2: TLabel;
    DBE_CT_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_CT_NOME: TDBEdit;
    Label4: TLabel;
    DBM_CT_DESCRICAO: TDBMemo;
    Label5: TLabel;
    DBM_CT_REDACAO: TDBMemo;
    Label6: TLabel;
    DBE_CT_LC_214_25: TDBEdit;
    Label7: TLabel;
    DBE_CT_PRED_CBS: TDBEdit;
    Label8: TLabel;
    DBE_CT_PRED_IBS: TDBEdit;
    Label9: TLabel;
    RxDBCB_CT_TIPO_ALIQ: TRxDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBDtCT_DT_VIG_INI: TDBDateEdit;
    DBDtCT_DT_VIG_FIN: TDBDateEdit;
    DBDt_CT_DT_ATUALIZACAO: TDBDateEdit;
    Label13: TLabel;
    DBE_CT_ANEXO: TDBEdit;
    Label14: TLabel;
    DBE_CT_LINK: TDBEdit;
    GroupBox1: TGroupBox;
    DBCB_ox1: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCBCT_IND_NFE: TDBCheckBox;
    DBcB_CT_IND_NFCE: TDBCheckBox;
    DBCB_CT_IND_CTE: TDBCheckBox;
    DBCB_CT_IND_CTE_OS: TDBCheckBox;
    DBCB_CT_IND_BPE: TDBCheckBox;
    DBCB_ox12: TDBCheckBox;
    DBCB_CT_IND_BPE_TM: TDBCheckBox;
    DBCB_CT_IND_NF_3E: TDBCheckBox;
    DBCB_CT_IND_NF_COM: TDBCheckBox;
    DBCB_CT_IND_NF_AG: TDBCheckBox;
    DBCB_CT_IND_NF_GAS: TDBCheckBox;
    DBCB_CT_IND_NFSE_VIA: TDBCheckBox;
    DBCB_CT_IND_NFSE: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    Label15: TLabel;
    lbl_filtros_extras: TLabel;
    edt_filtros_extras: TEdit;
    procedure BBnAtuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure tb_classTribAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }

    moper_classTrib: integer;
    mcodigo: string;
    bbinc_true:boolean;
    bbalt_true:boolean;
    bbexc_true:boolean;


    function fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;


    function flcadclassTrib_local(ptipo,ppre: Integer; pvalor: String): Boolean;

  public
    { Public declarations }
    classTrib_ori: string;

  end;

var
  Frm_ClassTrib: TFrm_ClassTrib;

implementation

uses S_DM1, Func, func_excecoes, S_DM4, lerarq;

{$R *.dfm}


function TFrm_ClassTrib.flcadclassTrib_local(ptipo,ppre: Integer; pvalor: String): Boolean;
begin
tb_classTrib.Close;
tb_classTrib.Sql.clear;
tb_classTrib.Sql.add('Select * from CADCLASSTRIB where 1=1 ');

if trim(edt_filtros_extras.Text)<>'' then
    tb_classTrib.sql.add(' and '+edt_filtros_extras.Text);

if PTIPO<1 then
  begin
  if ppre=0 then
     tb_classTrib.SQl.Add(' and CT_NOME like '+QuotedStr(pvalor+'%'))
   else
     tb_classTrib.SQl.Add(' and CT_NOME like '+QuotedStr(pvalor+'%'));
    tb_classTrib.SQl.add(' order by CT_NOME');

   end
else if (ptipo=1) then
   begin
   if (trim(pvalor)<>'') then
      tb_classTrib.SQl.add(' and CT_CODIGO like '+QuotedStr(pvalor+'%'));
    tb_classTrib.SQl.add(' order by CT_CODIGO');
  end
else
   begin
   if (trim(pvalor)<>'') then
      tb_classTrib.SQl.add(' and CT_ID='+fdeixanum('0'+pvalor));
   tb_classTrib.SQl.Add(' order by CT_ID')
   end;
tb_classTrib.open;
if tb_classTrib.Eof then
   Result:=False
else
   Result:=True;
end;


function TFrm_ClassTrib.fJaExiste(pId: integer; pNome: String; pCodigo: String): boolean;
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
query_existe.sql.add('SELECT CT_ID,CT_NOME,CT_CODIGO from CADCLASSTRIB where 1=1 ');
if (pId<>0) then
    begin
    query_existe.SQL.add(' and CT_ID='+IntToStr(pId));
    end;

if (trim(pNome)<>'') then
    begin
    query_existe.SQL.add(' and CT_NOME='+QuotedStr(pNome));
    end;

if (trim(pCodigo)<>'') then
    begin
    query_existe.SQL.add(' and CT_CODIGO='+QuotedStr(pCodigo));
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
   MessageDlg('Ja Existe um Registro igual a este. Id '+query_existe.fieldbyName('CT_ID').AsString+' Nome: '+query_existe.fieldbyname('CT_NOME').AsString
   +' Nome: '+query_existe.fieldbyname('CT_CODIGO').AsString,mtWarning,[mbOk],0);
   result:=true;
   end;
pFechartudo;


end;

procedure TFrm_ClassTrib.BBnAtuClick(Sender: TObject);
begin
  inherited;
flcadclassTrib_local(CAMPO.ItemIndex,1,Edit1.Text);

end;

procedure TFrm_ClassTrib.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if classTrib_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   end;

end;

procedure TFrm_ClassTrib.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ClassTrib.FormCreate(Sender: TObject);
begin
  inherited;
PC1.ActivePageIndex:=1;  
classTrib_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADCLASSTRIB') then
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
DBNavigator1.DataSource:=src_classTrib;
DBGrid1.DataSource:=src_classTrib;

tb_classTribCT_PRED_IBS.DisplayFormat   :=mcasas;
tb_classTribCT_PRED_CBS.DisplayFormat   :=mcasas;

end;

procedure TFrm_ClassTrib.INCLUIRClick(Sender: TObject);
begin
  inherited;

moper_classTrib:=0;

tb_classTrib.Append;
mcodigo:=tb_classTribCT_CODIGO.AsString;
DBE_CT_CODIGO.SetFocus;

end;

procedure TFrm_ClassTrib.ALTERARClick(Sender: TObject);
begin
  inherited;
if tb_classTribCT_ID.IsNull then
   begin
   fmensagem('Nao a registro a ser alterado',0,['1'],0);
   exit;
   end;
moper_classTrib:=1;

tb_classTrib.Edit;
DBE_CT_CODIGO.SetFocus;

end;

procedure TFrm_ClassTrib.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if tb_classTribCT_ID.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['1'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   FAtualizaBanco(2,'CADCLASSTRIB','',''
               ,['CT_ID'],[tb_classTribCT_ID.AsString]
               ,tb_classTrib);

   tb_classTrib.Delete;
   end;

end;

procedure TFrm_ClassTrib.GRAVARClick(Sender: TObject);
begin
  inherited;
if (tb_classTribCT_NOME.Value='_') or (tb_classTribCT_NOME.IsNull) then
   begin
   fmensagem('Nome Invalido!',0,['1'],0);
   DBE_CT_CODIGO.SetFocus;
   exit;
   end;

if not fJaExiste(tb_classTribCT_ID.AsInteger,tb_classTribCT_NOME.AsString,tb_classTribCT_CODIGO.AsString) then
   begin
   while true do
      begin
      if tb_classTribCT_ID.AsInteger<=0 then
         tb_classTribCT_ID.AsInteger := fBuscarSequencia('CADCLASSTRIB_SEQ');
      if FAtualizaBanco(moper_classTrib,'CADCLASSTRIB','',''
               ,['CT_ID'],[tb_classTribCT_ID.AsString]
               ,tb_classTrib) = 4 then
         begin
         mDadosSequence.nomeSequence := 'CADCLASSTRIB_SEQ';
         mDadosSequence.nomeTabela   := 'CADCLASSTRIB';
         mDadosSequence.nomeChaveId  := 'CBS_ID';
         fAjustarSequenceNova(mDadosSequence);
         tb_classTribCT_ID.value:=0
         end
      else
         break;
      end;      

   tb_classTrib.Post;

   CANCELAR.Click;
   end;


end;

procedure TFrm_ClassTrib.CANCELARClick(Sender: TObject);
begin
  inherited;
if tb_classTrib.State in [dsEdit,dsInsert] then
   tb_classTrib.Cancel;

end;

procedure TFrm_ClassTrib.SAIRClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TFrm_ClassTrib.tb_classTribAfterInsert(DataSet: TDataSet);
begin
  inherited;
tb_classTribCT_TIPO_ALIQ.value          :=0;
tb_classTribCT_PRED_IBS.value           :=0;
tb_classTribCT_PRED_CBS.value           :=0;
tb_classTribCT_IND_G_TRIB_REGULAR.value :=0;
tb_classTribCT_IND_G_MONO_PADRAO.value  :=0;
tb_classTribCT_IND_G_MONO_RETEN.value   :=0;
tb_classTribCT_IND_G_MONO_RET.value     :=0;
tb_classTribCT_IND_G_MONO_DIF.value     :=0;
tb_classTribCT_IND_G_ESTORNO_CRED.value :=0;
tb_classTribCT_IND_NFE_ABI.value        :=0;
tb_classTribCT_IND_NFE.value            :=0;
tb_classTribCT_IND_NFCE.value           :=0;
tb_classTribCT_IND_CTE.value            :=0;
tb_classTribCT_IND_CTE_OS.value         :=0;
tb_classTribCT_IND_BPE.value            :=0;
tb_classTribCT_IND_BPE_TA.value         :=0;
tb_classTribCT_IND_BPE_TM.value         :=0;
tb_classTribCT_IND_NF_3E.value          :=0;
tb_classTribCT_IND_NFSE.value           :=0;
tb_classTribCT_IND_NFSE_VIA.value       :=0;
tb_classTribCT_IND_NF_COM.value         :=0;
tb_classTribCT_IND_NF_AG.value          :=0;
tb_classTribCT_IND_NF_GAS.value         :=0;
tb_classTribCT_IND_DERE.value           :=0;


end;

end.
