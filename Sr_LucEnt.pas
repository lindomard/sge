unit Sr_LucEnt;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,func;

type
  TQr_LucEnt = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    Qr_CabL01: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    periodo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    DetailBand1: TQRBand;
    NUMNF: TQRDBText;
    QRDBText4: TQRDBText;
    ChildBand1: TQRChildBand;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    ChildBand2: TQRChildBand;
    QRLabel13: TQRLabel;
    totqtd: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText13: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText20: TQRDBText;
    totcom: TQRLabel;
    totluc: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel25: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel26: TQRLabel;
    SummaryBand1: TQRBand;
    emitido: TQRLabel;
    QRLabel23: TQRLabel;
    totqtdg: TQRLabel;
    totcomg: TQRLabel;
    totlucg: TQRLabel;
    QRShape6: TQRShape;
    QRLabel27: TQRLabel;
    totqtd2: TQRLabel;
    totcom2: TQRLabel;
    totluc2: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    totdes: TQRLabel;
    totacre: TQRLabel;
    totvda: TQRLabel;
    totdes2: TQRLabel;
    totacre2: TQRLabel;
    totvda2: TQRLabel;
    totdesg: TQRLabel;
    totacreg: TQRLabel;
    totvdag: TQRLabel;
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure ChildBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  Qr_LucEnt: TQr_LucEnt;
  mtotqtd, mtotdes ,mtotacre , mtotvda , mtotcom , mtotluc: Real;
  mtotqtdg,mtotdesg,mtotacreg, mtotvdag, mtotcomg, mtotlucg: Real;
  mcodant: Real=0;
implementation

uses S_LucEnt, S_DM1;

{$R *.DFM}

procedure TQr_LucEnt.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Not Frm_LucEnt.Tb_Temporaria.Eof then
   begin
   Frm_LucEnt.Tb_Temporaria.Next;
   if mcodant=Frm_LucEnt.Tb_TemporariaCPR_NUMERO.Value then
      PrintBand:=False
   else
      begin
      totqtd.Caption  :=FormatFloat(mcasqtd, mtotqtd);
      totdes.Caption  :=FormatFloat(mcasas, mtotdes);
      totacre.Caption :=FormatFloat(mcasas, mtotacre);
      totvda.Caption  :=FormatFloat(mcasas, mtotvda);
      totcom.Caption  :=FormatFloat(mcasas, mtotcom);
      totluc.Caption  :=FormatFloat(mcasas, mtotluc);
      mtotqtd  :=0;
      mtotdes  :=0;
      mtotacre :=0;
      mtotvda  :=0;
      mtotcom  :=0;
      mtotluc  :=0;
      end;
   if not Frm_LucEnt.Tb_Temporaria.Eof then
      Frm_LucEnt.Tb_Temporaria.Prior;
   end;
end;

procedure TQr_LucEnt.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if mcodant=Frm_LucEnt.Tb_TemporariaCPR_NUMERO.Value then
   PrintBand:=False
else
   begin
   mcodant:=Frm_LucEnt.Tb_TemporariaCPR_NUMERO.Value;
   end;
end;

procedure TQr_LucEnt.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

totqtdg.Caption  :=FormatFloat(mcasqtd, mtotqtdg);
totdesg.Caption  :=FormatFloat(mcasas, mtotdesg);
totacreg.Caption :=FormatFloat(mcasas, mtotacreg);
totvdag.Caption  :=FormatFloat(mcasas, mtotvdag);
totcomg.Caption  :=FormatFloat(mcasas, mtotcomg);
totlucg.Caption  :=FormatFloat(mcasas, mtotlucg);
mtotqtdg :=0;
mtotdesg :=0;
mtotacreg:=0;
mtotvdag :=0;
mtotcomg :=0;
mtotlucg :=0;

totqtd2.Caption  :=FormatFloat(mcasqtd, mtotqtd);
totdes2.Caption  :=FormatFloat(mcasas, mtotdes);
totacre2.Caption :=FormatFloat(mcasas, mtotacre);
totvda2.Caption  :=FormatFloat(mcasas, mtotvda);
totcom2.Caption  :=FormatFloat(mcasas, mtotcom);
totluc2.Caption  :=FormatFloat(mcasas, mtotluc);
mtotqtd  :=0;
mtotdes  :=0;
mtotacre :=0;
mtotvda  :=0;
mtotcom  :=0;
mtotluc  :=0;
emitido.Caption:='Relatório emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time)+'.';

end;

procedure TQr_LucEnt.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
mtotqtd  :=0;
mtotdes  :=0;
mtotacre :=0;
mtotvda  :=0;
mtotcom  :=0;
mtotluc  :=0;

mtotqtdg :=0;
mtotdesg :=0;
mtotacreg:=0;
mtotvdag :=0;
mtotcomg :=0;
mtotlucg :=0;


end;

procedure TQr_LucEnt.ChildBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
mtotqtd  :=mtotqtd+Frm_LucEnt.Tb_TemporariaCPR_QUANTIDADE.Value;
mtotdes  :=mtotdes+Frm_LucEnt.Tb_TemporariaCPR_VLDESCONTO.Value;
mtotacre :=mtotacre+Frm_LucEnt.Tb_Temporariacpr_totacre.Value;
mtotvda  :=mtotvda +Frm_LucEnt.Tb_Temporariacpr_total.Value;
mtotcom  :=mtotcom +Frm_LucEnt.Tb_Temporariavda_totvda.Value;
mtotluc  :=mtotluc +Frm_LucEnt.Tb_Temporariavda_lucro.Value;

mtotqtdg :=mtotqtdg+Frm_LucEnt.Tb_TemporariaCPR_QUANTIDADE.Value;
mtotdesg :=mtotdesg+Frm_LucEnt.Tb_TemporariaCPR_VLDESCONTO.Value;
mtotacreg:=mtotacreg+Frm_LucEnt.Tb_Temporariacpr_totacre.Value;
mtotvdag :=mtotvdag +Frm_LucEnt.Tb_Temporariacpr_total.Value;
mtotcomg :=mtotcomg +Frm_LucEnt.Tb_Temporariavda_totvda.Value;
mtotlucg :=mtotlucg +Frm_LucEnt.Tb_Temporariavda_lucro.Value;

end;

end.
