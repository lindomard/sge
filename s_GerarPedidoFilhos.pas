unit s_GerarPedidoFilhos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons,
  DBClient;

type
  TFrm_GerarPedidoFilhos = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_chave_ori: TEdit;
    edt_valor: TEdit;
    edt_datped: TEdit;
    edt_razsoc: TEdit;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    gb_itens_filhos: TGroupBox;
    src_ped02: TDataSource;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    qr_ped02: TQuery;
    u_ped02: TUpdateSQL;
    qr_ped02P2CODEMP: TFloatField;
    qr_ped02P2LOTSEQ: TFloatField;
    qr_ped02P2CHAVE: TFloatField;
    qr_ped02P2ORDEM: TFloatField;
    qr_ped02P2CODPRO: TFloatField;
    qr_ped02P2PRECO: TFloatField;
    qr_ped02P2ITEM: TFloatField;
    qr_ped02QTD_VDA: TFloatField;
    qr_ped02TOTDES: TFloatField;
    qr_ped02TOTLIQ: TFloatField;
    qr_ped02QTD_FAT: TFloatField;
    qr_ped02QTD_PEND: TFloatField;
    qr_ped02PDNOME: TStringField;
    qr_ped02PDUND: TStringField;
    qr_ped02QTD_FATURAR: TFloatField;
    bbZerarAFaturar: TBitBtn;
    bbFaturarPendentes: TBitBtn;
    src_ped02_faturado: TDataSource;
    qr_ped02_faturado: TQuery;
    src_ped01_faturado: TDataSource;
    qr_ped01_faturado: TQuery;
    DBGrid_ped01_faturado: TDBGrid;
    DBGrid2: TDBGrid;
    qr_ped01_faturadoP1CHAVE: TFloatField;
    qr_ped01_faturadoP1TOTALL: TFloatField;
    qr_ped01_faturadoP1LOTSEQ: TFloatField;
    qr_ped01_faturadoP1CODEMP: TFloatField;
    qr_ped01_faturadoP1DATAP: TDateTimeField;
    qr_ped02_faturadoP2CODPRO: TFloatField;
    qr_ped02_faturadoP2QTD: TFloatField;
    qr_ped02_faturadoP2ITEM: TFloatField;
    qr_ped02_faturadoPDNOME: TStringField;
    qr_ped02_faturadoPDUND: TStringField;
    qr_ped02_faturadoP2CHAVE: TFloatField;
    qr_ped02_faturadoP2CODEMP: TFloatField;
    qr_ped02_faturadoP2LOTSEQ: TFloatField;
    BBnFechar: TBitBtn;
    bbFaturar: TBitBtn;
    cds_aliquotas: TClientDataSet;
    cds_aliquotastipo_reg: TIntegerField;
    cds_aliquotasal_tabicm: TStringField;
    cds_aliquotasal_aliqredut: TFloatField;
    cds_aliquotasal_IcmsTrib: TFloatField;
    cds_aliquotasal_icmsRet: TIntegerField;
    cds_aliquotasal_stIcmsCred: TFloatField;
    cds_aliquotasal_stIcmsDeb: TFloatField;
    cds_aliquotasal_stIVA_Ina: TFloatField;
    cds_aliquotasal_stIVA_Neg: TFloatField;
    cds_aliquotasCfo_Indus_Ret: TIntegerField;
    cds_aliquotasCfo_Indus_Trib: TIntegerField;
    cds_aliquotasCfo_Indus_Isento: TIntegerField;
    cds_aliquotasCfo_rev_Ret: TIntegerField;
    cds_aliquotasCfo_rev_Trib: TIntegerField;
    cds_aliquotasCfo_rev_Isento: TIntegerField;
    cds_aliquotasCfo_SubEcf_Ret: TIntegerField;
    cds_aliquotasCfo_SubEcf_Trib: TIntegerField;
    cds_aliquotasCfo_SubEcf_Isento: TIntegerField;
    cds_aliquotasal_cofins: TFloatField;
    cds_aliquotasmodBcST: TIntegerField;
    cds_aliquotasal_stAliqRed: TFloatField;
    cds_aliquotasal_inss: TFloatField;
    cds_aliquotasal_inss_pred: TFloatField;
    cds_aliquotasal_irrf: TFloatField;
    cds_aliquotasal_irrf_pred: TFloatField;
    cds_aliquotasal_repasse: TFloatField;
    cds_aliquotasal_issqn: TFloatField;
    cds_aliquotascfo_servico: TIntegerField;
    cds_aliquotasal_pis: TFloatField;
    cds_aliquotasal_credsn: TFloatField;
    cds_aliquotasal_stIVA_Pos: TFloatField;
    cds_aliquotasal_combate_pobreza: TFloatField;
    cds_aliquotasal_icmscred_destino: TFloatField;
    cds_aliquotasal_icms_destino: TFloatField;
    src_aliquotas: TDataSource;
    tb_ped02_pre: TClientDataSet;
    tb_ped02_preP2ICMS_PERC: TFloatField;
    tb_ped02_preP2ICMS_PPRED: TFloatField;
    tb_ped02_preP2ICMSSN_PERC: TFloatField;
    tb_ped02_preP2ST_IVA: TFloatField;
    tb_ped02_preP2ST_REDUT: TFloatField;
    tb_ped02_preP2ST_ICMSCRED: TFloatField;
    tb_ped02_preP2ST_ICMSDEB: TFloatField;
    tb_ped02_preP2MODBCST: TIntegerField;
    tb_ped02_preP2IPI_PERC: TFloatField;
    tb_ped02_preP2CST: TStringField;
    tb_ped02_preP2CSOSN_ORI: TIntegerField;
    tb_ped02_preP2CSOSN: TIntegerField;
    tb_ped02_preP2PIS_PERC: TFloatField;
    tb_ped02_preP2CST_PIS: TStringField;
    tb_ped02_preP2CST_COFINS: TStringField;
    tb_ped02_preP2COFINS_PERC: TFloatField;
    tb_ped02_preP2CONTESP: TIntegerField;
    tb_ped02_preP2CODPRO: TFloatField;
    tb_ped02_preP2ICMS_PPRED_101: TFloatField;
    tb_ped02_preP2ST_IVA_101: TFloatField;
    tb_ped02_preP2ST_REDUT_101: TFloatField;
    tb_ped02_preP2ST_ICMSCRED_101: TFloatField;
    tb_ped02_preP2ST_ICMSDEB_101: TFloatField;
    tb_ped02_preP2MODBCST_101: TFloatField;
    tb_ped02_preP2CFOP_ECF: TIntegerField;
    tb_ped02_preP2CFOP_NF: TIntegerField;
    tb_ped02_preP2PRECO_MAXCONS: TFloatField;
    tb_ped02_preP2QTD: TFloatField;
    tb_ped02_preP2CODEMP: TIntegerField;
    tb_ped02_preP2LOTSEQ: TIntegerField;
    tb_ped02_preP2CHAVE: TIntegerField;
    tb_ped02_preP2ORDEM: TIntegerField;
    tb_ped02_preP2PRECO: TFloatField;
    tb_ped02_preP2ITEM: TIntegerField;
    tb_ped02_preP2CONS_PROPRIO: TIntegerField;
    tb_ped02_prePDNOME: TStringField;
    tb_ped02_preP2DESCPR: TFloatField;
    tb_ped02_preP2PCOMIS: TFloatField;
    tb_ped02_preP2CODVEN: TFloatField;
    tb_ped02_preP2CST_IPI: TStringField;
    tb_ped02_preP2DESCFIN_PERC: TFloatField;
    tb_ped02_preP2AMBIENTE: TStringField;
    tb_ped02_preP2DESC_COMP: TStringField;
    tb_ped02_preP2PROMOCAO: TStringField;
    tb_ped02_preP2DESC_PERC01: TFloatField;
    tb_ped02_preP2DESC_PERC02: TFloatField;
    tb_ped02_preP2DESC_PERC03: TFloatField;
    tb_ped02_preP2VALDES: TFloatField;
    tb_ped02_preP2TIPO_PCO: TIntegerField;
    tb_ped02_preP2ICMS_ALIPI: TFloatField;
    tb_ped02_preP2ALIQICMSDES: TFloatField;
    tb_ped02_preP2ALIQAPROXTRIB: TFloatField;
    tb_ped02_preP2COMPRA_NITEMPED: TIntegerField;
    tb_ped02_preP2COMPRA_XPED: TStringField;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    tb_ped02_preP2CEST: TStringField;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    qr_ped02P2DESC1: TFloatField;
    qr_ped02P2DESC2: TFloatField;
    qr_ped02P2DESC3: TFloatField;
    qr_ped02P2VALDES: TFloatField;
    cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField;
    tb_ped02_preP2IRRF_PERC: TFloatField;
    tb_ped02_preP2IRRF_VALOR: TFloatField;
    tb_ped02_preP2CSLL_PERC: TFloatField;
    tb_ped02_preP2CSLL_VALOR: TFloatField;
    cds_aliquotasrequer_pedori: TIntegerField;
    cds_aliquotasal_IcmsTribDesonera: TFloatField;
    tb_ped02_preP2MOTIVODESONERACAO: TFloatField;
    cds_aliquotasal_cbs: TFloatField;
    cds_aliquotasal_ibs_mun: TFloatField;
    cds_aliquotasal_ibs_uf: TFloatField;
    tb_ped02_preP2CBS_CST: TStringField;
    tb_ped02_preP2CODCLASSTRIB: TStringField;
    tb_ped02_preP2CBS_ALIQ: TFloatField;
    tb_ped02_preP2IBS_UF_ALIQ: TFloatField;
    tb_ped02_preP2IBS_MUN_ALIQ: TFloatField;
    tb_ped02_preP2NRECEITUARIO: TStringField;
    procedure bbFaturarPendentesClick(Sender: TObject);
    procedure bbZerarAFaturarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure src_ped01_faturadoDataChange(Sender: TObject; Field: TField);
    procedure qr_ped02BeforePost(DataSet: TDataSet);
    procedure BBnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbFaturarClick(Sender: TObject);
  private
    { Private declarations }

    function fLerPendencias(pMarcar: boolean): boolean;


    function fLerCadp01Faturado: boolean;

    function fLerCadp02Faturado: boolean;


    function fFaturar: boolean;


    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;

  public
     mchave_ori: integer;
     mCodcli_ori: Real;
     mchave_ano_ori: integer;
     mcodemp_ori: integer;

     mCodven_ori: integer;
     mFrete_CIFFOB: Integer;


    { Public declarations }
  end;

