unit s_BalMens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, ToolEdit, Buttons, RLReport, DB,
  RxMemDS, DBTables,jpeg, CheckLst, RLFilters, RLPDFFilter, ExtCtrls,s_SelEmp;

type
  Tfrm_BalMens = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    edt_datini: TDateEdit;
    Label3: TLabel;
    edt_datfin: TDateEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    mem_cadbal: TRxMemoryData;
    mem_cadbalop_descricao: TStringField;
    mem_cadbalmp_descricao: TStringField;
    mem_cadbalmp_und: TStringField;
    mem_cadbalop_perc: TFloatField;
    mem_cadbalop_perc_imp: TStringField;
    mem_cadbalop_valor: TFloatField;
    mem_cadbalop_valor_imp: TStringField;
    mem_cadbalmp_qtd: TFloatField;
    mem_cadbalmp_qtd_imp: TStringField;
    mem_cadbalmp_pu: TFloatField;
    mem_cadbalmp_pu_imp: TStringField;
    mem_cadbalmp_vt: TFloatField;
    mem_cadbalmp_vt_imp: TStringField;
    mem_cadbalpa_descricao: TStringField;
    mem_cadbalpa_und: TStringField;
    mem_cadbalpa_qtd: TFloatField;
    mem_cadbalpa_icmsr: TFloatField;
    mem_cadbalpa_frete: TFloatField;
    mem_cadbalpa_outacres: TFloatField;
    mem_cadbalpa_qtd_imp: TStringField;
    mem_cadbalpa_vt: TFloatField;
    mem_cadbalpa_vt_imp: TStringField;
    mem_cadbalnf_dados_nf: TStringField;
    mem_cadbalnf_valor: TFloatField;
    RLBand_cab: TRLBand;
    RLImage_logo: TRLImage;
    lblcab_empresa: TRLLabel;
    lblcab_obsrel: TRLLabel;
    lblcab_periodo: TRLLabel;
    lblcab_dathor_emi: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblcab_fantasia: TRLLabel;
    RLGroup1: TRLGroup;
    mem_cadbalnomgru: TStringField;
    src_cadbal: TDataSource;
    RLBand_cabgru: TRLBand;
    rlcab_oper: TRLLabel;
    rlcab_op_descricao: TRLLabel;
    rlcab_op_valor_imp: TRLLabel;
    rlcab_op_perc_imp: TRLLabel;
    RLBand_cabdet: TRLBand;
    rldet_op_descricao: TRLDBText;
    rldet_op_valor_imp: TRLDBText;
    rldet_op_perc_imp: TRLDBText;
    rlcab_mputil: TRLLabel;
    rlcab_mp_descricao: TRLLabel;
    rlcab_mp_qtd_imp: TRLLabel;
    rlcab_mp_vt_imp: TRLLabel;
    rldet_mp_descricao: TRLDBText;
    rldet_mp_qtd_imp: TRLDBText;
    rldet_mp_vt_imp: TRLDBText;
    rlcab_prodvend: TRLLabel;
    rlcab_pa_descricao: TRLLabel;
    rlcab_pa_qtd: TRLLabel;
    rlcab_pa_vt_imp: TRLLabel;
    rldet_pa_descricao: TRLDBText;
    rldet_pa_qtd: TRLDBText;
    rldet_pa_vt_imp: TRLDBText;
    rlcab_docper: TRLLabel;
    rlcab_nf_dados_nf: TRLLabel;
    rlcab_nf_valor_imp: TRLLabel;
    rldet_nf_dados_nf: TRLDBText;
    rldet_nf_valor_imp: TRLDBText;
    mem_cadbalnf_valor_imp: TStringField;
    Label4: TLabel;
    CB_SEPARADO: TComboBox;
    CB_SEMICMSR: TCheckBox;
    CB_SEMFRETE: TCheckBox;
    CB_SEMOUTRAS: TCheckBox;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    Label5: TLabel;
    edt_chave: TEdit;
    rlrodgru: TRLBand;
    rlrodgru_op_descricao: TRLLabel;
    rlrodgru_op_valor_imp: TRLLabel;
    rlrodgru_op_perc_imp: TRLLabel;
    rlrodgru_mp_descricao: TRLLabel;
    rlrodgru_mp_qtd_imp: TRLLabel;
    rlrodgru_mp_vt_imp: TRLLabel;
    rlrodgru_pa_descricao: TRLLabel;
    rlrodgru_pa_qtd: TRLLabel;
    rlrodgru_pa_vt_imp: TRLLabel;
    rlrodgru_nf_dados_nf: TRLLabel;
    rlrodgru_nf_valor_imp: TRLLabel;
    RLBand1: TRLBand;
    rlrodger_op_descricao: TRLLabel;
    rlrodger_op_valor_imp: TRLLabel;
    rlrodger_op_perc_imp: TRLLabel;
    rlrodger_mp_descricao: TRLLabel;
    rlrodger_mp_qtd_imp: TRLLabel;
    rlrodger_mp_vt_imp: TRLLabel;
    rlrodger_pa_descricao: TRLLabel;
    rlrodger_pa_qtd: TRLLabel;
    rlrodger_pa_vt_imp: TRLLabel;
    rlrodger_nf_dados_nf: TRLLabel;
    rlrodger_nf_valor_imp: TRLLabel;
    RLBand_resumo: TRLBand;
    rlrod_resumo_periodo: TRLLabel;
    rlrcabrod_despoper: TRLLabel;
    rlrdetrod_despoper: TRLLabel;
    rlcab_mp_usadas: TRLLabel;
    rldet_mp_usadas: TRLLabel;
    rlcabrod_totvda: TRLLabel;
    rlcabrod_tot_gastos: TRLLabel;
    rldetrod_totvda: TRLLabel;
    rlcetrod_tot_gastos: TRLLabel;
    rlcabrod_lucro: TRLLabel;
    rldetrod_lucro: TRLLabel;
    rldetperc_lucro: TRLLabel;
    StaticText10: TStaticText;
    CLBNivel: TCheckListBox;
    RLPDFFilter1: TRLPDFFilter;
    bb_exportar: TBitBtn;
    RG_FILTRO: TRadioGroup;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rlrodgruBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_cabdetBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_resumoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure bb_exportarClick(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mtotgru_op_valor: Real;
    mtotgru_mp_vt: Real;
    mtotgru_pa_qtd: Real;
    mtotgru_pa_vt: Real;
    mtotgru_nf_tot: Real;

    mtotger_op_valor: Real;
    mtotger_mp_vt: Real;
    mtotger_pa_qtd: Real;
    mtotger_pa_vt: Real;
    mtotger_nf_tot: Real;

    Form_SelEmp: TFrm_SelEmp;

  public
    { Public declarations }
  end;

var
  frm_BalMens: Tfrm_BalMens;

implementation

uses S_DM1, lerarq, Func, func_excecoes, Func2;

{$R *.dfm}

procedure Tfrm_BalMens.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_BalMens.bbImprimirClick(Sender: TObject);
var
query_temp_pa: tquery;
query_temp_mp: tquery;
query_temp_nf: tquery;
query_temp_op: tquery;
query_temp_grupo: tquery;
mCampoGrupo: String;
mTotalLiquido: Real;
mGrupoAtual: String;
mtotmp: Real;
mPercOper: Real;
begin


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

bbImprimir.Enabled:=false;
fCriarviewCustoFabricacaoMercadorias;

Query_temp_pa:=tquery.create(nil);
Query_temp_pa.DatabaseName:='SG_ASSOC';

Query_temp_nf:=tquery.create(nil);
Query_temp_nf.DatabaseName:='SG_ASSOC';

Query_temp_mp:=tquery.create(nil);
Query_temp_mp.DatabaseName:='SG_ASSOC';

Query_temp_op:=tquery.create(nil);
Query_temp_op.DatabaseName:='SG_ASSOC';


Query_temp_grupo:=tquery.create(nil);
Query_temp_grupo.DatabaseName:='SG_ASSOC';

mCampoGrupo:=lowerCase(CB_SEPARADO.Text);
if mCampoGrupo='bairro' then
   mCampoGrupo:='CBAIRRO'
else if mCampoGrupo='cidade' then
   mCampoGrupo:='CCIDADE'
else if mCampoGrupo='cliente' then
   mCampoGrupo:='CRAZAO'
else if mCampoGrupo='data do documento' then
   mCampoGrupo:='P1DATDOC'
else if mCampoGrupo='numero nf' then
   mCampoGrupo:='case when NVL(P1NUMCF,0)>0 then P1NUMCF else P1NUMNF end'
else if mCampoGrupo='produto' then
   mCampoGrupo:='PDNOME'
else if mCampoGrupo='uf' then
   mCampoGrupo:='CUF'
else
   mCampoGrupo:='';
Query_temp_pa.SQL.Clear;
Query_temp_pa.SQL.Add('select '+iif(mCampoGrupo='',QuotedStr(insere(' ',' ',60)),mCampoGrupo)+' AS GRUPO,'
                  +' PDNOME'
                  +',PDUND,P2CODPRO,SUM(P2QTD) AS QTDTOT,'
                  +' SUM(P2TOTLIQ) AS TOTLIQ,SUM(P2ICMSR) AS ICMSRET '
                  +',SUM(P2VFRERAT) AS FRETE '
                  +',SUM(P2VDESPACESRAT) AS DESPACES '
                  +',SUM(P2VALIPI) AS VALIPI '
                  +'FROM CADP01,CADP02,CADPRO,CADCLI '
                  +'WHERE P2CHAVE=P1CHAVE '
                  +'AND P2LOTSEQ=P1LOTSEQ '
                  +'AND P2CODEMP=P1CODEMP '
                  +'AND PDCODPRO=P2CODPRO '
                  +'AND CCODCLI=P1CODCLI ');
if edt_datini.Date>pdatanula then
   begin
   Query_temp_pa.SQL.add(' and P1DATDOC>=:DATINI ');
   Query_temp_pa.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
   end;
if edt_datfin.Date>pdatanula then
   begin
   Query_temp_pa.SQL.add(' and P1DATDOC<=:DATFIN ');
   Query_temp_pa.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
   end;
if fsonumero(edt_chave.Text)<>0 then
   query_temp_pa.SQL.add(' and P1CHAVE='+fdeixanum(edt_chave.Text));

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   query_temp_pa.SQL.Add(' and PDNIVEL '+mcinst2);

if RG_FILTRO.ItemIndex=0 then
   query_temp_pa.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   query_temp_pa.SQL.Add(' and  P1EMIDOC<>0');

if trim(la_Empresas)<>'' then
   query_temp_pa.SQL.add(' and '+la_Empresas);


Query_temp_pa.SQL.Add('GROUP BY '+mcampogrupo+iif(mCampoGrupo='','',',')+' PDNOME,PDUND,P2CODPRO '
                  +'ORDER BY GRUPO,PDNOME ');
try
   Query_temp_pa.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_temp_pa,174,'frm balmens'+e.Message ,'CADP01');
   exit;
   end;
   end;
