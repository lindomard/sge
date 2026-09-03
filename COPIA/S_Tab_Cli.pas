unit S_Tab_Cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  S_Bco, Gauges, S_SQL, Mask, lerarq, s_lerarq_geral ,S_Tab05, S_SelEmp,
  ComCtrls,S_RCli, CheckLst,s_Red,s_con;

type
  TFrm_Tab_Cli = class(TForm)
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    NUMCOL: TEdit;
    INTCOL: TEdit;
    RG_TPCOL: TRadioGroup;
    CB_AVPTPI: TCheckBox;
    CB_MPAGGR: TCheckBox;
    CB_GRUPO: TCheckBox;
    CB_AVPIPF: TCheckBox;
    CB_MPAGSG: TCheckBox;
    CB_SGRUPO: TCheckBox;
    St_NomRel: TStaticText;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    lbl_codred: TStaticText;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    StaticText1: TStaticText;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    StaticText2: TStaticText;
    CODCV: TEdit;
    lbx_codcv: TListBox;
    OMITIR_CV: TCheckBox;
    StaticText9: TStaticText;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    lbl_cidade: TStaticText;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    TsOutrosFiltros: TTabSheet;
    lbl_codbai: TStaticText;
    CODBAI: TEdit;
    lbx_codbai: TListBox;
    OMITIR_BAI: TCheckBox;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    situacao_cli: TCheckListBox;
    Label3: TLabel;
    sbn_coduf: TSpeedButton;
    gb_cadpro: TGroupBox;
    Label14: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    StaticText3: TStaticText;
    PALAVRA: TEdit;
    Label4: TLabel;
    LIMITE_INI: TEdit;
    Label5: TLabel;
    LIMITE_FIN: TEdit;
    Label9: TLabel;
    CB_STATUS: TCheckListBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure CODVEN2KeyPress(Sender: TObject; var Key: Char);
    procedure busca_periodo(pstatus : string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODREDExit(Sender: TObject);
    procedure CODRAMExit(Sender: TObject);
    procedure CODCVExit(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODBAIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbn_codufClick(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure CODBAIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PALAVRAExit(Sender: TObject);
    procedure LIMITE_INIExit(Sender: TObject);
    procedure LIMITE_FINExit(Sender: TObject);
    procedure LIMITE_INIKeyPress(Sender: TObject; var Key: Char);
    procedure situacao_cliClick(Sender: TObject);
    procedure CB_STATUSClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Tab_Cli: TFrm_Tab_Cli;
  dia1 : real;
  mes1 : real;
  ano1 : real;

  dia2 : real;
  mes2 : real;
  ano2 : real;
  dataaux1 : TDateTime;
  dataaux2 : TDateTime;
  dataaux3 : string;
implementation

uses S_Per2, S_UF, S_DM6;


{$R *.dfm}

procedure TFrm_Tab_Cli.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_Cli.BitBtn1Click(Sender: TObject);
var
x: Integer;
minc:String;
i: integer;
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
   mcinst4:=mcinst4+mcinst+' CCODCLI '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CCODRED '+mcinst2;
   mcinst:=' and ';
   end;


mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CCODRAM '+mcinst2;
   mcinst:=' and ';
   end;


mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CCODCV '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CUF '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CCODLOC '+mcinst2;
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codbai,OMITIR_BAI);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CCODBAI '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CCODVEN '+mcinst2;
   mcinst:=' and ';
   end;
if trim(PALAVRA.Text)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CRAZAO like '+chr(39)+PALAVRA.Text+'%'+chr(39);
   mcinst:=' and ';
   end;


mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   mcinst3:=mcinst+'( CCODVEN '+mcinst2;
   mcinst3:=mcinst3+' or CCODV02 '+mcinst2;
   mcinst3:=mcinst3+' or CCODV03 '+mcinst2;
   mcinst3:=mcinst3+' or CCODV04 '+mcinst2+')';
   mcinst:=' and ';
   mcinst4:=mcinst4+mcinst3;
   end;



mcinst2:=fItenstCheckListBox(0,situacao_cli);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CSITCLI '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItenstCheckListBox(0,CB_STATUS);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CSTATUS '+mcinst2;
   mcinst:=' and ';
   end;



if (DM1.Tb_TDVCATCFILPRO.Value=1) and (ValInt(CODPRO.Text)>0) then
   begin
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      begin
      mcinst4:=mcinst4+mcinst+' PDCODPRO '+mcinst2;
      mcinst:=' and ';
      end;
   end;

mcinst2:='';
if ValFloat(LIMITE_INI.Text)<>0 then
   mcinst2:='CLCRED>='+mudavp(FloatToStr(ValFloat(LIMITE_INI.Text)));
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+mcinst2;
   mcinst:=' and ';
   end;

if ValFloat(LIMITE_FIN.Text)<>0 then
   mcinst2:='CLCRED<='+mudavp(FloatToStr(ValFloat(LIMITE_FIN.Text)));
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+mcinst2;
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
//DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x));
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mcinst4,x));

