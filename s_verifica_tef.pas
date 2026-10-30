unit s_verifica_tef;

interface




uses Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,
     Graphics, Controls, StdCtrls, ExtCtrls, checklst,S_DM1,func,S_DM3,S_DM2,RLReport,
     WinTypes, WinProcs,variants, SqlExpr, DBClient,adodb, ComObj
     , OleServer, ComCtrls,RlPrinters,
      Grids,
      WPCTRRich, WPTbar, WPRTEDefs, WPCTRMemo, WPUtil, WPObj_Image,
  WPRTEPaint, RxMemDS, WordXP, DBCtrls, ToolEdit,
  RXDBCtrl, DBGrids,printers,dateutils,s_PlanoCtaEfd, Bcrypt,s_nfce,lerarq,S_DM4,func_emitir_notas;


type
  tDadosPedidoBuscar = record
  pChave: integer;
  pChave_ano: integer;
  pcodemp: integer;
  ptotliq: Real;
  pcodcli: Real;
  pIdNew: integer;
  end;

type
   tVerificaTef = class
   private

   mMensagem: String;

   query_nfe: TQuery;

   function fConcluirEmissaoReemissao(pDadosPedidoBuscar: tDadosPedidoBuscar): boolean;


   public


   mNfce: tNfce;
   mDadosPedidoBuscar: tDadosPedidoBuscar;

   constructor Create();

   function fEmitirReemitirNFCE(pDadosPedidoBuscar: tDadosPedidoBuscar): boolean;
   function fDesfazerOuEstornarRecebimentos(pChavePed: Integer): boolean;

   function fReceberTEF(pChaveId: integer): boolean;



   function  flerdadoscupom(pDadosPedidoBuscar: tDadosPedidoBuscar) : boolean;

   function fAtualizarFormasDepagamentos(pChavePend:integer): boolean;


   end;






implementation

uses func_excecoes, s_Nfe_Aguarde,
  s_impressora_escolher, s_NFCE_Impressao, Func2, ValidarXmlNFe,
  s_validarXmlNfce, ValidarRecebimentosTef, S_DM_CDS, Math, s_venda_paygo;




constructor tVerificaTef.Create();
begin
end;



{
function fValidarXml(parametrosNfce: tParametrosNfce): boolean;
var
query_ped_fp: tQuery;
retornoNfce: tRetornoNfce;
begin

RetornoNfce := fSoGerarXmlNFCE(parametrosNfce);


// lindomar


end;
}


function tVerificaTef.fDesfazerOuEstornarRecebimentos(pChavePed: Integer): boolean;
begin
DM_CDS.fTestarPedidoCab;
if not DM_CDS.cds_receb.Locate('chaveId',mchaveped,[]) then
   begin
   result:=true;
   exit;
   end;
if not (DM_CDS.cds_pedido_cab.State in [dsInsert,dsEdit]) then
    DM_CDS.cds_pedido_cab.Edit;
DM_CDS.cds_pedido_cabfinalizado.Value:=9;
DM_CDS.cds_pedido_cab.Post;




// concluir codigo lindomar
end;



function tVerificaTef.fEmitirReemitirNFCE(pDadosPedidoBuscar: tDadosPedidoBuscar): boolean;
var
peletronica: Boolean;
mChavePend: Integer;

ParametrosNfce: tParametrosNfce;
mValidarRecebimentosTef: tValidarRecebimentosTef;
mQtdTentNfce: integer;

mQtdTentNfceCancelar: boolean;


mResposta :  TResposta;

   procedure pFechartudo;
   begin

   if (query_nfe<>nil) then
       begin
       query_nfe.close;
       freeandnil(query_nfe);
       end;
   end;




