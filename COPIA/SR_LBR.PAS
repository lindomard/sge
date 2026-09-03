unit SR_LBR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, S_DM1, S_DM2, Func;

type
  TQr_LBR = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QR_TITULO: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    LDATA: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    ChildBand1: TQRChildBand;
    QRShape3: TQRShape;
    LVCTO: TQRLabel;
    LVALOR: TQRLabel;
    QRLabel13: TQRLabel;
    LVCTOEXT: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    LVLREXT: TQRLabel;
    LPAGAVEL: TQRLabel;
    QRLabel20: TQRLabel;
    LNOMVEN: TQRLabel;
    LCPF: TQRLabel;
    QRLabel21: TQRLabel;
    LENDERECO: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape4: TQRShape;
    LDATA2: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Qr_LBR: TQr_LBR;
  mDatVen: TDateTime=0;

implementation

{$R *.DFM}

procedure TQr_LBR.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
LDATA.Caption:=DM1.Tb_EmpCIDADE.Value+', '+Data(Date,0)+'.';
end;

procedure TQr_LBR.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if DM2.Tb_LBR2LB2DTVCTO.Value>mDatVen then
      mDatVen:=DM2.Tb_LBR2LB2DTVCTO.Value;
end;

procedure TQr_LBR.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   LVCTO.Caption   :='Vencimento: '+FormatDateTime('dd "de" mmmm "de" yyyy',mDatVen);
   LVALOR.Caption  :=FormatFloat('#,##0.00',DM2.Tb_LBR1LBTOTAL.Value);
   LVCTOEXT.Caption:='Ao(s) '+Extenso2(StrToInt(FormatDateTime('dd',mDatVen)))
                    +' dias do mês de '+FormatDateTime('mmmm',mDatVen)
                    +' de '+Extenso2(StrToInt(FormatDateTime('yyyy',mDatVen)));
   LVLREXT.Caption :=Extenso(DM2.Tb_LBR1LBTOTAL.Value);
   LPAGAVEL.Caption:='Pagável em '+DM1.Tb_EmpCIDADE.Value
                    +' - '+DM1.Tb_EmpUF.Value;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('select VNOME, VLOG, VBAIRRO, VCPF, VCIDADE, VUF'
                     +' from CADVEN'
                     +' where '+iif(DM1.Qr_Tid.locate('TINOME','CADVEN',[]),'',' VCODEMP=0'+IntTostr(codemp)+' and ')
                     +'   VCODVEN=0'+DM2.Tb_LBR2LB2CODVEN.AsString);
   DM1.Query1.Open;
   LNOMVEN.Caption  :=DM1.Query1.Fields[0].AsString;
   LCPF.Caption     :=FormatFloat('000000000-00',DM1.Query1.Fields[3].AsFloat);
   LENDERECO.Caption:=DM1.Query1.Fields[1].AsString
                     +' '+DM1.Query1.Fields[2].AsString
                     +' '+DM1.Query1.Fields[4].AsString
                     +'-'+DM1.Query1.Fields[5].AsString;
   LDATA2.Caption:=LDATA.Caption;
   mDatVen:=0;
end;

end.
