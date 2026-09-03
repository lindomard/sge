unit S_Fiscal_PisCofins_Mono;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, ComCtrls, RLReport, DB,
  DBTables, Buttons, RLRichFilter, RLFilters, RLPDFFilter;

type
  TFrm_Fiscal_PisCofins_Mono = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsRelatorio: TTabSheet;
    cb_analitico: TCheckBox;
    rg_monofasica: TRadioGroup;
    edt_datfin: TDateEdit;
    Label2: TLabel;
    edt_datini: TDateEdit;
    Label1: TLabel;
    RLReport1: TRLReport;
    rlcabger: TRLBand;
    rlcabger_empresa: TRLLabel;
    rlcabger_data: TRLLabel;
    rlcabger_nomrel: TRLLabel;
    rlcabger_periodo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rlcabdet: TRLBand;
    Qr_PisCofins: TQuery;
    Qr_PisCofinsP1CHAVE: TFloatField;
    Qr_PisCofinsP1LOTSEQ: TFloatField;
    Qr_PisCofinsP1CODEMP: TFloatField;
    Qr_PisCofinsP1SERIE: TStringField;
    Qr_PisCofinsP1DATANF: TDateTimeField;
    Qr_PisCofinsRAZSOC: TStringField;
    Qr_PisCofinsCPF_CLI: TFloatField;
    Qr_PisCofinsCNPJ_CLI: TFloatField;
    Qr_PisCofinsVLR_ICMS: TFloatField;
    Qr_PisCofinsBC_ICMSST: TFloatField;
    Qr_PisCofinsVLR_ICMSST: TFloatField;
    Qr_PisCofinsVLR_ISENTO: TFloatField;
    Qr_PisCofinsTOTLIQ: TFloatField;
    Qr_PisCofinsVLR_REDUCAO: TFloatField;
    Qr_PisCofinsVLR_COFINS: TFloatField;
    Qr_PisCofinsVLR_ICMS_SN: TFloatField;
    Qr_PisCofinsVLR_PIS: TFloatField;
    src_PisCofins: TDataSource;
    Qr_PisCofinsSER_VLR_ISENTO: TFloatField;
    Qr_PisCofinsSER_VLR_TRIB: TFloatField;
    Qr_PisCofinsSER_VLR_PIS: TFloatField;
    Qr_PisCofinsSER_VLR_COFINS: TFloatField;
    rlcabdet_numnf: TRLLabel;
    rlcabdet_serie: TRLLabel;
    rlcabdet_dtnf: TRLLabel;
    rlcabdet_cnpj: TRLLabel;
    rlcabdet_razsoc: TRLLabel;
    rlcabdet_vlrnf: TRLLabel;
    rlcabdet_totmono: TRLLabel;
    rlcabdet_outros: TRLLabel;
    rlcabdet_servicos: TRLLabel;
    rlcabdet_mer_isento: TRLLabel;
    rlcabdet_stipi: TRLLabel;
    rlcabdet_mer_tributados: TRLLabel;
    rlcabdet_mer_vlrpis: TRLLabel;
    rlcabdet_mer_vlrcofins: TRLLabel;
    rldet: TRLBand;
    rldet_numnf: TRLDBText;
    rldet_serie: TRLDBText;
    rldet_dtnf: TRLDBText;
    rldet_cnpj: TRLDBText;
    rldet_razsoc: TRLDBText;
    rldet_vlrnf: TRLDBText;
    rldet_totmono: TRLDBText;
    rldet_outros: TRLDBText;
    rldet_mer_isento: TRLDBText;
    rldet_stipi: TRLDBText;
    rldet_mer_tributados: TRLDBText;
    Qr_PisCofinsBC_ICMS: TFloatField;
    rldet_mer_vlrpis: TRLDBText;
    rldet_mer_vlrcofins: TRLDBText;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    rlcabdet_mercadorias: TRLLabel;
    rlsd_mercadorias: TRLSubDetail;
    rlsd_cab: TRLBand;
    rlsd_cabmer: TRLLabel;
    rlsd_cabCodPro: TRLLabel;
    rlsd_cabQtd: TRLLabel;
    rlsd_cabUnd: TRLLabel;
    rlsd_cabNomPro: TRLLabel;
    rlsd_cabPU: TRLLabel;
    rlsd_cabDesc: TRLLabel;
    rlsd_cabOutVal: TRLLabel;
    rlsd_cabTotLiq: TRLLabel;
    rlsd_cabIsento: TRLLabel;
    rlsd_cabSTIPI: TRLLabel;
    rlsd_cabBCIcms: TRLLabel;
    rlsd_cabValPis: TRLLabel;
    rlsd_cabValCof: TRLLabel;
    RLBand1: TRLBand;
    rlsd_detCodPro: TRLDBText;
    Qr_Ped02_Merc: TQuery;
    Src_Ped02_Merc: TDataSource;
    Qr_Ped02_MercP2CODPRO: TFloatField;
    Qr_Ped02_MercP2ITEM: TFloatField;
    Qr_Ped02_MercP2QTD: TFloatField;
    Qr_Ped02_MercPDUND: TStringField;
    Qr_Ped02_MercPDNOME: TStringField;
    Qr_Ped02_MercP2PRECO: TFloatField;
    Qr_Ped02_MercP2TOTDES: TFloatField;
    Qr_Ped02_MercTOTOUTACRE: TFloatField;
    Qr_Ped02_MercTOTLIQ: TFloatField;
    Qr_Ped02_MercP2ISENTAS: TFloatField;
    Qr_Ped02_MercSTIPI: TFloatField;
    Qr_Ped02_MercP2BASEN: TFloatField;
    Qr_Ped02_MercP2VALPIS: TFloatField;
    Qr_Ped02_MercP2COFINS: TFloatField;
    rlsd_detQtd: TRLDBText;
    rlsd_detUnd: TRLDBText;
    rlsd_detNomPro: TRLDBText;
    rlsd_detPU: TRLDBText;
    rlsd_detDesc: TRLDBText;
    rlsd_detOutVal: TRLDBText;
    rlsd_detTotLiq: TRLDBText;
    rlsd_detIsento: TRLDBText;
    rlsd_detSTIPI: TRLDBText;
    rlsd_detBCIcms: TRLDBText;
    rlsd_detValPis: TRLDBText;
    rlsd_detValCof: TRLDBText;
    RLSum: TRLBand;
    rlsum_numnf: TRLLabel;
    rlsum_serie: TRLLabel;
    rlsum_dtnf: TRLLabel;
    rlsum_cnpj: TRLLabel;
    rlsum_razsoc: TRLLabel;
    rlsum_vlrnf: TRLLabel;
    rlsum_totmono: TRLLabel;
    rlsum_outros: TRLLabel;
    rlsum_mer_isento: TRLLabel;
    rlsum_stipi: TRLLabel;
    rlsum_mer_tributados: TRLLabel;
    rlsum_mer_vlrpis: TRLLabel;
    rlsum_mer_vlrcofins: TRLLabel;
    Qr_PisCofinsP1NUMNF: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    Qr_PisCofinsVLR_MONO: TFloatField;
    Qr_PisCofinsVLR_OUTROS: TFloatField;
    Label3: TLabel;
    edt_chave_ini: TEdit;
    Label4: TLabel;
    edt_chave_fin: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rldetBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSumBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edt_chave_iniExit(Sender: TObject);
    procedure edt_chave_finExit(Sender: TObject);
  private
    { Private declarations }
    mtotnota: Real;
    mger_totmono: real;
    mger_totout: real;
    mmer_totise: real;
    mmer_totstipi: real;
    mmer_tottrib: real;
    mmer_totpis: real;
    mmer_totcofins: real;

  public
    { Public declarations }
  end;

