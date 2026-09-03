unit Sr_ConProd;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,dialogs,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,S_DM4, DB, DBTables,lerarq,func;

type
  TQr_ConProd = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    qr_titrel: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    lbl_fantasia_emp: TQRLabel;
    lbl_razao_emp: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
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
    QRLabel17: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    s01: TQRShape;
    s08: TQRShape;
    s06: TQRShape;
    s07: TQRShape;
    s02: TQRShape;
    s03: TQRShape;
    s04: TQRShape;
    s05: TQRShape;
    s09: TQRShape;
    s10: TQRShape;
    s11: TQRShape;
    SummaryBand1: TQRBand;
    Tb_ConProd: TQuery;
    Tb_ConProdnommaq: TStringField;
    Tb_ConProdpercperda: TFloatField;
    Tb_ConProdperda: TFloatField;
    Tb_ConProdtotperdas: TFloatField;
    QRLabel18: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    ChildBand1: TQRChildBand;
    s201: TQRShape;
    s202: TQRShape;
    s203: TQRShape;
    s204: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    ChildBand2: TQRChildBand;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    ChildBand5: TQRChildBand;
    ChildBand6: TQRChildBand;
    ChildBand7: TQRChildBand;
    ChildBand8: TQRChildBand;
    ChildBand9: TQRChildBand;
    ChildBand10: TQRChildBand;
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
    QRShape57: TQRShape;
    QRShape58: TQRShape;
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
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    ChildBand11: TQRChildBand;
    motper01: TQRLabel;
    motpar01: TQRLabel;
    prens01: TQRLabel;
    motper02: TQRLabel;
    motpar02: TQRLabel;
    prens02: TQRLabel;
    motper03: TQRLabel;
    motpar03: TQRLabel;
    prens03: TQRLabel;
    motper04: TQRLabel;
    motpar04: TQRLabel;
    prens04: TQRLabel;
    motper05: TQRLabel;
    motpar05: TQRLabel;
    prens05: TQRLabel;
    motper06: TQRLabel;
    motpar06: TQRLabel;
    prens06: TQRLabel;
    motper07: TQRLabel;
    motpar07: TQRLabel;
    prens07: TQRLabel;
    motper08: TQRLabel;
    motpar08: TQRLabel;
    prens08: TQRLabel;
    motper09: TQRLabel;
    motpar09: TQRLabel;
    prens09: TQRLabel;
    motper10: TQRLabel;
    motpar10: TQRLabel;
    prens10: TQRLabel;
    motper11: TQRLabel;
    motpar11: TQRLabel;
    prens11: TQRLabel;
    Tb_ConProdCP1CODEMP: TFloatField;
    Tb_ConProdCP1LOTSEQ: TFloatField;
    Tb_ConProdCP1CHAVE: TFloatField;
    Tb_ConProdCP1DATA: TDateTimeField;
    Tb_ConProdCP1TURNO: TStringField;
    Tb_ConProdCP1REBARBAS: TStringField;
    Tb_ConProdCP1DATAINC: TDateTimeField;
    Tb_ConProdCP1USRINC: TFloatField;
    Tb_ConProdCP1DATAALT: TDateTimeField;
    Tb_ConProdCP1USRALT: TFloatField;
    Tb_ConProdCP1CODENC: TFloatField;
    Tb_ConProdCP2ITEM: TFloatField;
    Tb_ConProdCP2CODMAQ: TFloatField;
    Tb_ConProdCP2FRASCO: TStringField;
    Tb_ConProdCP2COR: TStringField;
    Tb_ConProdCP2CICLO: TFloatField;
    Tb_ConProdCP2CAVIDADE: TFloatField;
    Tb_ConProdCP2PRODUCAO: TFloatField;
    Tb_ConProdCP2PERDA: TFloatField;
    Tb_ConProdCP2CODMPER: TFloatField;
    Tb_ConProdCP2CODMPAR: TFloatField;
    Tb_ConProdCP2PRENSISTA: TFloatField;
    Tb_ConProdCP2HORTRAB: TFloatField;
    Tb_ConProdCP2DTHRIPAR: TDateTimeField;
    Tb_ConProdCP2DTHRTPAR: TDateTimeField;
    Tb_ConProdCP2NOMPER: TStringField;
    Tb_ConProdCP2PROTRO: TFloatField;
    Tb_ConProdCP2NOMPAR: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Tb_ConProdCalcFields(DataSet: TDataSet);
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
  private

  public

  end;

var
  Qr_ConProd: TQr_ConProd;
  cp_chaveant: Real=0;
  sr_codmper: Real;
  sr_codmpar: Real;

implementation

uses S_DM1;

{$R *.DFM}

procedure TQr_ConProd.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

