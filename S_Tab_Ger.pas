unit S_Tab_Ger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  Gauges, S_SQL, Mask, lerarq,S_Tab05,S_Ven,S_Cli,S_Red,S_For,S_Pro,
  Grids, DBGrids, S_SelEmp,s_lerarq_geral;

type
  TFrm_Tab_Ger = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    SAIR: TBitBtn;
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
    LBLCODVEN: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    LBLCODCLI: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    LBLCODFOR: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    LBLCODRED: TLabel;
    CODRED: TEdit;
    NOMRED: TEdit;
    LBLCODPRO: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    GB_CADPRO: TGroupBox;
    GB_CADVEN: TGroupBox;
    GB_CADFOR: TGroupBox;
    GB_CADCLI: TGroupBox;
    GB_CADRED: TGroupBox;
    Qr_Ven: TQuery;
    U_Ven: TUpdateSQL;
    DBGrid1: TDBGrid;
    Src_Ven: TDataSource;
    Qr_VenVCODVEN: TFloatField;
    Qr_VenVNOME: TStringField;
    Qr_Vennomven: TStringField;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Qr_For: TQuery;
    Qr_Cli: TQuery;
    Qr_Pro: TQuery;
    Qr_Red: TQuery;
    U_Red: TUpdateSQL;
    U_Cli: TUpdateSQL;
    U_For: TUpdateSQL;
    U_Pro: TUpdateSQL;
    Src_Pro: TDataSource;
    Src_For: TDataSource;
    Src_Cli: TDataSource;
    Src_Red: TDataSource;
    Qr_ForFCODFOR: TFloatField;
    Qr_Pronompro: TStringField;
    Qr_Fornomfor: TStringField;
    Qr_Clinomcli: TStringField;
    Qr_Rednomred: TStringField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_CliCCODCLI: TFloatField;
    Qr_RedRDCODRED: TFloatField;
    St_NomRel: TStaticText;
    procedure SAIRClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODREDExit(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_VenBeforePost(DataSet: TDataSet);
    procedure Qr_VenCalcFields(DataSet: TDataSet);
    procedure Qr_ProCalcFields(DataSet: TDataSet);
    procedure Qr_ForCalcFields(DataSet: TDataSet);
    procedure Qr_CliCalcFields(DataSet: TDataSet);
    procedure Qr_RedCalcFields(DataSet: TDataSet);
    procedure Qr_ProBeforePost(DataSet: TDataSet);
    procedure Qr_ForBeforePost(DataSet: TDataSet);
    procedure Qr_CliBeforePost(DataSet: TDataSet);
    procedure Qr_RedBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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
  Frm_Tab_Ger: TFrm_Tab_Ger;
implementation

uses S_Per2, S_TCon, S_PerGer;


{$R *.dfm}

procedure TFrm_Tab_Ger.SAIRClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_Ger.BitBtn1Click(Sender: TObject);
var
x: Integer;
minc:String;
begin
if MES.Visible then
   begin
   if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
      begin
      fMensagem('Mês Inválido.',0,['0'],0);
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

if (CODVEN.Visible) and (Trim(CODVEN.Text)<>'') then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFVCAMPO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODVEN.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if (CODCLI.Visible) and (Trim(CODCLI.Text)<>'') then
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

if (CODRED.Visible) and (Trim(CODRED.Text)<>'') then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFRCAMPO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODRED.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if (CODFOR.Visible) and (Trim(CODFOR.Text)<>'') then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFFCAMPO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
   Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(CODFOR.Text);
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if (CODPRO.Visible) and (Trim(CODPRO.Text)<>'') then
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

if (GB_CADVEN.Visible)  and (Qr_Ven.RecordCount>0) then
   begin
   Qr_Ven.First;
   While not Qr_Ven.Eof do
      begin
      if Qr_VenVCODVEN.IsNull then
         begin
         Qr_Ven.Next;
         Continue;
         end;

      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFVCAMPO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='!!';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:=Qr_VenVCODVEN.AsString;
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      Qr_Ven.Next;
      end;
   end;

if (GB_CADCLI.Visible)  and (Qr_Cli.RecordCount>0) then
   begin
   Qr_Cli.First;
   While not Qr_Cli.Eof do
      begin
      if Qr_CliCCODCLI.IsNull then
         begin
         Qr_Cli.Next;
         Continue;
         end;

      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFCCAMPO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='!!';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:=Qr_CliCCODCLI.AsString;
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      Qr_Cli.Next;
      end;
   end;

if (GB_CADRED.Visible)  and (Qr_Red.RecordCount>0) then
   begin
   Qr_Red.First;
   While not Qr_Red.Eof do
      begin
      if Qr_RedRDCODRED.IsNull then
         begin
         Qr_Red.Next;
         Continue;
         end;

      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFRCAMPO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='!!';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:=Qr_RedRDCODRED.AsString;
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      Qr_Red.Next;
      end;
   end;

if (GB_CADFOR.Visible)  and (Qr_For.RecordCount>0) then
   begin
   Qr_For.First;
   While not Qr_For.Eof do
      begin
      if Qr_ForFCODFOR.IsNull then
         begin
         Qr_For.Next;
         Continue;
         end;

      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFFCAMPO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='!!';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:=Qr_ForFCODFOR.AsString;
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      Qr_For.Next;
      end;
   end;

if (GB_CADPRO.Visible)  and (Qr_Pro.RecordCount>0) then
   begin
   Qr_Pro.First;
   While not Qr_Pro.Eof do
      begin
      if Qr_ProPDCODPRO.IsNull then
         begin
         Qr_Pro.Next;
         Continue;
         end;
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCFPCAMPO.Value;
      Frm_SQl.STG_COND.Cells[02,x-1]:='!!';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:=Qr_ProPDCODPRO.AsString;
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      Qr_Pro.Next;
      end;
   end;






x:=1;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   if valfloat(mes.Text)<1 then
      begin
      fMensagem('Mês Invalido!',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   x:=4;
   fmontadiv('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mes.Text,ANO.Text,2);
   end;

DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x));
DM2.Qr_ImpRel.Open;


if DM2.Qr_ImpRel.Eof then
   begin
   fMensagem('Nada a ser impresso na condição Solicitada',0,['0'],0);
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


plocori:='FRM_TAB_BCO';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Ger.FormCreate(Sender: TObject);
var
mtop: Integer;
mlado: Integer;
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
Qr_Ven.Open;
Qr_Pro.Open;
Qr_Cli.Open;
Qr_For.Open;
Qr_Red.Open;
mlado:=0;
mtop:=130;
if DM1.Tb_TDVCATCFILVEN.Value=1 then
   begin
   mtop:=mtop+22;
   LBLCODVEN.Top:=mtop;
   CODVEN.Top   :=mtop;
   NOMVEN.Top   :=mtop;
   LBLCODVEN.Visible:=True;
   CODVEN.Visible   :=True;
   NOMVEN.Visible   :=True;
   end;
if DM1.Tb_TDVCATCFILCLI.Value=1 then
   begin
   mtop:=mtop+22;
   LBLCODCLI.Top:=mtop;
   CODCLI.Top   :=mtop;
   NOMCLI.Top   :=mtop;
   LBLCODCLI.Visible:=True;
   CODCLI.Visible   :=True;
   NOMCLI.Visible   :=True;
   end;
if DM1.Tb_TDVCATCFILRED.Value=1 then
   begin
   mtop:=mtop+22;
   LBLCODRED.Top:=mtop;
   CODRED.Top   :=mtop;
   NOMRED.Top   :=mtop;
   LBLCODRED.Visible:=True;
   CODRED.Visible   :=True;
   NOMRED.Visible   :=True;
   end;
if DM1.Tb_TDVCATCFILFOR.Value=1 then
   begin
   mtop:=mtop+22;
   LBLCODFOR.Top:=mtop;
   CODFOR.Top   :=mtop;
   NOMFOR.Top   :=mtop;
   LBLCODFOR.Visible:=True;
   CODFOR.Visible   :=True;
   NOMFOR.Visible   :=True;
   end;
if DM1.Tb_TDVCATCFILPRO.Value=1 then
   begin
   mtop:=mtop+22;
   LBLCODPRO.Top:=mtop;
   CODPRO.Top   :=mtop;
   NOMPRO.Top   :=mtop;
   LBLCODPRO.Visible:=True;
   CODPRO.Visible   :=True;
   NOMPRO.Visible   :=True;
   end;
{
if (DM1.Tb_TDVCATCFILVEN.Value=2) and
   (DM1.Tb_TDVCATCFILCLI.Value=2) and
   (DM1.Tb_TDVCATCFILRED.Value=2) and
   (DM1.Tb_TDVCATCFILFOR.Value=2) and
   (DM1.Tb_TDVCATCFILPRO.Value=2) then
   mtop:=163
else
   mtop:=258;
}
mtop:=mtop+22;
if DM1.Tb_TDVCATCFILVEN.Value=2 then
   begin
   if mlado=1 then
      GB_CADVEN.Left:=318
   else
      GB_CADVEN.Left:=4;
   GB_CADVEN.Top:=mtop;
   GB_CADVEN.Visible:=True;

   mlado:=mlado+1;
   if mlado>1 then
      begin
      mtop:=mtop+95;
      mlado:=0;
      end;
   end;
if DM1.Tb_TDVCATCFILCLI.Value=2 then
   begin
   if mlado=1 then
      GB_CADCLI.Left:=318
   else
      GB_CADCLI.Left:=4;
   GB_CADCLI.Visible:=True;
   GB_CADCLI.Top:=mtop;
   mlado:=mlado+1;
   if mlado>1 then
      begin
      mtop:=mtop+95;
      mlado:=0;
      end;
   end;
if DM1.Tb_TDVCATCFILRED.Value=2 then
   begin
   if mlado=1 then
      GB_CADRED.Left:=318
   else
      GB_CADRED.Left:=4;
   GB_CADRED.Visible:=True;
   GB_CADRED.Top:=mtop;
   mlado:=mlado+1;
   if mlado>1 then
      begin
      mtop:=mtop+95;
      mlado:=0;
      end;
   end;
if DM1.Tb_TDVCATCFILFOR.Value=2 then
   begin
   if mlado=1 then
      GB_CADFOR.Left:=318
   else
      GB_CADFOR.Left:=4;
   GB_CADFOR.Visible:=True;
   GB_CADFOR.Top:=mtop;
   mlado:=mlado+1;
   if mlado>1 then
      begin
      mtop:=mtop+95;
      mlado:=0;
      end;
   end;
if DM1.Tb_TDVCATCFILPRO.Value=2 then
   begin
   if mlado=1 then
      GB_CADPRO.Left:=318
   else
      GB_CADPRO.Left:=4;
   GB_CADPRO.Visible:=True;
   GB_CADPRO.Top:=mtop;
   mlado:=mlado+1;
   if mlado>1 then
      begin
      mtop:=mtop+95;
      mlado:=0;
      end;
   end;
mtop:=447-mtop;
Frm_Tab_Ger.Height:=570-mtop;
end;

procedure TFrm_Tab_Ger.MDT1Exit(Sender: TObject);
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

procedure TFrm_Tab_Ger.MDT2Exit(Sender: TObject);
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
procedure TFrm_Tab_Ger.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Ger.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   fMensagem('Mês Inválido.',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Ger.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_Tab_Ger',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Tab_Ger.CODVENExit(Sender: TObject);
begin
if (SAIR.Focused) then
   exit;
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todos...'
else if not flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
   begin
   fMensagem('Vendedor nao Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end
else
   NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
end;

procedure TFrm_Tab_Ger.CODCLIExit(Sender: TObject);
begin
if SAIR.Focused  then
   exit;
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
   begin
   fMensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   exit;
   end
else
   NOMCLI.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.CODREDExit(Sender: TObject);
begin
if SAIR.Focused  then
   exit;
if Trim(CODRED.Text)='' then
   NOMRED.Text:='Todas...'
else if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
   begin
   fMensagem('Rede não Cadastrado!',0,['0'],0);
   CODRED.SetFocus;
   exit;
   end
else
   NOMRED.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.CODREDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_tab_ger',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Tab_Ger.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text :=fChamaFor(0,'frm_Tab_Ger',Key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Tab_Ger.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_Tab_Ger',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Tab_Ger.CODFORExit(Sender: TObject);
begin
if SAIR.Focused  then
   exit;
if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
   begin
   fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
   CODFOR.SetFocus;
   exit;
   end
else
   NOMFOR.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.CODPROExit(Sender: TObject);
begin
if SAIR.Focused  then
   exit;
if Trim(CODPRO.Text)='' then
   NOMPRO.Text:='Todos...'
else if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
   begin
   fMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end
else
   NOMPRO.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_Tab_Ger',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Tab_Ger.Qr_VenBeforePost(DataSet: TDataSet);
begin
if not flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_VenVCODVEN.AsString) then
   begin
   fMensagem('Vendedor não Encontrado!',0,['0'],0);
   Qr_VenVCODVEN.Value:=0;
   abort;
   end;
end;

procedure TFrm_Tab_Ger.Qr_VenCalcFields(DataSet: TDataSet);
begin
if flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_VenVCODVEN.AsString) then
   Qr_Vennomven.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.Qr_ProCalcFields(DataSet: TDataSet);
begin
if flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Qr_ProPDCODPRO.AsString) then
   Qr_Pronompro.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.Qr_ForCalcFields(DataSet: TDataSet);
