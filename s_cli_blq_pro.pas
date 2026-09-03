unit s_cli_blq_pro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, Grids, DBGrids,
  DBCtrls, DBClient;

type
  TFrm_cli_blq_pro = class(TForm)
    panel_cab: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    bbSair: TBitBtn;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    src_blq_gru: TDataSource;
    DBNavigator1: TDBNavigator;
    cds_cli_gru_pro: TClientDataSet;
    cds_cli_gru_proCBGP_CODEMP: TFloatField;
    cds_cli_gru_proCBGP_CODGRU: TFloatField;
    cds_cli_gru_proCBGP_CODCLI: TFloatField;
    cds_cli_gru_progrnome: TStringField;
    cds_cli_gru_proCBGP_ID: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure cds_cli_gru_proBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cds_cli_gru_proBeforeInsert(DataSet: TDataSet);
    procedure cds_cli_gru_proBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure cds_cli_gru_proAfterInsert(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
  private
    { Private declarations }

     cdsClone: TClientDataSet;
     mCodGruAnt: integer;
     mCarregandoTabela: boolean;

    procedure fLerCadBlqPro;


    function fExisteDuplicado(pCodGru: integer): boolean;

    procedure fSalvarCadcliGruPro;



  public
    { Public declarations }
    mCodCli: Real;


  end;

var
  Frm_cli_blq_pro: TFrm_cli_blq_pro;

implementation

uses S_DM1, func_excecoes, Func, lerarq;

{$R *.dfm}


procedure TFrm_cli_blq_pro.fLerCadBlqPro;
var
Tb_cli_blq_gru: tQuery;
begin

Tb_cli_blq_gru:=tQuery.Create(nil);
Tb_cli_blq_gru.databaseName:=DM1.SG_ASSOC.databasename;
Tb_cli_blq_gru.close;
tb_cli_blq_gru.sql.clear;
tb_cli_blq_gru.sql.add('select CBGP_ID,CBGP_CODCLI, '
                      +'  CBGP_CODEMP, '
                      +'   CBGP_CODGRU,grnome from CADCLI_BLQ_GRU_PRO,CADGRU '
                      +'   where grcodgru=cbgp_codgru '
                      +' and CBGP_CODCLI='+FloatToStr(mCodcli));
try
   tb_cli_blq_gru.open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_cli_blq_gru,58,'SGE','CADCLI_BLQ_GRU_PRO');
   end;
   end;
//cds_cli_gru_pro.CreateDataSet;
mCarregandoTabela:=true;
cds_cli_gru_pro.EmptyDataSet;
//cdsClone.EmptyDataSet;
cds_cli_gru_pro.DisableControls;
While  not Tb_cli_blq_gru.Eof do
   begin
   cds_cli_gru_pro.Append;
   cds_cli_gru_proCBGP_ID.Value:=Tb_cli_blq_gru.fieldbyName('CBGP_ID').AsFloat;
   cds_cli_gru_proCBGP_CODEMP.Value:=Tb_cli_blq_gru.fieldbyName('CBGP_CODEMP').AsFloat;
   cds_cli_gru_proCBGP_CODCLI.Value:=Tb_cli_blq_gru.fieldbyName('CBGP_CODCLI').AsFloat;
   cds_cli_gru_proCBGP_CODGRU.Value:=Tb_cli_blq_gru.fieldbyName('CBGP_CODGRU').AsFloat;
   cds_cli_gru_progrnome.Value      :=Tb_cli_blq_gru.fieldbyName('grnome').AsString;
   cds_cli_gru_pro.Append;
   Tb_cli_blq_gru.Next;

   end;
cds_cli_gru_pro.EnableControls;
Tb_cli_blq_gru.Close;
FreeAndNil(Tb_cli_blq_gru);
mCarregandoTabela:=false;
cds_cli_gru_pro.Cancel;
end;

procedure TFrm_cli_blq_pro.FormShow(Sender: TObject);
begin
fLerCadBlqPro;

