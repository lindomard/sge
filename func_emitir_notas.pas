// {"type":"VORecebeXMLNFE.TVORecebeXMLNFE","id":1,"fields":{"Servico":99,"CnpjEmitente":"28.194.914/0002-30","Xml_Entrada":"","OutrasInformacoes":"","nfsEmLote":[{"xmlEntrada":"xml01"},{"xmlEntrada":"xml02"}],"nfeEmLote":[{"xmlEntrada":"xml01"},{"xmlEntrada":"xml02"}]}}


unit func_emitir_notas;

interface

uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst, func,  S_DM1,dateutils,
     lerarq, xmldom, XMLIntf, msxmldom, XMLDoc,RlPrinters,printers, DBClient;


type
  tParametrosNfce = record
  pAceitaMensagem: boolean;
  pAceita_confirmacao: boolean;
  pEletronica: boolean;
  pCodemp: integer;
  pChave: integer;
  pChave_ano: integer;
  pAmbiente: integer;
  pSoSalvar: boolean;
  pNomeSaida: String;
  pSalvarPDFPara: string;
  pSalvarXmlPara: String;
  pNomeArq: String;
  pTotall: real;
  pCodcli: Real;
  pCompleto: boolean;
  end;
type
  tRetornoNfce = record
  pOk: boolean;
  pXmlRetorno: tStrings;
  pMensagem: String;
  end;





function fEmitirNotadeServico(ParametrosNfce: tParametrosNfce): tRetornoNfce;


function fValida_Pedido(ParametrosNfce: tParametrosNfce): tRetornoNfce;


function fImprimirNotadeServico(ParametrosNfce: tParametrosNfce): tRetornoNfce;

function fGerarXmlNotadeServico(ParametrosNfce: tParametrosNfce): tRetornoNfce;


function fSoGerarXmlNFCE(ParametrosNfce: tParametrosNfce): tRetornoNfce;

function fEmitirBoletoBancario(ParametrosNfce: tParametrosNfce): tRetornoNfce;
function fGerarOutrasOpcoesDePagamentos(ParametrosNfce: tParametrosNfce;cds_prazos: TClientDataSet): tRetornoNfce;

function fPedidoEstaBloqueado(ParametrosNfce: tParametrosNfce): tRetornoNfce;



//procedure fEmitirDocOnline(ParametrosNfce: tParametrosNfce): tRetornoNfce;



implementation

uses S_Ocorrencias, S_DM4, Func2, func_excecoes, s_Nfe_Aguarde,
  S_Sintegra_Advert, S_NFE_Impressao, S_Pedido_Fortes, S_EBol, SR_Dup,
  S_DM2;







function fValida_Pedido(ParametrosNfce: tParametrosNfce): tRetornoNfce;

var
  query_nfe: TQuery;
begin
result.pok:=true;
exit;
result.pok:=False;
if (ParametrosNfce.pChave>0) then
  begin
  query_nfe := TQuery.Create(nil);
  query_nfe.DatabaseName:='SG_ASSOC';
  query_nfe.Close;
  query_nfe.SQL.Clear;
  query_nfe.SQL.Add('SELECT P1TIPO '
                  +',P1CHAVE '
                  +',P1LOTSEQ '
                  +',min(P1SEPAMB) as P1SEPAMB '
                  +',min(P1NUMCF) as P1NUMCF '
                  +',min(P1ECF_SERIE) as P1ECF_SERIE '
                  +',min(P1DATACF) as P1DATACF '
                  +',min(P1TIPENT) as P1TIPENT '
                  +',min(P1DATHOR_PENT) as P1DATHOR_PENT '
                  +',min(P1ENTREGA_CEP) as P1ENTREGA_CEP '
                  +',min(P1ENTREGA_ENDER) as P1ENTREGA_ENDER '
                  +',min(P1ENTREGA_BAIRRO) as P1ENTREGA_BAIRRO '
                  +',min(P1ENTREGA_CIDADE) as P1ENTREGA_CIDADE '
                  +',min(P1ENTREGA_CODLOC) as P1ENTREGA_CODLOC '
                  +',min(P1ENTREGA_UF) as P1ENTREGA_UF '
                  +',min(P1ENTREGA_OBS) as P1ENTREGA_OBS '
                  +',min(P1NUMNF) as P1NUMNF '
                  +',min(P1DATANF) as P1DATANF '
                  +',min(P1SERIE) as P1SERIE '
                  +',min(P1MODELO) as P1MODELO '
                  +', max( (SELECT CFNOME FROM CADPRO_FILIAL WHERE (CFCODEMP=:CODEMP_MENOR OR CFCODEMP=:CODEMP_MAIOR)  AND CFFILIAL=NVL(P1FILIAL,1))) AS FILIAL '
                  +',min(P1CODEMP) as P1CODEMP '
                  +',max(P1FILIAL) as P1FILIAL '
                  +',max(P1CODVEN) as P1CODVEN '
                  +',max(P1CODTLV) as P1CODTLV '
                  +',max(P1CODCLI) as P1CODCLI '
                  +',max(P1CODUSR) as P1CODUSR '
                  +',max(P1DATASEP) AS P1DATASEP '
                  +',max(P1BANCO) as P1BANCO '
                  +',max(P1BASEN) as P1BASEN '
                  +',max(P1ICMSN) as P1ICMSN '
                  +',max(P1CODPV) as P1CODPV '
                  +',max(P1PVACTD) as P1PVACTD '
                  +',max(P1PVDESCF) as P1PVDESCF '
                  +',max(P1PVDIASDESCF) as P1PVDIASDESCF '
                  +',max(P1PVDDESCF) as P1PVDDESCF '
                  +',max(P1TABPV) as P1TABPV '
                  +',max(P1BASER) as P1BASER '
                  +',max(P1ICMSR) as P1ICMSR '
                  +',max(P1CODTRA) as P1CODTRA '
                  +',max(P1FRETEPC) as P1FRETEPC '
                  +',max(P1QTDVOL) as P1QTDVOL '
                  +',max(P1TPPCO) as P1TPPCO'
                  +',max(P1SITPED) as P1SITPED '
                  +',max(P1CODUSR_ULTEVE) as P1CODUSR_ULTEVE '
                  +',max(P1QTDMAN) as P1QTDMAN '
                  +',max(P1BLOQPEND) as P1BLOQPEND '
                  +',max(P1QTDDECPU) as P1QTDDECPU '
                  +',max(P1TARBAN) as P1TARBAN '
                  +',max(P1DESPACES) as P1DESPACES'
                  +',max(P1VALSEG) as P1VALSEG '
                  +',max(P1VALFRE) as P1VALFRE '
                  +',max(P1DESC01) as P1DESC01 '
                  +',max(P1DESC02) as  P1DESC02 '
                  +',max(P1ETIVOL) as P1ETIVOL '
                  +',max(P1PEDORI1) as P1PEDORI1 '
                  +',max(P1PEDORI2) as P1PEDORI2 '
                  +',max(P1MINUTA) as  P1MINUTA '
                  +', 0 AS P1DESC03 '
                  +',max(P1VLRDES) as P1VLRDES '
                  +',MAX(NVL(P1IPIINA,0)+NVL(P1IPIPOS,0)+NVL(P1IPINEG,0)) AS P1TOTIPI '
                  +',max(P1VLRACRE) as P1VLRACRE '
                  +',max(P1PESOB) as P1PESOB '
                  +',max(P1PESOL) as P1PESOL '
                  +',max(P1DESCFIN) as P1DESCFIN '
                  +',max(P1OBS2) as P1OBS2 '
                  +',max(P1OBS1) as P1OBS1 '
                  +',max(P1OBS3) as P1OBS3 '
                  +',max(P1FORMACE) as P1FORMACE '
                  +',max(P1ESPECIE) as P1ESPECIE '
                  +',max(P1UFPV) as P1UFPV '
                  +',max(P1PLACAV) as P1PLACAV '
                  +',max(P1COMP_ULTEVE) as P1COMP_ULTEVE '
                  +',max(P1DATAP) as P1DATAP '
                  +',max(P1PREVENT) as P1PREVENT '
                  +',max(P1DTHRCHEG) as P1DTHRCHEG '
                  +',max(P1DATHOR_UEVE) as P1DATHOR_UEVE '
                  +',max(P1CODSEP) as P1CODSEP '
                  +',max(P1CODEMB) as P1CODEMB '
                  +',max(P1CODCON) as P1CODCON '
                  +',max(P1CODENT) as P1CODENT '
                  +',max(P1DATCON) as P1DATCON '
                  +',max(P1DATENT) as P1DATENT '
                  +',max(P1DATAEMB) as P1DATAEMB '
                  +',max(P1CANHOTO) as P1CANHOTO '
                  +',sum(P1TOTALL-nvl( (case when NVL(P1NF_IMP,'+Quotedstr('N')+') ='+quotedstr('S')+' then P1ICMSN else 0 end),0)  ) as P1TOTALL '
//                  +',sum(P1TOTALL+nvl(P1ICMSR,0)-nvl( (case when NVL(P1NF_IMP,'+Quotedstr('N')+') ='+quotedstr('S')+' then P1ICMSN else 0 end),0)  ) as P1TOTALL '
                  +',sum(P1TOTALB) as P1TOTALB '
                  +',sum(P1TOTSERLIQ) as P1TOTSERLIQ '
                  +',max(P1NFE_CHACESSO) as P1NFE_CHACESSO '
                  +',max(P1NFE_NPROT) as P1NFE_NPROT '
                  +',max(P1DATANF_SERV) as P1DATANF_SERV '
                  +',max(P1SERIE_SERV) as P1SERIE_SERV '
                  +',max(P1NUMNF_SERV) as P1NUMNF_SERV '
                  +',max(P1NFS_SITUACAO) as P1NFS_SITUACAO '
                  +',max(P1NFS_CHACESSO) as P1NFS_CHACESSO '
                  +',max(P1MODELO_SERV) as P1MODELO_SERV '
                  +',max(P1NFS_NPROT) as P1NFS_NPROT '
                  +',max(P1DATHOR_ULTEVE) as P1DATHOR_ULTEVE '
                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MENOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MENOR '
                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MAIOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MAIOR '
                  +' FROM CADP01 where '
                  +'       (P1CODEMP=:CODEMP_MENOR or P1CODEMP=:CODEMP_MAIOR) '
                  +' and   P1CHAVE=:CHAVE '
                  +' and   P1LOTSEQ=:CHAVE_ANO '
                  +' and   P1ORDEM=:ORDEM '
                  +' and   P1STATUS<'+mstatus_excluido+' ');
  query_nfe.sql.Add(' group by P1TIPO,P1CHAVE,P1LOTSEQ ');
  query_nfe.sql.Add(' order by P1CODEMP ');


  if ParametrosNfce.pcodemp>100 then
    query_nfe.ParamByName('CODEMP_MENOR').AsFloat   :=ParametrosNfce.pcodemp-100
  else
    query_nfe.ParamByName('CODEMP_MENOR').AsFloat   :=ParametrosNfce.pcodemp;

  if ParametrosNfce.pcodemp > 100 then
    query_nfe.ParamByName('CODEMP_MAIOR').AsFloat   :=ParametrosNfce.pcodemp
  else
  query_nfe.ParamByName('CODEMP_MAIOR').AsFloat   :=ParametrosNfce.pcodemp+100;

  query_nfe.ParamByName('CHAVE').AsFloat    :=ParametrosNfce.pChave;
  query_nfe.ParamByName('CHAVE_ANO').AsFloat:=ParametrosNfce.pChave_ano;
  query_nfe.ParamByName('ORDEM').AsFloat    :=01;
  query_nfe.Open;
  if not query_nfe.IsEmpty then
     begin
     if ParametrosNfce.pTotall=0 then
        ParametrosNfce.pTotall:=query_nfe.FieldByName('P1TOTALL').AsFloat;
     if ParametrosNfce.pCodcli=0 then
        ParametrosNfce.pCodcli:=query_nfe.FieldByName('P1CODCLI').AsFloat;



     if ((arredonda( (ParametrosNfce.pTotall+ -query_nfe.FieldByName('P1TOTALL').AsFloat),2) =0)
        and (ParametrosNfce.pCodcli=query_nfe.FieldByName('P1CODCLI').AsFloat))  then

       begin
       result.pok:=True;
       end;

    if (Query_nfe.FieldByName('P1SITPED').Value = 1)
       and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
       and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
       begin
       mcinst2:=query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
       if query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
          mcinst2:=mcinst2+'Programador(Master)'
       else
          begin
          if flcadusr(0,0,query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString) then
             mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
          end;
       mcinst := 'Pedido em Manutenção no Computador: '+query_nfe.FieldByName('P1COMP_ULTEVE').AsString
               + ' Pelo Usuário: '+mcinst2
               + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
       result.pok:=false;

       end;

    end;



  query_nfe.close;
  freeandnil(query_nfe);
  end
else
  begin
  result.pok:=True;
  end;
end;



function fImprimirNotadeServico(ParametrosNfce: tParametrosNfce): tRetornoNfce;


var
form_nfe_impressao: tfrm_nfe_impressao;
mmensagem: string;
begin
Application.createform(TFrm_NFE_Impressao, form_nfe_impressao);
form_nfe_impressao.fLerdadosNFSE(ParametrosNfce.pSalvarPDFPara,ParametrosNfce.pSalvarXmlPara,
ParametrosNfce.pNomeArq,ParametrosNfce.pChave,ParametrosNfce.pChave_ano,ParametrosNfce.pcodemp,false,mmensagem);
result.pMensagem:=mmensagem;
freeandnil(form_nfe_impressao);

end;



function fEmitirNotadeServico(ParametrosNfce: tParametrosNfce): tRetornoNfce;


//pAceita_confirmacao: boolean; pSalvarPDFPara,pSalvarXmlPara,pNomeArq: String; ParametrosNfce.pChave,ParametrosNfce.pChave_ano,ParametrosNfce.pcodemp: Integer; pEnviar: Boolean;out pMensagem: string): Boolean;




var
query_Cons,query_nfe: TQuery;
form_ocorrencias: TFrm_Ocorrencias;

mmensagem: string;
pHomologando: boolean;
pEletronica: boolean;
pSerieNF:string;
pModNF  :string;
pNumNF : integer;
mNomeSaidaArq: string;
form_pedido_fortes: tfrm_pedido_Fortes;


begin
result.pOk:=true;
result.pMensagem:='';

if not fValida_Pedido(ParametrosNfce).pOk then
  begin
  result.pMensagem:=' Esse pedido foi alterado em outra estação.'+#13
              +' Por favor re-localizar o mesmo.'+#13;
  result.pOk:=false;
  exit;
  end;

//if not fTestarServidor_NFSE(ParametrosNfce.pcodemp,'SERVICO',pMensagem,pEletronica) then
if not fTestarServidor_NFE(ParametrosNfce.pcodemp,'SERVICO',result.pMensagem,ParametrosNfce.pEletronica) then
  begin
  result.pMensagem:=result.pMensagem+'Servidor de Nota Fiscal Eletronica Não esta Ativa!'+#13;
  result.pOk:=false;
  exit;
  end;

query_nfe := TQuery.Create(nil);
query_nfe.DatabaseName:='SG_ASSOC';

query_Cons := TQuery.Create(nil);
query_Cons.DatabaseName:='SG_ASSOC';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
query_nfe.close;
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select count(*) as qtditem from  CADP02S WHERE  '
                 +'  P2SCODEMP=:CODEMP  '
                 +' and P2SCHAVE=:CHAVE '
                 +' and P2SLOTSEQ=:LOTSEQ '
                 +' and P2SORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=ParametrosNfce.pcodemp;
Query_nfe.ParamByName('CHAVE').AsInteger:=ParametrosNfce.pChave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=ParametrosNfce.pChave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
try
   query_nfe.Open;
except
   end;

if query_nfe.fieldbyname('qtditem').AsInteger=0 then
   begin
   result.pMensagem:=result.pMensagem+'Não Existem Produtos para Emitir Nota!';
   result.pok:=false;
   end;





la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

