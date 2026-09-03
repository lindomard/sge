unit S_PcoLotAP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_For,S_GPro,S_Ram,S_TCon,S_TipPro,
  lerarq,func, CheckLst;

type
  TFrm_PcoLotAP = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RG_Tipo: TRadioGroup;
    Label1: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label2: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label6: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label3: TLabel;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    Label4: TLabel;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    GB_AJUSTAR: TGroupBox;
    AJUSTARPCO: TEdit;
    CB_DIMINUIR: TCheckBox;
    StaticText2: TStaticText;
    CLB_STATUS: TCheckListBox;
    OMITIR_STATUS: TCheckBox;
    Gb_param: TGroupBox;
    Label5: TLabel;
    DESC01: TEdit;
    Label7: TLabel;
    DESC02: TEdit;
    Label8: TLabel;
    DESC03: TEdit;
    Label9: TLabel;
    DESCFIN: TEdit;
    Label10: TLabel;
    COMIS: TEdit;
    Label11: TLabel;
    edt_nompro: TEdit;
    Label12: TLabel;
    edt_marca: TEdit;
    Label15: TLabel;
    CLBEstoque: TCheckListBox;
    Label13: TLabel;
    edt_percAjuste: TEdit;
    cb_tipopreco: TComboBox;
    Label14: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AJUSTARPCOExit(Sender: TObject);
    procedure CLB_STATUSClick(Sender: TObject);
    procedure DESC01Exit(Sender: TObject);
    procedure DESC02Exit(Sender: TObject);
    procedure DESC03Exit(Sender: TObject);
    procedure DESCFINExit(Sender: TObject);
    procedure COMISExit(Sender: TObject);
    procedure CLBEstoqueClick(Sender: TObject);
    procedure edt_percAjusteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PcoLotAP: TFrm_PcoLotAP;
  mtpoper: Integer=0;
implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_PcoLotAP.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PcoLotAP.FormActivate(Sender: TObject);
begin
mtpoper :=0;
end;

procedure TFrm_PcoLotAP.BitBtn1Click(Sender: TObject);
begin
mtpoper:=RG_Tipo.ItemIndex+1;
close;

end;

procedure TFrm_PcoLotAP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PcoLotAP.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;

end;

procedure TFrm_PcoLotAP.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.text := fchamafor(0,'frm_lpreco',key);
   if valfloat(CODFOR.Text)<>0 then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
      end;
   CODFOR.Text:='';
   key:=#0;
   end;

end;

procedure TFrm_PcoLotAP.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_PcoLotAP.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end
   else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      end;
   end;
end;

procedure TFrm_PcoLotAP.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_lpreco1',key);
   if valfloat(CODGRU.Text)<>0 then
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.AsString))
                                   +' - '+DM1.Tb_GproGRNOME.AsString);
      CODGRU.text := '';
      end;
   key:=#0;
   end;

end;

procedure TFrm_PcoLotAP.lbx_codgruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_PcoLotAP.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   EXIT;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_PcoLotAP.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_PcoLotAP.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_PcoLotAP.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)<=0 then
   EXIT;
if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   BEGIN
   lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codcon.text := '';
   END
else
   begin
   fmensagem('Controle não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_PcoLotAP.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaTCon(0,'frm_lpreco1',key);
   if valfloat(CODCON.Text)<>0 then
      begin
      lbx_codcon.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TconCCODCON.AsString))
                                        +' - '+DM1.Tb_TconCNOME.AsString);
      CODCON.text := '';
      end;
   key:=#0;
   end;

end;

procedure TFrm_PcoLotAP.lbx_codconKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_PcoLotAP.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if trim(codtip.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
      end
   else
      begin
      fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
      CODTIP.SetFocus;
      end;
   end;

end;

procedure TFrm_PcoLotAP.CODTIPKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_PcoLotAP.lbx_codtipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_PcoLotAP.AJUSTARPCOExit(Sender: TObject);
begin
if ValFloat(AJUSTARPCO.Text)<0 then
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text)*-1)
else
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text));

end;

procedure TFrm_PcoLotAP.CLB_STATUSClick(Sender: TObject);
begin
CLB_STATUS:=Valida_CheckList(CLB_STATUS);

end;

procedure TFrm_PcoLotAP.DESC01Exit(Sender: TObject);
begin
if ValFloat(DESC01.Text)>999 then
   DESC01.Text:='';

DESC01.Text:=fdeixanum2(DESC01.Text);
if trim(DESC01.Text)<>'' then
   DESC01.Text:=FormatFloat(mcasas_pct, ValFloat(DESC01.Text));

end;

procedure TFrm_PcoLotAP.DESC02Exit(Sender: TObject);
begin
if ValFloat(DESC02.Text)>999 then
   DESC02.Text:='';

DESC02.Text:=fdeixanum2(DESC02.Text);
if trim(DESC02.Text)<>'' then
   DESC02.Text:=FormatFloat(mcasas_pct, ValFloat(DESC02.Text));

end;

procedure TFrm_PcoLotAP.DESC03Exit(Sender: TObject);
begin
if ValFloat(DESC03.Text)>999 then
   DESC03.Text:='';

DESC03.Text:=fdeixanum2(DESC03.Text);
if trim(DESC03.Text)<>'' then
   DESC03.Text:=FormatFloat(mcasas_pct, ValFloat(DESC03.Text));

end;

procedure TFrm_PcoLotAP.DESCFINExit(Sender: TObject);
begin
if ValFloat(DESCFIN.Text)>999 then
   DESCFIN.Text:='';

DESCFIN.Text:=fdeixanum2(DESCFIN.Text);
if trim(DESCFIN.Text)<>'' then
   DESCFIN.Text:=FormatFloat(mcasas_pct, ValFloat(DESCFIN.Text));

end;

procedure TFrm_PcoLotAP.COMISExit(Sender: TObject);
begin
if ValFloat(COMIS.Text)>999 then
   COMIS.Text:='';

COMIS.Text:=fdeixanum2(COMIS.Text);
if trim(COMIS.Text)<>'' then
   COMIS.Text:=FormatFloat(mcasas_pct, ValFloat(COMIS.Text));

end;

procedure TFrm_PcoLotAP.CLBEstoqueClick(Sender: TObject);
begin
CLBEstoque:=Valida_CheckList(CLBEstoque);

end;

procedure TFrm_PcoLotAP.edt_percAjusteExit(Sender: TObject);
begin
if (ValFloat(edt_percAjuste.Text)>999) or
   (ValFloat(edt_percAjuste.Text)<-999) then
   edt_percAjuste.Text:='';

edt_percAjuste.Text:=fdeixanum2(edt_percAjuste.Text);
if trim(edt_percAjuste.Text)<>'' then
   edt_percAjuste.Text:=FormatFloat(mcasas_pct, ValFloat(edt_percAjuste.Text));

end;

end.