// ex_erroSql_Novo(Query_temp_pa,174,'frm balmens' ,'CADP01');
// abrir grupo
query_temp_grupo.SQL.Clear;
Query_temp_grupo.SQL.Add('select '+iif(mCampoGrupo='',QuotedStr(insere(' ',' ',60)),mCampoGrupo)+' AS GRUPO,'
                  +' count(*) as qtd '
                  +'FROM CADP01,CADP02,CADPRO,CADCLI '
                  +'WHERE P2CHAVE=P1CHAVE '
                  +'AND P2LOTSEQ=P1LOTSEQ '
                  +'AND P2CODEMP=P1CODEMP '
                  +'AND PDCODPRO=P2CODPRO '
                  +'AND CCODCLI=P1CODCLI ');
if edt_datini.Date>pdatanula then
   begin
   Query_temp_grupo.SQL.add(' and P1DATDOC>=:DATINI ');
   Query_temp_grupo.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
   end;
if edt_datfin.Date>pdatanula then
   begin
   Query_temp_grupo.SQL.add(' and P1DATDOC<=:DATFIN ');
   Query_temp_grupo.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
   end;
if fsonumero(edt_chave.Text)<>0 then
   query_temp_grupo.SQL.add(' and P1CHAVE='+fdeixanum(edt_chave.Text));

