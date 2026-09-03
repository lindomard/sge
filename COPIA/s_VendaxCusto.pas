unit s_VendaxCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, ToolEdit, CheckLst, Buttons, DB,
  DBTables,s_selemp, RLReport, RLFilters, RLPDFFilter, RxMemDS, jpeg;

type
  TFrm_VendaxCusto = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    CB_TIPOPESQ: TComboBox;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    Label3: TLabel;
    CB_TPPESQ_CAIXA: TComboBox;
    StaticText4: TStaticText;
    edt_codcli: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    StaticText5: TStaticText;
    edt_codven: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    Label12: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Label11: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    TabSheet1: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    StaticText1: TStaticText;
    edt_codbco_cx: TEdit;
    lbx_codbco_cx: TListBox;
    OMITIR_BCO_CX: TCheckBox;
    StaticText2: TStaticText;
    edt_coddep_cx: TEdit;
    lbx_coddep_cx: TListBox;
    OMITIR_DEP_CX: TCheckBox;
    StaticText3: TStaticText;
    edt_codccu_cx: TEdit;
    lbx_codccu_cx: TListBox;
    CB_CODCCU_CX: TCheckBox;
    StaticText6: TStaticText;
    edt_codfor: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    sbn_coddep: TSpeedButton;
    SpeedButton1: TSpeedButton;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLImage_logo: TRLImage;
    lblcab_empresa: TRLLabel;
    lblcab_obsrel: TRLLabel;
    lblcab_periodo: TRLLabel;
    lblcab_dathor_emi: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblcab_fantasia: TRLLabel;
    RLGroup1: TRLGroup;
    rlcab_cabdet: TRLBand;
    RLBand2: TRLBand;
    mem_cadbal: TRxMemoryData;
    src_cadbal: TDataSource;
    mem_cadbalped_chave: TIntegerField;
    mem_cadbalped_data: TDateField;
    mem_cadbalped_nomcli: TStringField;
    mem_cadbalped_cidade: TStringField;
    mem_cadbalped_valor_liq: TFloatField;
    mem_cadbalped_valor_cus: TFloatField;
    mem_cadbalped_perc_luc: TFloatField;
    mem_cadbalcx_data: TDateField;
    mem_cadbalcx_sacado: TStringField;
    mem_cadbalcx_coddep: TStringField;
    mem_cadbalcx_nomdep: TStringField;
    mem_cadbalcx_codccu: TStringField;
    mem_cadbalcx_nomccu: TStringField;
    mem_cadbalcx_codbco: TIntegerField;
    mem_cadbalcx_nombco: TStringField;
    mem_cadbalcx_descmv: TStringField;
    mem_cadbalcx_natdc: TStringField;
    mem_cadbalcx_valdeb: TFloatField;
    mem_cadbalcx_valcred: TFloatField;
    mem_cadbalcx_saldo: TFloatField;
    rltext_ped_chave: TRLDBText;
    rldet_ped_nomcli: TRLDBText;
    rldet_ped_cidade: TRLDBText;
    rldet_ped_data: TRLDBText;
    rldet_ped_valor_liq: TRLDBText;
    rldet_ped_valor_cus: TRLDBText;
    rldet_ped_perc_luc: TRLDBText;
    rlcab_ped_chave: TRLLabel;
    rlcab_ped_nomcli: TRLLabel;
    rlcab_ped_cidade: TRLLabel;
    rlcab_ped_data: TRLLabel;
    rlcab_ped_valor_liq: TRLLabel;
    rlcab_ped_valor_cus: TRLLabel;
    rlcab_ped_perc_luc: TRLLabel;
    rlcab_cx_data: TRLLabel;
    rldet_cx_data: TRLDBText;
    rldet_cx_descmv: TRLDBText;
    rlcab_cx_descmv: TRLLabel;
    mem_cadbalcx_numdoc: TStringField;
    rlcab_cx_numdoc: TRLLabel;
    rldet_cx_numdoc: TRLDBText;
    rlcab_cx_valdeb: TRLLabel;
    rldet_cx_valdeb: TRLDBText;
    rlcab_cx_valcred: TRLLabel;
    rldet_cx_valcred: TRLDBText;
    rlcab_cx_saldo: TRLLabel;
    rldet_cx_saldo: TRLDBText;
    RLcab_ini: TRLBand;
    RLLabel1: TRLLabel;
    rlcab_cx_perc_fat: TRLLabel;
    rldet_cx_perc_fat: TRLDBText;
    mem_cadbalcx_perc_fat: TFloatField;
    RLBand_rod: TRLBand;
    rlrod_ped_chave: TRLLabel;
    rlrod_ped_nomcli: TRLLabel;
    rlrod_ped_cidade: TRLLabel;
    rlrod_ped_data: TRLLabel;
    rlrod_ped_valor_liq: TRLLabel;
    rlrod_ped_valor_cus: TRLLabel;
    rlrod_ped_perc_luc: TRLLabel;
    rlrod_cx_data: TRLLabel;
    rlrod_cx_descmv: TRLLabel;
    rlrod_cx_numdoc: TRLLabel;
    rlrod_cx_valdeb: TRLLabel;
    rlrod_cx_valcred: TRLLabel;
    rlrod_cx_saldo: TRLLabel;
    rlrod_cx_perc_fat: TRLLabel;
    rlsumario: TRLBand;
    rlcab_cabcx: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    gb_CLIENTES: TGroupBox;
    CB_CLIENTES_PED: TCheckBox;
    CB_CLIENTES_CONTAS: TCheckBox;
    GroupBox1: TGroupBox;
    CB_VEND_PED: TCheckBox;
    CB_VEND_CONTAS: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codbco_cxExit(Sender: TObject);
    procedure edt_codbco_cxKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbco_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbn_coddepClick(Sender: TObject);
    procedure edt_coddep_cxExit(Sender: TObject);
    procedure lbx_coddep_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codccu_cxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edt_codccu_cxExit(Sender: TObject);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand_rodBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    mTotgerVda_Liq: Real;
    mTotgerCusto_Liq: Real;
    mTotDeb_Cx: Real;
    mTotCred_Cx: Real;
    mPerc_Temp: Real;

  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_VendaxCusto: TFrm_VendaxCusto;

