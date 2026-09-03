unit S_Tab_Lic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  Gauges, S_SQL, Mask, lerarq,S_Tab05,  S_Loc, ComCtrls,S_RCli, CheckLst, S_SelEmp;

type
  TFrm_Tab_Lic = class(TForm)
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
    StaticText4: TStaticText;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
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
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
   Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Tab_Lic: TFrm_Tab_Lic;
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

uses S_Per2, S_UF, S_Tab_Cli, func_excecoes;


{$R *.dfm}

procedure TFrm_Tab_Lic.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab_Lic.BitBtn1Click(Sender: TObject);
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
if trim(PALAVRA.Text)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' CRAZAO like '+chr(39)+PALAVRA.Text+'%'+chr(39);
   mcinst:=' and ';
   end;

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' LC1_CODCLI '+mcinst2;
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

//DM2.Qr_ImpRel.SQL.SAVETOFILE(mpastatemp +'sql.TXT');

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
           dataaux1 := StrToDate(iif(fsonumero(mdt1.text)=0,'01/01/1900','01'+copy(mdt1.text,3,8)));
           dataaux2 := iif(fsonumero(mdt1.text)=0,date+36600,StrToDate(mdt2.text));
       end;
    dm1.query1.close;
    dm1.query1.sql.clear;
    dm1.Query1.sql.add('select sum(P2QTD)p2qtd from cadp01,cadp02 where ');
    dm1.Query1.sql.add('    p1status<'+mstatus_excluido+' and ');
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

plocori:='FRM_TAB_LIC';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;

end;

procedure TFrm_Tab_Lic.FormCreate(Sender: TObject);
var
query_temp: TQuery;
begin

query_temp:=TQuery.Create(nil);
query_temp.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_temp.SQL.Add('Update CADLC1 set LC1_TOTPCOAV=(select sum(round(LC2_QTD*LC2_PCOAV,3)) '
                  +'from CADLC2 where LC2_CODEMP=LC1_CODEMP  AND LC2_LOTSEQ=LC1_LOTSEQ and LC2_CHAVE=LC1_CHAVE), '
                  +'LC1_TOTPCOPZ=(select sum(round(LC2_QTD*LC2_PCOPZ,3)) '
                  +'from CADLC2 where LC2_CODEMP=LC1_CODEMP  AND LC2_LOTSEQ=LC1_LOTSEQ and LC2_CHAVE=LC1_CHAVE) '
                  +'where NVL(LC1_TOTPCOAV,0)=0 AND NVL(LC1_TOTPCOPZ,0)=0 ');

try
   query_temp.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   ex_erroSql_Novo(query_temp,7583,'_lic2 '+e.Message,'CADLC1');
   end;
query_temp.close;
freeandnil(query_temp);













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

procedure TFrm_Tab_Lic.MDT1Exit(Sender: TObject);
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

procedure TFrm_Tab_Lic.MDT2Exit(Sender: TObject);
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
procedure TFrm_Tab_Lic.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;
    
end;

procedure TFrm_Tab_Lic.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   MessageDlg('Mês Inválido.',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;

end;


procedure TFrm_Tab_Lic.busca_periodo(pstatus : string);
var i : integer;
mdatatxt: string;
mdatafimtxt: string;
begin
if fsonumero(mdt1.text)=0 then
   mdatatxt:=FormatDatetime('dd/mm/yyyy', pdatanula)
else
   mdatatxt:=mdt1.text;

if fsonumero(mdt2.text)=0 then
   mdatafimtxt:=FormatDatetime('dd/mm/yyyy', date+36600)
else
   mdatafimtxt:=mdt2.Text;


//       dia1 := StrToFloat(copy(mdatatxt.text,1,2));
    dia1 := 1;
    mes1 := strtofloat(copy(mdatatxt,4,2));
    ano1 := strtofloat(copy(mdatatxt,7,4));
    mes1 := mes1-1;
    if mes1=0 then
    begin
       mes1 := 12;
       ano1 := ano1-1;
    end;

    dia2 := StrToFloat(copy(mdatafimtxt,1,2));
    mes2 := strtofloat(copy(mdatafimtxt,4,2));
    ano2 := strtofloat(copy(mdatafimtxt,7,4));
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

procedure TFrm_Tab_Lic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Tab_Lic.SpeedButton5Click(Sender: TObject);
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

procedure TFrm_Tab_Lic.CODUFExit(Sender: TObject);
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

procedure TFrm_Tab_Lic.CODLOCExit(Sender: TObject);
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

procedure TFrm_Tab_Lic.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   sbn_coduf.Click;

end;

procedure TFrm_Tab_Lic.sbn_codufClick(Sender: TObject);
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

procedure TFrm_Tab_Lic.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Tab_Loc',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Tab_Lic.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_Tab_Lic.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Tab_Lic.PALAVRAExit(Sender: TObject);
begin
PALAVRA.Text:=fRetAspas(PALAVRA.Text);
end;

procedure TFrm_Tab_Lic.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Tab_Lic.CODCLIExit(Sender: TObject);
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

procedure TFrm_Tab_Lic.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Tab_Lic.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

end.