if RG_FILTRO.ItemIndex=0 then
   query_temp_grupo.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   query_temp_grupo.SQL.Add(' and  P1EMIDOC<>0');

if trim(la_Empresas)<>'' then
   query_temp_grupo.SQL.add(' and '+la_Empresas);

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   query_temp_grupo.SQL.Add(' and PDNIVEL '+mcinst2);

if trim(mcampogrupo)<>'' then
   Query_temp_grupo.SQL.Add('GROUP BY '+mcampogrupo);
Query_temp_grupo.SQL.Add(' ORDER BY GRUPO ');
try
   Query_temp_grupo.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_temp_grupo,228,'frm balmens'+e.Message ,'CADP01');
   exit;
   end;
   end;



// abrir mp



query_temp_mp.SQL.Clear;
Query_temp_mp.SQL.Add(' select TOT.* '
                     +',sum(MP_VT) over (order by '+mcampogrupo+iif(mCampoGrupo='','',',')+'  PDNOME,PDUND,CPCODMAT '+') AS SALDOT '
                     +' from (');



Query_temp_mp.SQL.Add('select '+iif(mCampoGrupo='',QuotedStr(insere(' ',' ',60)),mCampoGrupo)+' AS GRUPO, '
                  +' max(CRAZAO) as CRAZAO,'
                  +' max(PDNOME) as PDNOME'
                  +',max(P1NUMCF) as P1NUMCF '
                  +',max(P1NUMNF) as P1NUMNF '
                  +',max(CBAIRRO) as CBAIRRO '
                  +',max(CCIDADE) as CCIDADE '
                  +',max(P1DATDOC) as P1DATDOC '
                  +',max(CUF) as CUF '

                  +',max(PDUND) as PDUND,CPCODMAT,SUM(round((P2QTD*CPQUANT),4)) AS QTDTOT,'
                  +' SUM(ROUND( (ROUND((CPQUANT*CPPU),4) * P2QTD),4)) AS MP_VT '
                  +',max(CPPU) as CPPU '
                  +'FROM CADP01,CADP02,CADPRO,CADCLI,CADCOMP '
                  +'WHERE P2CHAVE=P1CHAVE '
                  +'AND P2LOTSEQ=P1LOTSEQ '
                  +'AND P2CODEMP=P1CODEMP '
                  +'AND CPCODPRO=P2CODPRO '
                  +'AND PDCODPRO=CPCODMAT '
                  +'AND CCODCLI=P1CODCLI ');
if edt_datini.Date>pdatanula then
   begin
   Query_temp_mp.SQL.add(' and P1DATDOC>=:DATINI ');
   Query_temp_mp.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
   end;
if edt_datfin.Date>pdatanula then
   begin
   Query_temp_mp.SQL.add(' and P1DATDOC<=:DATFIN ');
   Query_temp_mp.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
   end;
if fsonumero(edt_chave.Text)<>0 then
   query_temp_mp.SQL.add(' and P1CHAVE='+fdeixanum(edt_chave.Text));
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   begin
   Query_temp_mp.sql.add(' and exists (select PDNOME from CADPRO where PDCODPRO=P2CODPRO and PDNIVEL '+mcinst2+')');
   end;

if RG_FILTRO.ItemIndex=0 then
   query_temp_mp.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   query_temp_mp.SQL.Add(' and  P1EMIDOC<>0');

if trim(la_Empresas)<>'' then
   query_temp_mp.SQL.add(' and '+la_Empresas);

Query_temp_mp.SQL.Add('GROUP BY '+mcampogrupo+iif(mCampoGrupo='','',',')+'  PDNOME,PDUND,CPCODMAT '
                  +'ORDER BY GRUPO,PDNOME ');
query_temp_mp.sql.add(') TOT ORDER BY GRUPO,PDNOME  ');
try
   Query_temp_mp.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_temp_mp,223,'frm balmens'+e.Message ,'CADP01');
   exit;
   end;
   end;