if cp_chaveant<>Tb_ConProdCP1CHAVE.Value then
   begin
   Qr_ConProd.ForceNewPage;
   cp_chaveant:=Tb_ConProdCP1CHAVE.Value;
   end;

DM4.Tb_CP02_MPER.Close;
DM4.Tb_CP02_MPER.SQL.Clear;
DM4.Tb_CP02_MPER.SQL.add('Select * from CADCP02_MPER where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+Tb_ConProdCP1CODEMP.AsString+' and ')
                  +' CP2MPERLOTSEQ    =0'+Tb_ConProdCP1LOTSEQ.AsString
                  +' and CP2MPERCHAVE =0'+Tb_ConProdCP1CHAVE.AsString
                  +' and CP2MPERCODMAQ=0'+Tb_ConProdCP2CODMAQ.AsString
                  +' and CP2MPERSEQ   =0'+Tb_ConProdCP2ITEM.AsString
                  +' and CP2MPERPROTRO =0'+Tb_ConProdCP2PROTRO.AsString);
if sr_codmper<>0 then
   DM4.Tb_CP02_MPER.Sql.add(' and CP2MPERCODMPER=0'+FloatToStr(sr_codmper));
DM4.Tb_CP02_MPER.Sql.add(' order by CP2MPERCODMAQ,CP2MPERSEQ ');
try
   DM4.Tb_CP02_MPER.Open;
except
   DM4.Tb_CP02_MPER.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao ler motivo de perdas!',mtWarning,[mbOk],0);
   end;

DM4.Tb_CP02_MPAR.Close;
DM4.Tb_CP02_MPAR.SQL.Clear;
DM4.Tb_CP02_MPAR.SQL.add('Select * from CADCP02_MPAR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+Tb_ConProdCP1CODEMP.AsString+' and ')
                  +' CP2MPARLOTSEQ=0'+Tb_ConProdCP1LOTSEQ.AsString
                  +' and CP2MPARCHAVE=0'+Tb_ConProdCP1CHAVE.AsString
                  +' and CP2MPARCODMAQ=0'+Tb_ConProdCP2CODMAQ.AsString
                  +' and CP2MPARSEQ   =0'+Tb_ConProdCP2ITEM.AsString
                  +' and CP2MPARPROTRO =0'+Tb_ConProdCP2PROTRO.AsString);
if sr_codmpar<>0 then
   DM4.Tb_CP02_MPAR.Sql.add(' and CP2MPARCODMPAR=0'+FloatToStr(sr_codmpar));
DM4.Tb_CP02_MPAR.Sql.add(' order by CP2MPARCODMAQ,CP2MPARSEQ ');

try
   DM4.Tb_CP02_MPAR.Open;
except
   DM4.Tb_CP02_MPAR.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao ler motivo de Paradas!',mtWarning,[mbOk],0);
   end;

DM4.Tb_CP02_PREN.Close;
DM4.Tb_CP02_PREN.SQL.Clear;
DM4.Tb_CP02_PREN.SQL.add('Select * from CADCP02_PREN where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+Tb_ConProdCP1CODEMP.AsString+' and ')
                  +' CP2PRENLOTSEQ    =0'+Tb_ConProdCP1LOTSEQ.AsString
                  +' and CP2PRENCHAVE =0'+Tb_ConProdCP1CHAVE.AsString
                  +' and CP2PRENCODMAQ=0'+Tb_ConProdCP2CODMAQ.AsString
                  +' and CP2PRENSEQ   =0'+Tb_ConProdCP2ITEM.AsString
                  +' and CP2PRENPROTRO =0'+Tb_ConProdCP2PROTRO.AsString
                  +' order by CP2PRENCODMAQ,CP2PRENSEQ ');
try
   DM4.Tb_CP02_PREN.Open;
except
   DM4.Tb_CP02_PREN.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao ler arquivo de Prencista!',mtWarning,[mbOk],0);
   end;


if DM4.Tb_CP02_MPER.Eof then
   motper01.Caption:=''
else
   begin
   motper01.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar01.Caption:=''
else
   begin
   motpar01.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens01.Caption:=''
else
   begin
   prens01.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;


end;

procedure TQr_ConProd.Tb_ConProdCalcFields(DataSet: TDataSet);
begin
if (Tb_ConProdCP2CODMAQ.Value=0) or (Tb_ConProdCP2CODMAQ.IsNull) then
   Tb_ConProdnommaq.Value:='não cadastrado'
else
   begin
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Tb_ConProdCP2CODMAQ.AsString) then
      Tb_ConProdnommaq.Value:=DM1.Query1.Fields[0].AsString
   else
      Tb_ConProdnommaq.Value:='não cadastrado';
   end;


