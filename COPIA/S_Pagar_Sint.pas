unit S_Pagar_Sint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLDraftFilter, DB, DBTables, StdCtrls, ExtCtrls, Buttons, Mask, RLReport,
  ComCtrls, S_SelEmp, S_DM4;

type
  Tfrm_Pagar_Sint = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    sbSalvarPadrao: TSpeedButton;
    cb_separado: TComboBox;
    CB_LASER: TCheckBox;
    CB_SEMBORDA: TCheckBox;
    cb_agrupar: TComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    StaticText4: TStaticText;
    CODFOR: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    TabSheet3: TTabSheet;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lbl_titulo02: TRLLabel;
    lbl_periodo: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    lbl_titulo: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    db_grupo: TRLDBText;
    band_cab: TRLBand;
    lbl_cabdesc: TRLMemo;
    lbl_cabacum: TRLMemo;
    RLBand4: TRLBand;
    db_descmv: TRLDBText;
    db_valordup: TRLDBText;
    RLBand6: TRLBand;
    lbl_total: TRLLabel;
    lbl_totacum_gru: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RGTD: TRadioGroup;
    RGTPP: TRadioGroup;
    Qr_LDR: TQuery;
    Src_LDR: TDataSource;
    Matricial: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    StaticText9: TStaticText;
    lbx_coduf: TListBox;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    CODLOC: TEdit;
    StaticText6: TStaticText;
    CODUF: TEdit;
    sbn_coddep: TSpeedButton;
    OMITIR_UF: TCheckBox;
    Qr_LDRNOMSINT: TStringField;
    Qr_LDRGRUPO: TStringField;
    Qr_LDRVALORDUP: TFloatField;
    Qr_LDRVALORREC: TFloatField;
    Qr_LDRVALORABR: TFloatField;
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODUFExit(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  frm_Pagar_Sint: Tfrm_Pagar_Sint;
  mTotDup: Real;  

implementation

uses lerarq, S_DM1, Func;

{$R *.dfm}

procedure Tfrm_Pagar_Sint.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end
   else
      begin
      fMensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;

end;

procedure Tfrm_Pagar_Sint.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'Frm_PLDR',key);
   key:=#0;
   CODFORExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure Tfrm_Pagar_Sint.CODUFExit(Sender: TObject);
begin
if Trim(CODUF.Text)<>'' then
   begin
   if flqr1('PNOM,PUF','P','CADUF','C','PUF',CODUF.Text) then
      begin
      lbx_coduf.Items.Add(CODUF.Text
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODUF.text := '';
      CODUF.SetFocus;
      end
   else
      begin
      fMensagem('Estado não Cadastrado!',0,['0'],0);
      CODUF.text := '';
      CODUF.SetFocus;
      end;
   end;

end;

procedure Tfrm_Pagar_Sint.sbn_coddepClick(Sender: TObject);
begin
CODUF.Text :=fChamaUF(0,'frm_Receber_Sint','');
if trim(CODUF.Text)<>'' then
   CODUF.SetFocus;

end;

procedure Tfrm_Pagar_Sint.CODLOCExit(Sender: TObject);
begin
if Trim(CODLOC.Text)<>'' then
   begin
   if flqr1('LNOME,LUF','L','CADLOC','N','LCODLOC',CODLOC.Text) then
      begin
      lbx_codloc.Items.Add(CODLOC.Text
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end
   else
      begin
      fMensagem('Cidade não Cadastrada!',0,['0'],0);
      CODLOC.text := '';
      CODLOC.SetFocus;
      end;
   end;

end;

procedure Tfrm_Pagar_Sint.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Receber_Sint',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure Tfrm_Pagar_Sint.bbImprimirClick(Sender: TObject);
var
  mpag, mlin: Integer;
  mtotc, mtotd,msaldo,msaldoa: Real;
  mCampoVlr,mDataPesq,mDataSep,mDataGrupo: String;
  mNomSint, mNomSep: String;
  mTabBco: Boolean;
  mTabFor: Boolean;
begin

if RGTPP.ItemIndex=0 then
   mDataPesq:='CADTVCTO'
else if RGTPP.ItemIndex=1 then
   mDataPesq:='CADTEMIS'
else if RGTPP.ItemIndex=2 then
   mDataPesq:='CADTBX'
else
   mDataPesq:='CADTPAG';
mDataGrupo:='';
if (cb_agrupar.ItemIndex=0) or
   (cb_agrupar.ItemIndex=5) or
   (cb_agrupar.ItemIndex=9) then
   mDataGrupo:='CADTEMIS'
else if (cb_agrupar.ItemIndex=1) or
   (cb_agrupar.ItemIndex=7) or
   (cb_agrupar.ItemIndex=10)  then
   mDataGrupo:='CADTVCTO'
else if (cb_agrupar.ItemIndex=6) then
   mDataGrupo:='CADTPAG'
else
   mDataGrupo:='CADTEMIS';

mDataSep:='';
if (cb_separado.ItemIndex=0) or
   (cb_separado.ItemIndex=5) or
   (cb_separado.ItemIndex=9) then
   mDataSep:='CADTEMIS'
else if (cb_separado.ItemIndex=1) or
   (cb_separado.ItemIndex=7) or
   (cb_separado.ItemIndex=10)  then
   mDataSep:='CADTVCTO'
else if (cb_separado.ItemIndex=6) then
   mDataSep:='CADTPAG';

mTabBco:=false;
mTabFor:=false;

if (cb_agrupar.ItemIndex=2) or
   (cb_separado.ItemIndex=2) then
   mTabBco:=true;

if (cb_agrupar.ItemIndex=3) or
   (cb_agrupar.ItemIndex=4) or
   (cb_agrupar.ItemIndex=8) or
   (cb_separado.ItemIndex=3) or
   (cb_separado.ItemIndex=4) or
   (cb_separado.ItemIndex=8) then
   mTabFor:=true;


lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);
la_Empresas :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);
mNomSint:='';
mNomSep :='';
if cb_agrupar.ItemIndex<2 then
   mNomSint:='TO_CHAR('+mDataGrupo+','+chr(39)+'yyyy'+chr(39)+')'
