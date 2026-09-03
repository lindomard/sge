unit S_Receber_Sint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, S_DM1, db, dbtables, func, S_Impres,
  S_Bco, S_Cli,  S_Ven, S_Tra,lerarq,S_Usr,S_DM4, S_SelEmp, CheckLst,
  ComCtrls, RLReport, RLPDFFilter, RLXLSFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLDraftFilter,variants,S_Red,s_Con,S_Sup,S_Loc,S_UF;


type
  TFrm_Receber_Sint = class(TForm)
    Qr_LDR: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    TabSheet2: TTabSheet;
    StaticText7: TStaticText;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    CODRED: TEdit;
    CODCV: TEdit;
    OMITIR_CV: TCheckBox;
    StaticText8: TStaticText;
    lbx_codcv: TListBox;
    Label4: TLabel;
    MDT1: TMaskEdit;
    Label5: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Src_LDR: TDataSource;
    Qr_LDRGRUPO: TStringField;
    cb_agrupar: TComboBox;
    Label1: TLabel;
    CB_SEMBORDA: TCheckBox;
    Matricial: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    CB_LASER: TCheckBox;
    Qr_LDRNOMSINT: TStringField;
    Label2: TLabel;
    cb_separado: TComboBox;
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
    RLBand6: TRLBand;
    lbl_total: TRLLabel;
    lbl_totacum_gru: TRLLabel;
    RLBand3: TRLBand;
    lbl_rodape: TRLLabel;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    StaticText1: TStaticText;
    CODTEL: TEdit;
    OMITIR_TEL: TCheckBox;
    lbx_codtel: TListBox;
    OMITIR_SUP: TCheckBox;
    lbx_codsup: TListBox;
    StaticText3: TStaticText;
    CODSUP: TEdit;
    StaticText6: TStaticText;
    CODLOC: TEdit;
    OMITIR_LOC: TCheckBox;
    lbx_codloc: TListBox;
    StaticText9: TStaticText;
    CODUF: TEdit;
    OMITIR_UF: TCheckBox;
    lbx_coduf: TListBox;
    sbn_coddep: TSpeedButton;
    TabSheet4: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    CLB_TIPOCOB: TCheckListBox;
    RGTD: TRadioGroup;
    RGTPP: TRadioGroup;
    clb_simples: TCheckListBox;
    CLB_TIPODOC: TCheckListBox;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    sbSalvarPadrao: TSpeedButton;
    Qr_LDRVALORDUP: TFloatField;
    Qr_LDRVALORREC: TFloatField;
    db_valordup: TRLDBText;
    Qr_LDRgrupo_calc: TStringField;
    Qr_LDRnomsint_calc: TStringField;
    Qr_LDRVALORABR: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODREDExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CB_SEMBORDAClick(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure CB_LASERClick(Sender: TObject);
    procedure CODTELKeyPress(Sender: TObject; var Key: Char);
    procedure CODTELExit(Sender: TObject);
    procedure lbx_codtelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure CODSUPExit(Sender: TObject);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCVExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure cb_agruparClick(Sender: TObject);
    procedure cb_separadoClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CLB_TIPODOCClick(Sender: TObject);
    procedure CLB_TIPOCOBClick(Sender: TObject);
    procedure clb_simplesClick(Sender: TObject);
    procedure CODUFExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand4AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Receber_Sint: TFrm_Receber_Sint;
  mTotDup: Real;

implementation

{$R *.DFM}

procedure TFrm_Receber_Sint.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Receber_Sint.bbImprimirClick(Sender: TObject);
var
  mpag, mlin: Integer;
  mtotc, mtotd,msaldo,msaldoa: Real;
  mCampoVlr,mDataPesq,mDataSep,mDataGrupo: String;
  mNomSint, mNomSep: String;
  mTabBco: Boolean;
  mTabCli: Boolean;
  mTabVen: Boolean;
  mTabUsr: Boolean;
  mTabCV: Boolean;
  mTabSup: Boolean;
begin

if RGTPP.ItemIndex=0 then
   mDataPesq:='CRDTVCTO'
else if RGTPP.ItemIndex=1 then
   mDataPesq:='CRDTEMIS'
else if RGTPP.ItemIndex=2 then
   mDataPesq:='CRDTBX'
else
   mDataPesq:='CRDTPAG';
mDataGrupo:='';
if (cb_agrupar.ItemIndex=0) or
   (cb_agrupar.ItemIndex=6) or
   (cb_agrupar.ItemIndex=10) then
   mDataGrupo:='CRDTEMIS'
else if (cb_agrupar.ItemIndex=1) or
   (cb_agrupar.ItemIndex=8) or
   (cb_agrupar.ItemIndex=11)  then
   mDataGrupo:='CRDTVCTO'
else if (cb_agrupar.ItemIndex=7) then
   mDataGrupo:='CRDTPAG'
else
   mDataGrupo:='CRDTEMIS';

mDataSep:='';
if (cb_separado.ItemIndex=0) or
   (cb_separado.ItemIndex=6) or
   (cb_separado.ItemIndex=10) then
   mDataSep:='CRDTEMIS'
else if (cb_separado.ItemIndex=1) or
   (cb_separado.ItemIndex=8) or
   (cb_separado.ItemIndex=11)  then
   mDataSep:='CRDTVCTO'
else if (cb_separado.ItemIndex=7) then
   mDataSep:='CRDTPAG';

mTabBco:=false;
mTabCli:=false;
mTabVen:=false;


if (cb_agrupar.ItemIndex=2) or
   (cb_separado.ItemIndex=2) then
   mTabBco:=true;

if (cb_agrupar.ItemIndex=3) or
   (cb_agrupar.ItemIndex=4) or
   (cb_agrupar.ItemIndex=9) or
   (cb_agrupar.ItemIndex=12) or
   (cb_separado.ItemIndex=3) or
   (cb_separado.ItemIndex=4) or
   (cb_separado.ItemIndex=9) or
   (cb_separado.ItemIndex=12) then
   mTabCli:=true;

if (cb_agrupar.ItemIndex=5) or
   (cb_separado.ItemIndex=5) then
   mTabCV:=true;

if (cb_agrupar.ItemIndex=13) or
   (cb_separado.ItemIndex=14)  then
   begin
   mTabVen:=true;
   mTabSup:=true;
   end;

if (cb_agrupar.ItemIndex=14) or
   (cb_separado.ItemIndex=15) then
   mTabUsr:=true;

if (cb_agrupar.ItemIndex=13) or
   (cb_agrupar.ItemIndex=18) or
   (cb_separado.ItemIndex=14) or
   (cb_separado.ItemIndex=19) or
   (cb_separado.ItemIndex=20) then
   mTabVen:=true;


lbl_periodo.Caption:=fperiodo(0,MDT1.Text,mdt2.Text);
la_Empresas :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
mNomSint:='';
mNomSep :='';
if cb_agrupar.ItemIndex<2 then
   mNomSint:='TO_CHAR('+mDataGrupo+','+chr(39)+'yyyy'+chr(39)+')'
else if cb_agrupar.ItemIndex=2 then
   mNomSint:='BCBANCO'
else if cb_agrupar.ItemIndex=3 then
   mNomSint:='CCIDADE'
else if cb_agrupar.ItemIndex=4 then
   mNomSint:='CRAZAO'
else if cb_agrupar.ItemIndex=5 then
   mNomSint:='CVRAZAO'
else if ((cb_agrupar.ItemIndex=6) or
         (cb_agrupar.ItemIndex=7) or
         (cb_agrupar.ItemIndex=8)) then
   mNomSint:='TO_CHAR('+mDataGrupo+','+chr(39)+fdt2+chr(39)+')'
else if cb_agrupar.ItemIndex=9 then
   mNomSint:='CUF'
else if (cb_agrupar.ItemIndex=10) or (cb_agrupar.ItemIndex=11)  then
   mNomSint:='TO_CHAR('+mDataGrupo+','+chr(39)+'yyyymm'+chr(39)+')'
else if cb_agrupar.ItemIndex=12 then
   mNomSint:='CNOMRED'
else if cb_agrupar.ItemIndex=13 then
   mNomSint:='SNOME'
else if cb_agrupar.ItemIndex=14 then
   mNomSint:='NOMUSR'
else if cb_agrupar.ItemIndex=15 then
   mNomSint:='TO_CHAR(CRTCB)'
else if cb_agrupar.ItemIndex=16 then
   mNomSint:='TO_CHAR(CRCODORI)'
else if cb_agrupar.ItemIndex=17 then
   mNomSint:='TO_CHAR(CRDUP)'
else if cb_agrupar.ItemIndex=18 then
   mNomSint:='VNOME';

if cb_separado.ItemIndex<2 then
   mNomSep:='TO_CHAR('+mDataSep+','+chr(39)+'yyyy'+chr(39)+')'
else if cb_separado.ItemIndex=2 then
   mNomSep:='BCBANCO'
else if cb_separado.ItemIndex=3 then
   mNomSep:='CCIDADE'
else if cb_separado.ItemIndex=4 then
   mNomSep:='CRAZAO'
else if cb_separado.ItemIndex=5 then
   mNomSep:='CVRAZAO'
else if ((cb_separado.ItemIndex=6) or
         (cb_separado.ItemIndex=7) or
         (cb_separado.ItemIndex=8)) then
   mNomSep:='TO_CHAR('+mDataSep+','+chr(39)+fdt2+chr(39)+')'
else if cb_separado.ItemIndex=9 then
   mNomSep:='CUF'
else if (cb_separado.ItemIndex=10) or (cb_separado.ItemIndex=11)  then
   mNomSep:='TO_CHAR('+mDataSep+','+chr(39)+'yyyymm'+chr(39)+')'
else if cb_separado.ItemIndex=12 then
   mNomSep:='CNOMRED'
else if cb_separado.ItemIndex=13 then
   mNomSep:=''
else if cb_separado.ItemIndex=14 then
   mNomSep:='SNOME'
else if cb_separado.ItemIndex=16 then
   mNomSep:='TO_CHAR(CRTCB)'
else if cb_separado.ItemIndex=17 then
   mNomSep:='TO_CHAR(CRCODORI)'
else if cb_separado.ItemIndex=18 then
   mNomSep:='TO_CHAR(CRDUP)'
else if cb_separado.ItemIndex=19 then
   mNomSep:='VNOME'
else if cb_separado.ItemIndex=20 then
   mNomSep:='CRNFACUM'
else
   mNomSep:='';

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if mTabCli then
   fInnerJoin(0,'CADCLI','CCODEMP','CRCODEMP','CCODCLI','CRCODCLI');
if mTabVen then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADVEN' ,'VCODEMP','CRCODEMP' ,'VCODVEN' ,'CRCODVEN');
   end;

if mTabBco then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADBCO' ,'BCCODEMP','CRCODEMP' ,'BCCODBCO' ,'CRCODBCO');
   end;
if mTabUsr then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADUSR' ,'CODEMP','CRCODEMP' ,'CODUSR' ,'CRCODTLV');
   end;

if mTabCV then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCV' ,'CVCODEMP','CRCODEMP' ,'CVCODCV' ,'CRCODCV');
   end;

if mTabSup then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADSUP' ,'SCODEMP','VCODEMP' ,'SCODSUP' ,'VCODSUP');
   end;


Qr_Ldr.Close;
Qr_Ldr.SQL.Clear;
Qr_Ldr.SQL.Add('Select '+mNomSint+' as NOMSINT ');
if trim(mNomSep)='' then
   Qr_Ldr.SQL.Add(','+chr(39)+insere2(' ',' ',40)+chr(39)+' as GRUPO ')
else
   Qr_Ldr.SQL.Add(','+mNomSep+' as GRUPO ');
Qr_Ldr.SQL.Add(',SUM(nvl(CRVALOR,0)) AS VALORDUP ');
Qr_Ldr.SQL.Add(',SUM(nvl(CRVALPAG,0)) AS VALORREC ');
Qr_Ldr.SQL.Add(',SUM(nvl(CRVALOR,0)-nvl(CRVALPAG,0)) AS VALORABR ');
Qr_Ldr.SQL.Add('        from CADDAR  '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CRSTATUS<9 ');

mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CRCODCLI '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CRCODVEN '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtel,OMITIR_TEL);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CRCODTLV '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and VCODSUP '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and BCCODBCO '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCODRED '+mcinst2);
mcinst2:=fItensListBox(0,lbx_codcv,OMITIR_CV);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CRCODCV '+mcinst2);

