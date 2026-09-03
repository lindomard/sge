unit S_RelImp_Prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, RLReport, DB, DBTables,S_DM1,func,S_For,lerarq,
  RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLFilters, RLRichFilter,
  RLDraftFilter;

type
  TFrm_RelImp_Prod = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    DATALOT: TEdit;
    NUMLOT: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    RGTIPO: TRadioGroup;
    RGTIPOALT: TRadioGroup;
    RGPRECOS: TRadioGroup;
    Label3: TLabel;
    INDINI: TEdit;
    Label4: TLabel;
    INDFIN: TEdit;
    RGORDEM: TRadioGroup;
    Panel3: TPanel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    Qr_CadAjPco: TQuery;
    Qr_CadAjPcoAPCODEMP: TFloatField;
    Qr_CadAjPcoAPCODFOR: TFloatField;
    Qr_CadAjPcoAPLOTE: TFloatField;
    Qr_CadAjPcoAPDATA: TDateTimeField;
    Qr_CadAjPcoAPCODPRO_FOR: TFloatField;
    Qr_CadAjPcoAPCODBAR: TFloatField;
    Qr_CadAjPcoAPCODPRO_LOCAL: TFloatField;
    Qr_CadAjPcoAPNOME: TStringField;
    Qr_CadAjPcoAPAPRES: TStringField;
    Qr_CadAjPcoAPCODFAB: TFloatField;
    Qr_CadAjPcoAPNOMFAB: TStringField;
    Qr_CadAjPcoAPUND: TStringField;
    Qr_CadAjPcoAPEMBMUL: TFloatField;
    Qr_CadAjPcoAPPCOFAB: TFloatField;
    Qr_CadAjPcoAPPCOMAX: TFloatField;
    Qr_CadAjPcoAPPCOVDA: TFloatField;
    Qr_CadAjPcoAPPCOFAB_CX: TFloatField;
    Qr_CadAjPcoAPPCOMAX_CX: TFloatField;
    Qr_CadAjPcoAPDTVIG: TDateTimeField;
    Qr_CadAjPcoAPPERC_PCOFAB: TFloatField;
    Qr_CadAjPcoAPPERC_PCOMAX: TFloatField;
    Qr_CadAjPcoAPPERC_PCOVDA: TFloatField;
    Qr_CadAjPcoAPPERC_PCOFAB_CX: TFloatField;
    Qr_CadAjPcoAPPERC_PCOMAX_CX: TFloatField;
    Qr_CadAjPcoAPCODGRU: TFloatField;
    Qr_CadAjPcoAPNOMGRU: TStringField;
    Qr_CadAjPcoAPCODCON: TFloatField;
    Qr_CadAjPcoAPNOMCON: TStringField;
    Qr_CadAjPcoAPCODRAM: TFloatField;
    Qr_CadAjPcoAPNOMRAM: TStringField;
    Qr_CadAjPcoAPCODTIP: TFloatField;
    Qr_CadAjPcoAPNOMTIP: TStringField;
    Qr_CadAjPcoAPLISTA: TFloatField;
    Qr_CadAjPcoAPIPI: TFloatField;
    Qr_CadAjPcoAPREGMS: TStringField;
    Qr_CadAjPcoAPCLAS: TStringField;
    Qr_CadAjPcoAPCODBAR_ANT: TFloatField;
    Qr_CadAjPcoAPNOME_ANT: TStringField;
    Qr_CadAjPcoAPCODFAB_ANT: TFloatField;
    Qr_CadAjPcoAPNOMFAB_ANT: TStringField;
    Qr_CadAjPcoAPUND_ANT: TStringField;
    Qr_CadAjPcoAPEMBMUL_ANT: TFloatField;
    Qr_CadAjPcoAPPCOFAB_ANT: TFloatField;
    Qr_CadAjPcoAPPCOMAX_ANT: TFloatField;
    Qr_CadAjPcoAPPCOFAB_CX_ANT: TFloatField;
    Qr_CadAjPcoAPCODGRU_ANT: TFloatField;
    Qr_CadAjPcoAPNOMGRU_ANT: TStringField;
    Qr_CadAjPcoAPCODCON_ANT: TFloatField;
    Qr_CadAjPcoAPNOMCON_ANT: TStringField;
    Qr_CadAjPcoAPCODRAM_ANT: TFloatField;
    Qr_CadAjPcoAPNOMRAM_ANT: TStringField;
    Qr_CadAjPcoAPCODTIP_ANT: TFloatField;
    Qr_CadAjPcoAPNOMTIP_ANT: TStringField;
    Qr_CadAjPcoAPLISTA_ANT: TFloatField;
    Qr_CadAjPcoAPIPI_ANT: TFloatField;
    Qr_CadAjPcoAPREGMS_ANT: TStringField;
    Qr_CadAjPcoAPCLAS_ANT: TStringField;
    Qr_CadAjPcoAPSTATUS: TFloatField;
    Qr_CadAjPcoAPNOMECOMP: TStringField;
    Qr_CadAjPcoAPPCOVDA_ANT: TFloatField;
    Src_CadAjPco: TDataSource;
    RLBand1: TRLBand;
    lbl_razao: TRLLabel;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    lbl_data: TRLLabel;
    lbl_fornec: TRLLabel;
    lbl_lote: TRLLabel;
    RLBand2: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    RLMemo11: TRLMemo;
    RLMemo12: TRLMemo;
    RLMemo13: TRLMemo;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    Qr_CadAjPconomfor_cod: TStringField;
    RLBand4: TRLBand;
    Qr_CadAjPcoAPPCOMAX_CX_ANT: TFloatField;
    Qr_CadAjPcoAPSITUACAO: TFloatField;
    CB_TIPIND: TCheckBox;
    RLDraftFilter1: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    procedure Qr_CadAjPcoCalcFields(DataSet: TDataSet);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure NUMLOTExit(Sender: TObject);
    procedure INDINIExit(Sender: TObject);
    procedure INDFINExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure INDINIKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RelImp_Prod: TFrm_RelImp_Prod;