//ex_erroSql_Novo(Query_temp_mp,223,'frm balmens' ,'CADP01');

// fechar mp


// abrir temp nf

Query_temp_nf.SQL.Clear;
Query_temp_nf.SQL.Add('select '+iif(mCampoGrupo='',QuotedStr(insere(' ',' ',60)),mCampoGrupo)+' AS GRUPO,'
                     +'max(CRAZAO) as CRAZAO'
                     +',case when NVL(P1NUMCF,0)>0 then P1NUMCF else P1NUMNF end NUMDOC'
                     +',case when NVL(P1NUMCF,0)>0 then '+QuotedStr('CF')+' else '+QuotedStr('NF')+' end TIPODOC'
                     +',P1DATDOC AS DATDOC,count(*) as qtd'
                  +',PDUND '
                  +',SUM(P2TOTLIQ) AS TOTLIQ,SUM(P2ICMSR) AS ICMSRET '
                  +',SUM(P2VFRERAT) AS FRETE '
                  +',SUM(P2VDESPACESRAT) AS DESPACES '
                  +',SUM(P2VALIPI) AS VALIPI '

                  +'FROM CADP01,CADP02,CADPRO,CADCLI '
                  +'WHERE P2CHAVE=P1CHAVE '
                  +'AND P2LOTSEQ=P1LOTSEQ '
                  +'AND P2CODEMP=P1CODEMP '
                  +'AND PDCODPRO=P2CODPRO '
                  +'AND CCODCLI=P1CODCLI ');
if edt_datini.Date>pdatanula then
   begin
   Query_temp_nf.SQL.add(' and P1DATDOC>=:DATINI ');
   Query_temp_nf.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
   end;
if edt_datfin.Date>pdatanula then
   begin
   Query_temp_nf.SQL.add(' and P1DATDOC<=:DATFIN ');
   Query_temp_nf.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
   end;
if fsonumero(edt_chave.Text)<>0 then
   query_temp_nf.SQL.add(' and P1CHAVE='+fdeixanum(edt_chave.Text));
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   query_temp_nf.SQL.Add(' and PDNIVEL '+mcinst2);

if RG_FILTRO.ItemIndex=0 then
   query_temp_nf.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   query_temp_nf.SQL.Add(' and  P1EMIDOC<>0');
if trim(la_Empresas)<>'' then
   query_temp_nf.SQL.add(' and '+la_Empresas);

Query_temp_nf.SQL.Add('GROUP BY '+mcampogrupo+iif(mCampoGrupo='','',',')+' CRAZAO,P1NUMNF,P1NUMCF,P1DATDOC,CCIDADE,CUF,PDNOME,PDUND,P2CODPRO '
                  +'ORDER BY GRUPO ');
try
   Query_temp_nf.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_temp_nf,212,'frm balmens'+e.Message ,'CADP01');
   exit;
   end;
   end;

// INICIO OP


Query_temp_op.SQL.Clear;
Query_temp_op.SQL.Add('select '+iif(mCampoGrupo='',QuotedStr(insere(' ',' ',60)),mCampoGrupo)+' AS GRUPO '
                     +',CUCODPCU,SUM(CUVALOR*P2QTD) AS TOTCUS '
                     +',0 as ordem '
                     +',max(PCNOME) as PCNOME '
                     +' FROM CADP01, '
                     +'CADP02,CADPRO,CADCLI,CADCUS,CADPCUS WHERE P2CHAVE=P1CHAVE '
                  +'AND P2LOTSEQ=P1LOTSEQ '
                  +'AND P2CODEMP=P1CODEMP '
                  +'AND PDCODPRO=P2CODPRO '
                  +'AND CCODCLI=P1CODCLI '
                  +'AND CUCODIGO=P2CODPRO '
                  +'AND PCCODIGO=CUCODPCU '
                  );
if edt_datini.Date>pdatanula then
   begin
   Query_temp_op.SQL.add(' and P1DATDOC>=:DATINI ');
   Query_temp_op.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
   end;
if edt_datfin.Date>pdatanula then
   begin
   Query_temp_op.SQL.add(' and P1DATDOC<=:DATFIN ');
   Query_temp_op.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
   end;
if fsonumero(edt_chave.Text)<>0 then
   query_temp_op.SQL.add(' and P1CHAVE='+fdeixanum(edt_chave.Text));
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   query_temp_op.SQL.Add(' and PDNIVEL '+mcinst2);

if RG_FILTRO.ItemIndex=0 then
   query_temp_op.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   query_temp_op.SQL.Add(' and  P1EMIDOC<>0');
if trim(la_Empresas)<>'' then
   query_temp_op.SQL.add(' and '+la_Empresas);

Query_temp_op.SQL.Add('GROUP BY '+mcampogrupo+iif(mCampoGrupo='','',',')+' CUCODPCU ');
// inicio union

Query_temp_op.SQL.Add(' union all ');


Query_temp_op.SQL.Add('select '+iif(mCampoGrupo='',QuotedStr(insere(' ',' ',60)),mCampoGrupo)+' AS GRUPO '
                     +',99 as CUCODPCU,SUM(CUINCPCOMIN*P2QTD) AS TOTCUS '
                     +',99 as ordem '
                     +','+QuotedStr('Incidencia Sobre Minimo')+ ' as PCNOME '
                     +' FROM CADP01, '
                     +'CADP02,CADPRO,CADCLI,CADCUS2 WHERE P2CHAVE=P1CHAVE '
                  +'AND P2LOTSEQ=P1LOTSEQ '
                  +'AND P2CODEMP=P1CODEMP '
                  +'AND PDCODPRO=P2CODPRO '
                  +'AND CCODCLI=P1CODCLI '
                  +'AND CUCODIGO=P2CODPRO '
                  );