var
  Frm_GerarPedidoFilhos: TFrm_GerarPedidoFilhos;

implementation

uses S_DM1, Func, func_excecoes, lerarq, S_Vendas_GravarPedido;

{$R *.dfm}



function TFrm_GerarPedidoFilhos.fLerPendencias(pMarcar: boolean): boolean;
var
mQtdFaturar: String;
begin

if pMarcar then
   mQtdFaturar:='case when (QTD_VDA-QTD_FAT) <1 then 0 else (QTD_VDA-QTD_FAT) end'
else
   mQtdFaturar:=' 0 ';


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');

Qr_ped02.close;
Qr_ped02.Sql.clear;
Qr_Ped02.Sql.add('SELECT T1.*, case when (QTD_VDA-QTD_FAT) <1 then 0 '
                +'                  else (QTD_VDA-QTD_FAT) end AS QTD_PEND '
                +',' + mQtdFaturar+'  AS QTD_FATURAR '
                +',PDNOME,PDUND '
                +' from ( '
                +' select   P2CODEMP,   P2LOTSEQ,  P2CHAVE,   P2ORDEM, '
                +'  P2CODPRO,  max(P2PRECO) AS P2PRECO, '
                +'  max(P2DESC1) AS P2DESC1, '
                +'  max(P2DESC2) AS P2DESC2, '
                +'  max(P2DESC3) AS P2DESC3, '
                +'  sum(P2VALDES) AS P2VALDES, '


                +' max(P2ITEM) AS P2ITEM, '
                +'  sum(P2QTD) AS QTD_VDA,  sum(P2TOTDES) AS TOTDES, '
                +'  sum(P2TOTLIQ) AS TOTLIQ  '
                +' ,NVL(((select sum(P2QTD) from CADP01_FILHOS,CADP02 DENTRO '
                +'   WHERE PF_CHAVE_PAI=' + inttostr(mchave_ori)
                +' AND PF_CHAVE_ANO_PAI='+IntToStr(mchave_ano_ori)
                +' AND (PF_CODEMP_PAI=' + inttostr(mcodemp_ori)+' OR PF_CODEMP_FILHO='+inttostr( iif(mcodemp_ori>100, mcodemp_ori-100, mcodemp_ori+100))+' )'
                +' AND DENTRO.P2CODPRO=FORA.P2CODPRO '
                +'   AND DENTRO.P2CHAVE=PF_CHAVE_FILHO AND DENTRO.P2LOTSEQ=PF_CHAVE_ANO_FILHO AND DENTRO.P2CODEMP='+inttostr(mcodemp_ori)+')),0) AS QTD_FAT '
                +'  from CADP02 FORA WHERE P2CHAVE='+inttostr(mchave_ori)
                +' and P2LOTSEQ='+inttostr(mchave_ano_ori)
                +' and P2CODEMP='+inttostr(mcodemp_ori)
                +' GROUP BY '
                +'   P2CODEMP,  P2LOTSEQ,  P2CHAVE,  P2ORDEM, '
                +'  P2CODPRO) t1 ' +
                iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                +' WHERE 1=1 '
                +iif(la_instrucao='','',' and ')+la_instrucao
                +' ORDER BY P2ITEM ');
