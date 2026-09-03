unit Sr_FolRes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, S_DM1,func;

type
  TQr_FolRes = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    CNPJ: TQRLabel;
    periodo: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    VALLIQ: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    TOTVEN: TQRLabel;
    TOTDES: TQRLabel;
    TOTLIQ: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_FolRes: TQr_FolRes;
  mtotven: Real=0;
  mtotdes: Real=0;
  mtotliq: Real=0;
implementation

uses S_Imp_ResFol;

{$R *.DFM}

procedure TQr_FolRes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
VALLIQ.Caption:=Formatfloat(mcasas, Frm_Imp_ResFol.Qr_RFolRFTOTVEN.Value
                           - Frm_Imp_ResFol.Qr_RFolRFTOTDES.Value);
mtotven:=mtotven+Frm_Imp_ResFol.Qr_RFolRFTOTVEN.Value;
mtotdes:=mtotdes+Frm_Imp_ResFol.Qr_RFolRFTOTDES.Value;
mtotliq:=mtotven-mtotdes;

end;


procedure TQr_FolRes.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
TOTVEN.Caption:=FormatFloat(mcasas, mtotven);
TOTDES.Caption:=FormatFloat(mcasas, mtotdes);
TOTLIQ.Caption:=FormatFloat(mcasas, mtotliq);


end;

procedure TQr_FolRes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
mtotven:=0;
mtotdes:=0;
mtotliq:=0;

end;

end.