implementation

{$R *.dfm}

procedure TFrm_RelImp_Prod.Qr_CadAjPcoCalcFields(DataSet: TDataSet);
begin
Qr_CadAjPconomfor_cod.Value:=Qr_CadAjPcoAPCODFAB.AsString+'-'+Qr_CadAjPcoAPNOMFAB.AsString;
end;

procedure TFrm_RelImp_Prod.bbImprimirClick(Sender: TObject);
begin
if (valfloat(INDINI.Text)<>0) and (valfloat(INDFIN.Text)<>0) then
   begin
   if (ValFloat(INDINI.Text))>(ValFloat(INDFIN.Text)) then
      begin
      MessageDlg('Indice inicial maior que final inválido!',mtWarning,[mbOk],0);
      INDINI.SetFocus;
      exit;
      end;
   end;

if (trim(NUMLOT.Text)<>'') and (trim(CODFOR.Text)<>'')  then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select APDATA from CADAJPCO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' APCODEMP=0'+IntToStr(codemp)+' and ')
                     +' APCODFOR=0'+Trim(CODFOR.Text)
                     +' and APLOTE=0'+Trim(NUMLOT.Text));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      MessageDlg('Lote não Encontrado!',mtWarning,[mbOk],0);
      NUMLOT.SetFocus;
      end;
   end
else
   begin
   MessageDlg('Número do lote e Código do Fornecedor são campos obrigatórios!',mtWarning,[mbOk],0);
   exit;
   end;

Qr_CadAjPco.Close;
Qr_CadAjPco.SQL.Clear;
Qr_CadAjPco.SQL.Add('Select * from CADAJPCO where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' APCODEMP=0'+IntTosTr(codemp)+' and ')
                   +' APCODFOR=0'+Trim(CODFOR.Text)
                   +' and APLOTE=0'+Trim(NUMLOT.Text));
if RGTIPO.ItemIndex=0 then
   Qr_CadAjPco.SQL.Add(' and APSTATUS=1 ')
else if RGTIPO.ItemIndex=1 then
   Qr_CadAjPco.SQL.Add(' and APSTATUS=0 ');
if RGTIPOALT.ItemIndex=0 then
   Qr_CadAjPco.SQL.Add(' and APSITUACAO=0 ')
else if RGTIPOALT.ItemIndex=1 then
   Qr_CadAjPco.SQL.Add(' and APSITUACAO=1 ');
if RGPRECOS.ItemIndex=0 then
   Qr_CadAjPco.SQL.Add(' and APPERC_PCOMAX>0 ')
else if RGPRECOS.ItemIndex=1 then
   Qr_CadAjPco.SQL.Add(' and APPERC_PCOMAX<0 ') ;
if valfloat(INDINI.Text)<>0 then
   begin
   if CB_TIPIND.Checked then
      Qr_CadAjPco.SQL.add(' and APPERC_PCOFAB>='+mudaVP( FloatToStr( ValFloat(INDINI.Text) ) ))
   else
      Qr_CadAjPco.SQL.add(' and APPERC_PCOMAX>='+mudaVP( FloatToStr( ValFloat(INDINI.Text) ) ));
   end;
if valfloat(INDFIN.Text)<>0 then
   begin
   if CB_TIPIND.Checked then
      Qr_CadAjPco.SQL.add(' and APPERC_PCOFAB<='+mudaVP(FloatToStr(ValFloat(INDFIN.Text))))
   else
      Qr_CadAjPco.SQL.add(' and APPERC_PCOMAX<='+mudaVP(FloatToStr(ValFloat(INDFIN.Text))));
   end;
Qr_CadAjPco.SQL.Add('order by ');
if RGORDEM.ItemIndex=5 then
   Qr_CadAjPco.SQL.Add(' APNOMFOR+APNOME ' )