implementation

uses S_DM1, Func, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_VendaxCusto.FormCreate(Sender: TObject);
var
x: Integer;

mjpeg: TJPEGImage;

begin

mjpeg:=TJPEGImage.Create;

if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLImage_logo.Picture.Bitmap.Assign(mjpeg);
   RLImage_logo.visible := True;
   end
else
   RLImage_logo.visible := False;
freeandnil(mjpeg);

PageControl1.ActivePageIndex:=0;
RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[1] := TRUE;
//RG_TIPOPED.Checked[9] := TRUE;


Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
edt_datini.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',date)));
edt_datfin.Text   :=FormatDatetime(fdt2, date);

tsRelatorio.TabVisible:=false;
mem_cadbalped_valor_liq.DisplayFormat:=mcasas;
mem_cadbalped_valor_cus.DisplayFormat:=mcasas;
mem_cadbalped_perc_luc.DisplayFormat :=mcasas;
mem_cadbalcx_valdeb.DisplayFormat    :=mcasas;
mem_cadbalcx_valcred.DisplayFormat   :=mcasas;
mem_cadbalcx_saldo.DisplayFormat     :=mcasas;
mem_cadbalcx_perc_fat.DisplayFormat  :=mcasas;
RLReport1.Borders.DrawLeft  :=true;
RLReport1.Borders.DrawTop   :=true;
RLReport1.Borders.DrawRight :=true;
RLReport1.Borders.DrawBottom:=true;

RLBand_cab.Borders.DrawBottom:=true;

RLBand_cab.Borders.DrawBottom:=true;
RLcab_ini.Borders.DrawBottom:=true;

