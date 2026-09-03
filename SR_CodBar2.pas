unit SR_CodBar2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, func, S_DM1, db,dbtables,
  qrRDBarra;

type
  TQr_CodBar2 = class(TQuickRep)
    QRBand12: TQRBand;
    QRLabel1: TQRLabel;
    QRRDbarra3: TQRRDbarra;
    QRRDbarra2: TQRRDbarra;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    Nome01: TQRLabel;
    nome02: TQRLabel;
    nome03: TQRLabel;
    QRRDbarra1: TQRRDbarra;
    COD01: TQRLabel;
    COD02: TQRLabel;
    COD03: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_CodBar2: TQr_CodBar2;
  qqtd: Integer=0;
implementation

uses S_Codbar;

{$R *.DFM}

procedure TQr_CodBar2.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  mimp: Boolean;
begin
if mqtd>=mapartir then
   begin
   QRRDbarra3.Enabled:=mimp;
   QRLabel3.Enabled  :=mimp;
   nome03.Enabled    :=mimp;

   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
mimp:=True;
QRRDbarra1.Text :=Frm_CodBar.Qr_Barcodbarc.Value;
QRLabel1.Caption:=Frm_Codbar.Qr_BarINFAD.Value;
Nome01.Caption  :=Frm_Codbar.Qr_BarNOME.Value;
COD01.Caption   :=FloatToStr(ValFloat(Frm_CodBar.Qr_Barcodbarc.Value));
Frm_Codbar.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra1.Enabled:=mimp;
   QRLabel1.Enabled  :=mimp;
   nome01.Enabled    :=mimp;
   COD01.Enabled     :=mimp;
   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
if not Frm_Codbar.Qr_Bar.Eof then
   begin
   QRRDbarra2.Text:=Frm_CodBar.Qr_Barcodbarc.Value;
   QRLabel2.Caption:=Frm_Codbar.Qr_BarINFAD.Value;
   Nome02.Caption  :=Frm_Codbar.Qr_BarNOME.Value;
   COD02.Caption   :=FloatToStr(ValFloat(Frm_CodBar.Qr_Barcodbarc.AsString));
   end
else
   begin
   QRRDbarra2.Enabled:=False;
   Qrlabel2.Enabled  :=False;
   Nome02.Enabled    :=False;
   COD02.Enabled     :=False;
   mimp:=False;
   end;
Frm_CodBar.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra2.Enabled:=mimp;
   QRLabel2.Enabled  :=mimp;
   nome02.Enabled    :=mimp;
   COD02.Enabled     :=mimp;
   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
mimp:=True;

if not Frm_Codbar.Qr_Bar.Eof then
   begin
   QRRDbarra3.Text:=Frm_CodBar.Qr_Barcodbarc.Value;
   QRLabel3.Caption:=Frm_Codbar.Qr_BarINFAD.Value;
   Nome03.Caption  :=Frm_Codbar.Qr_BarNOME.Value;
   COD03.Caption   :=FloatToStr(ValFloat(Frm_Codbar.Qr_Barcodbarc.Value));
   end
else
   begin
   QRRDbarra3.Enabled:=False;
   Nome03.Enabled    :=False;
   QRLabel3.Enabled  :=False;
   COD03.Enabled     :=False;
   mimp:=False;
   end;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra3.Enabled:=mimp;
   nome03.Enabled    :=mimp;
   QRLabel3.Enabled  :=mimp;
   COD03.Enabled     :=mimp;
   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
mimp:=True;
end;
procedure TQr_CodBar2.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRRDbarra1.Enabled:=False;
QRRDbarra2.Enabled:=False;
QRRDbarra3.Enabled:=False;
COD01.Enabled     :=False;
COD02.Enabled     :=False;
COD03.Enabled     :=False;

QRLabel1.Enabled  :=False;
QRLabel2.Enabled  :=False;
QRLabel3.Enabled  :=False;
mqtd:=0;
Nome01.Enabled    :=False;
Nome02.Enabled    :=False;
Nome03.Enabled    :=False;

end;

end.
