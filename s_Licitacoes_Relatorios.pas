unit s_Licitacoes_Relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, ComCtrls, RLReport, DB,
  DBTables, Buttons;

type
  TFrm_Licitacoes_Relatorios = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    Panel1: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    lbl_codcli: TLabel;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    edt_codcli: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    RLReport1: TRLReport;
    RLBand_cabger: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    Label1: TLabel;
    CB_SITUACAO: TComboBox;
    src_lic: TDataSource;
    qr_lic: TQuery;
    qr_licQTD_FALTANDO: TFloatField;
    qr_licLC1_CHAVE: TFloatField;
    qr_licLC1_DTEMIS: TDateTimeField;
    qr_licLC1_CARCON: TStringField;
    qr_licLC1_NOMCLI: TStringField;
    qr_licLC1_NOMLOC: TStringField;
    qr_licLC1_UF: TStringField;
    qr_licLC1_CODVEN: TFloatField;
    qr_licNOMVEN: TStringField;
    qr_licQTD_FATURADO: TFloatField;
    qr_licVALOR_FATURADO: TFloatField;
    qr_licLC2_CODPRO: TFloatField;
    qr_licLC2_LOTEPREGAO: TStringField;
    qr_licLC2_ITEM: TFloatField;
    qr_licLC2_NOM01: TStringField;
    qr_licLC2_DESCCOMP: TMemoField;
    qr_licLC2_MARCA: TStringField;
    qr_licLC2_QTD: TFloatField;
    qr_licLC2_PCOAV: TFloatField;
    qr_licTOTAL_LC2: TFloatField;
    RLGroup1: TRLGroup;
    qr_licP1NPEDORI: TFloatField;
    RLBand_cabped: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand_cabdet: TRLBand;
    lbl_LC2_LOTEPREGAO: TRLLabel;
    RLBand4: TRLBand;
    edt_LC2_LOTEPREGAO: TRLDBText;
    lbl_LC2_ITEM: TRLLabel;
    edt_LC2_ITEM: TRLDBText;
    lbl_LC2_CODPRO: TRLLabel;
    edt_LC2_CODPRO: TRLDBText;
    lbl_LC2_NOM01: TRLLabel;
    edt_LC2_NOM01: TRLDBText;
    lbl_LC2_MARCA: TRLLabel;
    edt_LC2_MARCA: TRLDBText;
    lbl_LC2_QTD: TRLLabel;
    edt_LC2_QTD: TRLDBText;
    lbl_LC2_PCOAV: TRLLabel;
    edt_LC2_PCOAV: TRLDBText;
    lbl_TOTAL_LC2: TRLLabel;
    edt_TOTAL_LC2: TRLDBText;
    lbl_QTD_FATURADO: TRLLabel;
    edt_QTD_FATURADO: TRLDBText;
    lbl_QTD_FALTANDO: TRLLabel;
    edt_QTD_FALTANDO: TRLDBText;
    RLBand_rodped: TRLBand;
    bbSair: TBitBtn;
    bbImprimir: TBitBtn;
    qr_licCHAVES: TMemoField;
    lbl_rodape: TRLLabel;
    cb_salvar_sql: TCheckBox;
    qr_licTOTAL_GERAL_LC2: TFloatField;
    qr_licVALOR_FATURADO_ITEM: TFloatField;
    Label2: TLabel;
    edt_codpro: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label9: TLabel;
    MARCA: TEdit;
    lbx_marca: TListBox;
    OMITIR_MAR: TCheckBox;
    Label3: TLabel;
    edt_margem_inicial: TEdit;
    Label4: TLabel;
    edt_margem_final: TEdit;
    qr_licLC2_ICMS_PERC: TFloatField;
    qr_licLC2_DESPESASFIXAS_PERC: TFloatField;
    qr_licLC2_FRETE_PERC: TFloatField;
    qr_licLC2_MARGEM_LUCRO_PERC: TFloatField;
    qr_licmargem: TFloatField;
    qr_licLC2_PCOCPR2: TFloatField;
    qr_lictotal_custo_calculado2: TFloatField;
    bb_exportar: TBitBtn;
    qr_licLC1_DATCON: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure RLBand_rodpedBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand_cabpedBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codproExit(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_marcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MARCAExit(Sender: TObject);
    procedure edt_margem_inicialExit(Sender: TObject);
    procedure edt_margem_finalExit(Sender: TObject);
    procedure bb_exportarClick(Sender: TObject);
  private
    { Private declarations }

    mChaves: String;
    mTotalLC2N: Real;
    mTotalPedN: Real;

    function fLerCadLic:boolean;


    procedure fBorders(pComBordas: boolean);



    function fTotalCalculado: string;

    function fAbrirBanco: boolean;

  public
    { Public declarations }
  end;

var
  Frm_Licitacoes_Relatorios: TFrm_Licitacoes_Relatorios;

implementation

uses SR_Lic, func_excecoes, Func, S_DM1, lerarq, flerarq, s_lerarq_geral,
  Func2;

{$R *.dfm}

procedure TFrm_Licitacoes_Relatorios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

if (FormState<>[fsModal]) then
   Action := caFree

end;

function TFrm_Licitacoes_Relatorios.fLerCadLic:boolean;
var
x_lic: integer;
mCondMarca: String;
begin
result:=true;
qr_lic.close;
qr_lic.sql.clear;
qr_lic.sql.Add(' SELECT P1NPEDORI,');
if CB_SITUACAO.ItemIndex=2 then
   qr_lic.sql.Add(' '+QuotedStr(insere2(' ',' ',300))+' as chaves ')
else
   qr_lic.sql.Add('  chaves ');
qr_lic.sql.Add(',LC2_QTD-QTD_FATURADO AS QTD_FALTANDO, T1.* FROM ( '+chr(13)
              +' SELECT LC1_CHAVE '+chr(13)
              +' ,LC1_DTEMIS '+chr(13)
              +' ,LC1_DATCON '+chr(13)
              +' ,LC1_CARCON '+chr(13)
              +' ,LC1_NOMCLI '+chr(13)
              +' ,LC1_NOMLOC '+chr(13)
              +' ,LC1_UF '+chr(13)
              +' ,LC1_CODVEN '+chr(13)
              +' ,CASE WHEN LC1_CODVEN=0 THEN '+QuotedStr('Sem Vendedor')+' else '+chr(13)
              +'  (select max(VNOME) from cadven WHERE VCODVEN=LC1_CODVEN) END as NOMVEN '+chr(13)

              +' ,NVL( (SELECT SUM(P2QTD) FROM CADP01,CADP02 WHERE P1NPEDORI=LC1_CHAVE '+chr(13)
              +' AND P2CHAVE=P1CHAVE AND P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ  and P2CODPRO=LC2_CODPRO '+chr(13)
              +' AND P2ORDEM=P1ORDEM ),0) AS QTD_FATURADO '+chr(13)
              +' ,NVL( (SELECT SUM(P2TOTLIQ) FROM CADP01,CADP02 WHERE P1NPEDORI=LC1_CHAVE '+chr(13)
              +' AND P2CHAVE=P1CHAVE AND P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ '+chr(13)
              +' AND P2ORDEM=P1ORDEM  and P2CODPRO=LC2_CODPRO  ),0) AS VALOR_FATURADO_ITEM '+chr(13)


              +' , case when MAX(LC2_GANHOU)='+quotedstr('X')+' THEN '
              +' NVL( (SELECT SUM(P2TOTLIQ) FROM CADP01,CADP02 WHERE P1NPEDORI=LC1_CHAVE '
              +'  AND P2CHAVE=P1CHAVE AND P2CODEMP=P1CODEMP AND P2LOTSEQ=P1LOTSEQ '
              +' AND P2ORDEM=P1ORDEM   ),0) '
              +' ELSE 0 END AS  VALOR_FATURADO '

              +' ,LC2_CODPRO '+chr(13)
              +' ,LC2_PCOCPR '+mQuebraLinha
              +' ,LC2_ICMS_PERC '+mQuebraLinha
              +' ,LC2_DESPESASFIXAS_PERC '+mQuebraLinha
              +' ,LC2_FRETE_PERC '+mQuebraLinha
              +' ,LC2_MARGEM_LUCRO_PERC '+mQuebraLinha
              +' ,'+fTotalCalculado+' as total_custo_calculado '+mQuebraLinha
              +' ,LC2_LOTEPREGAO AS LC2_LOTEPREGAO '+chr(13)
              +' ,LC2_ITEM AS LC2_ITEM '+chr(13)
              +' ,LC2_NOM01 AS LC2_NOM01 '+chr(13)
              +' ,fgetlong_condicao('+QuotedStr('CADLC2')+','+QuotedStr('LC2_DESCCOMP')+','+QuotedStr(' WHERE LC2_CHAVE=')+' || TO_CHAR(LC1_CHAVE) || '+QuotedStr(' AND LC2_ITEM=')+' || MAX(LC2_ITEM) ) AS LC2_DESCCOMP '+chr(13)
              +' ,LC2_MARCA AS LC2_MARCA  '+chr(13)
              +' ,SUM(LC2_QTD) AS LC2_QTD  '+chr(13)
              +' ,SUM(LC2_PCOAV) AS LC2_PCOAV '+chr(13)
              +' ,SUM(ROUND(LC2_QTD*LC2_PCOAV,2)) AS TOTAL_LC2 '+chr(13)
              +' ,(select SUM(ROUND(LC2_QTD*LC2_PCOAV,2)) AS TOTAL_LC2  FROM CADLC2 DENTRO '
              +'  WHERE DENTRO.LC2_CHAVE=FORA.LC1_CHAVE AND DENTRO.LC2_CODEMP=FORA.LC1_CODEMP ');
if CB_SITUACAO.ItemIndex=1 then
   Qr_lic.SQL.Add(' and LC2_GANHOU='+QuotedStr('X'))
else if CB_SITUACAO.ItemIndex=2 then
   Qr_lic.SQL.Add(' and LC2_GANHOU<>'+QuotedStr('X'));
Qr_lic.SQL.Add(') AS TOTAL_GERAL_LC2 '
              +' FROM CADLC1 FORA,CADLC2  '+chr(13)
              +' WHERE LC2_CHAVE=LC1_CHAVE '+chr(13)
              +' AND LC2_CODEMP=LC1_CODEMP '+chr(13));


mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
  begin
  Qr_liC.sql.Add(' and LC1_CODCLI '+mcinst2);
  end;

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then Qr_lic.sql.Add(' and LC2_CODPRO '+mcinst2);

mCondMarca:='';
for x_lic:=0 to lbx_marca.Items.Count-1 do
   begin
   if (trim(lbx_marca.items[x_lic])<>'') then
      mCondMarca := iif(length(mCondMarca)>0, ' or ', '')+' LC2_MARCA like '+QuotedStr('%'+lbx_marca.items[x_lic]+'%');
   end;

if (trim(mCondMarca)<>'') then
   begin
   mCondMarca:=' and ' + iif(OMITIR_MAR.checked=true, ' not ','')+ '(' + mCondMarca+')';
   end;
if trim(mCondMarca)<>'' then Qr_lic.sql.Add(mCondMarca);






Qr_lic.SQL.Add(fFormatdatetimeParaConsulta('LC1_DTEMIS',true,edt_datini.Date));
Qr_lic.SQL.Add(fFormatdatetimeParaConsulta('LC1_DTEMIS',false,edt_datfin.Date));
if CB_SITUACAO.ItemIndex=1 then
   Qr_lic.SQL.Add(' and LC2_GANHOU='+QuotedStr('X'))
else if CB_SITUACAO.ItemIndex=2 then
   Qr_lic.SQL.Add(' and LC2_GANHOU<>'+QuotedStr('X'));

qr_lic.sql.Add(' GROUP BY LC1_CHAVE '+chr(13)
              +' ,LC1_DTEMIS '+chr(13)
              +' ,LC1_DATCON '
              +' ,LC1_CARCON '+chr(13)
              +' ,LC1_NOMCLI '+chr(13)
              +' ,LC1_NOMLOC '+chr(13)
              +' ,LC1_UF '+chr(13)
              +' ,LC1_CODVEN '+chr(13)
              +' ,LC2_NOM01 '+chr(13)
              +' ,LC2_CODPRO '+chr(13)
              +' ,LC2_LOTEPREGAO '+chr(13)
              +' ,LC2_ITEM  '+chr(13)

              +' ,LC2_MARCA  '+chr(13)

              +' ,LC1_CODEMP '

              +'  ,LC2_PCOCPR '+mQuebraLinha
              +'  ,LC2_ICMS_PERC '+mQuebraLinha
              +'  ,LC2_DESPESASFIXAS_PERC '+mQuebraLinha
              +'  ,LC2_FRETE_PERC '+mQuebraLinha
              +'  ,LC2_MARGEM_LUCRO_PERC '+mQuebraLinha


              +' ,'+fTotalCalculado
              +' ) T1 '+chr(13)
              +' LEFT JOIN ( '+chr(13)
              +' select P1NPEDORI, MAX(CHAVE01) || MAX(CHAVE02) || MAX(CHAVE03) || MAX(CHAVE04) '
              +' || MAX(CHAVE05) || MAX(CHAVE06) || MAX(CHAVE07) || MAX(CHAVE08) || MAX(CHAVE09) '
              +' || MAX(CHAVE10) || MAX(CHAVE11) || MAX(CHAVE12) || MAX(CHAVE13) || MAX(CHAVE14) '
              +' || MAX(CHAVE15) || MAX(CHAVE16) || MAX(CHAVE17) || MAX(CHAVE18) || MAX(CHAVE19) '
              +' AS CHAVES FROM '+chr(13)
              +' ( '+chr(13)
              +' SELECT P1NPEDORI,  CASE WHEN ORDEM=1 THEN P1CHAVE ELSE NULL END AS CHAVE01 '+chr(13)
              +'        ,CASE WHEN ORDEM=2 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE02 '+chr(13)
              +'        ,CASE WHEN ORDEM=3 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE03 '+chr(13)
              +'        ,CASE WHEN ORDEM=4 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE04 '+chr(13)
              +'        ,CASE WHEN ORDEM=5 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE05 '+chr(13)
              +'        ,CASE WHEN ORDEM=6 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE06 '+chr(13)
              +'        ,CASE WHEN ORDEM=7 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE07 '+chr(13)
              +'        ,CASE WHEN ORDEM=8 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE08 '+chr(13)
              +'        ,CASE WHEN ORDEM=9 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE09 '+chr(13)
              +'        ,CASE WHEN ORDEM=10 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE10 '+chr(13)
              +'        ,CASE WHEN ORDEM=11 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE11 '+chr(13)
              +'        ,CASE WHEN ORDEM=12 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE12 '+chr(13)
              +'        ,CASE WHEN ORDEM=13 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE13 '+chr(13)
              +'        ,CASE WHEN ORDEM=14 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE14 '+chr(13)
              +'        ,CASE WHEN ORDEM=15 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE15 '+chr(13)
              +'        ,CASE WHEN ORDEM=16 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE16 '+chr(13)
              +'        ,CASE WHEN ORDEM=17 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE17 '+chr(13)
              +'        ,CASE WHEN ORDEM=18 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE18 '+chr(13)
              +'        ,CASE WHEN ORDEM=19 THEN  '+quotedstr(',')+' || TO_CHAR(P1CHAVE) ELSE '+quotedstr('')+' END AS CHAVE19 '+chr(13)
              +'         FROM '+chr(13)
              +' ( '+chr(13)
              +' SELECT P1NPEDORI,P1CHAVE '+chr(13)
              +' ,ROW_NUMBER() OVER (PARTITION BY P1NPEDORI ORDER BY P1NPEDORI,P1CHAVE) AS ORDEM '+chr(13)
              +'  FROM CADP01 '+chr(13)
              +' WHERE P1NPEDORI>0 AND ROWNUM<11 '+chr(13)
              +' ) '+chr(13)
              +' ) GROUP BY P1NPEDORI '+chr(13)
              +' )  ON (P1NPEDORI =LC1_CHAVE) '+chr(13));

Qr_Lic.sql.add(' order by LC1_CHAVE ');

qr_lic.sql.Text:='Select T1.*, '
                +' case when total_custo_calculado = 0 then 0 else '
                +' round( ( ((LC2_PCOAV-total_custo_calculado) / total_custo_calculado)*100),2) '
                +' end '
            +' as margem '
            +' from ( ' + qr_lic.sql.text +') t1 where 1=1 ';

if (fsonumero(edt_margem_inicial.text)<>0)  then
   begin
   qr_lic.sql.text:='select T2.* from ('
                   +qr_lic.sql.text+') t2 WHERE 1=1 ';
   if fsonumero(edt_margem_inicial.text)<>0 then
      Qr_lic.sql.add(' and margem>='+mudavp(edt_margem_inicial.text));
   if (fsonumero(edt_margem_final.text)>0) or (fsonumero(edt_margem_inicial.text)<0) then
      begin
      Qr_lic.sql.add(' and margem<='+mudavp(edt_margem_final.text));
      end;
   end;


try
   Qr_lic.open;
   if cb_salvar_sql.Checked then
      ex_erroSql_Novo(qr_lic,191,'SGE','CADP01');

except on e : exception do
   begin
   ex_erroSql_Novo(qr_lic,191,'SGE','CADP01');
   result:=false;
   end;
   end;


end;


function tFrm_licitacoes_Relatorios.fTotalCalculado: string;

begin
result   := ' case when NVL(LC2_PCOCPR,0)=0  THEN 0 ELSE '+mQuebraLinha
           +'      LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2)'+mQuebraLinha
           +'      +round ( ((LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2)) * LC2_DESPESASFIXAS_PERC/100) ,2)'+mQuebraLinha
            +'    + ROUND( (( LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2) +'+mQuebraLinha
           +'       round ( ((LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2)) * LC2_DESPESASFIXAS_PERC/100) ,2))'+mQuebraLinha
           +'     *LC2_FRETE_PERC /100),2)'+mQuebraLinha
           +'  +  round( ( (LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2)'+mQuebraLinha
           +'      +round ( ((LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2)) * LC2_DESPESASFIXAS_PERC/100) ,2)'+mQuebraLinha
           +'     + ROUND( (( LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2) +'+mQuebraLinha
           +'       round ( ((LC2_PCOCPR + ROUND((LC2_PCOCPR*LC2_ICMS_PERC/100),2)) * LC2_DESPESASFIXAS_PERC/100) ,2))'+mQuebraLinha
           +'     *LC2_FRETE_PERC /100),2) )'+mQuebraLinha
           +'     *  LC2_MARGEM_LUCRO_PERC /100  ) , 2)'+mQuebraLinha
           +'     END           '+mQuebraLinha



end;


procedure TFrm_Licitacoes_Relatorios.bbImprimirClick(Sender: TObject);
begin
if not fAbrirBanco then
   exit;
RLReport1.PreviewModal;

end;


function TFrm_Licitacoes_Relatorios.fAbrirBanco: boolean;
var
mMensagem: String;
begin
if (valfloat(edt_margem_final.text)<>0) and (valfloat(edt_margem_inicial.Text)<>0) then
   begin
   if valfloat(edt_margem_final.text)<valfloat(edt_margem_inicial.Text) then
      edt_margem_final.text := edt_margem_inicial.Text;
   end;

mMensagem:='';
if (fSonumero(edt_datini.Text)>0) and (fSonumero(edt_datfin.Text)>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      begin
      mMensagem:=mMensagem+'Data inicial '+FormatDatetime(fdt2, edt_datini.Date)
      +' é maior que data final: '+FormatDatetime(fdt2, edt_datfin.Date)
      +'. Inválido!';
      end;
   end;

if mMensagem<>'' then
   begin
   messagedlg(mMensagem,mtWarning,[mbOk],0);
   exit;
   end;

lbl_periodo.Caption:=fperiodo(0,edt_datini.Text,edt_datfin.Text);
lbl_titulo.Caption:='Relatório de Licitações '+fperiodo(0,edt_datini.Text,edt_datfin.Text);

result:=fLerCadLic;

end;



procedure TFrm_Licitacoes_Relatorios.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Licitacoes_Relatorios.RLBand_rodpedBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if trim(mChaves)='' then
   lbl_rodape.Caption:=''
else   
   begin
   if pos(',',mChaves)>0 then
      lbl_rodape.Caption:='Chaves dos Pedidos '+mChaves+' Totais dos Pedidos '+FormatFloat(mcasas, mTotalPedN)
   else
      lbl_rodape.Caption:='Chave do Pedido '+mChaves+' Total do Pedido '+FormatFloat(mcasas, mTotalPedN);
   end;   
lbl_rodape.Caption:=lbl_rodape.Caption + '. Total da Licitacao '+FormatFloat(mcasas, mTotalLC2N);

end;

procedure TFrm_Licitacoes_Relatorios.FormCreate(Sender: TObject);
begin
cb_salvar_sql.Visible := codusr=1111;
mChaves   := '';

qr_licVALOR_FATURADO.DisplayFormat:=mcasas;
qr_licLC2_PCOAV.DisplayFormat     :=mcasas;
qr_licTOTAL_LC2.DisplayFormat     :=mcasas;

fBorders(true);

tsRelatorio.TabVisible := false;

end;

procedure TFrm_Licitacoes_Relatorios.RLBand_cabpedBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mChaves   :=  qr_licCHAVEs.AsString;
    mTotalLC2N := qr_licTOTAL_GERAL_LC2.Asfloat;
    mTotalPedN := Qr_LicVALOR_FATURADO.Asfloat;

end;

procedure TFrm_Licitacoes_Relatorios.fBorders(pComBordas: boolean);
begin
RLReport1.borders.DrawLeft   :=pComBordas;
RLReport1.borders.DrawRight  :=pComBordas;
RLReport1.borders.Drawtop    :=pComBordas;
RLReport1.borders.DrawBottom :=pComBordas;
RLBand_cabger.borders.DrawBottom     :=pComBordas;
RLBand_cabped.borders.DrawBottom     :=pComBordas;
RLBand_cabdet.borders.DrawBottom     :=pComBordas;
RLBand_rodped.borders.Drawtop        :=pComBordas;

end;

procedure TFrm_Licitacoes_Relatorios.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if Trim(edt_codcli.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',edt_codcli.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(edt_codcli.Text))
                                    +' - '+DM1.Query1.fields[0].AsString);
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      end;
   end;


end;

procedure TFrm_Licitacoes_Relatorios.edt_codcliKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'Frm_RCliC',key);
   if trim(edt_codcli.Text)<>'' then
      edt_codcliExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Licitacoes_Relatorios.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_Licitacoes_Relatorios.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Licitacoes_Relatorios.edt_codproExit(Sender: TObject);
begin
edt_codpro.Text:=fdeixanum2(edt_codpro.Text);
if Trim(edt_codpro.Text)<>'' then
   begin
   if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',edt_codpro.Text) then
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(edt_codpro.Text))
                                    +' - '+DM1.Query1.fields[0].AsString);
      edt_codpro.text := '';
      edt_codpro.SetFocus;
      end
   else
      begin
      fmensagem('Produto não Cadastrado!',0,['0'],0);
      edt_codpro.text := '';
      edt_codpro.SetFocus;
      end;
   end;