else if cb_agrupar.ItemIndex=2 then
   mNomSint:='BCBANCO'
else if cb_agrupar.ItemIndex=3 then
   mNomSint:='FCIDADE'
else if cb_agrupar.ItemIndex=4 then
   mNomSint:='FRAZAO'
else if ((cb_agrupar.ItemIndex=5) or
         (cb_agrupar.ItemIndex=6) or
         (cb_agrupar.ItemIndex=7)) then
   mNomSint:='TO_CHAR('+mDataGrupo+','+chr(39)+fdt2+chr(39)+')'
else if cb_agrupar.ItemIndex=8 then
   mNomSint:='FUF'
else if (cb_agrupar.ItemIndex=9) or (cb_agrupar.ItemIndex=10)  then
   mNomSint:='TO_CHAR('+mDataGrupo+','+chr(39)+'yyyymm'+chr(39)+')'
else
   mNomSint:='CACODFOR';

if cb_separado.ItemIndex<2 then
   mNomSep:='TO_CHAR('+mDataSep+','+chr(39)+'yyyy'+chr(39)+')'
else if cb_separado.ItemIndex=2 then
   mNomSep:='BCBANCO'
else if cb_separado.ItemIndex=3 then
   mNomSep:='FCIDADE'
else if cb_separado.ItemIndex=4 then
   mNomSep:='FRAZAO'
else if ((cb_separado.ItemIndex=5) or
         (cb_separado.ItemIndex=6) or
         (cb_separado.ItemIndex=7)) then
   mNomSep:='TO_CHAR('+mDataSep+','+chr(39)+fdt2+chr(39)+')'
else if cb_separado.ItemIndex=8 then
   mNomSep:='CUF'
else if (cb_separado.ItemIndex=9) or (cb_separado.ItemIndex=10)  then
   mNomSep:='TO_CHAR('+mDataSep+','+chr(39)+'yyyymm'+chr(39)+')'
else
   mNomSep:='';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if mTabFor then
   fInnerJoin(0,'CADFOR','FCODEMP','FCODEMP','FCODFOR','CACODFOR');

if mTabBco then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO' ,'BCCODEMP','CACODEMP' ,'BCCODBCO' ,'CACODCTA');
   end;


Qr_Ldr.Close;
Qr_Ldr.SQL.Clear;
Qr_Ldr.SQL.Add('Select TO_CHAR('+mNomSint+') as NOMSINT ');
if trim(mNomSep)='' then
   Qr_Ldr.SQL.Add(','+chr(39)+insere2(' ',' ',40)+chr(39)+' as GRUPO ')
else
   Qr_Ldr.SQL.Add(','+mNomSep+' as GRUPO ');
Qr_Ldr.SQL.Add(',SUM(CAVALOR) AS VALORDUP ');
Qr_Ldr.SQL.Add(',SUM(CAVALPAG) AS VALORREC ');
Qr_Ldr.SQL.Add(',SUM(CAVALOR-CAVALPAG) AS VALORABR ');
Qr_Ldr.SQL.Add('        from CADDAP  '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CASTATUS<9 ');

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and FCODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CACODCTA '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and FUF '+mcinst2);

db_valordup.DataField:='VALORDUP';
if RGTD.ItemIndex=1 then
  begin
  Qr_Ldr.SQL.Add(' and CASTATUS=2');
  db_valordup.DataField:='VALORREC';
  end