// formula = 3600 / (ciclo*cavidade*horas trab)
if (Tb_ConProdCP2CICLO.AsFloat+Tb_ConProdCP2CAVIDADE.AsFloat+Tb_ConProdCP2HORTRAB.Asfloat)<>0 then
   begin
   try
      Tb_ConProdperda.Value:=(3600/Tb_ConProdCP2CICLO.Asfloat)*Tb_ConProdCP2CAVIDADE.Asfloat*Tb_ConProdCP2HORTRAB.Asfloat;
   except
      Tb_ConProdperda.Value:=0;
      end;
   end;
if (Tb_ConProdperda.AsFloat+Tb_ConProdCP2PRODUCAO.AsFloat)>0 then
    Tb_ConProdtotperdas.Value:=Tb_ConProdperda.AsFloat-Tb_ConProdCP2PRODUCAO.AsFloat;
Tb_ConProdpercPerda.Value:=0;
if (Tb_ConProdperda.AsFloat<>0) and (Tb_ConProdCP2PRODUCAO.AsFloat<>0) then
   begin
   try
      Tb_ConProdpercPerda.Value:=((Tb_ConProdCP2PRODUCAO.Value*100)/Tb_ConProdperda.Value)-100;
   except
      Tb_ConProdpercPerda.Value:=0;
      end;
   end;

// termino



end;

procedure TQr_ConProd.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper02.Caption:=''
else
   begin
   motper02.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar02.Caption:=''
else
   begin
   motpar02.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens02.Caption:=''
else
   begin
   prens02.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens02.Caption)='') and (Trim(motper02.Caption)='') and (Trim(motpar02.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper03.Caption:=''
else
   begin
   motper03.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar03.Caption:=''
else
   begin
   motpar03.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens03.Caption:=''
else
   begin
   prens03.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens03.Caption)='') and (Trim(motper03.Caption)='') and (Trim(motpar03.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper04.Caption:=''
else
   begin
   motper04.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar04.Caption:=''
else
   begin
   motpar04.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens04.Caption:=''
else
   begin
   prens04.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens04.Caption)='') and (Trim(motper04.Caption)='') and (Trim(motpar04.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper05.Caption:=''
else
   begin
   motper05.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar05.Caption:=''
else
   begin
   motpar05.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens05.Caption:=''
else
   begin
   prens05.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens05.Caption)='') and (Trim(motper05.Caption)='') and (Trim(motpar05.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper06.Caption:=''
else
   begin
   motper06.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar06.Caption:=''
else
   begin
   motpar06.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens06.Caption:=''
else
   begin
   prens06.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens06.Caption)='') and (Trim(motper06.Caption)='') and (Trim(motpar06.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper07.Caption:=''
else
   begin
   motper07.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar07.Caption:=''
else
   begin
   motpar07.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens07.Caption:=''
else
   begin
   prens07.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens07.Caption)='') and (Trim(motper07.Caption)='') and (Trim(motpar07.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper08.Caption:=''
else
   begin
   motper08.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar08.Caption:=''
else
   begin
   motpar08.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens08.Caption:=''
else
   begin
   prens08.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens08.Caption)='') and (Trim(motper08.Caption)='') and (Trim(motpar08.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper09.Caption:=''
else
   begin
   motper09.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar09.Caption:=''
else
   begin
   motpar09.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens09.Caption:=''
else
   begin
   prens09.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens09.Caption)='') and (Trim(motper09.Caption)='') and (Trim(motpar09.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper10.Caption:=''
else
   begin
   motper10.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar10.Caption:=''
else
   begin
   motpar10.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens10.Caption:=''
else
   begin
   prens10.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens10.Caption)='') and (Trim(motper10.Caption)='') and (Trim(motpar10.Caption)='') then
   PrintBand:=false;

end;

procedure TQr_ConProd.ChildBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if DM4.Tb_CP02_MPER.Eof then
   motper11.Caption:=''
else
   begin
   motper11.Caption:=DM4.Tb_CP02_MPERCP2MPERNOMPER.Value;
   DM4.Tb_CP02_MPER.Next;
   end;
if DM4.Tb_CP02_MPAR.Eof then
   motpar11.Caption:=''
else
   begin
   motpar11.Caption:=DM4.Tb_CP02_MPARCP2MPARNOMPAR.Value;
   DM4.Tb_CP02_MPAR.Next;
   end;

if DM4.Tb_CP02_PREN.Eof then
   prens11.Caption:=''
else
   begin
   prens11.Caption:=DM4.Tb_CP02_PRENCP2PRENNOMPREN.Value;
   DM4.Tb_CP02_PREN.Next;
   end;
if (Trim(prens11.Caption)='') and (Trim(motper11.Caption)='') and (Trim(motpar11.Caption)='') then
   PrintBand:=false;

end;

end.
