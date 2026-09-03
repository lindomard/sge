unit s_MDFE;

interface
uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,strUtils,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,variants;

type
  TDadosEventos = record
  pCodEve: Integer;
  pId: Integer;
  pTipoEve: String;

  pStatus: integer;

  pStatusMotivo: string;
  pXml: string;
  pDatHorEvento: tDatetime;
  pNProt: String;
  end;



function fGerarXMLMDFE(pId: Integer; out pXMLMDFE: tStringList): boolean;
function fRetornarCorpoSQlMDFE: String;
function fGerarChvMDFESetarNumeroDhEmi(pId: integer; pSerie, pAmbiente: String): Boolean;
function fSetarStatusPara(pId,pStatus: integer): Boolean;

function fGerarXMLMDFEEncerramento(pId,pSeqEve: Integer; pDatHorEnc: tDatetime; out pXMLMDFE: tStringList): boolean;
function fGerarXMLMDFECancelamento(pId,pSeqEve: Integer; pDatHorEnc: tDatetime; pJustificativa: String; out pXMLMDFE: tStringList): boolean;

procedure fGravarEventoXML(pDadosEventos: TDadosEventos);

function fEnviarXML(pServico,pid: Integer; pXml: String): boolean;


var
    mDadosEventos: TDadosEventos;



const
    mProximaMDFE = 'MDFE';
{    mStatusDigitacao = 0;
    mStatusDigitado = 1;
    mStatusEnviando = 2;
    mStatusPendente = 3;
    mStatusEnviado = 4;
    mStatusExcluido = 5;
}
implementation

uses lerarq, Func2, func_bde, Func, S_DM1, func_excecoes, s_Nfe_Aguarde,
  S_Sintegra_Advert;