query_nfe.close;
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select P1CODEMP,P1DATAP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,P1NFE_ENVXML,P1DATDOC,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV, P1PVACTD,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF,P1SERIE'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS,P1NUMNF_SERV,P1DATANF_SERV,P1MODELO_SERV,P1SERIE_SERV'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,CSUPERMICRO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATACF,P1ORDEM,P1BANCO,P1CODSER '
                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  P1CODEMP=:CODEMP '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=ParametrosNfce.pcodemp;
Query_nfe.ParamByName('CHAVE').AsInteger:=ParametrosNfce.pChave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=ParametrosNfce.pChave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
query_nfe.Open;


if query_nfe.IsEmpty then
   begin
   result.pMensagem:=result.pMensagem+'Chave não encontrada!'+#13;
   result.pOk:=false;
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=9 then
   begin
   result.pMensagem:=result.pMensagem+'Este Pedido é de Emprestimo, Favor Fatura-lo Primeiro!'+#13;
   result.pOk:=false;
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=0 then
   begin
   result.pMensagem:=result.pMensagem+'Este Pedido é Apenas um Orçamento, Favor Fatura-lo Primeiro!'+#13;
   result.pOk:=false;
   end;
if Query_nfe.FieldByName('P1TOTALL').isnull then
   begin
   result.pMensagem:=result.pMensagem+'Recalcule este pedido Primeiro!'+#13;
   end;


// inicio
query_Cons.SQL.Clear;
query_Cons.SQL.Add('SeleCT NSNFE_XML_CLIENTE,P1BANCO,P1NUMNF_SERV,P1CODSER,P1DATANF_SERV from CADNS,CADP01 WHERE P1ID_NEW=NSID_PED01_NEW AND NSCHAVEP=:CHAVE '
                    +' AND NSLOTSEQ_CP=:LOTSEQ '
                    +' AND NSCODEMP=:CODEMP '
                     +'  and NSTIPO=2 ' );
query_Cons.ParamByName('CHAVE').AsInteger:=Query_nfe.fieldbyName('P1CHAVE').AsInteger;
query_Cons.ParamByName('LOTSEQ').AsInteger:=Query_nfe.fieldbyName('P1LOTSEQ').AsInteger;
query_Cons.ParamByName('CODEMP').AsInteger:=Query_nfe.fieldbyName('P1CODEMP').AsInteger;

try
   query_Cons.Open;
except on e : exception do
   begin
   result.pMensagem:=result.pMensagem+'erro ao ler cadns! '+e.message+#13;
   result.pok:=false;
   end;
   end;
if not query_Cons.Fieldbyname('NSNFE_XML_CLIENTE').IsNull then
   begin

//   fTestarDocumentosOnline_dup(ParametrosNfce.pChave,ParametrosNfce.pChave_ano,ParametrosNfce.pcodemp,1);

//function fTestarDocumentosOnline_dup(ParametrosNfce.pChavePed,pLotseq,ParametrosNfce.pcodemp,pordem: Integer): Boolean;

{
   fEmitirDocOnline(query_Cons.fieldByName('P1BANCO').asinteger,ParametrosNfce.pcodemp,query_Cons.FieldByName('P1NUMNF_SERV').asinteger,query_Cons.fieldbyname('P1CODSER').Asinteger
    ,query_Cons.FieldByName('P1DATANF_SERV').Asdatetime);
 }

   if not fImprimirNotadeServico(ParametrosNfce).pOk then
      begin
      Result.pMensagem:=Result.pMensagem+mmensagem+#13;
      result.pok:=false;
      end
   else
      result.pOk:=true;
   query_nfe.close;
   freeandnil(query_nfe);
   query_Cons.close;
   freeandnil(query_Cons);
   exit;
   end;
if trim(result.pmensagem)<>'' then
   begin
   query_nfe.close;
   freeandnil(query_nfe);
   query_Cons.close;
   freeandnil(query_Cons);
   exit;
   end;

{
if (query_nfe.fieldbyname('P1STATUS').AsInteger=2) and
   (query_nfe.fieldbyname('P1NUMNF_SERV').AsInteger>0) then
   begin
   query_nfe.close;
   freeandnil(query_nfe);
   result.pok:=true;
   exit;
   end;
}


// termino





if (Query_nfe.FieldByName('P1SITPED').Value = 1)
   and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
   and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
   begin
   mcinst2:=Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
   if Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
      mcinst2:=mcinst2+'Programador(Master)'
   else
      begin
      if flcadusr(0,0,Query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString) then
         mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
      end;
   result.pMensagem:=result.pMensagem+
            'Pedido em Manutenção no Computador: '+Query_nfe.FieldByName('P1COMP_ULTEVE').AsString
           + ' Pelo Usuário: '+mcinst2
           + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime)+#13;
   end;





Query_nfe.First;
{
if not fTestarCNPJ_IE(false,0,Query_nfe.FieldByName('P1CODCLI').AsFloat,mmensagem) then
   begin
   pMensagem:=pMensagem+'incricao invalida!'+#13;
   result.pok:=false;
   end;
}
Query_nfe.First;
if Query_nfe.FieldByName('P1BLOQPEND').Value=2 then
   begin
   if Query_nfe.FieldByName('P1CODBLOQ').AsString<>Query_nfe.FieldByName('P1CODBLOQ_LIB').AsString then
      begin
      result.pMensagem:=result.pMensagem+'Este Pedido Possui Restrições, verifique!'+#13;
      result.pok:=false;
      end;
   end;
if result.pMensagem<>'' then
   begin
   query_Cons.close;
   query_nfe.Close;
   freeandnil(query_Cons);
   freeandnil(query_nfe);
   result.pok:=false;
   exit;
   end;
if ParametrosNfce.pAceita_confirmacao=true then
   begin
   if Application.MessageBox('Emissão de Nota Fiscal de Servico é isso mesmo que deseja?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      begin
      query_Cons.close;
      query_nfe.Close;
      freeandnil(query_Cons);
      freeandnil(query_nfe);
      result.pOk:=false;
      exit;
      end;
   end;

query_nfe.First;

// fim dos Testes de Vencimentos

pHomologando := false;

if flfilpad(0,'_NF_SERVICO','NF_TIPO') then
   begin
   pHomologando := DM4.Tb_FilPad2FPVALOR.AsString='2';
   end;



if result.pMensagem<>'' then
   begin
   query_Cons.close;
   query_nfe.Close;
   freeandnil(query_Cons);
   freeandnil(query_nfe);
   result.pOk:=false;
   exit;
   end;

pSerieNF:='';
pModNF  :='';
if query_nfe.fieldbyname('P1NUMNF_SERV').AsInteger=0 then
   begin
   pnumnf:=fBuscarNUMNF(query_nfe.FieldByName('P1CODEMP').AsInteger,'SERVICO',pSerieNF,pModNF,1);
   if pnumnf<=0 then
      begin
      result.pMensagem:=result.pMensagem+'Cancelado pelo Operador!'+#13;
      result.pok:=false;
      exit;
      end;
   mDadosPedido.pDataNF    :=date;
   mDadosPedido.pDatDoc    :=date;
   mDadosPedido.pSerie     :=pSerieNF;
   mDadosPedido.pModNF     :=pModNF;

   end
else
   begin
   pnumnf:=query_nfe.fieldbyname('P1NUMNF_SERV').AsInteger;
   mDadosPedido.pDataNF    :=query_nfe.fieldbyname('P1DATANF_SERV').AsdateTime;
   mDadosPedido.pDatDoc    :=query_nfe.fieldbyname('P1DATDOC').AsdateTime;
   mDadosPedido.pSerie     :=query_nfe.fieldbyname('P1SERIE_SERV').Asstring;
   mDadosPedido.pModNF     :=query_nfe.fieldbyname('P1MODELO_SERV').Asstring;
   end;
{
if (query_nfe.fieldbyname('P1STATUS').AsInteger=2) and
   (query_nfe.fieldbyname('P1NUMNF_SERV').AsInteger>0) then
   begin
   end
}

mDadosPedido.pNumNF     :=pNumnf;

mDadosPedido.pStatus_Nov:=2;
mDadosPedido.pEmiDoc    :=1;
mDadosPedido.pNFE_EnvXML:=1;
mDadosPedido.pChave     :=query_nfe.FieldByName('P1CHAVE').AsInteger;
mDadosPedido.pOrdem     :=query_nfe.FieldByName('P1ORDEM').AsInteger;
mDadosPedido.pcodemp    :=query_nfe.FieldByName('P1CODEMP').AsInteger;
mDadosPedido.pLotSeq    :=query_nfe.FieldByName('P1LOTSEQ').AsInteger;

fFecharPedido_NFSERVICO(MDadosPedido);

query_nfe.Close;
query_nfe.Open;

Query_Nfe.First;
While not Query_Nfe.Eof do
   begin
   if (query_nfe.FieldByName('P1NUMNF_SERV').Value=0)  then
      begin
      result.pMensagem:=result.pMensagem+'O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)+'/'
      +FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui numero de nota fiscal nem de cupom fiscal';
      query_nfe.Next;
      Continue;
      end;
   if query_nfe.FieldByName('P1DATANF_SERV').IsNull then
      begin
      result.pMensagem:=result.pMensagem+'O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)
      +'/'+FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui a data da nota fiscal!';
      query_nfe.Next;
      Continue;
      end;



   flcadp01(0,query_nfe.FieldByName('P1CODEMP').AsInteger,query_nfe.FieldByName('P1LOTSEQ').AsInteger,
                   query_nfe.FieldByName('P1CHAVE').AsString,'');

   Fgravarnf(2);

   if pEletronica=false then
      begin
      application.createform(TFrm_Pedido_Fortes, form_pedido_fortes);
      form_pedido_fortes.fLerdadosNFSE(ParametrosNfce.pSalvarPDFPara,ParametrosNfce.pSalvarXmlPara,ParametrosNfce.pNomeArq,ParametrosNfce.pChave,ParametrosNfce.pChave_ano
      ,ParametrosNfce.pcodemp,false,result.pMensagem);
      freeandnil(form_pedido_fortes);
      end
   else if fGerarXmlNotadeServico(ParametrosNfce).pOk=true then
      begin
      fImprimirNotadeServico(ParametrosNfce);
      end;

  fTestarDocumentosOnline_dup(ParametrosNfce.pChave,ParametrosNfce.pChave_ano,ParametrosNfce.pcodemp,1);
//  fEmitirDocOnline(query_nfe.fieldByName('P1BANCO').asinteger,ParametrosNfce.pcodemp,query_nfe.FieldByName('P1NUMNF_SERV').asinteger,query_nfe.fieldbyname('P1CODSER').Asinteger,query_nfe.FieldByName('P1DATANF_SERV').Asdatetime);


{
   if (query_nfe.FieldByName('P1NUMNF_SERV').Value=0)  then
      begin
      result.pMensagem:=result.pMensagem+'O Pedido: '+FormatFloat('000000',query_nfe.FieldByName('P1CHAVE').Value)+'/'
      +FormatFloat('00',query_nfe.FieldByName('P1ORDEM').Value)+' não possui numero de nota fiscal nem de cupom fiscal';
      query_nfe.Next;
      Continue;
      end;
   if query_nfe.FieldByName('P1DATANF_SERV').IsNull then

lindomar
}

   query_nfe.Next;
   end;


freeandnil(query_nfe);
if trim(result.pMensagem)='' then
   result.pok:=true
else
   result.pok:=false;
end;

function fSoGerarXmlNFCE(ParametrosNfce: tParametrosNfce): tRetornoNfce;
var

  mXml_servico: TStrings;
  query_serv: TQuery;
  query_dados_emp: TQuery;
  query_vcto: TQuery;

	nItens : integer;

  mtotBcINSS: Real;
  mtotINSS: Real;
  mTotBcCOFINS: Real;
  mTotCOFINS: Real;

  mTotBcPIS: Real;
  mTotPIS: Real;

  mTotBcCSLL: Real;
  mTotCSLL: Real;

  mTotBcIR: Real;
  mTotIR: Real;

  mTotBcISSQN: Real;
  mTotISSQN: Real;

  mTotBcISSRetido: Real;
  mTotTotLiq: Real;

  mTotDescIncond: Real;
  mTotDescCond: Real;
  mTotDeducoes: Real;

  Form_Nfe_Aguarde: TFrm_Nfe_Aguarde;




const

   ExigibilidadeISS = '1';
//vercomalexandre



    procedure fAtualizarCadns();
    var
    query_atuns: tQuery;
    begin

//    fbuscart form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfse_Autorizacao;


    query_atuns := TQuery.Create(nil);
    query_atuns.DatabaseName:='SG_ASSOC';


    query_atuns.sql.add('Update cadns set NSNFSERV_NUMNF_RPS='+query_serv.fieldbyname('P1NUMNF_SERV').AsString
                       +',NSNFSERV_SERIE='+query_serv.fieldbyname('P1SERIE_SERV').AsString

                       +',NSNFSERV_DATHORREC=:NSNFSERV_DATHORREC '
                       +',NSNFSERV_PROTOCOLO=:NSNFSERV_PROTOCOLO '
                       +',NSNFSERV_NUMNF=:NSNFSERV_NUMNF '


                       +' where NSCHAVEP='+FloattoStr(ParametrosNfce.pChave)
                       +' and NSLOTSEQ_CP='+FloattoStr(ParametrosNfce.pChave_ano)
                       +' and NSCODEMP='+FloattoStr(ParametrosNfce.pcodemp));

    query_atuns.ParamByName('NSNFSERV_DATHORREC').AsDateTime:=fSairDataHoraXml('A', getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'DataEmissao','InfNfse','',''));
    query_atuns.ParamByName('NSNFSERV_PROTOCOLO').AsString  :=getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'CodigoVerificacao','InfNfse','','');
    query_atuns.ParamByName('NSNFSERV_NUMNF').AsInteger     :=valint(getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'Numero','InfNfse','',''));



    try

       query_atuns.ExecSQL;
       fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_atuns,281,'SGE','CADEST');
       end;


       end;


    query_atuns.close;
    query_atuns.sql.clear;
    query_atuns.sql.add('Update cadp01 set P1NFS_NPROT=:P1NFS_NPROT '

                       +' where P1CHAVE='+FloattoStr(ParametrosNfce.pChave)
                       +' and P1LOTSEQ='+FloattoStr(ParametrosNfce.pChave_ano)
                       +' and P1CODEMP='+FloattoStr(ParametrosNfce.pcodemp));
    query_atuns.ParamByName('P1NFS_NPROT').AsString  :=getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'CodigoVerificacao','InfNfse','','');


    try

       query_atuns.ExecSQL;
       fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_atuns,281,'SGE','CADEST');
       end;


       end;



   query_atuns.close;


   freeandnil(query_atuns);

    end;

begin
mXml_servico:=TStringList.Create;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADLOC','LCODEMP','CCODEMP','LCODLOC','CCODLOC');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin4(0,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE'
               ,'P2SORDEM','P1ORDEM');