// nao existe nfce
// verificar pendencias e ajustar





   function VerificarProcedimentosComPendencias(pChavePend:integer): boolean;
   var
    mDadosPedidoBuscar: tDadosPedidoBuscar;

      procedure fDeletarPedido;
      begin
      DM_CDS.fTestarReceb;
      if DM_CDS.cds_receb.Locate('chave_id_cab',pChavePend,[]) then
         begin
         while (not DM_CDS.cds_receb.eof) and (DM_CDS.cds_recebchave_id_cab.AsInteger=pChavePend) do
            begin
            DM_CDS.cds_receb.Delete;
            end;
         end;

      DM_CDS.fTestarPedidoFormas;

      if DM_CDS.cds_pedido_formas.Locate('chave_id_cab',pChavePend,[]) then
         begin
         while (not DM_CDS.cds_pedido_formas.eof) and (DM_CDS.cds_pedido_formaschave_id_cab.AsInteger=pChavePend) do
            begin
            DM_CDS.cds_pedido_formas.Delete;
            end;
         end;
      end;

      procedure fPreencherChaveDoPedido;
      var
      query_ped01: tQuery;
      begin
      query_ped01:=tQuery.Create(nil);
      query_ped01.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
      query_ped01.sql.add('SELECT P1CHAVE,P1LOTSEQ,P1CODEMP,P1TOTALL,P1CODCLI FROM CADP01 WHERE P1ID_NEW='+IntToStr(pChavePend));
      try
         query_ped01.open;
         if query_ped01.IsEmpty=false then
            begin
            mDadosPedidoBuscar.pChave    :=query_ped01.fieldbyname('P1CHAVE').AsInteger;
            mDadosPedidoBuscar.pChave_ano:=query_ped01.fieldbyname('P1LOTSEQ').AsInteger;
            mDadosPedidoBuscar.pcodemp   :=query_ped01.fieldbyname('P1CODEMP').AsInteger;
            mDadosPedidoBuscar.ptotliq   :=query_ped01.fieldbyname('P1TOTALL').AsInteger;
            mDadosPedidoBuscar.pcodcli   :=query_ped01.fieldbyname('P1CODCLI').AsFloat;
            end;
      except on e : exception do
         begin
         ex_erroSql_Novo(query_ped01,202,'SGE','CADP01');
         end;
         end;
      query_ped01.Close;
      FreeAndNil(query_ped01);

      end;

   begin
   if (pChavePend=0) then
       begin
       result:=true;
       exit;
       end;

   DM_CDS.fTestarPedidoCab;
   if not (DM_CDS.cds_pedido_cab.Locate('chaveId',pChavePend,[])) then
      result:=true
   else
      begin
      if (DM_CDS.cds_pedido_caberroaoconcluir.AsInteger=1)  then
         result:=true
      else if (DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat=0) then
         begin
         fDeletarPedido;
         DM_CDS.cds_pedido_cab.Delete;
         end
      else if (DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat>0) AND
              (RoundTo(DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat,-2) = RoundTo(DM_CDS.cds_pedido_cabvalor_tef.AsFloat,-2)) then
         begin
         fAtualizarFormasDepagamentos(pChavePend);
         fPreencherChaveDoPedido;
         if not (DM_CDS.cds_pedido_cab.State in [dsInsert,dsEdit]) then
             DM_CDS.cds_pedido_cab.Edit;
         DM_CDS.cds_pedido_cabfinalizado.Value:=1;
         DM_CDS.cds_pedido_cab.Post;

         if not fConcluirEmissaoReemissao(mDadosPedidoBuscar) then
            begin
            fDesfazerOuEstornarRecebimentos(mChavePend);
            end;

         end;


      end;

   end;

// verificar pendencias e ajustar

begin
result:=true;


if query_nfe=nil then
   begin
   query_nfe:=TQuery.Create(nil);
   end;
query_nfe.close;
query_nfe.sql.clear;
query_nfe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

if not fLerdadoscupom(pDadosPedidoBuscar) then
   begin
   pFechartudo;
   exit;
   end;


if ((query_nfe.FieldByName('P1CUPOM').Value>0) and
   (query_nfe.FieldByName('P1NFCE_NUMERO').Asfloat>0) and
   (
    (fsonumero(query_nfe.FieldByName('P1NFCE_NPROT').Asstring)>0 )
    or (query_nfe.FieldByName('P1NFCE_TPEMIS').AsInteger=9) ))
     then
    begin
    end
else
   begin
   if mTipoTef<>-1 then
      begin
      mValidarRecebimentosTef:=tValidarRecebimentosTef.create;

      mQtdTentNfce:=0;
      mQtdTentNfceCancelar :=false;

      while mQtdTentNfce<5 do
         begin
         mResposta := mValidarRecebimentosTef.fVerificarTransacaoPendente(pDadosPedidoBuscar.pIdNew);
         if mResposta.pChaveJaExistente=0 then
            begin
            break;
            end;
         if not VerificarProcedimentosComPendencias(mChavePend) then
            begin
            mQtdTentNfceCancelar:=true;
            result:=false;
            exit;
            end;
         if (mChavePend=pDadosPedidoBuscar.pIdNew) then
            begin
            mQtdTentNfceCancelar:=true;
            result:=true;
            break;
            end;
         mQtdTentNfce:=mQtdTentNfce+1;
         end;

      if (mQtdTentNfceCancelar=true) then
         begin
         exit;
         end;
      if DM_CDS.cds_pedido_cab.Locate('chaveId',mChavePend,[]) then
         begin
         if not (DM_CDS.cds_pedido_cab.State in [dsInsert,dsEdit]) then
             DM_CDS.cds_pedido_cab.Edit;
         DM_CDS.cds_pedido_cabfinalizado.Value:=1;
         DM_CDS.cds_pedido_cab.Post;
         fAtualizarFormasDepagamentos(mChavePend);

         end;
      end;
   end;

