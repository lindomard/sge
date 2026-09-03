unit S_ProdTit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, CheckLst, Mask,S_Ven,S_GPro,S_TipPro,S_For,
  func,lerarq, Buttons, DB, DBTables, Grids, DBGrids, RLRichFilter, S_SelEmp,
  RLXLSFilter, RLPDFFilter, RLFilters, RLHTMLFilter, RLDraftFilter, RLReport
  ,s_lerarq_geral;

type
  TFrm_ProdTit = class(TForm)
    PageControl1: TPageControl;
    tsFiltros01: TTabSheet;
    tsFiltros02: TTabSheet;
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
    lbl_CabDataDoc: TRLMemo;
    lbl_cabNumNF: TRLMemo;
    lbl_cabcodpro: TRLMemo;
    lbl_cabNomPro: TRLMemo;
    lbl_cabvaldes: TRLMemo;
    lbl_cabvalrec: TRLMemo;
    RLBand2: TRLBand;
    db_grupo: TRLDBText;
    Label9: TLabel;
    CABTIT: TEdit;
    RG_FILTRO: TRadioGroup;
    SB_SalvarPadrao: TSpeedButton;
    lbl_cabqtd: TRLMemo;
    lbl_cabdatarec: TRLMemo;
    Qr_PedVALDUP: TFloatField;
    Qr_PedVALREC: TFloatField;
    Qr_PedDATADOC: TDateTimeField;
    Qr_PedDTPAG: TDateTimeField;
    Qr_PedDTAB: TDateTimeField;
    lbl_cabpu: TRLMemo;
    Qr_PedDESCRAT: TFloatField;
    Qr_PedACRERAT: TFloatField;
    Qr_PedTOTLIQ: TFloatField;
    RLGroup2: TRLGroup;
    RLBand3: TRLBand;
    db_nompro: TRLDBText;
    lbl_datadoc: TRLLabel;
    lbl_NumNF: TRLLabel;
    db_qtd: TRLDBText;
    lbl_valrec: TRLLabel;
    lbl_datarec: TRLLabel;
    lbl_cabtotliq: TRLMemo;
    Qr_PedTOTAL_LIQ: TFloatField;
    Qr_PedTOTAL_DESC: TFloatField;
    RLBand5: TRLBand;
    lblg_total: TRLLabel;
    lblg_numnf: TRLLabel;
    lblg_codpro: TRLLabel;
    lblg_nompro: TRLLabel;
    lblg_totdes: TRLLabel;
    lblg_valrec: TRLLabel;
    lblg_qtd: TRLLabel;
    lblg_datarec: TRLLabel;
    lblg_pu: TRLLabel;
    lblg_totliq: TRLLabel;
    RLBand6: TRLBand;
    RLLabel2: TRLLabel;
    lblt_numnf: TRLLabel;
    lblt_codpro: TRLLabel;
    lblt_nompro: TRLLabel;
    lblt_totdes: TRLLabel;
    lblt_valrec: TRLLabel;
    lblt_qtd: TRLLabel;
    lblt_datarec: TRLLabel;
    lblt_pu: TRLLabel;
    lblt_totliq: TRLLabel;
    db_codpro: TRLDBText;
    lbl_pu: TRLDBText;
    lbl_valdes: TRLDBText;
    lbl_totliq: TRLDBText;
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
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ProdTit: TFrm_ProdTit;
  mtottit: Real=0;
  mtotrec: Real=0;

  mtotgdesc: Real=0;
  mtotgliq: Real=0;
  mPercRec: Real=0;
  mTotgQtd: Real=0;

  mtottdesc: Real=0;
  mtottliq: Real=0;
  mTottRec: Real=0;
  mTottQtd: Real=0;

  mDataRec: String;

  mRazAnt:String='';
  mVenAnt:String='';
  mNFAnt :Real=0;
  mCodEmpAnt:Real=0;


implementation

uses S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_ProdTit.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fMensagem('Cliente não cadastrado!',0,['0'],0);
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

procedure TFrm_ProdTit.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_DestPro',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ProdTit.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_ProdTit.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_ProdTit.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_ProdTit.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_ProdTit.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_ProdTit.lbx_codtproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtpro.ItemIndex>=0 then
      lbx_codtpro.Items.Delete(lbx_codtpro.ItemIndex);