var
  Frm_Fiscal_PisCofins_Mono: TFrm_Fiscal_PisCofins_Mono;

implementation

uses Func, S_DM1;

{$R *.dfm}

procedure TFrm_Fiscal_PisCofins_Mono.FormCreate(Sender: TObject);
begin



edt_datini.Date:=IncMonth(date,-1);
edt_datini.Date:=StrtodAte('01/'+FormatDatetime('mm/yyyy',edt_datini.Date));
edt_datfin.Text:=FormatDatetime(fdt2, fultdiames(edt_datini.Date));
tsRelatorio.TabVisible:=false;
end;

procedure TFrm_Fiscal_PisCofins_Mono.bbSairClick(Sender: TObject);
begin
Qr_PisCofins.Close;
close;
end;

procedure TFrm_Fiscal_PisCofins_Mono.bbImprimirClick(Sender: TObject);
begin
rlcabger_empresa.Caption:=DM1.Tb_EmpRAZAO_CAB.AsString;
rlcabger_data.Caption   :='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
rlcabger_nomrel.Caption :='RELATORIO PIS/COFINS';
rlcabger_periodo.Caption :=fperiodo(0,edt_datini.Text,edt_datfin.Text);
Qr_PisCofins.Close;
Qr_PisCofins.SQL.Clear;
Qr_PisCofins.SQL.add('select P1CHAVE,P1LOTSEQ,P1CODEMP,P1SERIE,'
                    +' case when P1NUMNF>0 THEN '+QuotedStr('NF-')+' || TO_CHAR(P1NUMNF)  '
                    +' else '+QuotedStr('CF-')+' || TO_CHAR(P1NUMCF) END AS P1NUMNF '
                    +',CASE WHEN P1DATANF<'+QuotedStr(FormatDatetime(fdt, pdatanula+10))+' then P1DATDOC '
                    +' else P1DATANF end AS P1DATANF '
                    +',NVL(CFRAZAO,CRAZAO) AS RAZSOC '
                    +',NVL(CFCGC,CCPF) AS CPF_CLI '
                    +',NVL(CFCGC,CCNPJ) AS CNPJ_CLI '
                    +',sum(NVL(P2ICMSN,0)) AS VLR_ICMS '
                    +',SUM(NVL(P2BASER,0)) AS BC_ICMSST,SUM(NVL(P2ICMSR,0)+NVL(P2VALIPI,0)) AS VLR_ICMSST '
                    +',SUM(NVL(P2BASEN,0)) AS BC_ICMS '
                    +',SUM(NVL(P2ISENTAS,0)) AS VLR_ISENTO '
                    +',SUM(NVL(P2TOTLIQ,0)) AS TOTLIQ '
                    +',SUM(NVL(P2TOTOUT,0)) AS VLR_REDUCAO '
                    +',SUM(NVL(P2COFINS,0)) AS VLR_COFINS '
                    +',SUM(NVL(P2VLRICMS_SN,0)) AS VLR_ICMS_SN '
                    +',SUM(NVL(P2VALPIS,0)) AS VLR_PIS '
                    +',0 as ser_vlr_isento '
                    +',0 as ser_vlr_trib '
                    +',0 as ser_vlr_pis '
                    +',0 as ser_vlr_cofins '
                    +',sum(case when P2CST_PIS='+QuotedStr('04')+' then NVL(P2TOTLIQ,0) else 0 end) as vlr_mono '
                    +',sum(case when P2CST_PIS='+QuotedStr('04')+' then 0 else NVL(P2TOTLIQ,0) end) as  vlr_outros '

                    +' FROM CADP01,CADP02,CADCLI,CADCSF ' );