try
   Qr_ped02.open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_ped02,103,'SGE','CADP01_FILHOS');
   result:=false;
   end;
   end;



end;

procedure TFrm_GerarPedidoFilhos.bbFaturarPendentesClick(Sender: TObject);
begin
fLerPendencias(true);

end;

procedure TFrm_GerarPedidoFilhos.bbZerarAFaturarClick(Sender: TObject);
begin
fLerPendencias(false);

end;



function TFrm_GerarPedidoFilhos.fLerCadp01Faturado: boolean;
begin
qr_ped02_faturado.DisableControls;
qr_ped01_faturado.close;
qr_ped01_faturado.SQL.clear;
qr_ped01_faturado.SQL.add('select P1CHAVE,P1LOTSEQ,P1CODEMP,P1TOTALL,P1DATAP FROM CADP01_FILHOS,CADP01 '
                         +' WHERE  PF_CHAVE_PAI='+inttostr(mchave_ori)+' AND PF_CHAVE_ANO_PAI='+inttostr(mchave_ano_ori)
                         +' AND (PF_CODEMP_PAI='+inttostr(mcodemp_ori)
                         +' OR PF_CODEMP_PAI='+inttostr(mcodemp_ori + iif(mcodemp_ori>100,-100,100))+' ) '
                         +'  AND P1CHAVE=PF_CHAVE_FILHO AND P1LOTSEQ=PF_CHAVE_ANO_FILHO AND P1CODEMP='+inttostr(mcodemp_ori)
                         +' and P1STATUS<8 ');

