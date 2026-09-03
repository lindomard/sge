unit S_DestPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, CheckLst, Mask,S_Ven,S_GPro,S_TipPro,S_For,
  func,lerarq, Buttons, DB, DBTables, Grids, DBGrids, RLRichFilter,
  RLXLSFilter, RLPDFFilter, RLFilters, RLHTMLFilter, RLDraftFilter,
  RLReport,S_UF, S_SelEmp,s_lerarq_geral;

type
  TFrm_DestPro = class(TForm)
    PageControl1: TPageControl;
    tsFiltros01: TTabSheet;
    tsTiposPed: TTabSheet;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    CODTPRO: TEdit;
    lbx_codtpro: TListBox;
    OMITIR_TPRO: TCheckBox;
    RG_TIPOPED: TCheckListBox;
    Label6: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    cb_agrupar: TComboBox;
    CB_SEMBORDA: TCheckBox;
    Label7: TLabel;
    MDT1: TMaskEdit;
    Label8: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ped: TQuery;
    Qr_PedP2CODEMP: TFloatField;
    Qr_PedP2LOTSEQ: TFloatField;
    Qr_PedP2CHAVE: TFloatField;
    Qr_PedP2ORDEM: TFloatField;
    Qr_PedP2CODPRO: TFloatField;
    Qr_PedQTD: TFloatField;
    Qr_PedPCOUNI: TFloatField;
    Qr_PedTOTDES: TFloatField;
    Qr_PedNUMNF: TFloatField;
    Qr_PedCODVEN: TFloatField;
    Qr_PedFORMACE: TFloatField;
    Qr_PedDATAPED: TDateTimeField;
    Qr_PedRAZSOC: TStringField;
    Qr_PedNOMVEN: TStringField;
    Qr_PedNOMPRO: TStringField;
    Qr_PedUNDPRO: TStringField;
    Src_Ped: TDataSource;
    Qr_PedNOMGRU: TStringField;
    RLDraftFilter1: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    Qr_Pedvaltot: TFloatField;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLBand4: TRLBand;
    RLGroup1: TRLGroup;
    band_cab: TRLBand;
    lbl_cabRazSoc: TRLMemo;
    lbl_cabNomven: TRLMemo;
    lbl_cabcodpro: TRLMemo;
    lbl_cabNomPro: TRLMemo;
    lbl_cabpu: TRLMemo;
    lbl_numdoc: TRLMemo;
    lbl_cabvaldes: TRLMemo;
    lbl_valtot: TRLMemo;
    RLBand3: TRLBand;
    db_codpro: TRLDBText;
    db_deb: TRLDBText;
    db_cred: TRLDBText;
    dbl_valdes: TRLDBText;
    db_valtot: TRLDBText;
    RLBand2: TRLBand;
    db_grupo: TRLDBText;
    lbl_razsoc: TRLLabel;
    lbl_nomven: TRLLabel;
    lbl_numnf: TRLLabel;
    RLBand5: TRLBand;
    lblg_total: TRLLabel;
    lblg_nomven: TRLLabel;
    RLLabel6: TRLLabel;
    lblg_codpro: TRLLabel;
    lblg_nomgru: TRLLabel;
    lblg_pu: TRLLabel;
    lblg_totdes: TRLLabel;
    lbl_valtot_ger: TRLLabel;
    Label9: TLabel;
    CABTIT: TEdit;
    RG_FILTRO: TRadioGroup;
    SB_SalvarPadrao: TSpeedButton;
    lbl_qtd: TRLMemo;
    db_qtd: TRLDBText;
    lblg_qtd: TRLLabel;
    lbl_dataped: TRLMemo;
    db_dataped: TRLDBText;
    lblg_dataped: TRLLabel;
    RG_TITULOS: TRadioGroup;
    lbl_cabSit: TRLMemo;
    lbl_sit: TRLLabel;
    RLLabel4: TRLLabel;
    lbl_rodsit: TRLLabel;
    Qr_Pedsittit: TStringField;
    Qr_PedCRDTPAG: TDateTimeField;
    Qr_PedCRVALPAG: TFloatField;
    Qr_PedCRVALOR: TFloatField;
    Qr_PedCRJUROS: TFloatField;
    Qr_PedCRDESC: TFloatField;
    CB_CHECARTIT: TCheckBox;
    CB_DESCFIN: TCheckBox;
    lbl_cabdetdes: TRLMemo;
    db_detdes: TRLDBText;
    Qr_Peddetdes: TStringField;
    Qr_PedP2DESC1: TFloatField;
    Qr_PedP2DESC2: TFloatField;
    Qr_PedP2DESC3: TFloatField;
    Qr_PedP2PDESCF: TFloatField;
    Qr_PedP2VALDES: TFloatField;
    tsOutFil: TTabSheet;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    lbl_codven: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    rlBandFiltros: TRLBand;
    filtros: TRLMemo;
    rg_serie: TRadioGroup;
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODVENExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODTPROExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODTPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Qr_PedCalcFields(DataSet: TDataSet);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure SB_SalvarPadraoClick(Sender: TObject);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure CB_CHECARTITClick(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_DestPro: TFrm_DestPro;
  mtotgru: Real=0;
  mRazAnt: String;
  mVenAnt: String;
  mNFAnt: Real;
  mCodEmpAnt: Real;

implementation

uses S_DM1, S_DM4, S_TCon, func_excecoes;

{$R *.dfm}

procedure TFrm_DestPro.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_DestPro.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DestPro.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_DestPro.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_DestPro.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_DestPro.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_DestPro.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_DestPro.lbx_codtproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtpro.ItemIndex>=0 then
      lbx_codtpro.Items.Delete(lbx_codtpro.ItemIndex);

end;

procedure TFrm_DestPro.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fmensagem('Vendedor não cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_DestPro.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Trim(CODPRO.Text)) then
      begin
      fmensagem('Produto não cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(CODPRO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODPRO.text := '';
      CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_DestPro.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFOR.Text)) then
      begin
      fmensagem('Fornecedor não cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_DestPro.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo não cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODGRU.text := '';
      CODGRU.SetFocus;
      end;
   end;

end;

procedure TFrm_DestPro.CODTPROExit(Sender: TObject);
begin
CODTPRO.Text:=fdeixanum2(CODTPRO.Text);
if Trim(CODTPRO.Text)<>'' then
   begin
   if not flqr1('TNOME','T','CADTP','N','TCODTIP',CODTPRO.Text) then
      begin
      fmensagem('Tipo não cadastrado!',0,['0'],0);
      CODTPRO.SetFocus;
      end
   else
      begin
      lbx_codtpro.Items.Add(FormatFloat('0000000',StrToFloat(CODTPRO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTPRO.text := '';
      CODTPRO.SetFocus;
      end;
   end;


end;

procedure TFrm_DestPro.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_DestPro',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;

end;

procedure TFrm_DestPro.CODTPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTPRO.Text:=fChamaTipPro(0,'frm_DestPro',Key);
   if Trim(CODTPRO.Text)<>'' then
      CODTPROExit(self);
   key:=#0;
   end;


end;

procedure TFrm_DestPro.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_DestPro',Key);
   if trim(CODGRU.Text)<>'' then
      CODGRUExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_DestPro.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_DestPro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_DestPro',key);
      CODPROExit(Self);
      key:=#0;
      end;
   end;

end;

procedure TFrm_DestPro.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_DestPro',Key);
   if trim(CODVEN.Text)<>''  then
      CODVENExit(self);
   key:=#0;
   end;


end;

procedure TFrm_DestPro.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_DestPro.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_DestPro.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_DestPro.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_DestPro.FormCreate(Sender: TObject);
var
x: Integer;
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
PageControl1.activePageIndex:=0;
RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1]      := TRUE;
Qr_PedQTD.DisplayFormat    :=mcasqtd;
Qr_PedPCOUNI.DisplayFormat :=mcasaspu;
Qr_PedTOTDES.DisplayFormat :=mcasas;
Qr_Pedvaltot.DisplayFormat :=mcasas;
Qr_PedDATAPED.DisplayFormat:=fdt2;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_DESTPRO','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_DESTPRO','CB_SEMBORDA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SEMBORDA.Checked:=true
   else
      CB_SEMBORDA.Checked:=false;
   end
else
   CB_SEMBORDA.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_DESTPRO','RGFILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_DESTPRO','CABTIT']),[]) then
   CABTIT.Text:=DM4.Tb_FilPadFPVALOR.Value;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_DESTPRO','CB_CHECARTIT']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_CHECARTIT.Checked:=true
   else
      CB_CHECARTIT.Checked:=false;
   end
else
   CB_CHECARTIT.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_DESTPRO','CB_DESCFIN']),[]) then
   CB_DESCFIN.Checked:=DM4.Tb_FilPadFPVALOR.Value='true';


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_DESTPRO','RG_TITULOS']),[]) then
   RG_TITULOS.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

if log_codven>0 then
  begin
  CODVEN.Text:=FloatToStr(log_codven);
  flcadven(1,0,CODVEN.Text);
  if DM1.Tb_Ven.Eof then
    lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                      +' - '+DM1.Tb_VenVNOME.AsString)
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))+' - ');
  CODVEN.Enabled:=False;
  lbx_codven.Enabled:=False;
  OMITIR_VEN.Enabled:=False;
  end;