if edt_datini.Date>pdatanula then
   begin
   Query_temp_op.SQL.add(' and P1DATDOC>=:DATINI ');
   Query_temp_op.ParamByName('DATINI').AsDateTime:=edt_datini.Date;
   end;
if edt_datfin.Date>pdatanula then
   begin
   Query_temp_op.SQL.add(' and P1DATDOC<=:DATFIN ');
   Query_temp_op.ParamByName('DATFIN').AsDateTime:=edt_datfin.Date;
   end;
if fsonumero(edt_chave.Text)<>0 then
   query_temp_op.SQL.add(' and P1CHAVE='+fdeixanum(edt_chave.Text));
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   query_temp_op.SQL.Add(' and PDNIVEL '+mcinst2);

if RG_FILTRO.ItemIndex=0 then
   query_temp_op.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   query_temp_op.SQL.Add(' and  P1EMIDOC<>0');
if trim(la_Empresas)<>'' then
   query_temp_op.SQL.add(' and '+la_Empresas);

Query_temp_op.SQL.Add('GROUP BY '+mcampogrupo+iif(mCampoGrupo='','',',')+' 99 ');


// termino union



Query_temp_op.SQL.Add('ORDER BY GRUPO,ORDEM,PCNOME ');
try
   Query_temp_op.open;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_temp_op,212,'frm balmens'+e.Message ,'CADP01');
   exit;
   end;
   end;
// ex_erroSql_Novo(Query_temp_op,212,'frm balmens' ,'CADP01');


{
CUCODPCU,
P2CODPRO,
SUM(CUVALOR*P2QTD) AS TOTCUS
FROM CADP01,
CADP02,
CADPRO,
CADCLI,
CADCUS WHERE P2CHAVE=P1CHAVE
AND P2LOTSEQ=P1LOTSEQ
AND P2CODEMP=P1CODEMP
 AND CUCODIGO=P2CODPRO
 AND CUCODEMP=P2CODEMP
   AND CCODCLI=P1CODCLI

}

// termino temp nf


if mem_cadbal.active=false then
   mem_cadbal.Open;
mem_cadbal.EmptyTable;


