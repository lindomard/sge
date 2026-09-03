unit s_ResumoDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, ComCtrls, DB,
  DBTables, Grids, DBGrids, DBClient, RLReport;

type
  TFrm_ResumoDiario = class(TForm)
    src_pedidos_analitico: TDataSource;
    tb_pedidos_analitico: TQuery;
    src_pedidos_sintetico: TDataSource;
    tb_pedidos_sintetico: TQuery;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    edt_datmov: TDateEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid_pedidos_sintetico: TDBGrid;
    GroupBox2: TGroupBox;
    DBGrid_pedidos_analiticos: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    cds_datamov: TClientDataSet;
    src_datamov: TDataSource;
    cds_datamovDATAMOV: TDateField;
    cds_datamovQTDEST: TFloatField;
    cds_datamovTOTCUSTO: TFloatField;
    cds_datamovTOTVDA: TFloatField;
    RLImage_logo_empresa: TRLImage;
    RLLabel_cab: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLBand_detcab: TRLBand;
    rlcab_QTDEST: TRLLabel;
    rltdet_QTDEST: TRLDBText;
    rlcab_TOTCUSTO: TRLLabel;
    rldet_TOTCUSTO: TRLDBText;
    rlcab_TOTVDA: TRLLabel;
    rldet_TOTVDA: TRLDBText;
    rlsubdet_pedidosincluidos: TRLSubDetail;
    RLBand_cabped_inclusos: TRLBand;
    RLBand1: TRLBand;
    tb_pedidos_analiticoP1CHAVE: TFloatField;
    rldet_P1CHAVE: TRLDBText;
    rlcab_P1CHAVE: TRLLabel;
    tb_pedidos_analiticoCRAZAO: TStringField;
    tb_pedidos_analiticoP1CODVEN: TFloatField;
    tb_pedidos_analiticoP1TOTALL: TFloatField;
    tb_pedidos_analiticoTPNOME: TStringField;
    tb_pedidos_analiticoP2ESTNOR: TStringField;
    tb_pedidos_analiticoTOTQTD: TFloatField;
    tb_pedidos_analiticoTOTPCOTAB: TFloatField;
    tb_pedidos_analiticoTOTPCOVDA: TFloatField;
    tb_pedidos_analiticoTOTICMSR: TFloatField;
    tb_pedidos_analiticoTOTOUTRAS: TFloatField;
    tb_pedidos_analiticoTOTFRETE: TFloatField;
    tb_pedidos_analiticoTOTIPI: TFloatField;
    tb_pedidos_analiticoTOTIOF: TFloatField;
    tb_pedidos_analiticoTOTIMP_IMP_VALOR: TFloatField;
    rlcab_P1DATAP: TRLLabel;
    rlcab_CRAZAO: TRLLabel;
    rldet_CRAZAO: TRLDBText;
    rlcab_P1TOTALL: TRLLabel;
    rldet_P1TOTALL: TRLDBText;
    rlcab_TPNOME: TRLLabel;
    rlcab_P2ESTNOR: TRLLabel;
    rlcab_TOTQTD: TRLLabel;
    rldet_TPNOME: TRLDBText;
    rldet_P2ESTNOR: TRLDBText;
    rldet_TOTQTD: TRLDBText;
    tb_pedidos_analiticoTIT_TOTAL: TFloatField;
    tb_pedidos_analiticoTIT_VALPAG: TFloatField;
    tb_pedidos_analiticoTIT_DESC: TFloatField;
    tb_pedidos_analiticoTIT_JUROS: TFloatField;
    tb_pedidos_analiticoEMITENTE: TStringField;
    RLDBText1: TRLDBText;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

    function fLerPedidos: boolean;

    procedure fAdicionarInicio;

  public
    { Public declarations }
  end;

var
  Frm_ResumoDiario: TFrm_ResumoDiario;

implementation

uses S_DM1, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_ResumoDiario.bbSairClick(Sender: TObject);
begin
close;
end;

function tFrm_ResumoDiario.fLerPedidos: boolean;
var
mcondicao: string;
mFator: String;
const

mcampos_final ='P1TOTALL,P1CODVEN,CRAZAO,P1CODEMP,P1DATAP,P1CHAVE,P1LOTSEQ, EMITENTE,P1TIPO, TPNOME , P2ESTNOR , TOTQTD ,TOTPCOTAB , TOTPCOVDA ,TOTICMSR ,TOTOUTRAS ,TOTFRETE , TOTIPI, TOTII, TOTIOF , TOTIMP_IMP_VALOR ';

