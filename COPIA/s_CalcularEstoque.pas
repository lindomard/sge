unit s_CalcularEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons, DB, DBTables,
  Grids, DBGrids;

type
  TFrm_CalcularEstoque = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edt_cadlgc: TEdit;
    Label3: TLabel;
    edt_cadlgc_novo: TEdit;
    Label4: TLabel;
    edt_datini: TDateEdit;
    bbCalcular: TBitBtn;
    bbSalvar: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    qr_estoque: TQuery;
    Label5: TLabel;
    edt_datfin: TDateEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure bbCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
  private
    { Private declarations }
    function fInstrucaoSql: String;

  public
    { Public declarations }
  end;

var
  Frm_CalcularEstoque: TFrm_CalcularEstoque;

implementation

uses S_DM1, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_CalcularEstoque.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CalcularEstoque.bbCalcularClick(Sender: TObject);
var
mInstrucao: String;

begin
mInstrucao:=fInstrucaoSql;

qr_estoque.Close;
qr_estoque.sql.clear;
qr_estoque.sql.Add('Select TABELA.*, PDNOME,PDMARCA,PDUND from ('
                  +mInstrucao
                  +') TABELA,CADPRO where PDCODPRO=CLCODPRO '
                  +' order by PDNOME ');
qr_estoque.parambyname('DATAINV_ORIGEM').asdatetime:=edt_datini.date;
qr_estoque.parambyname('DATAINV_NOVO').asdatetime  :=edt_datfin.date;
try
   qr_estoque.open;
except on e : exception do
   ex_erroSql_Novo(qr_estoque,175,'CADOP01 '+e.Message ,'CADVER');
   end;

end;

procedure TFrm_CalcularEstoque.FormCreate(Sender: TObject);
begin
edt_datfin.date:=date;
end;

function tFrm_CalcularEstoque.fInstrucaoSql: String;
var
mRetorno: string;
begin
qr_estoque.close;
qr_estoque.SQL.Clear;
qr_estoque.sql.add('Select CLCODEMP,CLCODPRO,CLNUMERO,CLDTVCTO,CLFILIAL '
                  +',CLQTD AS ESTCADLGC_INICIAL  '
                  +',0 AS QTDSAI_PED02 '
                  +',0 AS QTDENT_PED02 '
                  +',0 AS QTDENT_PF2 '
                  +',0 AS QTDSAI_AJU '
                  +',0 AS QTDENT_AJU '
                  +',0 AS QTDENT_PROD '
                  +',0 AS QTDSAI_PROD  '
                  +' from '+edt_cadlgc.Text);

qr_estoque.sql.add('union all '
                  +' Select min(P1CODEMP) AS CLCODEMP,P2CODPRO AS CLCODPRO,P2LM_LOTE AS CLNUMERO,P2LM_DTVCTO AS CLDTVCTO, P1FILIAL AS CLFILIAL '
                  +',0 AS ESTCADLGC_INICIAL '
                  +',sum( case when p1tipo_entsai=1 then 0 else P2LM_QTD end ) AS QTDSAI_PED02 '
                  +',sum( case when p1tipo_entsai=1 then P2LM_QTD else 0 end) AS QTDENT_PED02 '
                  +',0 AS QTDENT_PF2 '
                  +',0 AS QTDSAI_AJU '
                  +',0 AS QTDENT_AJU  '
                  +',0 AS QTDENT_PROD '
                  +',0 AS QTDSAI_PROD '
                  +' from  cadp02, cadp01,cadp02_lotes '
                  +'  where p1datap>:DATAINV_ORIGEM '
                  +'  and P1DATAP<:DATAINV_NOVO'
                 +'   and p1tipo>0 and p1status<'+mstatus_excluido+' and p1tipo<>10 '
                  +' and p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotseq and p1ordem=p2ordem '
                  +' and p2lm_chave=p2chave and p2lm_codemp=p2codemp and p2lm_lotseq =p2lotseq and p2lm_item=p2item '

                 +' group by p2codpro,P2LM_LOTE,P2LM_DTVCTO,P1FILIAL ');



