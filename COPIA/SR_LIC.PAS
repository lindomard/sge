unit SR_Lic;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Func, S_DM1, jpeg, S_DM2;

type
  TQr_Lic = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    ChildBand1: TQRChildBand;
    SummaryBand1: TQRBand;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    NOM02: TQRChildBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText16: TQRDBText;
    NOM03: TQRChildBand;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRDBText17: TQRDBText;
    NOM04: TQRChildBand;
    NOM05: TQRChildBand;
    NOM06: TQRChildBand;
    NOM07: TQRChildBand;
    NOM08: TQRChildBand;
    NOM09: TQRChildBand;
    NOM10: TQRChildBand;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRDBText18: TQRDBText;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRDBText19: TQRDBText;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRDBText20: TQRDBText;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRDBText21: TQRDBText;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRDBText22: TQRDBText;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRDBText23: TQRDBText;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRDBText24: TQRDBText;
    LTV: TQRLabel;
    D1: TQRChildBand;
    D2: TQRChildBand;
    D3: TQRChildBand;
    D4: TQRChildBand;
    D5: TQRChildBand;
    D6: TQRChildBand;
    QR_DEC: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    D7: TQRChildBand;
    QRDBText38: TQRDBText;
    ChildBand8: TQRChildBand;
    LDT: TQRLabel;
    QRDBText39: TQRDBText;
    S2: TQRChildBand;
    QRLabel9: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel13: TQRLabel;
    ChildBand2: TQRChildBand;
    S1: TQRChildBand;
    LTP: TQRLabel;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRMemo2: TQRRichText;
    QRMV: TQRRichText;
    QRMP: TQRRichText;
    L_TGV: TQRLabel;
    L_TGP: TQRLabel;
    FANTASIA: TQRDBText;
    RAZAO: TQRDBText;
    ENDER: TQRDBText;
    email: TQRDBText;
    PageFooterBand1: TQRBand;
    telefone: TQRDBText;
    cnpj: TQRDBText;
    QR_IMGLOGO: TQRImage;
    ChildBand3: TQRChildBand;
    LPP: TQRLabel;
    LPV: TQRLabel;
    LRMS: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape16: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    qrlbl_vendedor: TQRLabel;
    qr_codven: TQRDBText;
    qr_nomven: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    LDATA: TQRLabel;
    QRDBText7: TQRDBText;
    LHORA: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    cnpjcli: TQRDBText;
    procedure NOM02BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM03BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM04BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM05BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM06BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM07BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM08BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM09BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NOM10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure D1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure D2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure D3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure D4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure D5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure D6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure D7BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure S1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure S2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_Lic: TQr_Lic;
  mTgp, mTgv : Real;
  mcancab: Boolean=false;
  mpag: Integer=0;
implementation


{$R *.DFM}

procedure TQr_Lic.NOM02BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM02.Value)='' then
   begin
   NOM02.Height:=0;
   PrintBand:=False;
   end
else NOM02.Height:=16;
end;

procedure TQr_Lic.NOM03BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM03.Value)='' then
   begin
   NOM03.Height:=0;
   PrintBand:=False;
   end
else NOM03.Height:=16;
end;

procedure TQr_Lic.NOM04BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM04.Value)='' then
   begin
   NOM04.Height:=0;
   PrintBand:=False;
   end
else NOM04.Height:=16;
end;

procedure TQr_Lic.NOM05BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM05.Value)='' then
   begin
   NOM05.Height:=0;
   PrintBand:=False;
   end
else NOM05.Height:=16;
end;

procedure TQr_Lic.NOM06BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM06.Value)='' then
   begin
   NOM06.Height:=0;
   PrintBand:=False;
   end
else NOM06.Height:=16;
end;

procedure TQr_Lic.NOM07BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM07.Value)='' then
   begin
   NOM07.Height:=0;
   PrintBand:=False;
   end
else NOM07.Height:=16;
end;

procedure TQr_Lic.NOM08BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM08.Value)='' then
   begin
   NOM08.Height:=0;
   PrintBand:=False;
   end
else NOM08.Height:=16;
end;

procedure TQr_Lic.NOM09BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM09.Value)='' then
   begin
   NOM09.Height:=0;
   PrintBand:=False;
   end
else NOM09.Height:=16;
end;

procedure TQr_Lic.NOM10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If Trim(DM1.Tb_LC2LC2_NOM10.Value)='' then
   begin
   NOM10.Height:=0;
   PrintBand:=False;
   end
else NOM10.Height:=16;
end;