mGrupoAtual:='-1';
While not query_temp_grupo.Eof do
   begin
   mGrupoAtual:=query_temp_grupo.fieldbyname('GRUPO').asstring;
   query_temp_pa.Filter:='GRUPO='+QuotedStr(mGrupoAtual);
   query_temp_pa.Filtered:=true;

   query_temp_mp.Filter:='GRUPO='+QuotedStr(mGrupoAtual);
   query_temp_mp.Filtered:=true;

   query_temp_op.Filter:='GRUPO='+QuotedStr(mGrupoAtual);
   query_temp_op.Filtered:=true;

   query_temp_nf.Filter:='GRUPO='+QuotedStr(mGrupoAtual);
   query_temp_nf.Filtered:=true;



   While not ( (Query_temp_pa.Eof) and (Query_temp_nf.Eof)  and (Query_temp_op.Eof)  and (Query_temp_mp.Eof)) do

      begin
      mem_cadbal.append;
      mem_cadbalnomgru.Value      :=mGrupoAtual;








      if not (query_temp_mp.eof) then
         begin
         mem_cadbalmp_descricao.Value:=Query_temp_mp.Fieldbyname('CPCODMAT').AsString+' - '+Query_temp_mp.Fieldbyname('PDNOME').AsString;
         mem_cadbalmp_und.Value      :=Query_temp_mp.Fieldbyname('PDUND').AsString;
         mem_cadbalmp_qtd.Value      :=Query_temp_mp.Fieldbyname('QTDTOT').AsFloat;
         mem_cadbalmp_qtd_imp.Value  :=Query_temp_mp.Fieldbyname('QTDTOT').AsString;
         mem_cadbalmp_pu.Value       :=Query_temp_mp.Fieldbyname('CPPU').AsFloat;
         mem_cadbalmp_pu_imp.Value   :=Query_temp_mp.Fieldbyname('CPPU').AsString;
         mem_cadbalmp_vt.Value       :=Query_temp_mp.Fieldbyname('MP_VT').AsFloat;
         mem_cadbalmp_vt_imp.Value   :=FormatFloat('##0.000',  Query_temp_mp.Fieldbyname('MP_VT').AsFloat);
         mtotmp                      :=Query_temp_mp.Fieldbyname('SALDOT').AsFloat;
         query_temp_mp.next;
         end;

      if not (query_temp_op.eof) then
         begin
         mem_cadbalop_descricao.Value:=Query_temp_op.Fieldbyname('CUCODPCU').AsString+' '+Query_temp_op.Fieldbyname('PCNOME').AsString;
         mem_cadbalop_perc.Value      :=0;
         mem_cadbalop_valor.Value     :=Query_temp_op.Fieldbyname('TOTCUS').AsFloat;
         mem_cadbalop_valor_imp.Value :=FormatFloat('##0.000000',  Query_temp_op.Fieldbyname('TOTCUS').AsFloat);
         if (Query_temp_op.Fieldbyname('TOTCUS').AsFloat=0) or (mtotmp=0) then
            mPercOper := 0
         else
            begin
            try
               mPercOper := (Query_temp_op.Fieldbyname('TOTCUS').AsFloat * 100) / mtotmp;
            except
               end;
            end;   

         mem_cadbalop_perc.Value      :=mPercOper;
         mem_cadbalop_perc_imp.Value  :=Formatfloat('#0.000', mPercOper)+'%';

         query_temp_op.next;
         end;


      if not (query_temp_pa.eof) then
         begin
         mem_cadbalpa_descricao.Value:=Query_temp_pa.Fieldbyname('P2CODPRO').AsString+' - '+Query_temp_pa.Fieldbyname('PDNOME').AsString;
         mem_cadbalpa_und.Value      :=Query_temp_pa.Fieldbyname('PDUND').AsString;
         mem_cadbalpa_icmsr.Value    :=Query_temp_pa.Fieldbyname('ICMSRET').AsFloat;
         mem_cadbalpa_frete.Value    :=Query_temp_pa.Fieldbyname('FRETE').AsFloat;
         mem_cadbalpa_outacres.Value :=Query_temp_pa.Fieldbyname('DESPACES').AsFloat+
                                       Query_temp_pa.Fieldbyname('VALIPI').AsFloat;

         mTotalLiquido               :=Query_temp_pa.Fieldbyname('TOTLIQ').AsFloat;
         if CB_SEMICMSR.Checked=true then
            mTotalLiquido            :=mTotalLiquido-Query_temp_pa.Fieldbyname('ICMSRET').AsFloat;

         if CB_SEMFRETE.Checked=true  then
            mTotalLiquido            :=mTotalLiquido-Query_temp_pa.Fieldbyname('FRETE').AsFloat;

         if CB_SEMOUTRAS.Checked=true then
            begin
            mTotalLiquido            :=mTotalLiquido-
                                      (Query_temp_pa.Fieldbyname('DESPACES').AsFloat+
                                       Query_temp_pa.Fieldbyname('VALIPI').AsFloat);
            end;

         mem_cadbalpa_vt.Value       :=mTotalLiquido;
         mem_cadbalpa_vt_imp.Value   :=FormatFloat(mcasas, mTotalLiquido);
         mem_cadbalpa_qtd.Value      :=Query_temp_pa.Fieldbyname('QTDTOT').AsFloat;
         mem_cadbalpa_qtd_imp.Value  :=Query_temp_pa.Fieldbyname('QTDTOT').AsString;
         Query_temp_pa.next;
         end;
      if (not query_temp_nf.Eof) then
         begin
         mem_cadbalnf_dados_nf.Value :=query_temp_nf.fieldbyname('TIPODOC').AsString+' '+Query_temp_nf.Fieldbyname('NUMDOC').AsString+' Data: '+Formatdatetime(fdt2, Query_temp_nf.Fieldbyname('DATDOC').AsDateTime);
         mTotalLiquido               :=Query_temp_nf.Fieldbyname('TOTLIQ').AsFloat;
         if CB_SEMICMSR.Checked=true then
            mTotalLiquido            :=mTotalLiquido-Query_temp_nf.Fieldbyname('ICMSRET').AsFloat;

         if CB_SEMFRETE.Checked=true  then
            mTotalLiquido            :=mTotalLiquido-Query_temp_nf.Fieldbyname('FRETE').AsFloat;

         if CB_SEMOUTRAS.Checked=true then
            begin
            mTotalLiquido            :=mTotalLiquido-
                                      (Query_temp_nf.Fieldbyname('DESPACES').AsFloat+
                                       Query_temp_nf.Fieldbyname('VALIPI').AsFloat);
            end;


         mem_cadbalnf_valor.Value     :=mTotalLiquido;
         mem_cadbalnf_valor_imp.Value :=FormatFloat(mcasas, mTotalLiquido);
         query_temp_nf.next;
         end;
      mem_cadbal.Post;
      end;
    query_temp_grupo.next;
    end;
query_temp_pa.close;
query_temp_nf.close;
query_temp_mp.close;
query_temp_op.close;
query_temp_grupo.close;



freeandnil(query_temp_pa);
freeandnil(query_temp_nf);
freeandnil(query_temp_mp);
freeandnil(query_temp_op);
freeandnil(query_temp_grupo);

lblcab_periodo.Caption:=fperiodo(0,edt_datini.text,edt_datfin.text);

RLReport1.PreviewModal;




bbImprimir.Enabled:=true;
end;

procedure Tfrm_BalMens.FormCreate(Sender: TObject);
var
   mjpeg: TJPEGImage;
x: Integer;
  n: Integer;
  nivel  : TNivPro;

begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);


CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');



tsRelatorio.tabvisible:=false;
RLReport1.Borders.DrawLeft          :=true;
RLReport1.Borders.DrawTop           :=true;
RLReport1.Borders.DrawRight         :=true;
RLReport1.Borders.DrawBottom        :=true;
RLGroup1.Borders.DrawTop            :=true;
RLBand_cabgru.Borders.DrawTop       :=true;
RLBand_cabgru.Borders.DrawBottom    :=true;
rlcab_oper.Borders.DrawBottom       :=true;
RLBand_resumo.Borders.DrawBottom       :=true;
RLBand_resumo.Borders.DrawTop          :=true;

rlrod_resumo_periodo.Borders.DrawBottom       :=true;
rlcab_mputil.Borders.DrawBottom     :=true;
rlcab_mputil.Borders.Drawleft       :=true;

rlcab_prodvend.Borders.DrawBottom     :=true;
rlcab_prodvend.Borders.Drawleft       :=true;

