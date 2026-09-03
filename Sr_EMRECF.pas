unit Sr_EMRECF;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,S_DM1,db,dbtables,func;

type
  TQr_EMRECF = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    Qr_Aliq1: TQRLabel;
    Qr_Aliq2: TQRLabel;
    Qr_Aliq3: TQRLabel;
    Qr_Aliq4: TQRLabel;
    Qr_Aliq5: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    o: TQRBand;
    QRDBText1: TQRDBText;
    QRShape26: TQRShape;
    QRDBText2: TQRDBText;
    QRShape27: TQRShape;
    QRDBText3: TQRDBText;
    QRShape28: TQRShape;
    QRDBText4: TQRDBText;
    QRShape29: TQRShape;
    QRDBText5: TQRDBText;
    QRShape30: TQRShape;
    QRDBText6: TQRDBText;
    QRShape31: TQRShape;
    QRDBText7: TQRDBText;
    QRShape32: TQRShape;
    QRDBText8: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape35: TQRShape;
    QRDBText11: TQRDBText;
    QRShape36: TQRShape;
    QRDBText12: TQRDBText;
    QRShape37: TQRShape;
    QRDBText13: TQRDBText;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRDBText14: TQRDBText;
    QRShape40: TQRShape;
    QRDBText15: TQRDBText;
    QRShape41: TQRShape;
    QRDBText16: TQRDBText;
    QRShape42: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRShape43: TQRShape;
    TVDABRU: TQRLabel;
    QRShape44: TQRShape;
    TDESCCANC: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    TISSCUP: TQRLabel;
    QRShape47: TQRShape;
    TVDALIQ: TQRLabel;
    TISENTAS: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    TSUBTR: TQRLabel;
    TVALIQ01: TQRLabel;
    QRShape50: TQRShape;
    TVALIQ02: TQRLabel;
    QRShape51: TQRShape;
    TVALIQ03: TQRLabel;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    TVALIQ04: TQRLabel;
    TVALIQ05: TQRLabel;
    TTOTIMP: TQRLabel;
    QRShape55: TQRShape;
    TOUTROS: TQRLabel;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRLabel24: TQRLabel;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRLabel25: TQRLabel;
    QRShape62: TQRShape;
    QRLabel26: TQRLabel;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    lb_numero: TQRLabel;
    QRDBText19: TQRDBText;
    lb_insc: TQRLabel;
    lb_cgc: TQRLabel;
    lb_nome: TQRLabel;
    lb_endereco: TQRLabel;
    Qr_Obser: TQRMemo;
    Lb_Resp: TQRLabel;
    Lb_Funcao: TQRLabel;
    procedure oAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_EMRECF: TQr_EMRECF;
  mtvdabru:   Real=0;
  mtdesccanc: Real=0;
  mtisscup:   Real=0;
  mtvdaliq:   Real=0;
  mtIsentas:  Real=0;
  mtSubTr:    Real=0;
  mTvaliq1:   Real=0;
  mtvaliq2:   Real=0;
  mtvaliq3:   Real=0;
  mtValiq4:   Real=0;
  mtValiq5:   Real=0;
  mTTotImp:   Real=0;
  mToutros:   Real=0;


implementation

uses S_EMRECF;

{$R *.DFM}

procedure TQr_EMRECF.oAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
mtvdabru  :=mtvdabru  +Frm_EMRECF.Qr_MI01CMVDABRUT.Value;
mtdesccanc:=mtdesccanc+Frm_EMRECF.Qr_MI01desccanc.Value;
mtisscup  :=mtisscup  +Frm_EMRECF.Qr_MI01CMISSCUP.Value;
mtvdaliq  :=mtvdaliq  +Frm_EMRECF.Qr_MI01CMVDALIQ.Value;
mtIsentas :=mTisentas +Frm_EMRECF.Qr_MI01CMISENTAS.Value;
mtSubTr   :=mtSubTr   +Frm_EMRECF.Qr_MI01CMSUBTRI.Value;
mTvaliq1  :=mTvaliq1  +Frm_EMRECF.Qr_MI01valiq01.Value;
mTvaliq2  :=mTvaliq2  +Frm_EMRECF.Qr_MI01valiq02.Value;
mTvaliq3  :=mTvaliq3  +Frm_EMRECF.Qr_MI01valiq03.Value;
mTvaliq4  :=mTvaliq4  +Frm_EMRECF.Qr_MI01valiq04.Value;
mTvaliq5  :=mTvaliq5  +Frm_EMRECF.Qr_MI01valiq05.Value;
mTTotImp  :=mTTotImp  +Frm_EMRECF.Qr_MI01totimp.Value;
mToutros  :=mToutros  +Frm_EMRECF.Qr_MI01outrosrec.Value;
end;

procedure TQr_EMRECF.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
TVDABRU.Caption   := FormatFloat(mcasas, mtvdabru);
TDESCCANC.Caption := FormatFloat(mcasas, mtdesccanc);
TISSCUP.Caption   := FormatFloat(mcasas, mtisscup);
TVDALIQ.Caption   := FormatFloat(mcasas, mtvdaliq);
TISENTAS.Caption  := FormatFloat(mcasas, mtIsentas);
TSUBTR.Caption    := FormatFloat(mcasas, mtSubTr);
TVALIQ01.Caption  := FormatFloat(mcasas, mTvaliq1);
TVALIQ02.Caption  := FormatFloat(mcasas, mTvaliq2);
TVALIQ03.Caption  := FormatFloat(mcasas, mTvaliq3);
TVALIQ04.Caption  := FormatFloat(mcasas, mTvaliq4);
TVALIQ05.Caption  := FormatFloat(mcasas, mTvaliq5);
TTOTIMP.Caption   := FormatFloat(mcasas, mTTotImp);
TOUTROS.Caption   := FormatFloat(mcasas, mToutros);

end;

procedure TQr_EMRECF.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  mtvdabru  :=0;
  mtdesccanc:=0;
  mtisscup  :=0;
  mtvdaliq  :=0;
  mtIsentas :=0;
  mtSubTr   :=0;
  mTvaliq1  :=0;
  mtvaliq2  :=0;
  mtvaliq3  :=0;
  mtValiq4  :=0;
  mtValiq5  :=0;
  mTTotImp  :=0;
  mToutros  :=0;

end;

end.