else if RGTD.ItemIndex=2 then
  begin
  Qr_Ldr.SQL.Add(' and CASTATUS<2');
  db_valordup.DataField:='VALORABR';
  end;


if trim(MDT1.Text)<>'/  /' then
   Qr_Ldr.SQL.Add(' and '+mDataPesq+'>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Qr_Ldr.SQL.Add(' and '+mDataPesq+'<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));



Qr_LDR.SQL.Add('Group by ');
if trim(mNomSep)<>'' then
   begin
   if (cb_separado.ItemIndex=6) or
      (cb_separado.ItemIndex=7) or
      (cb_separado.ItemIndex=8) then
      Qr_LDR.SQL.add(mDataSep+',')
   else
      Qr_LDR.SQL.add(mNomSep+',');
   end;


if (cb_agrupar.ItemIndex=6) or
   (cb_agrupar.ItemIndex=7) or
   (cb_agrupar.ItemIndex=8) then
   Qr_LDR.Sql.Add(mDataGrupo)
else
   Qr_LDR.SQL.add(mNomSint+' ');

Qr_LDR.SQL.Add('Order by ');
if trim(mNomSep)<>'' then
   begin
   if (cb_separado.ItemIndex=6) or
      (cb_separado.ItemIndex=7) or
      (cb_separado.ItemIndex=8) then
      Qr_LDR.SQL.add(mDataSep+',')
   else
      Qr_LDR.SQL.add(mNomSep+',');
   end;


if (cb_agrupar.ItemIndex=6) or
   (cb_agrupar.ItemIndex=7) or
   (cb_agrupar.ItemIndex=8) then
   Qr_LDR.Sql.Add(mDataGrupo)
else
   Qr_LDR.SQL.add(mNomSint+' ');

try
   Qr_Ldr.Open;
except
   Qr_LDR.SQL.SaveToFile('C:\SQL.TXT');
   fMensagem('Erro ao Selecionar dados, contactar suporte!',0,['0'],0);
   exit;
   end;

if Qr_Ldr.Eof then
   begin
   fMensagem('Nada a Ser Impresso na Condicao Acima!',0,['0'],0);
   abort;
   end;
mTotDup:=0;

lbl_rodape.Caption:='Relatório Emitido em '+FormatDatetime(fdt2, date)
                   +' as '+formatDatetime('hh:nn:ss', now)+'. Intersys';
RLReport1.PreviewModal;

end;

procedure Tfrm_Pagar_Sint.FormCreate(Sender: TObject);
var
  x: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
Qr_LDRVALORDUP.DisplayFormat  :=mcasas;
Qr_LDRVALORREC.DisplayFormat  :=mcasas;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PAGAR_SINT','RGTPP']),[]) then
  RGTPP.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
  
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PAGAR_SINT','RGTD']),[]) then
  RGTD.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PAGAR_SINT','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PAGAR_SINT','CB_LASER']),[]) then
   CB_LASER.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_LASER.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PAGAR_SINT','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_PAGAR_SINT','CB_SEPARADO']),[]) then
   cb_separado.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

end;

procedure Tfrm_Pagar_Sint.sbSalvarPadraoClick(Sender: TObject);
var
  x: Integer;
begin
fDeletaPadroes(codusr,'_PAGAR_SINT','');

fGravaPadroes(codusr,'RGTPP'          ,'itemindex' ,'_PAGAR_SINT',IntTostr(RGTPP.ItemIndex));

fGravaPadroes(codusr,'RGTD'           ,'itemindex' ,'_PAGAR_SINT',IntTostr(RGTD.ItemIndex));

fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_PAGAR_SINT',mcinst2);

fGravaPadroes(codusr,'CLB_TIPOCOB'          ,'itemindex' ,'_PAGARG_SINT',mcinst2);

fGravaPadroes(codusr,'CLB_SIMPLES'          ,'itemindex' ,'_PAGAR_SINT',mcinst2);
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_PAGAR_SINT',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_LASER'      ,'checked'   ,'_PAGAR_SINT',iif(CB_LASER.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_PAGAR_SINT',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_SEPARADO'    ,'itemindex','_PAGAR_SINT',IntTostr(cb_separado.ItemIndex));
fMensagem('Gravado!',0,['0'],0);


end;

procedure Tfrm_Pagar_Sint.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_Pagar_Sint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure Tfrm_Pagar_Sint.bbSairClick(Sender: TObject);
begin
CLOSE;
end;

procedure Tfrm_Pagar_Sint.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codbco.text := '';
      codbco.SetFocus;
      end
   else
      begin
      fMensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;

end;

procedure Tfrm_Pagar_Sint.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_Receber_Sint',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure Tfrm_Pagar_Sint.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure Tfrm_Pagar_Sint.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure Tfrm_Pagar_Sint.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure Tfrm_Pagar_Sint.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

end.