query_serv:=TQuery.create(nil);
query_serv.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_serv.Close;
query_serv.SQL.Clear;
query_serv.SQL.Add(' Select P2SQTD,P2SITEM '
                  +' , round(   (  (P2SBCISSQN-P2SVDESCF)*P2SALIQ/100),2) as P2SVISSQN '
                  +' ,P2SALIQ  as ALIQ_ISSQN '
                    +' ,P2SBCISSQN-P2SVDESCF AS  P2SBCISSQN'
                    +' ,P2STOTDES'
                    +' ,P2SISENTAS'
                    +' ,P2SCODPRO '
                    +' ,(P2SPRECO-P2SVDESCF) AS P2SPRECO '
                    +' ,p2SSIT,P2SDESC1,P2SDESC2'
                    +' ,P2SCFO AS P2SCFO,P2SLISTA,P2SALIQ,PDNOME,PDUND,PDCODBAR'
                    +' ,PDMARCA,PDREFER'
                    +' ,PDCODIGO_CNAE '
                    +' ,PDCODLC_116_03'
                    +' ,PDCODNBS '
                    +' ,(P2SBCINSS-P2SVDESCF) AS P2SBCINSS '
                    +' ,P2SREDINSS '
                    +' ,P2SVINSS '
                    +' ,P2SALIQINSS '
                    +' ,P2SREDIRRF '
                    +' ,P2SBCIRRF '
                    +' ,P2SVIRRF '
                    +' ,P2SALIQIRRF '
                    +' ,(P2STOTLIQ-P2SVDESCF) AS P2STOTLIQ '
                    +' ,P2STOTDES '
                    +' ,(P1TOTSERLIQ-P1DESCFIN) AS P1TOTSERLIQ '
                    +' ,CRAZAO '
                    +' ,CISSRETIDO'
                    +' ,CSUPERMICRO'
                    +' ,CCNPJ '
                    +' ,CCPF '
                    +' ,CIE '
                    +' ,CIM '
                    +' ,P1DATANF_SERV '
                    +',P1SERIE_SERV '
                    +',P1MODELO_SERV'
                    +' ,P1NUMNF_SERV '
                    +', P1NFS_CHACESSO'
                    +' ,P1TOTPIS '
                    +',P1TPEMIS,P1CODSER '
                    +' ,P1TOTCOFINS '
                    +' ,P1VINSS'
                    +' ,P1VIRRF'
                    +' ,0 AS P1VCSLL '
                    +' ,0 AS P1VISSQNRET '
                    +' ,P1VISSQN '
                    +' ,P1BCISSQN '
                    +' ,0 AS P1TOTDES_INCOND '
                    +' ,P1TOTDES '
                    +' ,PDNOME '
                    +', CLOG '
                    +' ,CNUM '
                    +' ,CCOMPL '
                    +' ,CBAIRRO '
                    +' ,LCODMUN_IBGE '
                    +' ,LNOME '
                    +' ,LUF '
                    +' ,CCEP '
                    +',CFONE01,CEMAIL'
                    +',CASE WHEN LENGTH( P2SDESC_COMP)>2 THEN  P2SDESC_COMP ELSE PDNOME END AS DESCRICAO '
                    +' ,PDCODIGO_CNAE,PDCODIGO_SERVICO,P1SERVICO_OBS_CORPO,P1SERVICO_OBS_INF_ADIC '
                    +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' P1CODEMP=0'+floatToStr(ParametrosNfce.pcodemp)
                    +'       and P1LOTSEQ=0'+FloatTostr(ParametrosNfce.pChave_ano)
                    +'       and P1CHAVE=0'+FloatTostr(ParametrosNfce.pChave));
query_serv.SQL.Add(' order by P2SITEM ');




//   ex_erroSql_Novo(query_serv,27064,'func2 ','CADEMP');
try
   query_serv.Open;
except
   query_serv.SQL.SaveToFile(mpastatemp +'sqlERR25682.TXT');
   end;
query_dados_emp:=TQuery.create(nil);
query_dados_emp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_dados_emp.SQL.Clear;
query_dados_emp.SQL.Add('SELECT RAZAO,FANTASIA, LNOME,LUF '
                       +',LCODMUN_IBGE '
                       +',ENDERECO,NUMERO,BAIRRO,CGC '
                       +',INSCMUNIC,INSCRICAO,CEP,FONE'
                       +',E_MAIL'
                       +',EMP_CNAE'
                       +',EMP_OPTSIMPLES'
                       +',EMP_INC_CULTURAL '
                       +' FROM CADEMP,CADLOC '
                       +' WHERE  LCODLOC=CODLOC '
                       +' AND CODEMP=:CODEMP ');
query_dados_emp.ParamByName('CODEMP').AsInteger:=codemp;
try
   query_dados_emp.Open;
except on e : exception do
   begin
   query_dados_emp.close;
   freeandnil(query_dados_emp);
   query_serv.close;
   freeandnil(query_serv);

   ex_erroSql_Novo(query_dados_emp,27064,'func2 '+e.Message,'CADEMP');
   exit;

   end;
   end;

if length((query_dados_emp.fieldbyname('EMP_CNAE').asstring))<1 then
   begin
   Messagedlg('Codigo cnae é obrigatorio',mtWarning,[mbOk],0);
   query_dados_emp.close;
   freeandnil(query_dados_emp);
   query_serv.close;
   freeandnil(query_serv);
   exit;
   end;
fGerarEvento('726 codio cnae '+query_dados_emp.fieldbyname('EMP_CNAE').asstring);

mtotBcINSS  :=0;
mtotINSS    :=0;
mTotBcCOFINS:=0;
mTotCOFINS  :=0;

mTotBcPIS   :=0;
mTotPIS     :=0;

mTotBcCSLL  :=0;
mTotCSLL    :=0;

mTotBcIR    :=0;
mTotIR      :=0;

mTotBcISSQN :=0;
mTotISSQN   :=0;

mTotBcISSRetido:=0;
mTotTotLiq     :=0;

mTotDescIncond :=0;
mTotDescCond   :=0;
mTotDeducoes   :=0;





query_serv.First;
mXml_servico.Add('<?xml version="1.0" encoding="UTF-8"?>');


mXml_servico.Add('<NotaServico>');

mXml_servico.Add(fGeraXMLReal(0,'NumNFse',query_serv.fieldbyname('P1NUMNF_SERV').AsInteger));
//mXml_servico.Add(fGeraXMLReal(0,'NumNFse',8));
mXml_servico.Add(fGeraXMLDataHoraOK('DataNFse',query_serv.fieldbyname('P1DATANF_SERV').AsDateTime));
mXml_servico.Add(fGeraXMLReal(0,'tpAmb', ParametrosNfce.pAmbiente));
//  mXml_servico.Add(fGeraXMLString(0,'SerieNFse','C'));
mXml_servico.Add(fGeraXMLString(0,'SerieNFse',query_serv.fieldbyname('P1SERIE_SERV').AsString));
mXml_servico.Add(fGeraXMLString(0,'TipoNFse','1'));
mXml_servico.Add(fGeraXMLString(0,'Status','1'));

mXml_servico.Add('<Prestador>');
mXml_servico.Add(fGeraXMLString(0,'cnpj',insere(query_dados_emp.fieldbyname('CGC').AsString,'0',14)));
mXml_servico.Add(fGeraXMLString(0,'cpf',''));
mXml_servico.Add(fGeraXMLString(0,'im',fdeixanum(query_dados_emp.fieldbyname('INSCMUNIC').AsString)));
mXml_servico.Add(fGeraXMLString(0,'ie',fdeixanum(query_dados_emp.fieldbyname('INSCRICAO').AsString)));
mXml_servico.Add(fGeraXMLString(0,'RazaoSocial',query_dados_emp.fieldbyname('RAZAO').AsString));
mXml_servico.Add(fGeraXMLString(0,'CRT',query_dados_emp.fieldbyname('EMP_OPTSIMPLES').AsString)); // 1-Simples nacional 2-SN c/Exesso de subLimite rec bruta 2-Normal

mXml_servico.Add(fGeraXMLString(0,'IncentivadorCultural',iif(query_dados_emp.fieldbyname('EMP_INC_CULTURAL').AsString='2','Sim','Nao')));


mXml_servico.Add('<Ender>');
mXml_servico.Add(fGeraXMLString(0,'xLgr',query_dados_emp.fieldbyname('ENDERECO').AsString));
mXml_servico.Add(fGeraXMLString(0,'nro',query_dados_emp.fieldbyname('NUMERO').AsString));
mXml_servico.Add(fGeraXMLString(0,'xCpl',''));
mXml_servico.Add(fGeraXMLString(0,'xBairro',query_dados_emp.fieldbyname('BAIRRO').AsString));
mXml_servico.Add(fGeraXMLString(0,'cMunIbge',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));
mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));

//mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',query_serv.fieldbyName('PDCODIGO_CNAE').AsString));

if fsonumero(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)>0 then
   mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio', fdeixanum(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)))
else
   mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',fdeixanum(query_dados_emp.fieldbyname('EMP_CNAE').AsString)));


mXml_servico.Add(fGeraXMLString(0,'xMun',query_dados_emp.fieldbyname('LNOME').AsString));
mXml_servico.Add(fGeraXMLString(0,'UF',query_dados_emp.fieldbyname('LUF').AsString));
mXml_servico.Add(fGeraXMLString(0,'CEP',fdeixanum2(query_dados_emp.fieldbyname('CEP').AsString)));
mXml_servico.Add(fGeraXMLString(0,'cPais','1058'));
mXml_servico.Add(fGeraXMLString(0,'xPais','BRASIL'));
mXml_servico.Add('</Ender>');
mXml_servico.Add(fGeraXMLString(0,'fone',fdeixanum2(query_dados_emp.fieldbyname('FONE').AsString)));
mXml_servico.Add(fGeraXMLString(0,'eMail',fdeixanum2(query_dados_emp.fieldbyname('E_MAIL').AsString)));
mXml_servico.Add('</Prestador>');


mXml_servico.Add('<Tomador>');
   if fsonumero(query_serv.fieldbyname('CCNPJ').AsString)=0 then
      mXml_servico.Add(fGeraXMLString(0,'cnpj',''))
   else
      mXml_servico.Add(fGeraXMLString(0,'cnpj',insere(query_serv.fieldbyname('CCNPJ').AsString,'0',14)));
   if fsonumero(query_serv.fieldbyname('CCPF').AsString)=0 then
      mXml_servico.Add(fGeraXMLString(0,'cpf',''))
   else
      mXml_servico.Add(fGeraXMLString(0,'cpf',insere(query_serv.fieldbyname('CCPF').AsString,'0',11)));
   if fSonumero(query_serv.fieldbyname('CIM').AsString)=0 then
      mXml_servico.Add(fGeraXMLString(0,'im',''))
   else
      mXml_servico.Add(fGeraXMLString(0,'im',fdeixanum(query_serv.fieldbyname('CIM').AsString)));

   mXml_servico.Add(fGeraXMLString(0,'ie',fdeixanum(query_serv.fieldbyname('CIE').AsString)));
   mXml_servico.Add(fGeraXMLString(0,'RazaoSocial',query_serv.fieldbyname('CRAZAO').AsString));
   mXml_servico.Add(fGeraXMLString(0,'CRT',query_serv.fieldbyname('CSUPERMICRO').AsString));
   mXml_servico.Add(fGeraXMLString(0,'IncentivadorCultural','Nao'));



   mXml_servico.Add('<Ender>');
      mXml_servico.Add(fGeraXMLString(0,'xLgr',query_serv.fieldbyname('CLOG').AsString));
      mXml_servico.Add(fGeraXMLString(0,'nro',query_serv.fieldbyname('CNUM').AsString));
      mXml_servico.Add(fGeraXMLString(0,'xCpl',query_serv.fieldbyname('CCOMPL').AsString));
      mXml_servico.Add(fGeraXMLString(0,'xBairro',query_serv.fieldbyname('CBAIRRO').AsString));
      mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_serv.fieldbyname('LCODMUN_IBGE').AsString));


          if fsonumero(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)>0 then
             mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',fdeixanum(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)))
          else
             mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',fdeixanum(query_dados_emp.fieldbyname('EMP_CNAE').AsString)));

      mXml_servico.Add(fGeraXMLString(0,'cMunIbge',query_serv.fieldbyname('LCODMUN_IBGE').AsString));

      mXml_servico.Add(fGeraXMLString(0,'xMun',query_serv.fieldbyname('LNOME').AsString));
      mXml_servico.Add(fGeraXMLString(0,'UF',query_serv.fieldbyname('LUF').AsString));
      mXml_servico.Add(fGeraXMLString(0,'CEP',fdeixanum2(query_serv.fieldbyname('CCEP').AsString)));
      mXml_servico.Add(fGeraXMLString(0,'cPais','1058'));
      mXml_servico.Add(fGeraXMLString(0,'xPais','BRASIL'));
   mXml_servico.Add('</Ender>');
   mXml_servico.Add(fGeraXMLString(0,'fone',fdeixanum2(query_serv.fieldbyname('CFONE01').AsString)));
   mXml_servico.Add(fGeraXMLString(0,'eMail',fdeixanum2(query_serv.fieldbyname('CEMAIL').AsString)));
mXml_servico.Add('</Tomador>');

mXml_servico.Add('<TributacaoMunicipio>');
      mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));
mXml_servico.Add('</TributacaoMunicipio>');


mXml_servico.Add('<MunicipioIncidencia>');
      mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));
mXml_servico.Add('</MunicipioIncidencia>');




mXml_servico.Add('<Intermediario>');
      mXml_servico.Add(fGeraXMLString(0,'cnpj',''));
      mXml_servico.Add(fGeraXMLString(0,'cpf',''));
      mXml_servico.Add(fGeraXMLString(0,'im',''));
      mXml_servico.Add(fGeraXMLString(0,'ie',''));
      mXml_servico.Add(fGeraXMLString(0,'RazaoSocial',''));
mXml_servico.Add('</Intermediario>');


mXml_servico.Add('<ConstrucaoCivil>');
      mXml_servico.Add(fGeraXMLString(0,'Codigo',''));
      mXml_servico.Add(fGeraXMLString(0,'Art',''));
mXml_servico.Add('</ConstrucaoCivil>');
mItem:=0;
While not query_serv.Eof do
   begin

   mtotBcINSS  :=mtotBcINSS+query_serv.fieldbyname('P2SBCINSS').AsFloat;
   mtotINSS    :=mtotINSS+query_serv.fieldbyname('P2SVINSS').AsFloat;
   mTotBcCOFINS:=mTotBcCOFINS+0;
   mTotCOFINS  :=mTotCOFINS+0;

   mTotBcPIS   :=mTotBcPIS+0;
   mTotPIS     :=mTotPIS+0;

   mTotBcCSLL  :=mTotBcCSLL+0;
   mTotCSLL    :=mTotCSLL+0;

   mTotBcIR    :=mTotBcIR+0;
   mTotIR      :=mTotIR+0;

   mTotBcISSQN :=mTotBcISSQN+query_serv.fieldbyname('P2SBCISSQN').AsFloat;;
   mTotISSQN   :=mTotISSQN+query_serv.fieldbyname('P2SVISSQN').AsFloat;

   mTotBcISSRetido:=mTotBcISSRetido+0;
   mTotTotLiq     :=mTotTotLiq+query_serv.fieldbyname('P2STOTLIQ').AsFloat;;

   mTotDescIncond :=mTotDescIncond+query_serv.fieldbyname('P2STOTDES').AsFloat;
   mTotDescCond   :=mTotDescCond+0;
   mTotDeducoes   :=mTotDeducoes+0;




   mItem:=mItem+1;
   mXml_servico.Add('<det nItem="'+IntToStr(mItem)+'">');
       mXml_servico.Add('<Servico>');
          mXml_servico.Add(fGeraXMLString(0,'codServ',query_serv.fieldbyname('PDCODIGO_SERVICO').AsString));


          mXml_servico.Add(fGeraXMLString(0,'codLCServ',query_serv.fieldbyname('PDCODLC_116_03').AsString));


// inicio
          if length(fdeixanum(query_serv.fieldbyname('PDCODNBS').AsString))>2 then
             begin
                 mXml_servico.Add(fGeraXMLString(0,'codNbs',query_serv.fieldbyname('PDCODNBS').AsString));
             end;
// termnino

