unit s_lerarq_geral;

interface
uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,S_DM1,func,S_DM3,S_DM2,
     WinTypes, WinProcs,variants, SqlExpr,S_ProConf, S_Cons_Pro_Nov, S_PesqProd
     ,S_ProSimples01,S_Pro;

var
mla_lote    : String;
mla_dtvcto  : String;

form_Pesqprod: Tfrm_pesqprod;
form_ProSimples01: TFrm_ProSimples01;
form_proconf: TFrm_ProConf;
form_Pro: tfrm_Pro;

function fChamaPesqPro(pCodSol: Integer; pFormOri,pCarDig: String): String;

function fChamaPro(pCodSol: Integer; pFormOri,pCarDig: String): String;
function fAdicionaCodemp(pNomeTabela,pNomeCodEmp: String): String;
function fDeletarTodosIndicesDaTabela(pTabela: String): boolean;



implementation

uses func_excecoes;


function fChamaPro(pCodSol: Integer; pFormOri,pCarDig: String): String;
{
Parametros
PCodSol: Solicitou o Seguinte Codigo: 0-Codigo do Produto
                                      1-Codigo de Barras
                                      2-Codigo do Produto+Lote

pFormOri = Formulario de Origem da Chamada
pCarDig  = Caractere Digitado
}

begin

  mla_lote    :='';
  mla_dtvcto  :='';
  result:='';

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Application.CreateForm(Tfrm_proconf, form_proconf);
   form_proconf.FormStyle:=fsNormal;
   form_proconf.Visible  :=false;
   if pCarDig<>'' then
      begin
      form_proconf.Edit1.Text:=PCarDig;
      form_proconf.Edit1.SelStart:=1;
      form_proconf.Edit1.SelLength:=1;
      end;
   form_proconf.PC1.ActivePage:=form_proconf.tsTab;
   if form_proconf.ShowModal=mrOk then
      begin
      if pcodsol=0 then
         Result:=DM1.Tb_ProPDCODPRO.AsString
      else if pcodsol=1 then
         Result:=DM1.Tb_ProPDCODBAR.AsString
      else if pcodsol=2 then
         Result:=FormatFloat('0000',DM1.Tb_ProPDCODPRO.Value)+form_proconf.Tb_LGCCLNUMERO.Value
      else if pcodsol=3 then
         Result:=DM1.Tb_ProPDMARCA.AsString;
      end;
   form_proconf.Free;
   form_proconf:=nil;
   end
else if valint(copy(mpseg,1,2))=7 then
   begin
   end
