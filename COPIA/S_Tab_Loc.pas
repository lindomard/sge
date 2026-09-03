unit S_Tab_Loc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  Gauges, S_SQL, Mask, lerarq,S_Tab05,  S_Loc, ComCtrls,S_RCli, CheckLst, S_SelEmp;

type
  TFrm_Tab_Loc = class(TForm)
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
    StaticText9: TStaticText;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    lbl_cidade: TStaticText;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    TsOutrosFiltros: TTabSheet;
    sbn_coduf: TSpeedButton;
    StaticText3: TStaticText;
    PALAVRA: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure busca_periodo(pstatus : string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbn_codufClick(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PALAVRAExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
   Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Tab_Loc: TFrm_Tab_Loc;
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

uses S_Per2, S_UF, S_Tab_Cli;


{$R *.dfm}

procedure TFrm_Tab_Loc.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_Loc.BitBtn1Click(Sender: TObject);
var
x: Integer;
minc:String;
i: integer;
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

mcinst4:='';
mcinst :='';
mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' LUF '+mcinst2;
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' LCODLOC '+mcinst2;
   mcinst:=' and ';
   end;
if trim(PALAVRA.Text)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' LNOME like '+chr(39)+PALAVRA.Text+'%'+chr(39);
   mcinst:=' and ';
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
//DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x));
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mcinst4,x));

//DM2.Qr_ImpRel.SQL.SAVETOFILE('C:\SQL.TXT');

DM2.Qr_ImpRel.Open;

//Memo1.Text:=frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x);

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

IF RG_PERIODO.Visible THEN
BEGIN

    la_tabelas  :='';
    la_Join     :='';
    la_instrucao:='';

    la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

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
    dm1.Query1.sql.add('    p1status <'+mstatus_excluido+' and ');
    dm1.Query1.sql.add(iif(la_empresas='','', la_empresas+' and '));
    dm1.Query1.sql.add('    P1CODEMP=P2CODEMP ');
    dm1.Query1.sql.add('and P1DATDOC>= '+''''+datetostr(dataaux1)+'''');
    dm1.Query1.sql.add('and P1DATDOC<= '+''''+datetostr(dataaux2)+'''');
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

plocori:='FRM_TAB_LOC';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Loc.FormCreate(Sender: TObject);
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


end;

procedure TFrm_Tab_Loc.MDT1Exit(Sender: TObject);
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

procedure TFrm_Tab_Loc.MDT2Exit(Sender: TObject);
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
procedure TFrm_Tab_Loc.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Loc.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   MessageDlg('Mês Inválido.',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Loc.busca_periodo(pstatus : string);
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

procedure TFrm_Tab_Loc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Tab_Loc.SpeedButton5Click(Sender: TObject);
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

procedure TFrm_Tab_Loc.CODUFExit(Sender: TObject);
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

procedure TFrm_Tab_Loc.CODLOCExit(Sender: TObject);
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

procedure TFrm_Tab_Loc.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   sbn_coduf.Click;

end;

procedure TFrm_Tab_Loc.sbn_codufClick(Sender: TObject);
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

procedure TFrm_Tab_Loc.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Tab_Loc',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Loc.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_Tab_Loc.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Tab_Loc.PALAVRAExit(Sender: TObject);
begin
PALAVRA.Text:=fRetAspas(PALAVRA.Text);
end;

procedure TFrm_Tab_Loc.FormKeyDown(Sender: TObject; var Key: Word;
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