if not fConcluirEmissaoReemissao(pDadosPedidoBuscar) then
   begin
   // verificar rotina para tentar emitir em contigencia ou algo parecido
//   lindomar
   fDesfazerOuEstornarRecebimentos(pDadosPedidoBuscar.pIdNew);
   end;


pfechartudo;




end;


// ****


// receber cartoes de creditos/debito e pix

function tVerificaTef.fReceberTEF(pChaveId: integer): boolean;
var
mQtdTent: integer;
begin


if Frm_Venda_PayGo=nil then
   begin
   Application.CreateForm(TFrm_Venda_PayGo, Frm_Venda_PayGo);
   end;

result:=false;
mQtdTent:=0;
while mQtdTent<5 do
   begin
   Frm_Venda_PayGo.mChaveIdCab := pChaveId;
   if not DM_CDS.cds_pedido_cab.Locate('chaveId',pChaveId, []) then
      begin
      MessageDlg('Chave do Pedido '+inttoStr(pChaveId)+' não encontrada!',mtWarning,[mbOk],0);
      exit;
      end;


   if not DM_CDS.cds_pedido_formas.Locate('chave_id_cab',pChaveId, []) then
      begin
      MessageDlg('Chave do Pedido Formas'+inttoStr(pChaveId)+' não encontrada!',mtWarning,[mbOk],0);
      exit;
      end;


