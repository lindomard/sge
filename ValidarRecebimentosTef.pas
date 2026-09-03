unit ValidarRecebimentosTef;

interface
uses S_DM_CDS,Forms, SysUtils, Dialogs, Mask, DB, DBTables, Messages, Windows ,Classes,StrUtils;



type
  TResposta = record
  pChaveJaExistente: integer;
  pOk: boolean;
end;


type
   tValidarRecebimentosTef = class
   private

   function fVerificarCartao(pIdNew: integer): tResposta;

   public


   function fVerificarTransacaoPendente(pIdNew: integer): tResposta;
   end;

//function fAdicionarVenda(pIdNew: integer): TResposta;

implementation

uses s_venda_paygo, s_verificar_tabelas, S_DM1, func_excecoes, Math, Func;

var
mPedidoJaExistenteRetirar: boolean;
mChaveIdCab: integer;
mChaveIdPend: integer;



function tValidarRecebimentosTef.fVerificarTransacaoPendente(pIdNew: integer): tResposta;




    function fTotalizarPedido(pChaveIdcab: Integer): boolean;
    var
    mTotalTef: Real;
    mTotalPedido: Real;
    mMensagem: string;
    begin
    result:=true;
    mMensagem :='';
    mTotalTef   :=0;
    mTotalPedido:=0;



    while (not DM_CDS.cds_pedido_formas.eof)  do
       begin
       if AnsiMatchText(DM_CDS.cds_pedido_formasforma_pgto.Value, ['DEBITO', 'CREDITO', 'PIX']) then
           mTotalTef:=mTotalTef+DM_CDS.cds_pedido_formasvalor.AsFloat;
       mTotalPedido:=mTotalPedido+DM_CDS.cds_pedido_formasvalor.AsFloat;
       DM_CDS.cds_pedido_formas.Next;
       end;
    if mTotalPedido<>DM_CDS.cds_pedido_cabvalor_pedido.AsFloat then
       begin
       mMensagem:=mMensagem+
       Format('Total do Pedido %2.f difere do total das formas de pagamento %2.f '
             ,[DM_CDS.cds_pedido_cabvalor_pedido.AsFloat, mTotalPedido]) ;
       end;

    if mTotalTef>DM_CDS.cds_pedido_cabvalor_pedido.AsFloat then
       begin
       mMensagem:=mMensagem+
       Format('Total do TEF %2.f é maior que o total do pedido %2.f '
             ,[mTotalTef, mTotalPedido]) ;
       end
    else
       begin
       DM_CDS.cds_pedido_cab.Edit;
       DM_CDS.cds_pedido_cabvalor_tef.AsFloat:=mTotalTef;
       DM_CDS.cds_pedido_cab.Post;
       end;

    if trim(mMensagem)<>'' then
       begin
       MessageDlg(mMensagem,mtWarning,[mbOk],0);
       result:=false;
       end;

    end;



begin



Application.createform(TFrm_Venda_PayGo,Frm_Venda_PayGo);

DM_CDS.fTestarConfigTef;
DM_CDS.FTestarSeqTef;
DM_CDS.fTestarReceb;
DM_CDS.fTestarPedidoCab;
DM_CDS.fTestarPedidoFormas;

result.pOk:=true;


mChaveIdPend := Frm_Venda_PayGo.fVerificarPendencias;
if (mChaveIdPend>0) then
   begin
   result.pChaveJaExistente:=mChaveIdPend;
   Frm_Venda_PayGo.Close;
   freeandnil(Frm_Venda_PayGo);
   exit;
   end;


result :=fVerificarCartao(pIdNew);


end;



function tValidarRecebimentosTef.fVerificarCartao(pIdNew: integer): tResposta;