procedure TQr_Lic.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
mTgp:=mTgp+DM1.Tb_LC2LC2_PCOPZ.Value*DM1.Tb_LC2LC2_QTD.Value;
mTgv:=mTgv+DM1.Tb_LC2LC2_PCOAV.Value*DM1.Tb_LC2LC2_QTD.Value;
If DM1.Tb_LC2.Eof then ChildBand1.Enabled:=False;
end;

procedure TQr_Lic.D1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ChildBand1.Enabled:=False;
If DM1.Tb_LC1LC1_DEC01.IsNull then
   begin
   D1.Height:=0;
   PrintBand:=False;
   end;
end;

procedure TQr_Lic.D2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If DM1.Tb_LC1LC1_DEC02.IsNull then
   begin
   D2.Height:=0;
   PrintBand:=False;
   end;
end;

procedure TQr_Lic.D3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If DM1.Tb_LC1LC1_DEC03.IsNull then
   begin
   D3.Height:=0;
   PrintBand:=False;
   end;
end;

procedure TQr_Lic.D4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If DM1.Tb_LC1LC1_DEC04.IsNull then
   begin
   D4.Height:=0;
   PrintBand:=False;
   end;
end;

procedure TQr_Lic.D5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If DM1.Tb_LC1LC1_DEC05.IsNull then
   begin
   D5.Height:=0;
   PrintBand:=False;
   end;
end;

procedure TQr_Lic.D6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If DM1.Tb_LC1LC1_DEC06.IsNull then
   begin
   D6.Height:=0;
   PrintBand:=False;
   end;
end;

procedure TQr_Lic.D7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
If DM1.Tb_LC1LC1_DEC07.IsNull then
   begin
   D7.Height:=0;
   PrintBand:=False;
   end;
end;

procedure TQr_Lic.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRMemo2.Lines.Clear;
If (DM1.Tb_LC1LC1_EXTUAV.Value<>0) and (DM1.Tb_LC1LC1_EXTPAV.Value<>0) and
   (DM1.Tb_LC1LC1_EXTUAP.Value<>0) and (DM1.Tb_LC1LC1_EXTPAP.Value<>0) then
   begin
   ChildBand2.Height:=0;
   PrintBand:=False;
   end
else
   begin
   If DM1.Tb_LC1LC1_EXTUAV.Value<>1 then
      QRMEMO2.Lines.Add('Pç. à Vista: '+Extenso(DM1.Tb_LC2LC2_PCOAV.Value));
   If DM1.Tb_LC1LC1_EXTPAV.Value<>1 then
      QRMEMO2.Lines.Add('Total à Vista: '+Extenso(DM1.Tb_LC2LC2_PCOAV.Value*DM1.Tb_LC2LC2_QTD.Value));
   If DM1.Tb_LC1LC1_EXTUAP.Value<>1 then
      QRMEMO2.Lines.Add('Pç. à Prazo: '+Extenso(DM1.Tb_LC2LC2_PCOPZ.Value));
   If DM1.Tb_LC1LC1_EXTPAP.Value<>1 then
      QRMEMO2.Lines.Add('Total à Prazo: '+Extenso(DM1.Tb_LC2LC2_PCOPZ.Value*DM1.Tb_LC2LC2_QTD.Value));
   ChildBand2.Height:=16+15*(QRMEMO2.Lines.Count-1);
   QRShape82.Height:=ChildBand2.Height+1;
   QRShape81.Height:=ChildBand2.Height+1;
   QRMEMO2.Height:=ChildBand2.Height-QRMEMO2.Top;
   end;
end;

procedure TQr_Lic.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
L_TGV.Caption:=FormatFloat('#,##0.00',mTgv);
QRMV.Lines.Clear;
If (DM1.Tb_LC1LC1_EXTTAV.Value<>1) then
   QRMV.Lines.Add(Extenso(mTgv));
SummaryBand1.Height:=20+15*(QRMV.Lines.Count);
QRMV.Height:=SummaryBand1.Height-QRMV.Top;
mTgv:=0;
end;

procedure TQr_Lic.S1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
L_TGP.Caption:=FormatFloat('#,##0.00',mTgp);
QRMP.Lines.Clear;
If (DM1.Tb_LC1LC1_EXTTAP.Value<>1) then
   QRMP.Lines.Add(Extenso(mTgp));
S1.Height:=20+15*(QRMP.Lines.Count);
QRMP.Height:=S1.Height-QRMP.Top;
mTgp:=0;
end;

procedure TQr_Lic.S2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
PageFooterBand1.Enabled:=False;
end;

procedure TQr_Lic.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if (mcancab) and (mpag>0) then
   PrintBand:=False;
mpag:=mpag+1;

end;

procedure TQr_Lic.ChildBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
PageFooterBand1.Enabled:=True;

end;

procedure TQr_Lic.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ChildBand1.Enabled:=true;
mpag :=0;

end;

end.