function fGerarXMLMDFE(pId: Integer; out pXMLMDFE: tStringList): boolean;
var
query_MDFE: TQuery;
query_Carreg: TQuery;
query_Persurso: TQuery;
query_Condutores: TQuery;
query_vlPedagio: TQuery;
Query_CadMunDesc: tQuery;


   procedure pFecharTudo;
   begin
   query_Persurso.close;
   freeandnil(query_Persurso);

   query_Condutores.close;
   freeandnil(query_Condutores);

   query_vlPedagio.close;
   freeandnil(query_VlPedagio);

   Query_CadMunDesc.close;
   freeandnil(Query_CadMunDesc);

   query_MDFE.close;
   freeandnil(query_MDFE);
   query_Carreg.close;
   freeandnil(query_Carreg);

   end;

   function fGerarTagInfMunCarrega: boolean;
   begin
   While not query_Carreg.Eof do
      begin
      pXMLMDFE.Add('<infMunCarrega>');
      pXMLMDFE.Add(fGeraXMLstring(0,'cMunCarrega',query_Carreg.FieldbyName('mc_codloc_ibge').AsString));
      pXMLMDFE.Add(fGeraXMLstring(0,'xMunCarrega',query_Carreg.FieldbyName('lnome').AsString));
      pXMLMDFE.Add('</infMunCarrega>');
      query_Carreg.Next;
      end;
   end;


   function fGerarTaginfPercurso: boolean;
   begin
   query_Persurso.First;
   While not query_Persurso.Eof do
      begin
      pXMLMDFE.Add('<infPercurso>');
      pXMLMDFE.Add(fGeraXMLstring(0,'UFPer',query_Persurso.FieldbyName('ufp_uf').AsString));
      pXMLMDFE.Add('</infPercurso>');
      query_Persurso.Next;
      end;

   end;

   function fGerarTagProp: boolean;
   begin
   if trim(query_MDFE.FieldbyName('MDFE_PROP_NOME').AsString)<>'' then
      begin
      pXMLMDFE.Add('<prop>');
      if fsonumero(query_MDFE.FieldbyName('MDFE_PROP_CNPJ').AsString)>0 then
         pXMLMDFE.Add(fGeraXMLstring(0,'CNPJ',insere(fdeixanum(query_MDFE.FieldbyName('MDFE_PROP_CNPJ').AsString),'0',14)))
      else if fsonumero(query_MDFE.FieldbyName('MDFE_PROP_CPF').AsString)>0 then
         pXMLMDFE.Add(fGeraXMLstring(0,'CPF',insere(fdeixanum(query_MDFE.FieldbyName('MDFE_PROP_CPF').AsString),'0',11)));

      pXMLMDFE.Add(fGeraXMLstring(0,'RNTRC',query_MDFE.FieldbyName('MDFE_PROP_RNTRC').AsString));
      pXMLMDFE.Add(fGeraXMLstring(0,'xNome',query_MDFE.FieldbyName('MDFE_PROP_NOME').AsString));
      pXMLMDFE.Add(fGeraXMLstring(0,'IE',query_MDFE.FieldbyName('MDFE_PROP_IE').AsString));
      pXMLMDFE.Add(fGeraXMLstring(0,'UF',query_MDFE.FieldbyName('MDFE_PROP_UF').AsString));
      pXMLMDFE.Add(fGeraXMLstring(0,'tpProp',query_MDFE.FieldbyName('MDFE_TPPROP').AsString));
      pXMLMDFE.Add('</prop>');
      end;



   result:=true;


   end;

   function fGerarTagCondutor: boolean;
   begin
   Query_Condutores.First;
   While not Query_Condutores.eof do
      begin
      pXMLMDFE.Add('<condutor>');
      pXMLMDFE.Add(fGeraXMLstring(0,'xNome',Query_Condutores.fieldbyName('CC_NOME').AsString));
      pXMLMDFE.Add(fGeraXMLstring(0,'CPF',fdeixanum(Query_Condutores.fieldbyName('CC_CPF').AsString)));
      pXMLMDFE.Add('</condutor>');
      Query_Condutores.Next;
      end;
   end;




   function fGerarTagVlPedagio: boolean;
   begin
   if query_vlPedagio.IsEmpty=false then
      begin
      pXMLMDFE.Add('<valePed >');
      query_vlPedagio.First;
      While not query_vlPedagio.eof do
         begin
         pXMLMDFE.Add('<disp >');
         pXMLMDFE.Add(fGeraXMLstring(0,'CNPJForn',query_vlPedagio.fieldbyName('VP_CNPJ_FORNECEDOR').AsString));
         if fsonumero(query_vlPedagio.fieldbyName('VP_CPF_PAGADOR').AsString)>0 then
             pXMLMDFE.Add(fGeraXMLstring(0,'CPFPg',fdeixanum(query_vlPedagio.fieldbyName('VP_CPF_PAGADOR').AsString)))
         else
             pXMLMDFE.Add(fGeraXMLstring(0,'CNPJPg',fdeixanum(query_vlPedagio.fieldbyName('VP_CNPJ_PAGADOR').AsString)));
         pXMLMDFE.Add(fGeraXMLstring(0,'nCompra',fdeixanum(query_vlPedagio.fieldbyName('VP_NUM_COMPROVANTE').AsString)));
         pXMLMDFE.Add(fGeraXMLReal(2,'vValePed ',query_vlPedagio.fieldbyName('VP_VALOR_VALE').AsFloat));
         pXMLMDFE.Add('</disp >');
         query_vlPedagio.Next;
         end;
      query_vlPedagio.Next;

      end;
   end;


   function fGerarRodo: boolean;
   begin
   pXMLMDFE.Add('<rodo>');
   pXMLMDFE.Add('<infANTT>');
   pXMLMDFE.Add(fGeraXMLstring(0,'RNTRC',query_MDFE.FieldbyName('MDFE_VT_RNTRC').AsString));
   pXMLMDFE.Add('</infANTT>');


   pXMLMDFE.Add('<veicTracao>');
   pXMLMDFE.Add(fGeraXMLstring(0,'placa',query_MDFE.FieldbyName('MDFE_VT_PLACA').AsString));
   if fsonumero(query_MDFE.FieldbyName('MDFE_VT_RENAVAN').AsString)>0 then
      pXMLMDFE.Add(fGeraXMLstring(0,'RENAVAN',query_MDFE.FieldbyName('MDFE_VT_RENAVAN').AsString));
   pXMLMDFE.Add(fGeraXMLstring(0,'tara',query_MDFE.FieldbyName('MDFE_VT_TARA').AsString));

   if fsonumero(query_MDFE.FieldbyName('MDFE_VT_CAPKG').AsString)>0 then
      pXMLMDFE.Add(fGeraXMLstring(0,'capKG',query_MDFE.FieldbyName('MDFE_VT_CAPKG').AsString));

   if fsonumero(query_MDFE.FieldbyName('MDFE_VT_CAPM3').AsString)>0 then
      pXMLMDFE.Add(fGeraXMLstring(0,'capM3',query_MDFE.FieldbyName('MDFE_VT_CAPM3').AsString));

   fGerarTagProp;
   fGerarTagCondutor;

   pXMLMDFE.Add(fGeraXMLstring(0,'tpRod',query_MDFE.FieldbyName('MDFE_VT_TPROD').AsString));
   pXMLMDFE.Add(fGeraXMLstring(0,'tpCar',query_MDFE.FieldbyName('MDFE_VT_TPCAR').AsString));
   pXMLMDFE.Add(fGeraXMLstring(0,'UF',query_MDFE.FieldbyName('MDFE_VT_UF').AsString));
   pXMLMDFE.Add('</veicTracao>');
   if trim(query_MDFE.FieldbyName('MDFE_VT_COD_AG_PORTO').AsString)<>'' then
      pXMLMDFE.Add(fGeraXMLstring(0,'codAgPorto',query_MDFE.FieldbyName('MDFE_VT_COD_AG_PORTO').AsString));
   pXMLMDFE.Add('</rodo>');


   end;

   function fGerarinfUnidTransp: boolean;
   begin
   pXMLMDFE.Add('<infUnidTransp>');
   pXMLMDFE.Add(fGeraXMLstring(0,'tpUnidTransp',query_MDFE.FieldbyName('MDFE_MODAL').AsString));
   pXMLMDFE.Add(fGeraXMLstring(0,'idUnidTransp',query_MDFE.FieldbyName('MDFE_VT_PLACA').AsString));
   pXMLMDFE.Add('</infUnidTransp>');
   end;


   function fGerarTagAutXML: boolean;
   begin
   pXMLMDFE.Add('<autXML>');
   pXMLMDFE.Add(fGeraXMLstring(0,'CNPJ',insere(fdeixanum(DM1.Tb_EmpEMP_AUTXML_CNPJCPF.AsString),'0',14)));
   pXMLMDFE.Add('</autXML>');
   end;



   function fGerarInfMunDescarga: boolean;
   var
   query_desc: TQuery;
   mcodloc_ibge_ant: integer;
   begin
   query_desc:=TQuery.create(nil);
   query_desc.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_desc.SQL.add('SELECT MNF_CHV_NFE,MD_CODLOC_IBGE,LNOME,LUF '
                     +' from MDFE_CADMANIFESTO,MDFE_CADMUNDESC,CADLOC '
                     +' where MNF_ID=:ID AND '
                     +' MD_ID=MNF_ID '
                     +' AND LCODMUN_IBGE=MD_CODLOC_IBGE '
                     +' GROUP BY MNF_CHV_NFE,MD_CODLOC_IBGE,LNOME,LUF '
                     +' ORDER BY MD_CODLOC_IBGE ');
   query_desc.ParamByName('ID').AsInteger := pId;
   try
      query_desc.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_desc,92,'_stru'+e.message,'user');
      end;
      end;
   mcodloc_ibge_ant:= query_desc.fieldbyname('MD_CODLOC_IBGE').AsInteger;
   While (not query_desc.eof) and (mcodloc_ibge_ant=query_desc.fieldbyname('MD_CODLOC_IBGE').AsInteger)do
      begin
      pXMLMDFE.Add('<infMunDescarga>');
      pXMLMDFE.Add(fGeraXMLstring(0,'cMunDescarga',query_desc.fieldbyname('MD_CODLOC_IBGE').AsString));
      pXMLMDFE.Add(fGeraXMLstring(0,'xMunDescarga',query_desc.fieldbyname('LNOME').AsString));
      pXMLMDFE.Add('<infNFe>');
      While (not query_desc.eof) and (mcodloc_ibge_ant=query_desc.fieldbyname('MD_CODLOC_IBGE').AsInteger)do
         begin
         pXMLMDFE.Add(fGeraXMLstring(0,'chNFe',query_desc.fieldbyname('MNF_CHV_NFE').AsString));
         fGerarinfUnidTransp;

         query_desc.Next;
         end;
      pXMLMDFE.Add('</infNFe>');
      pXMLMDFE.Add('</infMunDescarga>');
      query_desc.Next;
      if query_desc.eof then
         mcodloc_ibge_ant:= -1
      else
        mcodloc_ibge_ant:= query_desc.fieldbyname('MD_CODLOC_IBGE').AsInteger;
      end;
   end;

   function fGerarTaginfMDFeSupl: boolean;
   var
   QrCode: String;

   begin

   QrCode := 'https://dfe-portal.svrs.rs.gov.br/mdfe/QRCode?chMDFe='+query_MDFE.FieldbyName('MDFE_CHV_MDFE').AsString+'&amp;tpAmb='+query_MDFE.FieldbyName('MDFE_TPAMB').AsString;
              //https://dfe-portal.svrs.rs.gov.br/mdfe/qrCode

   pXMLMDFE.Add('<infMDFeSupl>');
   pXMLMDFE.Add('<qrCodMDFe>'+QrCode+'</qrCodMDFe>');
   pXMLMDFE.Add('</infMDFeSupl>');
   end;