end;

procedure TFrm_DestPro.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DestPro.bbImprimirClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
bbImprimir.Enabled:=false;
mcinst4:='';
mcinst :='';
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' P1CODCLI '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' P1CODVEN '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODPRO '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODFOR '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODGRU '+mcinst2;
   mcinst:=' and ';
   end;


mcinst2:=fItensListBox(0,lbx_codtpro,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODTIP '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codcon,OMITIR_CON);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODCON '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CUF '+mcinst2;
   mcinst:=' and ';
   end;


mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' P1TIPO '+mcinst2;
   mcinst:=' and ';
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(0,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');

if CB_CHECARTIT.Checked then
   begin
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADDAR','CRCODEMP','P1CODEMP','CRNPED','P1CHAVE','CRORDEM','P1ORDEM');
   end;
Qr_Ped.Close;
Qr_Ped.SQL.Clear;
Qr_Ped.sql.Add('SELECT P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO ');
Qr_Ped.sql.Add(',P2QTD   AS QTD ');
Qr_Ped.sql.Add(',P2PRECO AS PCOUNI');
Qr_Ped.sql.Add(',P2TOTDES AS TOTDES ');
Qr_Ped.sql.Add(',P1NUMNF  AS NUMNF');
Qr_Ped.sql.Add(',P1CODVEN AS CODVEN');
Qr_Ped.sql.Add(',P1FORMACE AS FORMACE');
Qr_Ped.sql.Add(',P1DATAP  AS DATAPED');
Qr_Ped.sql.Add(',P2DESC1 ');
Qr_Ped.sql.Add(',P2DESC2');
Qr_Ped.sql.Add(',P2DESC3');
Qr_Ped.sql.Add(',P2PDESCF');
Qr_Ped.sql.Add(',P2VALDES');
Qr_Ped.sql.Add(',CRAZAO   AS RAZSOC');
Qr_Ped.sql.Add(',VNOME    AS NOMVEN');
Qr_Ped.sql.Add(',PDNOME AS NOMPRO');
Qr_Ped.sql.Add(',PDUND  AS UNDPRO');
if cb_agrupar.ItemIndex=0 then
   Qr_Ped.sql.Add(',TO_CHAR(P1CHAVE)   AS NOMGRU')
else if cb_agrupar.ItemIndex=1 then
   Qr_Ped.sql.Add(',CRAZAO || ' +quotedstr(' ')+'|| CFONE01  AS NOMGRU')
else if cb_agrupar.ItemIndex=2 then
   Qr_Ped.sql.Add(',PDNOMCON AS NOMGRU')
else if cb_agrupar.ItemIndex=3 then
   Qr_Ped.sql.Add(',PDNOMFOR AS NOMGRU')
else if cb_agrupar.ItemIndex=4 then
   Qr_Ped.sql.Add(',PDNOMGRU AS NOMGRU')
else if cb_agrupar.ItemIndex=5 then
   Qr_Ped.sql.Add(',TO_CHAR(P1NUMNF) AS NOMGRU')
else if cb_agrupar.ItemIndex=6 then
   Qr_Ped.sql.Add(',PDNOMRAM AS NOMGRU')
else if cb_agrupar.ItemIndex=7 then
   Qr_Ped.sql.Add(','+chr(39)+' '+chr(39)+' AS NOMGRU')
else if cb_agrupar.ItemIndex=8 then
   Qr_Ped.sql.Add(',PDNOMTIP AS NOMGRU')
else
   Qr_Ped.sql.Add(','+chr(39)+' '+chr(39)+' AS NOMGRU');
 Qr_Ped.sql.Add(', ROWNUM AS COLUNA');

if CB_CHECARTIT.Checked then
   begin
   lbl_numdoc.Width  :=33;
   lbl_cabSit.Visible:=true;
   lbl_Sit.Visible   :=true;
   lbl_rodsit.Visible:=true;

   Qr_Ped.Sql.add(',max(CRDTPAG)  AS CRDTPAG ');
   Qr_Ped.Sql.add(',sum(CRVALPAG) AS CRVALPAG ');
   Qr_Ped.Sql.add(',sum(CRVALOR)  AS CRVALOR ');
   Qr_Ped.Sql.add(',sum(CRJUROS)  AS CRJUROS ');
   Qr_Ped.Sql.add(',sum(CRDESC)   AS CRDESC ');
   end
else
   begin
   lbl_numdoc.Width  :=80;
   lbl_cabSit.Visible:=false;
   lbl_Sit.Visible   :=false;
   lbl_rodsit.Visible:=false;

   Qr_Ped.Sql.add(',P1DATAP           AS CRDTPAG ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRVALPAG ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRVALOR ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRJUROS ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRDESC ');
   end;

Qr_Ped.sql.Add(' FROM CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and '));
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   Qr_Ped.SQL.add(' P2CODEMP=P1CODEMP and ');
Qr_Ped.sql.Add('     P2LOTSEQ=P1LOTSEQ ');
Qr_Ped.sql.Add(' AND P2CHAVE=P1CHAVE ');
Qr_Ped.sql.Add(' AND P2ORDEM=P1ORDEM ');
if trim(la_instrucao)<>'' then
   Qr_Ped.SQL.Add(' and '+la_instrucao);
Qr_Ped.sql.Add(' and P1STATUS<'+mstatus_excluido+'');
Qr_Ped.sql.Add(' and P1CODEMP<100');
if Trim(MDT1.Text)<>'/  /' then
   begin
   qR_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   qr_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   end;
if RG_FILTRO.ItemIndex=0 then
   Qr_Ped.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))