rlcab_docper.Borders.DrawBottom     :=true;
rlcab_docper.Borders.Drawleft       :=true;

rlcab_op_valor_imp.Borders.DrawLeft :=true;
rlcab_op_perc_imp.Borders.DrawLeft :=true;
rlcab_mp_descricao.Borders.DrawLeft :=true;
rlcab_mp_qtd_imp.Borders.DrawLeft :=true;
rlcab_mp_vt_imp.Borders.DrawLeft :=true;
rlcab_pa_descricao.Borders.DrawLeft :=true;
rlcab_pa_qtd.Borders.DrawLeft :=true;
rlcab_pa_vt_imp.Borders.DrawLeft :=true;
rlcab_nf_dados_nf.Borders.DrawLeft :=true;
rlcab_nf_valor_imp.Borders.DrawLeft :=true;



rldet_op_valor_imp.Borders.DrawLeft :=true;
rldet_op_perc_imp.Borders.DrawLeft :=true;
rldet_mp_descricao.Borders.DrawLeft :=true;
rldet_mp_qtd_imp.Borders.DrawLeft :=true;
rldet_mp_vt_imp.Borders.DrawLeft :=true;
rldet_pa_descricao.Borders.DrawLeft :=true;
rldet_pa_qtd.Borders.DrawLeft :=true;
rldet_pa_vt_imp.Borders.DrawLeft :=true;
rldet_nf_dados_nf.Borders.DrawLeft :=true;
rldet_nf_valor_imp.Borders.DrawLeft :=true;



rlrodgru_op_valor_imp.Borders.DrawLeft :=true;
rlrodgru_op_perc_imp.Borders.DrawLeft :=true;
rlrodgru_mp_descricao.Borders.DrawLeft :=true;
rlrodgru_mp_qtd_imp.Borders.DrawLeft :=true;
rlrodgru_mp_vt_imp.Borders.DrawLeft :=true;
rlrodgru_pa_descricao.Borders.DrawLeft :=true;
rlrodgru_pa_qtd.Borders.DrawLeft :=true;
rlrodgru_pa_vt_imp.Borders.DrawLeft :=true;
rlrodgru_nf_dados_nf.Borders.DrawLeft :=true;
rlrodgru_nf_valor_imp.Borders.DrawLeft :=true;



rlrodger_op_valor_imp.Borders.DrawLeft :=true;
rlrodger_op_perc_imp.Borders.DrawLeft :=true;
rlrodger_mp_descricao.Borders.DrawLeft :=true;
rlrodger_mp_qtd_imp.Borders.DrawLeft :=true;
rlrodger_mp_vt_imp.Borders.DrawLeft :=true;
rlrodger_pa_descricao.Borders.DrawLeft :=true;
rlrodger_pa_qtd.Borders.DrawLeft :=true;
rlrodger_pa_vt_imp.Borders.DrawLeft :=true;
rlrodger_nf_dados_nf.Borders.DrawLeft :=true;
rlrodger_nf_valor_imp.Borders.DrawLeft :=true;


rlrodgru.Borders.DrawTop       :=true;
rlrodgru.Borders.DrawBottom    :=true;


rlrcabrod_despoper.Borders.DrawTop       :=true;
rlrdetrod_despoper.Borders.DrawTop       :=true;
rlrdetrod_despoper.Borders.DrawLeft      :=true;
rlrdetrod_despoper.Borders.DrawRight     :=true;

rlcabrod_totvda.Borders.DrawLeft               :=true;
rlcabrod_totvda.Borders.DrawTop       :=true;


rlcab_mp_usadas.Borders.DrawTop       :=true;
rlcab_mp_usadas.Borders.DrawBottom    :=true;
rldet_mp_usadas.Borders.DrawTop       :=true;
rldet_mp_usadas.Borders.DrawRight     :=true;
rldet_mp_usadas.Borders.Drawleft       :=true;
rldet_mp_usadas.Borders.DrawBottom     :=true;


rlcabrod_tot_gastos.Borders.DrawTop       :=true;
rlcabrod_tot_gastos.Borders.Drawleft       :=true;

rlcabrod_lucro.Borders.DrawTop        :=true;
rlcabrod_lucro.Borders.Drawleft       :=true;
rlcabrod_lucro.Borders.Drawbottom     :=true;

rldetrod_totvda.Borders.DrawTop        :=true;
rldetrod_totvda.Borders.Drawleft       :=true;
rldetrod_totvda.Borders.DrawRight       :=true;
rlcetrod_tot_gastos.Borders.DrawTop        :=true;
rlcetrod_tot_gastos.Borders.Drawleft       :=true;
rlcetrod_tot_gastos.Borders.DrawRight       :=true;


rldetrod_lucro.Borders.DrawTop        :=true;
rldetrod_lucro.Borders.Drawleft       :=true;
rldetrod_lucro.Borders.DrawRight       :=true;
rldetrod_lucro.Borders.DrawBottom      :=true;

rldetperc_lucro.Borders.DrawBottom      :=true;
rldetperc_lucro.Borders.Drawtop      :=true;
rldetperc_lucro.Borders.DrawRight     :=true;


mjpeg:=TJPEGImage.Create;

if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLImage_logo.Picture.Bitmap.Assign(mjpeg);
   RLImage_logo.visible := True;
   end
else
   RLImage_logo.visible := False;
freeandnil(mjpeg);


end;