begin
result:=true;
query_Carreg:=TQuery.create(nil);
query_Carreg.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_Carreg.close;
query_Carreg.sql.clear;
query_Carreg.sql.add('Select mc_id,mc_seq,mc_codloc_ibge '
                    +',max(lnome) as lnome, max(luf) as luf '
                     +' from MDFE_CADMUNCARREG,CADLOC '
                     +' where LCODMUN_IBGE=MC_CODLOC_IBGE '
                     +' and  '
                     +' MC_ID=:ID '
                     +' group by mc_id,mc_seq,mc_codloc_ibge '
                    +' order by MC_SEQ  '
                     );
query_Carreg.ParamByName('ID').AsInteger := pId;
try
   query_Carreg.Open;
except on e : exception do
   ex_erroSql_Novo(query_Carreg,165,'func Erro:'+e.Message ,'MDFE_CADMUNCARREG');
   end;


query_condutores:=TQuery.create(nil);
query_condutores.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_Condutores.SQL.Add('Select * from MDFE_CADCONDUTORES where '
                     +' CC_ID = :ID ');
query_Condutores.ParambyName('ID').AsInteger := pId;

try
   query_Condutores.Open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_condutores,1059,'_stru'+e.message,'user');
   result:=false;
   end;
   end;
//ex_erroSql_Novo(query_condutores,1059,'_stru','user');


query_vlPedagio:=TQuery.create(nil);
query_vlPedagio.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_vlPedagio.SQL.Add('Select * from MDFE_CADVLPEDAGIO where '
                     +' VP_ID = :ID ');
query_vlPedagio.ParambyName('ID').AsInteger := pId;

try
   query_vlPedagio.Open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_vlPedagio,317,'_stru'+e.message,'user');
   result:=false;
   end;
   end;

query_CadMunDesc:=TQuery.create(nil);
query_CadMunDesc.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

Query_CadMunDesc.close;
Query_CadMunDesc.sql.clear;
Query_CadMunDesc.sql.add('Select MDFE_CADMUNDESC.*,lnome,luf '
                     +' from MDFE_CADMUNDESC,CADLOC '
                     +' where LCODMUN_IBGE=MD_CODLOC_IBGE '
                     +' and  '
                     +' MD_ID=:ID order by MD_SEQ ');
Query_CadMunDesc.ParamByName('ID').AsInteger := pId;
try
   Query_CadMunDesc.Open;
except on e : exception do
   ex_erroSql_Novo(Query_CadMunDesc,205,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;



query_Persurso:=TQuery.create(nil);
query_Persurso.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_Persurso.sql.add('SELECT ufp_id,ufp_uf '
                +',max(pnom) as pnom FROM MDFE_CADUFPERCURSO,CADUF '
                +' where puf=ufp_uf '
                +' and UFP_ID=:ID '
                +' group by ufp_id,ufp_uf '
                );
query_Persurso.ParamByName('ID').AsInteger := pid;
query_Persurso.Sql.Add(' order by UFP_UF ');
try
   query_Persurso.Open;
except on e : exception do
   ex_erroSql_Novo(query_Persurso,479,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;
query_MDFE:=tQuery.create(nil);
query_MDFE.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_MDFE.SQL.add(fRetornarCorpoSQlMDFE);
query_MDFE.SQL.add(' and MDFE_ID=:ID ');
query_MDFE.ParamByName('ID').AsInteger:=pId;
try
   query_MDFE.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_mdfe,1772,'_stru'+e.message,'user');
   pfechartudo;
   exit;
   end;
   end;




query_MDFE:=TQuery.create(nil);
query_MDFE.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_MDFE.SQL.add(fRetornarCorpoSQlMDFE);
query_MDFE.SQL.add(' and MDFE_ID=:ID ');
query_MDFE.ParamByName('ID').AsInteger:=pId;
try
   query_MDFE.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_mdfe,1772,'_stru'+e.message,'user');
   pfechartudo;
   exit;
   end;
   end;


