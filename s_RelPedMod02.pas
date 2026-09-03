unit s_RelPedMod02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, ToolEdit, DB, DBTables, RLReport,
  CheckLst, Buttons, RLRichText,s_selemp,jpeg, RLPDFFilter, RLFilters,
  RLRichFilter, ExtCtrls;

type
  TFrm_RelPedMod02 = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    TabSheet2: TTabSheet;
    tsRelatorio: TTabSheet;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    Label4: TLabel;
    CB_TIPOPESQ: TComboBox;
    StaticText4: TStaticText;
    edt_codcli: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    StaticText5: TStaticText;
    edt_codven: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    Label12: TLabel;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    Label11: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    RG_TIPOPED: TCheckListBox;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLImage_logo: TRLImage;
    lblcab_empresa: TRLLabel;
    lblcab_obsrel: TRLLabel;
    lblcab_periodo: TRLLabel;
    lblcab_dathor_emi: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    lblcab_fantasia: TRLLabel;
    RLGroup1: TRLGroup;
    rlcab_cabdet: TRLBand;
    rlcab_ped_chave: TRLLabel;
    rlcab_ped_nomcli: TRLLabel;
    rlcab_ped_cidade: TRLLabel;
    rlcab_ped_data: TRLLabel;
    rlcab_ped_valor_liq: TRLLabel;
    rlcab_ped_valor_cus: TRLLabel;
    RLBand2: TRLBand;
    rltext_ped_chave: TRLDBText;
    rldet_ped_nomcli: TRLDBText;
    rldet_ped_cidade: TRLDBText;
    rldet_ped_data: TRLDBText;
    rldet_ped_valor_liq: TRLDBText;
    RLcab_ini: TRLBand;
    RLLabel1: TRLLabel;
    RLBand_rod: TRLBand;
    rlrod_ped_chave: TRLLabel;
    rlrod_ped_nomcli: TRLLabel;
    rlrod_ped_cidade: TRLLabel;
    rlrod_ped_data: TRLLabel;
    rlrod_ped_valor_liq: TRLLabel;
    rlrod_ped_valor_cus: TRLLabel;
    rlsumario: TRLBand;
    Qr_Ped01: TQuery;
    Qr_Ped01P1CHAVE: TFloatField;
    Qr_Ped01P1CODEMP: TFloatField;
    Qr_Ped01P1TOTALL: TFloatField;
    Qr_Ped01P1CODVEN: TFloatField;
    Qr_Ped01P1OBS1: TMemoField;
    Qr_Ped01P1OBS2: TMemoField;
    Qr_Ped01P1OBS3: TMemoField;
    Qr_Ped01CRAZAO: TStringField;
    src_ped01: TDataSource;
    Qr_Ped01CIDADE_UF: TStringField;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ped01P1DATAP: TDateTimeField;
    rldet_P1OBS3: TRLDBMemo;
    RG_FILTRO: TRadioGroup;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    cb_excluidos: TCheckBox;
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
        Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_RelPedMod02: TFrm_RelPedMod02;

implementation

uses S_DM1, Func, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_RelPedMod02.bbImprimirClick(Sender: TObject);
var
mCampoData: String;
mCampoObs3: String;

begin

if CB_TIPOPESQ.ItemIndex=0 then
   mCampoData:='P1DATDOC'
else
   mCampoData:='P1DATAP';


if (edt_datini.date>pdatanula) and (edt_datfin.date>pdatanula) then
   begin
   if edt_datini.date>edt_datfin.date then
      begin
      Messagedlg('Data Inicial Maior que Final invalido!',mtwarning,[mbOk],0);
      edt_datini.setfocus;
      exit;
      end;
   end;