mcinst2:=fItensListBox(1,lbx_coduf,OMITIR_UF);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CUF '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CCODLOC '+mcinst2);


mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_LDR.SQL.Add(' and CRCODORI '+mcinst2);


db_valordup.DataField:='VALORDUP';
if RGTD.ItemIndex=1 then
  begin
  Qr_Ldr.SQL.Add(' and CRSTATUS=2');
  db_valordup.DataField:='VALORREC';
  end
else if RGTD.ItemIndex=2 then
  begin
  Qr_Ldr.SQL.Add(' and CRSTATUS<2');
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
   Qr_LDR.SQL.add(mNomSint+' ');try
   Qr_Ldr.Open;
except
   Qr_LDR.SQL.SaveToFile(mpastatemp +'sql.TXT');
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

procedure TFrm_Receber_Sint.CODBCOExit(Sender: TObject);
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

procedure TFrm_Receber_Sint.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end
   else
      begin
      fMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;
end;

procedure TFrm_Receber_Sint.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      fMensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_Receber_Sint.CODREDExit(Sender: TObject);
begin
CODRED.Text:=fdeixanum2(CODRED.Text);
if Trim(CODRED.Text)<>'' then
   begin
   if flqr1('RDNOME','RD','CADRED','N','RDCODRED',CODRED.Text) then
      begin
      lbx_codred.Items.Add(FormatFloat('0000000',StrToFloat(CODRED.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODRED.text := '';
      CODRED.SetFocus;
      end
   else
      begin
      fMensagem('Rede não Cadastrado!',0,['0'],0);
      CODRED.text := '';
      CODRED.SetFocus;
      end;
   end;

end;

procedure TFrm_Receber_Sint.CODBCOKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_Receber_Sint.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   key:=#0;
   CODCLIExit(Self);
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Receber_Sint.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_Receber_Sint',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Receber_Sint.CODREDKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   CODREDExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Receber_Sint.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(Tfrm_Con, Frm_Con);
   Frm_Con.Edit1.Text:=key;
   Frm_Con.BBnAtu.Click;
   Frm_Con.Edit1.SelStart:=1;
   Frm_Con.Edit1.SelLength:=1;
   Frm_Con.PC1.ActivePageIndex:=1;
   con_ori:='Frm_Receber_Sint';
   if Frm_Con.ShowModal=MrOk then
      begin
      CODCV.Text:=DM1.Tb_CVCVCODCV.AsString;
      end;
   Frm_Con.Free;
   key:=#0;
   end;

end;

procedure TFrm_Receber_Sint.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_Receber_Sint.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);
end;

procedure TFrm_Receber_Sint.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_Receber_Sint.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_Receber_Sint.lbx_codcvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcv.ItemIndex>=0 then
      lbx_codcv.Items.Delete(lbx_codcv.ItemIndex);

end;

procedure TFrm_Receber_Sint.FormCreate(Sender: TObject);
var
x: Integer;
begin
PageControl1.ActivePageIndex:=0;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
CLB_TIPODOC.Items.Clear;
for x:=0 to high(ptpdoc) do
   begin
   CLB_TIPODOC.Items.Add(ptpdoc[x]);
   end;

Qr_LDRVALORDUP.DisplayFormat :=mcasas;
Qr_LDRVALORREC.DisplayFormat  :=mcasas;
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','RGTPP']),[]) then
   RGTPP.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','RGTD']),[]) then
   RGTD.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','CLB_TIPODOC']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPODOC.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPODOC.Items.Count-1 do
      begin
      CLB_TIPODOC.Checked[x]:=True;
      end;
   end;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','CLB_TIPOCOB']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      CLB_TIPOCOB.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to CLB_TIPOCOB.Items.Count-1 do
      begin
      CLB_TIPOCOB.Checked[x]:=True;
      end;
   end;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','CLB_SIMPLES']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         clb_simples.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      clb_simples.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   for x:=0 to clb_simples.Items.Count-1 do
      begin
      clb_simples.Checked[x]:=True;
      end;
   end;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','CB_SEMBORDA']),[]) then
   CB_SEMBORDA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_SEMBORDA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','CB_LASER']),[]) then
   CB_LASER.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_LASER.Checked:=false;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','CB_AGRUPAR']),[]) then
   cb_agrupar.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','CB_SEPARADO']),[]) then
   cb_separado.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_SINT','RG_TIPOPED']),[]) then
   begin
   mcinst:='';
   for x:=1 to length(DM4.Tb_FilPadFPVALOR.Value) do
      begin
      if DM4.Tb_FilPadFPVALOR.Value[x]=',' then
         begin
         RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
         mcinst:='';
         end
      else
         mcinst:=mcinst+DM4.Tb_FilPadFPVALOR.Value[x];
      end;
   if trim(mcinst)<>'' then
      RG_TIPOPED.Checked[ValInt(mcinst)]:=true;
   end
else
   begin
   RG_TIPOPED.Checked[0] := TRUE;
   end;

end;

procedure TFrm_Receber_Sint.CB_SEMBORDAClick(Sender: TObject);
begin
if CB_SEMBORDA.Checked then
   begin
   mboolean:=False;
   lbl_cabdesc.Alignment  :=taLeftJustify;
   lbl_cabacum.Alignment  :=taRightJustify;
   end
else
   begin
   mboolean:=true;
   lbl_cabdesc.Alignment  :=taCenter;
   lbl_cabacum.Alignment  :=taCenter;
   end;
lbl_titulo.Borders.DrawBottom    :=mboolean;
db_grupo.Borders.DrawBottom      :=mboolean;
band_cab.Borders.DrawBottom      :=mboolean;
lbl_cabdesc.Borders.DrawRight    :=mboolean;
db_descmv.Borders.DrawRight      :=mboolean;

RLGroup1.Borders.DrawTop         :=mboolean;
RLGroup1.Borders.DrawLeft        :=mboolean;
RLGroup1.Borders.DrawRight       :=mboolean;
RLGroup1.Borders.DrawBottom      :=mboolean;
lbl_total.Borders.DrawRight      :=mboolean;
RLband4.Borders.DrawTop          :=mboolean;
RLband4.Borders.DrawBottom       :=mboolean;
lbl_total.Borders.DrawRight      :=mboolean;
RLBand6.Borders.DrawTop          :=mboolean;


end;

procedure TFrm_Receber_Sint.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_totacum_gru.Caption:=FormatFloat(mcasas, mTotDup);
mTotDup:=0;
end;

procedure TFrm_Receber_Sint.CB_LASERClick(Sender: TObject);
begin
if not CB_LASER.Checked then
   RLReport1.DefaultFilter:=nil
else
   RLReport1.DefaultFilter:=Matricial;
end;

procedure TFrm_Receber_Sint.CODTELKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEL.Text:=fChamaUsr(0,'frm_Receber_Sint',Key);
   if trim(CODTEL.Text)<>'' then
      CODTELExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Receber_Sint.CODTELExit(Sender: TObject);
begin
CODTEL.Text:=fdeixanum2(CODTEL.Text);
if Trim(CODTEL.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODTEL.Text) then
      begin
      lbx_codtel.Items.Add(FormatFloat('0000000',StrToFloat(CODTEL.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end
   else
      begin
      fMensagem('Usuário/Televendas não Cadastrado!',0,['0'],0);
      CODTEL.text := '';
      CODTEL.SetFocus;
      end;
   end;


end;

procedure TFrm_Receber_Sint.lbx_codtelKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codtel.ItemIndex>=0 then
      lbx_codtel.Items.Delete(lbx_codtel.ItemIndex);

end;

procedure TFrm_Receber_Sint.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Sup, Frm_Sup);
   Frm_Sup.Edit1.Text:=key;
   Frm_Sup.BBnAtu.Click;
   Frm_Sup.Edit1.SelStart:=1;
   Frm_Sup.Edit1.SelLength:=1;
   Frm_Sup.PC1.ActivePage:=Frm_Sup.tsTab;
   sup_ori:='Frm_Receber_sint';
   if Frm_Sup.ShowModal=mrok then
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);
      CODSUP.text := '';
      CODSUP.SetFocus;
      end;
   Frm_Sup.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Receber_Sint.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flcadsup(1,0,CODSUP.Text) then
      begin
      fMensagem('Supervisor não Cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_SupSCODSUP.ASSTRING))
                                    +' - '+DM1.Tb_SupSNOME.Value);

      CODSUP.text := '';
      CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_Receber_Sint.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_Receber_Sint.CODCVExit(Sender: TObject);
begin

CODCV.Text:=fdeixanum2(CODCV.Text);
if Trim(CODCV.Text)<>'' then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      lbx_codcv.Items.Add(FormatFloat('0000000',StrToFloat(CODCV.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCV.text := '';
      CODCV.SetFocus;
      end
   else
      begin
      fMensagem('Convênio não Cadastrado!',0,['0'],0);
      CODCV.text := '';
      CODCV.SetFocus;
      end;
   end;

end;

procedure TFrm_Receber_Sint.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_Receber_Sint',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_Receber_Sint.lbx_codlocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_Receber_Sint.CODLOCExit(Sender: TObject);
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

procedure TFrm_Receber_Sint.sbn_coddepClick(Sender: TObject);
begin
CODUF.Text :=fChamaUF(0,'frm_Receber_Sint','');
if trim(CODUF.Text)<>'' then
   CODUF.SetFocus;
end;

procedure TFrm_Receber_Sint.lbx_codufKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);


end;

procedure TFrm_Receber_Sint.sbSalvarPadraoClick(Sender: TObject);
var
  x: Integer;
begin
fDeletaPadroes(codusr,'_RECEBER_SINT','');
fGravaPadroes(codusr,'RGTPP'          ,'itemindex' ,'_RECEBER_SINT',IntTostr(RGTPP.ItemIndex));
fGravaPadroes(codusr,'RGTD'           ,'itemindex' ,'_RECEBER_SINT',IntTostr(RGTD.ItemIndex));
mcinst2:='';
for x:=0 to CLB_TIPODOC.Items.Count-1 do
   begin
   if CLB_TIPODOC.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPODOC'          ,'itemindex' ,'_RECEBER_SINT',mcinst2);


mcinst2:='';
for x:=0 to RG_TIPOPED.Items.Count-1 do
   begin
   if RG_TIPOPED.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'RG_TIPOPED'          ,'itemindex' ,'_RECEBER_SINT',mcinst2);

mcinst2:='';
for x:=0 to CLB_TIPOCOB.Items.Count-1 do
   begin
   if CLB_TIPOCOB.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_TIPOCOB'          ,'itemindex' ,'_RECEBER_SINT',mcinst2);


mcinst2:='';
for x:=0 to clb_simples.Items.Count-1 do
   begin
   if clb_simples.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(codusr,'CLB_SIMPLES'          ,'itemindex' ,'_RECEBER_SINT',mcinst2);
fGravaPadroes(codusr,'CB_SEMBORDA'   ,'checked'   ,'_RECEBER_SINT',iif(CB_SEMBORDA.Checked,'true','false'));
fGravaPadroes(codusr,'CB_LASER'      ,'checked'   ,'_RECEBER_SINT',iif(CB_LASER.Checked,'true','false'));
fGravaPadroes(codusr,'CB_AGRUPAR'    ,'itemindex' ,'_RECEBER_SINT',IntTostr(cb_agrupar.ItemIndex));
fGravaPadroes(codusr,'CB_SEPARADO'    ,'itemindex','_RECEBER_SINT',IntTostr(cb_separado.ItemIndex));
fMensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_Receber_Sint.Qr_LDRCalcFields(DataSet: TDataSet);
begin
if cb_agrupar.ItemIndex=15 then // tipo de cobranca
   begin
   if valint(Trim(Qr_LDRNOMSINT.Value))=3 then
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value)+'-Cartorio'
   else if valint(Trim(Qr_LDRNOMSINT.Value))=2 then
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value)+'-Juridica'
   else if valint(Trim(Qr_LDRNOMSINT.Value))=1 then
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value)+'-Banco'
   else
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value)+'-Carteira';
   end
