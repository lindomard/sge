unit Sr_Rom02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,S_Rom,S_DM1,func;

type
  TQr_Rom02 = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRShape5: TQRShape;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel25: TQRLabel;
    QRShape7: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    Qr_Data: TQRLabel;
    QRLabel23: TQRLabel;
    QRMemo1: TQRMemo;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel1: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRDBText3: TQRDBText;
    razaosocial: TQRLabel;
    denominacao: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    ChildBand5: TQRChildBand;
    ChildBand6: TQRChildBand;
    ChildBand7: TQRChildBand;
    ChildBand8: TQRChildBand;
    ChildBand9: TQRChildBand;
    ChildBand10: TQRChildBand;
    ChildBand11: TQRChildBand;
    ChildBand12: TQRChildBand;
    ChildBand13: TQRChildBand;
    ChildBand14: TQRChildBand;
    ChildBand15: TQRChildBand;
    QRShape20: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape58: TQRShape;
    QRShape57: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    nome01: TQRLabel;
    nome02: TQRLabel;
    nome03: TQRLabel;
    nome04: TQRLabel;
    nome05: TQRLabel;
    nome06: TQRLabel;
    nome07: TQRLabel;
    nome08: TQRLabel;
    nome09: TQRLabel;
    nome10: TQRLabel;
    nome11: TQRLabel;
    nome12: TQRLabel;
    nome13: TQRLabel;
    nome15: TQRLabel;
    nome14: TQRLabel;
    nome16: TQRLabel;
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
    procedure ChildBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand14BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Qr_Rom02: TQr_Rom02;

implementation

{$R *.DFM}

procedure TQr_Rom02.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{
if Frm_Rom.Qr_RM1R1_QTDVOL.Value>0 then
   QTDVOL.Caption:=Frm_Rom.Qr_RM1R1_QTDVOL.AsString
else
   QTDVOL.Caption:='_______________';
if Trim(Frm_Rom.Qr_RM1R1_ESPECIE.Value)='' then
   ESPECIE.Caption:='Caixa(s)'
else
   ESPECIE.Caption:=Frm_Rom.Qr_RM1R1_ESPECIE.Value;
if Frm_Rom.Qr_RM1R1_PESOL.Value>0 then
   PESOL.Caption:=FormatFloat('0.000',Frm_Rom.Qr_RM1R1_PESOL.Value)
else
   PESOL.Caption:='_______________';
if Frm_Rom.Qr_RM1R1_PESOB.Value>0 then
   PESOB.Caption:=FormatFloat('0.000',Frm_Rom.Qr_RM1R1_PESOB.Value)
else
   PESOB.Caption:='_______________';
}   
end;

procedure TQr_Rom02.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
Qr_Data.Caption:=DM1.Tb_EmpCIDADE.Value+', '+FormatDateTime('dd', Frm_Rom.Qr_RM1R1_DATA.Value)
                +' de '+tabmes[StrToInt(FormatDateTime('mm',Frm_Rom.Qr_RM1R1_DATA.Value))]
                +' de '+FormatdateTime('yyyy',Frm_Rom.Qr_RM1R1_DATA.Value);
QRMemo1.Lines.Clear;
QRMemo1.Lines.Add('A '+Trim(DM1.Tb_EmpRAZAO.Value)
                +', VÊM POR INTERMEDIO DESTA, ENTREGAR AS MERCADORIAS ABAIXO '
                +'RELACIONADAS, REFERENTES A ORDEM DE FORNECIMENTO E PROCESSO No.'
                +Trim(Frm_Rom.Qr_RM1R1_OBS1.Value));

end;

procedure TQr_Rom02.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
mqtd: integer;
begin
nome01.Caption:='';
nome02.Caption:='';
nome03.Caption:='';
nome04.Caption:='';
nome05.Caption:='';
nome06.Caption:='';
nome07.Caption:='';
nome08.Caption:='';
nome09.Caption:='';
nome10.Caption:='';
nome11.Caption:='';
nome12.Caption:='';
nome13.Caption:='';
nome14.Caption:='';
nome15.Caption:='';
nome16.Caption:='';


if Frm_Rom.Tb_Ped02D.Locate('P2DCODPRO',Frm_Rom.Qr_RM2R2_CODPRO.Value,[]) then
   begin
   mqtd:=0;
   nome01.Caption;
   While not (Frm_Rom.Tb_Ped02D.Eof) and (Frm_Rom.Qr_RM2R2_CODPRO.Value=Frm_Rom.Tb_Ped02DP2DCODPRO.Value) do
      begin
      mqtd:=mqtd+1;
      case mqtd of
         1: nome01.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         2: nome02.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         3: nome03.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         4: nome04.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         5: nome05.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         6: nome06.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         7: nome07.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         8: nome08.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
         9: nome09.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        10: nome10.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        11: nome11.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        12: nome12.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        13: nome13.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        14: nome14.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        15: nome15.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        16: nome16.Caption:=Frm_Rom.Tb_Ped02DP2DESC.Value;
        end;
      Frm_Rom.Tb_Ped02D.Next;
      end;
   end
else
   nome01.Caption:=Frm_Rom.Qr_RM2nome.Value;   
end;

procedure TQr_Rom02.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome02.Caption='' then
   PrintBand:=False;
end;

procedure TQr_Rom02.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome03.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome04.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome05.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome06.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome07.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome08.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome09.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome10.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome11.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome12.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome13.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome14.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand14BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome15.Caption='' then
   PrintBand:=False;

end;

procedure TQr_Rom02.ChildBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if nome16.Caption='' then
   PrintBand:=False;

end;

end.
