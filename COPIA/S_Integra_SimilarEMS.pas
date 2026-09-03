unit S_Integra_SimilarEMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CheckLst, StdCtrls, ComCtrls, Mask, Buttons,lerarq,func, DB,
  DBTables, S_SelEmp;

type
  TFrm_Integra_SimilarEMS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    lbl_codven: TLabel;
    OMITIR_FOR: TCheckBox;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    StaticText3: TStaticText;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    TabSheet2: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Label1: TLabel;
    lbx_coduf: TListBox;
    CODUF: TEdit;
    OMITIR_UF: TCheckBox;
    Label2: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    Label3: TLabel;
    CODGPRO: TEdit;
    lbx_codgpro: TListBox;
    OMITIR_GPRO: TCheckBox;
    Label4: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    GroupBox2: TGroupBox;
    NOMPASTA: TEdit;
    SB01: TSpeedButton;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    ITENSCLIENTE: TEdit;
    ITENSESTOQUE: TEdit;
    Label6: TLabel;
    MES: TEdit;
    Label7: TLabel;
    ANO: TEdit;
    sbSalvarPadrao: TSpeedButton;
    Qr_ItensCliente: TQuery;
    Qr_Inventario: TQuery;
    st_periodo: TStaticText;
    Label10: TLabel;
    EMS_CLIENTE: TEdit;
    Qr_Clientes: TQuery;
    Qr_ItensClienteCCNPJ: TFloatField;
    Qr_ItensClienteCCPF: TFloatField;
    Qr_ItensClienteCRAZAO: TStringField;
    Qr_ItensClientePDCODBAR: TFloatField;
    Qr_ItensClientePDNOME: TStringField;
    Qr_ItensClientePDUND: TStringField;
    Qr_ItensClienteCRAZAO_1: TStringField;
    Qr_ItensClienteCDENOM: TStringField;
    Qr_ItensClienteCLOG: TStringField;
    Qr_ItensClienteCCOMPL: TStringField;
    Qr_ItensClienteCNUM: TStringField;
    Qr_ItensClienteCBAIRRO: TStringField;
    Qr_ItensClienteCCEP: TStringField;
    Qr_ItensClienteCCIDADE: TStringField;
    Qr_ItensClienteCUF: TStringField;
    Qr_ItensClienteCFONE01: TStringField;
    Qr_ItensClienteCFONE02: TStringField;
    Qr_ItensClienteCFAX: TStringField;
    Qr_ItensClienteCNOMCON: TStringField;
    Qr_ItensClienteCTPPESSOA: TFloatField;
    Qr_ItensClienteCIE: TStringField;
    Qr_ItensClienteCRG: TStringField;
    Qr_ItensClienteCENDERC: TStringField;
    Qr_ItensClienteCCEPC: TStringField;
    Qr_ItensClienteCCIDADEC: TStringField;
    Qr_ItensClienteCBAIRROC: TStringField;
    Qr_ItensClienteCUFC: TStringField;
    Qr_ItensClienteCFONE03: TStringField;
    Qr_ItensClienteCFAX_1: TStringField;
    Qr_ItensClienteQTD: TFloatField;
    Qr_ItensClienteTOTBRU: TFloatField;
    Qr_ItensClienteTOTLIQ: TFloatField;
    Qr_ClientesCCNPJ: TFloatField;
    Qr_ClientesCCPF: TFloatField;
    Qr_ClientesCRAZAO: TStringField;
    Qr_ClientesCRAZAO_1: TStringField;
    Qr_ClientesCDENOM: TStringField;
    Qr_ClientesCLOG: TStringField;
    Qr_ClientesCCOMPL: TStringField;
    Qr_ClientesCNUM: TStringField;
    Qr_ClientesCBAIRRO: TStringField;
    Qr_ClientesCCEP: TStringField;
    Qr_ClientesCCIDADE: TStringField;
    Qr_ClientesCUF: TStringField;
    Qr_ClientesCFONE01: TStringField;
    Qr_ClientesCFONE02: TStringField;
    Qr_ClientesCFAX: TStringField;
    Qr_ClientesCNOMCON: TStringField;
    Qr_ClientesCTPPESSOA: TFloatField;
    Qr_ClientesCIE: TStringField;
    Qr_ClientesCRG: TStringField;
    Qr_ClientesCENDERC: TStringField;
    Qr_ClientesCCEPC: TStringField;
    Qr_ClientesCCIDADEC: TStringField;
    Qr_ClientesCBAIRROC: TStringField;
    Qr_ClientesCUFC: TStringField;
    Qr_ClientesCFONE03: TStringField;
    Qr_ClientesCFAX_1: TStringField;
    Qr_ClientesQTD: TFloatField;
    Qr_ClientesTOTBRU: TFloatField;
    Qr_ClientesTOTLIQ: TFloatField;
    Qr_ClientesCEMAIL: TStringField;
    Qr_InventarioPDCODPRO: TFloatField;
    Qr_InventarioCLNUMERO: TStringField;
    Qr_InventarioPDNOME: TStringField;
    Qr_InventarioCLQTD: TFloatField;
    Qr_InventarioPDUND: TStringField;
    Qr_InventarioPDCODBAR: TFloatField;
    GB_STATUS: TGroupBox;
    CLBStatus: TCheckListBox;
    procedure FormCreate(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGPROExit(Sender: TObject);
    procedure CODGPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SB01Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure CLBStatusClick(Sender: TObject);
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
  Frm_Integra_SimilarEMS: TFrm_Integra_SimilarEMS;
  mMudarFoco: boolean=true;
implementation

uses S_DM1, S_DefBac, S_DM4;

{$R *.dfm}

procedure TFrm_Integra_SimilarEMS.FormCreate(Sender: TObject);
var
x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
mMudarFoco:=false;
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
   RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Items.Add('Todos');
RG_TIPOPED.Visible:=true;
RG_TIPOPED.Checked[0] := TRUE;
MES.Text:=FormatDateTime('mm',date);
ANO.Text:=FormatDateTime('yyyy',date);
if flfilpad(0,'_INTEGRA_SIMILAREMS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODFOR',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            CODFOR.Text:=fdeixanum(mcinst);
            CODFORExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODFOR.Text:=fdeixanum(mcinst);
         CODFORExit(Self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_FOR',[]) then
      OMITIR_FOR.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';


   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODVEN',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            CODVEN.Text:=fdeixanum(mcinst);
            CODVENExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODVEN.Text:=fdeixanum(mcinst);
         CODVENExit(Self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_VEN',[]) then
      OMITIR_VEN.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODSUP',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            CODSUP.Text:=fdeixanum(mcinst);
            CODSUPExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODSUP.Text:=fdeixanum(mcinst);
         CODSUPExit(Self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_SUP',[]) then
      OMITIR_SUP.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODUF',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            CODUF.Text:=fdeixanum(mcinst);
            CODUFExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODUF.Text:=fdeixanum(mcinst);
         CODUFExit(Self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_UF',[]) then
      OMITIR_UF.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODLOC',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            CODLOC.Text:=fdeixanum(mcinst);
            CODLOCExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODLOC.Text:=fdeixanum(mcinst);
         CODLOCExit(Self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_LOC',[]) then
      OMITIR_LOC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODGPRO',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            CODGPRO.Text:=fdeixanum(mcinst);
            CODGPROExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODGPRO.Text:=fdeixanum(mcinst);
         CODGPROExit(Self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_GPRO',[]) then
      OMITIR_GPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';

   if DM4.Tb_FilPad2.Locate('FPCOMP','LBX_CODTIP',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            CODTIP.Text:=fdeixanum(mcinst);
            CODTIPExit(self);
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         begin
         CODTIP.Text:=fdeixanum(mcinst);
         CODTIPExit(Self);
         end;
      end;
   if DM4.Tb_FilPad2.Locate('FPCOMP','OMITIR_TPRO',[]) then
      OMITIR_TPRO.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','NOMPASTA',[]) then
      NOMPASTA.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_TIPOPED',[]) then
      begin
       mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if (DM4.Tb_FilPad2FPVALOR.Value[x]=',') and (trim(mcinst)<>'') then
            begin
            RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
      end
   else
      begin
      RG_TIPOPED.Checked[0] := TRUE;
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','CLBSTATUS',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
         begin
         if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
            begin
            CLBStatus.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         CLBStatus.Checked[ValInt(mcinst)]:=true;
      end;
   end;

mMudarFoco:=true;



end;

procedure TFrm_Integra_SimilarEMS.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Integra_SimilarEMS.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)='' then
   CODFOR.Text:=''
else
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      if mMudarFoco then
         begin
         fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
         CODFOR.TEXT := '';
         CODfor.SetFocus;
         end;
      end
   else
      begin
      Lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      if mMudarFoco then
         CODFOR.SetFocus;
      end;
   end;

end;

procedure TFrm_Integra_SimilarEMS.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)='' then
   CODVEN.Text:='Todos...'
else
   begin
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      begin
      if mMudarFoco then
         begin
         fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
         if CODVEN.Enabled then
            CODVEN.SetFocus;
         end;
      end
   else
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);
      codven.text := '';
      if mMudarFoco then
         begin
         if CODVEN.Enabled then
            CODVEN.SetFocus;
         end;

   end;


end;

procedure TFrm_Integra_SimilarEMS.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flcadsup(1,0,CODSUP.Text) then
      begin
      if mMudarFoco then
         begin
         fmensagem('Supervisor não Cadastrado!',0,['0'],0);
         CODSUP.SetFocus;
         end;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);
      lbx_codsup.ItemIndex:=lbx_codsup.Items.Count-1;

      CODSUP.text := '';
      if (mMudarFoco) and (CODSUP.Enabled) then
         CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_Integra_SimilarEMS.CODSUPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text:=fChamaSup(0,'frm_proabc',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Integra_SimilarEMS.CODVENKeyPress(Sender: TObject;
  var Key: Char);
begin



if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_medtpro',key);
   if valfloat(CODVEN.Text)<>0 then
      lbx_codven.Items.Add(FormatFloat('0000000',DM1.Tb_VenVCODVEN.AsFloat)
                                    +' - '+DM1.Tb_VenVNOME.Value);
   codven.text := '';
   key:=#0;
   end;

end;

procedure TFrm_Integra_SimilarEMS.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_FABC',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Integra_SimilarEMS.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_Integra_SimilarEMS.lbx_codvenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Integra_SimilarEMS.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_Integra_SimilarEMS.CODUFKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=114 then
   begin
   CODUF.Text:=fChamaUF(0,'frm_uf','');
   if trim(coduf.Text)<>'' then
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
   coduf.text := '';
   end;

end;

procedure TFrm_Integra_SimilarEMS.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)='' then
   CODUF.Text:=''
else
   begin
   if not flcaduf(0,0,0,CODUF.Text) then
      begin
      if mMudarFoco then
         begin
         MessageDlg('Estado nao Cadastrado!',mtWarning,[mbOk],0);
         CODUF.SetFocus;
         end;
      end
   else
      lbx_coduf.Items.Add(DM1.Tb_UFPUF.AsString
                                    +'-'+DM1.Tb_UFPNOM.AsString);
      coduf.text := '';
   if mMudarFoco then
      CODUF.SetFocus;

   end;

end;

procedure TFrm_Integra_SimilarEMS.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_Integra_SimilarEMS.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
   BEGIN
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      CODLOC.text := '';
      if mMudarFoco then
         CODLOC.SetFocus;
   END else
      begin
      if mMudarFoco then
         begin
         fmensagem('Cidade não Cadastrada!',0,['0'],0);
         CODLOC.text := '';
         CODLOC.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_Integra_SimilarEMS.CODLOCKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Tab_CLi',Key);
   CODLOCExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Integra_SimilarEMS.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Integra_SimilarEMS.CODGPROExit(Sender: TObject);
begin
CODGPRO.Text:=fdeixanum2(CODGPRO.Text);
if Trim(CODGPRO.Text)<>'' then
   begin
   if flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGPRO.Text) then
   BEGIN
      lbx_codgpro.Items.Add(FormatFloat('0000000',StrToFloat(CODGPRO.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      CODGPRO.text := '';
      if mMudarFoco then
       CODGPRO.SetFocus;
   END else
      begin
      if mMudarFoco then
         begin
         fmensagem('Grupo de Produtos não Cadastrada!',0,['0'],0);
         CODGPRO.text := '';
         CODGPRO.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_Integra_SimilarEMS.CODGPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGPRO.Text:=fChamagPro(0,'frm_Tab_CLi',Key);
   CODGPROExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Integra_SimilarEMS.lbx_codgproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgpro.ItemIndex>=0 then
      lbx_codgpro.Items.Delete(lbx_codgpro.ItemIndex);

end;

procedure TFrm_Integra_SimilarEMS.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if trim(codtip.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
      if mMudarFoco then
         CODTIP.SetFocus;
      end
   else
      begin
      if mMudarFoco then
         begin
         fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
         CODTIP.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_Integra_SimilarEMS.CODTIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_lpreco1',key);
   if valfloat(CODTIP.Text)<>0 then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.AsString))
                                    +' - '+DM1.Tb_TproTNOME.AsString);
      CODTIP.text := '';
      end;
   key:=#0;
   end;

end;

procedure TFrm_Integra_SimilarEMS.lbx_codtipKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_Integra_SimilarEMS.SB01Click(Sender: TObject);
begin
testeform := TFrm_Integra_SimilarEMS(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
frm_DefBac.Caption:='Definindo o caminho para Geração dos Arquivos de Integração EMS SIMILAR';
Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   NOMPASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_Integra_SimilarEMS.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Integra_SimilarEMS.bbImprimirClick(Sender: TObject);
var
mNomeItensCliente   : String;
mNomeItensEstoque: String;
mNomeEmsCliente: String;

mCodFor: real;
mCodEmpFor: String;
mmest,mdt1,mdt2: String;
mqtdreg, x,mes02,ano02,mes01,ano01: Integer;
mDataInv: TDateTime;

mLinha,mNomeArq,mCampoSaldo: String;
f: TextFile;
begin
bbImprimir.Enabled:=false;
if (valfloat(MES.Text)<1) or (valfloat(MES.Text)>12) then
   begin
   fmensagem('Mês Inválido!',0,['0'],0);
   MES.SetFocus;
   bbImprimir.Enabled:=true;
   exit;
   end;
if not DirExists(NOMPASTA.Text) then
   begin
   fmensagem('Favor Selecionar uma Pasta Válida!',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;
if lbx_codfor.Items.Count<1 then
   begin
   fmensagem('Favor Selecionar Pelo menos um Fornecedor!',0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;

mCodFor:=FSonumero(copy(lbx_codfor.Items[0],1,fPosCaractere('-',lbx_codfor.items[0])-1));
if not flcadfor(1,0,FloatTostr(mCodFor)) then
   begin
   fmensagem('Não Foi Encontrado o Fornecedor Código: '+FloatToStr(mCodFor),0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end;
if length(DM1.Tb_ForFCODEFO.AsString)<2 then
   begin
   fmensagem('Não Esta Cadastrado o Codigo da Empresa no Cadastro de Fornecedores. Entre em Cadastro Fornecedores e Cadastre!'
   ,0,['0'],0);
   bbImprimir.Enabled:=true;
   exit;
   end
else
   mCodEmpFor:=DM1.Tb_ForFCODEFO.AsString;
ANO.Text:=FormatFloat('0000', ValInt(ANO.Text));

mNomeItensCliente   :='D'+FormatFloat('000000',Fsonumero(mCodEmpFor))+'C'+copy(ANO.Text,3,2)+FormatFloat('00',ValInt(MES.Text))+'.TXT';
mNomeEmsCliente     :='D'+FormatFloat('000000',Fsonumero(mCodEmpFor))+'B'+copy(ANO.Text,3,2)+FormatFloat('00',ValInt(MES.Text))+'.TXT';
mNomeItensEstoque   :='D'+FormatFloat('000000',Fsonumero(mCodEmpFor))+'A'+copy(ANO.Text,3,2)+FormatFloat('00',ValInt(MES.Text))+'.TXT';


mes02:=Valint(MES.Text);
ano02:=Valint(ANO.Text);

mes01:=mes02;
ano01:=ano02;
mdt1:='01/'+FormatFloat('00',mes01)+'/'+FormatFloat('0000',ano01);
mdt2:='28/'+FormatFloat('00',valfloat(mes.Text))+'/'+FormatFloat('0000',valfloat(ano.Text));

x:=Valint(mes.Text);

while true do
   begin
   mmest:=FormatDateTime('mm',StrTodate(mdt2)+1);
   if StrToInt('0'+mmest)<>x then
      break;
   mdt2:=FormatDateTime(fdt2,StrToDate(mdt2)+1);
   end;
if FormatDateTime('yyyymm',Date)=ano.Text+MES.Text then
   mdt2:=FormatdateTime(fdt2, Date);

st_periodo.Caption:='Periodo Processado: '+FormatDatetime(fdt2, StrToDate(mdt1))+' à '+FormatDatetime(fdt2, StrToDate(mdt2));
st_periodo.Visible:=true;
st_periodo.Update;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

if lbx_codsup.Items.Count>0 then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   end;
Qr_ItensCliente.Close;
Qr_ItensCliente.SQL.clear;
Qr_ItensCliente.SQL.Add('Select CCNPJ,CCPF,CRAZAO,PDCODBAR,PDNOME,PDUND '
                       +',CRAZAO,CDENOM,CLOG,CCOMPL,CNUM,CBAIRRO,CCEP '
                       +',CCIDADE,CUF,CFONE01,CFONE02,CFAX,CNOMCON,CTPPESSOA'
                       +',CIE,CRG,CENDERC,CCEPC,CCIDADEC,CBAIRROC,CUFC '
                       +',CFONE03,CFAX '
                       +',sum(P2QTD) AS QTD'
                       +',sum(P2QTD*P2PRECO) as TOTBRU '
                       +',sum(P2TOTLIQ) AS TOTLIQ '
                       +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                       +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);

Qr_ItensCliente.Sql.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt,StrToDate(mdt1))+chr(39));
Qr_ItensCliente.Sql.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt,StrToDate(mdt2))+chr(39));

Qr_ItensCliente.Sql.Add(' and P1EMIDOC=1');

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and P1TIPO '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and PDCODFOR '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgpro,OMITIR_GPRO);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   Qr_ItensCliente.SQL.Add(' and PDCODTIP '+mcinst2);
Qr_ItensCliente.SQL.Add(' group by CCNPJ,CCPF,CRAZAO,PDCODBAR,PDNOME,PDUND '
                       +',CRAZAO,CDENOM,CLOG,CCOMPL,CNUM,CBAIRRO,CCEP '
                       +',CCIDADE,CUF,CFONE01,CFONE02,CFAX,CNOMCON,CTPPESSOA'
                       +',CIE,CRG,CENDERC,CCEPC,CCIDADEC,CBAIRROC,CUFC '
                       +',CFONE03,CFAX ');
try
   Qr_ItensCliente.Open;
except
   Qr_ItensCliente.SQL.savetofile('c:\sqlems.txt');
   bbImprimir.Enabled:=true;
   exit;
   end;
if Qr_ItensCliente.IsEmpty then
   begin
   fmensagem('Não ha vendas no periodo solicitado!',0,['0'],0);
   bbImprimir.Enabled:=true;
   Exit;
   end;



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
if (pbanco=0) and (trim(la_instrucao)<>'') then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

if lbx_codsup.Items.Count>0 then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   end;
Qr_Clientes.Close;
Qr_Clientes.SQL.clear;
Qr_Clientes.SQL.Add('Select CCNPJ,CCPF,CRAZAO '
                       +',CRAZAO,CDENOM,CLOG,CCOMPL,CNUM,CBAIRRO,CCEP '
                       +',CCIDADE,CUF,CFONE01,CFONE02,CFAX,CNOMCON,CTPPESSOA'
                       +',CIE,CRG,CENDERC,CCEPC,CCIDADEC,CBAIRROC,CUFC '
                       +',CFONE03,CFAX,CEMAIL '
                       +',sum(P2QTD) AS QTD'
                       +',sum(P2QTD*P2PRECO) as TOTBRU '
                       +',sum(P2TOTLIQ) AS TOTLIQ '
                       +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                       +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);

Qr_Clientes.Sql.Add(' and P1DATDOC>='+chr(39)+FormatDateTime(fdt,StrToDate(mdt1))+chr(39));
Qr_Clientes.Sql.Add(' and P1DATDOC<='+chr(39)+FormatDateTime(fdt,StrToDate(mdt2))+chr(39));

Qr_Clientes.Sql.Add(' and P1EMIDOC=1');

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and P1TIPO '+mcinst2);


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and PDCODFOR '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and VCODSUP '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and CCODLOC '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgpro,OMITIR_GPRO);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   Qr_Clientes.SQL.Add(' and PDCODTIP '+mcinst2);
Qr_Clientes.SQL.Add(' group by CCNPJ,CCPF,CRAZAO '
                       +',CRAZAO,CDENOM,CLOG,CCOMPL,CNUM,CBAIRRO,CCEP '
                       +',CCIDADE,CUF,CFONE01,CFONE02,CFAX,CNOMCON,CTPPESSOA'
                       +',CIE,CRG,CENDERC,CCEPC,CCIDADEC,CBAIRROC,CUFC '
                       +',CFONE03,CFAX,CEMAIL ');
try
   Qr_Clientes.Open;
except
   Qr_Clientes.SQL.savetofile('c:\sqlems.txt');
   bbImprimir.Enabled:=true;
   exit;
   end;
if Qr_Clientes.IsEmpty then
   begin
   fmensagem('Não ha vendas no periodo solicitado!',0,['0'],0);
   bbImprimir.Enabled:=true;
   Exit;
   end;

if StrToDate(mdt2)>=Date then
   mDataInv:=pdatanula
else
   mDataInv:=fDataEstoqueFinal(1,StrToDate(mdt2));


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_empresas :='';
Qr_Inventario.Close;
Qr_Inventario.SQL.Clear;

if mDataInv<=pdatanula then
   begin
   fInnerJoin(0,'CADLGC','CLCODEMP', 'PDCODEMP','CLCODPRO' ,'PDCODPRO');
   Qr_Inventario.SQL.Add('Select PDCODPRO,PDCODBAR,CLNUMERO,PDNOME,CLQTD,PDUND from CADPRO '
                       +iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                       +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
   end
else
   begin
   mCampoSaldo:='CED_QTDDIA'+FormatDateTime('dd',mDataInv);
   fInnerJoin(0,'CADEGD','CED_CODEMP', 'PDCODEMP','CED_CODPRO' ,'PDCODPRO');
   Qr_Inventario.SQL.Add('Select PDCODPRO,PDCODBAR, CED_GRADE AS CLNUMERO,PDNOME,'+mCampoSaldo+' as CLQTD,PDUND from CADPRO '
                       +iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                       +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
   end;

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_Inventario.SQL.Add(' PDCODFOR '+mcinst2)
else
   Qr_Inventario.SQL.Add(' PDCODFOR=99999999 ');


mcinst2:=fItensListBox(0,lbx_codgpro,OMITIR_GPRO);
if trim(mcinst2)<>'' then
   Qr_Inventario.SQL.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBStatus);
if trim(mcinst2)<>'' then
   Qr_Inventario.SQL.add(' and PDSTATUS '+mcinst2);;

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   Qr_Inventario.SQL.Add(' and PDCODTIP '+mcinst2);
try
   Qr_Inventario.Open;
except
   Qr_Inventario.SQL.SaveToFile('c:\sqlinv.txt');
   bbImprimir.Enabled:=true;
   exit;
   end;

if NOMPASTA.Text[Length(NOMPASTA.Text)]='\' then
   mNomeArq:=NOMPASTA.Text+mNomeEmsCliente
else
   mNomeArq:=NOMPASTA.Text+'\'+mNomeEmsCliente;

AssignFile(f,mNomeArq);
Rewrite(f);

mlinha:='H'+formatFloat('00', ValInt(mes.Text))+Formatfloat('0000',ValInt(ANO.Text))
                       +insere(DM1.Tb_EmpCGC.AsString,'0',14)
                       +insere2(DM1.Tb_EmpRAZAO.Value,' ',40)
                       +FormatDateTime('ddmmyyyy',date)
                       +FormatDateTime('hhmmss',time)
                       +insere2(' ',' ',231)
                       +insere2('CLIENTES_EMS',' ',16);
Writeln(f,mlinha);
mqtdreg:=0;
While not Qr_Clientes.Eof do
   begin
   mqtdreg:=mqtdreg+1;
   mlinha:='1';
   mlinha:=mlinha+insere2(Qr_ClientesCRAZAO.AsString,' ',35);
   mlinha:=mlinha+insere2(Qr_ClientesCDENOM.AsString,' ',35);
   mlinha:=mlinha+insere2(Qr_ClientesCLOG.AsString,' ',35);
   mlinha:=mlinha+insere2(Qr_ClientesCBAIRRO.AsString,' ',30);
   mlinha:=mlinha+insere2(fdeixanum2(Qr_ClientesCCEP.AsString),' ',10);
   mlinha:=mlinha+insere2(Qr_ClientesCCIDADE.AsString,' ',35);
   mlinha:=mlinha+insere2(Qr_ClientesCUF.AsString,' ',02);
   mlinha:=mlinha+insere2('BRL',' ',03);
   mlinha:=mlinha+insere2(' ',' ',10); // CAIXA POSTAL
   mcinst2:=copy(FMontarMascFone(Qr_ClientesCFONE01.AsString),1,6);
   mcinst2:=mcinst2+copy(FMontarMascFone(Qr_ClientesCFONE01.AsString),9,9);
   mcinst2:=mcinst2+copy(FMontarMascFone(Qr_ClientesCFONE02.AsString),9,9);
   mlinha:=mlinha+insere2(mcinst2,' ',30);
   mlinha:=mlinha+insere2(' ',' ',15); // RAMAL

   mcinst2:=copy(FMontarMascFone(Qr_ClientesCFAX.AsString),1,6);
   mcinst2:=mcinst2+copy(FMontarMascFone(Qr_ClientesCFAX.AsString),9,9);
   mlinha:=mlinha+insere2(mcinst2,' ',30);

   mlinha:=mlinha+insere2(Qr_ClientesCNOMCON.AsString,' ',20);
   mlinha:=mlinha+insere2(Qr_ClientesCEMAIL.AsString,' ',30);
   mlinha:=mlinha+'C';
   Writeln(f,mlinha);
   mlinha:='2';
   if Qr_ClientesCTPPESSOA.AsInteger=1 then
      begin
      mlinha:=mlinha+'F';
      mlinha:=mlinha+insere2(Formatfloat('00000000000', Qr_ClientesCCPF.Value),' ',16);
      mlinha:=mlinha+insere2(Qr_ClientesCRG.AsString,' ',18);

      end
   else
      begin
      mlinha:=mlinha+'J';
      mlinha:=mlinha+insere2(Formatfloat('00000000000000', Qr_ClientesCCNPJ.Value),' ',16);
      mlinha:=mlinha+insere2(Qr_ClientesCIE.AsString,' ',18);
      end;

   mlinha:=mlinha+insere2(Qr_ClientesCENDERC.AsString,' ',35);
   mlinha:=mlinha+insere2(fdeixanum2(Qr_ClientesCCEPC.AsString),' ',10);
   mlinha:=mlinha+insere2(Qr_ClientesCCIDADEc.AsString,' ',35);
   mlinha:=mlinha+insere2(Qr_ClientesCUFc.AsString,' ',02);
   mlinha:=mlinha+insere2(Qr_ClientesCBAIRROC.AsString,' ',30);
   mcinst2:=copy(FMontarMascFone(Qr_ClientesCFONE01.AsString),1,6);
   mcinst2:=mcinst2+copy(FMontarMascFone(Qr_ClientesCFONE01.AsString),9,9);
   mcinst2:=mcinst2+copy(FMontarMascFone(Qr_ClientesCFONE02.AsString),9,9);
   mlinha:=mlinha+insere2(mcinst2,' ',30);
   mcinst2:=copy(FMontarMascFone(Qr_ClientesCFAX.AsString),1,6);
   mcinst2:=mcinst2+copy(FMontarMascFone(Qr_ClientesCFAX.AsString),9,9);
   mlinha:=mlinha+insere2(mcinst2,' ',30);
   mlinha:=mlinha+insere2(mcinst2,' ',113);
   mlinha:=mlinha+'C';
   Writeln(f,mlinha);

   Qr_Clientes.Next;
   end;

mlinha:='T';
mlinha:=mlinha+insere2(' ',' ',312);
mlinha:=mlinha+insere(IntToStr(mqtdreg),'0',09);
Writeln(f,mlinha);
CloseFile(F);

if NOMPASTA.Text[Length(NOMPASTA.Text)]='\' then
   mNomeArq:=NOMPASTA.Text+mNomeItensCliente
else
   mNomeArq:=NOMPASTA.Text+'\'+mNomeItensCliente;


AssignFile(f,mNomeArq);
Rewrite(f);

mlinha:='H'+formatFloat('00', ValInt(mes.Text))+Formatfloat('0000',ValInt(ANO.Text))
                       +insere(DM1.Tb_EmpCGC.AsString,'0',14)
                       +insere2(DM1.Tb_EmpRAZAO.Value,' ',40)
                       +FormatDateTime('ddmmyyyy',date)
                       +FormatDateTime('hhmmss',time)
                       +insere2(' ',' ',81)
                       +insere2('ITENS_CLIENTES',' ',16);


Writeln(f,mlinha);
mqtdreg:=0;
While not Qr_ItensCliente.Eof do
   begin
   mqtdreg:=mqtdreg+1;
   mlinha:='1';
   mlinha:=mlinha+insere(DM1.Tb_EmpCGC.AsString,'0',14);
   mlinha:=mlinha+FormatFloat('00',valint(MES.Text));
   mlinha:=mlinha+FormatFloat('0000',valint(ANO.Text));
   if Qr_ClientesCTPPESSOA.AsInteger=1 then
      mlinha:=mlinha+insere2(Formatfloat('00000000000', Qr_ItensClienteCCPF.Value),' ',14)
   else
      mlinha:=mlinha+insere2(Formatfloat('00000000000000', Qr_ItensClienteCCNPJ.Value),' ',14);
   mlinha:=mlinha+insere2(Qr_ItensClienteCRAZAO.AsString,' ',40);
   mlinha:=mlinha+insere2(Qr_ItensClientePDCODBAR.AsString,' ',18);
   mlinha:=mlinha+insere2(Qr_ItensClientePDNOME.AsString,' ',40);
   mlinha:=mlinha+insere(mudavp(FormatFloat('0.00',Qr_ItensClienteQTD.Value)),' ',12);
   mlinha:=mlinha+insere2(Qr_ItensClientePDUND.AsString,' ',03);
   mlinha:=mlinha+insere(mudavp(FormatFloat('0.00',Qr_ItensClienteTOTBRU.Value)),' ',13);
   mlinha:=mlinha+insere(mudavp(FormatFloat('0.00',Qr_ItensClienteTOTLIQ.Value)),' ',13);
   Writeln(f,mlinha);
   Qr_ItensCliente.Next;
   end;
mlinha:='T';
mlinha:=mlinha+insere2(' ',' ',164);
mlinha:=mlinha+insere(IntToStr(mqtdreg),'0',09);
Writeln(f,mlinha);
CloseFile(F);

// iventario
if NOMPASTA.Text[Length(NOMPASTA.Text)]='\' then
   mNomeArq:=NOMPASTA.Text+mNomeItensEstoque
else
   mNomeArq:=NOMPASTA.Text+'\'+mNomeItensEstoque;

AssignFile(f,mNomeArq);
Rewrite(f);

mlinha:='H'+formatFloat('00', ValInt(mes.Text))+Formatfloat('0000',ValInt(ANO.Text))
                       +insere(DM1.Tb_EmpCGC.AsString,'0',14)
                       +insere2(DM1.Tb_EmpRAZAO.Value,' ',40)
                       +FormatDateTime('ddmmyyyy',date)
                       +FormatDateTime('hhmmss',time)
                       +insere2('ITENS_EM_ESTOQUE',' ',16);


Writeln(f,mlinha);
mqtdreg:=0;

While not Qr_Inventario.Eof do
   begin
   mqtdreg:=mqtdreg+1;
   mlinha:='1';
   mlinha:=mlinha+insere2(Qr_InventarioPDCODBAR.AsString,' ',18);
   mlinha:=mlinha+insere2(Qr_InventarioCLNUMERO.AsString,' ',10);
   mlinha:=mlinha+insere2(Qr_InventarioPDNOME.AsString,' ',40);
   mlinha:=mlinha+FormatFloat('00',valint(MES.Text));
   mlinha:=mlinha+FormatFloat('0000',valint(ANO.Text));
   mlinha:=mlinha+insere(mudavp(FormatFloat('0.00',Qr_InventarioCLQTD.Value)),' ',13);
   mlinha:=mlinha+insere2(Qr_InventarioPDUND.AsString,' ',03);
   Writeln(f,mlinha);
   Qr_Inventario.Next;
   end;

mlinha:='T';
mlinha:=mlinha+insere2(' ',' ',81);
mlinha:=mlinha+insere(IntToStr(mqtdreg),'0',09);
Writeln(f,mlinha);
CloseFile(F);

ITENSCLIENTE.Text:=mNomeItensCliente;
ITENSESTOQUE.Text:=mNomeItensEstoque;
EMS_CLIENTE.Text :=mNomeEmsCliente;

fmensagem('Concluido!',0,['0'],0);
bbImprimir.Enabled:=true;

end;

procedure TFrm_Integra_SimilarEMS.sbSalvarPadraoClick(Sender: TObject);
var
y,x: Integer;
begin
sbSalvarPadrao.Enabled:=false;
fDeletaPadroes(0,'_INTEGRA_SIMILAREMS','');
mcinst2:='';
for x:=0 to lbx_codfor.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codfor.Items[x])-1 do
      begin
      if copy(lbx_codfor.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codfor.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODFOR'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);
fGravaPadroes(0,'NOMPASTA'            ,'itemindex' ,'_INTEGRA_SIMILAREMS',NOMPASTA.Text);

mcinst2:='';
for x:=0 to lbx_codven.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codven.Items[x])-1 do
      begin
      if copy(lbx_codven.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codven.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODVEN'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);



mcinst2:='';
for x:=0 to lbx_codsup.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codsup.Items[x])-1 do
      begin
      if copy(lbx_codsup.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codsup.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODSUP'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);


mcinst2:='';
for x:=0 to lbx_coduf.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_coduf.Items[x])-1 do
      begin
      if copy(lbx_coduf.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_coduf.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODUF'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);



mcinst2:='';
for x:=0 to lbx_codloc.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codloc.Items[x])-1 do
      begin
      if copy(lbx_codloc.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codloc.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODLOC'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);


mcinst2:='';
for x:=0 to lbx_codgpro.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codgpro.Items[x])-1 do
      begin
      if copy(lbx_codgpro.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codgpro.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODGPRO'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);



mcinst2:='';
for x:=0 to lbx_codtip.Count-1 do
   begin
   mcinst:='';
   for y:=0 to length(lbx_codtip.Items[x])-1 do
      begin
      if copy(lbx_codtip.Items[x],y,1)='-' then
         begin
         mcinst2:=mcinst2+','+fdeixanum2(mcinst);
         mcinst:='';
         end
      else
         mcinst:=mcinst+copy(lbx_codtip.Items[x],y,1);
      end;
   end;
if trim(mcinst)<>'' then
   mcinst2:=mcinst2+','+fdeixanum2(mcinst);
fGravaPadroes(0,'LBX_CODTIP'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);


mcinst2:='';
for x:=0 to CLBStatus.Items.Count-1 do
   begin
   if CLBStatus.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'CLBSTATUS'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);



fGravaPadroes(0,'OMITIR_FOR'          ,'checked'   ,'_INTEGRA_SIMILAREMS',iif(OMITIR_FOR.Checked,'true','false'));
fGravaPadroes(0,'OMITIR_VEN'          ,'checked'   ,'_INTEGRA_SIMILAREMS',iif(OMITIR_VEN.Checked,'true','false'));
fGravaPadroes(0,'OMITIR_SUP'          ,'checked'   ,'_INTEGRA_SIMILAREMS',iif(OMITIR_SUP.Checked,'true','false'));
fGravaPadroes(0,'OMITIR_UF'           ,'checked'   ,'_INTEGRA_SIMILAREMS',iif(OMITIR_UF.Checked,'true','false'));
fGravaPadroes(0,'OMITIR_LOC'          ,'checked'   ,'_INTEGRA_SIMILAREMS',iif(OMITIR_LOC.Checked,'true','false'));
fGravaPadroes(0,'OMITIR_GPRO'         ,'checked'   ,'_INTEGRA_SIMILAREMS',iif(OMITIR_GPRO.Checked,'true','false'));
fGravaPadroes(0,'OMITIR_TPRO'         ,'checked'   ,'_INTEGRA_SIMILAREMS',iif(OMITIR_TPRO.Checked,'true','false'));


mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'RG_TIPOPED'          ,'itemindex' ,'_INTEGRA_SIMILAREMS',mcinst2);
sbSalvarPadrao.Enabled:=true;
end;

procedure TFrm_Integra_SimilarEMS.CLBStatusClick(Sender: TObject);
begin
CLBStatus:=Valida_CheckList(CLBStatus);


end;

procedure TFrm_Integra_SimilarEMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Integra_SimilarEMS.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