pXMLMDFE.Clear;
pXMLMDFE.Add('<MDFe xmlns="http://www.portalfiscal.inf.br/mdfe">');
pXMLMDFE.Add('<infMDFe versao="'+query_MDFE.FieldbyName('MDFE_VERSAO_XML').AsString+'" Id="MDFe'+query_MDFE.FieldbyName('MDFE_CHV_MDFE').AsString+'">');
pXMLMDFE.Add('<ide>');

pXMLMDFE.Add(fGeraXMLstring(0,'cUF',formatfloat('00', fCodigoEstado(DM1.Tb_EmpUF.AsString))));
pXMLMDFE.Add(fGeraXMLstring(0,'tpAmb',query_MDFE.FieldbyName('MDFE_TPAMB').AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'tpEmit',query_MDFE.FieldbyName('MDFE_TPEMIT').AsString));
if valint(query_MDFE.FieldbyName('MDFE_TPTRANSP').AsString)>0 then
   pXMLMDFE.Add(fGeraXMLstring(0,'tpTransp ',query_MDFE.FieldbyName('MDFE_TPTRANSP').AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'mod',query_MDFE.FieldbyName('MDFE_MOD').AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'serie',query_MDFE.FieldbyName('MDFE_SERIE').AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'nMDF',query_MDFE.FieldbyName('MDFE_NUMERO').AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'cMDF',insere(query_MDFE.FieldbyName('MDFE_ID').AsString,'0',08)));
if length(query_MDFE.FieldbyName('MDFE_CHV_MDFE').AsString)>43 then
   pXMLMDFE.Add(fGeraXMLstring(0,'cDV',query_MDFE.FieldbyName('MDFE_CHV_MDFE').AsString[44]));

pXMLMDFE.Add(fGeraXMLstring(0,'modal',query_MDFE.FieldbyName('MDFE_MODAL').AsString));
pXMLMDFE.Add(fGeraXMLDataHoraFuso('dhEmi',query_MDFE.FieldbyName('MDFE_DHEMI').AsDateTime));
pXMLMDFE.Add(fGeraXMLstring(0,'tpEmis',query_MDFE.FieldbyName('MDFE_TPEMIS').AsString));

pXMLMDFE.Add(fGeraXMLstring(0,'procEmi','0'));
pXMLMDFE.Add(fGeraXMLstring(0,'verProc','1.0'));
//pXMLMDFE.Add(fGeraXMLstring(0,'verProc',pversao));
query_Carreg.First;
pXMLMDFE.Add(fGeraXMLstring(0,'UFIni',query_Carreg.FieldbyName('luf').AsString));
query_CadMunDesc.First;
pXMLMDFE.Add(fGeraXMLstring(0,'UFFim',query_CadMunDesc.fieldbyname('luf').AsString));

fGerarTagInfMunCarrega;
fGerarTaginfPercurso;
pXMLMDFE.Add('</ide>');

pXMLMDFE.Add('<emit>');
pXMLMDFE.Add(fGeraXMLstring(0,'CNPJ',Insere(DM1.Tb_EmpCGC.AsString,'0',14)));
pXMLMDFE.Add(fGeraXMLstring(0,'IE',fdeixanum(DM1.Tb_EmpINSCRICAO.AsString)));
pXMLMDFE.Add(fGeraXMLstring(0,'xNome',DM1.Tb_EmpRAZAO.AsString));
if trim(DM1.Tb_EmpFANTASIA.AsString)<>'' then
   pXMLMDFE.Add(fGeraXMLstring(0,'xFant',DM1.Tb_EmpFANTASIA.AsString));

pXMLMDFE.Add('<enderEmit>');
pXMLMDFE.Add(fGeraXMLstring(0,'xLgr',DM1.Tb_EmpENDERECO.AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'nro',DM1.Tb_EmpNUMERO.AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'xBairro',DM1.Tb_EmpBAIRRO.AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'cMun',DM1.Tb_Empcodloc_ibge.AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'xMun',DM1.Tb_EmpCIDADE.AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'CEP',DM1.Tb_EmpCEP.AsString));
pXMLMDFE.Add(fGeraXMLstring(0,'UF',DM1.Tb_EmpUF.AsString));
if fsonumero(DM1.Tb_EmpFONE.asstring)>0 then
   pXMLMDFE.Add(fGeraXMLstring(0,'fone',fdeixanum(DM1.Tb_EmpFONE.AsString)));

if trim(DM1.Tb_EmpE_MAIL.asstring)<>'' then
   pXMLMDFE.Add(fGeraXMLstring(0,'email',DM1.Tb_EmpE_mail.AsString));
pXMLMDFE.Add('</enderEmit>');
pXMLMDFE.Add('</emit>');
pXMLMDFE.Add('<infModal versaoModal="'+query_MDFE.FieldbyName('MDFE_VERSAO_XML').AsString+'">');
fGerarRodo;
fGerarTagVlPedagio;

pXMLMDFE.Add('</infModal>');
pXMLMDFE.Add('<infDoc>');
fGerarInfMunDescarga;
pXMLMDFE.Add('</infDoc>');

pXMLMDFE.Add('<tot>');
pXMLMDFE.Add(fGeraXMLstring(0,'qNFe',query_MDFE.FieldbyName('MDFE_TOT_QNFE').AsString));
pXMLMDFE.Add(fGeraXMLReal(2,'vCarga',query_MDFE.FieldbyName('MDFE_TOT_VCARGA').AsFloat));
pXMLMDFE.Add(fGeraXMLstring(0,'cUnid',query_MDFE.FieldbyName('MDFE_TOT_CUNID').AsString));
pXMLMDFE.Add(fGeraXMLReal(4,'qCarga',query_MDFE.FieldbyName('MDFE_TOT_QCARGA').AsFloat));


