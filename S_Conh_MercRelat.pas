unit S_Conh_MercRelat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, RLReport,S_DM6, DB, DBTables,func,lerarq,
  RLHTMLFilter, RLXLSFilter, RLRichFilter, RLFilters, RLDraftFilter,
  RLPDFFilter;

type
  TFrm_Conh_MercRelat = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText12: TRLDBText;
    RLBand5: TRLBand;
    lbl_codpro: TRLLabel;
    lbl_descricao: TRLLabel;
    lbl_qtd: TRLLabel;
    RLBand2: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand4: TRLBand;
    RLMemo1: TRLMemo;
    Qr_Conhec: TQuery;
    Qr_ConhecC01CODCON: TFloatField;
    Qr_ConhecC01DATCON: TDateTimeField;
    Qr_ConhecCRAZAO: TStringField;
    Qr_ConhecCLOG: TStringField;
    Qr_ConhecCBAIRRO: TStringField;
    Qr_ConhecCCIDADE: TStringField;
    Qr_ConhecCUF: TStringField;
    Qr_ConhecCCEP: TStringField;
    Qr_ConhecCFONE01: TStringField;
    Qr_ConhecC02CODTRA: TFloatField;
    Qr_ConhecC02CODVEN: TFloatField;
    Qr_ConhecC02QTDM3: TFloatField;
    Qr_ConhecC02PESOB: TFloatField;
    Qr_ConhecC02TIPO_ENTREGA: TFloatField;
    Qr_ConhecC03CODPRO: TFloatField;
    Qr_ConhecC03QTDENT: TFloatField;
    Qr_ConhecPDNOME: TStringField;
    Qr_ConhecPDUND: TStringField;
    Src_Conhec: TDataSource;
    Qr_ConhecTRRAZTRA: TStringField;
    Qr_ConhecGRUPO: TStringField;
    Qr_ConhecC02CODEMP_PED: TFloatField;
    Qr_ConhecC02LOTSEQ_PED: TFloatField;
    Qr_ConhecC02CHAVE_PED: TFloatField;
    Qr_ConhecCCODCLI: TFloatField;
    Qr_Conhecendereco: TStringField;
    Qr_Conhectipo_entrega: TStringField;
    lbl_total: TRLLabel;
    RLLabel13: TRLLabel;
    LBL_LOTE: TRLLabel;
    RLDBText16: TRLDBText;
    Qr_ConhecC03LOTE: TStringField;
    RLPDFFilter1: TRLPDFFilter;
    Matricial: TRLDraftFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLDBText17: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText18: TRLDBText;
    Qr_ConhecC02OBSERVACAO: TStringField;
    Qr_ConhecC02OBS_CONHEC: TStringField;
    RLDBText19: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText20: TRLDBText;
    Qr_ConhecCNPJ_CPF: TStringField;
    Qr_Conhecp1qtdvol: TFloatField;
    Qr_Conhecp1especie: TStringField;
    Qr_Conhecp1pesol: TFloatField;
    Qr_Conhecp1pesob: TFloatField;
    Qr_Conhecp1numnf: TFloatField;
    RLLabel16: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText23: TRLDBText;
    procedure Qr_ConhecCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Conh_MercRelat: TFrm_Conh_MercRelat;
  mtotQtd: Real=0;
implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Conh_MercRelat.Qr_ConhecCalcFields(DataSet: TDataSet);
begin
if Qr_ConhecC02TIPO_ENTREGA.AsInteger>0 then
   Qr_Conhectipo_entrega.Value:='T'
else
   Qr_Conhectipo_entrega.Value:='P';
Qr_Conhecendereco.Value:=Qr_ConhecCLOG.AsString+'-'+Qr_ConhecCBAIRRO.AsString
                       +' - '+Qr_ConhecCCIDADE.Value+'-'+Qr_ConhecCUF.Value
                       +' CEP: '+Qr_ConhecCCEP.Value;
Qr_Conhecendereco.Value:=Insere2(Qr_Conhecendereco.Value,' ',100)+Qr_ConhecCFONE01.Value;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('select ccnpj,ccpf from cadcli where ccodcli='+Qr_ConhecCCODCLI.AsString);
DM1.Query1.Open;
if ValFloat(DM1.Query1.FieldByName('CCNPJ').AsString)>0 then
  Qr_ConhecCNPJ_CPF.AsString:=MaskCPFCNPJ(DM1.Query1.FieldByName('CCNPJ').AsString)
else
  Qr_ConhecCNPJ_CPF.AsString:=MaskCPFCNPJ(DM1.Query1.FieldByName('CCPF').AsString);

end;

procedure TFrm_Conh_MercRelat.FormCreate(Sender: TObject);
begin
Qr_ConhecC02QTDM3.DisplayFormat :='#0.000';
Qr_ConhecC02PESOB.DisplayFormat :='#0.000';
Qr_ConhecC03QTDENT.DisplayFormat:=mcasqtd;
Qr_ConhecC01DATCON.DisplayFormat:=fdt2;

end;

procedure TFrm_Conh_MercRelat.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLReport1.NewPage;

end;

procedure TFrm_Conh_MercRelat.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtotQtd:=0;
end;

procedure TFrm_Conh_MercRelat.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtotQtd:=mtotqtd+Qr_ConhecC03QTDENT.AsFloat;
end;

procedure TFrm_Conh_MercRelat.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_total.Caption:=FormatFloat('#0.000', mtotQtd);
mtotQtd:=0;

end;

procedure TFrm_Conh_MercRelat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.