else if RG_FILTRO.ItemIndex=1 then
   Qr_Ped.SQL.Add(' and P1EMIDOC<>0');

if CB_DESCFIN.Checked then
   Qr_Ped.SQL.Add(' and P2PDESCF=0');

if trim(mcinst4)<>'' then
   Qr_Ped.SQL.Add(' and '+mcinst4);

{
if rg_serie.ItemIndex<>2 then
   Qr_ped.sql.add(' and P1SERIE='+QuotedStr(IntToStr(rg_serie.ItemIndex+1)));
}

if CB_CHECARTIT.Checked then
   begin
   if RG_TITULOS.ItemIndex=0 then
      Qr_Ped.SQL.Add(' and (CRSTATUS is null or CRSTATUS<2 )')
   else if RG_TITULOS.ItemIndex=1 then
      Qr_Ped.SQL.Add(' and CRSTATUS=2 ')
   else
      Qr_Ped.SQL.Add(' and (CRSTATUS<9 OR CRSTATUS is null)');
   Qr_Ped.sql.Add('Group by P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO ');
   Qr_Ped.sql.Add(',P2QTD ');
   Qr_Ped.sql.Add(',P2PRECO ');
   Qr_Ped.sql.Add(',P2TOTDES ');
   Qr_Ped.sql.Add(',P1NUMNF');
   Qr_Ped.sql.Add(',P1CODVEN');
   Qr_Ped.sql.Add(',P1FORMACE');
   Qr_Ped.sql.Add(',P1DATAP');
   Qr_Ped.sql.Add(',P2DESC1 ');
   Qr_Ped.sql.Add(',P2DESC2');
   Qr_Ped.sql.Add(',P2DESC3');
   Qr_Ped.sql.Add(',P2PDESCF');
   Qr_Ped.sql.Add(',P2VALDES');

   Qr_Ped.sql.Add(',CRAZAO');
   Qr_Ped.sql.Add(',VNOME');
   Qr_Ped.sql.Add(',PDNOME');
   Qr_Ped.sql.Add(',PDUND');

   if cb_agrupar.ItemIndex=0 then
      Qr_Ped.sql.Add(',P1CHAVE')
   else if cb_agrupar.ItemIndex=1 then
      Qr_Ped.sql.Add(',CRAZAO ')
   else if cb_agrupar.ItemIndex=2 then
      Qr_Ped.sql.Add(',PDNOMCON ')
   else if cb_agrupar.ItemIndex=3 then
      Qr_Ped.sql.Add(',PDNOMFOR')
   else if cb_agrupar.ItemIndex=4 then
      Qr_Ped.sql.Add(',PDNOMGRU')
   else if cb_agrupar.ItemIndex=5 then
      Qr_Ped.sql.Add(',P1NUMNF')
   else if cb_agrupar.ItemIndex=6 then
      Qr_Ped.sql.Add(',PDNOMRAM')
   else if cb_agrupar.ItemIndex=7 then
      Qr_Ped.sql.Add(' ')
   else if cb_agrupar.ItemIndex=8 then
      Qr_Ped.sql.Add(',PDNOMTIP')
   else
      Qr_Ped.sql.Add(' ');
   Qr_Ped.sql.Add(', ROWNUM');

   end;