begin
mFator:='';
result:=true;
tb_pedidos_analitico.close;
tb_pedidos_analitico.sql.clear;
tb_pedidos_analitico.sql.add('select  '+quotedstr('P')+' as EMITENTE,  P1CHAVE,P1ORDEM,P1LOTSEQ,TO_DATE(P1DATAMOVEST) AS P1DATAP,P1CODEMP,CRAZAO,P1CODVEN '
                            +' ,P1TOTALL '
                            +',NVL(P1TIPO,0) AS P1TIPO '
                            +',NVL(TPNOME,'+QuotedStr('Orcamento')+') AS TPNOME '
                            +',case when NVL(P1TIPO,0)=0 THEN '+QuotedStr('N')+' ELSE NVL(P2ESTNOR,'+QuotedStr('N')+') end as P2ESTNOR '
                            +',SUM(P2QTD)'+mFator+' AS TOTQTD '
                            +',SUM( ROUND((P2PCOTAB*P2QTD),2) )'+mFator+' AS TOTPCOTAB '
                            +',SUM( ROUND((P2PRECO*P2QTD),2))'+mFator+' AS TOTPCOVDA '
                            +',sum(NVL(P2ICMSR,0))'+mFator+' AS TOTICMSR '
                            +',sum(NVL(P2TOTOUT,0))'+mFator+' AS TOTOUTRAS '
                            +',sum(NVL(P2VFRERAT,0))'+mFator+' AS TOTFRETE '
                            +',sum(NVL(P2VALIPI,0))'+mFator+' AS TOTIPI '
                            +',sum(NVL(P2IMP_IMP_VII,0))'+mFator+' AS TOTII '
                            +',sum(NVL(P2IMP_IMP_VIOF,0))'+mFator+' AS TOTIOF '
                            +',sum(NVL(P2IMP_IMP_VALOR,0))'+mFator+' AS TOTIMP_IMP_VALOR '
                            +'FROM CADP01,CADP02,CADCLI,CADTIPPED '
                            +'WHERE P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2ORDEM=P1ORDEM AND P2CODEMP=P1CODEMP '
                            +'AND CCODCLI=P1CODCLI '
                            +'AND TPCODIGO(+)=P1TIPO '
                            );



if edt_datmov.Date>pdatanula then
   begin
   tb_pedidos_analitico.SQL.add(fFormatdatetimeParaConsulta_unica('P1DATAMOVEST',edt_datmov.date));

   end;
tb_pedidos_analitico.SQL.add('GROUP BY  P1CHAVE,P1ORDEM,P1LOTSEQ,TO_DATE(P1DATAMOVEST),P1CODEMP,CRAZAO,P1CODVEN,P1TOTALL '
                            +',NVL(P1TIPO,0) '
                            +',NVL(TPNOME,'+QuotedStr('Orcamento')+')'
                            +',case when NVL(P1TIPO,0)=0 THEN '+QuotedStr('N')+' ELSE NVL(P2ESTNOR,'+QuotedStr('N')+') end '
                            );

// PEDIDOS ALTERADOS

tb_pedidos_analitico.sql.add(' union all ');

mfator:='*-1';
tb_pedidos_analitico.sql.add('select  '+quotedstr('P')+' as EMITENTE,  P1CHAVE,P1ORDEM,P1LOTSEQ,TO_DATE(P1DATHOR_EVE) AS P1DATAP,P1CODEMP,CRAZAO,P1CODVEN '
                            +' ,P1TOTALL '
                            +',NVL(P1TIPO,0) AS P1TIPO '
                            +',NVL(TPNOME,'+QuotedStr('Orcamento')+') AS TPNOME '
                            +',case when NVL(P1TIPO,0)=0 THEN '+QuotedStr('N')+' ELSE NVL(P2ESTNOR,'+QuotedStr('N')+') end as P2ESTNOR '
                            +',SUM(P2QTD)'+mFator+' AS TOTQTD '
                            +',SUM( ROUND((P2PCOTAB*P2QTD),2) )'+mFator+' AS TOTPCOTAB '
                            +',SUM( ROUND((P2PRECO*P2QTD),2))'+mFator+' AS TOTPCOVDA '
                            +',sum(NVL(P2ICMSR,0))'+mFator+' AS TOTICMSR '
                            +',sum(NVL(P2TOTOUT,0))'+mFator+' AS TOTOUTRAS '
                            +',sum(NVL(P2VFRERAT,0))'+mFator+' AS TOTFRETE '
                            +',sum(NVL(P2VALIPI,0))'+mFator+' AS TOTIPI '
                            +',sum(NVL(P2IMP_IMP_VII,0))'+mFator+' AS TOTII '
                            +',sum(NVL(P2IMP_IMP_VIOF,0))'+mFator+' AS TOTIOF '
                            +',sum(NVL(P2IMP_IMP_VALOR,0))'+mFator+' AS TOTIMP_IMP_VALOR '
                            +'FROM OLD_CADP01,OLD_CADP02,CADCLI,CADTIPPED '
                            +'WHERE P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2ORDEM=P1ORDEM AND P2CODEMP=P1CODEMP '
                            +'AND CCODCLI=P1CODCLI '
                            +'AND TPCODIGO(+)=P1TIPO '
                            );



