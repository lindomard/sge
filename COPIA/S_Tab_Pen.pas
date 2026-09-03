unit S_Tab_Pen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  Gauges, S_SQL, Mask, lerarq,S_Tab05,S_Cli,S_Bco,S_Ven, ComCtrls, S_SelEmp
  ,s_lerarq_geral;

type
  TFrm_Tab_Pen = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    St_NomRel: TStaticText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    NUMCOL: TEdit;
    Label7: TLabel;
    INTCOL: TEdit;
    Label8: TLabel;
    RG_TPCOL: TRadioGroup;
    CB_GRUPO: TCheckBox;
    Bevel1: TBevel;
    CB_SGRUPO: TCheckBox;
    Bevel4: TBevel;
    Bevel2: TBevel;
    CB_AVPTPI: TCheckBox;
    CB_MPAGGR: TCheckBox;
    CB_AVPIPF: TCheckBox;
    CB_MPAGSG: TCheckBox;
    Bevel3: TBevel;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    RG_PERIODO: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    TabSheet3: TTabSheet;
    GB_FILTROS_GRUPOS: TGroupBox;
    StaticText2: TStaticText;
    CODGPRO: TEdit;
    lbx_codgpro: TListBox;
    OMITIR_GPRO: TCheckBox;
    StaticText3: TStaticText;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    StaticText1: TStaticText;
    CODBCO: TEdit;
    lbx_codbco: TListBox;
    OMITIR_BCO: TCheckBox;
    lbl_nompro: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODGPROExit(Sender: TObject);
    procedure CODGPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODVENExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Form_SelEmp: TFrm_SelEmp;
  public
    { Public declarations }
  end;

var
  Frm_Tab_Pen: TFrm_Tab_Pen;
implementation

uses S_Per2, S_GPro;


{$R *.dfm}