rlcab_cabdet.Borders.DrawBottom:=true;
rlcab_cabcx.Borders.DrawLeft:=true;

rlcab_ped_nomcli.Borders.DrawLeft     :=true;
rlcab_ped_cidade.Borders.DrawLeft     :=true;
rlcab_ped_data.Borders.DrawLeft       :=true;
rlcab_ped_valor_liq.Borders.DrawLeft  :=true;
rlcab_ped_valor_cus.Borders.DrawLeft  :=true;
rlcab_ped_perc_luc.Borders.DrawLeft   :=true;
rlcab_cx_data.Borders.DrawLeft        :=true;

rlcab_cx_descmv.Borders.DrawLeft      :=true;
rlcab_cx_numdoc.Borders.DrawLeft      :=true;
rlcab_cx_valdeb.Borders.DrawLeft      :=true;
rlcab_cx_valcred.Borders.DrawLeft     :=true;
rlcab_cx_saldo.Borders.DrawLeft       :=true;
rlcab_cx_perc_fat.Borders.DrawLeft    :=true;


rldet_ped_nomcli.Borders.DrawLeft     :=true;
rldet_ped_cidade.Borders.DrawLeft     :=true;
rldet_ped_data.Borders.DrawLeft       :=true;
rldet_ped_valor_liq.Borders.DrawLeft  :=true;
rldet_ped_valor_cus.Borders.DrawLeft  :=true;
rldet_ped_perc_luc.Borders.DrawLeft   :=true;
rldet_cx_data.Borders.DrawLeft        :=true;

rldet_cx_descmv.Borders.DrawLeft      :=true;
rldet_cx_numdoc.Borders.DrawLeft      :=true;
rldet_cx_valdeb.Borders.DrawLeft      :=true;
rldet_cx_valcred.Borders.DrawLeft     :=true;
rldet_cx_saldo.Borders.DrawLeft       :=true;
rldet_cx_perc_fat.Borders.DrawLeft    :=true;


rlrod_ped_nomcli.Borders.DrawLeft     :=true;
rlrod_ped_cidade.Borders.DrawLeft     :=true;
rlrod_ped_data.Borders.DrawLeft       :=true;
rlrod_ped_valor_liq.Borders.DrawLeft  :=true;
rlrod_ped_valor_cus.Borders.DrawLeft  :=true;
rlrod_ped_perc_luc.Borders.DrawLeft   :=true;
rlrod_cx_data.Borders.DrawLeft        :=true;

rlrod_cx_descmv.Borders.DrawLeft      :=true;
rlrod_cx_numdoc.Borders.DrawLeft      :=true;
rlrod_cx_valdeb.Borders.DrawLeft      :=true;
rlrod_cx_valcred.Borders.DrawLeft     :=true;
rlrod_cx_saldo.Borders.DrawLeft       :=true;
rlrod_cx_perc_fat.Borders.DrawLeft    :=true;

RLBand_rod.Borders.DrawBottom         :=true;

rlsumario.Borders.Drawtop             :=true;
end;