//   Frm_Venda_PayGo.fTotalizarFpgto;


   if RoundTo(DM_CDS.cds_pedido_cabvalor_tef.AsFloat,-2)=RoundTo(DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat,-2) then
      begin
      if Application.MessageBox('Cartões ja aprovados, quer entrar mesmo assim na tela do tef?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
         begin
         fAtualizarFormasDepagamentos(pChaveId);
         result:=true;
         exit;
         end;
      end;


   Frm_Venda_PayGo.ShowModal;
   if RoundTo(DM_CDS.cds_pedido_cabvalor_tef.AsFloat,-2)=RoundTo(DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat,-2) then
      begin
      fAtualizarFormasDepagamentos(pChaveId);

      result:=true;
      exit;
      end;
   if (frm_venda_paygo.mCanceladoPeloUsuario=true) then
      begin
      exit;
      end;

   mQtdTent:=mQtdTent+1;
   end;


end;

// receber cartoes de creditos/debito e pix



function tVerificaTef.fConcluirEmissaoReemissao(pDadosPedidoBuscar: tDadosPedidoBuscar): boolean;
var
mDadosNFCEChvAcesso: tDadosNFCEChvAcesso;
peletronica: Boolean;
mNfceVT: tNfce;
ParametrosNfce: tParametrosNfce;

    function fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
    // ptipo=0-libera
    //       1-bloqueio

    var
    Query1: TQuery;
    begin
    if pDadosPedidoBuscar.pchave>0  then
       begin
       Query1:=TQuery.Create(nil);
       Query1.DatabaseName:='SG_ASSOC';
       Query1.Close;
       Query1.SQL.Clear;
       Query1.SQL.Add('Update CADP01 set P1SITPED=:SITUACAO, P1QTDMAN=P1QTDMAN + 1  '
                                 +' where (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                                 +' and   P1CHAVE=:CHAVE '
                                 +' and   P1LOTSEQ=:CHAVE_ANO ');
    //                             +' and   P1SITPED<>9 ' );
       Query1.ParamByName('SITUACAO').AsInteger:=ptipo;
       Query1.ParamByName('CODEMP').AsInteger:=pDadosPedidoBuscar.pcodemp;
       if pDadosPedidoBuscar.pcodemp>100 then
          Query1.ParamByName('CODEMP_FILIAL').AsInteger:=pDadosPedidoBuscar.pCodEmp-100
       else
          Query1.ParamByName('CODEMP_FILIAL').AsInteger:=pDadosPedidoBuscar.pCodEmp+100;

       Query1.ParamByName('CHAVE').AsInteger:=pDadosPedidoBuscar.pChave;
       Query1.ParamByName('CHAVE_ANO').AsInteger:=pDadosPedidoBuscar.pChave_ano;

       try
          Query1.ExecSQL;
          fDM1StartCommit;
       except
             begin
             query1.close;

    //         ex_erroSql_Novo(Query1,7472,'_lerarq','adp01_pre');
             end;
          end;
       query1.close;

       FreeAndNil(query1);
       end;
    result:=true;
    end;

{
    function fValidarXml: boolean;
    begin
    result:=true;
    fAtualizarVencimentoMenorQueEmissao(pDadosPedidoBuscar.pChave,pDadosPedidoBuscar.pchave_ano,pDadosPedidoBuscar.pCodEmp,date);
    if (query_nfe.FieldByName('P1CUPOM').Value>0) and
       (query_nfe.FieldByName('P1NFCE_NUMERO').Asfloat>0) and
       (fsonumero(query_nfe.FieldByName('P1NFCE_NPROT').Asstring)>0  )  then
       begin
       end
    else
       begin
       mDadosNFCEChvAcesso.pStatusPed:=-1;
       mDadosNFCEChvAcesso.p1Cupom   :=1;

       mDadosNFCEChvAcesso.pSomenteTeste  := true;

       mDadosNFCEChvAcesso.pServidor  := mendip_Servidor_nfe_ativo;
       mDadosNFCEChvAcesso.pNumdoc   :=query_nfe.FieldByName('P1NFCE_NUMERO').AsInteger;


       mDadosNFCEChvAcesso.pTpEmis:=9;
       mDadosNFCEChvAcesso.pContigencia_xJust := 'Somente para Validar o xml';
       mDadosNFCEChvAcesso.pContigencia_DH := date;


       mDadosNFCEChvAcesso:=mNfceVT.fBuscareSetarDadosNFCE(mDadosNFCEChvAcesso);

       mNfceVT.mParamNFCeEnvio.pChave := pDadosPedidoBuscar.pChave;
       mNfceVT.mParamNFCeEnvio.pChave_ano := pDadosPedidoBuscar.pchave_ano;
       mNfceVT.mParamNFCeEnvio.pCodemp := pDadosPedidoBuscar.pcodemp;

       mNfceVT.mParamNFCeRetorno:=mNfceVT.fGerarXMLNFCE(mNfceVT.mParamNFCeEnvio);
//       mNfceVT.mParamNFCeRetorno.pXmlNFCe.SaveToFile('c:\sge\xmlnfce001.xml');
       mDadosNFCEChvAcesso.pXml:=mNfceVT.mParamNFCeRetorno.pXmlNFCe.Text;
       // lindomar validarxml
       //mDadosNFCEChvAcesso.pServico:=NFCe_Autorizacao_enviar;
//       mDadosNFCEChvAcesso.pServico:=Nfce_AssinarEValidar;
         mDadosNFCEChvAcesso.pServico:=NFCe_Autorizacao_assinar;

//         mDadosNFCEChvAcesso.pServico:=22;
       result:= fVEnviarXMLParaValidar(mDadosNFCEChvAcesso);

       mDadosNFCEChvAcesso.pSomenteTeste  := false;

       mNfceVT.fVoltarPedidoComoPendente(mDadosNFCEChvAcesso);

//       fgeraLindomar



       end;

    end;
 }


   procedure pFechartudo;
   begin

   query_nfe.close;

   freeandnil(query_nfe);
   if mNfceVT<>nil then
      FreeAndNil(mNfceVT);
   end;



   function  fExisteXML: boolean;
   var
   query_eve: tQuery;
   begin

   query_eve:=tQuery.create(nil);
   query_eve.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_eve.sql.add('SELECT * FROM CADNS_NFEEVE '
                    +' WHERE NOT NSE_XML_EVENTO IS NULL '
                    +' and NSE_CODEMP=:CODEMP '
                    +' and NSE_CHAVEP=:CHAVE ');
   Query_eve.ParamByName('CODEMP').AsInteger:=pDadosPedidoBuscar.pcodemp;
   Query_eve.ParamByName('CHAVE').AsInteger:=pDadosPedidoBuscar.pchave;
   try
      query_eve.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_eve,34154,'func Erro:'+e.Message ,'CADNS_NFEEVE');
      exit;
      end;
      end;


   if query_eve.IsEmpty then
      begin
      result:=false;
      exit;
      end
   else
      Result:=true;
   query_eve.close;
   freeandnil(query_eve);
   end;


   function fLiberadoParaEmissao: boolean;
   begin
   if query_nfe.fieldbyname('P1TIPO').asinteger=0 then
      begin
      MessageDlg('Pedido é Orcamento, invalido!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   if (query_nfe.fieldbyname('P1NFCE_NUMERO').asinteger>0) and
      (fsonumero(query_nfe.fieldbyname('P1NFCE_NPROT').asString)>0)  then
      begin
      MessageDlg('Possui nfce, invalido!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;


   if (query_nfe.FieldByName('P1SITPED').Value = 1)
      and ( (query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime>pdatanula)
      and (MinutesBetween(query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime,now)<2)) then
      begin
      mcinst2:=query_nfe.FieldByName('P1CODUSR_ULTEVE').AsString+' - ';
      if query_nfe.FieldByName('P1CODUSR_ULTEVE').AsInteger=1111 then
         mcinst2:=mcinst2+'Programador(Master)'
      else
         begin
         if flcadusr(0,0,query_nfe.FieldByName('P1CODUSR').AsString) then
            mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
         end;
      mcinst := 'Pedido em Manutençao no Computador: '+query_nfe.FieldByName('P1COMP_ULTEVE').AsString
              + ' Pelo Usuário: '+mcinst2
              + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', query_nfe.FieldByName('P1DATHOR_ULTEVE').AsDateTime);
      fMensagem(mcinst,0,['0'],0);
      result:=false;
      exit;
      end;
   result:=true;
   end;

// nao existe nfce

   function fExisteFormasTef: boolean;
   var
      query_fpgto: tQuery;
   begin

   result:=false;
   query_fpgto:=TQuery.create(nil);
   query_fpgto.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   if mTipoTef=1 then
      begin
      query_fpgto.SQL.ADD('SELECT sum(case when PFPVINCULO IN ('+inttostr(mCartaoCreditoPos)+','+inttostr(mCartaoDebitoPos)+','+inttostr(mPixPos)+') THEN PFPVALOR ELSE 0 END) as total ');

      end
   else
      begin
      query_fpgto.SQL.ADD('SELECT sum(case when PFPVINCULO IN ('+inttostr(mCartaoCreditoTef)+','+inttostr(mCartaoDebitoTef)+','+inttostr(mPixTef)+') THEN PFPVALOR ELSE 0 END) as total ');
      end;
   query_fpgto.SQL.ADD('  FROM CADPFP  WHERE PFPID_PED01_NEW ='+intToStr(pDadosPedidoBuscar.pIdNew));

   try
      query_fpgto.open;
      result:=query_fpgto.fields[0].asfloat>0;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_fpgto,111,'SGE','CADPFP');
      result:=false;
      end;
      end;
   query_fpgto.close;
   freeandnil(query_fpgto);

   end;


begin



result:=true;

mNfceVT :=tNfce.create;
if fExisteFormasTef then
   begin
   if not fReceberTEF(pDadosPedidoBuscar.pIdNew) then
      begin
      result:=false;
      exit;
      end;
   end;

if not flfilpad(-65,'_NFCE65PADRAO','') then
   begin
   MessageDlg('Não existe uma configuração padrao para nfce para confiurar->'
             +' sistema->parametros->notas/duplicatas->nota fiscal consumidor modelo 65->marque padrao',mtWarning,[mbOk],0);
   exit;
   end;


mDadosNFCEChvAcesso.pTpEmis:=1;
mDadosNFCEChvAcesso.pSerieDoc:=copy(DM4.Tb_FilPad2FPVALOR.AsString,1,3);
mDadosNFCEChvAcesso.pTpAmb:=valint(copy(DM4.Tb_FilPad2FPVALOR.AsString,4,1));




ParametrosNfce.pChave := pDadosPedidoBuscar.pchave;
ParametrosNfce.pChave_ano := pDadosPedidoBuscar.pChave_ano;
ParametrosNfce.pCodemp := pDadosPedidoBuscar.pcodemp;
ParametrosNfce.pTotall := pDadosPedidoBuscar.ptotliq;
ParametrosNfce.pCodcli := pDadosPedidoBuscar.pcodcli;
if not fValida_Pedido(ParametrosNfce).pOk then
  begin
  fmensagem(' Esse pedido foi alterado em outra estação.'+#13
           +' Por favor re-localizar o mesmo.',0,['0'],0);
  result:=false;
  exit;
  end;



if query_nfe=nil then
   begin
   query_nfe:=TQuery.Create(nil);
   end;
query_nfe.close;
query_nfe.sql.clear;
query_nfe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

if not fLerdadoscupom(pDadosPedidoBuscar) then
   begin
   pFechartudo;
   exit;
   end;
mMensagem:='';
if query_nfe.fieldbyname('P1TIPO').AsInteger <> 1 then
   begin
   MessageDlg('Tipo de Pedido '+query_nfe.fieldbyname('P1TIPO').AsString
             +' - '+tab_tped_mov[query_nfe.fieldbyname('P1TIPO').Asinteger,00]
             +' é invalido para emissão!',mtWarning,[mbOk],0);
   pfechartudo;
   exit;
   end;


result:=true;



mDadosNFCEChvAcesso.pChaveAno:=pDadosPedidoBuscar.pchave_ano;
mDadosNFCEChvAcesso.pChave   :=pDadosPedidoBuscar.pchave;
mDadosNFCEChvAcesso.pCodEmp  :=pDadosPedidoBuscar.pcodemp;
mDadosNFCEChvAcesso.P1codcai :=codcai;



if ((query_nfe.FieldByName('P1CUPOM').Value>0) and
   (query_nfe.FieldByName('P1NFCE_NUMERO').Asfloat>0) and
   (
    (fsonumero(query_nfe.FieldByName('P1NFCE_NPROT').Asstring)>0 )
    or (query_nfe.FieldByName('P1NFCE_TPEMIS').AsInteger=9) ))
    and (fExisteXML)

      then
   begin
   if fConfirmaEmissaoNFCE(pDadosPedidoBuscar.pcodcli,'Confirma a reemissao do cupom Fiscal Valor '+formatfloat(mcasas, pDadosPedidoBuscar.ptotliq)+'?') then
      begin
      mNfceVT.fReemitirNFCE(mDadosNFCEChvAcesso);
      exit;
      end
   else
      begin
      pfechartudo;
      exit;
      end;
   end
else
   begin
   if fLiberadoParaEmissao then
      begin

{
      if (fsonumero(query_nfe.FieldByName('P1NFCE_NPROT').Asstring)=0  )  then
         begin
         if not fValidarXml then
            begin
            MessageDlg('Xml com Problemas Verificar Antes!',mtWarning,[mbOk],0);
            fBloqueiaLiberaPedido(0);
            exit;
            end;
         end;
 }
      fBloqueiaLiberaPedido(1);
      if not fConfirmaEmissaoNFCE(pDadosPedidoBuscar.pcodcli,'Confirma a Emissao do cupom Fiscal Valor '+formatfloat(mcasas, pDadosPedidoBuscar.ptotliq)+'?') then
         begin
         fBloqueiaLiberaPedido(0);
         exit;
         end;
      end
   else
      begin
      pFechartudo;
      exit;
      end;

   end;

if not fLerdadoscupom(pDadosPedidoBuscar) then
   begin
   pFechartudo;
   exit;
   end;
fAtualizarVencimentoMenorQueEmissao(pDadosPedidoBuscar.pChave,pDadosPedidoBuscar.pchave_ano,pDadosPedidoBuscar.pCodEmp,date);

if (query_nfe.FieldByName('P1CUPOM').Value>0) and
   (query_nfe.FieldByName('P1NFCE_NUMERO').Asfloat>0) and
   (fsonumero(query_nfe.FieldByName('P1NFCE_NPROT').Asstring)>0  )  then
   begin
   mNfceVT.fReemitirNFCE(mDadosNFCEChvAcesso);
   pFechartudo;
   exit;
   end;


mDadosNFCEChvAcesso.pStatusPed:=-1;
mDadosNFCEChvAcesso.p1Cupom   :=1;

mDadosNFCEChvAcesso.pNumdoc   :=query_nfe.FieldByName('P1NFCE_NUMERO').AsInteger;

mDadosNFCEChvAcesso:=mNfceVT.fBuscareSetarDadosNFCE(mDadosNFCEChvAcesso);

mNfceVT.mParamNFCeEnvio.pChave := pDadosPedidoBuscar.pChave;
mNfceVT.mParamNFCeEnvio.pChave_ano := pDadosPedidoBuscar.pchave_ano;
mNfceVT.mParamNFCeEnvio.pCodemp := pDadosPedidoBuscar.pcodemp;

mNfceVT.mParamNFCeRetorno:=mNfceVT.fGerarXMLNFCE(mNfceVT.mParamNFCeEnvio);
mDadosNFCEChvAcesso.pXml:=mNfceVT.mParamNFCeRetorno.pXmlNFCe.Text;


mDadosNFCEChvAcesso.pServico:=NFe_Autorizacao;


mDadosNFCEChvAcesso:=mNfceVT.fEnviarXMLNFCE(mDadosNFCEChvAcesso);
// LINDOMAR

if TRIM(mDadosNFCEChvAcesso.pXml_Cliente)='' then
   begin
   fBloqueiaLiberaPedido(0);
   pFechartudo;
   exit;
   end;

mDadosNFCEChvAcesso.pImpressora:=fRetornaImpressoraOnline('NFCE');
if mDadosNFCEChvAcesso.pImpressora='' then
   begin
   Application.createform(Tfrm_impressora_escolher, frm_impressora_escolher);
   frm_impressora_escolher.showmodal;
   mDadosNFCEChvAcesso.pImpressora:=frm_impressora_escolher.mimpressora_selecionada;
   freeandnil(frm_impressora_escolher);
   end;
IF mDadosNFCEChvAcesso.pImpressora<>'' then
   begin
   Application.createform(Tfrm_nfce_impressao, frm_nfce_impressao);

   Frm_NFCE_Impressao.fLerDadosDoXML(mDadosNFCEChvAcesso);
   Frm_NFCE_Impressao.fImprimirGeral(mDadosNFCEChvAcesso);

//   Frm_NFCE_Impressao.fImprimirNFCE(mDadosNFCEChvAcesso);
   freeandnil(Frm_NFCE_Impressao);
   if DM1.Tb_ParGerPLSEPCUPOM.Value>0 then
      begin


      FPedEmiteNf(0, // pvisualiza
               3, //ptipodoc
               0, //ptpemis
               pDadosPedidoBuscar.pchave_ano,
               pDadosPedidoBuscar.pchave,
               0,
               pDadosPedidoBuscar.pcodemp,
               0, //ptipopar
               1
               ,false // envio de email
               ,false, //pvalidarxml
                false,
                1 // qtd vidaas
                ,0
                ,0
                ); // reemissao
       end;

   if DM1.Tb_PargerPLORCMOD02.AsInteger=1 then
      FPedEmiteNf(0,6,0,pDadosPedidoBuscar.pchave_ano,pDadosPedidoBuscar.pchave,1,pDadosPedidoBuscar.pcodemp,1
      ,0,false,false,true,1,0,0); // orcamento


//lindomar
   end;

fBloqueiaLiberaPedido(0);

pfechartudo;




end;






function  tVerificaTef.flerdadoscupom(pDadosPedidoBuscar: tDadosPedidoBuscar) : boolean;
begin
result:=true;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas :='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');


