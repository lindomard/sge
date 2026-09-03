unit S_Extrato_Completo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, ExtCtrls, func, db, dbtables, S_DM1, Grids,
  DBGrids,S_Pro,S_DM2,lerarq,S_Impres,RdPrint,func2, ComCtrls, RxMemDS,
  jpeg, S_SelEmp, Menus, ADODB, DBCtrls, RLReport,s_lerarq_geral,
  RLRichText, RLFilters, RLDraftFilter, RLPDFFilter, RLRichFilter, CheckLst;

type
  TFrm_Extrato_Completo = class(TForm)
    PageControl1: TPageControl;
    TsIndividual: TTabSheet;
    DBGrid1: TDBGrid;
    qr_cadest_mov: TQuery;
    src_cadest_mov: TDataSource;
    qr_cadest_movCMP_FILIAL: TFloatField;
    qr_cadest_movCMP_CHAVE_ANO: TFloatField;
    qr_cadest_movCMP_CHAVE: TFloatField;
    qr_cadest_movCMP_ITEM: TFloatField;
    qr_cadest_movCMP_DOCORI: TFloatField;
    qr_cadest_movCMP_DATHOR: TDateTimeField;
    qr_cadest_movCMP_ESTNOR: TStringField;           
    qr_cadest_movCMP_SALDO_ANT: TFloatField;
    qr_cadest_movQTD_SAI: TFloatField;
    qr_cadest_movQTD_ENT: TFloatField;
    qr_cadest_movCMP_SALDO_ATU: TFloatField;
    qr_cadest_movLOCAL_ARMAZEM: TStringField;
    qr_cadest_movPOSICAO: TFloatField;
    qr_cadest_movOBSERVACOES: TStringField;
    qr_cadest_movDOCORI: TStringField;
    qr_cadest_movDESTINO_ORIGEM: TStringField;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    qr_cadest_movPDNOME: TStringField;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLImage_logo: TRLImage;
    lblcab_empresa: TRLLabel;
    lblcab_obsrel: TRLLabel;
    lblcab_periodo: TRLLabel;
    lblcab_dathor_emi: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblcab_fantasia: TRLLabel;
    RLGroup_prod: TRLGroup;
    RLBand1: TRLBand;
    RLBand_cabdet: TRLBand;
    rldet_CMP_DATHOR: TRLDBText;
    rldet_DESTINO_ORIGEM: TRLDBText;
    rldet_CMP_DOCORI: TRLDBText;
    rldet_CMP_SALDO_ANT: TRLDBText;
    rldet_QTD_ENT: TRLDBText;
    rldet_QTD_SAI: TRLDBText;
    rldet_CMP_SALDO_ATU: TRLDBText;
    rlcab_CMP_DATHOR: TRLLabel;
    rlcab_DESTINO_ORIGEM: TRLLabel;
    rlcab_CMP_DOCORI: TRLLabel;
    rlcab_CMP_SALDO_ANT: TRLLabel;
    rlcab_QTD_ENT: TRLLabel;
    rlcab_QTD_SAI: TRLLabel;
    rlcab_CMP_SALDO_ATU: TRLLabel;
    RLBand3: TRLBand;
    rlsum_criterito: TRLRichText;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLDraftFilter1: TRLDraftFilter;
    rlcab_CMP_CHAVE: TRLLabel;
    rldet_CMP_CHAVE: TRLDBText;
    CB_QUEBRAPAGINA: TCheckBox;
    RLBand_rodgru: TRLBand;
    StaticText10: TStaticText;
    CLBNivel: TCheckListBox;
    bbAtualizar: TBitBtn;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    rlcab_OBSERVACOES: TRLLabel;
    rldet_OBSERVACOES: TRLDBText;
    CB_PROD_SEMMOV: TCheckBox;
    qr_cadest_movCMP_CODPRO: TFloatField;
    qr_cadest_movCMP_ID: TFloatField;
    qr_cadest_movCMP_ID_ANO: TFloatField;
    qr_cadest_movobs: TStringField;
    StaticText2: TStaticText;
    CLB_STATUS: TCheckListBox;
    OMITIR_STATUS: TCheckBox;
    Label1: TLabel;
    CB_TPPRECO: TComboBox;
    qr_cadest_movPRECO_UNIT: TFloatField;
    rlband_totgru: TRLBand;
    RLLabel3: TRLLabel;
    rlRod_TotQtd: TRLLabel;
    RLLabel4: TRLLabel;
    rlRod_PU: TRLLabel;
    RLLabel5: TRLLabel;
    rlRod_ValorTotal: TRLLabel;
    RLBand_sumger: TRLBand;
    RLLabel6: TRLLabel;
    rlSum_TotQtd: TRLLabel;
    RLLabel10: TRLLabel;
    rlSum_ValorTotal: TRLLabel;
    Label2: TLabel;
    cb_ordem: TComboBox;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    StaticText1: TStaticText;
    clb_locais: TCheckListBox;
    sbt_expexcel: TSpeedButton;
    procedure MDT2Exit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbDivAtuClick(Sender: TObject);
    procedure bbDivSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLBand_rodgruAfterPrint(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure qr_cadest_movCalcFields(DataSet: TDataSet);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlband_totgruBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand_sumgerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand1AfterPrint(Sender: TObject);
    procedure CLB_STATUSClick(Sender: TObject);
    procedure cb_ordemClick(Sender: TObject);
    procedure clb_locaisClick(Sender: TObject);
    procedure sbt_expexcelClick(Sender: TObject);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fLerDetalhes(pTipo: Integer): Boolean;

  public
    { Public declarations }
    mpreco_unit: string;
    form_impres_extp3 : TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
    mGru_Qtd: Real;
    mGru_PU: Real;
    mGru_VT: Real;

    mGer_Qtd: Real;
    mGer_VT: Real;

  end;

var
  Frm_Extrato_Completo: TFrm_Extrato_Completo;



function fEstoqueAnterior(pData: TDatetime; pLocEstoque: Integer;pCodpro: Real; pGrade: String): Real;

implementation

uses  func_excecoes, Math, S_DM1_ADO, S_DM4;

{$R *.DFM}

procedure TFrm_Extrato_Completo.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_Extrato_Completo.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      FMensagem('Favor Digitar uma Data Valida.',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_Extrato_Completo.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Extrato_Completo.bbAtualizarClick(Sender: TObject);
var
query_temp: tquery;
mOrdem: String;
x_locais: Integer;

begin


if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
    if StrToDate(MDT2.Text)<StrToDate(MDT1.text) then
       begin
       FMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
       MDT1.SetFocus;
       exit;
       end;
    end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADMOV_PROD','CMP_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(1,'CADPRO' ,'PDCODEMP','CMP_CODEMP' ,'PDCODPRO' ,'CMP_CODPRO');
if CB_TPPRECO.ItemIndex=0 then
   mpreco_unit:='PDPRECO1'
else if CB_TPPRECO.ItemIndex=1 then
   mpreco_unit:='PDPRECO2'
else if CB_TPPRECO.ItemIndex=2 then
   mpreco_unit:='PDPRECO3'
else
   mpreco_unit:='PDPRECOC';

qr_cadest_mov.Close;
qr_cadest_mov.sql.clear;
if cb_ordem.ItemIndex=1 then
   mOrdem:=' order by CMP_DATHOR,CMP_ID_ANO,CMP_ID '
else
   mOrdem:=' order by PDNOME,CMP_CODPRO,CMP_DATHOR,CMP_ID_ANO,CMP_ID';


if CB_PROD_SEMMOV.Checked=true then
   begin
   query_temp:=tquery.create(nil);

   query_temp.databasename:='SG_ASSOC';
   query_temp.close;
   query_temp.sql.clear;
   query_temp.SQL.Text:='Create or replace view cadmovprodep as ';

   query_temp.sql.Add('SELECT CMP_ID,CMP_ID_ANO,PDNOME,'+mpreco_unit+' as PRECO_UNIT, CMP_FILIAL,CMP_CHAVE_ANO,CMP_CHAVE,CMP_ITEM,CMP_DOCORI, '

                        +' CASE WHEN CMP_DOCORI=00 THEN '+QuotedStr('Pedido de Vendas')
                        +'  WHEN CMP_DOCORI=01 THEN '+QuotedStr('Pedido de Compras')
                        +'  WHEN CMP_DOCORI=02 THEN '+QuotedStr('Ajuste de Estoque')
                        +'  WHEN CMP_DOCORI=03 THEN '+QuotedStr('Balanço')
                        +'  WHEN CMP_DOCORI=04 THEN '+QuotedStr('Ordem de Produção')
                        +'  WHEN CMP_DOCORI=05 THEN '+QuotedStr('Zerar Estoque')
                        +'  WHEN CMP_DOCORI=06 THEN '+QuotedStr('Sobras/Devoluções')
                        +'  WHEN CMP_DOCORI=07 THEN '+QuotedStr('Inicial')
                        +'  ELSE '+QuotedStr('Desconhecido')+' END AS DOCORI'

                        +' ,case when CMP_DOCORI=0 then '
                        +'   (select max(CRAZAO) from CADP01,CADCLI where CCODCLI=P1CODCLI '
                        +'   and (P1CODEMP=CMP_CODEMP or P1CODEMP=CMP_CODEMP+100 or P1CODEMP=CMP_CODEMP-100) '
                        +'   and P1CHAVE=CMP_CHAVE and P1LOTSEQ=CMP_CHAVE_ANO) '
                        +' when CMP_DOCORI=1 then '
                        +'   (select max(FRAZAO) from CADPF1,CADFOR where FCODFOR=PF1CODFOR '
                        +'   and (PF1CODEMP=CMP_CODEMP or PF1CODEMP=CMP_CODEMP+100 or PF1CODEMP=CMP_CODEMP-100) '
                        +'   and PF1CHAVE=CMP_CHAVE and PF1LOTSEQ=CMP_CHAVE_ANO) '
                        +' when CMP_DOCORI=2 then '+QuotedStr('Ajuste de Estoque')
                        +' when CMP_DOCORI=3 then '+QuotedStr('Balanco')
                        +' when CMP_DOCORI=4 then '+QuotedStr('Ordem de Produção')
                        +' when CMP_DOCORI=5 then '+QuotedStr('Zerar Estoque')
                        +' when CMP_DOCORI=6 then '+QuotedStr('Sobras/Devoluções')
                        +' when CMP_DOCORI=7 then '+QuotedStr('Inicial')
                        +' else '+QuotedStr('Desconhecido')
                        +' end as DESTINO_ORIGEM '

                        +',PDCODPRO AS CMP_CODPRO,CMP_DATHOR '
                        +',substr( (CASE WHEN NVL(CMP_TIPOPROD,0)=0 THEN CMP_OBSERVACAO '
                        +' WHEN CMP_TIPOPROD=3 THEN '+QuotedStr('LOTE: ')+' || CMP_LOTE || '+QuotedStr(' ')+' ||  CMP_OBSERVACAO '
                        +' WHEN CMP_TIPOPROD=4 THEN '+QuotedStr('SERIE: ')+' || CMP_SERIE || '+QuotedStr(' ')+' || CMP_OBSERVACAO '
                        +' ELSE CMP_OBSERVACAO END),1,200) AS OBSERVACOES '
                        +' ,CMP_ESTNOR '
                        +' ,CMP_SALDO_ANT '
                        +',DECODE(CMP_ESTNOR,'+QuotedStr('S')+',CMP_QTD,0) AS QTD_SAI '
                        +',DECODE(CMP_ESTNOR,'+QuotedStr('E')+',CMP_QTD,0) AS QTD_ENT '
                        +' ,CMP_SALDO_ATU '
                        +',(SELECT CFNOME FROM CADPRO_FILIAL WHERE CFFILIAL(+)=CMP_FILIAL) AS LOCAL_ARMAZEM '
                        +' FROM CADMOV_PROD '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+la_instrucao+iif(la_instrucao='','  1=1 ',''));


   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      query_temp.SQL.Add(' and nvl(PDNIVEL,0) '+mcinst2);

   mcinst2:='';
   mcinst:='';

   if clb_locais.Checked[clb_locais.Items.Count-1]=false then
      begin
      for x_locais:=0 to clb_locais.Items.Count-2 do
         begin
         if clb_locais.Checked[x_locais]=true then
            begin
            mcinst2:=mcinst2+mcinst+fExtraiCodigoEntreChaves(clb_locais.Items[x_locais]);
            mcinst:=',';
            end;
         end;
      end;
   if trim(mcinst2)<>'' then
      begin
      mcinst2:=' and CMP_FILIAL in ('+mcinst2+')';
      query_temp.sql.add(mcinst2);
      end;


   mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
   if trim(mcinst2)<>'' then
      begin
      if OMITIR_STATUS.Checked then
         query_temp.SQL.Add(' and nvl(PDSTATUS,0) not '+mcinst2)
      else
         query_temp.SQL.Add(' and nvl(PDSTATUS,0) '+mcinst2);
      end;


   if fsonumero(MDT1.Text)<>0 then
      begin
      query_temp.SQL.Add(' and TO_DATE(CMP_DATHOR)>='+QuotedStr(Formatdatetime(fdt2, strtodate(MDT1.Text))));

      end;



   if fsonumero(MDT2.Text)<>0 then
      begin
      query_temp.SQL.Add(' and TO_DATE(CMP_DATHOR)<='+QuotedStr(Formatdatetime(fdt2, strtodate(MDT2.Text))));
      end;

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      query_temp.SQL.Add(' and  PDCODPRO '+mcinst2);
   {
   if cb_estoque.ItemIndex<>cb_estoque.Items.Count-1 then
      begin
      query_temp.SQL.Add(' and CMP_FILIAL=:FILIAL ');
      query_temp.ParamByName('FILIAL').AsInteger:=cb_estoque.ItemIndex;
      end;
   }
//   query_temp.SQL.Add(mordem);



   end;

qr_cadest_mov.sql.Add('SELECT CMP_ID,CMP_ID_ANO,PDNOME,'+mpreco_unit+' as PRECO_UNIT,CMP_FILIAL,CMP_CHAVE_ANO,CMP_CHAVE,CMP_ITEM,CMP_DOCORI, '
                     +' CASE WHEN CMP_DOCORI=00 THEN :DOCORI00 '
                     +'  WHEN CMP_DOCORI=01 THEN :DOCORI01 '
                     +'  WHEN CMP_DOCORI=02 THEN :DOCORI02 '
                     +'  WHEN CMP_DOCORI=03 THEN :DOCORI03 '
                     +'  WHEN CMP_DOCORI=04 THEN :DOCORI04 '
                     +'  WHEN CMP_DOCORI=05 THEN :DOCORI05 '
                     +'  WHEN CMP_DOCORI=06 THEN :DOCORI06 '
                     +'  WHEN CMP_DOCORI=07 THEN :DOCORI07 '
                     +'  ELSE :DOCORI08 END AS DOCORI'


                     +' ,case when CMP_DOCORI=0 then '
                     +'   (select max(CRAZAO) from CADP01,CADCLI where CCODCLI=P1CODCLI '
                     +'   and (P1CODEMP=CMP_CODEMP or P1CODEMP=CMP_CODEMP+100 or P1CODEMP=CMP_CODEMP-100) '
                     +'   and P1CHAVE=CMP_CHAVE and P1LOTSEQ=CMP_CHAVE_ANO) '
                     +' when CMP_DOCORI=1 then '
                     +'   (select max(FRAZAO) from CADPF1,CADFOR where FCODFOR=PF1CODFOR '
                     +'   and (PF1CODEMP=CMP_CODEMP or PF1CODEMP=CMP_CODEMP+100 or PF1CODEMP=CMP_CODEMP-100) '
                     +'   and PF1CHAVE=CMP_CHAVE and PF1LOTSEQ=CMP_CHAVE_ANO) '
                     +' when CMP_DOCORI=2 then '+QuotedStr('Ajuste de Estoque')
                     +' when CMP_DOCORI=3 then '+QuotedStr('Balanco')
                     +' when CMP_DOCORI=4 then '+QuotedStr('Ordem de Produção')
                     +' when CMP_DOCORI=5 then '+QuotedStr('Zerar Estoque')
                     +' when CMP_DOCORI=6 then '+QuotedStr('Sobras/Devoluções')
                     +' when CMP_DOCORI=7 then '+QuotedStr('Inicial')
                     +' else '+QuotedStr('Desconhecido')
                     +' end as DESTINO_ORIGEM '


                     +',PDCODPRO AS CMP_CODPRO,CMP_DATHOR '
                     +',substr( (CASE WHEN NVL(CMP_TIPOPROD,0)=0 THEN CMP_OBSERVACAO '
                     +' WHEN CMP_TIPOPROD=3 THEN '+QuotedStr('LOTE: ')+' || CMP_LOTE || '+QuotedStr(' ')+' ||  CMP_OBSERVACAO '
                     +' WHEN CMP_TIPOPROD=4 THEN '+QuotedStr('SERIE: ')+' || CMP_SERIE || '+QuotedStr(' ')+' || CMP_OBSERVACAO '
                     +' ELSE CMP_OBSERVACAO END),1,200) AS OBSERVACOES '
                     +' ,CMP_ESTNOR '
                     +' ,CMP_SALDO_ANT '
                     +',DECODE(CMP_ESTNOR,'+QuotedStr('S')+',CMP_QTD,0) AS QTD_SAI '
                     +',DECODE(CMP_ESTNOR,'+QuotedStr('E')+',CMP_QTD,0) AS QTD_ENT '
                     +' ,CMP_SALDO_ATU '
                     +',(SELECT CFNOME FROM CADPRO_FILIAL WHERE CFFILIAL(+)=CMP_FILIAL) AS LOCAL_ARMAZEM '
                     +' FROM CADMOV_PROD '+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','  1=1 ',''));


mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   qr_cadest_mov.SQL.Add(' and NVL(PDNIVEL,0) '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
if trim(mcinst2)<>'' then
   begin
   if OMITIR_STATUS.Checked then
      qr_cadest_mov.SQL.Add(' and NVL(PDSTATUS,0) not '+mcinst2)
   else
      qr_cadest_mov.SQL.Add(' and NVL(PDSTATUS,0) '+mcinst2);
   end;

   mcinst2:='';
   mcinst:='';

if clb_locais.Checked[clb_locais.Items.Count-1]=false then
   begin
   for x_locais:=0 to clb_locais.Items.Count-2 do
      begin
      if clb_locais.Checked[x_locais]=true then
         begin
         mcinst2:=mcinst2+mcinst+fExtraiCodigoEntreChaves(clb_locais.Items[x_locais]);
         mcinst:=',';
         end;
      end;
   end;
if trim(mcinst2)<>'' then
   begin
   mcinst2:=' and CMP_FILIAL in ('+mcinst2+')';
   qr_cadest_mov.sql.add(mcinst2);
   end;


qr_cadest_mov.ParamByName('DOCORI00').AsString:='Pedido de Vendas';
qr_cadest_mov.ParamByName('DOCORI01').AsString:='Pedido de Compras';
qr_cadest_mov.ParamByName('DOCORI02').AsString:='Ajuste de Estoque';
qr_cadest_mov.ParamByName('DOCORI03').AsString:='Balanço';
qr_cadest_mov.ParamByName('DOCORI04').AsString:='Ordem de Produção';
qr_cadest_mov.ParamByName('DOCORI05').AsString:='Zear Estoque';
qr_cadest_mov.ParamByName('DOCORI06').AsString:='Sobras/Devoluções';
qr_cadest_mov.ParamByName('DOCORI07').AsString:='Inicial';
qr_cadest_mov.ParamByName('DOCORI08').AsString:='Desconhecido';

if fsonumero(MDT1.Text)<>0 then
   begin
   qr_cadest_mov.SQL.Add(' and TO_DATE(CMP_DATHOR)>=:DATHOR_INI ');
   qr_cadest_mov.ParamByName('DATHOR_INI').AsDateTime:=StrToDate(MDT1.Text);

   end;



if fsonumero(MDT2.Text)<>0 then
   begin
   qr_cadest_mov.SQL.Add(' and TO_DATE(CMP_DATHOR)<=:DATHOR_FIN ');
   qr_cadest_mov.ParamByName('DATHOR_FIN').AsDateTime:=StrToDate(MDT2.Text);
   end;

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   qr_cadest_mov.SQL.Add(' and  PDCODPRO '+mcinst2);
{
if cb_estoque.ItemIndex<>cb_estoque.Items.Count-1 then
   begin
   qr_cadest_mov.SQL.Add(' and CMP_FILIAL=:FILIAL ');
   qr_cadest_mov.ParamByName('FILIAL').AsInteger:=cb_estoque.ItemIndex;
   end;
}
qr_cadest_mov.SQL.Add(mOrdem);


if CB_PROD_SEMMOV.Checked=true then
   begin
   try
      query_temp.ExecSQL;
   except on e : exception do
      ex_erroSql_Novo(query_temp,295,'func Erro:'+e.Message ,'CCADMOV_PROD');
      end;
   freeandnil(query_temp);

   qr_cadest_mov.Close;
   qr_cadest_mov.sql.Clear;
   qr_cadest_mov.sql.Add('SELECT TABELA.*,ROWNUM AS POSICAO FROM ( ');

   qr_cadest_mov.sql.Add('Select * from cadmovprodep '
                        +' union all ');


   qr_cadest_mov.sql.Add('SELECT 0 as cmp_id,0 AS CMP_ID_ANO,CADPRO.PDNOME as PDNOME,CADPRO.'+mpreco_unit+' as PRECO_UNIT,1 as CMP_FILIAL,0 AS CMP_CHAVE_ANO,0 AS CMP_CHAVE,0 AS CMP_ITEM,-1 AS CMP_DOCORI, '
                     +' '+QuotedStr('Sem Movimento')+' as DOCORI'
                     +','+QuotedStr('Sem Movimento')+' as DESTINO_ORIGEM '
                     +',PDCODPRO AS CMP_CODPRO'
                     +',sysdate as CMP_DATHOR '
                     +','+QuotedStr('         ')+' as  OBSERVACOES '
                     +' ,'+QuotedStr('N')+' as CMP_ESTNOR '
                     +' ,NVL(PDSALDO,0) as CMP_SALDO_ANT '
                     +',0 AS QTD_SAI '
                     +',0 AS QTD_ENT '
                     +' ,NVL(PDSALDO,0) as CMP_SALDO_ATU '
                     +','+QuotedStr('GERAL')+' AS LOCAL_ARMAZEM '
                     +' FROM CADPRO,cadmovprodep '
                     +'       where CMP_CODPRO(+)=PDCODPRO '
                     +' and CMP_CODPRO is null ');
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      qr_cadest_mov.SQL.Add(' and  PDCODPRO '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      qr_cadest_mov.SQL.Add(' and NVL(PDNIVEL,0) '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLB_STATUS);
   if trim(mcinst2)<>'' then
      begin
      if OMITIR_STATUS.Checked then
         qr_cadest_mov.SQL.Add(' and NVL(PDSTATUS,0) not '+mcinst2)
      else
         qr_cadest_mov.SQL.Add(' and NVL(PDSTATUS,0) '+mcinst2);
      end;


   qr_cadest_mov.sql.Add(') TABELA ');
//   qr_cadest_mov.sql.Add(mOrdem);

   end
else
   begin
   qr_cadest_mov.SQL.text:='SELECT TABELA.*,ROWNUM AS POSICAO FROM ( '
                          +qr_cadest_mov.SQL.text
                          +') TABELA ';

   end;

qr_cadest_mov.sql.Add(mOrdem);

// ADICIONANDO AGRUPAMENTO

{
qr_cadest_mov.SQL.Text:=' SELECT TAB05.* '
                  +',CASE WHEN SAIDAS-ENTRADAS > 0 THEN  SAIDAS-ENTRADAS ELSE 0 END AS QTD_SAI '
                  +',CASE WHEN SAIDAS-ENTRADAS > 0 THEN 0 ELSE  (SAIDAS-ENTRADAS)*-1 END AS QTD_ENT'
                  +',CMP_SALDO_ANT - CASE WHEN SAIDAS-ENTRADAS > 0 THEN  SAIDAS-ENTRADAS ELSE 0 END '
                  +'              +  CASE WHEN SAIDAS-ENTRADAS > 0 THEN 0 ELSE  (SAIDAS-ENTRADAS)*-1 END '
                  +' AS CMP_SALDO_ATU '
                  +', CASE WHEN SAIDAS-ENTRADAS > 0 THEN  '+QuotedStr('S')+' ELSE '+QuotedStr('E')+' END  AS CMP_ESTNOR '
                  +' FROM ( '
                  +'SELECT MIN(CMP_ID) AS CMP_ID '
                  +'      ,MIN(CMP_ID_ANO) AS CMP_ID_ANO '
                  +'      ,MAX(CMP_DATHOR) AS CMP_DATHOR '
                   +'      ,PDNOME '
                  +'      ,PRECO_UNIT '
                  +'      ,CMP_FILIAL '
                  +'      ,CMP_CHAVE_ANO '
                  +'      ,CMP_CHAVE '
                  +'      ,CMP_ITEM '
                  +'      ,CMP_DOCORI '
                  +'      ,DOCORI '
                  +'      ,DESTINO_ORIGEM '
                  +'      ,CMP_CODPRO '
                  +'      ,LOCAL_ARMAZEM '
                  +'      ,max(OBSERVACOES) as OBSERVACOES '
                  +'      ,MIN(ROWNUM) AS POSICAO '
                  +'      ,SUM(QTD_SAI) AS SAIDAS '
                  +'      ,SUM(QTD_ENT) AS ENTRADAS '
                  +'      ,SUM(SALDO_ANTERIOR) AS CMP_SALDO_ANT '
                  +'      from  ( '
                  +' SELECT TAB03.*, CASE WHEN ITEM_POS=1 THEN CMP_SALDO_ANT ELSE 0 END AS SALDO_ANTERIOR '
                  +' FROM ( '
                  +'SELECT TAB02.* '
                  +' ,ROW_NUMBER() OVER '
                  +' (PARTITION BY CMP_CODPRO,CMP_DATHOR,PRECO_UNIT,CMP_FILIAL,CMP_CHAVE_ANO,CMP_CHAVE, '
                  +'CMP_ITEM,CMP_DOCORI,DESTINO_ORIGEM,CMP_CODPRO,LOCAL_ARMAZEM '
                  +' ORDER BY      CMP_CODPRO,CMP_DATHOR,PRECO_UNIT,CMP_FILIAL,CMP_CHAVE_ANO,CMP_CHAVE,'
                  +'CMP_ITEM,CMP_DOCORI,DESTINO_ORIGEM,CMP_CODPRO,LOCAL_ARMAZEM '




                  +') AS ITEM_POS '
                  +'FROM ( '
                  +qr_cadest_mov.SQL.Text
                  +') TAB02 '
                  +') TAB03 '
                  +') TAB04 '
                  +'GROUP BY       PDNOME      ,PRECO_UNIT      ,CMP_FILIAL '
                  +'      ,CMP_CHAVE_ANO      ,CMP_CHAVE      ,CMP_ITEM      ,CMP_DOCORI,DOCORI '
                  +'      ,DESTINO_ORIGEM      ,CMP_CODPRO '
                  +'      ,LOCAL_ARMAZEM '
                  +') TAB05 ';

qr_cadest_mov.SQL.Add(mOrdem);

// TERMINO AGRUPAMENTO
}

// adicionando agrupamento novo

qr_cadest_mov.SQL.Text:='SELECT TAB07.* FROM  ( '
                       +' SELECT CMP_FILIAL,LOCAL_ARMAZEM,CMP_CHAVE_ANO,CMP_CHAVE '
                       +',CMP_ITEM,CMP_DOCORI,CMP_DATHOR,CMP_ESTNOR'

                       +',case when ENTRADAS=0 THEN SAIDAS '
                       +' WHEN ENTRADAS>SAIDAS THEN 0 '
                       +' ELSE SAIDAS-ENTRADAS END AS QTD_SAI '

                       +',case when SAIDAS=0 THEN ENTRADAS '
                       +' WHEN SAIDAS>ENTRADAS THEN 0 '
                       +' ELSE ENTRADAS-SAIDAS END AS QTD_ENT '

{                      +' ,SAIDAS AS QTD_SAI '
                       +' ,ENTRADAS AS QTD_ENT '
 }


                       +' ,OBSERVACOES,DOCORI,DESTINO_ORIGEM '


                       +',POSICAO,PDNOME,CMP_CODPRO,CMP_ID,CMP_ID_ANO,PRECO_UNIT '
                       +',SUM((CMP_SALDO_ANT+ENTRADAS)-SAIDAS)  OVER  '
                       +'(PARTITION BY CMP_FILIAL,CMP_CODPRO ORDER BY CMP_FILIAL,CMP_CODPRO,POSICAO) AS CMP_SALDO_ATU '
                       +', (SAIDAS-ENTRADAS)+ (SUM((CMP_SALDO_ANT+ENTRADAS)-SAIDAS)  '
                       +' OVER  (PARTITION BY CMP_FILIAL,CMP_CODPRO ORDER BY CMP_FILIAL,CMP_CODPRO,POSICAO)) AS CMP_SALDO_ANT '
                       +' FROM ( SELECT MIN(CMP_ID) AS CMP_ID,MIN(CMP_ID_ANO) AS CMP_ID_ANO, '
                       +' MAX(CMP_DATHOR) AS CMP_DATHOR, max(OBSERVACOES) as OBSERVACOES, '
                       +'MIN(ROWNUM) AS POSICAO,SUM(QTD_SAI) AS SAIDAS, SUM(QTD_ENT) AS ENTRADAS, '
                       +' SUM(CASE WHEN ITEM_POS=1 THEN CMP_SALDO_ANT ELSE 0 END) AS CMP_SALDO_ANT '
                       +' ,max(CMP_ESTNOR) as CMP_ESTNOR '
                       +',PDNOME,PRECO_UNIT,CMP_FILIAL,CMP_CHAVE_ANO,CMP_CHAVE,CMP_ITEM,CMP_DOCORI, '
                       +'DOCORI,DESTINO_ORIGEM,CMP_CODPRO,LOCAL_ARMAZEM    from  ( '
                       +' SELECT TAB01.* '
                       +' ,ROW_NUMBER() OVER  (PARTITION BY CMP_CODPRO,CMP_FILIAL '
                       +' ORDER BY     CMP_FILIAL,CMP_CODPRO,CMP_DATHOR,PRECO_UNIT, '
                       +' CMP_ID_ANO,CMP_ID,CMP_ITEM,CMP_DOCORI,DESTINO_ORIGEM, '
//                       +' CMP_CHAVE_ANO,CMP_CHAVE,CMP_ITEM,CMP_DOCORI,DESTINO_ORIGEM, '
                       +' CMP_CODPRO,LOCAL_ARMAZEM ) AS ITEM_POS '
                       +' FROM ( '
                       +qr_cadest_mov.SQL.Text
                       +') TAB01 ORDER BY PDNOME,CMP_CODPRO,ITEM_POS '
                       +') TAB02 GROUP BY '
                       +'PDNOME,PRECO_UNIT,CMP_FILIAL,CMP_CHAVE_ANO, CMP_CHAVE,CMP_ITEM,CMP_DOCORI,DOCORI, '
                       +' DESTINO_ORIGEM,CMP_CODPRO,LOCAL_ARMAZEM '
                       +' ORDER BY CMP_CODPRO,POSICAO) TAB03 '
                       +' ORDER BY CMP_CODPRO,POSICAO '
                       +') tab07 where ( (QTD_SAI>0 OR QTD_ENT>0) OR DOCORI='+quotedstr('Sem Movimento')+') '
                       +' ORDER BY CMP_FILIAL,PDNOME,CMP_CODPRO,POSICAO ';

// termino agrupamento novo


//  ex_erroSql_Novo(qr_cadest_mov,282,'func Erro:' ,'CADMOV_PROD');

try
   qr_cadest_mov.Open;
except on e : exception do
   ex_erroSql_Novo(qr_cadest_mov,282,'func Erro:'+e.Message ,'CCADMOV_PROD');
   end;


end;

procedure TFrm_Extrato_Completo.FormCreate(Sender: TObject);
var
  x: Integer;
   mjpeg: TJPEGImage;

  n: Integer;
  nivel  : TNivPro;

begin


clb_locais.items.clear;

if fLerGenerico_query('CADPRO_FILIAL','CFNOME,CFFILIAL','CFCODEMP=0'+inttostr(codemp)+' ORDER BY CFFILIAL',query_consulta) then
   begin
   While not query_consulta.Eof do
      begin
      clb_locais.Items.Add(query_consulta.fieldbyname('CFNOME').AsString+' ['+query_consulta.FieldbyName('CFFILIAL').AsString+']');
      query_consulta.Next;
      end;
   end;
clb_locais.Items.Add('Todos');
clb_locais.Selected[clb_locais.Count-1];
clb_locais.Checked[clb_locais.Items.Count-1]:=True;
clb_locaisClick(self);

if flfilpad(-5,'_EXTRATO','ordem') then
   cb_ordem.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);


   MDT1.Text:=Formatdatetime(fdt2, date);


CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');


RLReport1.Borders.DrawLeft      :=true;
RLReport1.Borders.DrawTop       :=true;
RLReport1.Borders.DrawRight     :=true;
RLReport1.Borders.DrawBottom    :=true;
//rlband_cabdet.Borders.DrawTop   :=true;
//rlband_cabgru.Borders.DrawBottom:=true;
rlband_cab.Borders.DrawBottom:=true;

RLLabel1.Borders.DrawBottom:=true;
RLDBText1.Borders.DrawBottom:=true;
RLLabel2.Borders.DrawBottom:=true;
RLDBText2.Borders.DrawBottom:=true;

rlband_cabdet.Borders.DrawBottom:=true;
rlsum_criterito.Borders.DrawTop :=true;
rlband_rodgru.Borders.DrawTop   :=true;

rlband_totgru.Borders.DrawTop   :=true;
rlband_sumger.Borders.DrawTop   :=true;

rlcab_DESTINO_ORIGEM.Borders.Drawleft:=true;
rlcab_CMP_DOCORI.Borders.Drawleft    :=true;
rlcab_CMP_SALDO_ANT.Borders.Drawleft :=true;
rlcab_QTD_ENT.Borders.Drawleft       :=true;
rlcab_QTD_SAI.Borders.Drawleft       :=true;
rlcab_CMP_SALDO_ATU.Borders.Drawleft :=true;
rlcab_CMP_CHAVE.Borders.Drawleft     :=true;
rlcab_OBSERVACOES.Borders.Drawleft   :=true;

rldet_DESTINO_ORIGEM.Borders.Drawleft:=true;
rldet_CMP_DOCORI.Borders.Drawleft    :=true;
rldet_CMP_SALDO_ANT.Borders.Drawleft :=true;
rldet_QTD_ENT.Borders.Drawleft       :=true;
rldet_QTD_SAI.Borders.Drawleft       :=true;
rldet_CMP_SALDO_ATU.Borders.Drawleft :=true;
rldet_CMP_CHAVE.Borders.Drawleft     :=true;
rldet_OBSERVACOES.Borders.Drawleft   :=true;


//RLBand_cab.Borders.DrawLeft:=true;
qr_cadest_movCMP_SALDO_ANT.DisplayFormat:=mcasqtd;
qr_cadest_movCMP_SALDO_ATU.DisplayFormat:=mcasqtd;
qr_cadest_movQTD_SAI.DisplayFormat:=mcasqtd;
qr_cadest_movQTD_ENT.DisplayFormat:=mcasqtd;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
tsRelatorio.TabVisible:=false;
mjpeg:=TJPEGImage.Create;
if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLImage_logo.Picture.Bitmap.Assign(mjpeg);
   RLImage_logo.visible := True;
   end
else
   RLImage_logo.visible := False;
freeandnil(mjpeg);
tsrelatorio.tabvisible:=false;


end;

procedure TFrm_Extrato_Completo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
mdiferenca: Real;
mcampolgc: String;
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
      end
   end;

end;

procedure TFrm_Extrato_Completo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;


function fEstoqueAnterior(pData: TDatetime; pLocEstoque: Integer;pCodpro: Real; pGrade: String): Real;
var
mCampoEstoque: String;
x: Integer;
mAchou: boolean;
mMes_ant: Integer;
begin

if ValInt(copy(mpseg,4,2))=2 then
   begin
   if pLocEstoque=3 then
      mCampoEstoque:='CED_QTDDIAT'
   else if pLocEstoque=2 then
      mCampoEstoque:='CED_QTDDIAR'
   else if pLocEstoque=1 then
      mCampoEstoque:='CED_QTDDIAC'
   else
      mCampoEstoque:='CED_QTDDIA';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEGD where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy', pData)
                     +' and CED_MES=0'+FormatDateTime('mm',pData)
                     +' and CED_CODPRO=0'+FloattoStr(pCodpro));
   if pgrade='' then
      DM1.Query1.SQL.add(' and CED_GRADE is null ')
   else
      DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*),max(CED_ANO) as CED_ANO, max(CED_MES) as CED_MES from '
                        +' CADEGD where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                        +'( ( CED_ANO=0'+FormatDateTime('yyyy', pData)
                        +' and CED_MES<'+FormatDateTime('mm',pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) '
                        +' or ( CED_ANO<'+FormatDateTime('yyyy', pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) )'
                         );
      if pgrade='' then
         DM1.Query1.SQL.add(' and CED_GRADE is null ')
      else
         DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));

      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger<=0 then
         result:=0
      else
         begin
         pData:=StrtoDate('01/'+FormatFloat('00',DM1.Query1.fieldbyName('CED_MES').AsFloat)
                         +'/'+FormatFloat('0000',DM1.Query1.fieldbyName('CED_ANO').AsFloat) );
         mMes_ant:=Valint(formatDatetime('mm',pdata));
         While true do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
            for x:=1 to 31 do
               begin
               DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
               end;
            DM1.Query1.SQL.add(' from CADEGD ');
            DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
            DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
            DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
            DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
            if pgrade='' then
               DM1.Query1.SQL.add(' and CED_GRADE is null ')
            else
               DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
            DM1.Query1.open;
            if DM1.Query1.IsEmpty then
               begin
               result:=0;
               exit;
               end
            else
               begin
               for x:=31 downto 1 do
                  begin
                  if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
                     begin
                     result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
                     exit;
                     end;
                  end;
               end;
            While Valint(FormatDatetime('mm',pData))=mMes_ant do
               begin
               pData:=pData-1;
               end;
            mMes_ant:=Valint(FormatDatetime('mm',pData));
            end;
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
      for x:=1 to 31 do
         begin
         DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
         end;
      DM1.Query1.SQL.add(' from CADEGD ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
      DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
      if pgrade='' then
         DM1.Query1.SQL.add(' and CED_GRADE is null ')
      else
         DM1.Query1.SQL.add(' and CED_GRADE='+chr(39)+pGrade+chr(39));
      DM1.Query1.open;
      if DM1.Query1.IsEmpty then
         begin
         result:=0;
         exit;
         end
      else
         begin
         for x:=31 downto 1 do
            begin
            if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
               begin
               result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
               exit;
               end;
            end;
         end;
      result:=0;
      exit;
      end;
   end
else
   begin
   if pLocEstoque=3 then
      mCampoEstoque:='CED_QTDDIAT'
   else if pLocEstoque=2 then
      mCampoEstoque:='CED_QTDDIAR'
   else if pLocEstoque=1 then
      mCampoEstoque:='CED_QTDDIAC'
   else
      mCampoEstoque:='CED_QTDDIA';

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEDIA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy', pData)
                     +' and CED_MES=0'+FormatDateTime('mm',pData)
                     +' and CED_CODPRO=0'+FloattoStr(pCodpro));

   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Select count(*),max(CED_ANO) as CED_ANO, max(CED_MES) as CED_MES from '
                        +' CADEDIA where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                        +'( ( CED_ANO=0'+FormatDateTime('yyyy', pData)
                        +' and CED_MES<'+FormatDateTime('mm',pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) '
                        +' or ( CED_ANO<'+FormatDateTime('yyyy', pData)
                        +' and CED_CODPRO=0'+FloattoStr(pCodpro)+' ) )'
                         );
      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger<=0 then
         result:=0
      else
         begin
         pData:=StrtoDate('01/'+FormatFloat('00',DM1.Query1.fieldbyName('CED_MES').AsFloat)
                         +'/'+FormatFloat('0000',DM1.Query1.fieldbyName('CED_ANO').AsFloat) );
         mMes_ant:=Valint(formatDatetime('mm',pdata));
         While true do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
            for x:=1 to 31 do
               begin
               DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
               end;
            DM1.Query1.SQL.add(' from CADEDIA ');

            DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
            DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
            DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
            DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
            DM1.Query1.open;
            if DM1.Query1.IsEmpty then
               begin
               result:=0;
               exit;
               end
            else
               begin
               for x:=31 downto 1 do
                  begin
                  if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
                     begin
                     result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
                     exit;
                     end;
                  end;
               end;
            While Valint(FormatDatetime('mm',pData))=mMes_ant do
               begin
               pData:=pData-1;
               end;
            mMes_ant:=Valint(FormatDatetime('mm',pData));
            end;
         end;
      end
   else
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add(' Select CED_ANO,CED_MES,CED_CODPRO');
      for x:=1 to 31 do
         begin
         DM1.Query1.SQL.Add(', '+mCampoEstoque+FormatFloat('00',x));
         end;
      DM1.Query1.SQL.add(' from CADEDIA ');
      DM1.Query1.SQL.Add(' where '+iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.Add('       CED_ANO='+FormatDatetime('yyyy', pData));
      DM1.Query1.SQL.Add(' and   CED_MES='+FormatDatetime('mm', pData));
      DM1.Query1.SQL.Add(' and   CED_CODPRO='+FloattoStr(pcodpro));
      DM1.Query1.open;
      if DM1.Query1.IsEmpty then
         begin
         result:=0;
         exit;
         end
      else
         begin
         for x:=31 downto 1 do
            begin
            if DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat<>0 then
               begin
               result:=DM1.query1.FieldByName(mCampoEstoque+FormatFloat('00',x)).AsFloat;
               exit;
               end;
            end;
         end;
      result:=0;
      exit;
      end;
   end;
end;

Function fLerMovimento(pTipo,pTipoExt: Integer; pLbx_Codpro,pLbx_Codfor,pLbx_Codgru,pLbx_Codram,pLbx_codcon,pLbx_CodTip,pLbx_TipPro: TListBox): Boolean;
begin
{
pTipo=0 Individual Extrato
      1 Geral Comparativo de Estoque
}

result:=true;
end;
function tFrm_Extrato_Completo.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_extp3.mlin:=form_impres_extp3.mlin+1;
      form_impres_extp3.RDprint1.ImpF(form_impres_extp3.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_Extrato_Completo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Odd(qr_cadest_movPOSICAO.AsInteger) then
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
       begin
       DBGrid1.Canvas.Brush.Color := clActiveCaption;
       DBGrid1.Canvas.Font.Color  := clWindow;
       end
    else
       begin
       DBGrid1.Canvas.Font.Color  := clBlack;
       DBGrid1.Canvas.Brush.Color := clMoneyGreen;
       end;
   end
else
   begin
   if (gdSelected in State) or (DBGrid1.SelectedRows.CurrentRowSelected) then
      begin
      DBGrid1.Canvas.Brush.Color := clActiveCaption;
      DBGrid1.Canvas.Font.Color  := clWindow;
      end
   else
      begin
      DBGrid1.Canvas.Font.Color  := clBlack;
      DBGrid1.Canvas.Brush.Color := clInfoBk;
      end;
   end;
DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);


end;

procedure TFrm_Extrato_Completo.bbDivAtuClick(Sender: TObject);
var
mSaida: String;
mEntrada: String;
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(0,'CADPRO' ,'PDCODEMP','EXT_CODEMP' ,'PDCODPRO' ,'EXT_CODPRO');

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
    begin
    if StrToDate(MDT2.Text)<StrToDate(MDT1.text) then
       begin
       FMensagem('Periodo Invalido. Data Inicial Maior que Final',0,['0'],0);
       MDT1.SetFocus;
       exit;
       end;
    end;





end;

procedure TFrm_Extrato_Completo.bbDivSairClick(Sender: TObject);
begin
close;
end;
function TFrm_Extrato_Completo.fLerDetalhes(pTipo: Integer): Boolean;
var
mSaida,mEntrada: String;
begin


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST_EXT','EXT_CODEMP',Form_SelEmp.CLB_EMPRESAS);
if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';
fInnerJoin(0,'CADUSR' ,'CODEMP','EXT_CODEMP' ,'CODUSR' ,'EXT_CODUSR');




end;

procedure TFrm_Extrato_Completo.FormShow(Sender: TObject);
var
Query_filial: TQuery;
begin
Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:='SG_ASSOC';
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' order by CFFILIAL ');
Query_filial.Open;
{
cb_estoque.Items.Clear;
While not Query_filial.Eof do
   begin
   cb_estoque.Items.Add(Query_filial.fieldbyName('CFNOME').asstring);
   Query_filial.Next;
   end;
if log_filial_padrao=0 then
   begin
  cb_estoque.ItemIndex:=0;
  end
else
  begin
  if Query_filial.Locate('CFFILIAL',IntToStr(log_filial_padrao),[]) then
     begin
     cb_estoque.Text:=Query_filial.fieldbyName('CFNOME').Value;
     with cb_estoque do
           ItemIndex := items.IndexOf(cb_estoque.Text);
     end;
  end;
  }
FreeAndNil(query_filial);


end;


procedure TFrm_Extrato_Completo.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)<>'' then
   begin
   if NOT fLerGenerico_query('CADPRO','PDNOME,PDUND,PDCODPRO','PDCODPRO=0'+CODPRO.Text,query_consulta) then
      begin
      fmensagem('Produto '+CODPRO.Text+' nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(query_consulta.Fieldbyname('PDCODPRO').asstring))
                                    +' - '+query_consulta.Fieldbyname('PDNOME').AsString);
      codpro.text := '';
      CODpro.SetFocus;
      end;
   end;