end;

procedure TFrm_ProdTit.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Trim(CODVEN.Text)) then
      begin
      fMensagem('Vendedor não cadastrado!',0,['0'],0);
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

procedure TFrm_ProdTit.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Trim(CODPRO.Text)) then
      begin
      fMensagem('Produto não cadastrado!',0,['0'],0);
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

procedure TFrm_ProdTit.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFOR.Text)) then
      begin
      fMensagem('Fornecedor não cadastrado!',0,['0'],0);
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

procedure TFrm_ProdTit.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fMensagem('Grupo não cadastrado!',0,['0'],0);
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

procedure TFrm_ProdTit.CODTPROExit(Sender: TObject);
begin
CODTPRO.Text:=fdeixanum2(CODTPRO.Text);
if Trim(CODTPRO.Text)<>'' then
   begin
   if not flqr1('TNOME','T','CADTP','N','TCODTIP',CODTPRO.Text) then
      begin
      fMensagem('Tipo não cadastrado!',0,['0'],0);
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

procedure TFrm_ProdTit.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_ProdTit',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_ProdTit.CODTPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTPRO.Text:=fChamaTipPro(0,'frm_ProdTit',Key);
   if trim(CODTPRO.Text)<>'' then
      CODTPROExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_ProdTit.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_ProdTit',Key);
   if trim(CODGRU.Text)<>'' then
      CODGRUExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_ProdTit.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_DestPro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_DestPro',key);
      key:=#0;
      end;
   end;

end;

procedure TFrm_ProdTit.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=DM1.Tb_VenVCODVEN.AsString;
    if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_ProdTit.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_ProdTit.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_ProdTit.RG_TIPOPEDClick(Sender: TObject);
var
x: Integer;
begin
    if RG_TIPOPED.ItemIndex=RG_TIPOPED.count -1 then
    begin
        for x := 0 to RG_TIPOPED.Count -2 do
        begin
            if RG_TIPOPED.Checked[RG_TIPOPED.count-1] then
               RG_TIPOPED.Checked[x] := true;
            if not RG_TIPOPED.Checked[RG_TIPOPED.count-1] then
            BEGIN
               RG_TIPOPED.Checked[x] := false;
               RG_TIPOPED.Checked[1] := TRUE;
            END;
        end;
    end ELSE
    BEGIN
        RG_TIPOPED.Checked[RG_TIPOPED.count-1] := false;
    END;


end;

procedure TFrm_ProdTit.RG_TIPOPEDExit(Sender: TObject);
var
x:integer;
e:Boolean;
begin
        e:=false;
        for x := 0 to RG_TIPOPED.Count -2 do
            if RG_TIPOPED.Checked[x] then e:=true;

        if not e then RG_TIPOPED.Checked[1] := TRUE;

end;

procedure TFrm_ProdTit.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1]      := TRUE;
Qr_PedQTD.DisplayFormat    :=mcasqtd;
Qr_PedPCOUNI.DisplayFormat :=mcasaspu;
Qr_PedTOTDES.DisplayFormat :=mcasas;
Qr_PedTOTAL_LIQ.DisplayFormat :=mcasas;
Qr_PedTOTAL_DESC.DisplayFormat :=mcasas;

Qr_Pedvaltot.DisplayFormat :=mcasas;
Qr_PedDATAPED.DisplayFormat:=fdt2;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRODTIT','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRODTIT','CB_SEMBORDA']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_SEMBORDA.Checked:=true
   else
      CB_SEMBORDA.Checked:=false;
   end
else
   CB_SEMBORDA.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRODTIT','RGFILTRO']),[]) then
   RG_FILTRO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PRODTIT','CABTIT']),[]) then
   CABTIT.Text:=DM4.Tb_FilPadFPVALOR.Value;
   
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

procedure TFrm_ProdTit.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ProdTit.bbImprimirClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

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

mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' P1TIPO '+mcinst2;
   mcinst:=' and ';
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(0,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADVEN' ,'VCODEMP','P1CODEMP' ,'VCODVEN' ,'P1CODVEN');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');