if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin3(0,'CADCSF' ,'CFCODEMP','P1CODEMP' ,'CFLOTSEQ' ,'P1LOTSEQ','CFCHAVEP' ,'P1CHAVE');


query_nfe.close;
query_nfe.SQL.Clear;
query_nfe.SQL.Add('Select P1CODEMP,P1DATAP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1STATUS,P1TIPO,CCNPJ,CCPF,P1NFE_ENVXML,P1DATDOC,'
                 +'CUF,P1SITPED,P1TABPV,P1CODPV, P1PVACTD,P1ORDEM,P1PRAZO,P1PVDDESCF,P1PVDIASDESCF,P1SERIE'
                 +',P1TOTALL,P1COMIS,P1COMV02,P1COMV03,P1COMV04,P1COMISS'
                 +',P1COMIST,P1SEMCOM,P1COMASSE,P1ICMSR,P1VALFRE,P1TOTEXTCOM'
                 +',P1VALSEG,P1DESCFIN,P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL'
                 +',P1VALDES01,P1VALDES02,P1VLRDES,P1TARBAN,P1DESPACES,P1IPIINA,P1IPIPOS'
                 +',P1IPINEG,P1TOTCGRU,P1TOTSGRU,P1TOTSERLIQ,P1VALENT,P1CODUSR,P1CODUSR_ULTEVE'
                 +',CRAZAO,P1EMITENTE,P1CODSER,P1TOTSERLIQ,P1CODCLI,P1DATANF,P1EMIDOC '
                 +',P1COMP_ULTEVE,P1CODTRA,P1BLOQPEND,P1CODBLOQ_LIB,P1CODBLOQ,P1PREVENT'
                 +',P1NUMNF,P1NUMCF,P1FORMACE,P1DATACF,P1ORDEM,P1CUPOM,P1ID_NEW '
                 +',P1NFCE_DATA,P1NFCE_NUMERO,P1NFCE_SERIE,P1NFCE_SITUACAO,P1NFCE_MODELO,P1NFCE_CHV_ACESSO,P1NFCE_NPROT '

                 +',CASE WHEN (NVL(CFTIPOC,9)<>0 or NVL(CFTIPOC,0)<>1) THEN  TO_CHAR(NVL(CFCGC,CCPF)) ELSE '+quotedstr('')+' END  AS CPF_CLI '
                 +',CASE WHEN (NVL(CFTIPOC,9)<>0 or NVL(CFTIPOC,0)<>1) THEN  TO_CHAR(NVL(CFCGC,CCNPJ)) ELSE '+quotedstr('')+' END  AS CNPJ_CLI '


                 +',P1NFCE_TPEMIS'

                 +',P1PRAZO_ENT,P1COMIS_EXTRA,P1SUBMOD,P1DATHOR_ULTEVE from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +'  (P1CODEMP=:CODEMP OR P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ '
                 +' and P1ORDEM=:ORDEM ');
Query_nfe.ParamByName('CODEMP').AsInteger:=pDadosPedidoBuscar.pcodemp;
Query_nfe.ParamByName('CODEMP_FILIAL').AsInteger:=pDadosPedidoBuscar.pcodemp;;
Query_nfe.ParamByName('CHAVE').AsInteger:=pDadosPedidoBuscar.pchave;
Query_nfe.ParamByName('LOTSEQ').AsInteger:=pDadosPedidoBuscar.pChave_ano;
Query_nfe.ParamByName('ORDEM').AsInteger:=1;
try
   query_nfe.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_nfe,30261,'func Erro:'+e.Message ,'CADP01');
   exit;
   end;
   end;