pXMLMDFE.Add('</tot>');

fGerarTagAutXML;


pXMLMDFE.Add('</infMDFe>');
fGerarTaginfMDFeSupl;

pXMLMDFE.Add('</MDFe>');



end;



function fRetornarCorpoSQlMDFE: String;
begin
result :=' select mdfe_id'
      +' ,mdfe_vt_rntrc'
      +' ,mdfe_vt_cod_ag_porto'
      +' ,mdfe_vt_cint'
      +' ,mdfe_vt_tpcar'
      +' ,mdfe_vt_placa'
      +' ,mdfe_vt_tara'
      +' ,mdfe_vt_renavan'
      +' ,mdfe_vt_uf'
      +' ,mdfe_vt_tprod'
      +' ,mdfe_vt_capkg'
      +' ,mdfe_vt_capm3'
      +' ,mdfe_prop'
      +' ,mdfe_prop_rntrc'
      +' ,mdfe_prop_tpprop'
      +' ,mdfe_prop_uf'
      +' ,mdfe_prop_cpf'
      +' ,mdfe_prop_ie'
      +' ,mdfe_prop_cnpj'
      +' ,mdfe_prop_nome'
      +' ,mdfe_tpprop'
      +' ,mdfe_tot_qcte'
      +' ,mdfe_tot_qnfe'
      +' ,mdfe_tot_qnf1_1a'
      +' ,case when mdfe_status =0 and '
      +' round(((to_number(SYSDATE - MDFE_DATHORMANIPULACAO) * 1440))) <2  then 1 '
      +' else mdfe_status end as mdfe_status '
      +' ,mdfe_chv_mdfe'
      +' ,mdfe_numero'
      +' ,mdfe_tot_vcarga'
      +' ,mdfe_tot_cunid'
      +' ,mdfe_versao_xml'
      +' ,mdfe_mod'
      +' ,mdfe_tot_qcarga'
      +' ,mdfe_dhemi'
      +' ,mdfe_dhiniviagem'
      +' ,mdfe_emit_uf'
      +' ,mdfe_tptransp'
      +' ,mdfe_modal'
      +' ,mdfe_serie'
      +' ,mdfe_tpemis'
      +' ,mdfe_dhinclusao'
      +' ,mdfe_tpemit'
      +' ,mdfe_codusr_inclusao'
      +' ,mdfe_dh_ueve'
      +' ,mdfe_codusr_ueve'
      +' ,mdfe_tpamb '
      +' ,mdfe_dathormanipulacao '
      +' ,MDFE_ENVIO_NPROT '
      +' ,MDFE_ENVIO_DTHOR '
      +',MDFE_ENC_NPROT '
      +',MDFE_ENC_DTHOR   '
      +',MDFE_EXCLUSAO_NPROT '
      +',MDFE_EXCLUSAO_DTHOR   '
      +' from MDFE_CADMDFE where 1=1 ';

end;



function fGerarChvMDFESetarNumeroDhEmi(pId: integer; pSerie, pAmbiente: String): Boolean;
var
query_atu: TQuery;

cUF: string;
AAMM: String;
CNPJ: String;
cmod: String;
serie: String;
nMDFe: String;

tpEmis: string;
cMDFe: String;

cDV: String;
mchv_MDFE: String;
begin
result:=true;
nMDFE:=FormatFloat('000000000', fBuscareTestarID(mProximaMDFE+pSerie+'_'+pAmbiente));
query_atu:=TQuery.create(nil);
query_atu.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_atu.close;
query_atu.sql.clear;
query_atu.sql.Add('select MDFE_EMIT_UF AS CUF , TO_CHAR(SYSDATE, '+QuotedStr('YYMM')+') as AAMM '
                 +','+quotedstr(insere(DM1.Tb_EmpCGC.asstring,'0',14))+' as CNPJ '
                 +', MDFE_MOD AS MOD '
                 +', MDFE_SERIE AS SERIE '
                 +', '+quotedstr(nMDFE)+' AS nMDFe '
                 +', MDFE_TPEMIS AS tpEmis '
                 +', MDFE_ID AS cMDFE  '
                 +' from MDFE_CADMDFE '
                 +' where MDFE_ID=:ID ');
query_atu.ParamByName('ID').AsInteger := pId;
try
   query_atu.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_atu,443,'_stru'+e.message,'user');
   result:=false;
   end;
   end;



mchv_MDFE := FormatFloat('00', fCodigoEstado(query_atu.fieldbyname('CUF').AsString))     //2
           + query_atu.fieldbyname('AAMM').asString                                        // 4 = 6
           + query_atu.fieldbyname('CNPJ').asString                                        // 14 = 20
           + query_atu.fieldbyname('MOD').asString                                         // 02 = 22
           + insere(query_atu.fieldbyname('SERIE').asString,'0',3)                        // 03 = 25
           + query_atu.fieldbyname('nMDFE').asString                                       // 09 = 34
           + insere(query_atu.fieldbyname('tpEMIS').asString,'0',1)                        // 1  = 35
           + formatfloat('00000000', query_atu.fieldbyname('CMDFE').AsInteger);            // 08 = 43

cDV:=fCalcDigNFEMod11(mchv_MDFE);
mchv_MDFE:=mchv_MDFE+cDV;





query_atu.close;
query_atu.sql.clear;
Query_atu.sql.add('Update MDFE_CADMDFE set MDFE_STATUS=2, MDFE_DHEMI=SYSDATE, MDFE_NUMERO=:NUMERO '
                 +', MDFE_CHV_MDFE=:MDFE_CHV_MDFE '
                 +' where MDFE_ID=:ID ');