procedure TFrm_Tab_Pen.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_Pen.BitBtn1Click(Sender: TObject);
var
x: Integer;
begin
if MES.Visible then
   begin
   if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
      begin
      fmensagem('Mês Inválido.',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   end;
mpaggr:=iif(CB_MPAGGR.Checked,true,false);
mpagsg:=iif(CB_MPAGSG.Checked,true,false);
rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
fnumcol:=StrtoInt('0'+NUMCOL.Text);
fintcol:=StrToInt('0'+INTCOL.Text);
ftpcol :=RG_TPCOL.ItemIndex;
Frm_SQL.STG_COND.RowCount:=1;
Frm_SQl.STG_COND.rows[0].Clear;
if Trim(MDT1.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT1.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT2.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

mcinst4:='';
mcinst :='';
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PECODCLI '+mcinst2;
   mcinst:=' and ';
   end;

mcinst :='';
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PECODVEN '+mcinst2;
   mcinst:=' and ';
   end;

mcinst :='';
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODFOR '+mcinst2;
   mcinst:=' and ';
   end;

mcinst :='';
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODPRO '+mcinst2;
   mcinst:=' and ';
   end;


mcinst :='';
mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' P1BANCO '+mcinst2;
   mcinst:=' and ';
   end;

//mcinst :='';
mcinst2:=fItensListBox(0,lbx_codgpro,OMITIR_GPRO);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' PDCODGRU '+mcinst2;
   mcinst:=' and ';
   end;

x:=1;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   if valfloat(mes.Text)<1 then
      begin
      fmensagem('Mês Invalido!',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   x:=4;
   fmontadiv('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mes.Text,ANO.Text,2);
   end;

DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mcinst4,x));
//DM2.Qr_ImpRel.SQL.SaveToFile('C:\SQL.TXT');
DM2.Qr_ImpRel.Open;

if DM2.Qr_ImpRel.Eof then
   begin
   fmensagem('Nada a ser impresso na condição Solicitada',0,['0'],0);
   exit;
   end;
if CB_GRUPO.Checked  then pimpg:=True  else pimpg :=False;
if CB_SGRUPO.Checked then pimpsg:=True else pimpsg:=False;
if CB_AVPTPI.Checked then pavptpi:=true else pavptpi:=False;
if CB_AVPIPF.Checked then pavpipf:= true else pavpipf:=False;
if RG_PERIODO.Visible then
   pperiodo:=fperiodo(0,mdt1.text,mdt2.Text)
else
   pperiodo:='';
plocori:='FRM_TAB_PEN';
GroupBox2.Visible:=True;

//*****************************************************************************
//********************** Vendas do Periodo inicio******************************
//*****************************************************************************
pVdaPer:=fVerificaVendas('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,MDT1.Text,MDT2.Text);
//*****************************************************************************
//********************** Vendas do Periodo fim   ******************************
//*****************************************************************************

ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Pen.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

St_NomRel.Caption:='Relatorio: '+per2_NomeRel;

fltdvca(0,0,per2_Doc,per2_NomeRel,'CADTDV');

if Trim(DM1.Tb_TDVCATCPERIODO.Value)<>'' then
   begin
   RG_PERIODO.Visible:=True;
   MDT1.Text:=FormatDatetime(fdt2, date);
   MDT2.Text:=FormatDatetime(fdt2, date);
   end;
if DM1.Tb_TDVCATCFILGPRO.AsInteger>0 then
   GB_FILTROS_GRUPOS.Visible:=true
else
   GB_FILTROS_GRUPOS.Visible:=false;

if DM1.Tb_TDVCATCFILPRO.AsInteger>0 then
   mboolean:=true
else
   mboolean:=false;
lbx_codpro.Visible:=mboolean;
lbl_nompro.Visible:=mboolean;
OMITIR_PRO.Visible:=mboolean;


if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   MES.Text      :=FormatDateTime('mm',Date);
   ANO.Text      :=FormatDateTime('yyyy',date);
   MES.Visible   :=True;
   ANO.Visible   :=True;
   label1.Visible:=True;
   label2.Visible:=True;
   end;
NUMCOL.Text       :=DM1.Tb_TDVCATCNUMCOL.AsString;
INTCOL.Text       :=DM1.Tb_TDVCATCINTCOL.AsString;
RG_TPCOL.ItemIndex:=DM1.Tb_TDVCATCTPCOL.AsInteger;
CB_GRUPO.Checked  :=DM1.Tb_TDVCATCIMPG.Value=0;
CB_SGRUPO.Checked :=DM1.Tb_TDVCATCIMPSG.Value=0;
CB_AVPTPI.Checked :=DM1.Tb_TDVCATCAVPTPI.Value=0;
CB_AVPIPF.Checked :=DM1.Tb_TDVCATCAVPIPF.Value=0;
if DM1.Tb_TDVCATCMPAGGR.Value=1 then
   CB_MPAGGR.Checked:=True
else
   CB_MPAGGR.Checked:=False;
Top:=0;

end;

procedure TFrm_Tab_Pen.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Tab_Pen.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      exit;
      end;
   end;

end;
procedure TFrm_Tab_Pen.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Pen.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   fmensagem('Mês Inválido.',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Pen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Tab_Pen.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcli.ItemIndex:=lbx_codcli.Items.Count-1;
      CODCLI.text := '';
      CODCLI.SetFocus;
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_Tab_Pen.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Tab_Pen.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_Tab_Pen.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codbco.ItemIndex:=lbx_codbco.Items.Count-1;
      CODBCO.text := '';
      CODBCO.SetFocus;
      end
   else
      begin
      fmensagem('Banco  não Cadastrado!',0,['0'],0);
      CODBCO.text := '';
      CODBCO.SetFocus;
      end;
   end;


end;

procedure TFrm_Tab_Pen.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_Tab_Pen',Key);
   CODBCOExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Tab_Pen.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_Tab_Pen.lbx_codgproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codgpro.ItemIndex>=0 then
      lbx_codgpro.Items.Delete(lbx_codgpro.ItemIndex);

end;

procedure TFrm_Tab_Pen.CODGPROExit(Sender: TObject);
begin
CODGPRO.Text:=fdeixanum2(CODGPRO.Text);
if Trim(CODGPRO.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGPRO.Text) then
      begin
      fmensagem('Grupo não cadastrado!',0,['0'],0);
      CODGPRO.SetFocus;
      end
   else
      begin
      lbx_codgpro.Items.Add(FormatFloat('0000000',StrToFloat(CODGPRO.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODGPRO.text := '';
      CODGPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Pen.CODGPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGPRO.Text:=fChamaGPro(0,'frm_Tab_Pen',Key);
   CODGPROExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Tab_Pen.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Tab_Pen',Key);
   CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_Tab_Pen.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);
end;

procedure TFrm_Tab_Pen.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codven.ItemIndex:=lbx_codven.Items.Count-1;
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;
end;

procedure TFrm_Tab_Pen.CODFORExit(Sender: TObject);
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
      codfor.setfocus;
      end;
   end;
end;

procedure TFrm_Tab_Pen.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;
end;

procedure TFrm_Tab_Pen.CODFORMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_Tab_Pen.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);
end;

procedure TFrm_Tab_Pen.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      codpro.setfocus;
      end;

   end;

end;

procedure TFrm_Tab_Pen.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_Tab_Pen.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

end.