try
   qr_ped01_faturado.open;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_ped01_faturado,176,'SGE','CADP01_FILHOS');
   result:=false;
   end;
   end;
qr_ped02_faturado.EnableControls;


end;
procedure TFrm_GerarPedidoFilhos.FormShow(Sender: TObject);
begin
bbFaturarPendentesClick(self);
fLerCadp01Faturado;

end;



function TFrm_GerarPedidoFilhos.fLerCadp02Faturado: boolean;
begin
if (not qr_ped01_faturadoP1CHAVE.isnull) then
   begin
   gb_itens_filhos.Caption:='Itens do Pedido '+qr_ped01_faturadoP1CHAVE.AsString;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');

   qr_ped02_faturado.close;
   qr_ped02_faturado.sql.clear;
   qr_ped02_faturado.sql.add('select   P2CHAVE,P2CODEMP,P2LOTSEQ, P2CODPRO,  P2QTD,  P2ITEM, '
                            +'  PDNOME,PDUND FROM CADP02 '
                   +iif(la_tabelas='','',',')+la_tabelas
                              +'       '+la_Join
                   +' WHERE 1=1 '
                   +iif(la_instrucao='','',' and ')+la_instrucao
                            +'  and P2CHAVE='+qr_ped01_faturadoP1CHAVE.AsString
                            +' and P2CODEMP='+qr_ped01_faturadoP1CODEMP.AsString
                            +' and P2LOTSEQ='+qr_ped01_faturadoP1LOTSEQ.AsString
                            );

   try
      qr_ped02_faturado.open;
      result:=true;
   except on e : exception do
      begin
      ex_erroSql_Novo(qr_ped02_faturado,221,'SGE','CADP02_FILHOS');
      result:=false;
      end;
      end;
   end;

end;

procedure TFrm_GerarPedidoFilhos.src_ped01_faturadoDataChange(
  Sender: TObject; Field: TField);
