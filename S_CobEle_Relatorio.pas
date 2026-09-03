unit S_CobEle_Relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Buttons, DB, DBTables,
  RLReport, ComCtrls, RLXLSFilter, RLFilters, RLDraftFilter, RLRichFilter,
  RLPDFFilter;

type
  TFrm_CobEle_Relatorio = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    Label1: TLabel;
    Label62: TLabel;
    edt_datini: TDateEdit;
    Label63: TLabel;
    edt_datfin: TDateEdit;
    Label22: TLabel;
    CODCOB: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    src_cadrem_bco: TDataSource;
    qr_cadrem_bco: TQuery;
    qr_cadrem_bcoRECHAVE: TFloatField;
    qr_cadrem_bcoRECODBCO: TFloatField;
    qr_cadrem_bcoBCBANCO: TStringField;
    qr_cadrem_bcoREORDEM: TFloatField;
    qr_cadrem_bcoRECODEMP_DUP: TFloatField;
    qr_cadrem_bcoRENUMDUP: TFloatField;
    qr_cadrem_bcoREDESD: TStringField;
    qr_cadrem_bcoRETIPO: TFloatField;
    qr_cadrem_bcoREDTEMIS: TDateTimeField;
    qr_cadrem_bcoREVALDUP: TFloatField;
    qr_cadrem_bcoRECODCLI: TFloatField;
    qr_cadrem_bcoCRAZAO: TStringField;
    qr_cadrem_bcoREDTVCTO: TDateTimeField;
    qr_cadrem_bcoREDESCF: TFloatField;
    qr_cadrem_bcoREDTDESCF: TDateTimeField;
    RLCab: TRLBand;
    rlcab_emp: TRLLabel;
    rlcabDatHorEmi: TRLLabel;
    rlcab_pagina: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    rlcabObsRel: TRLLabel;
    RLGroup1: TRLGroup;
    rlcabdet: TRLBand;
    rldet: TRLBand;
    rlCabGru: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    qr_cadrem_bcoREDATREM: TDateTimeField;
    RLDBText4: TRLDBText;
    RLLabel4: TRLLabel;
    rldet_RENUMDUP: TRLDBText;
    rlcab_RENUMDUP: TRLLabel;
    rlcab_REDESD: TRLLabel;
    rldet_REDESD: TRLDBText;
    rlcab_CRAZAO: TRLLabel;
    rldet_CRAZAO: TRLDBText;
    rlcab_REDTEMIS: TRLLabel;
    rldet_REDTEMIS: TRLDBText;
    rlcab_REVALDUP: TRLLabel;
    rldet_REVALDUP: TRLDBText;
    rlcab_REDTVCTO: TRLLabel;
    rldet_REDTVCTO: TRLDBText;
    rlcab_NOSSONUMERO: TRLLabel;
    qr_cadrem_bcoNOSSONUMERO: TStringField;
    rldet_NOSSONUMERO: TRLDBText;
    rlrodgru: TRLBand;
    lblQtdTitulos: TRLLabel;
    rlgru_REVALDUP: TRLLabel;
    rlrodGer: TRLBand;
    lblQtdTitulosGer: TRLLabel;
    rlger_REVALDUP: TRLLabel;
    rlRodDatHorEmissao: TRLLabel;
    Pdf: TRLPDFFilter;
    Word: TRLRichFilter;
    Txt: TRLDraftFilter;
    Excel: TRLXLSFilter;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCOBExit(Sender: TObject);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCOBKeyPress(Sender: TObject; var Key: Char);
    procedure bbImprimirClick(Sender: TObject);
    procedure rlrodgruBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlrodGerBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure rldetAfterPrint(Sender: TObject);
  private
    { Private declarations }
    mQtdTitGru: Integer;
    mQtdTitGer: Integer;
    mQtdLoteRem: Integer;

    mTotalGru: Real;
    mTotalGer: Real;




  public
    { Public declarations }
  end;

var
  Frm_CobEle_Relatorio: TFrm_CobEle_Relatorio;

implementation

uses Func, S_DM1, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_CobEle_Relatorio.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CobEle_Relatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_CobEle_Relatorio.CODCOBExit(Sender: TObject);
begin
CODCOB.Text:=fdeixanum2(CODCOB.Text);
if Trim(CODCOB.Text)<>'' then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODCOB.Text) then
      begin
      fmensagem('Banco de Cobranca não cadastrada!',0,['0'],0);
      CODCOB.SetFocus;
      end
   else
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODCOB.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCOB.text := '';
      CODCOB.SetFocus;
      end;
   end;


end;

procedure TFrm_CobEle_Relatorio.lbx_codbcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_CobEle_Relatorio.CODCOBKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCOB.Text:=fChamaBco(0,'frm_RCRac',Key);
   CODCOBExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CobEle_Relatorio.bbImprimirClick(Sender: TObject);
