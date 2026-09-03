unit SR_EtiqCli2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, func, S_DM1, db,dbtables,
  qrRDBarra;

type
  TQr_EtiqCli2 = class(TQuickRep)
    QRBand12: TQRBand;
    QR_TeleFone01: TQRLabel;
    QR_CepCidade01: TQRLabel;
    Qr_RazSoc01: TQRLabel;
    Qr_Ender01: TQRLabel;
    QR_Bairro01: TQRLabel;
    Qr_RazSoc02: TQRLabel;
    Qr_Ender02: TQRLabel;
    QR_Bairro02: TQRLabel;
    QR_CepCidade02: TQRLabel;
    QR_TeleFone02: TQRLabel;
    Qr_RazSoc03: TQRLabel;
    Qr_Ender03: TQRLabel;
    QR_Bairro03: TQRLabel;
    QR_CepCidade03: TQRLabel;
    QR_TeleFone03: TQRLabel;
    Qr_Cnpj01: TQRLabel;
    Qr_Cnpj02: TQRLabel;
    Qr_Cnpj03: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_EtiqCli2: TQr_EtiqCli2;
  qqtd: Integer=0;
implementation

uses S_EtiqCli;

{$R *.DFM}

procedure TQr_EtiqCli2.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  mimp: Boolean;
begin
if mqtd>=mapartir then
   begin
   Qr_RazSoc03.Enabled   :=mimp;
   Qr_Cnpj03.Enabled     :=mimp;
   Qr_Ender03.Enabled    :=mimp;
   QR_Bairro03.Enabled   :=mimp;
   QR_CepCidade03.Enabled:=mimp;
//   QR_TeleFone03.Enabled :=mimp;
   end
else
   begin
   Frm_EtiqCli.Qr_Bar.Prior;
   end;
mimp:=True;
Qr_RazSoc01.Caption   :=Frm_EtiqCli.Qr_BarCRAZAO.Value;
Qr_Cnpj01.Caption     :=Frm_EtiqCli.Qr_BarCCNPJ.AsString;
Qr_Ender01.Caption    :=Frm_EtiqCli.Qr_BarCLOG.Value;
QR_Bairro01.Caption   :=trim(Frm_EtiqCli.Qr_BarCCEP.Value)+' '+Frm_EtiqCli.Qr_BarCBAIRRO.Value;
QR_CepCidade01.Caption:=Trim(Frm_EtiqCli.Qr_BarCCIDADE.Value)+'-'+Trim(Frm_EtiqCli.Qr_BarCUF.Value);
//QR_TeleFone01.Caption :=Frm_EtiqCli.Qr_BarCCEP.Value;
Frm_EtiqCli.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   Qr_RazSoc01.Enabled   :=mimp;
   Qr_Cnpj01.Enabled     :=mimp;
   Qr_Ender01.Enabled    :=mimp;
   QR_Bairro01.Enabled   :=mimp;
   QR_CepCidade01.Enabled:=mimp;
//   QR_TeleFone01.Enabled :=mimp;
   end
else
   begin
   Frm_EtiqCli.Qr_Bar.Prior;
   end;
if not Frm_EtiqCli.Qr_Bar.Eof then
   begin
   Qr_RazSoc02.Caption   :=Frm_EtiqCli.Qr_BarCRAZAO.Value;
   Qr_Cnpj02.Caption     :=Frm_EtiqCli.Qr_BarCCNPJ.AsString;
   Qr_Ender02.Caption    :=Frm_EtiqCli.Qr_BarCLOG.Value;
   QR_Bairro02.Caption   :=trim(Frm_EtiqCli.Qr_BarCCEP.Value)+' '+Frm_EtiqCli.Qr_BarCBAIRRO.Value;
   QR_CepCidade02.Caption:=Trim(Frm_EtiqCli.Qr_BarCCIDADE.Value)+'-'+Trim(Frm_EtiqCli.Qr_BarCUF.Value);
//   QR_TeleFone02.Caption :=Frm_EtiqCli.Qr_BarCCEP.Value;
   end
else
   begin
   Qr_RazSoc02.Enabled   :=False;
   Qr_Cnpj02.Enabled     :=False;
   Qr_Ender02.Enabled    :=False;
   QR_Bairro02.Enabled   :=False;
   QR_CepCidade02.Enabled:=False;
//   QR_TeleFone02.Enabled :=False;
   mimp:=False;
   end;
Frm_EtiqCli.Qr_Bar.Next;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   Qr_RazSoc02.Enabled   :=mimp;
   Qr_Cnpj02.Enabled     :=mimp;
   Qr_Ender02.Enabled    :=mimp;
   QR_Bairro02.Enabled   :=mimp;
   QR_CepCidade02.Enabled:=mimp;
//   QR_TeleFone02.Enabled :=mimp;
   end
else
   begin
   Frm_EtiqCli.Qr_Bar.Prior;
   end;
mimp:=True;

if not Frm_EtiqCli.Qr_Bar.Eof then
   begin
   Qr_RazSoc03.Caption   :=Frm_EtiqCli.Qr_BarCRAZAO.Value;
   Qr_Cnpj03.Caption     :=Frm_EtiqCli.Qr_BarCCNPJ.AsString;
   Qr_Ender03.Caption    :=Frm_EtiqCli.Qr_BarCLOG.Value;
   QR_Bairro03.Caption   :=trim(Frm_EtiqCli.Qr_BarCCEP.Value)+' '+Frm_EtiqCli.Qr_BarCBAIRRO.Value;
   QR_CepCidade03.Caption:=Trim(Frm_EtiqCli.Qr_BarCCIDADE.Value)+'-'+Trim(Frm_EtiqCli.Qr_BarCUF.Value);
//   QR_TeleFone03.Caption :=Frm_EtiqCli.Qr_BarCCEP.Value;
   end
else
   begin
   Qr_RazSoc03.Enabled   :=False;
   Qr_Cnpj03.Enabled     :=False;
   Qr_Ender03.Enabled    :=False;
   QR_Bairro03.Enabled   :=False;
   QR_CepCidade03.Enabled:=False;
//   QR_TeleFone03.Enabled :=False;
   mimp:=False;
   end;
mqtd:=mqtd+1;
if mqtd>=mapartir then
   begin
   Qr_RazSoc03.Enabled   :=mimp;
   Qr_Cnpj03.Enabled     :=mimp;
   Qr_Ender03.Enabled    :=mimp;
   QR_Bairro03.Enabled   :=mimp;
   QR_CepCidade03.Enabled:=mimp;
//   QR_TeleFone03.Enabled :=mimp;
   end
else
   begin
   Frm_EtiqCli.Qr_Bar.Prior;
   end;
mimp:=True;
end;
procedure TQr_EtiqCli2.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
Qr_RazSoc01.Enabled   :=false;
Qr_Cnpj01.Enabled     :=False;
Qr_Ender01.Enabled    :=false;
QR_Bairro01.Enabled   :=false;
QR_CepCidade01.Enabled:=false;
//QR_TeleFone01.Enabled :=false;

Qr_RazSoc02.Enabled   :=false;
Qr_Cnpj02.Enabled     :=false;
Qr_Ender02.Enabled    :=false;
QR_Bairro02.Enabled   :=false;
QR_CepCidade02.Enabled:=false;
//QR_TeleFone02.Enabled :=false;

Qr_RazSoc03.Enabled   :=false;
Qr_Cnpj03.Enabled     :=false;
Qr_Ender03.Enabled    :=false;
QR_Bairro03.Enabled   :=false;
QR_CepCidade03.Enabled:=false;
//QR_TeleFone03.Enabled :=false;
mqtd:=0;

end;

end.