end;

function TFrm_cli_blq_pro.fExisteDuplicado(pCodGru: integer): boolean;



begin

  if cdsClone.Locate('CBGP_CODGRU',pCodGru,[]) then
     begin
     MessageDlg('Codigo do Cliente ' + inttostr(pCodGru)+' ja existe!', mtWarning,[mbOk],0 );
     result:=true;
     end
 else
    result:=false;

end;
procedure TFrm_cli_blq_pro.cds_cli_gru_proBeforeEdit(DataSet: TDataSet);
begin
if not mCarregandoTabela then
   begin
   cdsClone.CloneCursor(cds_cli_gru_pro, True); // True = só estrutura + dados, False = só estrutura
   mCodGruAnt := cds_cli_gru_proCBGP_CODGRU.AsInteger;
   end;
end;

procedure TFrm_cli_blq_pro.FormCreate(Sender: TObject);
begin

cds_cli_gru_pro.CreateDataSet;
cdsClone:=TClientDataSet.Create(nil);;
//cdsClone.CreateDataSet;

end;

procedure TFrm_cli_blq_pro.cds_cli_gru_proBeforeInsert(DataSet: TDataSet);
begin
if not mCarregandoTabela then
   begin
   cdsClone.CloneCursor(cds_cli_gru_pro, True); // True = só estrutura + dados, False = só estrutura
   mCodGruAnt := 0;
   end;

end;

procedure TFrm_cli_blq_pro.cds_cli_gru_proBeforePost(DataSet: TDataSet);
var
mNomeGrupo: string;
begin

// INICIO


if (not mCarregandoTabela) then
   begin
   if cds_cli_gru_proCBGP_CODGRU.AsInteger=0 then
      abort
   else
      begin
      if not fLerGenerico01_campos('CADGRU','GRNOME',' GRCODGRU='+cds_cli_gru_proCBGP_CODGRU.AsString,mNomeGrupo) then
         begin
         MessageDlg('Grupo de Produto '+cds_cli_gru_proCBGP_CODGRU.AsString+' não cadastrado!',mtWarning,[mbOk],0);
         DBGrid1.SelectedField:=cds_cli_gru_proCBGP_CODGRU;
         cds_cli_gru_proCBGP_CODGRU.value:=0;
         abort;
         end
      else
         cds_cli_gru_progrnome.Value:=mNomeGrupo;
// termino
      if (mCodGruAnt<>cds_cli_gru_proCBGP_CODGRU.AsInteger) then
         begin
         if fExisteDuplicado(cds_cli_gru_proCBGP_CODGRU.AsInteger) then
            begin
            abort;
            exit;
            end;
         end;
      end;
   end;

end;

procedure TFrm_cli_blq_pro.fSalvarCadcliGruPro;
var
query_salvar: tQuery;
mCompl: String;
begin
query_salvar:=tQuery.create(nil);
query_salvar.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
if (cds_cli_gru_pro.IsEmpty) then
   begin
   query_salvar.SQL.add('delete from CADCLI_BLQ_GRU_PRO where CBGP_CODCLI='+FloatToStr(mCodCli));
   end