else if cb_agrupar.ItemIndex=16 then // tipo de pedido
   begin
   try
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value)+'-'+tab_tped[ValInt(Trim(Qr_LDRNOMSINT.Value))]
   except
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value);
      end;
   end
else if cb_agrupar.ItemIndex=17 then // tipo de documento
   begin
   try
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value)+'-'+ptpdoc[ValInt(Trim(Qr_LDRNOMSINT.Value))]
   except
      Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value);
      end;
   end
else
   Qr_LDRnomsint_calc.Value:=trim(Qr_LDRNOMSINT.Value);

if cb_separado.ItemIndex=16 then
   begin
   if valint(Trim(Qr_LDRGRUPO.Value))=3 then
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value)+'-Cartorio'
   else if valint(Trim(Qr_LDRGRUPO.Value))=2 then
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value)+'-Juridica'
   else if valint(Trim(Qr_LDRGRUPO.Value))=1 then
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value)+'-Banco'
   else
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value)+'-Carteira';
   end
else if cb_separado.ItemIndex=17 then // tipo de pedido
   begin
   try
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value)+'-'+tab_tped[ValInt(Trim(Qr_LDRGRUPO.Value))]
   except
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value);
      end;
   end
else if cb_separado.ItemIndex=18 then // tipo de documento
   begin
   try
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value)+'-'+ptpdoc[ValInt(Trim(Qr_LDRGRUPO.Value))]
   except
      Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value);
      end;
   end