Qr_PisCofins.SQL.add(' WHERE P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2CODEMP=P1CODEMP '
                    +' AND CCODCLI=P1CODCLI '
                    +' AND CFCODEMP(+)=P1CODEMP AND CFLOTSEQ(+)=P1LOTSEQ AND CFCHAVEP(+)=P1CHAVE  and P1STATUS<>9 AND (P1NUMCF>0 OR P1NUMNF>0) ');


Qr_PisCofins.SQL.Add(fFormatdatetimeParaConsulta('P1DATDOC',true,edt_datini.Date));
Qr_PisCofins.SQL.Add(fFormatdatetimeParaConsulta('P1DATDOC',false,edt_datfin.Date));


if fsonumero(edt_chave_ini.Text)<>0 then
   begin
   Qr_PisCofins.SQL.add(' and P1CHAVE>='+fdeixanum(edt_chave_ini.Text));
   end;

if fsonumero(edt_chave_fin.Text)<>0 then
   begin
   Qr_PisCofins.SQL.add(' and P1CHAVE<='+fdeixanum(edt_chave_fin.Text));
   end;

{
if rg_monofasica.ItemIndex<>0 then
   begin
   if rg_monofasica.ItemIndex=1 then
      Qr_PisCofins.SQL.add(' and NVL(P2CST_PIS,'+QuotedStr('99')+')='+QuotedStr('04'))
   else
      Qr_PisCofins.SQL.add(' and NVL(P2CST_PIS,'+QuotedStr('99')+')<>'+QuotedStr('04'));
   end;

}
Qr_PisCofins.SQL.add(' GROUP BY  P1CHAVE,P1LOTSEQ,P1CODEMP,P1SERIE,'
                    +' case when P1NUMNF>0 THEN '+QuotedStr('NF-')+' || TO_CHAR(P1NUMNF)  '
                    +' else '+QuotedStr('CF-')+' || TO_CHAR(P1NUMCF) END  '
                    +',CASE WHEN P1DATANF<'+QuotedStr(FormatDatetime(fdt, pdatanula+10))+' then P1DATDOC '
                    +' else P1DATANF end  '
                    +',NVL(CFRAZAO,CRAZAO) ,NVL(CFCGC,CCPF) ,NVL(CFCGC,CCNPJ) ');
