unit s_Corrigir_Lotes_Compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBTables, DBClient,
  Buttons;

type
  TFrm_Corrigir_Lotes_Compras = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    gb_itensdopedido: TGroupBox;
    Panel2: TPanel;
    gb_ja_vendido: TGroupBox;
    gb_novos_lotes: TGroupBox;
    DBGrid_itensdopedido: TDBGrid;
    DBGrid_lotes_novos: TDBGrid;
    DBGrid_lotes_vendidos: TDBGrid;
    src_itensdopedido: TDataSource;
    src_lotes_novos_compra: TDataSource;
    src_ja_vendido: TDataSource;
    tb_itensdopedido: TQuery;
    cds_lotes_novos_compra: TClientDataSet;
    cds_lotes_novos_compranl_item: TIntegerField;
    cds_lotes_novos_compranl_nov_lote: TStringField;
    cds_lotes_novos_compranl_nov_dtvcto: TDateField;
    cds_lotes_novos_compranl_qtd: TFloatField;
    cds_ja_vendido: TClientDataSet;
    cds_ja_vendidov_item: TIntegerField;
    cds_ja_vendidov_ped_codemp: TIntegerField;
    cds_ja_vendidov_ped_chave: TIntegerField;
    cds_ja_vendidov_ped_lotseq: TIntegerField;
    cds_ja_vendidov_qtd: TFloatField;
    cds_ja_vendidov_razsoc: TStringField;
    tb_itensdopedidoPDNOME: TStringField;
    tb_itensdopedidoPDUND: TStringField;
    tb_itensdopedidoPDMARCA: TStringField;
    tb_itensdopedidoPF2QTDP: TFloatField;
    tb_itensdopedidoPF2PU: TFloatField;
    tb_itensdopedidoPF2CODPRO: TFloatField;
    Panel3: TPanel;
    bbSalvarLotes: TBitBtn;
    bbSair: TBitBtn;
    lbl_obs: TLabel;
    tb_itensdopedidoESTOQUE_ATUAL: TFloatField;
    tb_itensdopedidoPF2ITEM: TFloatField;
    cds_lotes_novos_compranl_ant_lote: TStringField;
    cds_lotes_novos_compranl_ant_dtvcto: TDateField;
    cds_ja_vendidov_ant_lote: TStringField;
    cds_ja_vendidov_ant_dtvcto: TDateField;
    cds_ja_vendidov_novo_lote: TStringField;
    cds_ja_vendidov_novo_dtvcto: TDateField;
    cds_ja_vendidov_alterar: TStringField;
    cds_lotes_novos_compranl_saldo_atual: TFloatField;
    cds_ja_vendidov_ped_item: TIntegerField;
    procedure bbSairClick(Sender: TObject);
    procedure src_itensdopedidoDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure cds_lotes_novos_compraBeforePost(DataSet: TDataSet);
    procedure bbSalvarLotesClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cds_lotes_novos_compraBeforeInsert(DataSet: TDataSet);
    procedure src_lotes_novos_compraDataChange(Sender: TObject;
      Field: TField);
  private
    { Private declarations }

    mant_item: integer;
    mant_lote: string;

    function fLerLotesNovosCompra: boolean;


    function fAtualizarVendas: boolean;

    function fAjustarLotesdosPedidos: boolean;

  public
    { Public declarations }

    mChave : Integer;
    mCodemp: Integer;
    mLotSeq: Integer;

    function fLercadpfor: boolean;



  end;

var
  Frm_Corrigir_Lotes_Compras: TFrm_Corrigir_Lotes_Compras;

implementation

uses S_DM1, func_excecoes, Func;

{$R *.dfm}


function TFrm_Corrigir_Lotes_Compras.fLercadpfor: boolean;
begin
tb_itensdopedido.Tag:=1;
tb_itensdopedido.close;
tb_itensdopedido.sql.Clear;
tb_itensdopedido.sql.add('select PDNOME,PDUND,PDMARCA,PF2QTDP,PF2PU,PF2CODPRO,PF2ITEM,'
                        +' NVL( (select sum(CESALDO) '
                        +' from CADEST WHERE CECODPRO=PF2CODPRO),0) as ESTOQUE_ATUAL  from CADPF2,CADPRO '
                        +' WHERE PDCODPRO=PF2CODPRO '
                        +' and PF2CHAVE=0'+IntToStr(mChave)
                        +' and PF2LOTSEQ=0'+IntToStr(mLotSeq)
                        +' and PF2CODEMP=0'+IntToStr(mCodemp)
                        +' ORDER BY PF2ITEM ');