end;

procedure TFrm_Licitacoes_Relatorios.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.Text:=fChamaPro(0,'Frm_pro',key);
   if trim(edt_codpro.Text)<>'' then
      edt_codproExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Licitacoes_Relatorios.lbx_marcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_marca.ItemIndex>=0 then
      lbx_marca.Items.Delete(lbx_marca.ItemIndex);

end;


procedure TFrm_Licitacoes_Relatorios.MARCAExit(Sender: TObject);
{
var
query_marca: tQuery;
}
begin

if Trim(MARCA.Text)='' then
   MARCA.Text:=''
else
   begin
   lbx_marca.Items.Add(MARCA.text);
   MARCA.text := '';
   MARCA.SetFocus;
   end;


{
else
   begin
   query_marca :=tQuery.Create(nil);
   query_marca.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


   query_marca.SQL.Clear;
   MARCA.Text:=fRetAspas(MARCA.Text);
   query_marca.SQL.Add('Select LC2_MARCA from CADLC2 where '
                     +' LC2_MARCA like '+chr(39)+MARCA.Text+'%'+chr(39));
   query_marca.Open;
   if query_marca.IsEmpty then
      begin
      fmensagem('Marca nao Encontrada!',0,['0'],0);
      query_marca.Close;
      freeandnil(query_marca);
      MARCA.SetFocus;
      end
   else
      begin
      lbx_marca.Items.Add(query_marca.Fields[0].AsString);
      MARCA.text := '';
      MARCA.SetFocus;
      query_marca.Close;
      freeandnil(query_marca);
      end;
   end;
 }