try
   Qr_PisCofins.Open;
except
   Qr_PisCofins.sql.savetofile(mpastatemp +'sql.txt');
   end;

if cb_analitico.Checked then
   rlsd_mercadorias.Visible:=true
else
   rlsd_mercadorias.Visible:=false;


RLReport1.PreviewModal;




end;

procedure TFrm_Fiscal_PisCofins_Mono.FormShow(Sender: TObject);
begin
rlcabger.Borders.DrawLeft  :=true;
rlcabger.Borders.DrawRight :=true;
rlcabger.Borders.DrawTop   :=true;
rlcabdet.Borders.DrawTop   :=true;
rlcabdet.Borders.DrawRight :=true;
rlcabdet.Borders.DrawLeft  :=true;
rlcabdet.Borders.DrawBottom:=true;

rlcabdet_numnf.Borders.DrawTop:=true;
rlcabdet_serie.Borders.DrawTop:=true;
rlcabdet_dtnf.Borders.DrawTop:=true;
rlcabdet_cnpj.Borders.DrawTop:=true;
rlcabdet_razsoc.Borders.DrawTop:=true;
rlcabdet_vlrnf.Borders.DrawTop:=true;

rlcabdet_servicos.Borders.DrawRight:=true;
rlcabdet_servicos.Borders.DrawLeft:=true;
rlcabdet_servicos.Borders.DrawBottom:=true;

rlcabdet_mercadorias.Borders.DrawRight:=true;
//rlcabdet_mercadorias.Borders.DrawLeft:=true;
rlcabdet_mercadorias.Borders.DrawBottom:=true;


rlcabdet_numnf.Borders.DrawRight:=true;
rlcabdet_serie.Borders.DrawRight:=true;
rlcabdet_dtnf.Borders.DrawRight:=true;
rlcabdet_cnpj.Borders.DrawRight:=true;
rlcabdet_razsoc.Borders.DrawRight:=true;
rlcabdet_vlrnf.Borders.DrawRight:=true;

rlcabdet_totmono.Borders.DrawRight:=true;
rlcabdet_totmono.Borders.DrawRight:=true;

rlcabdet_mer_isento.Borders.DrawRight:=true;
rlcabdet_stipi.Borders.DrawRight:=true;
rlcabdet_mer_vlrpis.Borders.DrawRight:=true;


rlcabdet.Borders.DrawRight:=true;
rlcabdet.Borders.DrawLeft:=true;
rlcabdet.Borders.DrawBottom:=true;

rldet.Borders.DrawRight:=true;
rldet.Borders.DrawLeft:=true;
rldet.Borders.DrawBottom:=true;
rlsd_cabmer.Borders.DrawBottom:=true;

rlsd_mercadorias.Borders.DrawRight:=true;
rlsd_mercadorias.Borders.Drawleft:=true;
rlsd_mercadorias.Borders.Drawbottom:=true;

rlsd_cabCodPro.Borders.DrawRight:=true;
rlsd_cabQtd.Borders.DrawRight:=true;
rlsd_cabUnd.Borders.DrawRight:=true;
rlsd_cabNomPro.Borders.DrawRight:=true;
rlsd_cabPU.Borders.DrawRight:=true;
rlsd_cabDesc.Borders.DrawRight:=true;
rlsd_cabOutVal.Borders.DrawRight:=true;
rlsd_cabTotLiq.Borders.DrawRight:=true;
rlsd_cabIsento.Borders.DrawRight:=true;
rlsd_cabSTIPI.Borders.DrawRight:=true;
rlsd_cabBCIcms.Borders.DrawRight:=true;
rlsd_cabValPis.Borders.DrawRight:=true;