begin
if  (qr_ped01_faturado.Active=true) and  (  (qr_ped02_faturado.Active=false ) or
   (qr_ped02_faturadoP2CHAVE.AsInteger<>qr_ped01_faturadoP1CHAVE.AsInteger) or
    (qr_ped02_faturadoP2LOTSEQ.AsInteger<>qr_ped01_faturadoP1LOTSEQ.AsInteger) ) then
    fLerCadp02Faturado();
end;

procedure TFrm_GerarPedidoFilhos.qr_ped02BeforePost(DataSet: TDataSet);
begin
if (qr_ped02QTD_FATURAR.AsFloat<0) then
   begin
   MessageDlg('Quantidade a Faturar Não Pode Ser Negativa!',mtWarning,[mbOk],0);
   abort;
   end
else if (qr_ped02QTD_FATURAR.AsFloat>qr_ped02QTD_PEND.AsFloat) then
   begin
   MessageDlg('Quantidade a Faturar Não Pode Ser maior que '+ qr_ped02QTD_PEND.AsString+'!',mtWarning,[mbOk],0);
   abort;
   end;
   
end;

procedure TFrm_GerarPedidoFilhos.BBnFecharClick(Sender: TObject);
begin
close;
end;

function TFrm_GerarPedidoFilhos.fFaturar: boolean;
var
mQtdFat: integer;
begin
mQtdFat:=0;
qr_ped02.DisableControls;
qr_ped02.First;
While not qr_ped02.Eof do
   begin
   if qr_ped02QTD_FATURAR.AsFloat>0 then
      mQtdFat:=mQtdFat+1;
   qr_ped02.Next;
   end;
qr_ped02.EnableControls;

if mQtdFat<=0 then
   begin
   result :=  false;
   exit;
   end;

fFaturarPedido_ultimo(0);

bbFaturarPendentesClick(self);
fLerCadp01Faturado;


end;



function TFrm_GerarPedidoFilhos.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
mVenda_GP: TFrm_Vendas_GravarPedido;
mQtdPed: Real;
mDesconto: Real;

Query_Cons:TQuery;
mDadosParametros: tDadosParametros;

query_exe: TQuery;

mItemPed: Integer;
mPed_UF_Cli            : String;
mPed_Cli_RazSoc        : String;
mPed_Cli_ConsFin       : Boolean;
mPed_Cli_Revenda_Cp    : Boolean;
mPed_Cli_ST            : Boolean;
mPed_Cli_icmsnr        : Boolean;
mPed_Cli_MotDes        : Integer;
mPed_Cli_REDICMSNOR    : Boolean;
mPed_CliCalcIPI        : Boolean;
mSeq_Item: Integer;
begin

Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
cds_aliquotas.EmptyDataSet;
fParametrosAliquotas(mCodcli_ori
,0 // tipo do pedido
,mPed_UF_Cli
,mPed_Cli_RazSoc
,mVenda_GP.mPd_EstNor
,mVenda_GP.mPd_EstCons
,mVenda_GP.mPd_EstTerc
,mVenda_GP.mPd_EstVenda
,mPed_Cli_MotDes
,mPed_Cli_ConsFin
,mPed_Cli_Revenda_CP
,mPed_CliCalcIPI
,mPed_Cli_ST
,mPed_Cli_REDICMSNOR
,mPed_Cli_icmsnr
,cds_aliquotas);


mVenda_GP.mPed1_Codemp:=1;
mvenda_gp.mped1_Chave:=0;
mVenda_GP.mPed1_CodCli:=mCodcli_ori;
mVenda_GP.mPed1_Datap :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
mVenda_GP.mPed1_Tipo_Ped:=0;
mVenda_GP.mPed1_CodFP:=0;
mVenda_GP.mPed1_NomFP:='';
mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_CodPV:=1;
mVenda_GP.mPed1_PvaCtd:=0;
mVenda_GP.mPed1_TabPV:='AV';
mVenda_GP.mPed1_TpComis:=0;
mVenda_GP.mPed1_Codven:=mCodven_ori;
mVenda_GP.mped1_submod_grav:=0;
mVenda_GP.mPed1_cfop1:=5101;
mVenda_GP.mPed1_cfop2:=5101;
flcadcli(1,0,floattostr(mCodcli_ori));
mVenda_GP.mPed1_Frete_CIFFOB :=DM1.Tb_CliCFRETEPC.AsInteger;
IF mVenda_GP.mPed1_Frete_CIFFOB<0 then
   mVenda_GP.mPed1_Frete_CIFFOB:=3;