procedure Tfrm_BalMens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure Tfrm_BalMens.FormShow(Sender: TObject);
begin
edt_datini.date:=StrtodAte('01/'+FormatDatetime('mm/yyyy',incmonth(date,-1)));
edt_datfin.date:=fultdiames(edt_datini.date);

end;

procedure Tfrm_BalMens.rlrodgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrodgru_op_descricao.Caption:='- Total do Grupo';

rlrodgru_op_valor_imp.Caption:=Formatfloat(mcasas, mtotgru_op_valor);
rlrodgru_mp_vt_imp.Caption   :=Formatfloat(mcasas, mtotgru_mp_vt);
rlrodgru_pa_qtd.Caption      :=Floattostr(mtotgru_pa_qtd);
rlrodgru_pa_vt_imp.Caption   :=Formatfloat(mcasas, mtotgru_pa_vt);

rlrodgru_nf_valor_imp.Caption   :=Formatfloat(mcasas, mtotgru_nf_tot);

mtotgru_op_valor    :=0;
mtotgru_mp_vt       :=0;
mtotgru_pa_qtd      :=0;
mtotgru_pa_vt       :=0;
mtotgru_nf_tot      :=0;


end;

procedure Tfrm_BalMens.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mtotgru_op_valor    :=0;
    mtotgru_mp_vt       :=0;
    mtotgru_pa_qtd      :=0;
    mtotgru_pa_vt       :=0;
    mtotgru_nf_tot      :=0;

mtotger_op_valor    :=0;
mtotger_mp_vt       :=0;
mtotger_pa_qtd      :=0;
mtotger_pa_vt       :=0;
mtotger_nf_tot      :=0;


end;

procedure Tfrm_BalMens.RLBand_cabdetBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mtotgru_op_valor    :=mtotgru_op_valor+mem_cadbalop_valor.AsFloat;
    mtotgru_mp_vt       :=mtotgru_mp_vt   +mem_cadbalmp_vt.AsFloat;
    mtotgru_pa_qtd      :=mtotgru_pa_qtd  +mem_cadbalpa_qtd.AsFloat;
    mtotgru_pa_vt       :=mtotgru_pa_vt   +mem_cadbalpa_vt.AsFloat;
    mtotgru_nf_tot      :=mtotgru_nf_tot  +mem_cadbalnf_valor.AsFloat;


    mtotger_op_valor    :=mtotger_op_valor+mem_cadbalop_valor.AsFloat;
    mtotger_mp_vt       :=mtotger_mp_vt   +mem_cadbalmp_vt.AsFloat;
    mtotger_pa_qtd      :=mtotger_pa_qtd  +mem_cadbalpa_qtd.AsFloat;
    mtotger_pa_vt       :=mtotger_pa_vt   +mem_cadbalpa_vt.AsFloat;
    mtotger_nf_tot      :=mtotger_nf_tot  +mem_cadbalnf_valor.AsFloat;

end;

procedure Tfrm_BalMens.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

rlrodger_op_descricao.Caption:='- Total do Geral';

rlrodger_op_valor_imp.Caption:=Formatfloat(mcasas, mtotger_op_valor);
rlrodger_mp_vt_imp.Caption   :=Formatfloat(mcasas, mtotger_mp_vt);
rlrodger_pa_qtd.Caption      :=Floattostr(mtotger_pa_qtd);
rlrodger_pa_vt_imp.Caption   :=Formatfloat(mcasas, mtotger_pa_vt);

rlrodger_nf_valor_imp.Caption   :=Formatfloat(mcasas, mtotger_nf_tot);


end;

procedure Tfrm_BalMens.RLBand_resumoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var
mPercLucro: Real;

begin




rlrdetrod_despoper.Caption := Formatfloat(mcasas, mtotger_op_valor);
rldet_mp_usadas.Caption    := Formatfloat(mcasas, mtotger_mp_vt);

try
   mPercLucro:=((mtotger_pa_vt -(mtotger_op_valor+mtotger_mp_vt) )* 100) / mtotger_pa_vt;
except
   mPercLucro:=0;
   end;


rldetrod_totvda.Caption    :=Formatfloat(mcasas, mtotger_pa_vt);

rlcetrod_tot_gastos.Caption:=Formatfloat(mcasas, mtotger_op_valor+mtotger_mp_vt);


rldetrod_lucro.Caption     :=Formatfloat(mcasas, mtotger_pa_vt -(mtotger_op_valor+mtotger_mp_vt) );
rldetperc_lucro.Caption    :=FormatFloat('#0.000',mpercLucro)+'%';

if mtotger_pa_vt <(mtotger_op_valor+mtotger_mp_vt) then
   begin
   rldetrod_lucro.Font.Color:=clRed;
   rlcabrod_lucro.Font.Color:=clRed;
   rldetperc_lucro.Font.Color:=clRed;
   end
else
   begin
   rldetrod_lucro.Font.Color:=clBlack;
   rlcabrod_lucro.Font.Color:=clBlack;
   rldetperc_lucro.Font.Color:=clBlack;

   end;


{mtotger_op_valor    :=0;
mtotger_mp_vt       :=0;
mtotger_pa_qtd      :=0;
mtotger_pa_vt       :=0;
mtotger_nf_tot      :=0;
}

end;

procedure Tfrm_BalMens.bb_exportarClick(Sender: TObject);
begin
if mem_cadbal.Active then
   fGerarPlanilhaExcel([],src_cadbal);

end;

procedure Tfrm_BalMens.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure Tfrm_BalMens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;

end;

end.