rlsd_detCodPro.Borders.DrawRight:=true;
rlsd_detQtd.Borders.DrawRight:=true;
rlsd_detUnd.Borders.DrawRight:=true;
rlsd_detNomPro.Borders.DrawRight:=true;
rlsd_detPU.Borders.DrawRight:=true;
rlsd_detDesc.Borders.DrawRight:=true;
rlsd_detOutVal.Borders.DrawRight:=true;
rlsd_detTotLiq.Borders.DrawRight:=true;
rlsd_detIsento.Borders.DrawRight:=true;
rlsd_detSTIPI.Borders.DrawRight:=true;
rlsd_detBCIcms.Borders.DrawRight:=true;
rlsd_detValPis.Borders.DrawRight:=true;









rldet_numnf.Borders.DrawRight:=true;
rldet_serie.Borders.DrawRight:=true;
rldet_dtnf.Borders.DrawRight:=true;
rldet_cnpj.Borders.DrawRight:=true;
rldet_razsoc.Borders.DrawRight:=true;
rldet_vlrnf.Borders.DrawRight:=true;

rldet_totmono.Borders.DrawRight:=true;
rldet_outros.Borders.DrawRight:=true;

rldet_mer_isento.Borders.DrawRight:=true;
rldet_stipi.Borders.DrawRight:=true;
rldet_mer_vlrpis.Borders.DrawRight:=true;

RLSum.Borders.DrawRight:=true;
RLSum.Borders.DrawLeft:=true;
RLSum.Borders.DrawTop:=true;
RLSum.Borders.DrawBottom:=true;



rlsum_numnf.Borders.DrawRight:=true;
rlsum_serie.Borders.DrawRight:=true;
rlsum_dtnf.Borders.DrawRight:=true;
rlsum_cnpj.Borders.DrawRight:=true;
rlsum_razsoc.Borders.DrawRight:=true;
rlsum_vlrnf.Borders.DrawRight:=true;

rlsum_totmono.Borders.DrawRight:=true;
rlsum_outros.Borders.DrawRight:=true;

rlsum_mer_isento.Borders.DrawRight:=true;
rlsum_stipi.Borders.DrawRight:=true;
rlsum_mer_vlrpis.Borders.DrawRight:=true;


Qr_PisCofinsVLR_ICMS.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_MONO.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_OUTROS.DisplayFormat:=mcasas;

Qr_PisCofinsP1DATANF.DisplayFormat:=fdt2;
Qr_PisCofinsBC_ICMSST.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_ISENTO.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_ICMSST.DisplayFormat:=mcasas;
Qr_PisCofinsTOTLIQ.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_REDUCAO.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_COFINS.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_ICMS_SN.DisplayFormat:=mcasas;
Qr_PisCofinsVLR_PIS.DisplayFormat:=mcasas;
Qr_PisCofinsSER_VLR_ISENTO.DisplayFormat:=mcasas;
Qr_PisCofinsSER_VLR_TRIB.DisplayFormat:=mcasas;
Qr_PisCofinsSER_VLR_PIS.DisplayFormat:=mcasas;
Qr_PisCofinsSER_VLR_COFINS.DisplayFormat:=mcasas;
Qr_PisCofinsBC_ICMS.DisplayFormat:=mcasas;

Qr_Ped02_MercP2PRECO.DisplayFormat:=mcasaspu;
Qr_Ped02_MercP2TOTDES.DisplayFormat:=mcasas;
Qr_Ped02_MercP2ISENTAS.DisplayFormat:=mcasas;
Qr_Ped02_MercSTIPI.DisplayFormat:=mcasas;
Qr_Ped02_MercP2BASEN.DisplayFormat:=mcasas;
Qr_Ped02_MercP2VALPIS.DisplayFormat:=mcasas;
Qr_Ped02_MercTOTOUTACRE.DisplayFormat:=mcasas;
Qr_Ped02_MercTOTLIQ.DisplayFormat:=mcasas;
Qr_Ped02_MercP2VALPIS.DisplayFormat:=mcasas;
Qr_Ped02_MercP2COFINS.DisplayFormat:=mcasas;











end;