var
mChaveId: integer;
query_fpgto: TQuery;
query_cab: TQuery;
mTotalFpPed: Real;
mTotalFPTef: Real;



    procedure fCalcularVendas;
    begin
    mTotalFpPed:=0;
    mTotalFPTef:=0;

    query_fpgto:=TQuery.create(nil);
    query_fpgto.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
    query_fpgto.SQL.ADD('SELECT PFPID_NEW,PFPID_PED01_NEW,PFPVALOR,PFPFORMA,PFPNOMFOR,PFPVINCULO,FPVINCULO_TPAG ');

    if mTipoTef=1 then
       begin
       query_fpgto.SQL.ADD(', CASE WHEN PFPVINCULO='+inttostr(mCartaoCreditoPos)+' then '+quotedstr('CREDITO')
                      +'      WHEN PFPVINCULO='+inttostr(mCartaoDebitoPos)+' THEN '+quotedstr('DEBITO')
                      +'      WHEN PFPVINCULO='+intTostr(mPixPos)+' THEN '+quotedstr('PIX'));;

       end
    else
       begin
       query_fpgto.SQL.ADD(', CASE WHEN PFPVINCULO='+inttostr(mCartaoCreditoTef)+' then '+quotedstr('CREDITO')
                      +'      WHEN PFPVINCULO='+inttostr(mCartaoDebitoTef)+' THEN '+quotedstr('DEBITO')
                      +'      WHEN PFPVINCULO='+intTostr(mPixTef)+' THEN '+quotedstr('PIX'));
       end;

    query_fpgto.SQL.ADD('      ELSE '+quotedstr('OUTROS')+' END AS NOME_FORMA '
                      +'  FROM CADPFP,CADFP  WHERE FPCODIGO=PFPFORMA AND  PFPID_PED01_NEW ='+intToStr(pIdNew));
    try
       query_fpgto.open;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_fpgto,111,'SGE','CADPFP');
       exit;
       end;
       end;

   While not query_fpgto.eof do
      begin
      mTotalFpPed:=mTotalFpPed+query_fpgto.fieldbyname('PFPVALOR').AsFloat;
      if mTipoTef=1 then
         begin
         if (query_fpgto.fieldbyname('PFPVINCULO').AsInteger in [mCartaoCreditoPos,mCartaoDebitoPos,mPixPos]) then
            mTotalFPTef:=mTotalFPTef + query_fpgto.fieldbyname('PFPVALOR').AsFloat;
         end
      else
         begin
         if (query_fpgto.fieldbyname('PFPVINCULO').AsInteger in [mCartaoCreditoTef,mCartaoDebitoTef,mPixTef]) then
            mTotalFPTef:=mTotalFPTef + query_fpgto.fieldbyname('PFPVALOR').AsFloat;
         end;

      query_fpgto.next;
      end;
   query_fpgto.close;
   end;

    procedure fCarregarFormas;
    begin
    mTotalFpPed:=0;
    mTotalFPTef:=0;

    if query_fpgto=nil then
       query_fpgto:=TQuery.create(nil);
    query_fpgto.close;
    query_fpgto.SQL.clear;
    query_fpgto.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
    query_fpgto.SQL.ADD('SELECT PFPID_NEW,PFPID_PED01_NEW,PFPVALOR,PFPFORMA,PFPNOMFOR,PFPVINCULO AS PFPVINCULO_SGE,FPVINCULO_TPAG ');


    if mTipoTef=1 then
       begin
       query_fpgto.SQL.ADD(', CASE WHEN PFPVINCULO='+inttostr(mCartaoCreditoPos)+' then '+quotedstr('CREDITO')
                      +'      WHEN PFPVINCULO='+inttostr(mCartaoDebitoPos)+' THEN '+quotedstr('DEBITO')
                      +'      WHEN PFPVINCULO='+intTostr(mPixPos)+' THEN '+quotedstr('PIX')
                      +'      ELSE '+quotedstr('OUTROS')+' END AS NOME_FORMA ');
       end
   else
       begin
       query_fpgto.SQL.ADD(', CASE WHEN PFPVINCULO='+inttostr(mCartaoCreditoTef)+' then '+quotedstr('CREDITO')
                      +'      WHEN PFPVINCULO='+inttostr(mCartaoDebitoTef)+' THEN '+quotedstr('DEBITO')
                      +'      WHEN PFPVINCULO='+intTostr(mPixTef)+' THEN '+quotedstr('PIX')
                      +'      ELSE '+quotedstr('OUTROS')+' END AS NOME_FORMA ');
       end;



    query_fpgto.SQL.ADD('  FROM CADPFP,CADFP WHERE FPCODIGO=PFPFORMA '
                      +' AND PFPID_PED01_NEW ='+intToStr(pIdNew));
    try
       query_fpgto.open;
    except on e : exception do
       begin
       ex_erroSql_Novo(query_fpgto,111,'SGE','CADPFP');
       exit;
       end;
       end;

   DM_CDS.fTestarPedidoFormas;
   IF DM_CDS.cds_pedido_formas.LOCATE('chave_id_cab',pIdNew,[]) then
      begin
      While (not DM_CDS.cds_pedido_formas.Eof) and (DM_CDS.cds_pedido_formaschave_id_cab.AsInteger=pIdNew) do
         begin
         if (DM_CDS.cds_pedido_formassituacao_venda.Value='PENDENTE') then
            begin
            DM_CDS.cds_pedido_formas.Delete;
            end
         else
            DM_CDS.cds_pedido_formas.Next;
         end;
      end;
   While not query_fpgto.eof do
      begin
      IF not DM_CDS.cds_pedido_formas.Locate('chave_id',query_fpgto.fieldbyname('PFPID_NEW').AsInteger,[]) then
         begin
         DM_CDS.cds_pedido_formas.Append;
         DM_CDS.cds_pedido_formasforma_pgto.Value     := query_fpgto.fieldbyname('NOME_FORMA').AsString;
         DM_CDS.cds_pedido_formasvalor.Value          := query_fpgto.fieldbyname('PFPVALOR').AsFloat;
         DM_CDS.cds_pedido_formaschave_id.Value       := query_fpgto.fieldbyname('PFPID_NEW').AsInteger;
         DM_CDS.cds_pedido_formaschave_id_cab.Value   := pIdNew;
         DM_CDS.cds_pedido_formassituacao_venda.Value := 'PENDENTE';
         DM_CDS.cds_pedido_formasnsu.Value            := '';
         DM_CDS.cds_pedido_formascomprovante.Value    := '';
         DM_CDS.cds_pedido_formas.Post;
         end;
      query_fpgto.next;
      end;
   query_fpgto.close;
   end;


    procedure pfechartudo;
    begin
    if query_fpgto<>nil then
       begin
       query_fpgto.Close;
       freeandnil(query_fpgto);
       end;

    if query_cab<>nil then
       begin
       query_cab.Close;
       freeandnil(query_cab);
       end;


    end;