begin
if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_ForFCODFOR.AsString) then
   Qr_Fornomfor.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.Qr_CliCalcFields(DataSet: TDataSet);
begin
if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_CliCCODCLI.AsString) then
   Qr_Clinomcli.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.Qr_RedCalcFields(DataSet: TDataSet);
begin
if flqr1('RDNOME','RD','CADRED','N','RDCODRED',Qr_RedRDCODRED.AsString) then
   Qr_Rednomred.Text:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_Tab_Ger.Qr_ProBeforePost(DataSet: TDataSet);
begin
if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',Qr_ProPDCODPRO.AsString) then
   begin
   fMensagem('Produto não Encontrado!',0,['0'],0);
   Qr_ProPDCODPRO.Value:=0;
   abort;
   end;

end;

procedure TFrm_Tab_Ger.Qr_ForBeforePost(DataSet: TDataSet);
begin
if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_ForFCODFOR.AsString) then
   begin
   fMensagem('Fornecedor não Encontrado!',0,['0'],0);
   Qr_ForFCODFOR.Value:=0;
   abort;
   end;

end;

procedure TFrm_Tab_Ger.Qr_CliBeforePost(DataSet: TDataSet);
begin
if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_CliCCODCLI.AsString) then
   begin
   fMensagem('Cliente não Encontrado!',0,['0'],0);
   Qr_CliCCODCLI.Value:=0;
   abort;
   end;

end;

procedure TFrm_Tab_Ger.Qr_RedBeforePost(DataSet: TDataSet);
begin
if not flqr1('RDNOME','RD','CADRED','N','RDCODRED',Qr_RedRDCODRED.AsString) then
   begin
   fMensagem('Rede não Encontrado!',0,['0'],0);
   Qr_RedRDCODRED.Value:=0;
   abort;
   end;

end;

procedure TFrm_Tab_Ger.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Qr_Ven.Close;
Qr_Pro.Close;
Qr_Cli.Close;
Qr_For.Close;
Qr_Red.Close;
end;

procedure TFrm_Tab_Ger.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;


end;

procedure TFrm_Tab_Ger.FormKeyDown(Sender: TObject; var Key: Word;
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

