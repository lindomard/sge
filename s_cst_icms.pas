unit s_cst_icms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables, DBClient;

type
  TFrm_cst_icms = class(TFrm_C)
    tb_cst_icms: TQuery;
    tb_cst_icmsCST_ID: TFloatField;
    tb_cst_icmsCST_CODIGO: TStringField;
    tb_cst_icmsCST_NOME: TStringField;
    tb_cst_icmsCST_CODUSR_INC: TFloatField;
    tb_cst_icmsCST_DATHOR_INC: TDateTimeField;
    tb_cst_icmsCST_ORIGEM_INC: TStringField;
    tb_cst_icmsCST_CODUSR_UEVE: TFloatField;
    tb_cst_icmsCST_DATHOR_UEVE: TDateTimeField;
    tb_cst_icmsCST_ORIGEM_UEVE: TStringField;
    tb_cst_icmsEVENTO: TMemoField;
    Label1: TLabel;
    DBE_CST_ID: TDBEdit;
    src_cst_icms: TDataSource;
    Label2: TLabel;
    DBE_CST_CODIGO: TDBEdit;
    Label3: TLabel;
    DBE_CST_NOME: TDBEdit;
    Label4: TLabel;
    DBMemo_EVENTO: TDBMemo;
    gb_codigos_beneficios: TGroupBox;
    cds_cbenef: TClientDataSet;
    cds_cbenefcstb_id: TIntegerField;
    cds_cbenefcstb_id_cst: TIntegerField;
    cds_cbenefcstb_uf: TStringField;
    cds_cbenefcstb_cbenef: TStringField;
    src_cbenef: TDataSource;
    DBGrid2_cbenef: TDBGrid;
    u_cst_icms: TUpdateSQL;
    bbBaixar: TBitBtn;
    edt_comando: TEdit;
    bbExluirCbenef: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure cds_cbenefBeforePost(DataSet: TDataSet);
    procedure cds_cbenefAfterDelete(DataSet: TDataSet);
    procedure cds_cbenefAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure tb_cst_icmsAfterDelete(DataSet: TDataSet);
    procedure cds_cbenefBeforeDelete(DataSet: TDataSet);
    procedure tb_cst_icmsAfterPost(DataSet: TDataSet);
    procedure cds_cbenefAfterInsert(DataSet: TDataSet);
    procedure DBGrid2_cbenefExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure src_cst_icmsDataChange(Sender: TObject; Field: TField);
    procedure bbBaixarClick(Sender: TObject);
    procedure bbExluirCbenefClick(Sender: TObject);
  private
    { Private declarations }



    mcBenef_Ant: integer;
    cst_icms_ori: string;
    cds_novo: TClientDataSet;



    function fDeletarFilhos: boolean;
    function fExisteCodigo(pCodCst: String; pChaveId: integer): String;
    function fExisteNome(pNome: String; pChaveId: integer): String;




    function flcadcsticms(ptipo: Integer; pvalor: String): Boolean;

    function fBuscarChaveId: integer;

    function fVerificaCodigoBeneficioDuplicado(pCodigoBenef,pUF :String; pRecno: integer): boolean;


    function fLerCodigoBeneficios(pChaveId: integer): boolean;


    procedure fAtualizarCopia;

    function fAtualizarCBeneficio(pId: integer): boolean;

    function fBuscarChaveId_cBenef: integer;

    procedure fAtualizarCBeneficioNoBanco;


    procedure fDeletarCBeneficioNoBanco;





    function fBaixarCstIcms:boolean;


  public
    { Public declarations }
  end;


var
  Frm_cst_icms: TFrm_cst_icms;

implementation

uses S_DM1, Func, func_excecoes, S_Aviso, Func2, S_Agde, lerarq,
  funcoes_especificas;

{$R *.dfm}

procedure TFrm_cst_icms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
cds_novo.close;
freeandNil(cds_novo);

if (FormState<>[fsModal]) then
   Action := caFree;

