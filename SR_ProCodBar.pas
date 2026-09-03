unit SR_ProCodBar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, func, S_DM1, db,dbtables,
  qrRDBarra;

type
  TQr_ProCodBar = class(TQuickRep)
    QRBand12: TQRBand;
    nomfan01: TQRLabel;
    Nome01: TQRLabel;
    QRRDbarra1: TQRRDbarra;
    QRRDbarra2: TQRRDbarra;
    QRRDbarra3: TQRRDbarra;
    nome02: TQRLabel;
    nomfan02: TQRLabel;
    nome03: TQRLabel;
    nomfan03: TQRLabel;
    obs01: TQRLabel;
    obs02: TQRLabel;
    obs03: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_ProCodBar: TQr_ProCodBar;
  qqtd: Integer=0;
implementation

uses S_ProCodBar;

{$R *.DFM}

procedure TQr_ProCodBar.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  mimp: Boolean;
begin
mimp:=True;
QRRDbarra1.Text :=Frm_ProCodBar.Qr_EtiquetaCODBAR.Value;
nomfan01.Caption:=Frm_ProCodBar.Qr_EtiquetaNOMFAN.Value;
Nome01.Caption  :=Frm_ProCodBar.Qr_EtiquetaNOME.Value;
obs01.Caption   :=Frm_ProCodBar.Qr_EtiquetaOBS.Value;

Frm_ProCodBar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra1.Enabled:=mimp;
   nomfan01.Enabled  :=mimp;
   nome01.Enabled    :=mimp;
   obs01.Enabled     :=mimp;
   end
else
   begin
   Frm_ProCodBar.Qr_Etiqueta.Prior;
   end;
if not Frm_ProCodBar.Qr_Etiqueta.Eof then
   begin
   QRRDbarra2.Text :=Frm_ProCodBar.Qr_EtiquetaCODBAR.Value;
   nomfan02.Caption:=Frm_ProCodBar.Qr_EtiquetaNOMFAN.Value;
   Nome02.Caption  :=Frm_ProCodBar.Qr_EtiquetaNOME.Value;
   obs02.Caption   :=Frm_ProCodBar.Qr_EtiquetaOBS.Value;
   end
else
   begin
   QRRDbarra2.Enabled:=False;
   nomfan02.Enabled  :=False;
   Nome02.Enabled    :=False;
   obs02.Enabled     :=False;
   mimp:=False;
   end;
Frm_ProCodBar.Qr_Etiqueta.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra2.Enabled:=mimp;
   nomfan02.Enabled  :=mimp;
   nome02.Enabled    :=mimp;
   obs02.Enabled     :=mimp;
   end
else
   begin
   Frm_ProCodBar.Qr_Etiqueta.Prior;
   end;
mimp:=True;

if not Frm_ProCodBar.Qr_Etiqueta.Eof then
   begin
   QRRDbarra3.Text :=Frm_ProCodBar.Qr_EtiquetaCODBAR.Value;
   nomfan03.Caption:=Frm_ProCodBar.Qr_EtiquetaNOMFAN.Value;
   Nome03.Caption  :=Frm_ProCodBar.Qr_EtiquetaNOME.Value;
   obs03.Caption   :=Frm_ProCodBar.Qr_EtiquetaOBS.Value;
   end
else
   begin
   QRRDbarra3.Enabled:=False;
   Nome03.Enabled    :=False;
   nomfan03.Enabled  :=False;
   obs02.Enabled     :=False;
   mimp:=False;
   end;
Frm_ProCodBar.Qr_Etiqueta.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   QRRDbarra3.Enabled:=mimp;
   nome03.Enabled    :=mimp;
   nomfan03.Enabled  :=mimp;
   obs03.Enabled     :=mimp;
   end
else
   begin
   Frm_ProCodBar.Qr_Etiqueta.Prior;
   end;
mimp:=True;
end;
procedure TQr_ProCodBar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
QRRDbarra1.Enabled:=False;
QRRDbarra2.Enabled:=False;
QRRDbarra3.Enabled:=False;
nomfan01.Enabled  :=False;
nomfan02.Enabled  :=False;
nomfan03.Enabled  :=False;
mqtd:=0;
Nome01.Enabled    :=False;
Nome02.Enabled    :=False;
Nome03.Enabled    :=False;
obs01.Enabled     :=false;
obs02.Enabled     :=false;
obs03.Enabled     :=false;

end;

end.
