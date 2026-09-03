unit S_Tab_For;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  S_Bco, Gauges, S_SQL, Mask, lerarq,S_Tab05, S_SelEmp,
  S_Ven,S_Loc,S_Bai,S_For, CheckLst;

type
  TFrm_Tab_For = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    RG_PERIODO: TGroupBox;
    Label11: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label10: TLabel;
    Label1: TLabel;
    MES: TEdit;
    ANO: TEdit;
    Label2: TLabel;
    cidade: TLabel;
    CODLOC: TEdit;
    NOMLOC: TEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    NUMCOL: TEdit;
    Label7: TLabel;
    INTCOL: TEdit;
    Label8: TLabel;
    RG_TPCOL: TRadioGroup;
    Bevel1: TBevel;
    CB_AVPTPI: TCheckBox;
    CB_MPAGGR: TCheckBox;
    CB_GRUPO: TCheckBox;
    CB_AVPIPF: TCheckBox;
    CB_MPAGSG: TCheckBox;
    CB_SGRUPO: TCheckBox;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    bairro: TLabel;
    CODBAI: TEdit;
    NOMBAI: TEdit;
    Label3: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    Label4: TLabel;
    NIVEL: TEdit;
    Label5: TLabel;
    St_NomRel: TStaticText;
    Label12: TLabel;
    CLBTipoFor: TCheckListBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODLOCExit(Sender: TObject);
    procedure CODBAIExit(Sender: TObject);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure NIVELExit(Sender: TObject);
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
  Frm_Tab_For: TFrm_Tab_For;
implementation

uses S_Per2;


{$R *.dfm}

procedure TFrm_Tab_For.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_For.BitBtn1Click(Sender: TObject);
var
x: Integer;
minc:String;
begin
if MES.Visible then
   begin
   if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
      begin
      FMensagem('Mês Inválido.',0,['0'],0);
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
if Trim(CODFOR.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='FCODFOR';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODFOR.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(CODLOC.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='FCODLOC';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODLOC.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if Trim(CODBAI.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='FCODBAI';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODBAI.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if Trim(NIVEL.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='FSTATUS';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(NIVEL.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

x:=1;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   if valfloat(mes.Text)<1 then
      begin
      FMensagem('Mês Invalido!',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   x:=4;
   fmontadiv('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mes.Text,ANO.Text,2);
   end;


mcinst2:=fItenstCheckListBox(0,CLBTipoFor);
if trim(mcinst2)<>'' then
   mcinst2:=' FTIPOF '+mcinst2;

DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mcinst2,x));
DM2.Qr_ImpRel.Open;
if DM2.Qr_ImpRel.Eof then
   begin
   FMensagem('Nada a ser impresso na condição Solicitada',0,['0'],0);
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
psini:=0;


//*****************************************************************************
//********************** Vendas do Periodo inicio******************************
//*****************************************************************************
pVdaPer:=fVerificaVendas('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,MDT1.Text,MDT2.Text);
//*****************************************************************************
//********************** Vendas do Periodo fim   ******************************
//*****************************************************************************

plocori:='FRM_TAB_FOR';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_For.FormCreate(Sender: TObject);
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if DM1.Tb_PargerPCODLOC.Value=1 then
   begin
   cidade.Visible:=False;
   NOMLOC.Visible:=False;
   CODLOC.Visible:=False;
   end;
if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   bairro.Visible:=False;
   NOMBAI.Visible:=False;
   CODBAI.Visible:=False;
   end;


fltdvca(0,0,per2_Doc,per2_NomeRel,'CADTDV');

St_NomRel.Caption:='Relatorio: '+per2_NomeRel;

if Trim(DM1.Tb_TDVCATCPERIODO.Value)<>'' then
   begin
   RG_PERIODO.Visible:=True;
   MDT1.Text:=FormatDatetime(fdt2, date);
   MDT2.Text:=FormatDatetime(fdt2, date);
   end;
   
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

end;

procedure TFrm_Tab_For.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Tab_For.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      FMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      FMensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;
procedure TFrm_Tab_For.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;

end;

procedure TFrm_Tab_For.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Tab_For',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_For.CODLOCExit(Sender: TObject);
begin
if Trim(CODLOC.Text)='' Then
   NOMLOC.Text:='Todos...'
else
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      FMensagem('Localidade  nao cadastrado',0,['0'],0);
      CODLOC.SetFocus;
      exit;
      end
   else
      NOMLOC.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;
procedure TFrm_Tab_For.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   FMensagem('Mês Inválido.',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_For.CODBAIExit(Sender: TObject);
begin
if Trim(CODBAI.Text)='' then
   NOMBAI.Text:='Todos...'
else
   begin
   if not flqr1('BNOME','B','CADBAI','N','BCODBAI',CODBAI.Text) then
      begin
      FMensagem('Bairro Não Cadastrado!',0,['0'],0);
      CODBAI.SetFocus;
      exit;
      end
   else
      NOMBAI.Text:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_Tab_For.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBAI.Text:=fChamaBai(0,'frm_Tab_For',Key);
   if trim(CODBAI.Text)<>'' then
      CODBAIExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_For.CODFORExit(Sender: TObject);
begin
if Trim(CODFOR.Text)='' Then
   NOMFOR.Text:='Todos...'
else
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      FMensagem('Fornecedor não cadastrado',0,['0'],0);
      CODFOR.SetFocus;
      exit;
      end
   else
      NOMFOR.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_Tab_For.CODFORKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_Tab_For',Key);;
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
      key:=#0;
   end;

end;

procedure TFrm_Tab_For.NIVELExit(Sender: TObject);
begin
if Trim(NIVEL.Text)='' then
   exit;
NIVEL.Text:=IntToStr(valint(NIVEL.Text));
end;

procedure TFrm_Tab_For.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Tab_For.FormKeyDown(Sender: TObject; var Key: Word;
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