var
mRestricaoBanco: String;
begin
if edt_datini.date>edt_datfin.date then
   edt_datfin.date:=edt_datini.date;


mQtdTitGru :=0;
mQtdTitGer :=0;
mQtdLoteRem:=0;
mTotalGru  :=0;
mTotalGer  :=0;


qr_cadrem_bco.close;
qr_cadrem_bco.sql.clear;
qr_cadrem_bco.sql.add('SELECT RECHAVE,RECODBCO,BCBANCO '
                     +',REORDEM '
                     +',RECODEMP_DUP '
                     +',RENUMDUP '
                     +',REDESD,RETIPO,REDTEMIS,REVALDUP '
                     +',RECODCLI '
                     +',CRAZAO '
                     +',REDTVCTO '
                     +',REDESCF '
                     +',REDTDESCF '
                     +',RENOSNUM || REDNOSNUM as nossoNumero '
                     +',REDATREM '
                     +' FROM CADREMBCO,CADBCO,CADCLI '
                     +' WHERE BCCODBCO=RECODBCO '
                     +' AND CCODCLI=RECODCLI ');

mRestricaoBanco:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mRestricaoBanco)<>'' then
   qr_cadrem_bco.SQL.Add(' and RECODBCO '+mRestricaoBanco);
if edt_datini.date>pdatanula then
   begin
   qr_cadrem_bco.SQL.Add(' and REDATREM>=:DATINI');
   qr_cadrem_bco.ParamByName('DATINI').asdate := edt_datini.Date;
   end;

if edt_datfin.date>pdatanula then
   begin
   qr_cadrem_bco.SQL.Add(' and REDATREM<=:DATFIN');
   qr_cadrem_bco.ParamByName('DATFIN').asdate := edt_datfin.Date;
   end;

qr_cadrem_bco.sql.add(' ORDER BY RECHAVE,REORDEM,BCBANCO,BCCODBCO ');
try
   qr_cadrem_bco.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_cadrem_bco,209,'func Erro:'+e.Message ,'CADREMBCO');
   exit;
   end;
   end;
rlcab_emp.Caption:=DM1.Tb_EmpRAZAO.AsString;
rlcabObsRel.Caption := 'Relação das Remissas de Cobranças Bancarias. ' +fperiodo(0,edt_datini.Text,edt_datfin.Text);
rlcabDatHorEmi.Caption := 'Emitido em '+FormatDateTime(fdt2, date)+' as '+Formatdatetime(fhr, time)+'.';
RLReport1.Borders.DrawLeft:=true;
RLReport1.Borders.DrawTop:=true;
RLReport1.Borders.DrawBottom:=true;
RLReport1.Borders.DrawRight:=true;

rlCab.Borders.DrawBottom:=true;
rlcabgru.Borders.DrawBottom:=true;
rlcabdet.Borders.DrawBottom:=true;

rlDet.Borders.DrawBottom:=true;

rlrodger.Borders.DrawTop:=true;
rlrodger.Borders.DrawBottom:=true;

RLReport1.PreviewModal;
qr_cadrem_bco.Close;




end;

procedure TFrm_CobEle_Relatorio.rlrodgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

lblQtdTitulos.Caption := 'Totais do Lote. Quantidade de Titulos: ' + IntToStr(mQtdTitGru);
rlgru_REVALDUP.Caption:= FormatFloat(mcasas, mTotalGru);

mQtdTitGru:=0;
mTotalGru :=0;
mQtdLoteRem := mQtdLoteRem +1;
end;

procedure TFrm_CobEle_Relatorio.rlrodGerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblQtdTitulosGer.Caption := 'Totais Gerais. Quantidade de Titulo'
+iif(mQtdTitGer>1,'s','')+': ' + IntToStr(mQtdTitGer)+'. Quantidade de Remessa '
+iif(mQtdLoteRem>1,'s','')
+IntToStr(mQtdLoteRem);
rlger_REVALDUP.Caption:= FormatFloat(mcasas, mTotalGer);

mQtdTitGer:=0;
mTotalGer :=0;
mQtdLoteRem:=0;


end;

procedure TFrm_CobEle_Relatorio.FormShow(Sender: TObject);
begin
edt_datini.Date :=  fPrimeirodiames(date());
edt_datfin.Date := date();
tsRelatorio.TabVisible:=false;

qr_cadrem_bcoREDATREM.DisplayFormat:=fdt2;

qr_cadrem_bcoREVALDUP.DisplayFormat:=mcasas;

end;

procedure TFrm_CobEle_Relatorio.rldetAfterPrint(Sender: TObject);
begin
mQtdTitGru :=mQtdTitGru+1;
mQtdTitGer :=mQtdTitGer+1;
mTotalGru  :=mTotalGru + qr_cadrem_bcoREVALDUP.AsFloat;
mTotalGer  :=mTotalGer + qr_cadrem_bcoREVALDUP.AsFloat;

end;

end.
