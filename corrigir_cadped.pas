unit corrigir_cadped;



interface

uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,S_DM1,func,S_DM3,S_DM2,
     WinTypes, WinProcs,variants, SqlExpr, DBClient,adodb, S_Moe,
      Grids;


type
  TParametros = record
  pChave: string;
  pVersao: string;
  pTabela: string;
  pComandoExtra: array of String;
  end;

function fCorrigirTabela(parametros: TParametros): boolean;
function fExisteConstraint(pNomeConstraint: String): boolean;
function fExisteIndices(pNomeIndice: String): boolean;
function fDeleteSequence(pNomeSequence: String): boolean;
const
   pMostarErro = false;

implementation

uses lerarq, func_excecoes, Func2;





function fCorrigirTabela(parametros: TParametros): boolean;
var
query_ped: tquery;
mChaveIdNew: integer;
xExtra: integer;
const
   mInverterDeletar = false;


   procedure tAtivarDesativar(pTabela: String; pAtivar: boolean);
   var
   query_trigger: tquery;
   query_executa: tquery;
   begin
   query_trigger:=tquery.create(nil);
   query_trigger.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_trigger.close;
   query_trigger.sql.clear;
   query_trigger.sql.add('select TRIGGER_NAME from USER_TRIGGERS WHERE TABLE_NAME='+quotedstr(pTabela));
   try
      query_trigger.open;
   except on e : exception do
      begin
      fSalvarTextoparaArquivo2(query_trigger.sql.Text);
      ex_erroSql_Novo(query_trigger,54,'SGE',parametros.pTabela);
      end;
      end;
   if not query_trigger.IsEmpty then
      begin
      query_executa:=tquery.create(nil);
      query_executa.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      While not query_trigger.eof do
         begin
         query_executa.close;
         query_executa.sql.clear;
         query_executa.sql.add('ALTER TRIGGER '+ query_trigger.fieldbyName('TRIGGER_NAME').asstring+' '+IIF(pAtivar,'ENABLE','DISABLE'));
//         fSalvarTextoparaArquivo2(query_executa.sql.Text);
         try
            query_executa.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_executa,702,'SGE',parametros.pTabela);
            end;
            end;
         query_trigger.Next;
         end;
      query_executa.close;
      freeandnil(query_executa);
      end;
   query_trigger.close;
   freeandnil(query_trigger);
   end;

   procedure pfecharnafuncao;
   begin
   query_ped.Close;
   freeandnil(query_ped);
   end;

begin
if flfilpad(0,'_coorecoes',parametros.pTabela+parametros.pChave+parametros.pVersao) then
   begin
   result:=true;
   exit;
   end;

fGravaPadroes(0,parametros.pTabela+parametros.pChave+parametros.pVersao,'text' ,'_coorecoes','sim');
//if high(parametros.pComandoExtra)>-1 then
tAtivarDesativar(parametros.pTabela,false);


query_ped:=tquery.create(nil);
query_ped.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