//          mXml_servico.Add(fGeraXMLString(0,'Descricao',query_serv.fieldbyname('DESCRICAO').AsString));

          if length(query_serv.fieldbyName('P1SERVICO_OBS_CORPO').AsString)>1 then
             mXml_servico.Add(fGeraXMLString(0,'Descricao',query_serv.fieldbyname('P1SERVICO_OBS_CORPO').AsString))
          else
             mXml_servico.Add(fGeraXMLString(0,'Descricao',query_serv.fieldbyname('DESCRICAO').AsString));

          mXml_servico.Add(fGeraXMLString(0,'Quantidade',query_serv.fieldbyname('P2SQTD').AsString));
          mXml_servico.Add(fGeraXMLReal(2,'vPU',query_serv.fieldbyname('P2SPRECO').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vTotal',query_serv.fieldbyname('P2STOTLIQ').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vDescIncond',query_serv.fieldbyname('P2STOTDES').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vDescCond',0));
          mXml_servico.Add(fGeraXMLReal(2,'vDeducoes',0));

          if fsonumero(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)>0 then
             mXml_servico.Add(fGeraXMLString(0,'CodigoCnae',fdeixanum(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)))
          else
            mXml_servico.Add(fGeraXMLString(0,'CodigoCnae',fdeixanum(query_dados_emp.fieldbyname('EMP_CNAE').AsString)));
          mXml_servico.Add(fGeraXMLString(0,'ExigibilidadeISS',ExigibilidadeISS));


       mXml_servico.Add('</Servico>');

       mXml_servico.Add('<Impostos>');
          mXml_servico.Add(fGeraXMLReal(2,'vBcINSS',query_serv.fieldbyname('P2SBCINSS').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'pINSS',query_serv.fieldbyname('P2SALIQINSS').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vINSS',query_serv.fieldbyname('P2SVINSS').AsFloat));


          mXml_servico.Add(fGeraXMLReal(2,'vBcCOFINS',0));
          mXml_servico.Add(fGeraXMLReal(2,'pCOFINS',0));
          mXml_servico.Add(fGeraXMLReal(2,'vCOFINS',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcPIS',0));
          mXml_servico.Add(fGeraXMLReal(2,'pPIS',0));
          mXml_servico.Add(fGeraXMLReal(2,'vPIS',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcCSLL',0));
          mXml_servico.Add(fGeraXMLReal(2,'pCSLL',0));
          mXml_servico.Add(fGeraXMLReal(2,'vCSLL',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcIR',0));
          mXml_servico.Add(fGeraXMLReal(2,'pIR',0));
          mXml_servico.Add(fGeraXMLReal(2,'vIR',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcISSQN',query_serv.fieldbyname('P2SBCISSQN').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'pISSQN',query_serv.fieldbyname('ALIQ_ISSQN').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vISSQN',query_serv.fieldbyname('P2SVISSQN').AsFloat));

          mXml_servico.Add(fGeraXMLString(0,'vBcISSRetido',query_serv.fieldbyname('CISSRETIDO').AsString));
//          mXml_servico.Add(fGeraXMLString(0,'ExigibilidadeISS',ExigibilidadeISS));

       mXml_servico.Add('</Impostos>');
    mXml_servico.Add('</det>');
    query_serv.Next;
    end;
query_serv.First;

query_vcto:=TQuery.create(nil);
query_vcto.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_vcto.Close;
query_vcto.SQL.Clear;

query_vcto.SQL.Add('SELECT P1VVALOR,P1VDATAV  from cadp01v '
                  +' where P1VCHAVE=:CHAVE '
                  +' and P1VLOTSEQ=:LOTSEQ '
                  +' and P1VCODEMP=:CODEMP ');
query_vcto.ParamByName('CHAVE').AsInteger :=ParametrosNfce.pChave;
query_vcto.ParamByName('LOTSEQ').AsInteger:=ParametrosNfce.pChave_ano;
query_vcto.ParamByName('CODEMP').AsInteger:=ParametrosNfce.pcodemp;
try
   query_vcto.Open;
except on e : exception do
   ex_erroSql_Novo(query_vcto,27220,'func2 '+e.Message,'CADP01V');
   end;
mItem:=0;

While not query_vcto.Eof do
   begin
   mItem:=mItem+1;
   mXml_servico.Add('<Parc nParc="'+IntToStr(mItem)+'">');
          mXml_servico.Add('<Parcela>');
          mXml_servico.Add(fGeraXMLData('dVenc',query_vcto.fieldbyname('P1VDATAV').AsDateTime));
          mXml_servico.Add(fGeraXMLReal(2,'vDup',query_vcto.fieldbyname('P1VVALOR').AsFloat));
          mXml_servico.Add('</Parcela>');
   mXml_servico.Add('</Parc>');
   query_vcto.Next;
   end;
mXml_servico.Add('<Total>');

mXml_servico.Add(fGeraXMLReal(2,'vBcINSS',mtotBcINSS));
mXml_servico.Add(fGeraXMLReal(2,'vINSS',mtotINSS));

mXml_servico.Add(fGeraXMLReal(2,'vBcCOFINS',mTotBcCOFINS));
mXml_servico.Add(fGeraXMLReal(2,'vCOFINS',mTotCOFINS));

mXml_servico.Add(fGeraXMLReal(2,'vBcPIS',mTotBcPIS));
mXml_servico.Add(fGeraXMLReal(2,'vPIS',mTotPIS));

mXml_servico.Add(fGeraXMLReal(2,'vBcCSLL',mTotBcCSLL));
mXml_servico.Add(fGeraXMLReal(2,'vCSLL',mTotCSLL));

mXml_servico.Add(fGeraXMLReal(2,'vBcIR',mTotBcIR));
mXml_servico.Add(fGeraXMLReal(2,'vIR',mTotIR));

mXml_servico.Add(fGeraXMLReal(2,'vBcISSQN',mTotBcISSQN));
mXml_servico.Add(fGeraXMLReal(2,'vISSQN',mTotISSQN));


mXml_servico.Add(fGeraXMLReal(2,'vBcISSRetido',mTotBcISSRetido));
mXml_servico.Add(fGeraXMLReal(2,'vTotLiq',mTotTotLiq));

mXml_servico.Add(fGeraXMLReal(2,'vTotDescIncond',mTotDescIncond));
mXml_servico.Add(fGeraXMLReal(2,'vTotDescCond',mTotDescCond));
mXml_servico.Add(fGeraXMLReal(2,'vTotDeducoes',mTotDeducoes));

mXml_servico.Add('</Total>');


 mXml_servico.Add('<InfAdic>');
    mXml_servico.Add(fGeraXMLstring(0,'InfComplementares',query_serv.fieldbyName('P1SERVICO_OBS_INF_ADIC').AsString));

 mXml_servico.Add('</InfAdic>');

mXml_servico.Add('</NotaServico>');



//mXml_servico.SaveToFile('c:\sge\nfse'+query_serv.fieldbyname('P1NUMNF_SERV').AsString+'.xml');

Result.pXmlRetorno := TStringList.Create;
result.pXmlRetorno.text := mXml_servico.Text;
Result.pOk:=true;


end;




function fGerarXmlNotadeServico(ParametrosNfce: tParametrosNfce): tRetornoNfce;
var

  mXml_servico: TStrings;
  query_serv: TQuery;
  query_dados_emp: TQuery;
  query_vcto: TQuery;

	nItens : integer;

  mtotBcINSS: Real;
  mtotINSS: Real;
  mTotBcCOFINS: Real;
  mTotCOFINS: Real;

  mTotBcPIS: Real;
  mTotPIS: Real;

  mTotBcCSLL: Real;
  mTotCSLL: Real;

  mTotBcIR: Real;
  mTotIR: Real;

  mTotBcISSQN: Real;
  mTotISSQN: Real;

  mTotBcISSRetido: Real;
  mTotTotLiq: Real;

  mTotDescIncond: Real;
  mTotDescCond: Real;
  mTotDeducoes: Real;

  Form_Nfe_Aguarde: TFrm_Nfe_Aguarde;




const

   ExigibilidadeISS = '1';
//vercomalexandre



    procedure fAtualizarCadns();
    var
    query_atuns: tQuery;
    begin

//    fbuscart form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfse_Autorizacao;


    query_atuns := TQuery.Create(nil);
    query_atuns.DatabaseName:='SG_ASSOC';


    query_atuns.sql.add('Update cadns set NSNFSERV_NUMNF_RPS='+query_serv.fieldbyname('P1NUMNF_SERV').AsString
                       +',NSNFSERV_SERIE='+query_serv.fieldbyname('P1SERIE_SERV').AsString

                       +',NSNFSERV_DATHORREC=:NSNFSERV_DATHORREC '
                       +',NSNFSERV_PROTOCOLO=:NSNFSERV_PROTOCOLO '
                       +',NSNFSERV_NUMNF=:NSNFSERV_NUMNF '


                       +' where NSCHAVEP='+FloattoStr(ParametrosNfce.pChave)
                       +' and NSLOTSEQ_CP='+FloattoStr(ParametrosNfce.pChave_ano)
                       +' and NSCODEMP='+FloattoStr(ParametrosNfce.pcodemp));

    query_atuns.ParamByName('NSNFSERV_DATHORREC').AsDateTime:=fSairDataHoraXml('A', getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'DataEmissao','InfNfse','',''));
    query_atuns.ParamByName('NSNFSERV_PROTOCOLO').AsString  :=getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'CodigoVerificacao','InfNfse','','');
    query_atuns.ParamByName('NSNFSERV_NUMNF').AsInteger     :=valint(getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'Numero','InfNfse','',''));



    try

       query_atuns.ExecSQL;
       fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_atuns,281,'SGE','CADEST');
       end;


       end;


    query_atuns.close;
    query_atuns.sql.clear;
    query_atuns.sql.add('Update cadp01 set P1NFS_NPROT=:P1NFS_NPROT '

                       +' where P1CHAVE='+FloattoStr(ParametrosNfce.pChave)
                       +' and P1LOTSEQ='+FloattoStr(ParametrosNfce.pChave_ano)
                       +' and P1CODEMP='+FloattoStr(ParametrosNfce.pcodemp));
    query_atuns.ParamByName('P1NFS_NPROT').AsString  :=getConteudoTAG(Form_Nfe_Aguarde.MNFERetorno.msaida_xml_protocolado,'CodigoVerificacao','InfNfse','','');


    try

       query_atuns.ExecSQL;
       fdm1StartCommit;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_atuns,281,'SGE','CADEST');
       end;


       end;



   query_atuns.close;


   freeandnil(query_atuns);

    end;

begin
mXml_servico:=TStringList.Create;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADLOC','LCODEMP','CCODEMP','LCODLOC','CCODLOC');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin4(0,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE'
               ,'P2SORDEM','P1ORDEM');

query_serv:=TQuery.create(nil);
query_serv.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_serv.Close;
query_serv.SQL.Clear;
query_serv.SQL.Add(' Select P2SQTD,P2SITEM '
                  +' , round(   (  (P2SBCISSQN-P2SVDESCF)*P2SALIQ/100),2) as P2SVISSQN '
                  +' ,P2SALIQ  as ALIQ_ISSQN '
                    +' ,P2SBCISSQN-P2SVDESCF AS  P2SBCISSQN'
                    +' ,P2STOTDES'
                    +' ,P2SISENTAS'
                    +' ,P2SCODPRO '
                    +' ,(P2SPRECO-P2SVDESCF) AS P2SPRECO '
                    +' ,p2SSIT,P2SDESC1,P2SDESC2'
                    +' ,P2SCFO AS P2SCFO,P2SLISTA,P2SALIQ,PDNOME,PDUND,PDCODBAR'
                    +' ,PDMARCA,PDREFER'
                    +' ,PDCODIGO_CNAE '
                    +' ,PDCODLC_116_03'
                    +' ,PDCODNBS '
                    +' ,(P2SBCINSS-P2SVDESCF) AS P2SBCINSS '
                    +' ,P2SREDINSS '
                    +' ,P2SVINSS '
                    +' ,P2SALIQINSS '
                    +' ,P2SREDIRRF '
                    +' ,P2SBCIRRF '
                    +' ,P2SVIRRF '
                    +' ,P2SALIQIRRF '
                    +' ,(P2STOTLIQ-P2SVDESCF) AS P2STOTLIQ '
                    +' ,P2STOTDES '
                    +' ,(P1TOTSERLIQ-P1DESCFIN) AS P1TOTSERLIQ '
                    +' ,CRAZAO '
                    +' ,CISSRETIDO'
                    +' ,CSUPERMICRO'
                    +' ,CCNPJ '
                    +' ,CCPF '
                    +' ,CIE '
                    +' ,CIM '
                    +' ,P1DATANF_SERV '
                    +',P1SERIE_SERV '
                    +',P1MODELO_SERV'
                    +' ,P1NUMNF_SERV '
                    +', P1NFS_CHACESSO'
                    +' ,P1TOTPIS '
                    +',P1TPEMIS,P1CODSER '
                    +' ,P1TOTCOFINS '
                    +' ,P1VINSS'
                    +' ,P1VIRRF'
                    +' ,0 AS P1VCSLL '
                    +' ,0 AS P1VISSQNRET '
                    +' ,P1VISSQN '
                    +' ,P1BCISSQN '
                    +' ,0 AS P1TOTDES_INCOND '
                    +' ,P1TOTDES '
                    +' ,PDNOME '
                    +', CLOG '
                    +' ,CNUM '
                    +' ,CCOMPL '
                    +' ,CBAIRRO '
                    +' ,LCODMUN_IBGE '
                    +' ,LNOME '
                    +' ,LUF '
                    +' ,CCEP '
                    +',CFONE01,CEMAIL'
                    +',CASE WHEN LENGTH( P2SDESC_COMP)>2 THEN  P2SDESC_COMP ELSE PDNOME END AS DESCRICAO '
                    +' ,PDCODIGO_CNAE,PDCODIGO_SERVICO,P1SERVICO_OBS_CORPO,P1SERVICO_OBS_INF_ADIC '
                    +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' P1CODEMP=0'+floatToStr(ParametrosNfce.pcodemp)
                    +'       and P1LOTSEQ=0'+FloatTostr(ParametrosNfce.pChave_ano)
                    +'       and P1CHAVE=0'+FloatTostr(ParametrosNfce.pChave));
query_serv.SQL.Add(' order by P2SITEM ');




//   ex_erroSql_Novo(query_serv,27064,'func2 ','CADEMP');
try
   query_serv.Open;
except
   query_serv.SQL.SaveToFile(mpastatemp +'sqlERR25682.TXT');
   end;
query_dados_emp:=TQuery.create(nil);
query_dados_emp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_dados_emp.SQL.Clear;
query_dados_emp.SQL.Add('SELECT RAZAO,FANTASIA, LNOME,LUF '
                       +',LCODMUN_IBGE '
                       +',ENDERECO,NUMERO,BAIRRO,CGC '
                       +',INSCMUNIC,INSCRICAO,CEP,FONE'
                       +',E_MAIL'
                       +',EMP_CNAE'
                       +',EMP_OPTSIMPLES'
                       +',EMP_INC_CULTURAL '
                       +' FROM CADEMP,CADLOC '
                       +' WHERE  LCODLOC=CODLOC '
                       +' AND CODEMP=:CODEMP ');
query_dados_emp.ParamByName('CODEMP').AsInteger:=codemp;
try
   query_dados_emp.Open;
except on e : exception do
   begin
   query_dados_emp.close;
   freeandnil(query_dados_emp);
   query_serv.close;
   freeandnil(query_serv);

   ex_erroSql_Novo(query_dados_emp,27064,'func2 '+e.Message,'CADEMP');
   exit;

   end;
   end;

if length((query_dados_emp.fieldbyname('EMP_CNAE').asstring))<1 then
   begin
   Messagedlg('Codigo cnae é obrigatorio',mtWarning,[mbOk],0);
   query_dados_emp.close;
   freeandnil(query_dados_emp);
   query_serv.close;
   freeandnil(query_serv);
   exit;
   end;
fGerarEvento('726 codio cnae '+query_dados_emp.fieldbyname('EMP_CNAE').asstring);

mtotBcINSS  :=0;
mtotINSS    :=0;
mTotBcCOFINS:=0;
mTotCOFINS  :=0;

mTotBcPIS   :=0;
mTotPIS     :=0;

mTotBcCSLL  :=0;
mTotCSLL    :=0;

mTotBcIR    :=0;
mTotIR      :=0;

mTotBcISSQN :=0;
mTotISSQN   :=0;

mTotBcISSRetido:=0;
mTotTotLiq     :=0;

mTotDescIncond :=0;
mTotDescCond   :=0;
mTotDeducoes   :=0;





query_serv.First;
mXml_servico.Add('<?xml version="1.0" encoding="UTF-8"?>');


mXml_servico.Add('<NotaServico>');

mXml_servico.Add(fGeraXMLReal(0,'NumNFse',query_serv.fieldbyname('P1NUMNF_SERV').AsInteger));
//mXml_servico.Add(fGeraXMLReal(0,'NumNFse',8));
mXml_servico.Add(fGeraXMLDataHoraOK('DataNFse',query_serv.fieldbyname('P1DATANF_SERV').AsDateTime));
mXml_servico.Add(fGeraXMLReal(0,'tpAmb', ParametrosNfce.pAmbiente));
//  mXml_servico.Add(fGeraXMLString(0,'SerieNFse','C'));
mXml_servico.Add(fGeraXMLString(0,'SerieNFse',query_serv.fieldbyname('P1SERIE_SERV').AsString));
mXml_servico.Add(fGeraXMLString(0,'TipoNFse','1'));
mXml_servico.Add(fGeraXMLString(0,'Status','1'));

mXml_servico.Add('<Prestador>');
mXml_servico.Add(fGeraXMLString(0,'cnpj',insere(query_dados_emp.fieldbyname('CGC').AsString,'0',14)));
mXml_servico.Add(fGeraXMLString(0,'cpf',''));
mXml_servico.Add(fGeraXMLString(0,'im',fdeixanum(query_dados_emp.fieldbyname('INSCMUNIC').AsString)));
mXml_servico.Add(fGeraXMLString(0,'ie',fdeixanum(query_dados_emp.fieldbyname('INSCRICAO').AsString)));
mXml_servico.Add(fGeraXMLString(0,'RazaoSocial',query_dados_emp.fieldbyname('RAZAO').AsString));
mXml_servico.Add(fGeraXMLString(0,'CRT',query_dados_emp.fieldbyname('EMP_OPTSIMPLES').AsString)); // 1-Simples nacional 2-SN c/Exesso de subLimite rec bruta 2-Normal

mXml_servico.Add(fGeraXMLString(0,'IncentivadorCultural',iif(query_dados_emp.fieldbyname('EMP_INC_CULTURAL').AsString='2','Sim','Nao')));


mXml_servico.Add('<Ender>');
mXml_servico.Add(fGeraXMLString(0,'xLgr',query_dados_emp.fieldbyname('ENDERECO').AsString));
mXml_servico.Add(fGeraXMLString(0,'nro',query_dados_emp.fieldbyname('NUMERO').AsString));
mXml_servico.Add(fGeraXMLString(0,'xCpl',''));
mXml_servico.Add(fGeraXMLString(0,'xBairro',query_dados_emp.fieldbyname('BAIRRO').AsString));
mXml_servico.Add(fGeraXMLString(0,'cMunIbge',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));
mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));

//mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',query_serv.fieldbyName('PDCODIGO_CNAE').AsString));

if fsonumero(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)>0 then
   mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio', fdeixanum(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)))
else
   mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',fdeixanum(query_dados_emp.fieldbyname('EMP_CNAE').AsString)));


mXml_servico.Add(fGeraXMLString(0,'xMun',query_dados_emp.fieldbyname('LNOME').AsString));
mXml_servico.Add(fGeraXMLString(0,'UF',query_dados_emp.fieldbyname('LUF').AsString));
mXml_servico.Add(fGeraXMLString(0,'CEP',fdeixanum2(query_dados_emp.fieldbyname('CEP').AsString)));
mXml_servico.Add(fGeraXMLString(0,'cPais','1058'));
mXml_servico.Add(fGeraXMLString(0,'xPais','BRASIL'));
mXml_servico.Add('</Ender>');
mXml_servico.Add(fGeraXMLString(0,'fone',fdeixanum2(query_dados_emp.fieldbyname('FONE').AsString)));
mXml_servico.Add(fGeraXMLString(0,'eMail',fdeixanum2(query_dados_emp.fieldbyname('E_MAIL').AsString)));
mXml_servico.Add('</Prestador>');


mXml_servico.Add('<Tomador>');
   if fsonumero(query_serv.fieldbyname('CCNPJ').AsString)=0 then
      mXml_servico.Add(fGeraXMLString(0,'cnpj',''))
   else
      mXml_servico.Add(fGeraXMLString(0,'cnpj',insere(query_serv.fieldbyname('CCNPJ').AsString,'0',14)));
   if fsonumero(query_serv.fieldbyname('CCPF').AsString)=0 then
      mXml_servico.Add(fGeraXMLString(0,'cpf',''))
   else
      mXml_servico.Add(fGeraXMLString(0,'cpf',insere(query_serv.fieldbyname('CCPF').AsString,'0',11)));
   if fSonumero(query_serv.fieldbyname('CIM').AsString)=0 then
      mXml_servico.Add(fGeraXMLString(0,'im',''))
   else
      mXml_servico.Add(fGeraXMLString(0,'im',fdeixanum(query_serv.fieldbyname('CIM').AsString)));

   mXml_servico.Add(fGeraXMLString(0,'ie',fdeixanum(query_serv.fieldbyname('CIE').AsString)));
   mXml_servico.Add(fGeraXMLString(0,'RazaoSocial',query_serv.fieldbyname('CRAZAO').AsString));
   mXml_servico.Add(fGeraXMLString(0,'CRT',query_serv.fieldbyname('CSUPERMICRO').AsString));
   mXml_servico.Add(fGeraXMLString(0,'IncentivadorCultural','Nao'));



   mXml_servico.Add('<Ender>');
      mXml_servico.Add(fGeraXMLString(0,'xLgr',query_serv.fieldbyname('CLOG').AsString));
      mXml_servico.Add(fGeraXMLString(0,'nro',query_serv.fieldbyname('CNUM').AsString));
      mXml_servico.Add(fGeraXMLString(0,'xCpl',query_serv.fieldbyname('CCOMPL').AsString));
      mXml_servico.Add(fGeraXMLString(0,'xBairro',query_serv.fieldbyname('CBAIRRO').AsString));
      mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_serv.fieldbyname('LCODMUN_IBGE').AsString));


          if fsonumero(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)>0 then
             mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',fdeixanum(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)))
          else
             mXml_servico.Add(fGeraXMLString(0,'CodigoTributacaoMunicipio',fdeixanum(query_dados_emp.fieldbyname('EMP_CNAE').AsString)));

      mXml_servico.Add(fGeraXMLString(0,'cMunIbge',query_serv.fieldbyname('LCODMUN_IBGE').AsString));

      mXml_servico.Add(fGeraXMLString(0,'xMun',query_serv.fieldbyname('LNOME').AsString));
      mXml_servico.Add(fGeraXMLString(0,'UF',query_serv.fieldbyname('LUF').AsString));
      mXml_servico.Add(fGeraXMLString(0,'CEP',fdeixanum2(query_serv.fieldbyname('CCEP').AsString)));
      mXml_servico.Add(fGeraXMLString(0,'cPais','1058'));
      mXml_servico.Add(fGeraXMLString(0,'xPais','BRASIL'));
   mXml_servico.Add('</Ender>');
   mXml_servico.Add(fGeraXMLString(0,'fone',fdeixanum2(query_serv.fieldbyname('CFONE01').AsString)));
   mXml_servico.Add(fGeraXMLString(0,'eMail',fdeixanum2(query_serv.fieldbyname('CEMAIL').AsString)));