end;

procedure TFrm_Extrato_Completo.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_lpreco1',key);
   flqr1('PDCODPRO,PDNOME','PD','CADPRO','N','PDCODPRO',trim(CODPRO.Text));
   lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Query1.Fields[0].ASSTRING))
                              +' - '+DM1.Query1.Fields[1].Value);
   codpro.text := '';
   codpro.setfocus;
   key:=#0;
   end;


end;

procedure TFrm_Extrato_Completo.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_Extrato_Completo.bbImprimirClick(Sender: TObject);
var
x_pro: integer;
begin
lblcab_empresa.Caption:=DM1.Tb_EmpRAZAO.AsString;
if (UpperCase(PrimeiroNome(DM1.Tb_EmpRAZAO.AsString)))=(UpperCase(PrimeiroNome(DM1.Tb_EmpFANTASIA.AsString))) then
   lblcab_fantasia.Visible:=false
else
   begin
   lblcab_fantasia.Caption:=DM1.Tb_EmpFANTASIA.AsString;
   lblcab_fantasia.Visible:=true;
   end;
lblcab_obsrel.Caption :='Extrato de Produtos.';
lblcab_periodo.Caption:=fperiodo(0,MDT1.Text,MDT2.Text);
lblcab_dathor_emi.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, now);
rlsum_criterito.Lines.Clear;
rlsum_criterito.Lines.Add('Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, now));
rlsum_criterito.Lines.Add(fperiodo(0,MDT1.Text,MDT2.Text));
if lbx_codpro.Items.Count>0 then
   begin
   if OMITIR_PRO.Checked=true then
      rlsum_criterito.Lines.add('Sem os Produtos')
   else
      rlsum_criterito.Lines.add('Somente os Produtos');
   for x_pro:=0 to lbx_codpro.Items.Count-1 do
      begin
      rlsum_criterito.Lines.Add(lbx_codpro.Items[x_pro]);
      end;
   end;

if trim(mcinst2)<>'' then
    rlsum_criterito.Lines.Add('Produtos do(s) nivel(is) '+mcinst2);


qr_cadest_mov.First;

RLReport1.PreviewModal;

end;

procedure TFrm_Extrato_Completo.RLBand_rodgruAfterPrint(Sender: TObject);
begin
if CB_QUEBRAPAGINA.Checked then
   RLReport1.NewPage;

end;

procedure TFrm_Extrato_Completo.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_Extrato_Completo.qr_cadest_movCalcFields(DataSet: TDataSet);
var
query_lot: TQuery;
begin
qr_cadest_movobs.Value:=qr_cadest_movOBSERVACOES.AsString;
if (qr_cadest_movCMP_DOCORI.Value=-1) and (Log_TipoLote=1) then
   begin
   query_lot:=TQuery.Create(nil);
   query_lot.DatabaseName:='SG_ASSOC';
   query_lot.sql.add('Select CLNUMERO,CLQTD from CADLGC '
                    +' where CLCODPRO=:CODPRO');
   query_lot.ParamByName('CODPRO').AsFloat:=qr_cadest_movCMP_CODPRO.AsFloat;
   try
      query_lot.open;
   except on E : Exception do
      begin
      ex_erroSql_Novo(query_lot,1078,'_sped_efd '+E.Message,'CADLGC');
      end;
      end;
   if query_lot.IsEmpty=false then
      begin
      qr_cadest_movobs.Value:='LT: '+query_lot.fieldbyname('CLNUMERO').asstring+'['+query_lot.fieldbyname('CLQTD').asstring+']';
      query_lot.Next;
      While not query_lot.Eof do
         begin
         qr_cadest_movobs.Value:=qr_cadest_movobs.Value+'/'+'LT: '+query_lot.fieldbyname('CLNUMERO').asstring+'['+query_lot.fieldbyname('CLQTD').asstring+']';
         query_lot.Next;
         end;
      query_lot.close;
      freeandnil(query_lot);
      end;

   end;

end;

procedure TFrm_Extrato_Completo.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    mGru_Qtd :=0;
    mGru_PU  :=0;
    mGru_VT  :=0;

    mGer_Qtd :=0;
    mGer_VT  :=0;

end;

procedure TFrm_Extrato_Completo.rlband_totgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlRod_TotQtd.Caption:=floattostr(mGru_Qtd);
rlRod_PU.Caption    :=FormatFloat(mcasaspu, mGru_PU);
mGru_VT:=Arredonda((mGru_Qtd*mGru_PU),2);
rlRod_ValorTotal.Caption    :=FormatFloat(mcasas, mGru_VT);

mGer_Qtd:=mGer_Qtd+mGru_Qtd;
mGer_VT:=mGer_VT+mGru_VT;

mGru_Qtd:=0;
mGru_PU :=0;
mGru_VT :=0;


end;

procedure TFrm_Extrato_Completo.RLBand_sumgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlSum_TotQtd.Caption:=floattostr(mGer_Qtd);
mGru_VT:=Arredonda((mGru_Qtd*mGru_PU),2);
rlSum_ValorTotal.Caption    :=FormatFloat(mcasas, mGer_VT);


mGer_Qtd:=0;
mGru_VT :=0;

end;

procedure TFrm_Extrato_Completo.RLBand1AfterPrint(Sender: TObject);
begin
    mGru_Qtd :=qr_cadest_movCMP_SALDO_ATU.AsFloat;
    mGru_PU  :=qr_cadest_movPRECO_UNIT.AsFloat;

end;

procedure TFrm_Extrato_Completo.CLB_STATUSClick(Sender: TObject);
begin
CLB_STATUS:=Valida_CheckList(CLB_STATUS);

end;

procedure TFrm_Extrato_Completo.cb_ordemClick(Sender: TObject);
begin


fDeletaPadroes(-5,'_EXTRATO','ordem');
fGravaPadroes(-5,'ordem' ,'Text'
              ,'_EXTRATO',
              inttostr(cb_ordem.ItemIndex));


end;

procedure TFrm_Extrato_Completo.clb_locaisClick(Sender: TObject);
begin
clb_locais:=Valida_CheckList(clb_locais);

end;

procedure TFrm_Extrato_Completo.sbt_expexcelClick(Sender: TObject);
begin
fGerarPlanilhaExcel([],src_cadest_mov);

end;

end.