else
   begin

   query_salvar.SQL.add('Merge into CADCLI_BLQ_GRU_PRO t1 using (');
   mCompl:='';
   cds_cli_gru_pro.First;
   While not cds_cli_gru_pro.Eof do
      begin
      query_salvar.SQL.add(mCompl+' Select '+iif(cds_cli_gru_proCBGP_ID.asinteger>0,cds_cli_gru_proCBGP_ID.AsString,' 0  ')
                          +' as CBGP_ID , '+cds_cli_gru_proCBGP_CODEMP.AsString+' as CBGP_CODEMP '
                          +', '+cds_cli_gru_proCBGP_CODGRU.AsString+' as CBGP_CODGRU '
                          +', '+cds_cli_gru_proCBGP_CODCLI.AsString+' as CBGP_CODCLI from dual ');
      cds_cli_gru_pro.Next;
      mCompl:=' union all ';
      end;
   query_salvar.sql.add(') ss on (t1.CBGP_ID=ss.CBGP_ID) ');

   query_salvar.sql.add(' when MATCHED THEN update set '
                       +'  t1.CBGP_CODEMP=ss.CBGP_CODEMP '
                       +', t1.CBGP_CODGRU=ss.CBGP_CODGRU '
                       +', t1.CBGP_CODCLI=ss.CBGP_CODCLI ');

   query_salvar.sql.add(' when not MATCHED THEN insert ( '
                       +'  t1.CBGP_ID '
                       +', t1.CBGP_CODEMP '
                       +', t1.CBGP_CODGRU '
                       +', t1.CBGP_CODCLI '
                       +' ) values ('
                       +' case when ss.CBGP_ID = 0 then CADCLI_BLQ_GRU_PRO_SEQ.NEXTVAL else ss.CBGP_ID end '
                       +',ss.CBGP_CODEMP '
                       +',ss.CBGP_CODGRU '
                       +',ss.CBGP_CODCLI '
                       +')');

   end;
try
   query_salvar.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_salvar,58,'SGE','CADCLI_BLQ_GRU_PRO');
   end;
   end;
query_salvar.Close;
freeandnil(query_salvar);

end;

procedure TFrm_cli_blq_pro.BitBtn1Click(Sender: TObject);
begin
if (cds_cli_gru_pro.State in [dsEdit,dsInsert]) then
   begin
   if cds_cli_gru_proCBGP_CODGRU.asinteger=0 then
      cds_cli_gru_pro.cancel
   else
      cds_cli_gru_pro.Post;
   end;   
fSalvarCadcliGruPro;
close;

end;

procedure TFrm_cli_blq_pro.bbSairClick(Sender: TObject);
begin
if Application.MessageBox('Quer Realmente sair sem salvar?','confirmação',MB_YESNO+MB_DEFBUTTON2)=mrYes then
   close;
end;

procedure TFrm_cli_blq_pro.cds_cli_gru_proAfterInsert(DataSet: TDataSet);
begin
if not mCarregandoTabela then
   begin
   cds_cli_gru_proCBGP_CODEMP.AsInteger:=codemp;
   cds_cli_gru_proCBGP_CODCLI.AsFloat  :=mCodCli;
   end;

end;

procedure TFrm_cli_blq_pro.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if ( (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') )   and
   (DBGrid1.SelectedField=cds_cli_gru_proCBGP_CODGRU) then
   begin
   if cds_cli_gru_pro.state in [dsBrowse] then
      begin
      if cds_cli_gru_proCBGP_CODGRU.IsNull then
         cds_cli_gru_pro.Append
      else
         cds_cli_gru_pro.Edit;
      end;
   cds_cli_gru_proCBGP_CODGRU.AsString:=fChamaGPro(0,'_venda',key);
   key:=#0;
   DBGrid1ColExit(self);
   end;

end;

procedure TFrm_cli_blq_pro.DBGrid1ColExit(Sender: TObject);
var
mNomeGrupo: String;
begin


if (cds_cli_gru_pro.State in [dsEdit,dsInsert]) then
   begin
   if (cds_cli_gru_proCBGP_CODGRU.AsInteger>0) then
         begin
         if not fLerGenerico01_campos('CADGRU','GRNOME',' GRCODGRU='+cds_cli_gru_proCBGP_CODGRU.AsString,mNomeGrupo) then
            begin
            MessageDlg('Grupo de Produto '+cds_cli_gru_proCBGP_CODGRU.AsString+' não cadastrado!',mtWarning,[mbOk],0);
            DBGrid1.SelectedField:=cds_cli_gru_proCBGP_CODGRU;
            cds_cli_gru_proCBGP_CODGRU.value:=0;
            abort;
            end
         else
            cds_cli_gru_progrnome.Value:=mNomeGrupo;
         end;
      end

end;

end.