Qr_Ped.Close;
Qr_Ped.SQL.Clear;
Qr_Ped.sql.Add('SELECT P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO ');
Qr_Ped.sql.Add(',P2QTD   AS QTD ');
Qr_Ped.sql.Add(',P2PRECO AS PCOUNI');
Qr_Ped.sql.Add(',P2TOTDES AS TOTDES ');
Qr_Ped.sql.Add(',P2DESCRAT AS DESCRAT');
Qr_Ped.sql.Add(',P2ACRERAT AS ACRERAT');
Qr_Ped.sql.Add(',P2TOTLIQ  AS TOTLIQ');
Qr_Ped.sql.Add(',(P2TOTLIQ+P2ACRERAT-P2DESCRAT) AS TOTAL_LIQ ');
Qr_Ped.sql.Add(',(P2DESCRAT-P2ACRERAT) AS TOTAL_DESC ');
Qr_Ped.sql.Add(',P1NUMNF  AS NUMNF');
Qr_Ped.sql.Add(',P1CODVEN AS CODVEN');
Qr_Ped.sql.Add(',P1FORMACE AS FORMACE');
Qr_Ped.sql.Add(',P1DATAP  AS DATAPED');
Qr_Ped.sql.Add(',P1DATDOC  AS DATADOC');
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
Qr_Ped.sql.Add(',sum(CRVALOR) AS VALDUP');
Qr_Ped.sql.Add(',sum(CRVALPAG) AS VALREC');
Qr_Ped.sql.Add(',max(CRDTPAG) AS DTPAG');
Qr_Ped.sql.Add(',min(CRDTPAG) AS DTAB');