else
   begin
   if DM1.Tb_pargerPFORPROPAD.Asinteger=1 then
      begin
      if (par_conspro_fman) or (lowercase(pFormOri)='frm_pfor01')
         or (lowercase(pFormOri)='frm_indenv_fab')
         or (lowercase(pFormOri)='frm_aju')
         or (lowercase(pFormOri)='frm_rel_env')
         or (lowercase(pFormOri)='frm_indenv_mfor') then
         begin
         Frm_Cons_Pro_Nov.PC1.ActivePage:=Frm_Cons_Pro_Nov.tsTab;
         Frm_Cons_Pro_Nov.proNov_ori:=pFormOri;
         Frm_Cons_Pro_Nov.mtipo     :=1;
         if pCarDig<>'' then
            begin
            if (Frm_Cons_Pro_Nov.CAMPO.ItemIndex=1) and (not ENumero(pCarDig)) then
               Frm_Cons_Pro_Nov.CAMPO.ItemIndex:=0;
            Frm_Cons_Pro_Nov.Edit1.Text:=PCarDig;
            Frm_Cons_Pro_Nov.Edit1.SelStart:=1;
            Frm_Cons_Pro_Nov.Edit1.SelLength:=1;
            end;
         if Frm_Cons_Pro_Nov.ShowModal=mrOk then
            begin
            if pcodsol=0 then
               Result:=DM1.Tb_ProPDCODPRO.AsString
            else if pcodsol=1 then
               Result:=DM1.Tb_ProPDCODBAR.AsString
            else if pcodsol=3 then
               Result:=DM1.Tb_ProPDMARCA.AsString
            else
               Result:=DM1.Tb_ProPDCODPRO.AsString;
            end;
         end
      else
         begin
         if form_Pesqprod=nil then
            begin
            Application.CreateForm(Tfrm_Pesqprod, form_Pesqprod);
            form_Pesqprod.FormStyle:=fsNormal;
            form_Pesqprod.Visible  :=false;

            form_Pesqprod.parpp_acretodos:=par_acretodos;
            form_Pesqprod.parpp_acret0:=par_acret0;
            form_Pesqprod.parpp_acret1:=par_acret1;
            form_Pesqprod.parpp_acred01:=par_acred01;
            form_Pesqprod.parpp_tpp:=par_tpp;
            end;
         propesq_ori:=pFormOri;
         if pCarDig<>'' then
            begin
            if (form_Pesqprod.CAMPO.ItemIndex=1) and (not ENumero(pCarDig)) then
               form_PesqProd.CAMPO.ItemIndex:=0;
            form_Pesqprod.Edit1.Text:=PCarDig;
            form_Pesqprod.Edit1.SelStart:=1;
            form_Pesqprod.Edit1.SelLength:=1;
            end;
         if (form_Pesqprod.WindowState=wsNormal)
            and not (form_Pesqprod.Visible=True) then
         if form_Pesqprod.ShowModal=mrOk then
            begin
            if pcodsol=0 then
               Result:=form_Pesqprod.Qr_ProPDCODPRO.AsString
            else if pcodsol=1 then
               Result:=form_Pesqprod.Qr_ProPDCODBAR.AsString
            else if pcodsol=3 then
               Result:=form_Pesqprod.Qr_ProPDMARCA.AsString
            else
               Result:=form_Pesqprod.Qr_ProPDCODPRO.AsString;
            FreeAndNil(form_Pesqprod);               
            end;
         end;
      end
   else if DM1.Tb_EmpCGC.AsFloat=37006046000128 then
      begin
      if form_ProSimples01=nil then
         begin
         Application.CreateForm(Tfrm_ProSimples01, form_ProSimples01);
         form_ProSimples01.FormStyle:=fsNormal;
         form_ProSimples01.Visible  :=false;
         form_ProSimples01.PC1.ActivePage:=form_ProSimples01.tsTab;
         end;
      if pCarDig <>'' then
         begin
        if (form_ProSimples01.CAMPO.ItemIndex=1) and (not ENumero(pCarDig)) then
            form_ProSimples01.CAMPO.ItemIndex:=0;

         mPosReg_ant := nil;
         form_ProSimples01.Edit1.Text:=PCarDig;
         form_ProSimples01.Edit1.SelStart:=1;
         form_ProSimples01.Edit1.SelLength:=1;
         end;
      prosimples_ori:=pFormOri;
      if form_ProSimples01.ShowModal=mrOk then
         begin
         FreeAndNil(form_ProSimples01);
         if pcodsol=0 then
            Result:=DM1.Tb_ProPDCODPRO.AsString
         else if pcodsol=1 then
            Result:=DM1.Tb_ProPDCODBAR.AsString
         else if pcodsol=3 then
            Result:=DM1.Tb_ProPDMARCA.AsString
         else
            Result:=DM1.Tb_ProPDCODPRO.AsString;
         end;
//      form_ProSimples01.Free;
//      form_ProSimples01:=nil;
      end
   else
      begin
      if form_pro=nil then
         begin
         Application.CreateForm(Tfrm_Pro, form_Pro);
         form_pro.FormStyle:=fsNormal;
         form_Pro.Visible  :=false;
         form_Pro.PC1.ActivePage:=form_Pro.tsTab;
         end;
      if pCarDig <>'' then
         begin
        if (form_Pro.CAMPO.ItemIndex=1) and (not ENumero(pCarDig)) then
            form_Pro.CAMPO.ItemIndex:=0;

         mPosReg_ant := nil;
         form_Pro.Edit1.Text:=PCarDig;
         form_Pro.Edit1.SelStart:=1;
         form_Pro.Edit1.SelLength:=1;
         end;
      pro_ori:=pFormOri;
      if form_Pro.ShowModal=mrOk then
         begin
         FreeAndNil(form_Pro);
         if pcodsol=0 then
            Result:=DM1.Tb_ProPDCODPRO.AsString
         else if pcodsol=1 then
            Result:=DM1.Tb_ProPDCODBAR.AsString
         else if pcodsol=3 then
            Result:=DM1.Tb_ProPDMARCA.AsString
         else
            Result:=DM1.Tb_ProPDCODPRO.AsString;
         end;
//      form_Pro.Free;
//      form_Pro:=nil;
      end;
   end;
end;