begin


fCalcularVendas;

if mTotalFPTef=0 then
   begin
   Result.pOk:=true;
   Result.pChaveJaExistente:=0;
   exit;
   end;




query_cab:=TQuery.create(nil);
query_cab.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_cab.sql.Add('SELECT P1ID_NEW,P1CODCLI,CRAZAO,P1TOTALL,P1DATAP FROM CADP01,CADCLI '
                 +' WHERE P1CODCLI=CCODCLI AND P1ID_NEW='+INTTOSTR(pIdNew));
try
  query_cab.open;
except on e : exception do
   begin
   pfechartudo;
   ex_erroSql_Novo(query_cab,196,'SGE','CADP01');
   exit;
   end;
   end;
if query_cab.IsEmpty then
   begin
   MessageDlg('Não Foi Possivel encontrar o Pedido '+IntToStr(pIdNew), mtWarning,[mbOk],0);
   PFecharTudo;
   exit;
   end;
if RoundTo(mTotalFpPed, -2)<>RoundTo(query_cab.fieldByName('P1TOTALL').AsFloat, -2) then
   begin
   MessageDlg('Total das Formas '+FormatFloat(mcasas, mTotalFpPed)+' Total do Pedido '+FormatFloat(mcasas, query_cab.fieldByName('P1TOTALL').AsFloat)
             +' Diferença '+FormatFloat(mcasas, query_cab.fieldByName('P1TOTALL').AsFloat - mTotalFpPed) , mtWarning,[mbOk],0);
   result.pOk:=false;
   end;




DM_CDS.fTestarPedidoCab;
IF DM_CDS.cds_pedido_cab.LOCATE('chaveId',pIdNew,[]) then
   begin
   DM_CDS.cds_pedido_cab.edit;
   end
else
   begin
   DM_CDS.cds_pedido_cab.Append;
   DM_CDS.cds_pedido_cabvalor_tef_recebido.AsFloat      := 0;
   end;
DM_CDS.cds_pedido_cabchaveId.AsInteger               := pIdNew;
DM_CDS.cds_pedido_cabcodcli.Value                    := query_cab.fieldbyname('P1CODCLI').AsFloat;
DM_CDS.cds_pedido_cabrazao_social.AsString           := query_cab.fieldbyname('CRAZAO').AsString;
DM_CDS.cds_pedido_cabvalor_pedido.AsFloat            := query_cab.fieldbyname('P1TOTALL').AsFloat;
DM_CDS.cds_pedido_cabvalor_tef.AsFloat               := mTotalFpPed;
DM_CDS.cds_pedido_cabdata_hora_colocacao.AsDateTime  := date;
DM_CDS.cds_pedido_cabdata_hora_pedido.AsDateTime     := query_cab.fieldbyname('P1DATAP').AsDateTime;
DM_CDS.cds_pedido_caberroaoconcluir.AsInteger        := 0;
DM_CDS.cds_pedido_cabfinalizado.AsInteger            := 1;
DM_CDS.cds_pedido_cab.post;

fCarregarFormas;

DM_CDS.filtrarPedido(pIdNew);

pfechartudo;
result.pChaveJaExistente:=0;

end;

end.