end;





















procedure TFrm_cst_icms.INCLUIRClick(Sender: TObject);
begin
  inherited;
tb_cst_icms.Append;
fLerCodigoBeneficios(-1);
DBE_CST_CODIGO.SetFocus;

end;

procedure TFrm_cst_icms.ALTERARClick(Sender: TObject);
begin
  inherited;
if tb_cst_icmsCST_ID.IsNull then
   begin
   ShowMessage('Não a registro a ser alterado');
   exit;
   end;
tb_cst_icms.Edit;
DBE_CST_NOME.SetFocus;

end;

procedure TFrm_cst_icms.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if tb_cst_icmsCST_ID.IsNull then
   begin
   ShowMessage('Não ha registro a ser excluido!');
   exit;
   end;

if Application.MessageBox(pchar( 'Ao Exluir este registro os filhos tambem serão excluidos ' + mQuebraLinha +'posso continar?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   begin
   if fDeletarFilhos then
      begin
      tb_cst_icms.Delete;
      end;

   end;

end;

procedure TFrm_cst_icms.GRAVARClick(Sender: TObject);
var
mMensagem: String;
begin
  inherited;
mMensagem:='';
if (tb_cst_icmsCST_CODIGO.IsNull) then
   begin
   mMensagem:=mMensagem+'Código é obrigatorio o preechimento!'+#13
   end;

if (tb_cst_icmsCST_NOME.IsNull) then
   begin
   mMensagem:=mMensagem+'Nome é obrigatorio o preechimento!'+#13
   end;

mMensagem:=mMensagem+fExisteCodigo(tb_cst_icmsCST_CODIGO.AsString,tb_cst_icmsCST_ID.AsInteger);
mMensagem:=mMensagem+fExisteNome(tb_cst_icmsCST_NOME.AsString,tb_cst_icmsCST_ID.AsInteger);



if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   DBE_CST_CODIGO.SetFocus;
   exit;
   end;
tb_cst_icms.tag:=1;
if tb_cst_icms.State in [dsInsert] then
   begin
   tb_cst_icmsCST_ID.AsInteger:=fBuscarChaveId;
   tb_cst_icmsCST_CODUSR_INC.AsInteger:=codusr;
   tb_cst_icmsCST_DATHOR_INC.AsDateTime:=Now;
   tb_cst_icmsCST_ORIGEM_INC.AsString:=NomeComputador;
   end;
tb_cst_icmsCST_CODUSR_UEVE.AsInteger:=codusr;
tb_cst_icmsCST_DATHOR_UEVE.AsDateTime:=Now;
tb_cst_icmsCST_ORIGEM_UEVE.AsString:=NomeComputador;

tb_cst_icms.Post;
CANCELAR.Click;
tb_cst_icms.tag:=0;

end;

procedure TFrm_cst_icms.CANCELARClick(Sender: TObject);
begin
  inherited;
tb_cst_icms.Cancel;
mcBenef_Ant:=-1;
src_cst_icmsDataChange(self, tb_cst_icmsCST_ID);
end;
function TFrm_cst_icms.fExisteCodigo(pCodCst: String; pChaveId: integer): String;
var
query_codcst: tQuery;
begin
result:='';
query_codcst:=tQuery.create(nil);
query_codcst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_codcst.Sql.clear;
query_codcst.Sql.add('select CST_NOME,CST_CODIGO,CST_ID from CADCST_ICMS where CST_CODIGO=:CODIGO ');
query_codcst.parambyname('CODIGO').asString:=pCodCst;

if pChaveId>0 then
   begin
   query_codcst.Sql.add(' and CST_ID <> :ID ');
   query_codcst.parambyname('ID').asinteger:=pChaveId;
   end;

try
   query_codcst.open;
   if not query_codcst.IsEmpty then
      begin
      result:='Codigo'+pCodCst+' ja Existe no Registro ' +query_codcst.fieldbyName('cst_ID').asstring+' - ' + query_codcst.fieldbyname('cst_nome').AsString+#13;
      end;

except ON E: Exception do
   begin
   ex_erroSql_Novo(query_codcst,186,'_stru'+e.message,'user');
   end;
   end;
query_codcst.close;
freeandnil(query_codcst);



end;

function TFrm_cst_icms.fExisteNome(pNome: String; pChaveId: integer): String;
var
query_codcst: tQuery;
begin
result:='';
query_codcst:=tQuery.create(nil);
query_codcst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_codcst.Sql.clear;
query_codcst.Sql.add('select CST_NOME,CST_CODIGO,CST_ID from CADCST_ICMS where CST_NOME=:NOME ');
query_codcst.parambyname('NOME').asString:=pNome;

if pChaveId>0 then
   begin
   query_codcst.Sql.add(' and CST_ID <> :ID ');
   query_codcst.parambyname('ID').asinteger:=pChaveId;
   end;

try
   query_codcst.open;
   if not query_codcst.IsEmpty then
      begin
      result:='Nome'+pNome+' ja Existe no Registro ' +query_codcst.fieldbyName('cst_ID').asstring+' - ' + query_codcst.fieldbyname('cst_codigo').AsString+#13;
      end;

except ON E: Exception do
   begin
   ex_erroSql_Novo(query_codcst,235,'_stru'+e.message,'user');
   end;
   end;
query_codcst.close;
freeandnil(query_codcst);



end;



function TFrm_cst_icms.flcadcsticms(ptipo: Integer; pvalor: String): Boolean;
{
ppre= precisao da informacao
0-Exata
1-Aproximado
}
begin
tb_cst_icms.Close;
tb_cst_icms.SQl.Clear;
tb_cst_icms.SQL.Add('Select CADCST_ICMS.* '+
                   ', '+QuotedStr('Incluido em ')
                   +' || TO_CHAR(CST_DATHOR_INC, '+QuotedStr('DD/MM/YYYY HH24:MI:SS')
                   +' ) || '
                   +QuotedStr('  por ')+' || TO_CHAR(CST_CODUSR_INC) || '
                   +quotedstr(' - ')+' || CST_ORIGEM_INC '
                   +'|| '+quotedstr(' último evento em ')
                   +' || TO_CHAR(CST_DATHOR_UEVE, '
                   +quotedstr('DD/MM/YYYY HH24:MI:SS')
                   +') || '
                   +quotedstr(' por ')
                   +' || TO_CHAR(CST_CODUSR_UEVE) || '
                   +quotedstr(' - ')
                   +' || CST_ORIGEM_UEVE as evento '
                   +' from CADCST_ICMS where 1=1 ');


if trim(pvalor)<>'' then
   begin
   if ptipo=0 then
      begin
      tb_cst_icms.Sql.add(' where CST_NOME like '+QuotedStr(pvalor+'%'));
      end
   else if ptipo=1 then
      begin
      tb_cst_icms.Sql.add(' where CST_CODIGO =  '+QuotedStr(pvalor));
      end
   else
      begin
      tb_cst_icms.Sql.add(' where CST_ID =  '+fdeixanum(pvalor));
      end;
   end;

tb_cst_icms.Sql.add(' order by CST_NOME');

try
   tb_cst_icms.Open;
except ON E: Exception do
   begin
   ex_erroSql_Novo(tb_cst_icms,320,'_stru'+e.message,'user');
   end;
   end;

if tb_cst_icms.eof then
   begin
   Result:=False;
   fLerCodigoBeneficios(-1);
   end
else
   fLerCodigoBeneficios(tb_cst_icmsCST_ID.AsInteger);
   Result:=True;
end;



procedure TFrm_cst_icms.BBnAtuClick(Sender: TObject);
begin
  inherited;

flcadcsticms(CAMPO.ItemIndex,Edit1.Text);

end;


function TFrm_cst_icms.fBuscarChaveId: integer;
var
query_codcst: tQuery;
begin
result:=-1;
query_codcst:=tQuery.create(nil);
query_codcst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_codcst.Sql.clear;
query_codcst.Sql.add('select CADCST_ICMS_SEQ.nextval as chave from dual');
try
   query_codcst.open;

   if not query_codcst.IsEmpty then
      begin
      result:=query_codcst.fieldbyname('chave').AsInteger;
      end;

except ON E: Exception do
   begin
   ex_erroSql_Novo(query_codcst,186,'_stru'+e.message,'user');
   end;
   end;
query_codcst.close;
freeandnil(query_codcst);



end;



procedure TFrm_cst_icms.c(DataSet: TDataSet);
begin
  inherited;
Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;

end;

function TFrm_cst_icms.fVerificaCodigoBeneficioDuplicado(pCodigoBenef,pUF :String; pRecno: integer ): boolean;
//var
//mRecno: integer;
begin
if cds_cbenef.ControlsDisabled then
   exit;

cds_novo.first;
result:=true;

While not cds_novo.Eof do
   begin
//mRecno := cds_novo.RecNo;
   if (puf = cds_novo.fieldbyName('cstb_uf').Asstring) and
       (pCodigoBenef = cds_novo.fieldbyName('cstb_cbenef').Asstring)
       and (cds_novo.RecNo <> pRecno) then

       begin
       MessageDlg('Codigo do Beneficio '+cds_cbenefcstb_cbenef.AsString+' Estado '+cds_cbenefcstb_uf.AsString+' ja Existe!',mtWarning,[mbOk],0);
       result:=false;
       end;
   cds_novo.next;
   end;


end;

function TFrm_cst_icms.fLerCodigoBeneficios(pChaveId: integer): boolean;
var
query_cbenef: tQuery;
begin

if cds_cbenef.Active=false then
   begin
   cds_cbenef.CreateDataSet;
   cds_cbenef.Open;
   end;
cds_cbenef.DisableControls;
cds_cbenef.EmptyDataSet;

mcBenef_Ant := -1;
if pChaveId>0 then
   begin
   mcBenef_Ant :=pChaveId;
   query_cbenef:=tQuery.create(nil);
   query_cbenef.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_cbenef.sql.add('select * from CADCST_ICMS_CBENEF where CSTB_ID_CST='+inttostr(pChaveId));
   try
      query_cbenef.Open;
      While not query_cbenef.eof do
         begin
         cds_cbenef.Append;
         cds_cbenefcstb_id.AsInteger := query_cbenef.fieldbyname('CSTB_ID').AsInteger;
         cds_cbenefcstb_id_cst.AsInteger := query_cbenef.fieldbyname('CSTB_ID_CST').AsInteger;
         cds_cbenefcstb_uf.AsString := query_cbenef.fieldbyname('CSTB_UF').AsString;
         cds_cbenefcstb_cbenef.AsString := query_cbenef.fieldbyname('CSTB_CBENEF').AsString;
         cds_cbenef.post;
         query_cbenef.next;
         end;

   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_cbenef,437,'_stru'+e.message,'user');
      end;
      end;
   query_cbenef.close;
   freeandnil(query_cbenef);

   end;
fAtualizarCopia;
cds_cbenef.EnableControls;
end;

procedure TFrm_cst_icms.cds_cbenefBeforePost(DataSet: TDataSet);
var
mIndexUF: integer;
query_consulta: tQuery;
begin
  inherited;
if (cds_cbenefcstb_uf.IsNull) OR (cds_cbenefcstb_uf.AsString='') then
   begin
   cds_cbenef.Cancel;
   abort;
   end
else
   begin
  query_consulta := tQuery.create(nil);
  query_consulta.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   if not fLerGenerico_query('CAD_CBENEF','CB_DESCRICAO'
   ,'CB_CODIGO='+QuotedStr(cds_cbenefcstb_cbenef.AsString),query_consulta) then
      begin
      Messagedlg('Código do Beneficio '+cds_cbenefcstb_cbenef.AsString+' nao Cadastrado! '+mQuebraLinha
                 +'Para Cadatrar entre em Fiscais->Codigos do Beneficio(CBENEF)' ,mtWarning,[mbOk],0);
      abort;
      end;
   query_consulta.close;
   FreeAndNil(query_consulta);

   if not fVerificaCodigoBeneficioDuplicado(cds_cbenefcstb_cbenef.AsString,cds_cbenefcstb_uf.AsString,
    iif(cds_cbenef.State in [dsEdit], cds_cbenef.RecNo, -1)) then
      abort;

   mIndexUF := DBGrid2_cbenef.Columns[0].PickList.IndexOf(cds_cbenefcstb_uf.AsString);
   if mIndexUF>-1 then
      begin
      if DBGrid2_cbenef.Columns[0].PickList[mIndexUF]<>cds_cbenefcstb_uf.AsString then
         mIndexUF:=-1; 
      end;
   if mIndexUF < 0 then
      begin
      MessageDlg('Estado '+cds_cbenefcstb_uf.AsString+' não encontrado!',mtWarning,[mbOk],0);
      abort;
      end;
   end;   
end;

procedure TFrm_cst_icms.cds_cbenefAfterDelete(DataSet: TDataSet);
begin
  inherited;
fAtualizarCopia;

end;


procedure TFrm_cst_icms.fAtualizarCopia;
begin

cds_novo.Data:=cds_cbenef.Data;

end;

procedure TFrm_cst_icms.cds_cbenefAfterPost(DataSet: TDataSet);
begin
  inherited;

fAtualizarCopia;
end;

procedure TFrm_cst_icms.fAtualizarCBeneficioNoBanco;
var
query_codcst: tQuery;
mChaves: String;
mUnion: string;
begin
fAtualizarCBeneficio(tb_cst_icmsCST_ID.AsInteger);

cds_cbenef.DisableControls;
query_codcst:=tQuery.create(nil);
query_codcst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
mUnion:='';
mChaves:='';

if not cds_cbenef.IsEmpty then
   begin
   query_codcst.Sql.clear;
   query_codcst.Sql.add('Merge into CADCST_ICMS_CBENEF t1 USING ( ');
   cds_cbenef.First;

   While not cds_cbenef.Eof do
      begin
      mChaves := mChaves + iif(length(mchaves)<1,'',', ')+cds_cbenefcstb_id.AsString;
      query_codcst.SQL.Add(mUnion);
      query_codcst.SQL.Add('select '
                         +cds_cbenefcstb_id.AsString+' as CSTB_ID, '
                         +QuotedStr(cds_cbenefcstb_uf.AsString)+' as CSTB_UF, '
                         +QuotedStr(cds_cbenefcstb_cbenef.AsString)+' as CSTB_CBENEF, '
                         + tb_cst_icmsCST_ID.AsString+' as CSTB_ID_CST '
                         +' from dual ');
      cds_cbenef.Next;
      mUnion:=' union all ';
      end;




   query_codcst.SQL.Add(' ) ss '
                        +' on (t1.CSTB_ID = ss.CSTB_ID ) '
                        +' WHEN MATCHED THEN update set  '
                        +' t1.CSTB_UF = ss.CSTB_UF, '
                        +' t1.CSTB_CBENEF = ss.CSTB_CBENEF, '
                        +' t1.CSTB_ID_CST = ss.CSTB_ID_CST '
                        +'  '

                        +' WHEN NOT MATCHED THEN insert ( '
                        +' t1.CSTB_ID, '
                        +' t1.CSTB_UF, '
                        +' t1.CSTB_CBENEF, '
                        +' t1.CSTB_ID_CST '
                        +' ) values ('
                        +' ss.CSTB_ID, '
                        +' ss.CSTB_UF, '
                        +' ss.CSTB_CBENEF, '
                        +' ss.CSTB_ID_CST '
                        +') ');
   try
      query_codcst.execSql;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_codcst,541,'_stru'+e.message,'user');
      end;
      end;
   end;