mXml_servico.Add('</Tomador>');

mXml_servico.Add('<TributacaoMunicipio>');
      mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));
mXml_servico.Add('</TributacaoMunicipio>');


mXml_servico.Add('<MunicipioIncidencia>');
      mXml_servico.Add(fGeraXMLString(0,'cMunPref',query_dados_emp.fieldbyname('LCODMUN_IBGE').AsString));
mXml_servico.Add('</MunicipioIncidencia>');




mXml_servico.Add('<Intermediario>');
      mXml_servico.Add(fGeraXMLString(0,'cnpj',''));
      mXml_servico.Add(fGeraXMLString(0,'cpf',''));
      mXml_servico.Add(fGeraXMLString(0,'im',''));
      mXml_servico.Add(fGeraXMLString(0,'ie',''));
      mXml_servico.Add(fGeraXMLString(0,'RazaoSocial',''));
mXml_servico.Add('</Intermediario>');


mXml_servico.Add('<ConstrucaoCivil>');
      mXml_servico.Add(fGeraXMLString(0,'Codigo',''));
      mXml_servico.Add(fGeraXMLString(0,'Art',''));
mXml_servico.Add('</ConstrucaoCivil>');
mItem:=0;
While not query_serv.Eof do
   begin

   mtotBcINSS  :=mtotBcINSS+query_serv.fieldbyname('P2SBCINSS').AsFloat;
   mtotINSS    :=mtotINSS+query_serv.fieldbyname('P2SVINSS').AsFloat;
   mTotBcCOFINS:=mTotBcCOFINS+0;
   mTotCOFINS  :=mTotCOFINS+0;

   mTotBcPIS   :=mTotBcPIS+0;
   mTotPIS     :=mTotPIS+0;

   mTotBcCSLL  :=mTotBcCSLL+0;
   mTotCSLL    :=mTotCSLL+0;

   mTotBcIR    :=mTotBcIR+0;
   mTotIR      :=mTotIR+0;

   mTotBcISSQN :=mTotBcISSQN+query_serv.fieldbyname('P2SBCISSQN').AsFloat;;
   mTotISSQN   :=mTotISSQN+query_serv.fieldbyname('P2SVISSQN').AsFloat;

   mTotBcISSRetido:=mTotBcISSRetido+0;
   mTotTotLiq     :=mTotTotLiq+query_serv.fieldbyname('P2STOTLIQ').AsFloat;;

   mTotDescIncond :=mTotDescIncond+query_serv.fieldbyname('P2STOTDES').AsFloat;
   mTotDescCond   :=mTotDescCond+0;
   mTotDeducoes   :=mTotDeducoes+0;




   mItem:=mItem+1;
   mXml_servico.Add('<det nItem="'+IntToStr(mItem)+'">');
       mXml_servico.Add('<Servico>');
          mXml_servico.Add(fGeraXMLString(0,'codServ',query_serv.fieldbyname('PDCODIGO_SERVICO').AsString));


          mXml_servico.Add(fGeraXMLString(0,'codLCServ',query_serv.fieldbyname('PDCODLC_116_03').AsString));


// inicio
          if length(fdeixanum(query_serv.fieldbyname('PDCODNBS').AsString))>2 then
             begin
                 mXml_servico.Add(fGeraXMLString(0,'codNbs',query_serv.fieldbyname('PDCODNBS').AsString));
             end;
// termnino