mMensagem:='';

if query_nfe.IsEmpty then
   begin
   mMensagem:=mMensagem+'Chave não encontrada'+chr(13);
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=9 then

   begin
   mMensagem:=mMensagem+'Este Pedido é de Emprestimo, Favor Fatura-lo Primeiro!'+chr(13);
   end;



if Query_nfe.FieldbyName('CUF').Value<>DM1.Tb_EmpUF.AsString then
   begin
   if flfilpad(-1,'_VENDA_PRE','CB_NFCE_TODOS_ESTADOS') then
      begin
      if DM4.Tb_FilPad2FPVALOR.AsString<>'true' then
         mMensagem:=mMensagem+'NFCE valido somente dentro do Estado!'+chr(13);
      end
   else
      mMensagem:=mMensagem+'NFCE valido somente dentro do Estado!'+chr(13);
   end;

if Query_nfe.FieldbyName('P1TIPO').Value=0 then
   begin
   mMensagem:=mMensagem+'Este Pedido é Apenas um Orçamento, Favor Fatura-lo Primeiro!'+chr(13);
   end;
if Query_nfe.FieldByName('P1TOTALL').isnull then
   begin
   mMensagem:=mMensagem+'Recalcule este pedido Primeiro!'+chr(13);
   end;

if (Query_nfe.FieldByName('P1TOTALL').asFloat>9999) AND
   (fsonumero(Query_nfe.FieldByName('CPF_CLI').AsString)=0)  AND
   (fsonumero(Query_nfe.FieldByName('CNPJ_CLI').AsString)=0)  then
   begin
   mMensagem:=mMensagem+'Valor total do Pedido '+formatfloat(mcasas, Query_nfe.FieldByName('P1TOTALL').asFloat)+' Para Valores maior ou igual a 10.000,00 tem que colocar o CPF ou CNPJ do Comprador!'+chr(13);
   end;