try
   tb_itensdopedido.open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_itensdopedido,64,'SGE','CADVER');
   end;
   end;
fLerLotesNovosCompra;
fAtualizarVendas;

tb_itensdopedido.tag:=0;
tb_itensdopedido.First;


end;


// inicio



function TFrm_Corrigir_Lotes_Compras.fAtualizarVendas: boolean;
var
query_Pedido_Vendas: TQuery;
mqtdfalta: real;
begin
if cds_ja_vendido.Active=false then
   begin
   cds_ja_vendido.CreateDataSet;
   cds_ja_vendido.Open;
   end;
cds_ja_vendido.EmptyDataSet;


Tb_itensdoPedido.first;

query_Pedido_Vendas:=TQuery.Create(nil);
query_Pedido_Vendas.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

While not tb_itensdopedido.eof do
   begin
   if tb_itensdopedidoESTOQUE_ATUAL.AsFloat<tb_itensdopedidoPF2QTDP.AsFloat then
      begin
      cds_lotes_novos_compra.Filtered:=false;

      cds_lotes_novos_compra.Filter:=' nl_item = '+tb_itensdopedidoPF2ITEM.AsString;
      cds_lotes_novos_compra.Filtered:=true;

      mqtdfalta:=cds_lotes_novos_compranl_qtd.AsFloat-cds_lotes_novos_compranl_saldo_atual.AsFloat;
      mqtdfalta:=arredonda(mqtdfalta,3);
      if mqtdfalta<0 then
         mqtdfalta:=0;


      While (mqtdfalta>0) and (not cds_lotes_novos_compra.eof) do
         begin
         query_Pedido_Vendas.Close;
         query_Pedido_Vendas.sql.clear;
         query_Pedido_Vendas.sql.add('select P1CHAVE,P1DATAP,P1LOTSEQ,P1CODEMP,CRAZAO,P2LM_QTD,P2LM_ITEM,P2LM_LOTE,P2LM_DTVCTO '
                                 +' from CADP02_LOTES,CADP01,CADCLI '
                                 +' where P2LM_CODPRO='+tb_itensdopedidoPF2CODPRO.AsString);
         if (cds_lotes_novos_compranl_ant_lote.AsString)='X' then
            query_Pedido_Vendas.SQL.add(' and (P2LM_LOTE is null or P2LM_LOTE='+QuotedStr(' ')+') ')
         else
            query_Pedido_Vendas.SQL.add(' and (P2LM_LOTE='+QuotedStr(cds_lotes_novos_compranl_ant_lote.AsString)+') ');
         query_Pedido_Vendas.SQL.Add(' and P1CHAVE=P2LM_CHAVE and P1LOTSEQ=P2LM_LOTSEQ '
                                 +' and P1CODEMP=P2LM_CODEMP '
                                 +' AND P1STATUS<6 '
                                 +' and P1TIPO>0 '
                                 +' and CCODCLI=P1CODCLI '
                                 +' order by P1DATAP DESC, P1CHAVE DESC '
                                 );
         try
            query_pedido_vendas.open;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_Pedido_Vendas,44,'SGE','CADVER');
            end;
            end;
         While (mqtdfalta>0) and (not query_Pedido_Vendas.eof) do
            begin
            cds_ja_vendido.Append;
            cds_ja_vendidov_item.AsInteger       := tb_itensdopedidoPF2ITEM.AsInteger;
            cds_ja_vendidov_ped_item.AsInteger   := query_Pedido_Vendas.fieldbyname('P2LM_ITEM').AsInteger;
            cds_ja_vendidov_ped_codemp.AsInteger := query_Pedido_Vendas.fieldbyname('P1CODEMP').AsInteger;
            cds_ja_vendidov_ped_chave.AsInteger  := query_Pedido_Vendas.fieldbyname('P1CHAVE').AsInteger;
            cds_ja_vendidov_ped_lotseq.AsInteger := query_Pedido_Vendas.fieldbyname('P1LOTSEQ').AsInteger;
            cds_ja_vendidov_qtd.AsFloat          := query_Pedido_Vendas.fieldbyname('P2LM_QTD').AsFloat;
            cds_ja_vendidov_razsoc.AsString      := query_Pedido_Vendas.fieldbyname('CRAZAO').AsString;

            cds_ja_vendidov_ant_lote.AsString    :=iif(trim(query_Pedido_Vendas.fieldbyname('P2LM_LOTE').AsString)='','X',query_Pedido_Vendas.fieldbyname('P2LM_LOTE').AsString);

            cds_ja_vendidov_ant_dtvcto.AsDateTime    := query_Pedido_Vendas.fieldbyname('P2LM_DTVCTO').AsDateTime;
            cds_ja_vendidov_alterar.AsString     := 'N';
            cds_ja_vendido.Post;
            mqtdfalta:=mqtdfalta-query_Pedido_Vendas.fieldbyname('P2LM_QTD').AsFloat;
            mqtdfalta:=arredonda(mqtdfalta,3);
            if mqtdfalta<0 then
               mqtdfalta:=0;
            query_Pedido_Vendas.Next;
            end;
         cds_lotes_novos_compra.Next;
         end;
      end;
   tb_itensdopedido.Next;
   end;