end;

procedure TFrm_Licitacoes_Relatorios.edt_margem_inicialExit(
  Sender: TObject);
begin
edt_margem_inicial.text := formatfloat(mcasas_pct, valfloat(edt_margem_inicial.Text));

end;

procedure TFrm_Licitacoes_Relatorios.edt_margem_finalExit(Sender: TObject);
begin
edt_margem_final.text := formatfloat(mcasas_pct, valfloat(edt_margem_final.Text));

end;

procedure TFrm_Licitacoes_Relatorios.bb_exportarClick(Sender: TObject);
var
Campos: Array of string;

begin
if not fAbrirBanco then
   exit;


SetLength(Campos,118);
Campos[00]:= qr_licLC2_LOTEPREGAO.FieldName;
Campos[01]:=qr_licLC2_ITEM.FieldName;
Campos[02]:=qr_licLC2_CODPRO.FieldName;
Campos[03]:=qr_licLC2_NOM01.FieldName;
Campos[04]:=Qr_licLC2_MARCA.FieldName;
Campos[05]:=qr_licLC2_QTD.fieldName;
Campos[06]:=qr_licLC2_PCOAV.FieldName;
Campos[07]:=qr_licTOTAL_LC2.FieldName;
Campos[08]:=qr_licTOTAL_LC2.FieldName;
Campos[09]:=qr_licQTD_FATURADO.FieldName;
Campos[10]:=qr_licQTD_FALTANDO.FieldName;


fGerarPlanilhaExcel(campos,src_lic);

end;

end.