{
   if Query_nfe.FieldByName('CUF').AsString<>DM1.Tb_EmpUF.AsString then
      begin
      mMensagem:=mMensagem+'Pedido fora do estado de '+DM1.Tb_EmpUF.AsString+' estado(uf) do pedido '+Query_nfe.FieldByName('CUF').AsString+chr(13);
      end;
 }
if trim(mMensagem)<>'' then
   begin
   fmensagem(mMensagem,0,['0'],0);
   result:=false;
   exit;
   end;

end;

/// existe nfecf


function tVerificaTef.fAtualizarFormasDepagamentos(pChavePend:integer): boolean;
var
query_pfp: tQuery;
begin

DM_CDS.fTestarReceb;
DM_CDS.cds_receb.First;
if (DM_CDS.cds_receb.Locate('chave_id_cab',pChavePend,[])) then
   begin
   query_pfp:=tQuery.Create(nil);
   query_pfp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   While not (DM_CDS.cds_receb.Eof) and  (DM_CDS.cds_recebchave_id_cab.AsInteger=pChavePend) do
      begin
      if (length(DM_CDS.cds_recebNSU.AsString)>1) and (DM_CDS.cds_recebchave_id_forma.AsInteger>0) then
         begin
         query_pfp.close;
         query_pfp.sql.clear;
         query_pfp.SQL.add('Update CADPFP set PFPSTATUS=1, PFPNSU_NUMERO_AUTORIZACAO = :PFPNSU_NUMERO_AUTORIZACAO '
                       +', PFPCOMPROVANTE_VINC = :PFPCOMPROVANTE_VINC '
                       +' WHERE PFPID_NEW = :PFPID_NEW ');
         query_pfp.ParamByName('PFPNSU_NUMERO_AUTORIZACAO').AsString := DM_CDS.cds_recebNSU.AsString;
         query_pfp.ParamByName('PFPCOMPROVANTE_VINC').AsMemo         := DM_CDS.cds_recebcomprovante.AsString;
         query_pfp.ParamByName('PFPID_NEW').Asinteger                := DM_CDS.cds_recebchave_id_forma.AsInteger;
         try
            query_pfp.ExecSQL;
            fdm1StartCommit;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_pfp,125,'SGE','CADPFP');
            end;
            end;
         end;
      DM_CDS.cds_receb.Next;
      end;
   query_pfp.close;
   freeandnil(query_pfp);   
   end;


end;


end.