if edt_datmov.Date>pdatanula then
   begin
   tb_pedidos_analitico.SQL.add(fFormatdatetimeParaConsulta_unica('P1DATHOR_EVE',edt_datmov.date));

   end;
tb_pedidos_analitico.SQL.add('P1DATHOR_EVE=( SELECT MIN(CONS.P1DATHOR_EVE) FROM OLD_CADP01 CONS WHERE '
                            +' CONS.P1CHAVE=OLD2.P1CHAVE  AND CONS.P1LOTSEQ=OLD2.P1LOTSEQ  AND '
                            +' ( CONS.P1CODEMP=OLD2.P1CODEMP OR  CONS.P1CODEMP=OLD2.P1CODEMP+100 OR CONS.P1CODEMP=OLD2.P1CODEMP-100) '
                            +' ) ');
                            




tb_pedidos_analitico.SQL.add('GROUP BY  P1CHAVE,P1ORDEM,P1LOTSEQ,TO_DATE(P1DATHOR_EVE),P1CODEMP,CRAZAO,P1CODVEN,P1TOTALL '
                            +',NVL(P1TIPO,0) '
                            +',NVL(TPNOME,'+QuotedStr('Orcamento')+')'
                            +',case when NVL(P1TIPO,0)=0 THEN '+QuotedStr('N')+' ELSE NVL(P2ESTNOR,'+QuotedStr('N')+') end '
                            );



// TERMINO DOS PEDIDOS ALTERADOS




ex_erroSql_Novo(tb_pedidos_analitico,37,'SGE '  ,'CADP01');


// comparas
tb_pedidos_analitico.SQL.add(' union all ');

tb_pedidos_analitico.sql.add('select '+quotedstr('T')+' as EMITENTE,  PF1CHAVE AS  P1CHAVE, 0 AS P1ORDEM,PF1LOTSEQ AS  P1LOTSEQ, '
                            +' TO_DATE(case when PF1DATAENT<='+quotedstr(formatdatetime(fdt, pdatanula))
                            +' THEN PF1DATA ELSE  PF1DATAENT END) AS P1DATAP,PF1CODEMP AS P1CODEMP,FRAZAO AS CRAZAO,0 AS P1CODVEN '
                            +' ,PF1TOTLIQ AS P1TOTALL '
                            +',CASE WHEN PF1STATUS<1 THEN 0 ELSE 1 END AS P1TIPO '
                            +',CASE WHEN PF1STATUS<1 then '+QuotedStr('Orcamento Compra ')+' else '+quotedstr('Compra de Mercadorias')+' end AS TPNOME '
                            +',case when PF1STATUS<1  THEN '+QuotedStr('N')+' ELSE '+QuotedStr('E')+' end as P2ESTNOR '
                            +', SUM(PF2QTDP) AS TOTQTD '
                            +',SUM( ROUND((PF2PU*PF2QTDP),2) ) AS TOTPCOTAB '
                            +',SUM( ROUND((PF2PU*PF2QTDP),2)) AS TOTPCOVDA '
                            +',sum(NVL(PF2ICMSR,0)) AS TOTICMSR '
                            +',sum(NVL(PF2OUTRAS,0)) AS TOTOUTRAS '
                            +',sum(NVL(PF2FRERAT,0)) AS TOTFRETE '
                            +',sum(NVL(PF2IPI,0)) AS TOTIPI '
                            +',0 AS TOTII '
                            +',0 AS TOTIOF '
                            +',0 AS TOTIMP_IMP_VALOR '
                            +'FROM CADPF1,CADPF2,CADFOR '
                            +'WHERE PF2CHAVE=PF1CHAVE AND PF2LOTSEQ=PF1LOTSEQ AND PF2CODEMP=PF1CODEMP '
                            +'AND FCODFOR=PF1CODFOR ');
if edt_datmov.Date>pdatanula then
   begin
   if edt_datmov.Date>pdatanula then
      begin
      tb_pedidos_analitico.SQL.add(' and ('
                                  +fFormatdatetimeParaConsulta_semcondicao('PF1DATAENT',edt_datmov.Date)
                                  +' or ('
                                  +fFormatdatetimeParaConsulta_semcondicao('PF1DATA',edt_datmov.Date)
                                  +' and PF1DATAENT<='+quotedstr(formatdatetime(fdt, pdatanula))+') ) ');
      end;
   end;