Qr_Ped.SQL.Add(' union ');

Qr_Ped.sql.Add('SELECT P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO ');
//if ce_empsel=1 then
   Qr_Ped.sql.Add(',P2QTD AS QTD ');
//else
//   Qr_Ped.sql.Add(',DECODE(P1FORMACE,1,0,P2QTD) AS QTD ');
Qr_Ped.sql.Add(',P2PRECO  AS PCOUNI');
Qr_Ped.sql.Add(',P2TOTDES AS TOTDES');
Qr_Ped.sql.Add(',P1NUMNF  AS NUMNF');
Qr_Ped.sql.Add(',P1CODVEN AS CODVEN');
Qr_Ped.sql.Add(',P1FORMACE AS FORMACE');
Qr_Ped.sql.Add(',P1DATAP  AS DATAPED');
Qr_Ped.sql.Add(',P2DESC1 ');
Qr_Ped.sql.Add(',P2DESC2');
Qr_Ped.sql.Add(',P2DESC3');
Qr_Ped.sql.Add(',P2PDESCF');
Qr_Ped.sql.Add(',P2VALDES');
Qr_Ped.sql.Add(',CRAZAO   AS RAZSOC');
Qr_Ped.sql.Add(',VNOME    AS NOMVEN');
Qr_Ped.sql.Add(',PDNOME AS NOMPRO');
Qr_Ped.sql.Add(',PDUND  AS UNDPRO');
if cb_agrupar.ItemIndex=0 then
   Qr_Ped.sql.Add(',TO_CHAR(P1CHAVE)   AS NOMGRU')
