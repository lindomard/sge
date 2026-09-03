unit S_PFor_CalcCus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls, Gauges,func,lerarq, S_SelEmp;

type
  TFrm_PFor_CalcCus = class(TForm)
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label4: TLabel;
    MDT2: TMaskEdit;
    GB_PROGRESS: TGroupBox;
    Panel1: TPanel;
    bbCalcular: TBitBtn;
    bbSair: TBitBtn;
    Gauge1: TGauge;
    Label1: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbCalcularClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PFor_CalcCus: TFrm_PFor_CalcCus;
  Form_SelEmp: TFrm_SelEmp;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_PFor_CalcCus.CODFORExit(Sender: TObject);
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

procedure TFrm_PFor_CalcCus.CODFORKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_PFor_CalcCus.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_PFor_CalcCus.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_PFor_CalcCus.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_PFor_CalcCus.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PFor_CalcCus.bbCalcularClick(Sender: TObject);
var
mQtd, mLid: Integer;
mpu: Real;
begin
if fmensagem('Quer Realmente Ajustar o Preço de Compra dos Produtos?',0,['1','2'],2)<>mrYes  then
   exit;
GB_PROGRESS.Visible:=true;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

if DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.SQL.Add('Select PF2QTDP, PF2PU,PF2TOTDES,PF2CODPRO,PF1DATAENT from CADPF1 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS<>9 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                 +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
if Trim(MDT1.Text)<>'/  /' then
  DM1.Query3.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
  DM1.Query3.Sql.Add(' and PF1DATAENT='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
DM1.Query3.Sql.add(' and PF1STATUS>0 AND PF1STATUS<9');
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query3.SQL.Add(' and PF2CODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   DM1.Query3.SQL.Add(' and PF1CODFOR '+mcinst2);
DM1.Query3.SQL.Add(' order by PF1DATAENT ');

try
   DM1.Query3.Open;
except
   DM1.Query3.sql.savetofile(mpastatemp +'sql.txt');
   exit;
   end;

mqtd:=DM1.query3.RecordCount;
if mqtd<0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select count(*) from CADPF1 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS<>9 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' and PF2CODEMP=PF1CODEMP ')
                 +'      and PF2LOTSEQ=PF1LOTSEQ and PF2CHAVE=PF1CHAVE '
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.Sql.Add(' and PF1DATAENT='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PF2CODPRO '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PF1CODFOR '+mcinst2);

   DM1.Query1.Sql.add(' and PF1STATUS>0 AND PF1STATUS<9');
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query3.SQL.Add(' and PF2CODPRO '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query3.SQL.Add(' and PF1CODFOR '+mcinst2);
   DM1.Query1.Open;
   mqtd:=DM1.Query1.Fields[0].AsInteger;
   end;
if mqtd>0 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   if DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
      la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('PDCODEMP',Form_SelEmp.CLB_EMPRESAS);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADPRO set PDPCOMC=0 where PDSTATUS<>9999 '+iif(la_Empresas='','',' and ')+la_Empresas);
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODPRO '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and PDCODFOR '+mcinst2);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.sql.savetofile(mpastatemp +'sql.txt');
      exit;
      end;
   end;

mlid:=0;
While not DM1.Query3.Eof do
   begin
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   mpu:=DM1.Query3.fieldbyName('PF2QTDP').AsFloat*DM1.Query3.FieldbyName('PF2PU').AsFloat;
   mpu:=mpu-DM1.Query3.FieldByName('PF2TOTDES').AsFloat;
   mpu:=mpu/DM1.Query3.FieldByName('PF2QTDP').AsFloat;
   mpu:=Arredonda(mpu,mQtdCas_arredpu);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.add('Update CADPRO set '
                     +'PDUCPR='+mudavp(FloatToStr(mpu))
                     +',PDPRECOC='+mudavp(FloatToStr(mpu))
                     +', PDPCOMC=( '
                     +' DECODE( PDPCOMC,0, '
                     +'     DECODE(PDPRECOC,0,'+mudavp(FloatToStr(mpu))+',PDPRECOC) '
                     +'     ,PDPCOMC) '
                     +'      + '+mudavp(FloatToStr(mpu))+') / 2 ');
   if DM1.Tb_PargerPATPCOFABENT.AsInteger=1 then
      DM1.Query1.Sql.add(',PDPCOFAB='+mudavp(FloatToStr(mpu)));
   if not DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
      DM1.Query1.Sql.Add(' where PDCODEMP=0'+InttoStr(codemp)+' and ')
   else
      DM1.Query1.Sql.Add(' where ');
   DM1.Query1.Sql.Add(' PDCODPRO=0'+DM1.Query3.FieldbyName('PF2CODPRO').AsString);
   try
      DM1.query1.execsql;
      fdm1StartCommit;
   except
      exit;
      end;
   DM1.Query3.Next;
   end;
GB_PROGRESS.Visible:=false;
fmensagem('Concluido!',0,['0'],0);
end;

procedure TFrm_PFor_CalcCus.CODPROKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_PFor_CalcCus.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_PFor_CalcCus.CODPROExit(Sender: TObject);
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

procedure TFrm_PFor_CalcCus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PFor_CalcCus.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_PFor_CalcCus.FormKeyDown(Sender: TObject; var Key: Word;
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