if mChaves<>'' then
   begin
   query_codcst.Close;
   query_codcst.SQL.Clear;
   query_codcst.sql.add('delete from CADCST_ICMS_CBENEF where CSTB_ID_CST='+tb_cst_icmsCST_ID.AsString);
   if mChaves<>'' then
      query_codcst.SQL.add(' and not CSTB_ID in ('+mChaves+')');

   try
      query_codcst.execSql;
      fdm1StartCommit;
   except ON E: Exception do
      begin
      ex_erroSql_Novo(query_codcst,578,'_stru'+e.message,'user');
      end;
      end;
   end;



query_codcst.close;
freeandnil(query_codcst);

cds_cbenef.EnableControls;

end;

// inicio

procedure TFrm_cst_icms.fDeletarCBeneficioNoBanco;
var
query_codcst: tQuery;
begin
query_codcst:=tQuery.create(nil);
query_codcst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_codcst.Close;
query_codcst.sql.
clear;
query_codcst.sql.add('delete from CADCST_ICMS_CBENEF where not CSTB_ID_CST='+cds_cbenefcstb_id_cst.AsString);

try
   query_codcst.execSql;
   fdm1StartCommit;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_codcst,616,'_stru'+e.message,'user');
   end;
   end;

query_codcst.close;
freeandnil(query_codcst);