else if cb_agrupar.ItemIndex=1 then
   Qr_Ped.sql.Add(',CRAZAO   AS NOMGRU')
else if cb_agrupar.ItemIndex=2 then
   Qr_Ped.sql.Add(',PDNOMCON AS NOMGRU')
else if cb_agrupar.ItemIndex=3 then
   Qr_Ped.sql.Add(',PDNOMFOR AS NOMGRU')
else if cb_agrupar.ItemIndex=4 then
   Qr_Ped.sql.Add(',PDNOMGRU AS NOMGRU')
else if cb_agrupar.ItemIndex=5 then
   Qr_Ped.sql.Add(',TO_CHAR(P1NUMNF) AS NOMGRU')
else if cb_agrupar.ItemIndex=6 then
   Qr_Ped.sql.Add(',PDNOMRAM AS NOMGRU')
else if cb_agrupar.ItemIndex=7 then
   Qr_Ped.sql.Add(','+chr(39)+' '+chr(39)+' AS NOMGRU')
else if cb_agrupar.ItemIndex=8 then
   Qr_Ped.sql.Add(',PDNOMTIP AS NOMGRU')
else
   Qr_Ped.sql.Add(','+chr(39)+' '+chr(39)+' AS NOMGRU');
Qr_Ped.sql.Add(', ROWNUM AS COLUNA');

if CB_CHECARTIT.Checked then
   begin
   Qr_Ped.Sql.add(',max(CRDTPAG)  AS CRDTPAG ');
   Qr_Ped.Sql.add(',sum(CRVALPAG) AS CRVALPAG ');
   Qr_Ped.Sql.add(',sum(CRVALOR)  AS CRVALOR ');
   Qr_Ped.Sql.add(',sum(CRJUROS)  AS CRJUROS ');
   Qr_Ped.Sql.add(',sum(CRDESC)   AS CRDESC ');
   end
else
   begin
   Qr_Ped.Sql.add(',P1DATAP           AS CRDTPAG ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRVALPAG ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRVALOR ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRJUROS ');
   Qr_Ped.Sql.add(',P2TOTDES-P2TOTDES AS CRDESC ');
   end;

