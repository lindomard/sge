unit SR_Cob;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQr_Cob = class(TQuickRep)
    SummaryBand1: TQRBand;
    QRMemo2: TQRMemo;
    QRDBText11: TQRDBText;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    FANTASIA: TQRDBText;
    RAZAO: TQRDBText;
    ENDER: TQRDBText;
    QRLabel14: TQRLabel;
    TOTAL: TQRLabel;
    QR_DATA: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRMemo3: TQRMemo;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    TELEFONE: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel5: TQRLabel;
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Qr_Cob: TQr_Cob;
  mtotal: real=0;

implementation

uses S_DM1, S_CCob, S_DM2;

{$R *.DFM}

procedure TQr_Cob.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   TOTAL.Caption:=FormatFloat('#,##0.00',mtotal);
   mtotal:=0;
end;

procedure TQr_Cob.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if mModCart=1 then
   mtotal:=mtotal+DM2.Tb_CCobTotdeb.Value
else
   mtotal:=mtotal+DM2.Tb_CCobCCVLRENCAR.Value;
end;

end.