procedure TFrm_Fiscal_PisCofins_Mono.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Fiscal_PisCofins_Mono.rldetBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if rlsd_mercadorias.Visible then
   begin
   Qr_Ped02_Merc.Close;
   Qr_Ped02_Merc.SQL.Clear;
   Qr_Ped02_Merc.SQL.Add('select P2CODPRO,P2ITEM,P2QTD '
                        +',PDUND,PDNOME,P2PRECO,P2TOTDES '
                        +',P2ICMSR+P2VALIPI+P2ACRERAT+P2VSEGRAT+P2VFRERAT+P2VDESPACESRAT AS TOTOUTACRE '
                        +',NVL(P2TOTLIQ,0)+NVL(P2ICMSR,0)+NVL(P2VALIPI,0)+NVL(P2ACRERAT,0)+NVL(P2VSEGRAT,0)+NVL(P2VFRERAT,0)+NVL(P2VDESPACESRAT,0) AS TOTLIQ '
                        +',P2ISENTAS '
                        +',P2ICMSR+P2VALIPI AS STIPI '
                        +',P2BASEN '
                        +',P2VALPIS '
                        +',P2COFINS '
                        +',P2CST_PIS '
                        +'FROM CADP02,CADPRO '
                        +' WHERE PDCODPRO=P2CODPRO '
                        +' and P2CODEMP=:CODEMP '
                        +' and P2CHAVE=:CHAVE '
                        +' and P2LOTSEQ=:LOTSEQ '
                        +' order by P2ITEM '
                        );

   Qr_Ped02_Merc.ParamByName('CODEMP').AsInteger:=Qr_PisCofinsP1CODEMP.AsInteger;
   Qr_Ped02_Merc.ParamByName('CHAVE').AsFloat   :=Qr_PisCofinsP1CHAVE.AsFloat;
   Qr_Ped02_Merc.ParamByName('LOTSEQ').AsInteger:=Qr_PisCofinsP1LOTSEQ.AsInteger;
   Qr_Ped02_Merc.Open;

   end;

mtotnota      :=mtotnota+Qr_PisCofinsTOTLIQ.AsFloat;
mger_totmono  :=mger_totmono+Qr_PisCofinsVLR_MONO.AsFloat;
mger_totout   :=mger_totout+Qr_PisCofinsVLR_OUTROS.AsFloat;

mmer_totise   :=mmer_totise+Qr_PisCofinsVLR_ISENTO.AsFloat;
mmer_totstipi :=mmer_totstipi+Qr_PisCofinsVLR_ICMSST.AsFloat;
mmer_tottrib  :=mmer_tottrib+Qr_PisCofinsBC_ICMS.AsFloat;
mmer_totpis   :=mmer_totpis+Qr_PisCofinsVLR_PIS.AsFloat;
mmer_totcofins:=mmer_totcofins+Qr_PisCofinsVLR_COFINS.AsFloat;


end;

procedure TFrm_Fiscal_PisCofins_Mono.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotnota:=0;
mger_totmono:=0;
mger_totout:=0;

mmer_totstipi:=0;
mmer_tottrib:=0;
mmer_totpis:=0;
mmer_totcofins:=0;

end;

procedure TFrm_Fiscal_PisCofins_Mono.RLSumBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlsum_razsoc.Caption:='Total Geral........';
rlsum_vlrnf.Caption :=FormatFloat(mcasas, mtotnota);
rlsum_totmono.Caption :=FormatFloat(mcasas, mger_totmono);
rlsum_outros.Caption :=FormatFloat(mcasas, mger_totout);

rlsum_mer_isento.Caption :=FormatFloat(mcasas, mmer_totise);
rlsum_stipi.Caption :=FormatFloat(mcasas, mmer_totstipi);
rlsum_mer_vlrpis.Caption :=FormatFloat(mcasas, mmer_totpis);
rlsum_mer_vlrcofins.Caption :=FormatFloat(mcasas, mmer_totcofins);


mtotnota:=0;
mger_totmono:=0;
mger_totout:=0;
mmer_totise:=0;
mmer_totstipi:=0;
mmer_tottrib:=0;
mmer_totpis:=0;
mmer_totcofins:=0;

end;

procedure TFrm_Fiscal_PisCofins_Mono.edt_chave_iniExit(Sender: TObject);
begin
edt_chave_ini.Text:=fdeixanum(edt_chave_ini.Text);


if valint(edt_chave_ini.text)>valint(edt_chave_fin.Text) then
   edt_chave_fin.text:=edt_chave_ini.Text;

end;

procedure TFrm_Fiscal_PisCofins_Mono.edt_chave_finExit(Sender: TObject);
begin
edt_chave_fin.Text:=fdeixanum(edt_chave_fin.Text);

if valint(edt_chave_ini.text)>valint(edt_chave_fin.Text) then
   edt_chave_ini.text:=edt_chave_fin.Text;

end;

end.