Qr_Ped.sql.Add(' FROM CADDAR,CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and '));
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   Qr_Ped.SQL.add(' P1CODEMP=CRCODEMP and ');
Qr_Ped.SQL.add(' P1LOTSEQ=CRLOTSEQ_CP ');
Qr_Ped.SQL.add(' and P1CHAVE=CRNPED ');
if DM1.Tb_PargerPAGRUDUP.Value<>1 then
   Qr_Ped.SQL.add(' and P1ORDEM=CRORDEM ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   Qr_Ped.SQL.add(' and P2CODEMP=P1CODEMP ');
Qr_Ped.sql.Add(' and P2LOTSEQ=P1LOTSEQ ');
Qr_Ped.sql.Add(' AND P2CHAVE=P1CHAVE ');
Qr_Ped.sql.Add(' AND P2ORDEM=P1ORDEM ');
if trim(la_instrucao)<>'' then
   Qr_Ped.SQL.Add(' and '+la_instrucao);
Qr_Ped.sql.Add(' and P1STATUS<'+mstatus_excluido+'');
Qr_Ped.sql.Add(' and CRCODEMP<100');
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Ped.Sql.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Ped.Sql.Add(' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   end;
if trim(mcinst4)<>'' then
   Qr_Ped.SQL.Add(' and '+mcinst4);
if RG_FILTRO.ItemIndex=0 then
   Qr_Ped.sql.add(' and CRVALPAG=0 ')
else if RG_FILTRO.ItemIndex=1 then
   Qr_Ped.sql.add(' and CRVALPAG<>0 ');

Qr_Ped.SQL.Add(' GROUP BY ');
Qr_Ped.SQL.Add(' P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO');
Qr_Ped.SQL.Add(',P2QTD');
Qr_Ped.SQL.Add(',P2PRECO');
Qr_Ped.SQL.Add(',P2TOTDES');
Qr_Ped.sql.Add(',P2DESCRAT');
Qr_Ped.sql.Add(',P2ACRERAT');
Qr_Ped.sql.Add(',P2TOTLIQ');
Qr_Ped.SQL.Add(',P1NUMNF');
Qr_Ped.SQL.Add(',P1CODVEN');
Qr_Ped.SQL.Add(',P1FORMACE');
Qr_Ped.SQL.Add(',P1DATAP');
Qr_Ped.SQL.Add(',P1DATDOC');
Qr_Ped.SQL.Add(',CRAZAO');
Qr_Ped.SQL.Add(',VNOME');
Qr_Ped.SQL.Add(',PDNOME');
Qr_Ped.SQL.Add(',PDUND');

Qr_Ped.SQL.Add(' union ');



Qr_Ped.sql.Add('SELECT P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO ');
//if ce_empsel=1 then
   Qr_Ped.sql.Add(',P2QTD AS QTD ');
//else
//   Qr_Ped.sql.Add(',DECODE(P1FORMACE,1,0,P2QTD) AS QTD ');
Qr_Ped.sql.Add(',P2PRECO  AS PCOUNI');
Qr_Ped.sql.Add(',P2TOTDES AS TOTDES');
Qr_Ped.sql.Add(',P2DESCRAT AS DESCRAT');
Qr_Ped.sql.Add(',P2ACRERAT AS ACRERAT');
Qr_Ped.sql.Add(',P2TOTLIQ  AS TOTLIQ');
Qr_Ped.sql.Add(',(P2TOTLIQ+P2ACRERAT-P2DESCRAT) AS TOTAL_LIQ ');
Qr_Ped.sql.Add(',(P2DESCRAT-P2ACRERAT) AS TOTAL_DESC ');
Qr_Ped.sql.Add(',P1NUMNF  AS NUMNF');
Qr_Ped.sql.Add(',P1CODVEN AS CODVEN');
Qr_Ped.sql.Add(',P1FORMACE AS FORMACE');
Qr_Ped.sql.Add(',P1DATAP  AS DATAPED');
Qr_Ped.sql.Add(',P1DATDOC AS DATDOC');
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
Qr_Ped.sql.Add(',sum(CRVALOR) AS VALDUP');
Qr_Ped.sql.Add(',sum(CRVALPAG) AS VALREC');
Qr_Ped.sql.Add(',max(CRDTPAG) AS DTPAG');
Qr_Ped.sql.Add(',min(CRDTPAG) AS DTAB');


Qr_Ped.sql.Add(' FROM CADDAR,CADP01,CADP02 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and '));
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   Qr_Ped.SQL.add(' P1CODEMP=CRCODEMP and ');
Qr_Ped.SQL.add(' P1LOTSEQ=CRLOTSEQ_CP ');
Qr_Ped.SQL.add(' and P1CHAVE=CRNPED ');
if DM1.Tb_PargerPAGRUDUP.Value<>1 then
   Qr_Ped.SQL.add(' and P1ORDEM=CRORDEM ');

if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   Qr_Ped.SQL.add(' and P2CODEMP=P1CODEMP  ');
Qr_Ped.sql.Add('  and P2LOTSEQ=P1LOTSEQ ');
Qr_Ped.sql.Add(' AND P2CHAVE=P1CHAVE ');
Qr_Ped.sql.Add(' AND P2ORDEM=P1ORDEM ');
if trim(la_instrucao)<>'' then
   Qr_Ped.SQL.Add(' and '+la_instrucao);
Qr_Ped.sql.Add(' and P1STATUS<'+mstatus_excluido+'');
Qr_Ped.sql.Add(' and P1CODEMP>99');
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Ped.Sql.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Ped.Sql.Add(' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   end;

if trim(mcinst4)<>'' then
   Qr_Ped.SQL.Add(' and '+mcinst4);
if RG_FILTRO.ItemIndex=0 then
   Qr_Ped.sql.add(' and CRVALPAG=0 ')
else if RG_FILTRO.ItemIndex=1 then
   Qr_Ped.sql.add(' and CRVALPAG<>0 ');



Qr_Ped.SQL.Add(' GROUP BY ');
Qr_Ped.SQL.Add(' P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2CODPRO');
Qr_Ped.SQL.Add(',P2QTD');
Qr_Ped.SQL.Add(',P2PRECO');
Qr_Ped.SQL.Add(',P2TOTDES');
Qr_Ped.sql.Add(',P2DESCRAT');
Qr_Ped.sql.Add(',P2ACRERAT');
Qr_Ped.sql.Add(',P2TOTLIQ');
Qr_Ped.SQL.Add(',P1NUMNF');
Qr_Ped.SQL.Add(',P1CODVEN');
Qr_Ped.SQL.Add(',P1FORMACE');
Qr_Ped.SQL.Add(',P1DATAP');
Qr_Ped.SQL.Add(',P1DATDOC');
Qr_Ped.SQL.Add(',CRAZAO');
Qr_Ped.SQL.Add(',VNOME');
Qr_Ped.SQL.Add(',PDNOME');
Qr_Ped.SQL.Add(',PDUND');



//Qr_Ped.sql.Add(' ORDER BY NOMGRU,P2LOTSEQ,P2CHAVE,P2ORDEM');
Qr_Ped.sql.Add(' ORDER BY DATADOC,P2CHAVE');

try
   Qr_Ped.open;
except
   Qr_Ped.Sql.SaveTofile('c:\sql.txt');
   end;
mtottit:=0;
mtotrec:=0;
mRazAnt:='';
mVenAnt:='';
mNFAnt :=0;
mCodEmpAnt:=0;
lbl_titulo.Caption:=CABTIT.Text;
lbl_periodo.Caption :=fperiodo(0,MDT1.Text,MDT2.Text);
RLReport1.PreviewModal;

end;

procedure TFrm_ProdTit.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


mtotgdesc:=mtotgdesc+Qr_PedTOTAL_DESC.Value;
mtotgliq :=mtotgliq+Qr_PedTOTAL_LIQ.Value;
mTotgQtd :=mTotgQtd+Qr_PedQTD.Value;

if Qr_PedDTPAG.Value<=pdatanula then
   mDataRec:='A Receber'
else
   mDataRec:=FormatDateTime(fdt2, Qr_PedDTPAG.Value);

if (mrazant<>Qr_PedRAZSOC.Value) or
   (mVenAnt<>Qr_PedNOMVEN.Value) or
   (mNFAnt<>Qr_PedNUMNF.Value) or
   (mCodEmpAnt<>Qr_PedP2CODEMP.Value) then
   begin
   lbl_DataDoc.Caption:=FormatDateTime(fdt2, Qr_PedDATADOC.Value);
   lbl_numnf.Caption :=Qr_PedNUMNF.AsString;
   mRazAnt:=Qr_PedRAZSOC.Value;
   mVenAnt:=Qr_PedNOMVEN.Value;
   mNFAnt :=Qr_PedNUMNF.Value;
   mCodEmpAnt:=Qr_PedP2CODEMP.Value;
   lbl_DataRec.Caption:=mdatarec;
   if Arredonda( Qr_PedVALDUP.Value-Qr_PedVALREC.Value , DM1.Tb_PargerPCASAS.AsInteger)=0 then
      mPercRec:=100
   else
      begin
      try
         mPercRec:=Arredonda( ( (Qr_PedVALREC.Value*100)/Qr_PedVALDUP.Value) , DM1.Tb_PargerPCASAS.AsInteger);
      except
         mPercRec:=0;
         end;
      end;
   end
else
   begin
   lbl_DataDoc.Caption:=' ';
   lbl_valdes.Caption :=' ';
   lbl_totliq.Caption :=' ';
   lbl_valrec.Caption :=' ';
   lbl_numnf.Caption  :=' ';
   lbl_DataRec.Caption:=' '
   end;

if Qr_PedP2CODEMP.Value>99 then
   lbl_numnf.Color:=$00FFD7D7
else
   lbl_numnf.Color:=clWhite;
   if Arredonda( Qr_PedVALDUP.Value-Qr_PedVALREC.Value , DM1.Tb_PargerPCASAS.AsInteger)=0 then
      mPercRec:=100
   else
      begin
      try
         mPercRec:=Arredonda( ( (Qr_PedVALREC.Value*100)/Qr_PedVALDUP.Value) , DM1.Tb_PargerPCASAS.AsInteger);
      except
         mPercRec:=0;
         end;
      end;


end;

procedure TFrm_ProdTit.Qr_PedCalcFields(DataSet: TDataSet);
begin
Qr_Pedvaltot.Value:=(Qr_PedQTD.Value*Qr_PedPCOUNI.Value)-Qr_PedTOTDES.Value;
end;

procedure TFrm_ProdTit.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblg_totdes.Caption:=FormatFloat(mcasas, mtotgdesc);
lblg_totliq.Caption:=FormatFloat(mcasas, mtotgliq);
lblg_valrec.Caption:=FormatFloat(mcasas, mtotgliq*mPercRec/100);
lblg_qtd.Caption   :=FormatFloat(mcasqtd, mTotgQtd);

mtottdesc:=mtottdesc+mtotgdesc;
mtottliq :=mtottliq+mtotgliq;
mTottQtd :=mTottQtd+mTotgQtd;

mTottRec :=mTottRec+Arredonda(mtotgliq*mPercRec/100,DM1.Tb_PargerPCASAS.AsInteger);

mtotgdesc:=0;
mtotgliq :=0;
mPercRec :=0;
mTotgQtd :=0;

end;

procedure TFrm_ProdTit.SB_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_DESTPRO','');
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_PRODTIT',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_PRODTIT',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CABTIT'        ,'text'      ,'_PRODTIT',CABTIT.Text);
fGravaPadroes(codusr,'RG_FILTRO'     ,'itemindex' ,'_PRODTIT',IntTostr(RG_FILTRO.ItemIndex));
fMensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_ProdTit.CB_SEMBORDAClick(Sender: TObject);
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
lbl_CabDataDoc.Borders.DrawRight  :=mboolean;
lbl_DataDoc.Borders.DrawRight     :=mboolean;
lblg_total.Borders.DrawRight      :=mboolean;
lbl_cabNumNF.Borders.DrawRight    :=mboolean;
lbl_NumNF.Borders.DrawRight       :=mboolean;
lblg_numnf.Borders.DrawRight      :=mboolean;
lbl_cabqtd.Borders.DrawRight      :=mboolean;
db_qtd.Borders.DrawRight          :=mboolean;
lblg_qtd.Borders.DrawRight        :=mboolean;

lbl_cabcodpro.Borders.DrawRight   :=mboolean;
db_codpro.Borders.DrawRight       :=mboolean;
lblg_codpro.Borders.DrawRight     :=mboolean;
lblt_codpro.Borders.DrawRight     :=mboolean;

lbl_cabNomPro.Borders.DrawRight   :=mboolean;
db_nompro.Borders.DrawRight       :=mboolean;
lblg_nompro.Borders.DrawRight     :=mboolean;
lblt_nompro.Borders.DrawRight     :=mboolean;

lbl_cabvaldes.Borders.DrawRight   :=mboolean;
lbl_valdes.Borders.DrawRight      :=mboolean;
lblg_totdes.Borders.DrawRight     :=mboolean;
lblt_totdes.Borders.DrawRight     :=mboolean;

lbl_cabtotliq.Borders.DrawRight   :=mboolean;
lbl_totliq.Borders.DrawRight      :=mboolean;
lblg_totliq.Borders.DrawRight     :=mboolean;
lblt_totliq.Borders.DrawRight     :=mboolean;

lbl_cabvalrec.Borders.DrawRight   :=mboolean;
lbl_valrec.Borders.DrawRight      :=mboolean;
lblg_valrec.Borders.DrawRight     :=mboolean;
lblt_valrec.Borders.DrawRight     :=mboolean;

lbl_cabdatarec.Borders.DrawRight  :=mboolean;
lbl_datarec.Borders.DrawRight     :=mboolean;
lblg_datarec.Borders.DrawRight    :=mboolean;
lblt_datarec.Borders.DrawRight    :=mboolean;


end;
procedure TFrm_ProdTit.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  mtotgdesc:=0;
  mtotgliq :=0;
  mTotgQtd :=0;
  mPercRec :=0;
  mtottdesc:=0;
  mtottliq :=0;
  mTottRec :=0;
  mTottQtd :=0;

end;

procedure TFrm_ProdTit.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblt_totdes.Caption:=FormatFloat(mcasas, mtottdesc);
lblt_totliq.Caption:=FormatFloat(mcasas, mtottliq);
lblt_valrec.Caption:=FormatFloat(mcasas, mTottRec);
lblt_qtd.Caption   :=FormatFloat(mcasqtd, mTottQtd);
mtottdesc:=0;
mtottliq :=0;
mTottRec :=0;
mTottQtd :=0;
end;

procedure TFrm_ProdTit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ProdTit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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
