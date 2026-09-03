unit SR_Dup;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls,S_DM1,func, DB,
  RxMemDS;

type
  TQr_Dup = class(TQuickRep)
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    Endereco: TQRLabel;
    CepCidade: TQRLabel;
    CNPJ: TQRLabel;
    IE: TQRLabel;
    DtEmis: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel2: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape16: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape17: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel22: TQRLabel;
    EXTL01: TQRLabel;
    EXTL02: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    sacado: TQRLabel;
    ender_sac: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    end_cob: TQRLabel;
    cnpj_sac: TQRLabel;
    ie_sac: TQRLabel;
    QRDBText5: TQRDBText;
    numnf: TQRLabel;
    QRDBText6: TQRDBText;
    numdup: TQRLabel;
    vcto: TQRLabel;
    QRShape21: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText8: TQRDBText;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRLabel28: TQRLabel;
    QRDBText9: TQRDBText;
    mem_dup: TRxMemoryData;
    src_dup: TDataSource;
    mem_dupCRTOTNF: TFloatField;
    mem_dupCRDTEMIS: TDateTimeField;
    mem_dupCRNFACUM: TStringField;
    mem_dupCRNUMERO: TFloatField;
    mem_dupCRDESD: TStringField;
    mem_dupCRDTVCTO: TDateTimeField;
    mem_dupCRCODCLI: TFloatField;
    mem_dupCRAZAO: TStringField;
    mem_dupCLOG: TStringField;
    mem_dupCBAIRRO: TStringField;
    mem_dupCENDERC: TStringField;
    mem_dupcgccpf: TStringField;
    mem_duprgie: TStringField;
    mem_dupCRVALOR: TFloatField;
    mem_dupCBAIRROC: TStringField;
    mem_dupCCIDADE: TStringField;
    mem_dupCCIDADEC: TStringField;
    mem_dupCUF: TStringField;
    mem_dupCCEPC: TStringField;
    mem_dupCFONE01: TStringField;
    mem_dupobservacao: TStringField;
    OBSERV_calc: TQRMemo;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Qr_Dup: TQr_Dup;
  mtemlogotipo01: Boolean=false;
  mtemlogotipo02: Boolean=false;

implementation


{$R *.DFM}

procedure TQr_Dup.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
Mextenso: String;
begin


DtEmis.Caption :='Data da Emissao: '+FormatDateTime('dd',mem_dupCRDTEMIS.Value)+' de '
                      +Nmes(mem_dupCRDTEMIS.Value)+' de '
                      +FormatDateTime('yyyy',mem_dupCRDTEMIS.Value);
numnf.Caption  :=mem_dupCRNFACUM.Value;
numdup.Caption :=FormatFloat('00000',mem_dupCRNUMERO.Value)+'-'+mem_dupCRDESD.Value;
if mem_dupCRDTEMIS.Value=mem_dupCRDTVCTO.Value then
   vcto.Caption:='C/Apres.'
else
   vcto.Caption:=FormatdateTime(fdt2,mem_dupCRDTVCTO.Value);
Sacado.Caption:=FormatFloat('00000',mem_dupCRCODCLI.Value)+
                '-'+mem_dupCRAZAO.Value;
ender_sac.Caption:=Trim(mem_dupCLOG.Value)+' '+mem_dupCBAIRRO.Value;
//end_cob.Caption:=Trim(mem_dupCLOG.Value)+' '+mem_dupCBAIRRO.Value;

end_cob.Caption:=Trim(mem_dupCENDERC.Value)+' '+mem_dupCBAIRROC.Value;

cnpj_sac.Caption :=mem_dupcgccpf.Value;
ie_sac.Caption   :=mem_duprgie.Value;
mextenso:=Extenso(mem_dupCRVALOR.Value);
if length(mextenso)>60 then
   begin
   EXTL01.Caption:=copy(mextenso,1,60);
   EXTL02.Caption:=insere2(copy(mextenso,61,(length(mextenso)-60)),'*',60);
   end
else
   begin
   EXTL01.Caption:=insere2(mextenso,'*',60);
   EXTL02.Caption:=insere2('*','*',60);
   end;

//if (mtemlogotipo01) and (QRImage1=nil) then
if (mtemlogotipo01)  then
   QRImage1.Picture.LoadFromFile('C:\SGE\LOGO4.jpg');
//if (mtemlogotipo02) and (QRImage2=nil) then
if (mtemlogotipo02)  then
   QRImage2.Picture.LoadFromFile('C:\SGE\LOGO5.jpg');
OBSERV_calc.Lines.Text:=mem_dupobservacao.AsString;

end;

procedure TQr_Dup.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
mem_dupCRVALOR.DisplayFormat:=mcasas;
mem_dupCRTOTNF.DisplayFormat:=mcasas;

end;

end.