query_atu.ParamByName('NUMERO').AsInteger := valint(nMDFE);
query_atu.ParamByName('MDFE_CHV_MDFE').AsString := mchv_MDFE;
query_atu.ParamByName('ID').AsInteger := pId;
try
   query_atu.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_atu,92,'_stru'+e.message,'user');
   result:=false;
   end;
   end;
query_atu.close;
freeandnil(query_atu);


end;



function fSetarStatusPara(pId,pStatus: integer): Boolean;

var
query_atu: TQuery;

begin
result:=true;
query_atu:=TQuery.create(nil);
query_atu.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
Query_atu.sql.add('Update MDFE_CADMDFE set MDFE_STATUS=:STATUS '
                 +' where MDFE_ID=:ID ');
query_atu.ParamByName('STATUS').AsInteger := pStatus;
query_atu.ParamByName('ID').AsInteger := pId;
try
   query_atu.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_atu,92,'_stru'+e.message,'user');
   end;
   end;
query_atu.close;
freeandnil(query_atu);


end;


function fGerarXMLMDFEEncerramento(pId,pSeqEve: Integer; pDatHorEnc: tDatetime; out pXMLMDFE: tStringList): boolean;
var
query_encerramento: TQuery;
query_descarregamento: TQuery;

begin



query_descarregamento:=TQuery.create(nil);
query_descarregamento.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


query_descarregamento.sql.clear;
query_descarregamento.sql.add('Select MDFE_CADMUNDESC.*,lnome,luf '
                     +' from MDFE_CADMUNDESC,CADLOC '
                     +' where LCODMUN_IBGE=MD_CODLOC_IBGE '
                     +' and  '
                     +' MD_ID=:ID order by MD_SEQ DESC ');
query_descarregamento.ParamByName('ID').AsInteger := pId;
try
   query_descarregamento.Open;
except on e : exception do
   ex_erroSql_Novo(query_descarregamento,305,'func Erro:'+e.Message ,'MDFE_CADMUNDESC');
   end;

query_encerramento:=TQuery.create(nil);
query_encerramento.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_encerramento.sql.clear;
query_encerramento.sql.Add('select MDFE_CHV_MDFE, MDFE_TPAMB,MDFE_ENVIO_NPROT from MDFE_CADMDFE '
                           +' where MDFE_ID=:ID ');
query_encerramento.ParamByName('ID').AsInteger:=pId;
try
   query_encerramento.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_encerramento,663,'_stru'+e.message,'user');
   end;
   end;
pXMLMDFE.Clear;
pXMLMDFE.Add('<?xml version="1.0" encoding="UTF-8"?>');
pXMLMDFE.Add('<eventoMDFe xmlns="http://www.portalfiscal.inf.br/mdfe" versao="3.00">');
pXMLMDFE.Add('<infEvento Id="ID'+Nfe_MDFE_evento_encerramento+query_encerramento.fieldbyName('MDFE_CHV_MDFE').AsString+FormatFloat('00,' ,pSeqEve)+'">');
pXMLMDFE.Add(fGeraXMLReal(0,'cOrgao', fCodigoEstado(DM1.Tb_EmpUF.AsString)));
pXMLMDFE.Add(fGeraXMLString(0,'tpAmb', query_encerramento.fieldbyName('MDFE_TPAMB').AsString));
pXMLMDFE.Add(fGeraXMLString(0,'CNPJ', insere(DM1.Tb_empcgc.asstring,'0',14)));
pXMLMDFE.Add(fGeraXMLString(0,'chMDFe', query_encerramento.fieldbyName('MDFE_CHV_MDFE').AsString));
pXMLMDFE.Add(fGeraXMLDataHoraFuso('dhEvento',pDatHorEnc));
pXMLMDFE.Add(fGeraXMLString(0,'tpEvento',Nfe_MDFE_evento_encerramento));
pXMLMDFE.Add(fGeraXMLReal(0,'nSeqEvento', pSeqEve));

pXMLMDFE.Add('<detEvento versaoEvento="3.00">');

//pXMLMDFE.Add('<evEncMDFe xmlns="http://www.portalfiscal.inf.br/mdfe" versao="3.00">');
pXMLMDFE.Add('<evEncMDFe>');
pXMLMDFE.Add('<descEvento>Encerramento</descEvento>');
pXMLMDFE.Add('<nProt>'+query_encerramento.fieldbyname('MDFE_ENVIO_NPROT').AsString+'</nProt>');
pXMLMDFE.Add(fGeraXMLData('dtEnc',pDatHorEnc));
//pXMLMDFE.Add(fGeraXMLDataHoraFuso('dtEnc',pDatHorEnc));
pXMLMDFE.Add(fGeraXMLReal(0,'cUF', fCodigoEstado(query_descarregamento.fieldbyname('LUF').AsString)));
pXMLMDFE.Add(fGeraXMLString(0,'cMun',query_descarregamento.fieldbyname('MD_CODLOC_IBGE').AsString));
pXMLMDFE.Add('</evEncMDFe>');
pXMLMDFE.Add('</detEvento>');
pXMLMDFE.Add('</infEvento>');
pXMLMDFE.Add('</eventoMDFe>');

query_encerramento.close;
query_descarregamento.close;
freeandnil(query_encerramento);
freeandnil(query_descarregamento);
result:=true;

end;




function fGerarXMLMDFECancelamento(pId,pSeqEve: Integer; pDatHorEnc: tDatetime; pJustificativa: String; out pXMLMDFE: tStringList): boolean;
var
query_encerramento: TQuery;

begin



query_encerramento:=TQuery.create(nil);
query_encerramento.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

query_encerramento.sql.clear;
query_encerramento.sql.Add('select MDFE_CHV_MDFE, MDFE_TPAMB,MDFE_ENVIO_NPROT from MDFE_CADMDFE '
                           +' where MDFE_ID=:ID ');
