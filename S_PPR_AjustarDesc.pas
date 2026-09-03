unit S_PPR_AjustarDesc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_DM1, Buttons,lerarq,func;

type
  TFrm_PPR_AjustarDesc = class(TForm)
    GB_AJUSTAR: TGroupBox;
    AJUSTARPCO: TEdit;
    CB_DIMINUIR: TCheckBox;
    Label1: TLabel;
    DESC01: TEdit;
    DESC02: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DESC03: TEdit;
    Label4: TLabel;
    DESCFIN: TEdit;
    Label5: TLabel;
    COMIS: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    CODCON: TEdit;
    lbx_codcon: TListBox;
    OMITIR_CON: TCheckBox;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    CB_ATUPCO: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure CODFORExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codconKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DESC01Exit(Sender: TObject);
    procedure DESC02Exit(Sender: TObject);
    procedure DESC03Exit(Sender: TObject);
    procedure DESCFINExit(Sender: TObject);
    procedure COMISExit(Sender: TObject);
    procedure AJUSTARPCOExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PPR_AjustarDesc: TFrm_PPR_AjustarDesc;
  mAjustarDesc: boolean=false;
implementation

{$R *.dfm}

procedure TFrm_PPR_AjustarDesc.CODFORExit(Sender: TObject);
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

procedure TFrm_PPR_AjustarDesc.CODGRUExit(Sender: TObject);
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

procedure TFrm_PPR_AjustarDesc.CODRAMExit(Sender: TObject);
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

procedure TFrm_PPR_AjustarDesc.CODCONExit(Sender: TObject);
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

procedure TFrm_PPR_AjustarDesc.CODTIPExit(Sender: TObject);
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

procedure TFrm_PPR_AjustarDesc.CODFORKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFrm_PPR_AjustarDesc.CODGRUKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFrm_PPR_AjustarDesc.CODRAMKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFrm_PPR_AjustarDesc.CODCONKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFrm_PPR_AjustarDesc.CODTIPKeyPress(Sender: TObject;
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

procedure TFrm_PPR_AjustarDesc.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_PPR_AjustarDesc.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_PPR_AjustarDesc.lbx_codramKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_PPR_AjustarDesc.lbx_codconKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcon.ItemIndex>=0 then
      lbx_codcon.Items.Delete(lbx_codcon.ItemIndex);

end;

procedure TFrm_PPR_AjustarDesc.lbx_codtipKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);

end;

procedure TFrm_PPR_AjustarDesc.BitBtn2Click(Sender: TObject);
begin
mAjustarDesc:=false;
close;
end;

procedure TFrm_PPR_AjustarDesc.BitBtn1Click(Sender: TObject);
begin
mAjustarDesc:=true;
close;

end;

procedure TFrm_PPR_AjustarDesc.DESC01Exit(Sender: TObject);
begin
if ValFloat(DESC01.Text)>999 then
   DESC01.Text:='';
DESC01.Text:=fdeixanum2(DESC01.Text);
if trim(DESC01.Text)<>'' then
   DESC01.Text:=FormatFloat(mcasas_pct, ValFloat(DESC01.Text));
end;

procedure TFrm_PPR_AjustarDesc.DESC02Exit(Sender: TObject);
begin
if ValFloat(DESC02.Text)>999 then
   DESC03.Text:='';

DESC02.Text:=fdeixanum2(DESC02.Text);
if trim(DESC02.Text)<>'' then
   DESC02.Text:=FormatFloat(mcasas_pct, ValFloat(DESC02.Text));

end;

procedure TFrm_PPR_AjustarDesc.DESC03Exit(Sender: TObject);
begin
if ValFloat(DESC03.Text)>999 then
   DESC03.Text:='';

DESC03.Text:=fdeixanum2(DESC03.Text);
if trim(DESC03.Text)<>'' then
   DESC03.Text:=FormatFloat(mcasas_pct, ValFloat(DESC03.Text));

end;

procedure TFrm_PPR_AjustarDesc.DESCFINExit(Sender: TObject);
begin
if ValFloat(DESCFIN.Text)>999 then
   DESCFIN.Text:='';

DESCFIN.Text:=fdeixanum2(DESCFIN.Text);
if trim(DESCFIN.Text)<>'' then
   DESCFIN.Text:=FormatFloat(mcasas_pct, ValFloat(DESCFIN.Text));

end;

procedure TFrm_PPR_AjustarDesc.COMISExit(Sender: TObject);
begin
if ValFloat(COMIS.Text)>999 then
   COMIS.Text:='';

COMIS.Text:=fdeixanum2(COMIS.Text);
if trim(COMIS.Text)<>'' then
   COMIS.Text:=FormatFloat(mcasas_pct, ValFloat(COMIS.Text));

end;

procedure TFrm_PPR_AjustarDesc.AJUSTARPCOExit(Sender: TObject);
begin
if ValFloat(AJUSTARPCO.Text)<0 then
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text)*-1)
else
   AJUSTARPCO.Text:=FormatFloat(mcasas_pct, ValFloat(AJUSTARPCO.Text));

end;

procedure TFrm_PPR_AjustarDesc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.