qr_estoque.sql.add('union all '
                  +' Select min(PF1CODEMP) AS CLCODEMP,PF2CODPRO AS CLCODPRO,PF2L_LOTE AS CLNUMERO,PF2L_DTVCTO AS CLDTVCTO, PF1FILIAL AS CLFILIAL '
                  +',0 AS ESTCADLGC_INICIAL '
                  +',0 AS QTDSAI_PED02 '
                  +',0 AS QTDENT_PED02 '
                  +',sum(PF2L_QTD) AS QTDENT_PF2 '
                  +',0 AS QTDSAI_AJU '
                  +',0 AS QTDENT_AJU '
                  +',0 AS QTDENT_PROD '
                  +',0 AS QTDSAI_PROD '
                  +'  from cadpf2, cadpf1,CADPF2_LOTES_ORC '
                  +'  where pf1codemp=pf2codemp and pf1chave=pf2chave and pf1lotseq=pf2lotseq '
                  +'  and pf2l_codemp=pf2codemp and pf2l_chave=pf2chave and pf2l_lotseq=pf2lotseq  and pf2l_item=pf2item '
                  +'  and PF1STATUS>0 and PF1STATUS<8 and PF1TIPO<2 and PF1DATAENT>:DATAINV_ORIGEM '
                  +'  and PF1DATAENT<:DATAINV_NOVO '
                  +'  group by  pf2codpro,PF2L_LOTE,PF2L_DTVCTO,PF1FILIAL ');


qr_estoque.sql.add('union all '
                  +' Select min(AJCODEMP) AS CLCODEMP,AJCODPRO AS CLCODPRO,AJLOTE AS CLNUMERO,AJDATAV AS CLDTVCTO, AJFILIAL AS CLFILIAL '
                  +',0 AS ESTCADLGC_INICIAL '
                  +',0 AS QTDSAI_PED02 '
                  +',0 AS QTDENT_PED02 '
                  +',0 AS QTDENT_PF2 '
                  +',sum(case when AJTIPOM=0 THEN 0 else AJQTD end) AS QTDSAI_AJU '
                  +',sum(case when AJTIPOM=0 THEN AJQTD else 0 end) AS QTDENT_AJU '
                  +',0 AS QTDENT_PROD '
                  +',0 AS QTDSAI_PROD  '
                  +'  from cadaju '
                  +'  where AJDATA>:DATAINV_ORIGEM '
                  +'  and AJDATA<:DATAINV_NOVO '
                  +'  group by  AJcodpro,AJLOTE,AJDATAV,AJFILIAL ');




qr_estoque.sql.add(' union all '
                  +' Select min(OP1_CODEMP) AS CLCODEMP,OP2_CODPRO AS CLCODPRO,OP1_LOTE AS CLNUMERO,OP1_DATAVEN AS CLDTVCTO, 1 AS CLFILIAL '
                  +',0 AS ESTCADLGC_INICIAL '
                  +',0 AS QTDSAI_PED02 '
                  +',0 AS QTDENT_PED02 '
                  +',0 AS QTDENT_PF2 '
                  +',0 AS QTDSAI_AJU '
                  +',0 AS QTDENT_AJU '
                  +',sum(OP2_QTDPREV) AS QTDENT_PROD '
                  +',0 AS QTDSAI_PROD  '
                  +'  from cadop01,cadop02 '
                  +'  where OP1_FABENV=1 and  op2_codemp=op1_codemp '
                   +' and OP2_LOTSEQ=OP1_LOTSEQ '
                   +' and OP2_CODIGO=OP1_CODIGO '
                  +'  and OP1_STATUS>1 and op1_data>:DATAINV_ORIGEM '
                  +'  and OP1_DATA<:DATAINV_NOVO '
                  +'  group by  OP2_CODPRO,OP1_LOTE,OP1_DATAVEN ');


