unit Sr_Orc;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,db, dbtables,S_DM1,S_DM2;

type
  TQr_Orc = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRImage1: TQRImage;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Qr_Orc: TQr_Orc;

implementation

{$R *.DFM}

procedure TQr_Orc.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel1.Caption:='Telefone: '+DM1.Tb_EmpFONE.Value+' Fax: '+DM1.Tb_EmpFAX.Value;
if Trim(DM1.Tb_EmpE_MAIL.Value)<>'' then
   QRLabel1.Caption:=' E_Mail: '+DM1.Tb_EmpE_MAIL.Value;
QrLabel2.Caption:=DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value
                 +' '+DM1.Tb_EmpCIDADE.Value+'-'+DM1.Tb_EmpUF.Value;
end;

end.