end;

// termino


procedure TFrm_cst_icms.FormCreate(Sender: TObject);
begin
  inherited;
cds_novo:=TClientDataSet.Create(nil);
cst_icms_ori:='';
//edt_comando.Visible:=codusr=1111;
end;

procedure TFrm_cst_icms.SAIRClick(Sender: TObject);
begin
  inherited;
  if cst_icms_ori = '' then close;
end;

procedure TFrm_cst_icms.tb_cst_icmsAfterDelete(DataSet: TDataSet);
begin
  inherited;
c(DataSet);
fAtualizarCBeneficio(tb_cst_icmsCST_ID.AsInteger);




end;

function TFrm_cst_icms.fAtualizarCBeneficio(pId: integer): boolean;
begin
cds_cbenef.DisableControls;
cds_cbenef.First;
while not cds_cbenef.eof do
   begin
   cds_cbenef.Edit;
   if (cds_cbenefcstb_id.IsNull) or (cds_cbenefcstb_id.AsInteger<0) then
      begin
      cds_cbenefcstb_id.Value :=  fBuscarChaveId_cBenef;
      end;
   cds_cbenefcstb_id_cst.Value := pId;
   cds_cbenef.post;
   cds_cbenef.Next;
   end;
cds_cbenef.EnableControls;