query_encerramento.ParamByName('ID').AsInteger:=pId;
try
   query_encerramento.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_encerramento,663,'_stru'+e.message,'user');
   end;
   end;
pXMLMDFE.Clear;
pXMLMDFE.Add('<?xml version="1.0" encoding="UTF-8"?>');
pXMLMDFE.Add('<eventoMDFe xmlns="http://www.portalfiscal.inf.br/mdfe" versao="3.00">');
pXMLMDFE.Add('<infEvento Id="ID'+Nfe_MDFE_evento_cancelamento+query_encerramento.fieldbyName('MDFE_CHV_MDFE').AsString+FormatFloat('00,' ,pSeqEve)+'">');
pXMLMDFE.Add(fGeraXMLReal(0,'cOrgao', fCodigoEstado(DM1.Tb_EmpUF.AsString)));
pXMLMDFE.Add(fGeraXMLString(0,'tpAmb', query_encerramento.fieldbyName('MDFE_TPAMB').AsString));
pXMLMDFE.Add(fGeraXMLString(0,'CNPJ', insere(DM1.Tb_empcgc.asstring,'0',14)));
pXMLMDFE.Add(fGeraXMLString(0,'chMDFe', query_encerramento.fieldbyName('MDFE_CHV_MDFE').AsString));
pXMLMDFE.Add(fGeraXMLDataHoraFuso('dhEvento',pDatHorEnc));
pXMLMDFE.Add(fGeraXMLString(0,'tpEvento',Nfe_MDFE_evento_cancelamento));
pXMLMDFE.Add(fGeraXMLReal(0,'nSeqEvento', pSeqEve));

pXMLMDFE.Add('<detEvento versaoEvento="3.00">');

pXMLMDFE.Add('<evCancMDFe xmlns="http://www.portalfiscal.inf.br/mdfe">');
pXMLMDFE.Add('<descEvento>Cancelamento</descEvento>');
pXMLMDFE.Add('<nProt>'+query_encerramento.fieldbyname('MDFE_ENVIO_NPROT').AsString+'</nProt>');
pXMLMDFE.Add(fGeraXMLString(0,'xJust',pJustificativa));
pXMLMDFE.Add('</evCancMDFe>');
pXMLMDFE.Add('</detEvento>');
pXMLMDFE.Add('</infEvento>');
pXMLMDFE.Add('</eventoMDFe>');

query_encerramento.close;
freeandnil(query_encerramento);
result:=true;

end;




procedure fGravarEventoXML(pDadosEventos: TDadosEventos);
var
query_eve: tQuery;
mSeq: Integer;
mStatus: String;

    function fAtualizarEventos(pCampoProt,pCampodtHora: String; pStatus: string): boolean;
    begin
    query_eve.close;
    query_eve.sql.clear;
    query_eve.sql.Add('update MDFE_CADMDFE set '+pCampoProt+' = :NPROT '
                    +','+pCampodtHora+' =:DTHOR ');
    if trim(pStatus)<>'' then
        query_eve.sql.add(', MDFE_STATUS='+pStatus);

    query_eve.sql.Add(' where MDFE_ID=:ID ');
    query_eve.ParamByName('NPROT').AsString   := pDadosEventos.pNProt;
    query_eve.ParamByName('DTHOR').AsDateTime := pDadosEventos.pDatHorEvento;
    query_eve.ParamByName('ID').Asinteger      := pDadosEventos.pId;
    try
       query_eve.ExecSQL;
       fdm1StartCommit;
       result:=true;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_eve,2527,'_stru'+e.message,'user');
       result:=true;
       end;
       end;
    end;

begin

mStatus:='';
query_eve:=tQuery.Create(nil);
Query_eve.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_eve.sql.add('select nvl(max(xmlmdfe_seq),0)+1 as seq from MDFE_CADMDFE_XML '
                 +' WHERE xmlmdfe_id=:ID ');
query_eve.ParamByName('ID').Asinteger :=  pDadosEventos.pId;
try
   query_eve.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_eve,2485,'_stru'+e.message,'user');
   exit;
   end;
   end;
mseq:=query_eve.fieldbyname('seq').asinteger;


query_eve.Close;
query_eve.SQL.clear;
query_eve.sql.add('Insert into  MDFE_CADMDFE_XML ('
                 +'xmlmdfe_id '
                 +',xmlmdfe_seq  '
                 +',xmlmdfe_tipo_evento '
                 +',xmlmdfe_codeve '
                 +',xmlmdfe_subtipo_evento  '
                 +',xmlmdfe_xml '
                 +',xmlmdfe_cstatus  '
                 +',xmlmdfe_status_motivo '
                 +',xmlmdfe_nprot '
                 +',xmlmdfe_dathor '
                 +') values ('
                 +' :xmlmdfe_id '
                 +',:xmlmdfe_seq  '
                 +',:xmlmdfe_tipo_evento '
                 +',:xmlmdfe_codeve '
                 +',:xmlmdfe_subtipo_evento  '
                 +',:xmlmdfe_xml '
                 +',:xmlmdfe_cstatus  '
                 +',:xmlmdfe_status_motivo '
                 +',:xmlmdfe_nprot '
                 +',:xmlmdfe_dathor '
                 +') ');

query_eve.ParamByName('xmlmdfe_id').AsInteger            :=pDadosEventos.pId;;
query_eve.ParamByName('xmlmdfe_seq').AsInteger           :=mSeq;
query_eve.ParamByName('xmlmdfe_tipo_evento').AsString   :=pDadosEventos.pTipoEve;
query_eve.ParamByName('xmlmdfe_codeve').AsInteger        :=pDadosEventos.pcodEve;
query_eve.ParamByName('xmlmdfe_subtipo_evento').AsInteger:=2;
query_eve.ParamByName('xmlmdfe_xml').AsString            :=pDadosEventos.pXml;
query_eve.ParamByName('xmlmdfe_cstatus').AsInteger       :=pDadosEventos.pStatus;
query_eve.ParamByName('xmlmdfe_status_motivo').asstring  :=pDadosEventos.pStatusMotivo;
query_eve.ParamByName('xmlmdfe_nprot').AsString          :=pDadosEventos.pNProt;
query_eve.ParamByName('xmlmdfe_dathor').AsDateTime       :=pDadosEventos.pDatHorEvento;
try
   query_eve.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_eve,2549,'_stru'+e.message,'user');
   exit;
   end;
   end;