query_Pedido_Vendas.close;
FreeAndNil(query_Pedido_Vendas);

end;


// termino





function TFrm_Corrigir_Lotes_Compras.fLerLotesNovosCompra: boolean;
var
query_lotes_novos_compra: TQuery;
begin
query_lotes_novos_compra:=TQuery.create(nil);
query_lotes_novos_compra.databasename:=DM1.SG_ASSOC.DatabaseName;
query_lotes_novos_compra.SQL.add('select PF2L_LOTE,PF2L_DTVCTO,PF2L_QTD,PF2L_ITEM from CADPF2_LOTES_ORC '
                                 +' where PF2L_CODEMP='+Inttostr(mcodemp)
                                 +' and PF2L_CHAVE='+Inttostr(mChave)
                                 +' and PF2L_LOTSEQ='+Inttostr(mLotSeq)
                                 +' ORDER BY PF2L_ITEM,PF2L_LOTE ');
try
   query_lotes_novos_compra.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_lotes_novos_compra,92,'SGE','CADPF2_LOTES');
   end;
   end;
if cds_lotes_novos_compra.active=false then
   begin
   cds_lotes_novos_compra.CreateDataSet;
   cds_lotes_novos_compra.open;
   end;
cds_lotes_novos_compra.tag:=1;
cds_lotes_novos_compra.EmptyDataSet;

while not query_lotes_novos_compra.eof do
   begin
   cds_lotes_novos_compra.Append;
   cds_lotes_novos_compranl_item.AsInteger   :=query_lotes_novos_compra.fieldbyname('PF2L_ITEM').AsInteger;
   cds_lotes_novos_compranl_nov_lote.AsString    :=iif(trim(query_lotes_novos_compra.fieldbyname('PF2L_LOTE').AsString)='','X',query_lotes_novos_compra.fieldbyname('PF2L_LOTE').AsString);
   cds_lotes_novos_compranl_nov_dtvcto.AsDateTime:=query_lotes_novos_compra.fieldbyname('PF2L_DTVCTO').AsDateTime;

   cds_lotes_novos_compranl_ant_lote.AsString    :=iif(trim(query_lotes_novos_compra.fieldbyname('PF2L_LOTE').AsString)='','X',query_lotes_novos_compra.fieldbyname('PF2L_LOTE').AsString);

   cds_lotes_novos_compranl_ant_dtvcto.AsDateTime:=query_lotes_novos_compra.fieldbyname('PF2L_DTVCTO').AsDateTime;

   cds_lotes_novos_compranl_qtd.AsFloat      :=query_lotes_novos_compra.fieldbyname('PF2L_QTD').AsFloat;


   cds_lotes_novos_compra.Post;
   query_lotes_novos_compra.Next;
   end;
query_lotes_novos_compra.close;
freeandnil(query_lotes_novos_compra);
cds_lotes_novos_compra.tag:=0;
end;



procedure TFrm_Corrigir_Lotes_Compras.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Corrigir_Lotes_Compras.src_itensdopedidoDataChange(
  Sender: TObject; Field: TField);
begin
if tb_itensdopedido.Tag<>1 then
   begin
   if mant_item<>tb_itensdopedidoPF2ITEM.AsInteger then
      begin
      mant_item:=tb_itensdopedidoPF2ITEM.AsInteger;
      cds_lotes_novos_compra.Filter:=' nl_item = '+tb_itensdopedidoPF2ITEM.AsString;
      cds_lotes_novos_compra.Filtered:=true;
      end;
   end;
end;

procedure TFrm_Corrigir_Lotes_Compras.FormCreate(Sender: TObject);
begin
mant_item:=-1;
cds_lotes_novos_compranl_nov_dtvcto.EditMask:='99/99/9999';