Qr_Ped.sql.Add(' FROM CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and '));
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   Qr_Ped.SQL.add(' P2CODEMP=P1CODEMP and ');
Qr_Ped.sql.Add('     P2LOTSEQ=P1LOTSEQ ');
Qr_Ped.sql.Add(' AND P2CHAVE=P1CHAVE ');
Qr_Ped.sql.Add(' AND P2ORDEM=P1ORDEM ');
if trim(la_instrucao)<>'' then
   Qr_Ped.SQL.Add(' and '+la_instrucao);
Qr_Ped.sql.Add(' and P1STATUS<'+mstatus_excluido+'');
Qr_Ped.sql.Add(' and P1CODEMP>99');
if Trim(MDT1.Text)<>'/  /' then
   begin
   qr_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   qr_Ped.sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   end;

if RG_FILTRO.ItemIndex=0 then
   Qr_Ped.SQL.Add(' and P1EMIDOC=0'+inttostr(RG_FILTRO.ItemIndex))
else if RG_FILTRO.ItemIndex=1 then
   Qr_Ped.SQL.Add(' and P1EMIDOC<>0');
if CB_DESCFIN.Checked then
   Qr_Ped.SQL.Add(' and P2PDESCF=0');

if trim(mcinst4)<>'' then
   Qr_Ped.SQL.Add(' and '+mcinst4);


if CB_CHECARTIT.Checked then
   begin
   if RG_TITULOS.ItemIndex=0 then
      Qr_Ped.SQL.Add(' and (CRSTATUS is null or CRSTATUS<2 )')
   else if RG_TITULOS.ItemIndex=1 then
      Qr_Ped.SQL.Add(' and CRSTATUS=2 ')
   else
      Qr_Ped.SQL.Add(' and (CRSTATUS<9 OR CRSTATUS is null)');
   Qr_Ped.sql.Add('Group by P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO ');
   Qr_Ped.sql.Add(',P2QTD ');
   Qr_Ped.sql.Add(',P2PRECO ');
   Qr_Ped.sql.Add(',P2TOTDES ');
   Qr_Ped.sql.Add(',P1NUMNF');
   Qr_Ped.sql.Add(',P1CODVEN');
   Qr_Ped.sql.Add(',P1FORMACE');
   Qr_Ped.sql.Add(',P1DATAP');
   Qr_Ped.sql.Add(',P2DESC1 ');
   Qr_Ped.sql.Add(',P2DESC2');
   Qr_Ped.sql.Add(',P2DESC3');
   Qr_Ped.sql.Add(',P2PDESCF');
   Qr_Ped.sql.Add(',P2VALDES');

   Qr_Ped.sql.Add(',CRAZAO');
   Qr_Ped.sql.Add(',VNOME');
   Qr_Ped.sql.Add(',PDNOME');
   Qr_Ped.sql.Add(',PDUND');
   if cb_agrupar.ItemIndex=0 then
      Qr_Ped.sql.Add(',P1CHAVE')
   else if cb_agrupar.ItemIndex=1 then
      Qr_Ped.sql.Add(',CRAZAO ')
   else if cb_agrupar.ItemIndex=2 then
      Qr_Ped.sql.Add(',PDNOMCON ')
   else if cb_agrupar.ItemIndex=3 then
      Qr_Ped.sql.Add(',PDNOMFOR')
   else if cb_agrupar.ItemIndex=4 then
      Qr_Ped.sql.Add(',PDNOMGRU')
   else if cb_agrupar.ItemIndex=5 then
      Qr_Ped.sql.Add(',P1NUMNF')
   else if cb_agrupar.ItemIndex=6 then
      Qr_Ped.sql.Add(',PDNOMRAM')
   else if cb_agrupar.ItemIndex=7 then
      Qr_Ped.sql.Add(' ')
   else if cb_agrupar.ItemIndex=8 then
      Qr_Ped.sql.Add(',PDNOMTIP')
   else
      Qr_Ped.sql.Add(' ');
   Qr_Ped.sql.Add(', ROWNUM');

   end;


Qr_Ped.sql.Add(' ORDER BY NOMGRU,P2LOTSEQ,P2CHAVE,P2ORDEM');

// ex_erroSql_Novo(Qr_Ped,1024,'SGE','CADMOV_PROD_REPETIDO');

try
   Qr_Ped.open;
except
   Qr_Ped.Sql.SaveTofile(mpastatemp + 'sql.txt');
   end;
mtotgru:=0;
mRazAnt:='';
mVenAnt:='';
mNFAnt :=0;
mCodEmpAnt:=0;