function fChamaPesqPro(pCodSol: Integer; pFormOri,pCarDig: String): String;
{
Parametros
PCodSol: Solicitou o Seguinte Codigo: 0-Codigo do Produto
                                      1-Codigo de Barras
                                      2-Codigo do Produto+Lote

pFormOri = Formulario de Origem da Chamada
pCarDig  = Caractere Digitado
}

begin

  mla_lote    :='';
  mla_dtvcto  :='';
  result:='';

if form_Pesqprod=nil then
   begin
   Application.CreateForm(Tfrm_Pesqprod, form_Pesqprod);
   form_Pesqprod.FormStyle:=fsNormal;
   form_Pesqprod.Visible  :=false;
   end;
propesq_ori:=pFormOri;
if pCarDig<>'' then
   begin
   if (form_Pesqprod.CAMPO.ItemIndex=1) and (not ENumero(pCarDig)) then
      form_PesqProd.CAMPO.ItemIndex:=0;
   form_Pesqprod.Edit1.Text:=PCarDig;
   form_Pesqprod.Edit1.SelStart:=1;
   form_Pesqprod.Edit1.SelLength:=1;
   end;
if (form_Pesqprod.WindowState=wsNormal)
   and not (form_Pesqprod.Visible=True) then
if form_Pesqprod.ShowModal=mrOk then
   begin
   if pcodsol=0 then
      Result:=form_Pesqprod.Qr_ProPDCODPRO.AsString
   else if pcodsol=1 then
      Result:=form_Pesqprod.Qr_ProPDCODBAR.AsString
   else if pcodsol=3 then
      Result:=form_Pesqprod.Qr_ProPDMARCA.AsString
   else
      Result:=form_Pesqprod.Qr_ProPDCODPRO.AsString;
   end;
end;




function fAdicionaCodemp(pNomeTabela,pNomeCodEmp: String): String;
begin
result:='';
if not DM1.Qr_Tid.Locate('TINOME',pNomeTabela,[]) then
   begin
   result:=pNomeCodEmp;
   end;
end;


function fDeletarTodosIndicesDaTabela(pTabela: String): boolean;
var
query_index: tQuery;
query_del: tQuery;
begin
result:=true;
query_index:=tQuery.Create(nil);
query_index.databasename:=DM1.SG_ASSOC.databasename;
query_index.sql.add('SELECT TABLE_NAME,INDEX_NAME,0 AS PRIMARY_KEY FROM user_indexes indexes  WHERE table_name='+QuotedStr(ptabela)
                   +' union all '
                   +' SELECT TABLE_NAME,CONSTRAINT_NAME AS INDEX_NAME,1 AS PRIMARY_KEY FROM user_constraints cons WHERE '
                   +'                   constraint_type = '+quotedstr('P')+' and cons.TABLE_NAME='+quotedstr(pTabela));
query_index.sql.text := 'select TABLE_NAME,INDEX_NAME, MAX(PRIMARY_KEY) AS PRIMARY_KEY from (' + query_index.sql.text+') t1  '
                        +' WHERE not INDEX_NAME LIKE '+ QuotedStr('SYS_IL0%')+'  GROUP BY TABLE_NAME,INDEX_NAME order by PRIMARY_KEY DESC ';

try


   query_index.Open;
except ON E: Exception do
   begin
   if fileExists('C:\SGE\SERVIDORLDC.TXT') then
      ex_erroSql_Novo(query_index,298,'_stru'+e.message,'user');
   result:=false;
   end;
   end;
query_del:=tQuery.Create(nil);
query_del.databasename:=DM1.SG_ASSOC.databasename;

while not query_index.eof do
   begin
   query_del.close;
   query_del.sql.clear;
   if query_index.fieldbyname('PRIMARY_KEY').AsInteger>0 then
      begin
      query_del.sql.add('alter table '+query_index.fieldbyname('TABLE_NAME').asstring+' drop constraint ');
      end
   else
      query_del.sql.Add('drop index ');
   query_del.sql.add(query_index.fieldbyname('index_name').AsString);
   try
      query_del.execsql;
   except ON E: Exception do
      begin
      if fileExists('C:\SGE\SERVIDORLDC.TXT') then
         ex_erroSql_Novo(query_del,323,'_stru'+e.message,'user');
      result:=false;
      end;
      end;
   query_index.next;
   end;
query_index.close;
freeandnil(query_index);
query_del.close;
freeandnil(query_del);

end;
end.