procedure TFrm_VendaxCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_VendaxCusto.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if Trim(edt_codcli.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',edt_codcli.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(edt_codcli.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcli.ItemIndex:=lbx_codcli.Items.Count-1;
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      end;
   end;


end;

procedure TFrm_VendaxCusto.edt_codcliKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   edt_codcliExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_VendaxCusto.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_VendaxCusto.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum2(edt_codven.Text);
if Trim(edt_codven.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',edt_codven.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(edt_codven.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codven.ItemIndex:=lbx_codven.Items.Count-1;
      edt_codven.text := '';
      if edt_codven.Enabled then
         edt_codven.SetFocus;
      end
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      edt_codven.text := '';
      if edt_codven.Enabled then
         edt_codven.SetFocus;
      end;
   end;



end;

procedure TFrm_VendaxCusto.edt_codvenKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codven.Text:=fChamaVen(0,'frm_RPed',Key);
   if trim(edt_codven.Text)<>'' then
      edt_codvenExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_VendaxCusto.lbx_codvenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_VendaxCusto.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if not flqr1('PNOM','P','CADUF','C','PUF',Trim(CODUF.Text)) then
      begin
      fmensagem('Estado não cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;

end;

procedure TFrm_VendaxCusto.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
   begin
   mcinst2:=fChamaUF(0,'frm_cabc','');
   if trim(mcinst2)<>'' then
      begin
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      CODUFExit(self);
      coduf.SetFocus;
      end;
   end;

end;

procedure TFrm_VendaxCusto.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_VendaxCusto.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(CODLOC.Text)) then
      begin
      fmensagem('Cidade não cadastrado!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_VendaxCusto.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedCli',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;

end;

procedure TFrm_VendaxCusto.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);


end;

procedure TFrm_VendaxCusto.edt_codbco_cxExit(Sender: TObject);
begin
edt_codbco_cx.Text:=fdeixanum2(edt_codbco_cx.Text);
if Trim(edt_codbco_cx.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',edt_codbco_cx.Text) then
      begin
      lbx_codbco_cx.Items.Add(FormatFloat('0000000',StrToFloat(edt_codbco_cx.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      edt_codbco_cx.text := '';
      edt_codbco_cx.SetFocus;
      end
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      edt_codbco_cx.text := '';
      edt_codbco_cx.SetFocus;
      end;
   end;

end;

procedure TFrm_VendaxCusto.edt_codbco_cxKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codbco_cx.Text:=fChamaBco(0,'frm_RcPREeal',Key);
   if trim(edt_codbco_cx.Text)<>'' then
      edt_codbco_cxExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_VendaxCusto.lbx_codbco_cxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco_cx.ItemIndex>=0 then
      lbx_codbco_cx.Items.Delete(lbx_codbco_cx.ItemIndex);

end;

procedure TFrm_VendaxCusto.sbn_coddepClick(Sender: TObject);
begin
edt_CODDEP_cx.Text :=fChamaDeptoCX(0,'frm_RcPReal','');
if trim(edt_CODDEP_cx.Text)<>'' then
   edt_CODDEP_cxExit(Self);

end;

procedure TFrm_VendaxCusto.edt_coddep_cxExit(Sender: TObject);
begin
if Trim(edt_CODDEP_cx.Text)<>'' then
  begin
  if flqr1('DNOME','D','CADDEP','C','DCODDEP',edt_CODDEP_cx.Text) then
    begin
    lbx_coddep_cx.Items.Add(edt_CODDEP_cx.TEXT
                                  +'-'+DM1.Query1.Fields[0].AsString);
    edt_CODDEP_cx.text := '';
    if (edt_CODDEP_cx.Visible=true) and (edt_CODDEP_cx.Enabled=true) then
       edt_CODDEP_cx.SetFocus;
    end
  else
    begin
    fmensagem('Departamento não Cadastrado!',0,['0'],0);
    edt_CODDEP_cx.text := '';
    if (edt_CODDEP_cx.Visible=true) and (edt_CODDEP_cx.Enabled=true) then
       edt_CODDEP_cx.SetFocus;
    end;
  end;

end;

procedure TFrm_VendaxCusto.lbx_coddep_cxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep_cx.ItemIndex>=0 then
      lbx_coddep_cx.Items.Delete(lbx_coddep_cx.ItemIndex);

end;

procedure TFrm_VendaxCusto.lbx_codccu_cxKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu_cx.ItemIndex>=0 then
      lbx_codccu_cx.Items.Delete(lbx_codccu_cx.ItemIndex);

end;

procedure TFrm_VendaxCusto.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);


end;

procedure TFrm_VendaxCusto.SpeedButton1Click(Sender: TObject);
begin
edt_CODCCU_cx.Text:=fChamaCCU(0,'frm_rcprel','');
if trim(edt_codccu_cx.Text)<>'' then
   edt_CODCCU_cxExit(self);

end;

procedure TFrm_VendaxCusto.edt_codccu_cxExit(Sender: TObject);
begin
if Trim(edt_CODCCU_cx.Text)<>'' then
  begin
  if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',edt_CODCCU_cx.Text) then
    begin
    lbx_codccu_cx.Items.Add(edt_CODCCU_cx.TEXT
                                  +'-'+DM1.Query1.Fields[0].AsString);
    edt_CODCCU_cx.text := '';
    edt_CODCCU_cx.SetFocus;
    end
  else
    begin
    fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
    edt_CODCCU_cx.text := '';
    edt_CODCCU_cx.SetFocus;
    end;
  end;

end;

procedure TFrm_VendaxCusto.edt_codforExit(Sender: TObject);
begin
edt_CODFOR.Text:=fdeixanum2(edt_CODFOR.Text);
if Trim(edt_CODFOR.Text)<>'' then
  begin
  if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',edt_CODFOR.Text) then
    begin
    lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(edt_CODFOR.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
    edt_codfor.text := '';
    edt_codfor.SetFocus;
    end
  else
    begin
    fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
    edt_CODFOR.text := '';
    edt_CODFOR.SetFocus;
    end;
  end;

end;

procedure TFrm_VendaxCusto.edt_codforKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
      edt_CODFOR.Text:=fChamaFor(0,'frm_RcPReal',Key);
   if trim(edt_CODFOR.Text)<>'' then
      edt_CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_VendaxCusto.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_VendaxCusto.bbImprimirClick(Sender: TObject);
var
query_temp_ped:tQuery;
query_temp_cx:tQuery;
mCampoTOTLIQ: String;
mCampoTOTCUS: String;
mCampoData: String;

begin
mCampoTOTLIQ:='P2TOTLIQ';
//mCampoTOTCUS:='Round( (P2QTD*P2PCOCUS),2)';
mCampoTOTCUS:='Round( (P2QTD*P2UCPR),2)';

if CB_TIPOPESQ.ItemIndex=0 then
   mCampoData:='P1DATDOC'
else
   mCampoData:='P1DATAP';
if (edt_datini.date>pdatanula) and (edt_datfin.date>pdatanula) then
   begin
   if edt_datini.date>edt_datfin.date then
      begin
      Messagedlg('Data Inicial Maior que Final invalido!',mtwarning,[mbOk],0);
      edt_datini.setfocus;
      exit;
      end;
   end;

lblcab_empresa.Caption :=DM1.Tb_EmpRAZAO.AsString;
lblcab_fantasia.Caption:=DM1.Tb_EmpFANTASIA.AsString;
lblcab_periodo.Caption :=fperiodo(0,edt_datini.Text,edt_datfin.Text);
lblcab_obsrel.Caption  :='Relatorio de Pedidos e Contas';


lblcab_dathor_emi.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin3(0,'CADCSF' ,'CFCODEMP','P1CODEMP' ,'CFLOTSEQ' ,'P1LOTSEQ','CFCHAVEP' ,'P1CHAVE');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI(+)','P1CODCLI');

query_temp_ped:=TQuery.Create(nil);
query_temp_ped.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp_ped.sql.Add('Select  P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP, '
                 +'       P1CODCLI, '
                 +'       '+mCampoData+' as P1DATA,P1CODCV, '
                 +'       P1TIPO_ENTSAI,                            '
                 +'       NVL(CFRAZAO,CRAZAO) as CRAZAO, '
                 +'       CCIDADE,CUF '
                 +'       ,sum('+mCampoTOTLIQ+') as TOTLIQ '
                 +'       ,sum('+mCampoTOTCUS+') as TOTCUS '
                 +'       from CADP01 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where P1STATUS<'+mstatus_excluido+' ');
query_temp_ped.sql.add(iif(la_Empresas='','',' and ')+la_Empresas
                 +        iif(la_instrucao='','',' and ')+la_instrucao);

if edt_datini.date>pdatanula then
   begin
   query_temp_ped.SQL.add(' and '+mCampoData+'>=:DATINI ');
   query_temp_ped.ParamByName('DATINI').AsDate:=edt_datini.Date;
   end;
if edt_datfin.date>pdatanula then
   begin
   query_temp_ped.SQL.add(' and '+mCampoData+'<=:DATFIN ');
   query_temp_ped.ParamByName('DATFIN').AsDate:=edt_datfin.Date;
   end;
if CB_CLIENTES_PED.Checked=true then
   begin
   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      query_temp_ped.SQL.Add(' and P1CODCLI '+mcinst2);
   end;

mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   query_temp_ped.SQL.Add(' and  P1TIPO '+mcinst2);

if CB_VEND_PED.Checked=true then
   begin
   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      query_temp_ped.SQL.Add(' and P1CODVEN '+mcinst2);
   end;

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   query_temp_ped.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   query_temp_ped.SQL.Add(' and CCODLOC '+mcinst2);

   query_temp_ped.sql.Add(' Group by P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP, '
                 +'       P1CODCLI, '
                 +'       '+mCampoData+',P1CODCV, '
                 +'       P1TIPO_ENTSAI,                            '
                 +'       NVL(CFRAZAO,CRAZAO), '
                 +'       CCIDADE,CUF ');

Query_Temp_Ped.Sql.add(' order by '+mCampoData+',P1CHAVE');
try
   query_temp_ped.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp_ped,570,'func Erro:'+e.Message ,'CADP02');
   query_temp_ped.close;
   freeandnil(query_temp_ped);
   exit;
   end;
   end;
// dados do fluxo de caixa


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
if CB_TPPESQ_CAIXA.ItemIndex=0 then
   mCampoData:='DATAREAL'
else if CB_TPPESQ_CAIXA.ItemIndex=1 then
   mCampoData:='DATADP'
else
   mCampoData:='DATAREF';

query_temp_cx:=TQuery.Create(nil);
query_temp_cx.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp_cx.sql.Add('Select VALORP, CODLDR,'
                      +mCampoData+' as DATA_CX, '
                      +'CODBCO,NOMBCO,CODCC,NOMCCU,NATDC,DESCMV,'
                      +'       NUMDOC,NUMDOC2,CODDEP,NOMDEP,TIPO,CODIGO,NOME '
                      +' from CADLDR '
                    +iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                    +'       where STATUS <7 ');
query_temp_cx.sql.add(iif(la_Empresas='','',' and ')+la_Empresas
                 +        iif(la_instrucao='','',' and ')+la_instrucao);




if edt_datini.date>pdatanula then
   begin
   query_temp_cx.SQL.add(' and '+mCampoData+'>=:DATINI ');
   query_temp_cx.ParamByName('DATINI').AsDate:=edt_datini.Date;
   end;
if edt_datfin.date>pdatanula then
   begin
   query_temp_cx.SQL.add(' and '+mCampoData+'<=:DATFIN ');
   query_temp_cx.ParamByName('DATFIN').AsDate:=edt_datfin.Date;
   end;



mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
mcinst4:='';

if trim(mcinst2)<>'' then
  begin
  mcinst4:='';
  if trim(mcinst4)='' then
    mcinst4:='( '
  else
    mcinst4:=' or ';
  mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')';
  if OMITIR_FOR.checked then
    mcinst4:=' not '+mcinst4;
  query_temp_cx.SQL.Add(' and '+mcinst4+')');
  end;



if CB_CLIENTES_CONTAS.Checked=true then
   begin
   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   mcinst4:='';

   if trim(mcinst2)<>'' then
     begin
     mcinst4:='';
     if trim(mcinst4)='' then
       mcinst4:='( '
     else
       mcinst4:=' or ';
     mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')';
     if OMITIR_CLI.checked then
       mcinst4:=' not '+mcinst4;
     query_temp_cx.SQL.Add(' and '+mcinst4+')');
     end;
  end;




if CB_VEND_CONTAS.Checked=true then
   begin
   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   mcinst4:='';
   if trim(mcinst2)<>'' then
     begin
     mcinst4:='';
     if trim(mcinst4)='' then
       mcinst4:='( '
     else
       mcinst4:=' or ';
     mcinst4:=mcinst4+' ( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')';
     if OMITIR_VEN.checked then
       mcinst4:=' not '+mcinst4;
     query_temp_cx.SQL.Add(' and '+mcinst4+')');
     end;
  end;


mcinst2:=fItensListBox(1,lbx_coddep_cx,OMITIR_DEP_CX);
if trim(mcinst2)<>'' then
   query_temp_cx.SQL.Add(' and CODDEP '+mcinst2);

mcinst2:=fItensListBox(1,lbx_codccu_cx,CB_CODCCU_CX);
if trim(mcinst2)<>'' then
   query_temp_cx.SQL.Add(' and CODCC '+mcinst2);

try
   query_temp_cx.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_temp_ped,570,'func Erro:'+e.Message ,'CADP02');
   query_temp_cx.close;
   freeandnil(query_temp_cx);
   exit;
   end;
   end;

//  ex_erroSql_Novo(query_temp_ped,570,'func Erro:' ,'CADP02');

mTotgerVda_Liq  :=0;
mTotgerCusto_Liq:=0;
mTotDeb_Cx :=0;
mTotCred_Cx:=0;

While not query_temp_ped.Eof do
   begin
   mTotgerVda_Liq  :=mTotgerVda_Liq  +query_temp_ped.fieldbyname('TOTLIQ').AsFloat;
   mTotgerCusto_Liq:=mTotgerCusto_Liq+query_temp_ped.fieldbyname('TOTCUS').AsFloat;
   query_temp_ped.Next;
   end;

query_temp_ped.First;
if mem_cadbal.Active=false then
   mem_cadbal.open;
mem_cadbal.EmptyTable;

While not ( (query_temp_ped.Eof) and (query_temp_cx.Eof) )  do
   begin
   mem_cadbal.append;
   if not query_temp_ped.Eof then
      begin
      mem_cadbalped_chave.Value    :=query_temp_ped.fieldbyname('P1CHAVE').AsInteger;
      mem_cadbalped_data.Value     :=query_temp_ped.fieldbyname('P1DATA').AsDateTime;
      mem_cadbalped_nomcli.Value   :=query_temp_ped.fieldbyname('P1CODCLI').AsString+'-'+query_temp_ped.fieldbyname('CRAZAO').AsString;
      mem_cadbalped_cidade.Value   :=query_temp_ped.fieldbyname('CCIDADE').AsString+'-'+query_temp_ped.fieldbyname('CUF').AsString;
      mem_cadbalped_valor_liq.Value:=query_temp_ped.fieldbyname('TOTLIQ').AsFloat;
      mem_cadbalped_valor_cus.Value:=query_temp_ped.fieldbyname('TOTCUS').AsFloat;

      if (query_temp_ped.fieldbyname('TOTCUS').AsFloat=0) or (query_temp_ped.fieldbyname('TOTLIQ').AsFloat=0) then
         mPerc_Temp:=0
      else
         mPerc_Temp:=((query_temp_ped.fieldbyname('TOTLIQ').AsFloat-query_temp_ped.fieldbyname('TOTCUS').AsFloat)*100)
                     / query_temp_ped.fieldbyname('TOTLIQ').AsFloat;

      mem_cadbalped_perc_luc.Value:=mPerc_Temp;

      query_temp_ped.Next;
      end;

   if not query_temp_cx.Eof then
      begin
      mem_cadbalcx_data.Value      :=query_temp_cx.fieldbyname('DATA_CX').AsDateTime;
      mem_cadbalcx_sacado.Value    :=query_temp_cx.fieldbyname('NOME').AsString;
      mem_cadbalcx_coddep.Value    :=query_temp_cx.fieldbyname('CODDEP').AsString;
      mem_cadbalcx_numdoc.Value    :=query_temp_cx.fieldbyname('NUMDOC').AsString;


      mem_cadbalcx_nomdep.Value    :=query_temp_cx.fieldbyname('NOMDEP').AsString;
      mem_cadbalcx_codccu.Value    :=query_temp_cx.fieldbyname('CODCC').AsString;
      mem_cadbalcx_nomccu.Value    :=query_temp_cx.fieldbyname('NOMCCU').AsString;
      mem_cadbalcx_codbco.Value    :=query_temp_cx.fieldbyname('CODBCO').AsInteger;
      mem_cadbalcx_nombco.Value    :=query_temp_cx.fieldbyname('NOMBCO').AsString;
      mem_cadbalcx_descmv.Value    :=query_temp_cx.fieldbyname('DESCMV').AsString;
      mem_cadbalcx_natdc.Value     :=query_temp_cx.fieldbyname('NATDC').AsString;
      if mem_cadbalcx_natdc.Value='D' then
         begin
         mem_cadbalcx_valdeb.Value     :=query_temp_cx.fieldbyname('VALORP').AsFloat;
         mTotDeb_Cx:=mTotDeb_Cx+mem_cadbalcx_valdeb.Value;
         if (mem_cadbalcx_valdeb.Value<>0) and (mTotgerVda_Liq<>0) then
            mem_cadbalcx_perc_fat.Value   := mem_cadbalcx_valdeb.Value*100 / mTotgerVda_Liq
         else
            mem_cadbalcx_perc_fat.Value   := 0;


         end
      else
         begin
         mem_cadbalcx_valcred.Value    :=query_temp_cx.fieldbyname('VALORP').AsFloat;
         mTotCred_Cx:=mTotCred_Cx+mem_cadbalcx_valcred.Value;
         if (mem_cadbalcx_valcred.Value<>0) and (mTotgerVda_Liq<>0) then
            mem_cadbalcx_perc_fat.Value   := mem_cadbalcx_valcred.Value*100 / mTotgerVda_Liq
         else
            mem_cadbalcx_perc_fat.Value   := 0;

         end;
      query_temp_cx.Next;
      mem_cadbalcx_saldo.Value    :=mTotDeb_Cx-mTotCred_Cx;
      end;
   mem_cadbal.Post;
   end;

query_temp_cx.close;
query_temp_ped.close;

freeandnil(query_temp_cx);
freeandnil(query_temp_ped);


RLReport1.PreviewModal;

end;

procedure TFrm_VendaxCusto.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_VendaxCusto.RLBand_rodBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rlrod_ped_valor_liq.Caption:=FormatFloat(mcasas, mTotgerVda_Liq);
rlrod_ped_valor_cus.Caption:=FormatFloat(mcasas, mTotgerCusto_Liq);

if (mTotgerVda_Liq=0) or (mTotgerCusto_Liq=0) then
   mPerc_Temp:=0
else
   mPerc_Temp:=(mTotgerVda_Liq-mTotgerCusto_Liq)*100 / mTotgerVda_Liq;


rlrod_ped_perc_luc.Caption:=Formatfloat(mcasas, mPerc_Temp);


rlrod_cx_valdeb.Caption :=FormatFloat(mcasas, mTotDeb_Cx);
rlrod_cx_valcred.Caption:=FormatFloat(mcasas, mTotCred_Cx);

if (mTotDeb_Cx=0) or (mTotgerVda_Liq=0)  then
   mPerc_Temp:=0
else
   mPerc_Temp:=(mTotDeb_Cx*100 / mTotgerVda_Liq);



rlrod_cx_perc_fat.Caption:=Formatfloat(mcasas, mPerc_Temp);


end;

end.