mVenda_GP.mPed1_CodTra:=0;
mVenda_GP.mPed1_AjustaFP:='S';

if not flcadpv(1,0,'AV','01') then
  flcadpv(1,0,'AP','01');
if DM1.Tb_PV.IsEmpty then
  flcadpv(0,1,'','');
mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
mVenda_GP.mPed1_PvaCtd:=DM1.Tb_PVPVACTD.AsFloat;
mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
mVenda_GP.mPed1_TpComis:=DM1.Tb_PVPVTPC.AsInteger;
mVenda_GP.mped1_tppco:=2; // preco extra;
mVenda_GP.mPed1_Tabela:='1';
flcadpv2('1',DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);
DM1.Tb_PV2.First;

mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
mVenda_GP.mPed1_PrzNovos_001:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
mVenda_GP.mPed1_PrzNovos_101:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
DM1.Tb_PV2.Next;
while not DM1.Tb_PV2.Eof do
  begin
  mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
  mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
  mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
  DM1.Tb_PV2.Next;
  end;
mVenda_GP.mPed1_QtdParc_ant:=-1;
mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
mVenda_GP.mPed1_AjustaFP :='S';
mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;

mVenda_GP.mped1_npedori :=mchave_ori;

mVenda_GP.fGravarPed01(0,0);

query_exe:=TQuery.Create(self);
query_exe.DatabaseName:='SG_ASSOC';
qr_ped02.First;
mItemPed:=0;
tb_ped02_pre.CreateDataSet;
Tb_Ped02_pre.EmptyDataSet;

qr_ped02.First;
While not qr_ped02.eof do
   begin
   if qr_ped02QTD_FATURAR.AsFloat<=0 then
      begin
      qr_ped02.Next;
      continue;
      end;
{
While not qr_ped02.Eof do
   begin
   If (qr_ped02LC2_GANHOU.AsString<>'X') or ((qr_ped02LC2_QTD.asfloat-qr_ped02LC2_QTDENV.asfloat)<=0) then
      begin
      qr_ped02.Next;
      Continue;
      end;
 }

   mItemPed:=mItemPed+1;
   tb_ped02_pre.Append;
   tb_ped02_preP2CODEMP.AsInteger :=mVenda_GP.mPed1_Codemp;
   tb_ped02_preP2LOTSEQ.AsInteger :=mVenda_GP.mPed1_Chave_ano;
   tb_ped02_preP2CHAVE.AsInteger  :=mVenda_GP.mPed1_Chave;
   tb_ped02_preP2ORDEM.AsInteger  :=01;
   tb_ped02_preP2ITEM.AsInteger   :=mItemPed;
   tb_ped02_preP2CODPRO.AsFloat   :=qr_ped02P2CODPRO.AsFloat;
   tb_ped02_preP2QTD.AsFloat      :=qr_ped02QTD_FATURAR.asfloat;

   tb_ped02_preP2PRECO.AsFloat    :=qr_ped02P2PRECO.AsFloat;

   tb_ped02_preP2VALDES.AsFloat   :=qr_ped02P2VALDES.AsFloat;;
   tb_ped02_preP2CODVEN.AsInteger :=mVenda_GP.mPed1_Codven;
   fDadosFiscais(tb_ped02_preP2CODPRO.AsFloat
                ,mPed_UF_Cli
                ,mPed_Cli_ConsFin
                ,mPed_Cli_Revenda_Cp
                ,mPed_Cli_icmsnr
                ,mPed_CliCalcIPI
                ,mPed_Cli_REDICMSNOR
                ,mPed_Cli_MotDes
                ,tb_ped02_pre
                ,cds_aliquotas
                ,DM1.Tb_CliCSUPERMICRO.AsInteger
                 );


   tb_ped02_preP2DESC_PERC01.AsFloat    :=qr_ped02P2DESC1.AsFloat;
   tb_ped02_preP2DESC_PERC02.AsFloat    :=qr_ped02P2DESC2.AsFloat;
   tb_ped02_preP2DESC_PERC03.AsFloat    :=qr_ped02P2DESC2.AsFloat;
   tb_ped02_pre.Post;
   mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;

   mVenda_GP.fGravarItemCDS(0 // produto
                       ,0
                       ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                       ,mVenda_GP.mPed1_CodFP
                       ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                       ,0 //pSituacao: Integer;
                       ,'0'
                       ,mVenda_GP.mPed1_NomFP
                       ,mVenda_GP.mPed1_BaixaFP
                       ,tb_ped02_preP2QTD.AsFloat  //pQtd_Cal
                       ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                       ,DM1.Tb_ProPDPCOFAB.AsFloat //,pPrecoTab_Cal
                       ,DM1.Tb_ProPDUCPR.AsFloat // pPrecoUCPR_Cal
                       ,DM1.Tb_ProPDPRECOC.AsFloat // pPrecoCus_Cal
                       ,0 // pPrecoMax_Cal,
                       ,0
                       ,0
                       ,0
                       ,0
                       ,0
                       ,0
                       ,mDadosParametros
                       ,tb_ped02_pre);
   qr_ped02.Next;
   end;