if pDadosEventos.pCodEve=Nfe_MDFE_envio then
   begin
   if pDadosEventos.pStatus=100 then
       mStatus:='4'
   else
       mStatus:='2';
   fAtualizarEventos('MDFE_ENVIO_NPROT','MDFE_ENVIO_DTHOR',mStatus);
   end
else if pDadosEventos.pCodEve=Nfe_MDFE_evento then
   begin
   if pDadosEventos.pTipoEve='110112' then
      fAtualizarEventos('MDFE_ENC_NPROT','MDFE_ENC_DTHOR',mStatus)
   else
      fAtualizarEventos('MDFE_EXCLUSAO_NPROT','MDFE_EXCLUSAO_DTHOR',mStatus)
   end;
query_eve.close;
freeandnil(query_eve);



end;




function fEnviarXML(pServico,pid: Integer; pXml: String): boolean;
var
form_nfe_aguarde: TFrm_Nfe_Aguarde;
mXmlString: TStrings;
begin
result:=true;
mXmlString:= TStringList.Create;
mXmlString.Add(pXml);

Application.createform(TFrm_Nfe_Aguarde, Form_Nfe_Aguarde);
form_nfe_aguarde.mNFEretorno.mentra_operacao:=pServico;
form_nfe_aguarde.mNFEretorno.mentra_evento   :=pServico;
form_nfe_aguarde.mNFEretorno.mentra_chave   :=0;
form_nfe_aguarde.mNFEretorno.mentra_codemp  :=0;
form_nfe_aguarde.mNFEretorno.mentra_lotseq  :=0;
form_nfe_aguarde.mNFEretorno.mentra_numnf   :=0;
form_nfe_aguarde.mNFEretorno.mentra_serie   :='';
form_nfe_aguarde.mNFEretorno.mentra_modelo  :='';



// lindomar
form_nfe_aguarde.mNFEretorno.mentra_cnpj_emitente    :=DM1.Tb_Empcnpj_masc.AsString;
form_nfe_aguarde.mNFEretorno.mentra_chave_acesso  :='';
form_nfe_aguarde.mNFEretorno.mentra_xml           :=mXmlString.Text;
form_nfe_aguarde.Timer_processar.Enabled := true;
Form_Nfe_Aguarde.ShowModal;
if (form_nfe_aguarde.mNFEretorno.msaida_cstat=0) or (form_nfe_aguarde.mNFEretorno.msaida_num_protocolo='') then
   begin
   Application.CreateForm(TFrm_Sintegra_Advert, Frm_Sintegra_Advert);
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(form_nfe_aguarde.mNFEretorno.msaida_ret_observacao+#13+form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo);

   Frm_Sintegra_Advert.Memo_xml.Lines.Clear;
   Frm_Sintegra_Advert.Memo_xml.Lines.Add(mXmlString.Text);
   Frm_Sintegra_Advert.tsXml.TabVisible:=true;
   Frm_Sintegra_Advert.TabSheet1.TabVisible:=true;
   Frm_Sintegra_Advert.Memo_xmlRet.Lines.Text:=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
   if mDadosEventos.pStatus=611 then
      begin
      mDadosEventos.pXml          :=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
      mDadosEventos.pDatHorEvento :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
      mDadosEventos.pNProt        :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
      fGravarEventoXML(mDadosEventos);
      end;

   Frm_Sintegra_Advert.ShowModal;

   result:=false;
   end
else
   begin
   mnfe_Num_Protolo      :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
   mnfe_nrecibo          :=form_nfe_aguarde.mNFEretorno.msaida_num_recibo;
   mnfe_mensagem_retorno :=form_nfe_aguarde.mNFEretorno.msaida_ret_observacao;
   mnfe_dh_valcertificado:=form_nfe_aguarde.mNFEretorno.msaida_ret_certdigital_venc_dathor;
   mNfe_dathorEve        :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
   mnfe_stat_Prot        :=inttostr(form_nfe_aguarde.mNFEretorno.msaida_cstat);
   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;


   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;

   mnfe_stat_Prot_Desc   :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado;

   mDadosEventos.pId           :=pId;
   mDadosEventos.pCodEve       :=Nfe_MDFE_envio;
   mDadosEventos.pStatus       :=form_nfe_aguarde.mNFEretorno.msaida_cstat;
   mDadosEventos.pStatusMotivo :=form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo;
   if trim(form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado)<>'' then
      mDadosEventos.pXml          :=form_nfe_aguarde.mNFEretorno.msaida_xml_protocolado
   else
      mDadosEventos.pXml          :=form_nfe_aguarde.mNFEretorno.msaida_xml_Resposta;
   mDadosEventos.pDatHorEvento :=form_nfe_aguarde.mNFEretorno.msaida_dathorEve;
   mDadosEventos.pNProt        :=form_nfe_aguarde.mNFEretorno.msaida_num_protocolo;
   fGravarEventoXML(mDadosEventos);
   if mDadosEventos.pStatus=611 then
      begin
      Messagedlg(form_nfe_aguarde.mNFEretorno.msaida_cstat_motivo,mtWarning,[mbOk],0);
      end;

   if trim(mDadosEventos.pNProt)='' then
      result:=false
   else
      result:=true;

   end;
freeandnil(Frm_Sintegra_Advert);
freeandnil(form_nfe_aguarde);
end;


end.
