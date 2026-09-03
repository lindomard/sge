unit S_Tab_Ven;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  S_Bco, Gauges, S_SQL, Mask, lerarq,S_Tab05,
  S_Ven,S_Loc,S_Bai,S_Pro,S_Cli, S_SelEmp,s_lerarq_geral;

type
  TFrm_Tab_Ven = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
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
    NOMVEN: TEdit;
    Label13: TLabel;
    CODVEN: TEdit;
    RG_PERIODO: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    gb_cadpro: TGroupBox;
    Label3: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    gb_filcli: TGroupBox;
    Label4: TLabel;
    CODCLI: TEdit;
    nomcli: TEdit;
    St_NomRel: TStaticText;
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
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
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
  Frm_Tab_Ven: TFrm_Tab_Ven;
implementation

uses S_Per2;


{$R *.dfm}

procedure TFrm_Tab_Ven.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_Ven.BitBtn1Click(Sender: TObject);
var
x: Integer;
minc:String;
begin
if MES.Visible then
   begin
   if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
      begin
      MessageDlg('Mês Inválido.',mtWarning,[mbOk],0);
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
if Trim(CODVEN.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='VCODVEN';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODVEN.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(CODLOC.Text)<>'' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:='VCODLOC';
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
   Frm_SQL.STG_COND.Cells[01,x-1]:='VCODBAI';
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODBAI.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if (DM1.Tb_TDVCATCFILPRO.Value=1) and (ValInt(CODPRO.Text)>0) then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFPCAMPO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODPRO.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

if (DM1.Tb_TDVCATCFILCLI.Value=1) and (ValInt(CODCLI.Text)>0) then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFCCAMPO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODCLI.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;

x:=1;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   if valfloat(mes.Text)<1 then
      begin
      MessageDlg('Mês Invalido!',mtWarning,[mbOk],0);
      MES.SetFocus;
      exit;
      end;
   x:=4;
   fmontadiv('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mes.Text,ANO.Text,2);
   end;

DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,fEmpresas_Selecionadas('CADVEN','VCODEMP',Form_SelEmp.CLB_EMPRESAS),x));
DM2.Qr_ImpRel.Open;
DM2.Qr_ImpRel.Sql.SaveToFile(mpastatemp + 'SQL.txt');

if DM2.Qr_ImpRel.Eof then
   begin
   MessageDlg('Nada a ser impresso na condição Solicitada',mtWarning,[mbOk],0);
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



plocori:='FRM_TAB_Ven';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Ven.FormCreate(Sender: TObject);
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

St_NomRel.Caption:='Relatorio: '+per2_NomeRel;

fltdvca(0,0,per2_Doc,per2_NomeRel,'CADTDV');


if Trim(DM1.Tb_TDVCATCPERIODO.Value)<>'' then
   begin
   RG_PERIODO.Visible:=True;
   MDT1.Text:=FormatDatetime(fdt2, date);
   MDT2.Text:=FormatDatetime(fdt2, date);
   
   end;
if DM1.Tb_TDVCATCFILPRO.Value=1 then
   gb_cadpro.Visible:=true;
if DM1.Tb_TDVCATCFILCLI.Value=1 then
   gb_filcli.Visible:=true;

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

procedure TFrm_Tab_Ven.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Tab_Ven.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      fMensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fMensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;
procedure TFrm_Tab_Ven.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Ven.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaLoc(0,'frm_Tab_Ven',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Ven.CODLOCExit(Sender: TObject);
begin
if Trim(CODLOC.Text)='' Then
   NOMLOC.Text:='Todos...'
else
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      fMensagem('Localidade  nao cadastrado',0,['0'],0);
      CODLOC.SetFocus;
      exit;
      end
   else
      NOMLOC.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;
procedure TFrm_Tab_Ven.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   MessageDlg('Mês Inválido.',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Ven.CODBAIExit(Sender: TObject);
begin
if Trim(CODBAI.Text)='' then
   NOMBAI.Text:='Todos...'
else
   begin
   if not flqr1('BNOME','B','CADBAI','N','BCODBAI',CODBAI.Text) then
      begin
      fMensagem('Bairro Não Cadastrado!',0,['0'],0);
      CODBAI.SetFocus;
      exit;
      end
   else
      NOMBAI.Text:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_Tab_Ven.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBAI.Text:=fChamaBai(0,'frm_Tab_Ven',Key);
   if trim(CODBAI.Text)<>'' then
      CODBAIExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Ven.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' Then
   NOMVEN.Text:='Todos...'
else
   begin
   if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      fMensagem('Vendedor nao cadastrado',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      exit;
      end
   else
      NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_Tab_Ven.CODVENKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Tab_Ven',Key);
if trim(CODVEN.Text)<>'' then
   CODVENExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_Tab_Ven.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)='' Then
   NOMPRO.Text:='Todos...'
else
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
      begin
      MessageDlg('Produto não Cadastrado!',mtWarning,[mbOk],0);
      CODPRO.SetFocus;
      exit;
      end
   else
      NOMPRO.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_Tab_Ven.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_Tab_Ven',key);
if trim(CODPRO.Text)<>'' then
   CODPROExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;



end;

procedure TFrm_Tab_Ven.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' Then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      exit;
      end
   else
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
   end;

end;

procedure TFrm_Tab_Ven.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Tab_Ven',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Tab_Ven.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Tab_Ven.FormKeyDown(Sender: TObject; var Key: Word;
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