//DM2.Qr_ImpRel.SQL.SAVETOFILE('C:\SQL_Perso.TXT');

DM2.Qr_ImpRel.Open;

//Memo1.Text:=frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x);

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
psini:=0;

//*****************************************************************************
//********************** Vendas do Periodo inicio******************************
//*****************************************************************************
pVdaPer:=fVerificaVendas('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,MDT1.Text,MDT2.Text);
//*****************************************************************************
//********************** Vendas do Periodo fim   ******************************
//*****************************************************************************
{
IF RG_PERIODO.Visible THEN
   BEGIN

    la_tabelas  :='';
    la_Join     :='';
    la_instrucao:='';

    if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
       la_Empresas:=''
    else
       la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

  for i := 1 to 2 do
  begin
    if i = 1 then
       busca_periodo(inttostr(i))
       else
       begin
//           dataaux3 := '01'+copy(mdt1.text,3,8);
           dataaux1 := StrToDate('01'+copy(mdt1.text,3,8));
           dataaux2 := StrToDate(mdt2.text);
       end;
    dm1.query1.close;
    dm1.query1.sql.clear;
    dm1.Query1.sql.add('select sum(P2QTD)p2qtd from cadp01,cadp02 where ');
    dm1.Query1.sql.add('    p1status <> 9 and ');
    dm1.Query1.sql.add(iif(la_empresas='','', la_empresas+' and '));
    dm1.Query1.sql.add('    P1CODEMP=P2CODEMP ');
    dm1.Query1.sql.add('and P1DATDOC,'+chr(39)+fdt+chr(39)+') >= '+''''+datetostr(dataaux1)+'''');
    dm1.Query1.sql.add('and P1DATDOC,'+chr(39)+fdt+chr(39)+') <= '+''''+datetostr(dataaux2)+'''');
    dm1.Query1.sql.add('and p2chave  = p1chave  ');
    dm1.Query1.sql.add('and P2LOTSEQ = P1LOTSEQ ');
    dm1.Query1.sql.add('and P2ORDEM  = P1ORDEM  ');
    dm1.Query1.sql.add('and P1EMIDOC = 1        ');
    dm1.Query1.sql.add('and P1TIPO   = 01       ');
    dm1.Query1.open;
    if i = 1 then pqtdeMesAntAtedia := dm1.query1.fields[0].AsFloat;
    if i = 2 then pqtdeMesAtedia    := dm1.query1.fields[0].AsFloat;
    end;

END;
}
plocori:='FRM_TAB_CLI';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Cli.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

if DM1.Tb_PargerPCODLOC.Value<>1 then
   begin
   lbl_cidade.Visible:=False;
   lbx_codloc.Visible:=False;
   CODLOC.Visible    :=False;
   end;

if DM1.Tb_PargerPCODBAI.Value<>1 then
   begin
   lbl_codbai.Visible:=False;
   lbx_codbai.Visible:=False;
   CODBAI.Visible:=False;
   end;

if DM1.Tb_PargerPREDE.Value<>1 then
   begin
   lbl_codred.Visible:=False;
   lbx_codred.Visible:=False;
   CODRED.Visible:=False;
   end;


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
if DM1.Tb_TDVCATCFILPRO.Value=1 then
   gb_cadpro.Visible:=true;
   

end;

procedure TFrm_Tab_Cli.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Tab_Cli.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;
procedure TFrm_Tab_Cli.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Cli.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   fmensagem('Mês Inválido.',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Cli.CODVEN2KeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Tab_Ldr',Key);
   key:=#0;
   end;
end;

procedure TFrm_Tab_Cli.busca_periodo(pstatus : string);
var i : integer;
begin
//       dia1 := StrToFloat(copy(mdt1.text,1,2));
    dia1 := 1;
    mes1 := strtofloat(copy(mdt1.text,4,2));
    ano1 := strtofloat(copy(mdt1.text,7,4));
    mes1 := mes1-1;
    if mes1=0 then
    begin
       mes1 := 12;
       ano1 := ano1-1;
    end;

    dia2 := StrToFloat(copy(mdt2.text,1,2));
    mes2 := strtofloat(copy(mdt2.text,4,2));
    ano2 := strtofloat(copy(mdt2.text,7,4));
    mes2 := mes2-1;
    if mes2=0 then
    begin
       mes2 := 12;
       ano2 := ano2-1;
    end;

///// para fevereiro

    if (dia1=30)or(dia1=31) then
    if mes1=2 then
    begin
        for i := 1 to 29 do
        begin
           try
             dataaux1 := strtodate(formatfloat('00',dia1)+'/'+formatfloat('00',mes1)+'/'+formatfloat('0000',ano1));
           except
             dia1:= dia1-1;
           end;

        end;
    end;

    if (dia2=30)or(dia2=31) then
    if mes2=2 then
    begin
        for i := 1 to 29 do
        begin
           try
             dataaux2 := strtodate(formatfloat('00',dia2)+'/'+formatfloat('00',mes2)+'/'+formatfloat('0000',ano2));
           except
             dia2:= dia2-1;
           end;

        end;
    end;
/////////////////////////
///// para fevereiro

    if dia1=31 then
    if mes1<>2 then
    begin
        for i := 1 to 31 do
        begin
           try
             dataaux1 := strtodate(formatfloat('00',dia1)+'/'+formatfloat('00',mes1)+'/'+formatfloat('0000',ano1));
           except
             dia1:= dia1-1;
           end;

        end;
    end;

    if dia2=31 then
    if mes2<>2 then
    begin
        for i := 1 to 31 do
        begin
           try
             dataaux2 := strtodate(formatfloat('00',dia2)+'/'+formatfloat('00',mes2)+'/'+formatfloat('0000',ano2));
           except
             dia2:= dia2-1;
           end;

        end;
    end;
/////////////////////////

    dataaux1 := strtodate(formatfloat('00',dia1)+'/'+formatfloat('00',mes1)+'/'+formatfloat('0000',ano1));
    dataaux2 := strtodate(formatfloat('00',dia2)+'/'+formatfloat('00',mes2)+'/'+formatfloat('0000',ano2));
end;

procedure TFrm_Tab_Cli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Tab_Cli.SpeedButton5Click(Sender: TObject);
begin
CODUF.Text:=fChamaUF(0,'frm_Tab_Ldr','');
Frm_UF.Free;

end;

procedure TFrm_Tab_Cli.CODCLIExit(Sender: TObject);
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

procedure TFrm_Tab_Cli.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Tab_Cli.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_Tab_Cli.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codred.ItemIndex:=lbx_codred.Items.Count-1;

      CODRED.text := '';
      CODRED.SetFocus;
      end
   else
      begin
      fmensagem('Rede não Cadastrado!',0,['0'],0);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Cli.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if Trim(CODRAM.Text)<>'' then
   begin
   if flqr1('RNOME','R','CADRCLI','N','RCODRAM',CODRAM.Text) then
      begin
      lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codram.ItemIndex:=lbx_codram.Items.Count-1;

      CODRAM.text := '';
      CODRAM.SetFocus;
      end
   else
      begin
      fmensagem('Ramo de cliente não Cadastrado!',0,['0'],0);
      CODRAM.text := '';
      CODRAM.SetFocus;
      end;
   end;


end;

procedure TFrm_Tab_Cli.CODCVExit(Sender: TObject);
begin
CODCV.Text:=fdeixanum2(CODCV.Text);
if Trim(CODCV.Text)<>'' then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCV.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcv.ItemIndex:=lbx_codcv.Items.Count-1;

      CODCV.text := '';
      CODCV.SetFocus;
      end
   else
      begin
      fmensagem('Convênio não Cadastrado!',0,['0'],0);
      CODCV.text := '';
      CODCV.SetFocus;
      end;
   end;


end;

procedure TFrm_Tab_Cli.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if flqr1('PNOM,PUF','P','CADUF','C','PUF',CODUF.Text) then
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      lbx_coduf.ItemIndex:=lbx_coduf.Items.Count-1;

      CODUF.text := '';
      CODUF.SetFocus;
      end
   else
      begin
      fmensagem('Estado não Cadastrado!',0,['0'],0);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;


end;

procedure TFrm_Tab_Cli.CODLOCExit(Sender: TObject);
begin
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      lbx_codloc.Items.Add(CODLOC.Text
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codloc.ItemIndex:=lbx_codloc.Items.Count-1;

      CODLOC.text := '';
      CODLOC.SetFocus;
      end
   else
      begin
      fmensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Cli.CODBAIExit(Sender: TObject);
begin
if Trim(CODBAI.Text)<>'' then
   begin
   if flqr1('BNOME','B','CADBAI','N','BCODBAI',CODBAI.Text) then
      begin
      lbx_codbai.Items.Add(CODBAI.Text
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codbai.ItemIndex:=lbx_codbai.Items.Count-1;

      CODBAI.text := '';
      CODBAI.SetFocus;
      end
   else
      begin
      fmensagem('Bairro não Cadastrada!',0,['0'],0);
      CODBAI.text := '';
      CODBAI.SetFocus;
      end;
   end;

end;

procedure TFrm_Tab_Cli.CODVENExit(Sender: TObject);
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

procedure TFrm_Tab_Cli.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=CODRED.Text;
   CODREDExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Cli.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamoCli(0,'frm_rcpag',key);
   CODRAMExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Cli.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCV.Text:=fChamaCV(0,'frm_cabc',key);
   CODCVExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Cli.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   sbn_coduf.Click;

end;

procedure TFrm_Tab_Cli.sbn_codufClick(Sender: TObject);
begin
CODUF.Text :=fChamaUF(0,'frm_Tab_Cil','');
CODUFExit(Self);

end;

procedure TFrm_Tab_Cli.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Tab_CLi',Key);
   CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Cli.CODBAIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBAI.Text:=fChamaBai(0,'frm_Tab_Cli',Key);
   CODBAIExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Cli.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Tab_Cli',Key);
   CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Tab_Cli.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_Tab_Cli.lbx_codramKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);

end;

procedure TFrm_Tab_Cli.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_Tab_Cli.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_Tab_Cli.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Tab_Cli.lbx_codbaiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codbai.ItemIndex>=0 then
      lbx_codbai.Items.Delete(lbx_codbai.ItemIndex);

end;

procedure TFrm_Tab_Cli.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Tab_Cli.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
      begin
      CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
      if valfloat(CODPRO.Text)=0 then
         begin
         fmensagem('Produto não cadastrado!',0,['0'],0);

         CODPRO.SetFocus;
         exit;
         end
      else
         begin
         if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
            begin
            fmensagem('Produto não cadastrado!',0,['0'],0);
            CODPRO.SetFocus;
            exit;
            end;
         end
      end;
   lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(CODPRO.Text))
                                +' - '+DM1.Query1.Fields[0].AsString);
   CODPRO.text := '';
   CODPRO.SetFocus;
   end;

end;

procedure TFrm_Tab_Cli.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro','')
   else
     CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro','');
   key:=0;
   end;


end;

procedure TFrm_Tab_Cli.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro',key);
      key:=#0;
      CODPROEXIT(SELF);
      end;
   end;

end;

procedure TFrm_Tab_Cli.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);


end;

procedure TFrm_Tab_Cli.PALAVRAExit(Sender: TObject);
begin
PALAVRA.Text:=fRetAspas(PALAVRA.Text);
end;

procedure TFrm_Tab_Cli.LIMITE_INIExit(Sender: TObject);
begin
LIMITE_INI.Text:=Formatfloat(mcasas, Valfloat(LIMITE_INI.Text));
end;

procedure TFrm_Tab_Cli.LIMITE_FINExit(Sender: TObject);
begin
LIMITE_FIN.Text:=Formatfloat(mcasas, Valfloat(LIMITE_FIN.Text));
end;

procedure TFrm_Tab_Cli.LIMITE_INIKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab_Cli.situacao_cliClick(Sender: TObject);
begin
situacao_cli:=Valida_CheckList(situacao_cli);

end;

procedure TFrm_Tab_Cli.CB_STATUSClick(Sender: TObject);
begin
CB_STATUS:=Valida_CheckList(CB_STATUS);

end;

procedure TFrm_Tab_Cli.FormKeyDown(Sender: TObject; var Key: Word;
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

