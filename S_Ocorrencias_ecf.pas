unit S_Ocorrencias_ecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, DB,
  DBTables;

type
  TFrm_Ocorrencias_ecf = class(TForm)
    Panel1: TPanel;
    dt_final: TDateEdit;
    Label2: TLabel;
    dt_inicial: TDateEdit;
    Label1: TLabel;
    Bit_visu: TBitBtn;
    RLReport_rel: TRLReport;
    RLGroup1: TRLGroup;
    RLBand_cabdet: TRLBand;
    cab_coditem: TRLLabel;
    cab_qtd: TRLLabel;
    cab_descpro: TRLLabel;
    cab_precuni: TRLLabel;
    cab_desc: TRLLabel;
    cab_totliq: TRLLabel;
    cab_sitaliqe: TRLLabel;
    cab_icmse: TRLLabel;
    cab_sitaliqc: TRLLabel;
    cab_icmsc: TRLLabel;
    RLBand_detalhe: TRLBand;
    det_qtd: TRLDBText;
    det_descpro: TRLDBText;
    det_precuni: TRLDBText;
    det_desc: TRLDBText;
    det_totliq: TRLDBText;
    det_sitaliqe: TRLDBText;
    det_icmse: TRLDBText;
    det_coditem: TRLDBText;
    det_sitaliqc: TRLDBText;
    det_icmsc: TRLDBText;
    RLBand_cabgru: TRLBand;
    RLBand_totcup: TRLBand;
    Query1: TQuery;
    DataSource1: TDataSource;
    RLLabel1: TRLLabel;
    Query1P1NUMCF: TFloatField;
    Query1P1DATACF: TDateTimeField;
    Query1CRAZAO: TStringField;
    Query1P2ITEM: TFloatField;
    Query1P2CODPRO: TFloatField;
    Query1PDNOME: TStringField;
    Query1PDUND: TStringField;
    Query1P2QTD: TFloatField;
    Query1P2PRECO: TFloatField;
    Query1P2TOTDES: TFloatField;
    Query1P2TOTLIQ: TFloatField;
    Query1P2CSOSN_ERRADO: TFloatField;
    Query1P2ALIQ_ERRADO: TFloatField;
    Query1SITALIQ_ERRADO: TStringField;
    Query1P2BASEN_ERRADO: TFloatField;
    Query1P2ICMSN_ERRADO: TFloatField;
    Query1CSOSN_CORRETO: TStringField;
    Query1SITALIQ_CORRETO: TStringField;
    Query1BASEN_CORRETO: TFloatField;
    Query1ICMS_CORRETO: TFloatField;
    RLBand_geral: TRLBand;
    rl_cab: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    det_toticmscor: TRLLabel;
    det_toticmserr: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand_totger: TRLBand;
    RLLabel13: TRLLabel;
    det_geralcmserr: TRLLabel;
    det_geralicmscor: TRLLabel;
    RLLabel_dthora: TRLLabel;
    RLLabel_periodo: TRLLabel;
    procedure Bit_visuClick(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand_detalheAfterPrint(Sender: TObject);
    procedure RLBand_totcupBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand_totgerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLReport_relBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dt_inicialExit(Sender: TObject);
    procedure dt_finalExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
{     cficmscor,cficmserr,totcfcor,totcferr : real;
     cficmscor_ger,cficmserr_ger,totcfcor_ger,totcferr_ger : real;}
     cficmserr,cficmscor,cficmserr_ger,cficmscor_ger: real;
  public
    { Public declarations }
  end;

var
  Frm_Ocorrencias_ecf: TFrm_Ocorrencias_ecf;



implementation

uses Func, S_DM1, MaskUtils;

{$R *.dfm}

procedure TFrm_Ocorrencias_ecf.Bit_visuClick(Sender: TObject);
begin
if (Trim(dt_inicial.Text)<>'/  /') and (Trim(dt_final.Text)<>'/  /') then
  if dt_inicial.Date > dt_final.Date then
  begin
  fmensagem('Data Inicial não pode ser maior'+#13+' que a Data Final!',0,['0'],0);
  exit;
  end;
Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' SELECT P1NUMCF,P1DATACF,CRAZAO,P2ITEM,P2CODPRO,PDNOME,PDUND,P2QTD, ');
Query1.SQL.Add(' P2PRECO,P2TOTDES,P2TOTLIQ,P2CSOSN_ERRADO,P2ALIQ_ERRADO,SITALIQ_ERRADO, ');
Query1.SQL.Add(' P2BASEN_ERRADO,P2ICMSN_ERRADO,CSOSN_CORRETO,');
Query1.SQL.Add(' CASE WHEN ALIQ_CORRETO>0 THEN TO_CHAR(ALIQ_CORRETO*100,'+QuotedStr('0000')+')');
Query1.SQL.Add(' WHEN CSOSN_CORRETO=103 OR CSOSN_CORRETO=203 THEN '+QuotedStr('I')) ;
Query1.SQL.Add(' WHEN CSOSN_CORRETO=300 OR CSOSN_CORRETO=400 THEN '+QuotedStr('N'));
Query1.SQL.Add(' WHEN CSOSN_CORRETO=500 THEN '+QuotedStr('F'));
Query1.SQL.Add(' ELSE TO_CHAR(CSOSN_CORRETO*100,'+QuotedStr('0000')+')end as SITALIQ_CORRETO,');
Query1.SQL.Add(' CASE WHEN ALIQ_CORRETO>0 THEN P2TOTLIQ ELSE 0 END AS BASEN_CORRETO ');
Query1.SQL.Add(',CASE WHEN ALIQ_CORRETO>0 THEN  TRUNC(  ((P2TOTLIQ*ALIQ_CORRETO)/100)  ,2) ');
Query1.SQL.Add(' ELSE 0 END AS ICMS_CORRETO from( ');
Query1.SQL.Add(' SELECT P1NUMCF,P1DATACF,CRAZAO,P2ITEM,P2CODPRO,PDNOME,PDUND ');
Query1.SQL.Add(',P2QTD,P2PRECO,P2TOTDES,P2TOTLIQ,P2CSOSN AS P2CSOSN_ERRADO ');
Query1.SQL.Add(',P2ALIQ AS P2ALIQ_ERRADO,CASE WHEN P2ALIQ>0 THEN TO_CHAR(P2ALIQ*100,'+QuotedStr('0000')+')');
Query1.SQL.Add(' WHEN P2CSOSN=103 OR P2CSOSN=203 THEN '+QuotedStr('I'));
Query1.SQL.Add(' WHEN P2CSOSN=300 OR P2CSOSN=400 THEN '+QuotedStr('N'));
Query1.SQL.Add(' WHEN P2CSOSN=500 THEN '+QuotedStr('F'));
Query1.SQL.Add(' ELSE  TO_CHAR(P2ALIQ*100,'+QuotedStr('0000')+')end as SITALIQ_ERRADO, ');
Query1.SQL.Add(' P2BASEN AS P2BASEN_ERRADO,P2ICMSN AS P2ICMSN_ERRADO,PDFIS_CSOSN_EST_CF AS CSOSN_CORRETO ');
Query1.SQL.Add(',CASE WHEN PDFIS_CSOSN_EST_CF IN ('+QuotedStr('101')+','+QuotedStr('102')+','+QuotedStr('202')+','+QuotedStr('900')+')');
Query1.SQL.Add(' THEN CALIQA ELSE 0 END AS ALIQ_CORRETO,PDTABICM AS TABICM ');
Query1.SQL.Add(' FROM CADP01,CADP02 PED2_SEL,CADNS,CADPRO PRO_SEL,CADCLI ');
Query1.SQL.Add(' where P2CHAVE=P1CHAVE AND P2LOTSEQ=P1LOTSEQ AND P2ORDEM=P1ORDEM AND P2CODEMP=P1CODEMP AND ');
Query1.SQL.Add(' CCODCLI=P1CODCLI AND PDCODPRO=P2CODPRO ');
query1.SQL.add(' AND NSCODEMP=P1CODEMP AND NSCHAVEP=P1CHAVE AND NSORDEMP=P1ORDEM AND NSLOTSEQ_CP=P1LOTSEQ');
query1.sql.Add(' AND NSSITCUP<>9');
query1.sql.Add(' AND exists (select P2CODPRO FROM CADP02 PED2_SUB '
                            +'  and NSTIPO<2 ' );

Query1.SQL.Add(' WHERE P1CODEMP='+IntToStr(codemp)+' AND PED2_SUB.P2CHAVE=PED2_SEL.P2CHAVE AND PED2_SUB.P2LOTSEQ=PED2_SEL.P2LOTSEQ ');
if (trim(dt_inicial.text)<>'/  /') and (trim(dt_final.text)<>'/  /') then
  begin
  query1.SQL.Add(' AND P1DATACF>=:DT_INICIAL');
  query1.ParamByName('DT_INICIAL').Value:=DT_INICIAL.Date;
  query1.sql.add(' AND P1DATACF<=:DT_FINAL');
  query1.ParamByName('DT_FINAL').Value:=DT_FINAL.Date;
  end
else if trim(dt_inicial.text)<>'/  /' then
  begin
  query1.SQL.Add(' AND P1DATACF>=:DT_INICIAL');
  query1.ParamByName('DT_INICIAL').Value:=DT_INICIAL.Date;
  end
else if trim(dt_final.text)<>'/  /' then
  begin
  query1.sql.add(' AND P1DATACF<=:DT_FINAL');
  query1.ParamByName('DT_FINAL').Value:=DT_FINAL.Date;
  end;
Query1.SQL.Add(' AND PED2_SUB.P2ORDEM=PED2_SEL.P2ORDEM AND PED2_SUB.P2CODEMP=PED2_SEL.P2CODEMP ');
query1.sql.add(' AND P1STATUS>0 AND P1STATUS<'+mstatus_excluido+' AND P1NUMCF>0 ');
Query1.SQL.Add(' AND PED2_SUB.P2CSOSN<>(select PDFIS_CSOSN_EST_CF ');
Query1.SQL.Add(' FROM CADPRO WHERE PDCODPRO=PED2_SUB.P2CODPRO))ORDER BY P2CHAVE,P1NUMCF,P2ITEM) TESTE ');

//query1.SQL.SaveToFile('c:\\errosql.txt');

Try
  query1.SQL.SaveToFile('c:\\errosql.txt');
  Query1.Open;
except
  fmensagem('Erro ao gerar relatorio!',0,['0'],0);
  Query1.SQL.SaveToFile(SALVA_NOME('ErroSql\','EX'));
  Exit;
  end;
if Query1.IsEmpty then
  begin
  fmensagem('Nada há ocorrencias de ecf no periodo selecionado!',0,['0'],0);
  Exit;
  end;
RLReport_rel.PreviewModal;
end;

procedure TFrm_Ocorrencias_ecf.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_cab.Caption:='Numero COO '+Query1P1NUMCF.AsString+' Data Cupom: '+formatdatetime(fdt2,Query1P1DATACF.value)+' Cliente: '+Query1CRAZAO.AsString;
end;

procedure TFrm_Ocorrencias_ecf.RLBand_detalheAfterPrint(Sender: TObject);
begin
//det
cficmserr:=cficmserr+query1P2ICMSN_ERRADO.AsFloat;
cficmscor:=cficmscor+Query1ICMS_CORRETO.AsFloat;
cficmserr_ger:=cficmserr_ger+query1P2ICMSN_ERRADO.AsFloat;
cficmscor_ger:=cficmscor_ger+Query1ICMS_CORRETO.AsFloat;
end;

procedure TFrm_Ocorrencias_ecf.RLBand_totcupBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
det_toticmserr.caption:=formatfloat(mcasas,cficmserr);
det_toticmscor.Caption:=formatfloat(mcasas,cficmscor);
cficmscor:=0;
cficmserr:=0;
end;

procedure TFrm_Ocorrencias_ecf.FormCreate(Sender: TObject);
begin
Query1P2QTD.DisplayFormat:=mcasqtd;
Query1P1DATACF.DisplayFormat:=fdt;
Query1P2PRECO.DisplayFormat:=mcasaspu;
Query1P2TOTDES.DisplayFormat:=mcasas;
Query1P2TOTLIQ.DisplayFormat:=mcasas;
Query1P2BASEN_ERRADO.DisplayFormat:=mcasas;
Query1BASEN_CORRETO.DisplayFormat:=mcasas;
Query1P2ICMSN_ERRADO.DisplayFormat:=mcasas;
Query1ICMS_CORRETO.DisplayFormat:=mcasas;
end;

procedure TFrm_Ocorrencias_ecf.RLBand_totgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
det_geralcmserr.Caption:=FormatFloat(mcasas,cficmserr_ger);
det_geralicmscor.Caption:=formatfloat(mcasas,cficmscor_ger);
cficmscor_ger:=0;
cficmserr_ger:=0;
end;

procedure TFrm_Ocorrencias_ecf.RLReport_relBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
cficmserr:=0;
cficmscor:=0;
cficmserr_ger:=0;
cficmscor_ger:=0;
RLLabel_dthora.caption:='Emitido em '+formatdatetime(fdt2,date)+' as '+formatdatetime(fhr,time);
rllabel_periodo.caption:=fperiodo(0,dt_inicial.text,dt_final.text);
end;

procedure TFrm_Ocorrencias_ecf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Ocorrencias_ecf.dt_inicialExit(Sender: TObject);
begin
if trim(dt_inicial.text)<>'/  /' then
  begin
  try
    dt_inicial.text:=formatdatetime(fdt2,strtodatetime(dt_inicial.text));
  except
    messagedlg('Data invalida',mtwarning,[mbok],0);
    dt_inicial.setfocus;
    end;
  end;
end;

procedure TFrm_Ocorrencias_ecf.dt_finalExit(Sender: TObject);
begin
if trim(dt_final.text)<>'/  /' then
  begin
  try
    dt_final.text:=formatdatetime(fdt2,strtodatetime(dt_final.text));
  except
    messagedlg('Data invalida',mtwarning,[mbok],0);
    dt_final.Setfocus;
    end;
  end;
end;

procedure TFrm_Ocorrencias_ecf.FormShow(Sender: TObject);
begin
dt_inicial.Date:=strtodate('01/'+formatdatetime('mm/yyyy',IncMonth(date,-1)));
dt_final.date:=fultdiames(dt_inicial.Date);
end;

end.