tb_pedidos_analitico.SQL.add('GROUP BY  PF1CHAVE,PF1LOTSEQ,'
                            +' TO_DATE(case when PF1DATAENT<='+quotedstr(formatdatetime(fdt, pdatanula))
                            +'  THEN PF1DATA ELSE  PF1DATAENT END) '
                            +' ,PF1CODEMP,FRAZAO,PF1TOTLIQ '
                            +' ,CASE WHEN PF1STATUS<1 THEN 0 ELSE 1 END '
                            +',CASE WHEN PF1STATUS<1 then '+QuotedStr('Orcamento Compra ')+' else '+quotedstr('Compra de Mercadorias')+' end  '
                            +',case when PF1STATUS<1  THEN '+QuotedStr('N')+' ELSE '+QuotedStr('E')+' end  '
                            );
// comparas


// termino compras


tb_pedidos_analitico.sql.text:='Select sum(NVL(CRVALOR,0)) as TIT_TOTAL, sum(NVL(CRVALPAG,0)) as TIT_VALPAG, sum(NVL(CRDESC,0)) as TIT_DESC,'
                              +'sum(nvl(CRJUROS,0)) as TIT_JUROS, '
                              +mcampos_final
                              +' from CADDAR, ( '
                              +tb_pedidos_analitico.SQL.Text
                              +' ) PED '
                              +' where CRNPED(+)=P1CHAVE '
                              +' and CRORDEM(+)=P1ORDEM '
                              +' AND CRLOTSEQ_CP(+)=P1LOTSEQ '
                              +' group by ' + mcampos_final;


ex_erroSql_Novo(tb_pedidos_analitico,89,'SGE','CADP01');

try
   tb_pedidos_analitico.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_pedidos_analitico,89,'SGE ' + E.Message ,'CADP01');
   result:=false;
   exit;
   end;
   end;

tb_pedidos_sintetico.Close;
tb_pedidos_sintetico.sql.clear;
tb_pedidos_sintetico.sql.Add('Select EMITENTE,P1TIPO,TPNOME '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTQTD else 0 end) as TOTQTD_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTQTD else 0 end) as TOTQTD_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTPCOTAB else 0 end) as TOTPCOTAB_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTPCOTAB else 0 end) as TOTPCOTAB_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTPCOVDA else 0 end) as TOTPCOVDA_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTPCOVDA else 0 end) as TOTPCOVDA_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTICMSR else 0 end) as TOTICMSR_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTICMSR else 0 end) as TOTICMSR_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTOUTRAS else 0 end) as TOTOUTRAS_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTOUTRAS else 0 end) as TOTOUTRAS_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTFRETE else 0 end) as TOTFRETE_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTFRETE else 0 end) as TOTFRETE_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTIPI else 0 end) as TOTIPI_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTIPI else 0 end) as TOTIPI_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTII else 0 end) as TOTII_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTII else 0 end) as TOTII_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTIOF else 0 end) as TOTIOF_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTIOF else 0 end) as TOTIOF_SAI '

                            +' ,sum(case when P2ESTNOR='+QuotedStr('E')+' then TOTIMP_IMP_VALOR else 0 end) as TOTIMP_IMP_VALOR_ENT '
                            +' ,sum(case when P2ESTNOR='+QuotedStr('S')+' then TOTIMP_IMP_VALOR else 0 end) as TOTIMP_IMP_VALOR_SAI ');
tb_pedidos_sintetico.sql.add(' from ('+ tb_pedidos_analitico.SQL.Text+')'
                            +' group by EMITENTE,P1TIPO,TPNOME');





try
   tb_pedidos_sintetico.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(tb_pedidos_sintetico,142,'SGE','CADP01');
   result:=false;
   exit;
   end;
   end;

end;


procedure TFrm_ResumoDiario.bbImprimirClick(Sender: TObject);
begin
if fLerPedidos then
   begin
   RLReport1.PreviewModal;
   fAdicionarInicio;
   end;

end;
procedure TFrm_ResumoDiario.fAdicionarInicio;
begin
if cds_datamov.Active=false then
   cds_datamov.Open;
cds_datamov.EmptyDataSet;
cds_datamov.append;
cds_datamovDATAMOV.Value:=edt_datmov.Date;
cds_datamovQTDEST.Value :=edt_datmov.Date;



end;

procedure TFrm_ResumoDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_ResumoDiario.FormCreate(Sender: TObject);
begin
tsRelatorio.TabVisible:=false;

end;

end.