qr_estoque.sql.add(' union all '
                  +' Select min(OP1_CODEMP) AS CLCODEMP,OP3_CODMAT AS CLCODPRO,OP3_LOTE AS CLNUMERO,OP3_DTVCTO AS CLDTVCTO, 1 AS CLFILIAL '
                  +',0 AS ESTCADLGC_INICIAL '
                  +',0 AS QTDSAI_PED02 '
                  +',0 AS QTDENT_PED02 '
                  +',0 AS QTDENT_PF2 '
                  +',0 AS QTDSAI_AJU '
                  +',0 AS QTDENT_AJU '
                  +',0 AS QTDENT_PROD '
                  +',sum(OP3_QTDPREV) as QTDSAI_PROD '
                  +'  from cadop01,cadop03 '
                  +'  where OP1_FABENV=1 and  op3_codemp=op1_codemp '
                   +' and OP3_LOTSEQ=OP1_LOTSEQ '
                   +' and OP3_CODIGO=OP1_CODIGO '
                  +'  and OP1_STATUS>1 and op1_data>:DATAINV_ORIGEM '
                  +'  and OP1_DATA<:DATAINV_NOVO '
                  +'  group by  OP3_CODMAT,OP3_LOTE,OP3_DTVCTO ');

qr_estoque.parambyname('DATAINV_ORIGEM').asdatetime:=edt_datini.date;
qr_estoque.parambyname('DATAINV_NOVO').asdatetime  :=edt_datfin.date;

QR_ESTOQUE.sql.text:='Select 1 as CLCODEMP,CLCODPRO,CLNUMERO,CLDTVCTO,CLFILIAL'
                    +',sum(ESTCADLGC_INICIAL) as ESTCADLGC_INICIAL '
                    +',sum(QTDSAI_PED02) AS QTDSAI_PED02 '
                    +',sum(QTDENT_PED02) as QTDENT_PED02 '
                    +',sum(QTDENT_PF2) as QTDENT_PF2 '
                    +',sum(QTDSAI_AJU) AS QTDSAI_AJU '
                    +',sum(QTDENT_AJU) AS QTDENT_AJU '
                    +',sum(QTDENT_PROD) AS QTDENT_PROD '
                    +',sum(QTDSAI_PROD) AS QTDSAI_PROD '
                    +' from ('
                    +qr_estoque.sql.text
                    +') NOVOCADLGC '
                    +' GROUP BY CLCODPRO,CLNUMERO,CLDTVCTO,CLFILIAL ';
QR_ESTOQUE.sql.text:='Select NOVOOK.* '
                    +',(ESTCADLGC_INICIAL - (QTDSAI_PED02+QTDSAI_AJU+QTDSAI_PROD) '
                    +' + (QTDENT_PED02+QTDENT_AJU+QTDENT_PF2+QTDENT_PROD) ) AS SALDO_NOVO '
                    +' from ('
                    +qr_estoque.sql.text
                    +') NOVOOK ';
result:=qr_estoque.SQL.Text;

end;
procedure TFrm_CalcularEstoque.bbSalvarClick(Sender: TObject);
var
query_lgc: TQuery;
begin
query_lgc:=TQuery.create(nil);
query_lgc.databasename:=DM1.SG_ASSOC.DatabaseName;
query_lgc.SQL.Add('Select count(*) from user_tab_columns where table_name=:nometab');
query_lgc.ParamByName('nometab').AsString:=edt_cadlgc_novo.Text;
try
   query_lgc.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_lgc,175,edt_cadlgc_novo.Text+e.Message ,'CADVER');
   freeandnil(query_lgc);
   exit;
   end;
   end;
if query_lgc.fields[0].asinteger>0 then
   begin
   query_lgc.close;
   query_lgc.sql.clear;
   query_lgc.sql.add('drop table '+edt_cadlgc_novo.text);
   try
      query_lgc.execsql;
      fdm1startcommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_lgc,175,edt_cadlgc_novo.Text+e.Message ,'CADVER');
      freeandnil(query_lgc);
      exit;
      end;
      end;
   end;