end;



function TFrm_cst_icms.fBuscarChaveId_cBenef: integer;
var
query_codcst: tQuery;
begin
result:=-1;
query_codcst:=tQuery.create(nil);
query_codcst.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_codcst.Sql.clear;
query_codcst.Sql.add('select CADCST_ICMS_CBENEF_SEQ.nextval as chave from dual');
try
   query_codcst.open;

   if not query_codcst.IsEmpty then
      begin
      result:=query_codcst.fieldbyname('chave').AsInteger;
      end;

except ON E: Exception do
   begin
   ex_erroSql_Novo(query_codcst,186,'_stru'+e.message,'user');
   end;
   end;
query_codcst.close;
freeandnil(query_codcst);



end;


procedure TFrm_cst_icms.cds_cbenefBeforeDelete(DataSet: TDataSet);
begin
  inherited;
fDeletarCBeneficioNoBanco;

end;

procedure TFrm_cst_icms.tb_cst_icmsAfterPost(DataSet: TDataSet);
begin
  inherited;
c(DataSet);
fAtualizarCBeneficioNoBanco;

end;

procedure TFrm_cst_icms.cds_cbenefAfterInsert(DataSet: TDataSet);
begin
  inherited;
cds_cbenefcstb_cbenef.Value:='SEM CBENEF';
end;