else
   Qr_LDRgrupo_calc.Value:=trim(Qr_LDRGRUPO.Value);
end;

procedure TFrm_Receber_Sint.cb_agruparClick(Sender: TObject);
begin
if cb_agrupar.ItemIndex<0 then
   with cb_agrupar do ItemIndex:=Items.IndexOf(cb_agrupar.Text);
cb_agrupar.text:=cb_agrupar.Items.Strings[cb_agrupar.ItemIndex];

end;

procedure TFrm_Receber_Sint.cb_separadoClick(Sender: TObject);
begin
if cb_separado.ItemIndex<0 then
   with cb_separado do ItemIndex:=Items.IndexOf(cb_separado.Text);
cb_separado.text:=cb_separado.Items.Strings[cb_separado.ItemIndex];

end;

procedure TFrm_Receber_Sint.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Receber_Sint.CLB_TIPODOCClick(Sender: TObject);
begin
CLB_TIPODOC:=Valida_CheckList(CLB_TIPODOC);
end;

procedure TFrm_Receber_Sint.CLB_TIPOCOBClick(Sender: TObject);
begin
CLB_TIPOCOB:=Valida_CheckList(CLB_TIPOCOB);

end;

procedure TFrm_Receber_Sint.clb_simplesClick(Sender: TObject);
begin
clb_simples:=Valida_CheckList(clb_simples);
end;

procedure TFrm_Receber_Sint.CODUFExit(Sender: TObject);
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

procedure TFrm_Receber_Sint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Receber_Sint.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_Receber_Sint.RLBand4AfterPrint(Sender: TObject);
begin

try
mTotDup:=mTotDup+Qr_LDR.FieldByName(db_valordup.DataField).Value;
except
   Showmessage('datafield '+db_valordup.DataField);
   end;
end;

end.
