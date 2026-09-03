unit s_email;

interface
uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes
    , Controls, StdCtrls, ExtCtrls, checklst, func,  RDPrint
     ,printers,S_Si,S_Impres,RlPrinters,S_Agde_NFE, WPCTRRich,variants
     ,  xmldom, XMLIntf, msxmldom, XMLDoc, ADODB,jpeg, winspool;


function fEnviarEmailNFEeBoleto(pChave, pChave_ano, pCodEmp: Integer): Boolean;

implementation


function fEnviarEmailNFEeBoleto(pChave, pChave_ano, pCodEmp: Integer): Boolean;
var
Query_Cons: tquery;
pAnexos: TStringList;

   procedure pfechartudo;
   begin
   if query_cons<>nil then
      begin
      query_cons.Close;
      freeandnil(query_cons);
      end;
   if pAnexos<>nil then
      freeandnil(pAnexos);

   end;

begin


query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT NSNUMERO,NSDTEMIS,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO,NSNFE_NUMPROT '
                  +',NSCODCLI from CADNS WHERE NSCHAVEP=:CHAVE '
                  +' AND NSLOTSEQ_CP=:LOTSEQ '
                  +' AND NSCODEMP=:CODEMP '
                  +' AND not (NSNFE_XML_CLIENTE is null) '
                            +'  and NSTIPO<2 '
                  );
query_Cons.ParamByName('CHAVE').AsInteger :=pChave;
query_Cons.ParamByName('LOTSEQ').AsInteger:=pChave_ano;
query_Cons.ParamByName('CODEMP').AsInteger:=pCodEmp;
try
   query_Cons.Open;
except
   FreeAndNil(query_cons);
   exit;
   end;



if query_Cons.isempty then
   begin
   pfechartudo;
   

   if not DirectoryExists('C:\SGE\DANFE') then
      CreateDir('C:\SGE\DANFE');
   Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
//   Frm_NFE_Impressao.Logomarca:=False;
   Frm_NFE_Impressao.fLerdadosXml('',''
                        ,''
                        ,Tb_PedP1CHAVE.AsInteger
                        ,Tb_PedP1LOTSEQ.AsInteger
                        ,Tb_PedP1CODEMP.AsInteger
                        ,True,mmensagem,'' );

   FreeandNil(Frm_NFE_Impressao);
   end
else if fileExists(mNomeArq) then
   begin
   Application.CreateForm(TFrm_NFE_Impressao,Frm_NFE_Impressao);
//   Frm_NFE_Impressao.Logomarca:=False;
   Frm_NFE_Impressao.fLerdadosXml('',''
                        ,mNomeArq
                        ,Tb_PedP1CHAVE.AsInteger
                        ,Tb_PedP1LOTSEQ.AsInteger
                        ,Tb_PedP1CODEMP.AsInteger
                        ,True,mmensagem,'');

   FreeandNil(Frm_NFE_Impressao);
   end
else
   begin
   form_nfe.EmissaoDanfe(true,0,0,Tb_PedP1NUMNF.AsFloat,Tb_PedP1DATANF.AsDateTime,iif(dm2.Qr_CabP1QTDDECPU.AsInteger>0,dm2.Qr_CabP1QTDDECPU.AsInteger,-1));
   end;
FreeAndNil(form_nfe);
FreeAndNil(query_cons);

end;
end.