//          mXml_servico.Add(fGeraXMLString(0,'Descricao',query_serv.fieldbyname('DESCRICAO').AsString));

          if length(query_serv.fieldbyName('P1SERVICO_OBS_CORPO').AsString)>1 then
             mXml_servico.Add(fGeraXMLString(0,'Descricao',query_serv.fieldbyname('P1SERVICO_OBS_CORPO').AsString))
          else
             mXml_servico.Add(fGeraXMLString(0,'Descricao',query_serv.fieldbyname('DESCRICAO').AsString));

          mXml_servico.Add(fGeraXMLString(0,'Quantidade',query_serv.fieldbyname('P2SQTD').AsString));
          mXml_servico.Add(fGeraXMLReal(2,'vPU',query_serv.fieldbyname('P2SPRECO').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vTotal',query_serv.fieldbyname('P2STOTLIQ').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vDescIncond',query_serv.fieldbyname('P2STOTDES').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vDescCond',0));
          mXml_servico.Add(fGeraXMLReal(2,'vDeducoes',0));

          if fsonumero(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)>0 then
             mXml_servico.Add(fGeraXMLString(0,'CodigoCnae',fdeixanum(query_serv.fieldbyname('PDCODIGO_CNAE').AsString)))
          else
            mXml_servico.Add(fGeraXMLString(0,'CodigoCnae',fdeixanum(query_dados_emp.fieldbyname('EMP_CNAE').AsString)));
          mXml_servico.Add(fGeraXMLString(0,'ExigibilidadeISS',ExigibilidadeISS));


       mXml_servico.Add('</Servico>');

       mXml_servico.Add('<Impostos>');
          mXml_servico.Add(fGeraXMLReal(2,'vBcINSS',query_serv.fieldbyname('P2SBCINSS').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'pINSS',query_serv.fieldbyname('P2SALIQINSS').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vINSS',query_serv.fieldbyname('P2SVINSS').AsFloat));


          mXml_servico.Add(fGeraXMLReal(2,'vBcCOFINS',0));
          mXml_servico.Add(fGeraXMLReal(2,'pCOFINS',0));
          mXml_servico.Add(fGeraXMLReal(2,'vCOFINS',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcPIS',0));
          mXml_servico.Add(fGeraXMLReal(2,'pPIS',0));
          mXml_servico.Add(fGeraXMLReal(2,'vPIS',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcCSLL',0));
          mXml_servico.Add(fGeraXMLReal(2,'pCSLL',0));
          mXml_servico.Add(fGeraXMLReal(2,'vCSLL',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcIR',0));
          mXml_servico.Add(fGeraXMLReal(2,'pIR',0));
          mXml_servico.Add(fGeraXMLReal(2,'vIR',0));

          mXml_servico.Add(fGeraXMLReal(2,'vBcISSQN',query_serv.fieldbyname('P2SBCISSQN').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'pISSQN',query_serv.fieldbyname('ALIQ_ISSQN').AsFloat));
          mXml_servico.Add(fGeraXMLReal(2,'vISSQN',query_serv.fieldbyname('P2SVISSQN').AsFloat));

          mXml_servico.Add(fGeraXMLString(0,'vBcISSRetido',query_serv.fieldbyname('CISSRETIDO').AsString));
//          mXml_servico.Add(fGeraXMLString(0,'ExigibilidadeISS',ExigibilidadeISS));

       mXml_servico.Add('</Impostos>');
    mXml_servico.Add('</det>');
    query_serv.Next;
    end;
query_serv.First;

query_vcto:=TQuery.create(nil);
query_vcto.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_vcto.Close;
query_vcto.SQL.Clear;

query_vcto.SQL.Add('SELECT P1VVALOR,P1VDATAV  from cadp01v '
                  +' where P1VCHAVE=:CHAVE '
                  +' and P1VLOTSEQ=:LOTSEQ '
                  +' and P1VCODEMP=:CODEMP ');
query_vcto.ParamByName('CHAVE').AsInteger :=ParametrosNfce.pChave;
query_vcto.ParamByName('LOTSEQ').AsInteger:=ParametrosNfce.pChave_ano;
query_vcto.ParamByName('CODEMP').AsInteger:=ParametrosNfce.pcodemp;
try
   query_vcto.Open;
except on e : exception do
   ex_erroSql_Novo(query_vcto,27220,'func2 '+e.Message,'CADP01V');
   end;
mItem:=0;

While not query_vcto.Eof do
   begin
   mItem:=mItem+1;
   mXml_servico.Add('<Parc nParc="'+IntToStr(mItem)+'">');
          mXml_servico.Add('<Parcela>');
          mXml_servico.Add(fGeraXMLData('dVenc',query_vcto.fieldbyname('P1VDATAV').AsDateTime));
          mXml_servico.Add(fGeraXMLReal(2,'vDup',query_vcto.fieldbyname('P1VVALOR').AsFloat));
          mXml_servico.Add('</Parcela>');
   mXml_servico.Add('</Parc>');
   query_vcto.Next;
   end;
mXml_servico.Add('<Total>');

mXml_servico.Add(fGeraXMLReal(2,'vBcINSS',mtotBcINSS));
mXml_servico.Add(fGeraXMLReal(2,'vINSS',mtotINSS));

mXml_servico.Add(fGeraXMLReal(2,'vBcCOFINS',mTotBcCOFINS));
mXml_servico.Add(fGeraXMLReal(2,'vCOFINS',mTotCOFINS));

mXml_servico.Add(fGeraXMLReal(2,'vBcPIS',mTotBcPIS));
mXml_servico.Add(fGeraXMLReal(2,'vPIS',mTotPIS));

mXml_servico.Add(fGeraXMLReal(2,'vBcCSLL',mTotBcCSLL));
mXml_servico.Add(fGeraXMLReal(2,'vCSLL',mTotCSLL));

mXml_servico.Add(fGeraXMLReal(2,'vBcIR',mTotBcIR));
mXml_servico.Add(fGeraXMLReal(2,'vIR',mTotIR));

mXml_servico.Add(fGeraXMLReal(2,'vBcISSQN',mTotBcISSQN));
mXml_servico.Add(fGeraXMLReal(2,'vISSQN',mTotISSQN));


mXml_servico.Add(fGeraXMLReal(2,'vBcISSRetido',mTotBcISSRetido));
mXml_servico.Add(fGeraXMLReal(2,'vTotLiq',mTotTotLiq));

mXml_servico.Add(fGeraXMLReal(2,'vTotDescIncond',mTotDescIncond));
mXml_servico.Add(fGeraXMLReal(2,'vTotDescCond',mTotDescCond));
mXml_servico.Add(fGeraXMLReal(2,'vTotDeducoes',mTotDeducoes));

mXml_servico.Add('</Total>');


 mXml_servico.Add('<InfAdic>');
    mXml_servico.Add(fGeraXMLstring(0,'InfComplementares',query_serv.fieldbyName('P1SERVICO_OBS_INF_ADIC').AsString));

 mXml_servico.Add('</InfAdic>');

mXml_servico.Add('</NotaServico>');



//mXml_servico.SaveToFile('c:\sge\nfse'+query_serv.fieldbyname('P1NUMNF_SERV').AsString+'.xml');

if (ParametrosNfce.pSoSalvar) then
   begin
   mXml_servico.SaveToFile(ParametrosNfce.pNomeSaida);
   query_dados_emp.Close;
   query_serv.close;
   query_vcto.Close;
   freeandnil(query_serv);
   freeandnil(query_dados_emp);
   freeandnil(query_vcto);
   freeandnil(mXml_servico);

   result.pok:=true;
   exit;
   end;


Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
form_nfe_aguarde.mNFEretorno.mentra_operacao:=Nfse_Autorizacao;
form_nfe_aguarde.mNFEretorno.mentra_evento  :=Nfse_Autorizacao;

form_nfe_aguarde.mNFEretorno.mentra_chave   :=ParametrosNfce.pChave;
form_nfe_aguarde.mNFEretorno.mentra_codemp  :=ParametrosNfce.pcodemp;
form_nfe_aguarde.mNFEretorno.mentra_lotseq  :=ParametrosNfce.pChave_ano;
form_nfe_aguarde.mNFEretorno.mentra_numnf   := query_serv.fieldbyname('P1NUMNF_SERV').AsInteger;
form_nfe_aguarde.mNFEretorno.mentra_serie   := query_serv.fieldbyname('P1SERIE_SERV').AsString;
form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
form_nfe_aguarde.mNFEretorno.mentra_modelo        :=query_serv.fieldbyname('P1MODELO_SERV').AsString;
form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :=query_serv.fieldbyname('P1NFS_CHACESSO').AsString;
form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXml_servico.Text;
form_nfe_aguarde.Timer_processar.Enabled := true;
Form_Nfe_Aguarde.ShowModal;
if (form_nfe_aguarde.mNFEretorno.msaida_cstat=0) or (form_nfe_aguarde.mNFEretorno.msaida_cstat=999) then
   begin
   result.pMensagem:=result.pMensagem+form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta+#13 +
   form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo+#13;
   if ParametrosNfce.pAceitaMensagem then
      begin
      Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
      Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_ret_observacao
      +#13 +   form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo+#13);
      Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
      Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXml_servico.Text);
      Frm_Sintegra_Advert.tsXml.TabVisible:=true;
      Frm_Sintegra_Advert.TabSheet1.TabVisible:=true;
      Frm_Sintegra_Advert.Memo_xmlRet.Lines.Text:=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
      Frm_Sintegra_Advert.ShowModal;
      end;
   result.pok:=false;
   exit;
   end;

fAtualizarCadns();



query_dados_emp.Close;
query_serv.close;
query_vcto.Close;
freeandnil(query_serv);
freeandnil(query_dados_emp);
freeandnil(query_vcto);
freeandnil(mXml_servico);



result.pok:=true;

end;


function fEmitirBoletoBancario(ParametrosNfce: tParametrosNfce): tRetornoNfce;

var
form_ebol_func2: tFrm_ebol;
query_ped: TQuery;
query_exe: TQuery;

mnomebol: string;
x: integer;
minstrucao01: string;
begin
result.pok:=true;
result.pMensagem:='';
query_exe:=TQuery.create(nil);

query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_ped:=TQuery.create(nil);
query_ped.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_ped.close;
query_ped.sql.clear;
query_ped.sql.add('select P1BANCO,P1CODCLI from CADP01 where '
                 +' P1CHAVE=:CHAVE '
                 +' AND P1LOTSEQ=:LOTSEQ '
                 +' AND P1CODEMP=:CODEMP ');
query_ped.ParamByName('CHAVE').AsInteger:=ParametrosNfce.pChave;
query_ped.ParamByName('LOTSEQ').AsInteger:=ParametrosNfce.pChave_ano;
query_ped.ParamByName('CODEMP').AsInteger:=ParametrosNfce.pcodemp;
try
   query_ped.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_ped,1039,'func2 '+e.Message,'CADEMP');
   result.pok:=false;
   exit;
   end;
   end;
Application.CreateForm(Tfrm_ebol, form_ebol_func2);

While not query_ped.Eof do
   begin
   if flcadbco(1,ParametrosNfce.pcodemp,0,query_ped.fieldbyname('P1BANCO').AsString) then
      begin
      form_ebol_func2.cb_boleto.Checked:=True;
      form_ebol_func2.Tb_Dup.Close;
      form_ebol_func2.Tb_Dup.Sql.Clear;
      form_ebol_func2.Tb_Dup.SQl.Add('Select CRCODEMP,CRDTVCTO,CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRNOSNUM, '
                                    +'       CRDNOSNUM,CRCODDIG,CRCODBAR,CRACEITE,CRESPECIE, '
                                    +'       CRINST01,CRINST02,CRINST03,CRINST04,CRCODBCO, '
                                    +'       CRVALOR,CRDESCF,CRDTDESCF,CRJURD,CRDESCD,'
                                    +'       CRNFACUM,CRCODCLI,CRCODVEN,CRTABPV,CRCODPV '
                                    +' ,CRMULTA,CRQTDDM, CRCODFPGTO,CRID_NEW '
                                    +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO '
                                   +' from caddar, cadfp where CRSTATUS<>9 and fpcodigo=crcodfpgto and fpvinculo=16 '
                                   );
      form_ebol_func2.Tb_Dup.SQl.add(' and  CRCODEMP=0'+Inttostr(ParametrosNfce.pcodemp));
      form_ebol_func2.Tb_Dup.SQL.Add(' and CRNPED=:CHAVE AND CRLOTSEQ_CP=:LOTSEQ '
                                  +' and NVL(CREMIBLQ,0)=0');
      form_ebol_func2.Tb_Dup.SQL.Add(' ORDER BY CRQTDPARC,CRNUMPARC ');

      form_ebol_func2.Tb_Dup.ParamByName('CHAVE').AsInteger:=ParametrosNfce.pChave;
      form_ebol_func2.Tb_Dup.ParamByName('LOTSEQ').AsInteger:=ParametrosNfce.pChave_ano;

      try
         form_ebol_func2.Tb_Dup.Open;
      except on e : exception do
         begin
         ex_erroSql_Novo(form_ebol_func2.Tb_Dup,1068,'func2 '+e.Message,'CADDAR');
         result.pok:=false;
         exit;
         end;
         end;
      if form_ebol_func2.Tb_Dup.IsEmpty then
         begin
         result.pMensagem:=result.pMensagem+'Não encontrado titulo para a chave '+inttostr(ParametrosNfce.pChave)+'/'+inttostr(ParametrosNfce.pChave_ano);
         end
      else
         begin
         minstrucao01:='REFERENTE AO MES DE '+NMes(form_ebol_func2.Tb_DupCRCOMPETENCIA_DTINICIO.AsDateTime)+'/'+formatdatetime('YYYY',form_ebol_func2.Tb_DupCRCOMPETENCIA_DTINICIO.AsDateTime);

         if DM4.Tb_Par01PBOL_PADRAO.Value=0 then
            begin
            form_ebol_func2.fAtualizaNosNum(1, // nao calcula codigo barras
                  0,
                  DM1.Tb_BcoBCIMPPVREP.AsInteger,
                  minstrucao01,
                  DM1.Tb_BcoBCINST02.Value,
                  DM1.Tb_BcoBCINST03.Value,
                  DM1.Tb_BcoBCINST04.Value,
                  0);
            end
         else
            begin
            form_ebol_func2.fAtualizaNosNum(0,
               0,
               DM1.Tb_BcoBCIMPPVREP.AsInteger,
               minstrucao01,
               DM1.Tb_BcoBCINST02.Value,
               DM1.Tb_BcoBCINST03.Value,
               DM1.Tb_BcoBCINST04.Value,
               0);
            end;
         form_ebol_func2.Tb_Dup.First;
         if not form_ebol_func2.Tb_Dup.Eof then
            begin
            if DM4.Tb_Par01PBOL_PADRAO.Value=0 then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add(' select * from CADFP ');
               DM1.Query1.SQL.Add(' where FPCODIGO='+form_ebol_func2.Tb_DupCRCODFPGTO.AsString);
               DM1.Query1.Open;
               if DM1.Query1.FieldByName('FPVINCULO').AsInteger=16 then
                 begin

                 form_ebol_func2.mDadosBoleto.pTipo  :=1;
                 form_ebol_func2.mDadosBoleto.pcodemp:=DM1.Tb_Ped01P1CODEMP.AsInteger;
                 form_ebol_func2.mDadosBoleto.pCodBco:=DM1.Tb_Ped01P1BANCO.AsInteger;
                 form_ebol_func2.mDadosBoleto.pNumIni:=form_ebol_func2.Tb_DupCRNUMERO.AsInteger;
                 form_ebol_func2.mDadosBoleto.pNumFin:=form_ebol_func2.Tb_DupCRNUMERO.AsInteger;
                 form_ebol_func2.mDadosBoleto.pDtIni :=pdatanula;
                 form_ebol_func2.mDadosBoleto.pDtFin :=pdatanula;
                 form_ebol_func2.mDadosBoleto.pParc  :=form_ebol_func2.Tb_DupCRDESD.AsString;
                 form_ebol_func2.mDadosBoleto.pPend  :=true;
                 form_ebol_func2.mDadosBoleto.pChavePed  :=0;
                 form_ebol_func2.mDadosBoleto.pLotSeqPed :=0;

                  form_ebol_func2.femibol(form_ebol_func2.mDadosBoleto);
                  end;
               end
            else
               begin
               if FileExists('\SGE\LOGBAN.JPG') then
                  DeleteFile('\SGE\LOGBAN.JPG');
               form_ebol_func2.Tb_Dup.First;
               if DM4.Tb_Par01PBOL_PADRAO.Value=2 then
                  begin
                  if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                     begin
                     DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     end;
                  if trim(ParametrosNfce.pSalvarPdfPara)<>'' then
                     begin
                     if form_ebol_func2.Tb_Dup.fieldbyname('CRNUMPARC').AsInteger>1 then
                        mnomebol:=fRetiraExtensao(ParametrosNfce.pSalvarPdfPara)+'_'+trim(form_ebol_func2.Tb_DupCRDESD.AsString)+ExtractFileExt(ParametrosNfce.pSalvarPdfPara)
                     else
                        mnomebol:=ParametrosNfce.pSalvarPdfPara;
                     form_ebol_func2.fCarregardadosboletos(1);
{                     Form_EBol_func2.RL_BOLETAS.Prepare;
                     Form_EBol_func2.RL_BOLETAS.PreviewModal;
}
                     Form_EBol_func2.RL_BOLETAS.SaveToFile(mnomebol);
                     end
                  else
                     begin
                     if flcadimp_sys(1,DM1.Tb_Ped01P1CODEMP.AsInteger,0,'BOLETAS_LA') then
                        begin
                        for x:=0 to Printer.printers.Count-1 do
                           begin
                           if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
                              begin
                              RLPrinter.PrinterIndex:=x;
                              break;
                              end
                           end;
                        end;
                     try
                        fTravaTeclado(0); // trava o teclado
                        form_ebol_func2.RL_BOLETAS.PrintDialog:=false;
                        form_ebol_func2.RL_BOLETAS.Print;
                        form_ebol_func2.RL_BOLETAS.PrintDialog:=true;
                        fTravaTeclado(1); // trava o teclado
                     except
                        fTravaTeclado(1); // trava o teclado
                        fmensagem('Erro ao Tentar Imprimir a Boleta Grande!',0,['0'],0);
                        end;
                     end
                  end
               else
                  begin
                  if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                     begin
                     DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     end;
                  if trim(ParametrosNfce.pSalvarPdfPara)<>'' then
                     begin
                     if form_ebol_func2.Tb_Dup.fieldbyname('CRNUMPARC').AsInteger>1 then
                        mnomebol:=fRetiraExtensao(ParametrosNfce.pSalvarPdfPara)+'_'+trim(form_ebol_func2.Tb_DupCRDESD.AsString)+ExtractFileExt(ParametrosNfce.pSalvarPdfPara)
                     else
                        mnomebol:=ParametrosNfce.pSalvarPdfPara;
                     form_ebol_func2.fCarregardadosboletos(1);

{                     Form_EBol_func2.RL_BOLETAS.Prepare;
                     Form_EBol_func2.RL_BOLETAS.PreviewModal;
}
                     Form_EBol_func2.RL_BOLETAS.SaveToFile(mnomebol);

                     end
                  else  if flcadimp_sys(1,DM1.Tb_Ped01P1CODEMP.AsInteger,0,'BOLETAS_LA') then
                     begin
                     for x:=0 to Printer.printers.Count-1 do
                        begin
                        if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
                           begin
                           RLPrinter.PrinterIndex:=x;
                           break;
                           end
                        end;
                     end;
                  try
                     fTravaTeclado(0); // trava o teclado
                     form_ebol_func2.RL_BOLETAS.PrintDialog:=false;
                     form_ebol_func2.RL_BOLETAS.Print;
                     form_ebol_func2.RL_BOLETAS.PrintDialog:=true;
                     fTravaTeclado(1); // trava o teclado
                  except
                     fTravaTeclado(1); // trava o teclado
                     fmensagem('Erro ao Tentar Imprimir a Boleta Bancaria!',0,['0'],0);
                     end;
                  end;
               end;
            end;
         end;
      query_exe.Close;
      query_exe.SQL.Clear;

      query_exe.SQL.Add('Update CADDAR set ');
      query_exe.SQL.Add(' CREMIBLQ=1 ');
      if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
         begin
         query_exe.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ');
         end
      else
         query_exe.SQL.Add(' where CRNUMERO=:CRNUMERO ');
      query_exe.SQL.Add(' and CRDESD=:CRDESD ');
      query_exe.SQL.Add(' and CRDUP =:CRDUP ');
      query_exe.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');
      query_exe.SQL.Add(' and CREMIBLQ<>1');
      form_ebol_func2.Tb_Dup.First;
      While not form_ebol_func2.Tb_Dup.Eof do
         begin
         if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
            query_exe.ParamByName('CRCODEMP').AsFloat:=form_ebol_func2.Tb_DupCRCODEMP.AsFloat;
         query_exe.ParamByName('CRNUMERO').AsFloat   :=form_ebol_func2.Tb_DupCRNUMERO.AsFloat;
         query_exe.ParamByName('CRDESD').AsString    :=form_ebol_func2.Tb_DupCRDESD.AsString;
         query_exe.ParamByName('CRDUP').AsFloat      :=form_ebol_func2.Tb_DupCRDUP.AsFloat;
         query_exe.ParamByName('CRDTEMIS').AsDateTime:=form_ebol_func2.Tb_DupCRDTEMIS.AsDateTime;
         try
            query_exe.ExecSQL;
            fdm1StartCommit;
         except
            query_exe.Sql.sAvetofile(mpastatemp +'sql.TXT');
            end;
         form_ebol_func2.Tb_Dup.Next;
         end;
      end;
   query_ped.Next;
   end;

query_exe.close;
freeandnil(query_exe);

query_ped.close;
freeandnil(query_ped);

freeandnil(form_ebol_func2);
if trim(result.pMensagem)='' then
   result.pok:=true
else
   result.pok:=false;
end;


function fGerarOutrasOpcoesDePagamentos(ParametrosNfce: tParametrosNfce;cds_prazos: TClientDataSet): tRetornoNfce;


var
query_prazos: TQuery;
begin
if cds_prazos.active=false then
   begin
   cds_prazos.createdataSet;
   cds_prazos.open;
   end;
cds_prazos.EmptyDataSet;

query_prazos:=TQuery.Create(nil);
query_prazos.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_prazos.SQL.clear;
query_prazos.sql.add('SELECT P1CHAVE,P1LOTSEQ,P1CODEMP,P1TOTALL,P1CODPV,P1TABPV, PVCODPV,PVCODTIP,PVACTD '
                    +', ROUND(( '
                    +'SUM( '
                    +' ( '
                    +'    (  ( ROUND( (P2PCOTAB*(100+PVACTD)/100 ),2)  *P2QTD)-P2VALDES) '
                    +' *  ROUND( ((100-P1DESC01)/100),2) '
                    +' * ROUND( ((100-P1DESC02)/100),2) '
                    +' * ROUND( ((100-P2DESC1)/100),2) '
                    +' * ROUND( ((100-P2DESC2)/100),2) '
                    +' * ROUND( ((100-P2DESC3)/100),2) '
                    +'))-P1VLRDES),2) AS TOTLIQ '
                    +',(SELECT COUNT(*) FROM CADPV2 WHERE PV2CODPV=PVCODPV AND PV2CODTIP=PVCODTIP) AS QTDPRAZOS '
                    +',PVNOME '
                    +'FROM CADP02,CADP01,CADPV WHERE '
                    +'P1CHAVE=P2CHAVE AND P1LOTSEQ=P2LOTSEQ AND P1CODEMP=P2CODEMP '
                    +'AND PVPERCOPERADORA>0 '
                    +'AND P2CHAVE='+inttostr(ParametrosNfce.pChave)
                    +' and P2LOTSEQ='+inttostr(ParametrosNfce.pChave_ano)
                    +' and P2CODEMP='+InttoStr(ParametrosNfce.pCodemp)
                    +' GROUP BY PVCODPV,PVCODTIP '
                    +' ,P1CHAVE,P1LOTSEQ,P1CODEMP,P1TOTALL,P1CODPV,P1TABPV,PVACTD,P1VLRDES,PVNOME '
                    +' ORDER BY QTDPRAZOS,PVNOME ');
try
   query_prazos.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_prazos,1384,'SGE','CADP01');
   end;
   end;
try
    While not query_prazos.Eof do
       begin
       cds_prazos.Append;
       cds_prazos.fieldbyname('NOMEPLANO').asstring  := query_prazos.fieldbyname('PVNOME').AsString;
       cds_prazos.fieldbyname('TABPV').asstring      := query_prazos.fieldbyname('PVCODTIP').AsString;
       cds_prazos.fieldbyname('CODPV').AsInteger     := query_prazos.fieldbyname('PVCODPV').AsInteger;
       cds_prazos.fieldbyname('P1TABPV').asstring      := query_prazos.fieldbyname('P1TABPV').AsString;
       cds_prazos.fieldbyname('P1CODPV').AsInteger     := query_prazos.fieldbyname('P1CODPV').AsInteger;

       cds_prazos.fieldbyname('TOTALPED').AsFloat    := query_prazos.fieldbyname('P1TOTALL').AsFloat;
       cds_prazos.fieldbyname('TOTLIQ').AsFloat      := query_prazos.fieldbyname('TOTLIQ').AsFloat;
       cds_prazos.fieldbyname('QTDPRAZOS').AsFloat   := query_prazos.fieldbyname('QTDPRAZOS').AsFloat;
       cds_prazos.fieldbyname('VALPARC').AsFloat     := arredonda( (query_prazos.fieldbyname('TOTLIQ').AsFloat /
           iif(query_prazos.fieldbyname('QTDPRAZOS').AsInteger<1,1,query_prazos.fieldbyname('QTDPRAZOS').AsInteger)
              ),2);
       cds_prazos.fieldbyname('PERCACRES').AsFloat   := query_prazos.fieldbyname('PVACTD').AsFloat;
       cds_prazos.post;
       query_prazos.next;
       end;
   result.pok:=true;
except
   result.pok:=false;
   end;
query_prazos.close;
freeandnil(query_prazos);
   


end;


// inicio

function fPedidoEstaBloqueado(ParametrosNfce: tParametrosNfce): tRetornoNfce;


var
  query_nfe: TQuery;
begin
result.pok:=False;
if (ParametrosNfce.pChave>0) then
  begin
  query_nfe := TQuery.Create(nil);
  query_nfe.DatabaseName:='SG_ASSOC';
  query_nfe.Close;
  query_nfe.SQL.Clear;
  query_nfe.SQL.Add('SELECT P1TIPO '
                  +',P1CHAVE '
                  +',P1LOTSEQ '
                  +',min(P1SEPAMB) as P1SEPAMB '
                  +',min(P1NUMCF) as P1NUMCF '
                  +',min(P1ECF_SERIE) as P1ECF_SERIE '
                  +',min(P1DATACF) as P1DATACF '
                  +',min(P1TIPENT) as P1TIPENT '
                  +',min(P1DATHOR_PENT) as P1DATHOR_PENT '
                  +',min(P1ENTREGA_CEP) as P1ENTREGA_CEP '
                  +',min(P1ENTREGA_ENDER) as P1ENTREGA_ENDER '
                  +',min(P1ENTREGA_BAIRRO) as P1ENTREGA_BAIRRO '
                  +',min(P1ENTREGA_CIDADE) as P1ENTREGA_CIDADE '
                  +',min(P1ENTREGA_CODLOC) as P1ENTREGA_CODLOC '
                  +',min(P1ENTREGA_UF) as P1ENTREGA_UF '
                  +',min(P1ENTREGA_OBS) as P1ENTREGA_OBS '
                  +',min(P1NUMNF) as P1NUMNF '
                  +',min(P1DATANF) as P1DATANF '
                  +',min(P1SERIE) as P1SERIE '
                  +',min(P1MODELO) as P1MODELO '
                  +', max( (SELECT CFNOME FROM CADPRO_FILIAL WHERE (CFCODEMP=:CODEMP_MENOR OR CFCODEMP=:CODEMP_MAIOR)  AND CFFILIAL=NVL(P1FILIAL,1))) AS FILIAL '
                  +',min(P1CODEMP) as P1CODEMP '
                  +',max(P1FILIAL) as P1FILIAL '
                  +',max(P1CODVEN) as P1CODVEN '
                  +',max(P1CODTLV) as P1CODTLV '
                  +',max(P1CODCLI) as P1CODCLI '
                  +',max(P1CODUSR) as P1CODUSR '
                  +',max(P1DATASEP) AS P1DATASEP '
                  +',max(P1BANCO) as P1BANCO '
                  +',max(P1BASEN) as P1BASEN '
                  +',max(P1ICMSN) as P1ICMSN '
                  +',max(P1CODPV) as P1CODPV '
                  +',max(P1PVACTD) as P1PVACTD '
                  +',max(P1PVDESCF) as P1PVDESCF '
                  +',max(P1PVDIASDESCF) as P1PVDIASDESCF '
                  +',max(P1PVDDESCF) as P1PVDDESCF '
                  +',max(P1TABPV) as P1TABPV '
                  +',max(P1BASER) as P1BASER '
                  +',max(P1ICMSR) as P1ICMSR '
                  +',max(P1CODTRA) as P1CODTRA '
                  +',max(P1FRETEPC) as P1FRETEPC '
                  +',max(P1QTDVOL) as P1QTDVOL '
                  +',max(P1TPPCO) as P1TPPCO'
                  +',max(P1SITPED) as P1SITPED '
                  +',max(P1CODUSR_ULTEVE) as P1CODUSR_ULTEVE '
                  +',max(P1QTDMAN) as P1QTDMAN '
                  +',max(P1BLOQPEND) as P1BLOQPEND '
                  +',max(P1QTDDECPU) as P1QTDDECPU '
                  +',max(P1TARBAN) as P1TARBAN '
                  +',max(P1DESPACES) as P1DESPACES'
                  +',max(P1VALSEG) as P1VALSEG '
                  +',max(P1VALFRE) as P1VALFRE '
                  +',max(P1DESC01) as P1DESC01 '
                  +',max(P1DESC02) as  P1DESC02 '
                  +',max(P1ETIVOL) as P1ETIVOL '
                  +',max(P1PEDORI1) as P1PEDORI1 '
                  +',max(P1PEDORI2) as P1PEDORI2 '
                  +',max(P1MINUTA) as  P1MINUTA '
                  +', 0 AS P1DESC03 '
                  +',max(P1VLRDES) as P1VLRDES '
                  +',MAX(NVL(P1IPIINA,0)+NVL(P1IPIPOS,0)+NVL(P1IPINEG,0)) AS P1TOTIPI '
                  +',max(P1VLRACRE) as P1VLRACRE '
                  +',max(P1PESOB) as P1PESOB '
                  +',max(P1PESOL) as P1PESOL '
                  +',max(P1DESCFIN) as P1DESCFIN '
                  +',max(P1OBS2) as P1OBS2 '
                  +',max(P1OBS1) as P1OBS1 '
                  +',max(P1OBS3) as P1OBS3 '
                  +',max(P1FORMACE) as P1FORMACE '
                  +',max(P1ESPECIE) as P1ESPECIE '
                  +',max(P1UFPV) as P1UFPV '
                  +',max(P1PLACAV) as P1PLACAV '
                  +',max(P1COMP_ULTEVE) as P1COMP_ULTEVE '
                  +',max(P1DATAP) as P1DATAP '
                  +',max(P1PREVENT) as P1PREVENT '
                  +',max(P1DTHRCHEG) as P1DTHRCHEG '
                  +',max(P1DATHOR_UEVE) as P1DATHOR_UEVE '
                  +',max(P1CODSEP) as P1CODSEP '
                  +',max(P1CODEMB) as P1CODEMB '
                  +',max(P1CODCON) as P1CODCON '
                  +',max(P1CODENT) as P1CODENT '
                  +',max(P1DATCON) as P1DATCON '
                  +',max(P1DATENT) as P1DATENT '
                  +',max(P1DATAEMB) as P1DATAEMB '
                  +',max(P1CANHOTO) as P1CANHOTO '
                  +',sum(P1TOTALL-nvl( (case when NVL(P1NF_IMP,'+Quotedstr('N')+') ='+quotedstr('S')+' then P1ICMSN else 0 end),0)  ) as P1TOTALL '
//                  +',sum(P1TOTALL+nvl(P1ICMSR,0)-nvl( (case when NVL(P1NF_IMP,'+Quotedstr('N')+') ='+quotedstr('S')+' then P1ICMSN else 0 end),0)  ) as P1TOTALL '
                  +',sum(P1TOTALB) as P1TOTALB '
                  +',sum(P1TOTSERLIQ) as P1TOTSERLIQ '
                  +',max(P1NFE_CHACESSO) as P1NFE_CHACESSO '
                  +',max(P1NFE_NPROT) as P1NFE_NPROT '
                  +',max(P1DATANF_SERV) as P1DATANF_SERV '
                  +',max(P1SERIE_SERV) as P1SERIE_SERV '
                  +',max(P1NUMNF_SERV) as P1NUMNF_SERV '
                  +',max(P1NFS_SITUACAO) as P1NFS_SITUACAO '
                  +',max(P1NFS_CHACESSO) as P1NFS_CHACESSO '
                  +',max(P1MODELO_SERV) as P1MODELO_SERV '
                  +',max(P1NFS_NPROT) as P1NFS_NPROT '
                  +',max(P1DATHOR_ULTEVE) as P1DATHOR_ULTEVE '
                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MENOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MENOR '
                  +',(select max(nvl(P1SUBMOD,'+QuotedStr('SSS')+')) FROM CADP01 PED_MENOR where '
                  +'               (P1CODEMP=:CODEMP_MAIOR) '
                  +'          and   P1CHAVE=:CHAVE '
                  +'         and   P1LOTSEQ=:CHAVE_ANO '
                  +'         and   P1ORDEM=:ORDEM ) AS SUBMOD_MAIOR '
                  +' FROM CADP01 where '
                  +'       (P1CODEMP=:CODEMP_MENOR or P1CODEMP=:CODEMP_MAIOR) '
                  +' and   P1CHAVE=:CHAVE '
                  +' and   P1LOTSEQ=:CHAVE_ANO '
                  +' and   P1ORDEM=:ORDEM '
                  +' and   P1STATUS<'+mstatus_excluido+' ');
  query_nfe.sql.Add(' group by P1TIPO,P1CHAVE,P1LOTSEQ ');
  query_nfe.sql.Add(' order by P1CODEMP ');


  if (ParametrosNfce.pCompleto) then
     begin
     if ParametrosNfce.pcodemp>100 then
       query_nfe.ParamByName('CODEMP_MENOR').AsFloat   :=ParametrosNfce.pcodemp-100
     else
       query_nfe.ParamByName('CODEMP_MENOR').AsFloat   :=ParametrosNfce.pcodemp;

     if ParametrosNfce.pcodemp > 100 then
       query_nfe.ParamByName('CODEMP_MAIOR').AsFloat   :=ParametrosNfce.pcodemp
     else
     query_nfe.ParamByName('CODEMP_MAIOR').AsFloat   :=ParametrosNfce.pcodemp+100;
     end
  else
     begin
     query_nfe.ParamByName('CODEMP_MENOR').AsFloat   :=ParametrosNfce.pcodemp;
     query_nfe.ParamByName('CODEMP_MAIOR').AsFloat   :=ParametrosNfce.pcodemp
     end;

  query_nfe.ParamByName('CHAVE').AsFloat    :=ParametrosNfce.pChave;
  query_nfe.ParamByName('CHAVE_ANO').AsFloat:=ParametrosNfce.pChave_ano;
  query_nfe.ParamByName('ORDEM').AsFloat    :=01;


  try
     query_nfe.Open;
  except on e : exception do
     begin
     ex_erroSql_Novo(query_nfe,1622,'SGE','CADPEN');
     end;
     end;



  if not query_nfe.IsEmpty then
     begin
     if ParametrosNfce.pTotall=0 then
        ParametrosNfce.pTotall:=query_nfe.FieldByName('P1TOTALL').AsFloat;
     if ParametrosNfce.pCodcli=0 then
        ParametrosNfce.pCodcli:=query_nfe.FieldByName('P1CODCLI').AsFloat;



     if ((arredonda( (ParametrosNfce.pTotall+ -query_nfe.FieldByName('P1TOTALL').AsFloat),2) =0)
        and (ParametrosNfce.pCodcli=query_nfe.FieldByName('P1CODCLI').AsFloat))  then
 
       begin
       result.pok:=True;
       end;

    if (Query_nfe.FieldByName('P1SITPED').Value = 1)
       and ( (Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
       and (MinutesBetween(Query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
       begin
       mcinst2:=query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
       if query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
          mcinst2:=mcinst2+'Programador(Master)'
       else
          begin
          if flcadusr(0,0,query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString) then
             mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
          end;
       mcinst := 'Pedido em Manutenção no Computador: '+query_nfe.FieldByName('P1COMP_ULTEVE').AsString
               + ' Pelo Usuário: '+mcinst2
               + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);

       Messagedlg(mcinst,mtWarning,[mbOk],0);
       result.pok:=false;

       end;

    end;


  query_nfe.close;
  freeandnil(query_nfe);
  end
else
  begin
  result.pok:=True;
  end;
end;


procedure fEmitirDocOnline(pCodbcoCaixa,pPedCodEmp,pPedNumDup,pPedCodSer:  integer; pPedDtemis: tDatetime);

var

mqtd: integer;
x: integer;
form_ebol_func2: Tfrm_EBol;

begin
mqtd:=0;

flcadpar01(0,pPedCodEmp,'1');
if  (DM4.Tb_Par01PONLINE_DUP.Value=1) and (( (DM4.Tb_Par01PONLINE_DUP_CART.AsInteger=0) and (pCodbcoCaixa=0) )
     or (DM4.Tb_Par01PONLINE_DUP_CART.AsInteger=1) )   then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADVEN','VCODEMP','CRCODEMP','VCODVEN','CRCODVEN');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO','BCCODEMP','CRCODEMP','BCCODBCO','CRCODBCO');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');
   DM2.Tb_Dar.Close;
   DM2.Tb_Dar.SQL.Clear;
   DM2.Tb_Dar.SQL.Add('Select CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRCODCLI,CRVALOR,CRDTEMIS, '
                +'       CRDTVCTO,CRDTPAG,CRDTBX,CRNPED,CRNPED_NIVEL,CRORDEM,CRVALPAG,CRCODVEN,'
                +'        CROBS,CRDESC,CRDEVOL,CRJUROS,CRCODBCO,CRLOTE,CRICMSR,CRDESCF, '
                +'       CRDTDESCF,CRJURD,CREMIDUP,CREMIBLQ,CRVALFRE,CRNOSNUM,CRTIPCOB, '
                +'       CRCODLDR,CRSTATUS,CRTOTNF,CRNFACUM,CRNUMPARC,CRQTDPARC, '
                +'        VNOME,BCBANCO,CRAZAO,CDENOM,CUF,CCIDADE,CBAIRRO,CLOG,CNUM,CCOMPL,'
                +' CFONE01 AS CFONERES,CFAX,CFONE02 AS CFONECOM,CCELULAR, '
                +'       CCIDADEC,CBAIRROC,CENDERC,CUFC,CCEPC,CRTOTCGRU,CRTOTSGRU,'
                +'        CNOMRED,CRDTVCTO-CRDTEMIS AS PRAZO, '
                +'        RAZAO,FANTASIA,CRMULTA, '
                +'       CIDADE,UF,CGC,INSCRICAO, '
                +' CRID_NEW, CRID_PED01_NEW, CRID_LDR_NEW, '
                +'       FONE,FAX,E_MAIL  from CADDAR,CADEMP'+iif(la_tabelas='','',',')+la_tabelas
                +'       '+la_Join
                +'       where CODEMP=0'+inttostr(pPedCodEmp)
                + iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' and CRCODEMP=0'+inttostr(pPedCodEmp))
                +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   DM2.Tb_Dar.SQL.add(' and CRNUMERO=0'+FloatToStr(pPedNumDup));
   DM2.Tb_Dar.SQL.add(' and CRDESD='+chr(39)+iif(pPedCodEmp=0,chr(64+mqtd),intToStr(mqtd))+chr(39));
   DM2.Tb_Dar.SQL.add(' and CRDUP=0');
   DM2.Tb_Dar.SQL.add(' and CREMIDUP=0');
   DM2.Tb_Dar.SQL.add(' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, pPedDtemis)+chr(39));
   DM2.Tb_Dar.Open;
   if not DM2.Tb_Dar.IsEmpty then
      begin
      if DM4.Tb_Par01PDUP_PADRAO.Value=0 then
         FEmiteDP(0,  pPedCodEmp)
      else
         begin
         if Qr_Dup=nil then
            Application.CreateForm(TQr_Dup, Qr_Dup)
         else
            begin
            Qr_Dup.Free;
            Qr_Dup:=nil;
            Application.CreateForm(TQr_Dup, Qr_Dup);
            end;

         Qr_Dup.Endereco.Caption:='Endereço: '+Trim(DM1.Tb_EmpENDERECO.Value)+' '+DM1.Tb_EmpBAIRRO.Value;
         Qr_Dup.CepCidade.Caption:='CEP.: '+DM1.Tb_EmpCEP.Value+' - '+Trim(DM1.Tb_EmpCIDADE.Value)+' - '+DM1.Tb_EmpUF.Value;
         Qr_Dup.CNPJ.Caption     :='C.N.P.J.: '+FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_EmpCGC.Value);
         Qr_Dup.IE.Caption       :='Inscrição Estadual.: '+DM1.Tb_EmpINSCRICAO.Value;
         fSalvarImagem('LOGO5','C:\SGE\LOGO5.JPG');
         fSalvarImagem('LOGO4','C:\SGE\LOGO4.JPG');
         if FileExists(DM1.Tb_PargerPCAMINHO.Value+'LOGO4.jpg') then
           Qr_Dup.QRImage1.Picture.LoadFromFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO4.jpg');
         if FileExists(DM1.Tb_PargerPCAMINHO.Value+'LOGO5.jpg') then
            Qr_Dup.QRImage2.Picture.LoadFromFile(DM1.Tb_PargerPCAMINHO.Value+'LOGO5.jpg');
         Qr_Dup.PrinterSettings.PrinterIndex := -1;
         if flcadimp_sys(1,pPedCodEmp,0,'DUPLIC_LAS') then
            begin
            for x:=0 to Printer.printers.Count-1 do
               begin
               if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
                  begin
                  Qr_Dup.PrinterSettings.PrinterIndex := x;
                  break;
                  end
               end;
            end;
         try
            fTravaTeclado(0); // trava o teclado
            Qr_Dup.Print;
            fTravaTeclado(1); // trava o teclado
         except
            fTravaTeclado(1); // trava o teclado
            fmensagem('Erro ao Tentar Imprimir a Duplicata!',0,['0'],0);
            end;
         Qr_Dup.Free;
         Qr_Dup:=NIL;
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
         DM1.Query2.Params.CreateParam(ftString,'NUMERO',ptInput);
         DM1.Query2.Params.CreateParam(ftString,'DESD',ptInput);
         DM1.Query2.Params.CreateParam(ftString,'DTEMIS',ptInput);
         DM1.Query2.SQL.add('Update CADDAR set CREMIDUP=1 '
            +' where CRCODEMP=:CODEMP '
            +' and   CRNUMERO=:NUMERO '
            +' and   CRDESD  =:DESD '
            +' and   CRDUP   =:DUP '
            +' and   CRDTEMIS=:DTEMIS and CREMIDUP=0');
         DM1.Query2.ParamByName('CODEMP').AsFloat   :=pPedCodEmp;
         DM1.Query2.ParamByName('NUMERO').AsFloat   :=pPedNumDup;
         DM1.Query2.ParamByName('DESD').AsString    :=iif(pPedCodSer=0,chr(64+mqtd),intToStr(mqtd));
         DM1.Query2.ParamByName('DUP').AsFloat      :=0;
         DM1.Query2.ParamByName('DTEMIS').AsDateTime:=pPedDtemis;
         try
            DM1.Query2.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(02,173,'Manped','CADDAR');
            end;
         end;
      DM2.Tb_Dar.Close;
      end;
   end;
if (DM4.Tb_Par01PONLINE_BOL.Value=1) and (pCodbcoCaixa>0) then
   begin
   //nicio
   if flcadbco(1,pPedCodEmp,0,inttostr(pCodbcoCaixa)) then
      begin
      if form_ebol_func2=nil then
         Application.CreateForm(Tfrm_ebol, form_ebol_func2)
      else
         begin
          form_ebol_func2.Free;
         form_ebol_func2:=nil;
         Application.CreateForm(Tfrm_ebol, form_ebol_func2);
         end;
      form_ebol_func2.cb_boleto.Checked:=True;
      flcadbco(1,pPedCodEmp,0,inttostr(pCodbcoCaixa));
      form_ebol_func2.Tb_Dup.Close;
      form_ebol_func2.Tb_Dup.Sql.Clear;
      form_ebol_func2.Tb_Dup.SQl.Add('Select CRCODEMP,CRDTVCTO,CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRNOSNUM, '
                             +'       CRDNOSNUM,CRCODDIG,CRCODBAR,CRACEITE,CRESPECIE, '
                             +'       CRINST01,CRINST02,CRINST03,CRINST04,CRCODBCO, '
                             +'       CRVALOR,CRDESCF,CRDTDESCF,CRJURD,CRDESCD,'
                             +'       CRNFACUM,CRCODCLI,CRCODVEN,CRTABPV,CRCODPV '
                             +' ,CRMULTA,CRQTDDM, CRCODFPGTO '
                             +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO ,CRID_NEW'

                             +' from caddar, cadfp where CRSTATUS<>9 and fpcodigo=crcodfpgto and fpvinculo=16 ');
      if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
         form_ebol_func2.Tb_Dup.SQl.add(' and  CRCODEMP=0'+inttoStr(pPedCodEmp));
      form_ebol_func2.Tb_Dup.SQL.Add(' and CRNUMERO=0'+FloatToStr(pPedNumDup)
                            +' and CRDESD='+chr(39)+iif(pPedCodSer=0,chr(64+mqtd),intToStr(mqtd))+chr(39)
                            +' and CRDUP=0'
                            +' and CREMIBLQ=0');

      form_ebol_func2.Tb_Dup.SQL.add(' and CRDTEMIS='+chr(39)+FormatDatetime(fdt, pPedDtemis)+chr(39)
                            +' Order by CRNUMERO,CRDESD');
  //        form_ebol_func2.Tb_Dup.sql.savetofile(mpastatemp + 'SQL.txt');
      try
         form_ebol_func2.Tb_Dup.Open;
      except
         form_ebol_func2.Tb_Dup.sql.savetofile(mpastatemp + 'SQL.txt');
         end;

      if not form_ebol_func2.Tb_Dup.IsEmpty then
         begin
         if DM4.Tb_Par01PBOL_PADRAO.Value=0 then
            begin
            form_ebol_func2.fAtualizaNosNum(1, // nao calcula codigo barras
               0,
               DM1.Tb_BcoBCIMPPVREP.AsInteger,
               DM1.Tb_BcoBCINST01.Value,
               DM1.Tb_BcoBCINST02.Value,
               DM1.Tb_BcoBCINST03.Value,
               DM1.Tb_BcoBCINST04.Value,
               0);
            end
         else
            begin
            form_ebol_func2.fAtualizaNosNum(0,
               0,
               DM1.Tb_BcoBCIMPPVREP.AsInteger,
               DM1.Tb_BcoBCINST01.Value,
               DM1.Tb_BcoBCINST02.Value,
               DM1.Tb_BcoBCINST03.Value,
               DM1.Tb_BcoBCINST04.Value,
               0);
            end;
         form_ebol_func2.Tb_Dup.First;
         if not form_ebol_func2.Tb_Dup.Eof then
            begin
            if DM4.Tb_Par01PBOL_PADRAO.Value=0 then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add(' select * from CADFP ');
               DM1.Query1.SQL.Add(' where FPCODIGO='+form_ebol_func2.Tb_DupCRCODFPGTO.AsString);
               DM1.Query1.Open;
               if DM1.Query1.FieldByName('FPVINCULO').AsInteger=16 then
                 begin

                 form_ebol_func2.mDadosBoleto.pTipo  :=1;
                 form_ebol_func2.mDadosBoleto.pcodemp:=pPedCodemp;
                 form_ebol_func2.mDadosBoleto.pCodBco:=pCodbcoCaixa;
                 form_ebol_func2.mDadosBoleto.pNumIni:=pPedNumDup;
                 form_ebol_func2.mDadosBoleto.pNumFin:=pPedNumDup;
                 form_ebol_func2.mDadosBoleto.pDtIni :=pdatanula;
                 form_ebol_func2.mDadosBoleto.pDtFin :=pdatanula;
                 form_ebol_func2.mDadosBoleto.pParc  :=iif(pPedCodSer=0,chr(64+mqtd),intToStr(mqtd));
                 form_ebol_func2.mDadosBoleto.pPend  :=true;
                 form_ebol_func2.mDadosBoleto.pChavePed  :=0;
                 form_ebol_func2.mDadosBoleto.pLotSeqPed :=0;

                  form_ebol_func2.femibol(form_ebol_func2.mDadosBoleto);
                  end;
               end
            else
               begin
              if FileExists('\SGE\LOGBAN.JPG') then
                  DeleteFile('\SGE\LOGBAN.JPG');
               form_ebol_func2.Tb_Dup.First;
               if DM4.Tb_Par01PBOL_PADRAO.Value=2 then
                  begin
                  if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                     begin
                     DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     end;
                  if flcadimp_sys(1,pPedCodEmp,0,'BOLETAS_LA') then
                     begin
                     for x:=0 to Printer.printers.Count-1 do
                        begin
                        if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
                           begin
                           RLPrinter.PrinterIndex:=x;
                           break;
                           end
                        end;
                     end;
                  try
                     fTravaTeclado(0); // trava o teclado
                     form_ebol_func2.RL_BOLETAS.PrintDialog:=false;
                     form_ebol_func2.RL_BOLETAS.Print;
                     form_ebol_func2.RL_BOLETAS.PrintDialog:=true;
                     fTravaTeclado(1); // trava o teclado
                  except
                     fTravaTeclado(1); // trava o teclado
                     fmensagem('Erro ao Tentar Imprimir a Boleta Grande!',0,['0'],0);
                     end;
                  end
               else
                  begin
                  if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
                     begin
                     DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     form_ebol_func2.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
                     end;
                  if flcadimp_sys(1,pPedCodEmp,0,'BOLETAS_LA') then
                     begin
                     for x:=0 to Printer.printers.Count-1 do
                        begin
                        if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
                           begin
                           RLPrinter.PrinterIndex:=x;
                           break;
                           end
                        end;
                     end;
                  try
                     fTravaTeclado(0); // trava o teclado
                     form_ebol_func2.RL_BOLETAS.PrintDialog:=false;
                     form_ebol_func2.RL_BOLETAS.Print;
                     form_ebol_func2.RL_BOLETAS.PrintDialog:=true;
                     fTravaTeclado(1); // trava o teclado
                  except
                     fTravaTeclado(1); // trava o teclado
                     fmensagem('Erro ao Tentar Imprimir a Boleta Bancaria!',0,['0'],0);
                     end;
                  end;
               end;
            end;
         end;
      DM1.Query5.Close;
      DM1.Query5.SQL.Clear;
      DM1.Query5.Params.CreateParam(ftString,'CRNUMERO',ptInput);
      DM1.Query5.Params.CreateParam(ftString,'CRDESD',ptInput);
      DM1.Query5.Params.CreateParam(ftString,'CRDUP',ptInput);
      DM1.Query5.Params.CreateParam(ftString,'CRDTEMIS',ptInput);

      DM1.Query5.SQL.Add('Update CADDAR set ');
      DM1.Query5.SQL.Add(' CREMIBLQ=1 ');
      if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
         begin
         DM1.Query5.Params.CreateParam(ftString,'CRCODEMP',ptInput);
         DM1.Query5.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ');
         end
      else
        DM1.Query5.SQL.Add(' where CRNUMERO=:CRNUMERO ');
      DM1.Query5.SQL.Add(' and CRDESD=:CRDESD ');
      DM1.Query5.SQL.Add(' and CRDUP =:CRDUP ');
      DM1.Query5.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');
      DM1.Query5.SQL.Add(' and CREMIBLQ<>1');
      form_ebol_func2.Tb_Dup.First;
      While not form_ebol_func2.Tb_Dup.Eof do
         begin
         if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
            DM1.Query5.ParamByName('CRCODEMP').AsFloat:=form_ebol_func2.Tb_DupCRCODEMP.AsFloat;
         DM1.Query5.ParamByName('CRNUMERO').AsFloat   :=form_ebol_func2.Tb_DupCRNUMERO.AsFloat;
         DM1.Query5.ParamByName('CRDESD').AsString    :=form_ebol_func2.Tb_DupCRDESD.AsString;
         DM1.Query5.ParamByName('CRDUP').AsFloat      :=form_ebol_func2.Tb_DupCRDUP.AsFloat;
         DM1.Query5.ParamByName('CRDTEMIS').AsDateTime:=form_ebol_func2.Tb_DupCRDTEMIS.AsDateTime;
         try
            DM1.Query5.ExecSQL;
            fdm1StartCommit;
          except
             DM1.Query5.Sql.sAvetofile(mpastatemp + 'SQL.TXT');
             end;
         form_ebol_func2.Tb_Dup.Next;
         end;
      form_ebol_func2.Free;
      form_ebol_func2:=nil;
      end;
   end;


end;


end.


