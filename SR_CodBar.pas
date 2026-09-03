unit SR_CodBar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, func, S_DM1, db,dbtables,
  qrRDBarra;

type
  TQr_CodBar = class(TQuickRep)
    QRBand12: TQRBand;
    QRLabel1: TQRLabel;
    QRRDbarra5: TQRRDbarra;
    QRRDbarra4: TQRRDbarra;
    QRRDbarra3: TQRRDbarra;
    QRRDbarra2: TQRRDbarra;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    Nome01: TQRLabel;
    nome02: TQRLabel;
    nome03: TQRLabel;
    nome04: TQRLabel;
    nome05: TQRLabel;
    QRRDbarra1: TQRRDbarra;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_CodBar: TQr_CodBar;
  qqtd: Integer=0;
implementation

uses S_Codbar;

{$R *.DFM}

procedure TQr_CodBar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  mimp: Boolean;
begin
if mqtd>=mapartir then
   begin
   QRRDbarra5.Enabled:=mimp;
   QRLabel5.Enabled  :=mimp;
   nome05.Enabled    :=mimp;
   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
mimp:=True;
QRRDbarra1.Text :=Frm_CodBar.Qr_Barcodbarc.Value;
QRLabel1.Caption:=Frm_Codbar.Qr_BarINFAD.Value;
Nome01.Caption  :=Frm_Codbar.Qr_BarNOME.Value;
Frm_Codbar.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra1.Enabled:=mimp;
   QRLabel1.Enabled  :=mimp;
   nome01.Enabled    :=mimp;
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
   end
else
   begin
   QRRDbarra2.Enabled:=False;
   Qrlabel2.Enabled  :=False;
   Nome02.Enabled    :=False;
   mimp:=False;
   end;
Frm_CodBar.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra2.Enabled:=mimp;
   QRLabel2.Enabled  :=mimp;
   nome02.Enabled    :=mimp;
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
   end
else
   begin
   QRRDbarra3.Enabled:=False;
   Nome03.Enabled    :=False;
   QRLabel3.Enabled  :=False;
   mimp:=False;
   end;
Frm_Codbar.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra3.Enabled:=mimp;
   nome03.Enabled    :=mimp;
   QRLabel3.Enabled  :=mimp;
   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
mimp:=True;
if not Frm_Codbar.Qr_Bar.Eof then
   begin
   QRRDbarra4.Text:=Frm_CodBar.Qr_Barcodbarc.Value;
   QRLabel4.Caption:=Frm_Codbar.Qr_BarINFAD.Value;
   Nome04.Caption  :=Frm_Codbar.Qr_BarNOME.Value;
   end
else
   begin
   QRRDbarra4.Enabled:=False;
   Nome04.Enabled    :=False;
   QRLabel4.Enabled  :=False;
   mimp:=False;
   end;
Frm_Codbar.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra4.Enabled:=mimp;
   nome04.Enabled    :=mimp;
   QRLabel4.Enabled  :=mimp;
   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
mimp:=True;
if not Frm_Codbar.Qr_Bar.Eof then
   begin
   QRRDbarra5.Text:=Frm_CodBar.Qr_Barcodbarc.Value;
   QRLabel5.Caption:=Frm_Codbar.Qr_BarINFAD.Value;
   Nome05.Caption  :=Frm_Codbar.Qr_BarNOME.Value;
   end
else
   begin
   QRRDbarra5.Enabled:=False;
   Nome05.Enabled    :=False;
   QRLabel5.Enabled  :=False;
   mimp:=false;
   end;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra5.Enabled:=mimp;
   nome05.Enabled    :=mimp;
   Qrlabel5.Enabled  :=mimp;
   end
else
   begin
   Frm_CodBar.Qr_Bar.Prior;
   end;
end;
procedure TQr_CodBar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRRDbarra1.Enabled:=False;
QRRDbarra2.Enabled:=False;
QRRDbarra3.Enabled:=False;
QRRDbarra4.Enabled:=False;
QRRDbarra5.Enabled:=False;
QRLabel1.Enabled  :=False;
QRLabel2.Enabled  :=False;
QRLabel3.Enabled  :=False;
QRLabel4.Enabled  :=False;
QRLabel5.Enabled  :=False;
mqtd:=0;
Nome01.Enabled    :=False;
Nome02.Enabled    :=False;
Nome03.Enabled    :=False;
Nome04.Enabled    :=False;
Nome05.Enabled    :=False;

end;

end.