procedure TFrm_cst_icms.DBGrid2_cbenefExit(Sender: TObject);
begin
  inherited;
if cds_cbenef.State in [dsinsert,dsedit] then
   begin
   if (cds_cbenefcstb_uf.IsNull) or (cds_cbenefcstb_uf.AsString='') then
      cds_cbenef.Cancel
   else
      cds_cbenef.Post;
   end;   

end;

procedure TFrm_cst_icms.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
If tb_cst_icms.State in [dsInsert, dsEdit] then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: tb_cst_icms.Post;
      mrNo : tb_cst_icms.Cancel;
      else CanClose:=False;
      end;
   end;

end;

procedure TFrm_cst_icms.src_cst_icmsDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
if (mcBenef_Ant<>tb_cst_icmsCST_ID.AsInteger) and  not (tb_cst_icms.state in [dsedit,dsinsert]) and (tb_cst_icms.tag=0) then
   begin
   fLerCodigoBeneficios(tb_cst_icmsCST_ID.AsInteger);
   end;
end;


procedure TFrm_cst_icms.bbBaixarClick(Sender: TObject);
begin
  inherited;
if Application.MessageBox('Quer Realmente Baixar do Site os Cadastros de CST?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Baixando Cadastros de CST ';
Frm_Agde.label1.Visible:=true;
frm_agde.Show;
verteclado(0);
verteclado_02(0);

if fExistePreRequisitoUsarSqlLdr then
   begin
   if fBaixarCstIcms then
      begin
      if (tb_cst_icms.Active) and (tb_cst_icms.IsEmpty) then
         BBnAtuClick(self);
//      MessageDlg('Arquivos Baixados com sucesso!', mtWarning,[mbOk],0);
      end;
   end;
freeandNil(frm_agde);
end;
function TFrm_cst_icms.fBaixarCstIcms:boolean;
var
mNomeAplicacao: String;
mNomeAplicacao_retorno: String;


begin
mNomeAplicacao_retorno := mpastaaplicacao + 'cadastrosbasicos.ret';

if FileExists(mNomeAplicacao_retorno) then
   DeleteFile(mNomeAplicacao_retorno);

mNomeAplicacao := 'java -jar ' + mNomeProjettoJavaExterno;
//PChar('cmd /c takeown /f "C:\windows\notepad.exe" /r /a '
//mNomeAplicacao := 'c:\sge\baixar.bat';
mNomeAplicacao := edt_comando.text+' PegarCst '+inttostr(codusr);
result:=fexecprog_espera(mNomeAplicacao,0)=0;
if FileExists(mNomeAplicacao_retorno) then
   begin
   Application.createform(TFrm_Aviso, Frm_Aviso);
   Frm_Aviso.RichEdit1.Lines.Clear;
   Frm_Aviso.RichEdit1.Lines.LoadFromFile(mNomeAplicacao_retorno);
   Frm_Aviso.ShowModal;
   freeandnil(Frm_Aviso);
   end;





end;


function TFrm_cst_icms.fDeletarFilhos: boolean;
var
query_del: TQuery;
begin
query_del:=TQuery.create(nil);
query_del.DatabaseName:=query_del.DatabaseName;
query_del.sql.add('delete FROM CADCST_ICMS_CBENEF where CST_ID_CST=0'+tb_cst_icmsCST_ID.AsString);
try
   query_del.execsql;
   fdm1StartCommit;
   result:=true;
except ON E: Exception do
   begin
   ex_erroSql_Novo(query_del,981,'_stru'+e.message,'user');
   result:=false;
   end;
   end;
query_del.close;
freeandnil(query_del);

end;

procedure TFrm_cst_icms.bbExluirCbenefClick(Sender: TObject);
begin
  inherited;
if not (cds_cbenef.IsEmpty) then 
   cds_cbenef.Delete;
end;

end.
