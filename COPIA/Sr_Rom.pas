unit Sr_Rom;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,S_Rom,S_DM1;

type
  TQr_Rom = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    cnpj: TQRDBText;
    email: TQRDBText;
    telefone: TQRDBText;
    ENDER: TQRDBText;
    RAZAO: TQRDBText;
    FANTASIA: TQRDBText;
    QR_IMGLOGO: TQRImage;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRShape2: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape5: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText20: TQRDBText;
    QRShape4: TQRShape;
    QRLabel20: TQRLabel;
    QTDVOL: TQRLabel;
    QRLabel21: TQRLabel;
    ESPECIE: TQRLabel;
    QRLabel22: TQRLabel;
    PESOB: TQRLabel;
    PESOL: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape6: TQRShape;
    QRLabel25: TQRLabel;
    QRShape7: TQRShape;
    QRDBText21: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape20: TQRShape;
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Qr_Rom: TQr_Rom;

implementation

{$R *.DFM}

procedure TQr_Rom.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Frm_Rom.Qr_RM1R1_QTDVOL.Value>0 then
   QTDVOL.Caption:=Frm_Rom.Qr_RM1R1_QTDVOL.AsString
else
   QTDVOL.Caption:='_______________';
if Trim(Frm_Rom.Qr_RM1R1_ESPECIE.Value)='' then
   ESPECIE.Caption:='Caixa(s)'
else
   ESPECIE.Caption:=Frm_Rom.Qr_RM1R1_ESPECIE.Value;
if Frm_Rom.Qr_RM1R1_PESOL.Value>0 then
   PESOL.Caption:=FormatFloat('0.000',Frm_Rom.Qr_RM1R1_PESOL.Value)
else
   PESOL.Caption:='_______________';
if Frm_Rom.Qr_RM1R1_PESOB.Value>0 then
   PESOB.Caption:=FormatFloat('0.000',Frm_Rom.Qr_RM1R1_PESOB.Value)
else
   PESOB.Caption:='_______________';
end;

end.