else if RGORDEM.ItemIndex=4 then
   Qr_CadAjPco.SQL.Add(' APPERC_PCOMAX DESC ' )
else if RGORDEM.ItemIndex=3 then
   Qr_CadAjPco.SQL.Add(' APPERC_PCOMAX' )
else if RGORDEM.ItemIndex=2 then
   Qr_CadAjPco.SQL.Add(' APCODPRO_LOCAL' )
else if RGORDEM.ItemIndex=1 then
   Qr_CadAjPco.SQL.Add(' APCODPRO_FOR' )
else
   Qr_CadAjPco.SQL.Add(' APNOME' );
//Qr_CadAjPco.Sql.SAveToFile('c:\sql.txt');
Qr_CadAjPco.Open;
lbl_razao.Caption :=DM1.Tb_EmpRAZAO_CAB.Value+'.';
lbl_fornec.Caption:='Fornecedor.: '+CODFOR.Text+'-'+NOMFOR.Text+'.';
lbl_lote.Caption  :='Lote '+NUMLOT.Text+' Data: '+FormatDatetime(fdt2, date);

Frm_RelImp_Prod.RLReport1.PreviewModal;
end;

procedure TFrm_RelImp_Prod.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Rellmp_Prod',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_RelImp_Prod.CODFORExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODFOR.Text:=fdeixanum2(CODFOR.Text);
NOMFOR.Text:='';
if Trim(CODFOR.Text)<>'' then
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      verteclado(0);
      MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbok],0);
      CODFOR.SetFocus;
      end
   else
      begin
      NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
      end;
   end;


end;

procedure TFrm_RelImp_Prod.NUMLOTExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
fdeixanum2(NUMLOT.Text);
if (trim(NUMLOT.Text)<>'') and (trim(CODFOR.Text)<>'')  then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select APDATA from CADAJPCO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' APCODEMP=0'+IntToStr(codemp)+' and ')
                     +' APCODFOR=0'+Trim(CODFOR.Text)
                     +' and APLOTE=0'+Trim(NUMLOT.Text));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      MessageDlg('Lote não Encontrado!',mtWarning,[mbOk],0);
      NUMLOT.SetFocus;
      end
   else
      DATALOT.Text:='Data do Lote: '+FormatDateTime(fdt2, DM1.Query1.Fields[0].AsDateTime);
   end;
end;

procedure TFrm_RelImp_Prod.INDINIExit(Sender: TObject);
begin
if trim(INDINI.Text)<>'' then
   INDINI.Text:=FormatFloat(mcasas_pct, ValFloat(INDINI.Text));
end;

procedure TFrm_RelImp_Prod.INDFINExit(Sender: TObject);
begin
if trim(INDFIN.Text)<>'' then
   INDFIN.Text:=FormatFloat(mcasas_pct, ValFloat(INDFIN.Text));

end;

procedure TFrm_RelImp_Prod.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelImp_Prod.FormCreate(Sender: TObject);
begin
Qr_CadAjPcoAPDATA.DisplayFormat          :=fdt2;
Qr_CadAjPcoAPPCOFAB.DisplayFormat        :=mcasaspu;
Qr_CadAjPcoAPPCOMAX.DisplayFormat        :=mcasaspu;
Qr_CadAjPcoAPPCOVDA.DisplayFormat        :=mcasaspu;
Qr_CadAjPcoAPPCOFAB_CX.DisplayFormat     :=mcasaspu;
Qr_CadAjPcoAPPCOMAX_CX.DisplayFormat     :=mcasaspu;
Qr_CadAjPcoAPDTVIG.DisplayFormat         :=fdt2;
Qr_CadAjPcoAPPERC_PCOFAB.DisplayFormat   :=mcasas_pct;
Qr_CadAjPcoAPPERC_PCOMAX.DisplayFormat   :=mcasas_pct;
Qr_CadAjPcoAPPERC_PCOVDA.DisplayFormat   :=mcasas_pct;
Qr_CadAjPcoAPPERC_PCOFAB_CX.DisplayFormat:=mcasas_pct;
Qr_CadAjPcoAPPERC_PCOMAX_CX.DisplayFormat:=mcasas_pct;
Qr_CadAjPcoAPIPI.DisplayFormat           :=mcasaspu;
Qr_CadAjPcoAPPCOFAB_ANT.DisplayFormat    :=mcasaspu;
Qr_CadAjPcoAPPCOMAX_ANT.DisplayFormat    :=mcasaspu;
Qr_CadAjPcoAPPCOFAB_CX_ANT.DisplayFormat :=mcasaspu;
Qr_CadAjPcoAPIPI_ANT.DisplayFormat       :=mcasaspu;
Qr_CadAjPcoAPPCOVDA_ANT.DisplayFormat    :=mcasaspu;
Qr_CadAjPcoAPPCOMAX_CX_ANT.DisplayFormat :=mcasaspu;
end;

procedure TFrm_RelImp_Prod.INDINIKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_RelImp_Prod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
