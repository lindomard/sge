  unit Sr_CarCor;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, QRExport;

type
  TQr_CarCor = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRLbl_data: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    qr_denossa: TQRLabel;
    Qr_desua: TQRLabel;
    QRMemo1: TQRMemo;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    X01: TQRLabel;
    qrlbl01: TQRLabel;
    qlblDesc01: TQRLabel;
    QRLabel12: TQRLabel;
    qrlbl13: TQRLabel;
    X13: TQRLabel;
    QRLabel15: TQRLabel;
    qrlbl25: TQRLabel;
    X25: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel14: TQRLabel;
    qrlbl26: TQRLabel;
    X26: TQRLabel;
    QRLabel19: TQRLabel;
    qrlbl14: TQRLabel;
    X14: TQRLabel;
    qlblDesc02: TQRLabel;
    qrlbl02: TQRLabel;
    X02: TQRLabel;
    QRLabel18: TQRLabel;
    X27: TQRLabel;
    QRLabel24: TQRLabel;
    qrlbl15: TQRLabel;
    X15: TQRLabel;
    qlblDesc03: TQRLabel;
    qrlbl03: TQRLabel;
    X03: TQRLabel;
    qrlbl27: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel21: TQRLabel;
    qrlbl28: TQRLabel;
    X28: TQRLabel;
    QRLabel31: TQRLabel;
    qrlbl16: TQRLabel;
    X16: TQRLabel;
    qlblDesc04: TQRLabel;
    qrlbl04: TQRLabel;
    X04: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel29: TQRLabel;
    qrlbl29: TQRLabel;
    X29: TQRLabel;
    QRLabel36: TQRLabel;
    qrlbl17: TQRLabel;
    X17: TQRLabel;
    qlblDesc05: TQRLabel;
    qrlbl05: TQRLabel;
    X05: TQRLabel;
    X06: TQRLabel;
    qrlbl06: TQRLabel;
    qlblDesc06: TQRLabel;
    X18: TQRLabel;
    qrlbl18: TQRLabel;
    QRLabel43: TQRLabel;
    X30: TQRLabel;
    qrlbl30: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel34: TQRLabel;
    qrlbl31: TQRLabel;
    X31: TQRLabel;
    QRLabel44: TQRLabel;
    qrlbl19: TQRLabel;
    X19: TQRLabel;
    qlblDesc07: TQRLabel;
    qrlbl07: TQRLabel;
    X07: TQRLabel;
    QRShape23: TQRShape;
    QRLabel52: TQRLabel;
    qrlbl32: TQRLabel;
    X32: TQRLabel;
    QRLabel55: TQRLabel;
    qrlbl20: TQRLabel;
    X20: TQRLabel;
    QRLabel58: TQRLabel;
    qrlbl08: TQRLabel;
    X08: TQRLabel;
    QRShape24: TQRShape;
    QRLabel61: TQRLabel;
    qrlbl33: TQRLabel;
    X33: TQRLabel;
    QRLabel64: TQRLabel;
    qrlbl21: TQRLabel;
    X21: TQRLabel;
    QRLabel67: TQRLabel;
    qrlbl09: TQRLabel;
    X09: TQRLabel;
    QRShape25: TQRShape;
    QRLabel70: TQRLabel;
    qrlbl34: TQRLabel;
    X34: TQRLabel;
    QRLabel73: TQRLabel;
    qrlbl22: TQRLabel;
    X22: TQRLabel;
    QRLabel76: TQRLabel;
    qrlbl10: TQRLabel;
    X10: TQRLabel;
    QRShape26: TQRShape;
    QRLabel79: TQRLabel;
    qrlbl35: TQRLabel;
    X35: TQRLabel;
    QRLabel82: TQRLabel;
    qrlbl23: TQRLabel;
    X23: TQRLabel;
    QRLabel85: TQRLabel;
    qrlbl11: TQRLabel;
    X11: TQRLabel;
    QRLabel88: TQRLabel;
    qrlbl36: TQRLabel;
    X36: TQRLabel;
    QRLabel91: TQRLabel;
    qrlbl24: TQRLabel;
    X24: TQRLabel;
    QRLabel94: TQRLabel;
    qrlbl12: TQRLabel;
    X12: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape27: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape28: TQRShape;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRShape29: TQRShape;
    SummaryBand1: TQRBand;
    QRMemo2: TQRMemo;
    QRLabel60: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel69: TQRLabel;
    QRShape37: TQRShape;
    QRLabel72: TQRLabel;
    QRLINHA01: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape38: TQRShape;
    QRLINHA02: TQRLabel;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    ChildBand5: TQRChildBand;
    ChildBand6: TQRChildBand;
    ChildBand7: TQRChildBand;
    ChildBand8: TQRChildBand;
    ChildBand9: TQRChildBand;
    QRShape39: TQRShape;
    QRLINHA03: TQRLabel;
    QRShape40: TQRShape;
    QRLINHA04: TQRLabel;
    QRShape41: TQRShape;
    QRLINHA05: TQRLabel;
    QRShape42: TQRShape;
    QRLINHA06: TQRLabel;
    QRShape43: TQRShape;
    QRLINHA07: TQRLabel;
    QRShape44: TQRShape;
    QRLINHA08: TQRLabel;
    QRShape45: TQRShape;
    QRLINHA09: TQRLabel;
    QRShape46: TQRShape;
    QRLINHA10: TQRLabel;
    QRHTMLFilter1: TQRHTMLFilter;
    QRTextFilter1: TQRTextFilter;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Qr_CarCor: TQr_CarCor;

implementation

uses S_CarCor;

{$R *.DFM}

procedure TQr_CarCor.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
x: Integer;
begin
QRLINHA01.Caption:='';
QRLINHA02.Caption:='';
QRLINHA03.Caption:='';
QRLINHA04.Caption:='';
QRLINHA05.Caption:='';
QRLINHA06.Caption:='';
QRLINHA07.Caption:='';
QRLINHA08.Caption:='';
QRLINHA09.Caption:='';
QRLINHA10.Caption:='';
for x:=1 to Frm_CarCor.DBCORRETO.Lines.Count do
   begin
   case x of
         1: QRLINHA01.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         2: QRLINHA02.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         3: QRLINHA03.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         4: QRLINHA04.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         5: QRLINHA05.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         6: QRLINHA06.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         7: QRLINHA07.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         8: QRLINHA08.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
         9: QRLINHA09.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
        10: QRLINHA10.Caption:=Frm_CarCor.DBCORRETO.Lines[x-1];
        end;
   end;
end;

procedure TQr_CarCor.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA02.Caption)='' then
   PrintBand:=False;
end;

procedure TQr_CarCor.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA03.Caption)='' then
   PrintBand:=False;

end;

procedure TQr_CarCor.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA04.Caption)='' then
   PrintBand:=False;

end;

procedure TQr_CarCor.ChildBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA05.Caption)='' then
   PrintBand:=False;

end;

procedure TQr_CarCor.ChildBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA06.Caption)='' then
   PrintBand:=False;

end;

procedure TQr_CarCor.ChildBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA07.Caption)='' then
   PrintBand:=False;

end;

procedure TQr_CarCor.ChildBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA08.Caption)='' then
   PrintBand:=False;

end;

procedure TQr_CarCor.ChildBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA09.Caption)='' then
   PrintBand:=False;

end;

procedure TQr_CarCor.ChildBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if Trim(QRLINHA10.Caption)='' then
   PrintBand:=False;

end;

end.
