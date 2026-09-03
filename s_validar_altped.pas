unit s_validar_altped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, DB, DBClient, Grids, DBGrids,lerarq,
  Buttons,dbTables;

type
  TFrm_Validar_altped = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    RichEdit_dadosPedidos: TRichEdit;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    DBGrid_itens: TDBGrid;
    src_itens: TDataSource;
    cds_itens: TClientDataSet;
    cds_itensCODPRO: TFloatField;
    cds_itensPDNOME: TStringField;
    cds_itensPDUND: TStringField;
    cds_itensQTDPED: TFloatField;
    cds_itensPRECO: TFloatField;
    cds_itensVDAMAX: TFloatField;
    cds_itensQTDJAVEND: TFloatField;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mExisteBloqueios: boolean;

    procedure pValidarAltPed(pDadosTestarMudancaPedido: DadosTestarMudancaPedido);

  end;

var
  Frm_Validar_altped: TFrm_Validar_altped;

implementation

uses  S_DM1, func_excecoes, Func;

{$R *.dfm}

procedure TFrm_Validar_AltPed.pValidarAltPed(pDadosTestarMudancaPedido: DadosTestarMudancaPedido);
var
query_ped: tQuery;

        procedure mostrarDadosDoPedido();
        var
        mDisplay: string;
        begin
        query_ped.close;
        query_ped.SQL.clear;
        query_ped.sql.add('Select CRAZAO from cadcli where CCODCLI='+FloatToStr(pDadosTestarMudancaPedido.pCodcli_nov));
        try
           query_ped.open;
        except on e : exception do
           begin
           ex_erroSql_Novo(query_ped,62,'SGE','CADP01');
           end;
           end;
        mDisplay:=query_ped.fieldbyName('CRAZAO').AsString;
        if pDadosTestarMudancaPedido.pCodcli_nov<>pDadosTestarMudancaPedido.pCodcli_ant then
           begin
           mDisplay:='Razão Social Nova '+mDisplay;
           query_ped.close;
           query_ped.SQL.clear;
           query_ped.sql.add('Select CRAZAO from cadcli where CCODCLI='+FloatToStr(pDadosTestarMudancaPedido.pCodcli_ant));
           try
              query_ped.open;
           except on e : exception do
              begin
              ex_erroSql_Novo(query_ped,62,'SGE','CADP01');
              end;
              end;
           mDisplay:=mDisplay+' Razão Social Antes '+ query_ped.fieldbyName('CRAZAO').AsString;
           end
        else
           mDisplay:='Razão Social '+mDisplay;


        RichEdit_dadosPedidos.Lines.Clear;
        RichEdit_dadosPedidos.Lines.Add(mDisplay);

        mDisplay := tab_tped[pDadosTestarMudancaPedido.pTipoPed_nov];

        if (pDadosTestarMudancaPedido.pTipoPed_nov<>pDadosTestarMudancaPedido.pTipoPed_ant) then
           begin
           mDisplay:='Tipo do Pedido Novo '+mDisplay;

           mDisplay := mDisplay + ' Tipo do Pedido Antes ' + tab_tped[pDadosTestarMudancaPedido.pTipoPed_ant];

           end
        else
           mDisplay:='Tipo do Pedido '+mDisplay;
        RichEdit_dadosPedidos.Lines.Add(mDisplay);
        end;


begin
mExisteBloqueios:=false;
query_ped:=tQuery.create(nil);
query_ped.databasename:=DM1.SG_ASSOC.databasename;

query_ped.sql.clear;
query_ped.sql.Add('SELECT T3.*,PDNOME,PDUND FROM ( '
                 +'SELECT T2.* '
                 +',SUM(P2QTD) AS QTD '
                 +' FROM ( '
                 +' SELECT P2CODPRO AS CODPRO ,P2QTD AS QTDPED,P2PRECO AS PRECO,PDVDAMAXM AS VDAMAX FROM CADP02,CADPRO '
                 +' WHERE PDCODPRO=P2CODPRO '
                 +' AND PDVDAMAXM>0 '
                 +' AND  P2CHAVE='+FloatToStr(pDadosTestarMudancaPedido.pChave)
                 +' AND  P2LOTSEQ='+FloatToStr(pDadosTestarMudancaPedido.pLotseq)
                 +' ) T2,  CADP02,CADP01 '
                 +' WHERE P1CODEMP=P2CODEMP AND P1CHAVE=P2CHAVE '
                 +' AND P1LOTSEQ=P2LOTSEQ '
                  +fFormatdatetimeParaConsulta('P1DATAP',true,StrTodate('01/'+formatdateTime('mm/yyyy', date)))
                  +fFormatdatetimeParaConsulta('P1DATAP',false,fultdiames(Date))
                  +' AND P2CODPRO=CODPRO '
                  +' GROUP BY CODPRO ,QTDPED,PRECO,VDAMAX '
                  +' ) T3 ,CADPRO WHERE PDCODPRO=CODPRO '
                  +' AND QTD>VDAMAX ');

try
   query_ped.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_ped,78,'SGE','CADP01');
   query_ped.Close;
   freeandnil(query_ped);
   end;
   end;
if not query_ped.IsEmpty then
   begin
   mExisteBloqueios:=true;
   cds_itens.CreateDataSet;
   cds_itens.Open;
   while not query_ped.Eof do
      begin
      cds_itens.Append;
      cds_itensCODPRO.Value:=query_ped.fieldByName('CODPRO').AsFloat;
      cds_itensPDNOME.Value:=query_ped.fieldByName('PDNOME').AsString;
      cds_itensPDUND.Value:=query_ped.fieldByName('PDUND').AsString;
      cds_itensQTDPED.Value:=query_ped.fieldByName('QTDPED').AsFloat;
      cds_itensPRECO.Value:=query_ped.fieldByName('PRECO').AsFloat;
      cds_itensVDAMAX.Value:=query_ped.fieldByName('VDAMAX').AsFloat;
      cds_itensQTDJAVEND.Value:=query_ped.fieldByName('QTDJAVEND').AsFloat;
      cds_itens.Post;
      query_ped.Next;
      end;
   mostrarDadosDoPedido();

   end;

query_ped.close;
freeandnil(query_ped);
end;


procedure TFrm_Validar_altped.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Validar_altped.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if cds_itens.Active then
   cds_itens.close;
end;

end.