lbl_titulo.Caption:=CABTIT.Text;
lbl_periodo.Caption :=fperiodo(0,MDT1.Text,MDT2.Text);


filtros.Lines.Clear;
if lbx_codcli.Items.Count>0 then
   FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if lbx_codven.Items.Count>0 then
   FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codpro.Items.Count>0 then
   FImprimeTitulo('Produto',lbx_codpro,OMITIR_PRO);
if lbx_codfor.Items.Count>0 then
   FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
if lbx_codgru.Items.Count>0 then
   FImprimeTitulo('Grupo de Produtos',lbx_codgru,OMITIR_GRU);
if lbx_codtpro.Items.Count>0 then
   FImprimeTitulo('Tipos de Produtos',lbx_codtpro,OMITIR_TPRO);
if lbx_codcon.Items.Count>0 then
   FImprimeTitulo('Controle de Produtos',lbx_codcon,OMITIR_CON);
if lbx_coduf.Items.Count>0 then
   FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);

RLReport1.PreviewModal;
bbImprimir.Enabled:=true;
end;

procedure TFrm_DestPro.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotgru:=mtotgru+Qr_Pedvaltot.Value;


if (mrazant<>Qr_PedRAZSOC.Value) or
   (mVenAnt<>Qr_PedNOMVEN.Value) or
   (mNFAnt<>Qr_PedNUMNF.Value) or
   (mCodEmpAnt<>Qr_PedP2CODEMP.Value) then
   begin
   lbl_razsoc.Caption:=Qr_PedRAZSOC.Value;
   lbl_nomven.Caption:=Qr_PedNOMVEN.Value;
   lbl_numnf.Caption :=Qr_PedNUMNF.AsString+'/'+Qr_PedP2CHAVE.AsString;
   if (Qr_PedCRVALPAG.AsFloat+Qr_PedCRDESC.AsFloat)>=Qr_Pedvaltot.AsFloat then
      begin
      lbl_sit.Color     :=clWhite;
      lbl_sit.Caption   :='Pago';
      end
   else if Qr_PedCRVALPAG.AsFloat>0 then
      begin
      lbl_sit.Color     :=clBlue;
      lbl_sit.Caption   :='Pg.Parcial';
      end
   else
      begin
      lbl_sit.Color     :=clRed;
      lbl_sit.Caption   :='Em Aberto';
      end;
   mRazAnt:=Qr_PedRAZSOC.Value;
   mVenAnt:=Qr_PedNOMVEN.Value;
   mNFAnt :=Qr_PedNUMNF.Value;
   mCodEmpAnt:=Qr_PedP2CODEMP.Value;
   end
else
   begin
   lbl_razsoc.Caption:=' ';
   lbl_nomven.Caption:=' ';
   lbl_numnf.Caption :=' ';
   lbl_sit.Caption   :=' ';
   end;
if Qr_PedP2CODEMP.Value>99 then
   lbl_numnf.Color:=clRed
else
   lbl_numnf.Color:=clWhite;

end;

procedure TFrm_DestPro.Qr_PedCalcFields(DataSet: TDataSet);
begin
Qr_Pedvaltot.Value:=(Qr_PedQTD.Value*Qr_PedPCOUNI.Value)-Qr_PedTOTDES.Value;

mcinst3:='';
mcinst2:='';
if Qr_PedP2VALDES.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+'$'+Qr_PedP2VALDES.AsString;
   mcinst2:='+';
   end;

if Qr_PedP2DESC1.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+Qr_PedP2DESC1.AsString+'%';
   mcinst2:='+';
   end;
if Qr_PedP2DESC2.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+Qr_PedP2DESC2.AsString+'%';
   mcinst2:='+';
   end;

if Qr_PedP2DESC3.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+Qr_PedP2DESC3.AsString+'%';
   mcinst2:='+';
   end;

if Qr_PedP2PDESCF.AsFloat<>0 then
   begin
   mcinst3:=mcinst3+mcinst2+'F['+Qr_PedP2PDESCF.AsString+'%]';
   mcinst2:='+';
   end;
Qr_Peddetdes.Value:=mcinst3;
end;

procedure TFrm_DestPro.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_valtot_ger.Caption:=FormatFloat(mcasas, mtotgru);
mtotgru:=0;

end;