end;

procedure TFrm_Corrigir_Lotes_Compras.cds_lotes_novos_compraBeforePost(
  DataSet: TDataSet);
begin
if cds_lotes_novos_compra.tag=0 then
   begin
   if cds_lotes_novos_compranl_qtd.AsFloat=0 then
      begin
      cds_lotes_novos_compra.cancel;
      abort;
      end
   else
      bbSalvarLotes.Enabled:=true;
   end;
end;

procedure TFrm_Corrigir_Lotes_Compras.bbSalvarLotesClick(Sender: TObject);
begin
bbSalvarLotes.Enabled:=false;
fAjustarLotesdosPedidos;
close;
end;

procedure TFrm_Corrigir_Lotes_Compras.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if bbSalvarLotes.Enabled then
   begin
   Case MessageDlg('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',mtWarning,[mbYes,mbNo,mbCancel],0) of
      mrYes: bbSalvarLotesClick(self);
      mrNo : CanClose:=true;
      else CanClose:=False;
      end;

   end;
end;

procedure TFrm_Corrigir_Lotes_Compras.cds_lotes_novos_compraBeforeInsert(
  DataSet: TDataSet);
begin
if cds_lotes_novos_compra.tag=0 then
   begin
   cds_lotes_novos_compra.Cancel;
   abort;
   end;
end;

function TFrm_Corrigir_Lotes_Compras.fAjustarLotesdosPedidos: boolean;
var
query_exe: TQuery;
mqtdfalta: real;
begin

query_exe:=TQuery.create(nil);
query_exe.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


tb_itensdopedido.First;
While not tb_itensdopedido.eof do
   begin
   cds_lotes_novos_compra.First;
   While not cds_lotes_novos_compra.Eof do
      begin
      if (cds_lotes_novos_compranl_nov_lote.AsString=cds_lotes_novos_compranl_ant_lote.AsString) and
         (cds_lotes_novos_compranl_nov_dtvcto.AsDateTime=cds_lotes_novos_compranl_ant_dtvcto.AsDateTime) then
         begin
         cds_lotes_novos_compra.Next;
         continue;
         end;
      mqtdfalta:=cds_lotes_novos_compranl_qtd.AsFloat-cds_lotes_novos_compranl_saldo_atual.AsFloat;

      mqtdfalta:=arredonda(mqtdfalta,3);
      if mqtdfalta<0 then
         mqtdfalta:=0;
      cds_ja_vendido.First;
      While (mqtdfalta>0) and (not cds_ja_vendido.eof) do
         begin
         cds_ja_vendido.Edit;
         cds_ja_vendidov_alterar.Value:='S';
         cds_ja_vendidov_novo_lote.AsString    :=cds_lotes_novos_compranl_nov_lote.AsString;
         cds_ja_vendidov_novo_dtvcto.AsDateTime:=cds_lotes_novos_compranl_nov_dtvcto.AsDateTime;
         cds_ja_vendido.Post;
         query_exe.close;
         query_exe.SQL.Clear;
         query_exe.SQL.Add('Update cadp02_LOTES set P2LM_LOTE=:LOTE_NOV, P2LM_DTVCTO=:DTVCTO_NOV '
                          +' where P2LM_CHAVE=:CHAVE '
                          +' AND P2LM_CODEMP=:CODEMP '
                          +' and P2LM_LOTSEQ=:LOTSEQ '
                          +' and P2LM_ITEM=:ITEM ');
         if (cds_lotes_novos_compranl_ant_lote.AsString='X') then
            query_exe.SQL.add(' and (P2LM_LOTE is null or P2LM_LOTE='+QuotedStr(' ')+')')
         else
            begin
            query_exe.SQL.add(' and P2LM_LOTE=:LOTE_ANT  ');
            query_exe.parambyname('LOTE_ANT').AsString:=cds_lotes_novos_compranl_ant_lote.AsString;
            end;
         if ( (cds_lotes_novos_compranl_nov_lote.AsString='X') or (trim(cds_lotes_novos_compranl_nov_lote.AsString)='') ) then
            begin
            query_exe.parambyname('LOTE_NOV').AsString:=' ';
            end
         else
            begin
            query_exe.parambyname('LOTE_NOV').AsString:=cds_lotes_novos_compranl_nov_lote.asstring;
            end;
         query_exe.parambyname('DTVCTO_NOV').AsDateTime:=cds_lotes_novos_compranl_nov_dtvcto.AsDateTime;

         query_exe.parambyname('CHAVE').AsInteger:= cds_ja_vendidov_ped_chave.AsInteger;
         query_exe.parambyname('CODEMP').AsInteger:=cds_ja_vendidov_ped_codemp.AsInteger;
         query_exe.parambyname('LOTSEQ').AsInteger:=cds_ja_vendidov_ped_lotseq.AsInteger;
         query_exe.parambyname('ITEM').AsInteger  :=cds_ja_vendidov_ped_item.AsInteger;

         try
            query_exe.ExecSQL;
            fdm1startcommit;
         except on e : exception do
            begin
            ex_erroSql_Novo(query_exe,431,'SGE','CADPF2_LOTES');
            end;
            end;

         mqtdfalta:=mqtdfalta-cds_ja_vendidov_qtd.AsFloat;
         mqtdfalta:=arredonda(mqtdfalta,3);
         if mqtdfalta<0 then
            mqtdfalta:=0;
         cds_ja_vendido.Next;
         end;
      cds_lotes_novos_compra.Next;
      end;
   tb_itensdopedido.Next;
   end;