if parametros.pTabela='CADP01_TIPOS_CORTE' then
   begin

   if fExisteIndices('CADP01_TIPOS_CORTE_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADP01_TIPOS_CORTE_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;
   if not fExisteIndices('CADP01_TIPOS_CORTE_UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('CREATE INDEX CADP01_TIPOS_CORTE_UK ON  CADP01_TIPOS_CORTE (PTC_CODEMP,PTC_CHAVE_ANO,PTC_CHAVE,PTC_SEQ)');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   end;

if parametros.pTabela='CADP01' then
   begin


   if fExisteConstraint('CADP01D_TEMP_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADP01D_TEMP DROP CONSTRAINT CADP01D_TEMP_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;


   if fExisteIndices('CADP01D_TEMP_ID_PED01') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADP01D_TEMP_ID_PED01');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;






   if fExisteConstraint('CADP02_TROCAS_TEMP_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADP02_TROCAS_TEMP DROP CONSTRAINT CADP02_TROCAS_TEMP_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;





   if fExisteConstraint('CADPEN_TEMP_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADPEN_TEMP DROP CONSTRAINT CADPEN_TEMP_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;


   if fExisteIndices('CADPEN_TEMP_PED01') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADPEN_TEMP_PED01');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;




   if fExisteConstraint('CADPF2_TEMP_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADPF2_TEMP DROP CONSTRAINT CADPF2_TEMP_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;


   if fExisteIndices('CADPF2_TEMP_PED01') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADPF2_TEMP_PED01');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;




   if fExisteConstraint('CADP02_MP_TEMP_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADP02_MP_TEMP DROP CONSTRAINT CADP02_MP_TEMP_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;


   if fExisteIndices('CADP02_MP_TEMP_PF01') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADP02_MP_TEMP_PF01');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;


   if fExisteConstraint('CADPF2_ORC_TEMP_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADPF2_ORC_TEMP DROP CONSTRAINT CADPF2_ORC_TEMP_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   if fExisteIndices('CADPF2_ORC_TEMP_PF01') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADPF2_ORC_TEMP_PF01');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;



   if fExisteConstraint('CADP01_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADP01 DROP CONSTRAINT CADP01_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   if fExisteIndices('CADP01_TMP') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADP01_TMP');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;

   if fExisteIndices('CADP010') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADP010');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;


   if not fExisteIndices('CADP01_UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('CREATE UNIQUE INDEX CADP01_UK ON CADP01(P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM)');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;

      end;


   end;


if parametros.pTabela='CADLDR' then
   begin
   if fExisteConstraint('CADLDR_UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADLDR DROP CONSTRAINT CADLDR_UK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   end;

if parametros.pTabela='CADP01_FILHOS' then
   begin
   if fExisteConstraint('CADP01_FILHOS_UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADP01_FILHOS DROP CONSTRAINT CADP01_FILHOS_UK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   if fExisteConstraint('CADP01_FILHO_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADP01_FILHOS DROP CONSTRAINT CADP01_FILHO_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   if fExisteConstraint('CADP01_FILHOS_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADP01_FILHOS DROP CONSTRAINT CADP01_FILHOS_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   if fexisteIndice('CADP01_FILHOS_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('DROP INDEX CADP01_FILHOS_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;


   end;


if parametros.pTabela='CADPF1' then
   begin
   if fExisteConstraint('CADPF1_FK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADPF1 DROP CONSTRAINT CADPF1_FK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   end;


if parametros.pTabela='CADLDR_PROVISAO' then
   begin
   if fExisteConstraint('CADLDR_PROVISAO_UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADLDR_PROVISAO DROP CONSTRAINT CADLDR_PROVISAO_UK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;
   end;



if parametros.pTabela='CADLDR_IMAGEM_' then
   begin
   if fExisteConstraint('CADLDR_IMAGEM__UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADLDR_IMAGEM DROP CONSTRAINT CADLDR_IMAGEM_UK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;
   end;

   if parametros.pTabela='CADLDR_ABERT' then
   begin
   if fExisteConstraint('CADLDR_ABERT_UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADLDR_ABERT DROP CONSTRAINT CADLDR_ABERT_UK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;
   end;

if parametros.pTabela='CADPF1' then
   begin


   if fExisteConstraint('CADPF2_FK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('alter table CADPF2 drop constraint CADPF2_FK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;


   if fExisteConstraint('CADPF1_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE CADPF1 DROP CONSTRAINT CADPF1_PK');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;
   if not fExisteIndices('CADPF1_UK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('CREATE UNIQUE INDEX CADPF1_UK ON CADPF1(PF1CODEMP,PF1LOTSEQ,PF1CHAVE)');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         end;
      end;

   end;



query_ped.close;
query_ped.sql.clear;
query_ped.sql.add('UPDATE '+parametros.pTabela+' SET '+parametros.pChave+' = ROWNUM');
try
   query_ped.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   fSalvarTextoparaArquivo2(query_ped.sql.Text);
   if (pMostarErro) then
      ex_erroSql_Novo(query_ped,573,'SGE',parametros.pTabela);
   result:=false;
   end;
   end;

if mInverterDeletar then
   begin
   if fExisteConstraint(parametros.pTabela+'_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE '+parametros.pTabela+' drop CONSTRAINT '+parametros.pTabela+'_PK ');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         begin
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         if (pMostarErro) then
            ex_erroSql_Novo(query_ped,587,'SGE',parametros.pTabela);
         result:=false;
         end;
         end;
      end;

   end
else
   begin
   if not fExisteConstraint(parametros.pTabela+'_PK') then
      begin
      query_ped.close;
      query_ped.sql.clear;
      query_ped.sql.add('ALTER TABLE '+parametros.pTabela+' ADD CONSTRAINT '+parametros.pTabela+'_PK PRIMARY KEY ('+parametros.pChave+')');
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
      except on e : exception do
         begin
//         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         if (pMostarErro) then
            ex_erroSql_Novo(query_ped,603,'SGE',parametros.pTabela);
         result:=false;
         end;
         end;
      end;
   end;


query_ped.close;
query_ped.sql.clear;
query_ped.sql.add('SELECT MAX('+parametros.pChave+') AS CHAVE FROM '+parametros.pTabela);
try
   query_ped.open;
   mChaveIdNew := query_ped.fieldbyName('chave').Asinteger+1;
except
   fSalvarTextoparaArquivo2(query_ped.sql.Text);
   end;


if fExisteSequence(parametros.pTabela+'_SEQ') then
   begin
   fDeleteSequence(parametros.pTabela+'_SEQ');
   end;

query_ped.close;
query_ped.sql.clear;
query_ped.sql.add('create sequence '+parametros.pTabela+'_SEQ minvalue ' + inttoStr(mChaveIdNew));
try
   query_ped.ExecSQL;
   fdm1StartCommit;
except
   fSalvarTextoparaArquivo2(query_ped.sql.Text);
   end;



for xExtra:=0 to high(parametros.pComandoExtra) do
   begin
   if length(trim(parametros.pComandoExtra[xExtra]))>1 then
      begin
      query_ped.close;
      query_ped.sql.clear;
       query_ped.sql.add(parametros.pComandoExtra[xExtra]);
      try
         query_ped.ExecSQL;
         fdm1StartCommit;
       except on e : exception do
         begin
         fSalvarTextoparaArquivo2(query_ped.sql.Text);
         ex_erroSql_Novo(query_ped,102,'SGE',parametros.pTabela);
         end;
         end;                                                     
      end;
   end;
//if high(parametros.pComandoExtra)>-1 then
tAtivarDesativar(parametros.pTabela,true);



pfecharnafuncao();
end;


function fExisteConstraint(pNomeConstraint: String): boolean;
var
query_constr: tQuery;
begin
query_constr:=tQuery.create(nil);
query_constr.databaseName:=DM1.SG_ASSOC.databaseName;
query_constr.sql.add('SELECT count(*) as qtd FROM USER_CONSTRAINTS WHERE CONSTRAINT_NAME = '+quotedstr(pNomeConstraint));
try
   query_constr.open;
   result:=query_constr.fields[0].asinteger>0;
except on e : exception do
   begin
   fSalvarTextoparaArquivo2(query_constr.sql.Text);
   ex_erroSql_Novo(query_constr,214,'SGE',pNomeConstraint);
   result:=false;
   end;
   end;
query_constr.close;
freeandnil(query_constr);
end;


function fExisteIndices(pNomeIndice: String): boolean;
var
query_constr: tQuery;
begin
query_constr:=tQuery.create(nil);
query_constr.databaseName:=DM1.SG_ASSOC.databaseName;

query_constr.sql.add('select sum(qtd) as qtd from ( '
   +' SELECT COUNT(*) AS QTD FROM user_indexes where INDEX_NAME='+quotedstr(pNomeIndice)
  +'  union all '
  +'  SELECT count(*)*-1 as qtd FROM USER_CONSTRAINTS WHERE CONSTRAINT_NAME='+quotedstr(pNomeIndice)
  +'  )   ');


try
   query_constr.open;
   result:=query_constr.fields[0].asinteger>0;
except on e : exception do
   begin
   fSalvarTextoparaArquivo2(query_constr.sql.Text);
   ex_erroSql_Novo(query_constr,214,'SGE',pNomeIndice);
   result:=false;
   end;
   end;
query_constr.close;
freeandnil(query_constr);
end;



function fDeleteSequence(pNomeSequence: String): boolean;
var
query_constr: tQuery;
begin
query_constr:=tQuery.create(nil);
query_constr.databaseName:=DM1.SG_ASSOC.databaseName;
query_constr.sql.add('drop sequence '+pNomeSequence);
try
   query_constr.execSql;
   fdm1StartCommit;

except on e : exception do
   begin
   fSalvarTextoparaArquivo2(query_constr.sql.Text);
   ex_erroSql_Novo(query_constr,214,'SGE',pNomeSequence);
   result:=false;
   end;
   end;
query_constr.close;
freeandnil(query_constr);
end;



end.