tb_ped02_pre.Close;


Query_Cons:=TQuery.Create(nil);
Query_Cons.DatabaseName:='SG_ASSOC';


   mDadosParametros.pId_Ped02_new_ant_naoUtil :=0;

mDesconto:=0;
if mDesconto>0 then
   begin
   mvenda_gp.mPed1_Desc_Rateado:=mDesconto;

   mVenda_GP.fGravarItem(0 // produto
                        ,0
                        ,0 //p2Estoque
                        ,mVenda_GP.mPed1_CodFP
                        ,3 //apenas calcular
                        ,0 //pSituacao: Integer;
                        ,''
                        ,mVenda_GP.mPed1_NomFP
                        ,mVenda_GP.mPed1_BaixaFP
                        ,0 //pQtd_Cal
                        ,0 // pPrecoUnit_Cal
                        ,0 //,pPrecoTab_Cal
                        ,0 // pPrecoUCPR_Cal
                        ,0 // pPrecoCus_Cal
                        ,0 // pPrecoMax_Cal,
                        ,0 // qtd mQtd_Ant
                        ,0 // valfloat(edt_valseg.Text)
                        ,0 // ValFloat(edt_valfre.Text)
                        ,0 // iif(mVenda_GP.mPed1_Codemp>100,ValFloat(edt_tarban_101.Text),ValFloat(edt_tarban1.Text))
                        ,0 //  valfloat(edt_despAces.Text)
                        ,mvenda_gp.mPed1_Desc_Rateado
                        ,mDadosParametros

                        ,nil);


   end;







query_exe.close;
query_exe.sql.clear;
query_exe.sql.add('insert into CADP01_FILHOS ('
                 +'PF_CODEMP_FILHO '
                 +',PF_CHAVE_FILHO '
                 +',PF_CHAVE_ANO_FILHO '
                 +',PF_CODEMP_PAI '
                 +',PF_CHAVE_PAI '
                 +',PF_CHAVE_ANO_PAI '
                 +') values ('
                 +':PF_CODEMP_FILHO '
                 +',:PF_CHAVE_FILHO '
                 +',:PF_CHAVE_ANO_FILHO '
                 +',:PF_CODEMP_PAI '
                 +',:PF_CHAVE_PAI '
                 +',:PF_CHAVE_ANO_PAI '
                 +' ) ');
query_exe.ParamByName('PF_CODEMP_FILHO').AsInteger     := mVenda_GP.mPed1_Codemp;
query_exe.ParamByName('PF_CHAVE_FILHO').AsInteger      := mVenda_GP.mped1_Chave;
query_exe.ParamByName('PF_CHAVE_ANO_FILHO').AsInteger  := mVenda_GP.mPed1_Chave_ano;
query_exe.ParamByName('PF_CODEMP_PAI').AsInteger       := mcodemp_ori;
query_exe.ParamByName('PF_CHAVE_PAI').AsInteger        := mchave_ori;
query_exe.ParamByName('PF_CHAVE_ANO_PAI').AsInteger    := mchave_ano_ori;
try
   query_exe.ExecSQL;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_exe,682,'SGE','CADP02_FILHOS');
   result:=false;
   end;
   end;




if query_cons<>nil then
   freeandnil(Query_Cons);
if query_exe<>nil then
   freeandnil(Query_exe);

FreeAndNil(mVenda_GP);

// termino
end;


procedure TFrm_GerarPedidoFilhos.FormCreate(Sender: TObject);
begin
cds_aliquotas.CreateDataSet;

end;

procedure TFrm_GerarPedidoFilhos.bbFaturarClick(Sender: TObject);
begin
ffaturar();
end;

end.