lblcab_empresa.Caption :=DM1.Tb_EmpRAZAO.AsString;
lblcab_fantasia.Caption:=DM1.Tb_EmpFANTASIA.AsString;
lblcab_periodo.Caption :=fperiodo(0,edt_datini.Text,edt_datfin.Text);
lblcab_obsrel.Caption  :='Relatorio de Pedidos';
lblcab_dathor_emi.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI(+)','P1CODCLI');
mcampoObs3:=' case when length(p1obs3)>1 and length(p1motivo)>1 then p1obs3 || '+quotedstr('/')+' || p1motivo '
          +'  when length(p1obs3)>1 then  p1obs3 else p1motivo end ';


Qr_Ped01.close;
Qr_Ped01.sql.clear;
Qr_Ped01.sql.Add('SELECT P1CHAVE,P1CODEMP,'+mCampoData+' as  P1DATAP,P1TOTALL,P1CODVEN,P1OBS1,P1OBS2,'+mCampoObs3+' as P1OBS3 '
                +',CRAZAO,CCIDADE || '+QuotedStr('-')+' || CUF  as CIDADE_UF '
                +' FROM CADP01 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where 1=1 ');
if cb_excluidos.Checked=false then
   Qr_Ped01.SQL.add(' and  P1STATUS<'+mstatus_excluido+' ');
Qr_Ped01.sql.add(iif(la_Empresas='','',' and ')+la_Empresas
                 +        iif(la_instrucao='','',' and ')+la_instrucao);


if edt_datini.date>pdatanula then
   begin
   Qr_Ped01.SQL.add(' and '+mCampoData+'>=:DATINI ');
   Qr_Ped01.ParamByName('DATINI').AsDate:=edt_datini.Date;
   end;
if edt_datfin.date>pdatanula then
   begin
   Qr_Ped01.SQL.add(' and '+mCampoData+'<=:DATFIN ');
   Qr_Ped01.ParamByName('DATFIN').AsDate:=edt_datfin.Date;
   end;
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_Ped01.SQL.Add(' and P1CODCLI '+mcinst2);

mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_Ped01.SQL.Add(' and  P1TIPO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_Ped01.SQL.Add(' and P1CODVEN '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_Ped01.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_Ped01.SQL.Add(' and CCODLOC '+mcinst2);


Qr_Ped01.Sql.add(' order by '+mCampoData+',P1CHAVE');


if RG_FILTRO.ItemIndex=0 then
   begin
   Qr_Ped01.SQL.Text:='Select * from '
                     +Qr_Ped01.SQL.text
                     +') T2 where length(P1OBS3)<2 ';
   end
else if RG_FILTRO.ItemIndex=1 then
   begin
   Qr_Ped01.SQL.Text:='Select * from ('
                     +Qr_Ped01.SQL.text
                     +') T2 where length(P1OBS3)>1 ';
   end;


try
   Qr_Ped01.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(Qr_Ped01,570,'func Erro:'+e.Message ,'CADP02');
   Qr_Ped01.close;
   freeandnil(Qr_Ped01);
   exit;
   end;
   end;
//ex_erroSql_Novo(Qr_Ped01,570,'func Erro:' ,'CADP02');

RLReport1.PreviewModal;


end;

procedure TFrm_RelPedMod02.FormCreate(Sender: TObject);
var
x: Integer;

mjpeg: TJPEGImage;

begin
Qr_Ped01P1TOTALL.DisplayFormat:=mcasas;
tsRelatorio.TabVisible:=false;

mjpeg:=TJPEGImage.Create;

if fLerImagemGravaStream('LOGO1',mjpeg)=true then
   begin
   RLImage_logo.Picture.Bitmap.Assign(mjpeg);
   RLImage_logo.visible := True;
   end
else
   RLImage_logo.visible := False;
freeandnil(mjpeg);

PageControl1.ActivePageIndex:=0;
RG_TIPOPED.Items.Clear;
for x:=0 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[0] := TRUE;
//RG_TIPOPED.Checked[9] := TRUE;


Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
edt_datini.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',date)));
edt_datfin.Text   :=FormatDatetime(fdt2, date);

tsRelatorio.TabVisible:=false;
RLReport1.Borders.DrawLeft  :=true;
RLReport1.Borders.DrawTop   :=true;
RLReport1.Borders.DrawRight :=true;
RLReport1.Borders.DrawBottom:=true;

RLBand_cab.Borders.DrawBottom:=true;

RLBand_cab.Borders.DrawBottom:=true;
RLcab_ini.Borders.DrawBottom:=true;

rlcab_cabdet.Borders.DrawBottom:=true;

rlcab_ped_nomcli.Borders.DrawLeft     :=true;
rlcab_ped_cidade.Borders.DrawLeft     :=true;
rlcab_ped_data.Borders.DrawLeft       :=true;
rlcab_ped_valor_liq.Borders.DrawLeft  :=true;
rlcab_ped_valor_cus.Borders.DrawLeft  :=true;
rldet_P1OBS3.Borders.DrawLeft  :=true;



rldet_ped_nomcli.Borders.DrawLeft     :=true;
rldet_ped_cidade.Borders.DrawLeft     :=true;
rldet_ped_data.Borders.DrawLeft       :=true;
rldet_ped_valor_liq.Borders.DrawLeft  :=true;
rlrod_ped_valor_cus.Borders.DrawLeft  :=true;



rlrod_ped_nomcli.Borders.DrawLeft     :=true;
rlrod_ped_cidade.Borders.DrawLeft     :=true;
rlrod_ped_data.Borders.DrawLeft       :=true;
rlrod_ped_valor_liq.Borders.DrawLeft  :=true;

RLBand2.Borders.DrawBottom            :=true;
RLBand_rod.Borders.DrawBottom         :=true;

rlsumario.Borders.Drawtop             :=true;

end;

procedure TFrm_RelPedMod02.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_RelPedMod02.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelPedMod02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RelPedMod02.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_RelPedMod02.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if Trim(edt_codcli.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',edt_codcli.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(edt_codcli.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codcli.ItemIndex:=lbx_codcli.Items.Count-1;
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      edt_codcli.text := '';
      edt_codcli.SetFocus;
      end;
   end;

end;

procedure TFrm_RelPedMod02.edt_codcliKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   edt_codcliExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelPedMod02.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_RelPedMod02.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum2(edt_codven.Text);
if Trim(edt_codven.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',edt_codven.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(edt_codven.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codven.ItemIndex:=lbx_codven.Items.Count-1;
      edt_codven.text := '';
      if edt_codven.Enabled then
         edt_codven.SetFocus;
      end
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      edt_codven.text := '';
      if edt_codven.Enabled then
         edt_codven.SetFocus;
      end;
   end;


end;

procedure TFrm_RelPedMod02.edt_codvenKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codven.Text:=fChamaVen(0,'frm_RPed',Key);
   if trim(edt_codven.Text)<>'' then
      edt_codvenExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RelPedMod02.lbx_codvenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_RelPedMod02.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if not flqr1('PNOM','P','CADUF','C','PUF',Trim(CODUF.Text)) then
      begin
      fmensagem('Estado não cadastrado!',0,['0'],0);
      CODUF.SetFocus;
      end
   else
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;

end;

procedure TFrm_RelPedMod02.CODUFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=114 then
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


end;

procedure TFrm_RelPedMod02.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_RelPedMod02.CODLOCExit(Sender: TObject);
begin
CODLOC.Text:=fdeixanum2(CODLOC.Text);
if Trim(CODLOC.Text)<>'' then
   begin
   if not flqr1('LNOME','L','CADLOC','N','LCODLOC',Trim(CODLOC.Text)) then
      begin
      fmensagem('Cidade não cadastrado!',0,['0'],0);
      CODLOC.SetFocus;
      end
   else
      begin
      lbx_codloc.Items.Add(FormatFloat('0000000',StrToFloat(CODLOC.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure TFrm_RelPedMod02.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedCli',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;

end;

procedure TFrm_RelPedMod02.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);


end;

end.