query_lgc.close;
query_lgc.SQL.Clear;
query_lgc.SQL.add('create table '+edt_cadlgc_novo.Text
                 +'(  CLCODEMP        NUMBER(10), '
                 +'  CLCODPRO        NUMBER(14),  CLDTVCTO        DATE, '
                 +'  CLDTENTRADA     DATE,  CLNUMERO        VARCHAR2(20), '
                 +'  CLLOTE_RE       VARCHAR2(20),  CLQTD           NUMBER, '
                 +'  CLQTD_PRAT      NUMBER,  CLQTD_DEP       NUMBER, '
                 +'  CLQTD_REP       NUMBER,  CLQTDR          NUMBER, '
                 +'  CLQTDT          NUMBER,  CLQTDC          NUMBER, '
                 +'  CLPRECO1        NUMBER,  CLPRECO2        NUMBER, '
                 +'  CLPRECO3        NUMBER,  CLPRECOA1       NUMBER, '
                 +'  CLPRECOA2       NUMBER,  CLPRECOA3       NUMBER, '
                 +'  CLPCUSTO        NUMBER,  CLESTMAX        NUMBER, '
                 +'  CLESTMIN        NUMBER,  CLDTUATP1       DATE, '
                 +'  CLDTUATP2       DATE,  CLDTUATP3       DATE, '
                 +'  CLFILIAL        NUMBER,  CLQTD_ANALISE   NUMBER, '
                 +'  CLQTD_RESERVADO NUMBER ) ');
try
   query_lgc.execsql;
   fdm1startcommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_lgc,175,edt_cadlgc_novo.Text+e.Message ,'CADVER');
   freeandnil(query_lgc);
   exit;
   end;
   end;



query_lgc.close;
query_lgc.SQL.Clear;
query_lgc.SQL.add('Insert into '+edt_cadlgc_novo.Text+' (');
query_lgc.SQL.add(' CLCODEMP '
                 +',CLCODPRO '
                 +',CLDTVCTO '
                 +',CLNUMERO '
                 +',CLQTD  '
                 +',CLFILIAL '

                 +',CLQTD_PRAT '
                 +' , CLQTD_DEP '
                 +'  , CLQTD_REP '
                 +'  , CLQTDR '
                 +'  , CLQTDT '
                 +'  , CLQTDC '
                 +'  , CLPRECO1 '
                 +'  , CLPRECO2 '
                 +'  , CLPRECO3 '
                 +'  , CLPRECOA1 '
                 +'  , CLPRECOA2 '
                 +'  , CLPRECOA3 '
                 +'  , CLPCUSTO '
                 +'  , CLESTMAX '
                 +'  , CLESTMIN '
                 +'  , CLQTD_ANALISE '
                 +'  , CLQTD_RESERVADO '


                 +') '
                 +'select CLCODEMP '
                 +',CLCODPRO '
                 +',CLDTVCTO '
                 +',CLNUMERO '
                 +',SALDO_NOVO AS CLQTD  '
                 +',CLFILIAL '

                 +',0 AS CLQTD_PRAT '
                 +' ,0 AS  CLQTD_DEP '
                 +'  , 0 AS CLQTD_REP '
                 +'  ,0 AS  CLQTDR '
                 +'  , 0 AS CLQTDT '
                 +'  ,0 AS  CLQTDC '
                 +'  ,0 AS  CLPRECO1 '
                 +'  ,0 AS  CLPRECO2 '
                 +'  ,0 AS  CLPRECO3 '
                 +'  ,0 AS  CLPRECOA1 '
                 +'  ,0 AS  CLPRECOA2 '
                 +'  ,0 AS  CLPRECOA3 '
                 +'  ,0 AS  CLPCUSTO '
                 +'  ,0 AS  CLESTMAX '
                 +'  ,0 AS  CLESTMIN '
                 +'  ,0 AS  CLQTD_ANALISE '
                 +'  ,0 AS  CLQTD_RESERVADO '



                 +' from ('
                 +fInstrucaoSql
                 +') estenovo ');

query_lgc.parambyname('DATAINV_ORIGEM').asdatetime:=edt_datini.date;
query_lgc.parambyname('DATAINV_NOVO').asdatetime  :=edt_datfin.date;

try
   query_lgc.execsql;
   fdm1startcommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_lgc,175,edt_cadlgc_novo.Text+e.Message ,'CADVER');
   freeandnil(query_lgc);
   exit;
   end;
   end;
freeandnil(query_lgc);
MessageDlg('Tabela '+edt_cadlgc_novo.Text+' criada!',mtWarning,[mbOk],0);

end;

end.