procedure TFrm_DestPro.SB_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_DESTPRO','');
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_DESTPRO',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_DESTPRO',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CABTIT'        ,'text'      ,'_DESTPRO',CABTIT.Text);
fGravaPadroes(codusr,'RG_FILTRO'     ,'itemindex' ,'_DESTPRO',IntTostr(RG_FILTRO.ItemIndex));
fGravaPadroes(codusr,'CB_CHECARTIT'  ,'checked'   ,'_DESTPRO',iif(CB_CHECARTIT.Checked,'true','false'));
fGravaPadroes(codusr,'RG_TITULOS'    ,'itemindex' ,'_DESTPRO',IntTostr(RG_TITULOS.ItemIndex));
fGravaPadroes(codusr,'CB_DESCFIN'    ,'checked'   ,'_DESTPRO',iif(CB_DESCFIN.Checked,'true','false'));

fmensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_DestPro.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   mboolean:=False
else
   mboolean:=true;
lbl_titulo.Borders.DrawBottom     :=mboolean;
RLGroup1.Borders.DrawLeft         :=mboolean;
RLGroup1.Borders.DrawRight        :=mboolean;
db_grupo.Borders.DrawTop          :=mboolean;
db_grupo.Borders.DrawBottom       :=mboolean;
lbl_razsoc.Borders.DrawRight      :=mboolean;
lbl_cabNomven.Borders.DrawRight   :=mboolean;
lbl_cabcodpro.Borders.DrawRight   :=mboolean;
lbl_cabNomPro.Borders.DrawRight   :=mboolean;
lbl_cabpu.Borders.DrawRight       :=mboolean;
lbl_qtd.Borders.DrawRight         :=mboolean;
lbl_cabvaldes.Borders.DrawRight   :=mboolean;
lbl_valtot.Borders.DrawRight      :=mboolean;
lbl_dataped.Borders.DrawRight     :=mboolean;
lbl_razsoc.Borders.DrawRight      :=mboolean;
lbl_Nomven.Borders.DrawRight      :=mboolean;
db_codpro.Borders.DrawRight       :=mboolean;
db_deb.Borders.DrawRight          :=mboolean;
db_cred.Borders.DrawRight         :=mboolean;
db_qtd.Borders.DrawRight          :=mboolean;
dbl_valdes.Borders.DrawRight      :=mboolean;
db_valtot.Borders.DrawRight       :=mboolean;
db_dataped.Borders.DrawRight      :=mboolean;
lblg_total.Borders.DrawRight      :=mboolean;
lblg_nomven.Borders.DrawRight     :=mboolean;
lblg_codpro.Borders.DrawRight     :=mboolean;
lblg_nomgru.Borders.DrawRight     :=mboolean;
lblg_pu.Borders.DrawRight         :=mboolean;
lblg_qtd.Borders.DrawRight        :=mboolean;
lblg_totdes.Borders.DrawRight     :=mboolean;
lbl_valtot_ger.Borders.DrawRight  :=mboolean;
lblg_dataped.Borders.DrawRight    :=mboolean;
end;
procedure TFrm_DestPro.CB_CHECARTITClick(Sender: TObject);
begin
IF CB_CHECARTIT.Checked then
   RG_TITULOS.Visible:=true
else
   RG_TITULOS.Visible:=false;

end;

procedure TFrm_DestPro.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   begin
   exit;
   end;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   begin
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   CODCON.SetFocus;
   end
else
   begin
   fMensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_DestPro.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_medtpro',key);
   if valfloat(CODCON.Text)<>0 then
      lbx_codcon.Items.Add(FormatFloat('0000000',DM1.Tb_TconCCODCON.AsFloat)
                                    +' - '+DM1.Tb_TconCNOME.AsString);
   CODCON.text := '';
   key:=#0;
   end;


end;

procedure TFrm_DestPro.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_DestPro.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)='' then
   CODUF.Text:=''
else
   begin
   if not flcaduf(0,0,0,CODUF.Text) then
      begin
      MessageDlg('Estado nao Cadastrado!',mtWarning,[mbOk],0);
      CODUF.SetFocus;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   CODUF.SetFocus;

   end;

end;

procedure TFrm_DestPro.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   end;


end;

procedure TFrm_DestPro.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

function tFrm_DestPro.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      filtros.Lines.Add(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x]);
      end;
   end;
result:=true;

end;

procedure TFrm_DestPro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_DestPro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin



If (Key=120) and (Shift=[ssCtrl]) then // ctrl-f9
   begin
   rg_serie.Visible:=rg_serie.Visible=false;
   end;

if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.