cds_lotes_novos_compra.Filtered:=false;
cds_lotes_novos_compra.Filter:='';
cds_lotes_novos_compra.First;

While not cds_lotes_novos_compra.Eof do
   begin
   if (cds_lotes_novos_compranl_nov_lote.AsString=cds_lotes_novos_compranl_ant_lote.AsString) and
      (cds_lotes_novos_compranl_nov_dtvcto.AsDateTime=cds_lotes_novos_compranl_ant_dtvcto.AsDateTime) then
      begin
      cds_lotes_novos_compra.Next;
      continue;
      end;
   query_exe.Close;
   query_exe.sql.Clear;
   query_exe.sql.add('update cadpf2_lotes_orc set PF2L_LOTE=:LOTE_NOV, PF2L_DTVCTO=:DTVCTO '
                    +' where PF2L_CHAVE=:CHAVE '
                    +' and PF2L_LOTSEQ=:LOTSEQ '
                    +' and PF2L_CODEMP=:CODEMP '
                    +' and PF2L_ITEM=:ITEM ');
   if trim(cds_lotes_novos_compranl_ant_lote.AsString)='X' then
      query_exe.SQL.add(' and (PF2L_LOTE is null or  PF2L_LOTE='+QuotedStr(' ')+')')
   else
      begin
      query_exe.SQL.add(' and PF2L_LOTE=:LOTE_ANT ');
      query_exe.ParamByName('LOTE_ANT').AsString:=cds_lotes_novos_compranl_ant_lote.AsString;
      end;

   if (trim(cds_lotes_novos_compranl_nov_lote.AsString)='') or (cds_lotes_novos_compranl_nov_lote.AsString='X') then
      query_exe.ParamByName('LOTE_NOV').AsString     := ' '
   else
      query_exe.ParamByName('LOTE_NOV').AsString     := cds_lotes_novos_compranl_nov_lote.AsString;


   query_exe.ParamByName('DTVCTO').AsDateTime := cds_lotes_novos_compranl_nov_dtvcto.AsDateTime;
   query_exe.ParamByName('CHAVE').AsInteger   := mChave;
   query_exe.ParamByName('LOTSEQ').AsInteger   := mLotSeq;
   query_exe.ParamByName('CODEMP').AsInteger   := mCodemp;
   query_exe.ParamByName('ITEM').AsInteger    := cds_lotes_novos_compranl_item.AsInteger;

   try
      query_exe.ExecSQL;
      fdm1startcommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,442,'SGE','CADPF2_LOTES');
      end;
      end;

   cds_lotes_novos_compra.Next;
   end;

end;


procedure TFrm_Corrigir_Lotes_Compras.src_lotes_novos_compraDataChange(
  Sender: TObject; Field: TField);
begin
if cds_lotes_novos_compra.Tag<>1 then
   begin
   if mant_lote<>cds_lotes_novos_compranl_ant_lote.AsString then
      begin
      mant_lote:=cds_lotes_novos_compranl_ant_lote.AsString;
     cds_ja_vendido.Filtered:=false;
      cds_ja_vendido.Filter:=' v_item = '+cds_lotes_novos_compranl_item.AsString
                            +' and v_ant_lote = '+ quotedstr(cds_lotes_novos_compranl_ant_lote.AsString);
      cds_ja_vendido.Filtered:=true;
      end;
   end;

end;

end.
