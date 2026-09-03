unit S_CX_RCC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1, S_Impres,
  S_Bco, S_Dpto, S_CCu, S_Emp,s_DM2,S_Cli,S_For,S_Tra,S_Ven,lerarq,
  ComCtrls,S_Usr, RLReport, RLRichFilter, RLHTMLFilter, RLXLSFilter,
  RLFilters, RLPDFFilter, S_SelEmp, TeEngine, Series, TeeProcs, Chart,
  DbChart, GanttCh;


type
  TFrm_CX_RCC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label7: TLabel;
    RG_NAT: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_LDR: TQuery;
    RG_ESTADO: TRadioGroup;
    Qr_LDRCRED: TFloatField;
    Qr_LDRDEB: TFloatField;
    Qr_LDRNOMDEP: TStringField;
    Qr_LDRCODDEP: TStringField;
    Qr_LDRCODCC: TStringField;
    Qr_LDRNOMCCU: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    sbn_coddep: TSpeedButton;
    sbn_codccu: TSpeedButton;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    StaticText1: TStaticText;
    CODDEP: TEdit;
    OMITIR_DEP: TCheckBox;
    lbx_coddep: TListBox;
    StaticText3: TStaticText;
    CODCCU: TEdit;
    OMITIR_CCU: TCheckBox;
    lbx_codccu: TListBox;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    CODFOR: TEdit;
    StaticText6: TStaticText;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    TabSheet2: TTabSheet;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    StaticText7: TStaticText;
    OMITIR_TRA: TCheckBox;
    MCODUSR: TEdit;
    OMITIR_USR: TCheckBox;
    StaticText8: TStaticText;
    lbx_codusr: TListBox;
    CODTRA: TEdit;
    lbx_codtra: TListBox;
    RG_ORIGEMINFO: TRadioGroup;
    memo_obs: TMemo;
    CB_DATAREF: TCheckBox;
    CB_NOTACREDITO: TCheckBox;
    bbConsiste: TBitBtn;
    CB_DTCONS: TComboBox;
    lbl_dtconsis: TLabel;
    lbl_agrupar: TLabel;
    CB_AGRUPAR: TComboBox;
    Label1: TLabel;
    CB_MODREL: TComboBox;
    tsRelatorio: TTabSheet;
    RLReport1: TRLReport;
    RLBand_cab: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    txt_nomemp: TRLDBText;
    lbl_titulo: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLGroup_dep: TRLGroup;
    RLBand_cabgru: TRLBand;
    Src_LDR: TDataSource;
    RLDBText1: TRLDBText;
    RLBand_cab02: TRLBand;
    RLBand_filtros: TRLBand;
    rlfiltros: TRLMemo;
    RLBand1: TRLBand;
    txt_codccu: TRLDBText;
    txt_nomccu: TRLDBText;
    txt_cred: TRLDBText;
    txt_deb: TRLDBText;
    RLBand_totgru: TRLBand;
    lblgru_codccu: TRLLabel;
    lblgru_nomccu: TRLLabel;
    lblgru_cred: TRLLabel;
    lblgru_deb: TRLLabel;
    RLBand_total: TRLBand;
    lblger_codccu: TRLLabel;
    lblger_nomccu: TRLLabel;
    lblger_cred: TRLLabel;
    lblger_deb: TRLLabel;
    CB_BORDAS: TCheckBox;
    RLBand_rodape: TRLBand;
    lbl_obs: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    txt_coddep: TRLDBText;
    Qr_Total: TQuery;
    Qr_TotalCAMPO_GRUPO: TStringField;
    Qr_TotalCAMPO_ORDEM: TStringField;
    Qr_TotalCR_CRED: TFloatField;
    Qr_TotalCR_DEB: TFloatField;
    Qr_TotalFCCR_CRED: TFloatField;
    Qr_TotalCP_CRED: TFloatField;
    Qr_TotalCP_DEB: TFloatField;
    Qr_TotalFCCP_CRED: TFloatField;
    Qr_TotalFPCP_DEB: TFloatField;
    Qr_TotalFC_CRED: TFloatField;
    Qr_TotalFC_DEB: TFloatField;
    tsRelDiver: TTabSheet;
    RLReport2: TRLReport;
    RLBand2: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo7: TRLSystemInfo;
    RLSystemInfo8: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    lbl_rdCabCRCre: TRLLabel;
    lbl_rdCabCRDeb: TRLLabel;
    lbl_rdCabCPCre: TRLLabel;
    lbl_rdCabFPCPCre: TRLLabel;
    RLBand5: TRLBand;
    txt_rdCabCRCre: TRLDBText;
    txt_rdCabCRDeb: TRLDBText;
    txt_rdCabCPCre: TRLDBText;
    txt_rdCabFPCPCre: TRLDBText;
    RLBand6: TRLBand;
    TotGru_rdCabCRCre: TRLLabel;
    totgru_rdCabFCCRDeb: TRLLabel;
    TotGru_rdCabCPCre: TRLLabel;
    totgrul_rdCabFCCPDeb: TRLLabel;
    RLBand7: TRLBand;
    RLMemo1: TRLMemo;
    RLBand8: TRLBand;
    totger_rdCabCRCre: TRLLabel;
    totger_rdCabCRDeb: TRLLabel;
    totger_rdCabCPCre: TRLLabel;
    totger_rdCabFPCPCre: TRLLabel;
    RLBand9: TRLBand;
    RLLabel14: TRLLabel;
    Src_Total: TDataSource;
    Qr_TotalGRUPO: TStringField;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    lbl_rdCabFCCRCre: TRLLabel;
    lbl_rdCabFCCRDeb: TRLLabel;
    txt_rdCabFCCRCre: TRLDBText;
    txt_rdCabFCCRDeb: TRLDBText;
    totgru_rdCabFCCRCre: TRLLabel;
    Qr_TotalFCCR_DEB: TFloatField;
    totger_rdCabFCCRCre: TRLLabel;
    totger_rdCabFCCRDeb: TRLLabel;
    RLLabel6: TRLLabel;
    lbl_rdCabCPDeb: TRLLabel;
    txt_rdCabCPDeb: TRLDBText;
    totgru_rdCabCRDeb: TRLLabel;
    totgrul_rdCabCPDeb: TRLLabel;
    totger_rdCabCPDeb: TRLLabel;
    RLLabel4: TRLLabel;
    lbl_rdCabFCCPDeb: TRLLabel;
    txt_rdCabFCCPDeb: TRLDBText;
    totgru_rdCabFCCPDeb: TRLLabel;
    totgerl_rdCabFCCPDeb: TRLLabel;
    lbl_grupo: TRLMemo;
    txt_grupo: TRLDBText;
    totgru_grupo: TRLLabel;
    totger_grupo: TRLLabel;
    RLLabel5: TRLLabel;
    lbl_rdCabFCCre: TRLLabel;
    lbl_rdCabFCDeb: TRLLabel;
    txt_rdCabFCCre: TRLDBText;
    txt_rdCabFCDeb: TRLDBText;
    totgru_rdCabFCDeb: TRLLabel;
    totgru_rdCabFCCre: TRLLabel;
    totrgru_rdCabFCDeb: TRLLabel;
    totger_rdCabFCCre: TRLLabel;
    RLBand10: TRLBand;
    lbl_codccu: TRLLabel;
    lbl_nomccu: TRLLabel;
    lbl_cred: TRLLabel;
    lbl_deb: TRLLabel;
    cb_emitir_nulos: TCheckBox;
    rel_layser_02: TTabSheet;
    RLReport3: TRLReport;
    RLBand11: TRLBand;
    RLSystemInfo9: TRLSystemInfo;
    RLSystemInfo10: TRLSystemInfo;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLSystemInfo11: TRLSystemInfo;
    RLSystemInfo12: TRLSystemInfo;
    RLGroup2: TRLGroup;
    RLBand12: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand13: TRLBand;
    RLBand14: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand15: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand16: TRLBand;
    RLMemo2: TRLMemo;
    RLBand17: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand18: TRLBand;
    RLLabel17: TRLLabel;
    RLBand19: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    ds_mod_layser_02: TDataSource;
    rel_mod_layser_02: TQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODBCOExit(Sender: TObject);
    procedure CODDEPExit(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure MCODUSRExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure MCODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbn_coddepClick(Sender: TObject);
    procedure sbn_codccuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RG_ORIGEMINFOClick(Sender: TObject);
    procedure bbConsisteClick(Sender: TObject);
    procedure CB_MODRELClick(Sender: TObject);
    procedure CB_BORDASClick(Sender: TObject);
    procedure RG_NATClick(Sender: TObject);
    procedure RG_ESTADOClick(Sender: TObject);
    procedure CB_DATAREFClick(Sender: TObject);
    procedure CB_NOTACREDITOClick(Sender: TObject);
    procedure RLBand_totalBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand_totgruBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand1AfterPrint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_cx_rcc: tFrm_Impres;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  end;
function FImprimeTitulo_Fortes(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

var
  Frm_CX_RCC: TFrm_CX_RCC;
  Form_SelEmp: TFrm_SelEmp;
  msaldod,msaldoi, mtotdeb_ger, mtotcred_ger,mtotdeb_gru,mtotcred_gru: Real;

  mCampoVlr_Dap: String;
  mCampoVlr_Dar: String;
  mcampovlr: String;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_CX_RCC.BitBtn1Click(Sender: TObject);
var
mp1,mp2,mp3: Real;
mNomeView: String;
nomea: String;
begin

if RG_ORIGEMINFO.ItemIndex=0 then
  begin
  if cb_emitir_nulos.Checked=False then
    begin
    mCampoVlr_Dap:='VALORP';
    mCampoVlr_Dar:='VALORP';
    la_tabelas  :='';
    la_Join     :='';
    la_instrucao:='';
    la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);
    fInnerJoin(0,'CADDEP','DCODEMP','CODEMP','DCODDEP','CODDEP');
    if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
    fInnerJoin(0,'CADCCU' ,'CCCODEMP','CODEMP' ,'CCCODCCU' ,'CODCC');


    Qr_Ldr.Close;
    Qr_Ldr.SQl.Clear;
    Qr_Ldr.SQl.add('Select DNOME as NOMDEP, CCNOME as NOMCCU, CODDEP, CODCC ,sum(DECODE(NATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dar+',0)) as CRED, '
                  +' sum(DECODE(NATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dap+')) as DEB '
                  +' from CADLDR'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +' STATUS<>9');

    mcinst4:='';
    mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')'
       end;

    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')'
      end;

    mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')'
       end;

    mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')'
       end;

    mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')'
       end;
    if trim(mcinst4)<>'' then
       mcinst4:=mcinst4+' )';

    if trim(mcinst4)<>'' then
       Qr_Ldr.SQL.Add(' and '+mcinst4);

    mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
    if trim(mcinst2)<>'' then
       Qr_Ldr.Sql.Add(' and CODBCO '+mcinst2);

    mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
    if trim(mcinst2)<>'' then
       Qr_Ldr.SQL.Add(' and CODDEP '+mcinst2);

    mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
    if trim(mcinst2)<>'' then
       Qr_Ldr.SQL.Add(' and CODCC '+mcinst2);

    if RG_NAT.ItemIndex=2 then
       Qr_Ldr.SQL.Add('  and NATDC='+chr(39)+'C'+chr(39));
    if RG_NAT.ItemIndex=1 then
       Qr_Ldr.SQL.Add('  and NATDC<>'+chr(39)+'C'+chr(39));

    Qr_Ldr.Sql.add(iif(RG_ESTADO.ItemIndex=0,
                      ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                      +iif(RG_ESTADO.ItemIndex=1,
                      ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));

    if Trim(MDT1.Text)<>'/  /' then
       begin
       if CB_DATAREF.Checked then
          Qr_Ldr.Sql.Add(' and DATAREF>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
       else
          begin
          Qr_Ldr.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                                    ' and DATADP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));
          end;

       end;
    if Trim(MDT2.Text)<>'/  /' then
       begin
       if CB_DATAREF.Checked then
          Qr_Ldr.Sql.Add(' and DATAREF<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39))
       else
          Qr_Ldr.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                                   ' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
       end;
    Qr_Ldr.Sql.add(' Group by CODDEP, DNOME, CODCC, CCNOME');
    Qr_Ldr.Sql.add(' ORDER by CODDEP, DNOME, CODCC, CCNOME');
    try
       Qr_Ldr.Open;
       Qr_Ldr.SQL.SaveToFile(mpastatemp + 'SQL.txt');       
    except
       Qr_Ldr.SQL.SaveToFile(mpastatemp + 'SQL.txt');
       end;
    end

  else if cb_emitir_nulos.Checked=True then
    begin
    la_tabelas  :='';
    la_Join     :='';
    la_instrucao:='';
    mNomeView:=fProcTemp(22);
    if RG_ESTADO.ItemIndex=0 then
      begin
      mcampovlr:='VALORR';
      end
    else if RG_ESTADO.ItemIndex=1  then
      begin
      mcampovlr:='VALORP';
      end;
    la_Empresas:=fEmpresas_Selecionadas('CADDEP','DCODEMP',Form_SelEmp.CLB_EMPRESAS);

    rel_mod_layser_02.Close;
    rel_mod_layser_02.SQL.Clear;
    rel_mod_layser_02.SQL.Add('Create or replace view '+mNomeView+' as (');
    rel_mod_layser_02.SQL.Add(' select                               '
                             +' DNOME as NOMDEP, CCNOME as NOMCCU,   '
                             +' DCODDEP as CODDEP, CCCODCCU as CODCC,'
                             +' 0 as CRED, 0 as DEB                  '
                             +' from CADDEP, CADCCU                  '
                             +' WHERE SUBSTR(CCCODCCU,0,2)=DCODDEP   '
                             +' AND DCODEMP=CCCODEMP '+la_Empresas+')');
    rel_mod_layser_02.SQL.Add(' UNION (                              ');

    if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
       la_Empresas:=''
    else
       la_Empresas:=fla_sqlmp('CODEMP',Form_SelEmp.CLB_EMPRESAS);

    rel_mod_layser_02.SQL.Add('Select NOMDEP as NOMDEP, NOMCCU as NOMCCU, CODDEP, CODCC ,'
                             +' sum(DECODE(NATDC,'+chr(39)+'C'+chr(39)+','+mcampovlr+',0)) as CRED, '
                             +' sum(DECODE(NATDC,'+chr(39)+'D'+chr(39)+','+mcampovlr+',0)) as DEB '
                             +' from CADLDR'+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' STATUS<>9');

    mcinst4:='';
    mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')'
       end;

    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')'
      end;

    mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')'
       end;

    mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')'
       end;

    mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
    if trim(mcinst2)<>'' then
       begin
       if trim(mcinst4)='' then
          mcinst4:='( '
       else
          mcinst4:=' or ';
       mcinst4:=mcinst4+' ( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')'
       end;
    if trim(mcinst4)<>'' then
       mcinst4:=mcinst4+' )';

    if trim(mcinst4)<>'' then
       rel_mod_layser_02.SQL.Add(' and '+mcinst4);

    mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
    if trim(mcinst2)<>'' then
      rel_mod_layser_02.SQL.Add(' and CODBCO '+mcinst2);

    mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
    if trim(mcinst2)<>'' then
      rel_mod_layser_02.SQL.Add(' and CODDEP '+mcinst2);

    mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
    if trim(mcinst2)<>'' then
      rel_mod_layser_02.SQL.Add(' and CODCC '+mcinst2);

    if RG_NAT.ItemIndex=2 then
      rel_mod_layser_02.SQL.Add('  and NATDC='+chr(39)+'C'+chr(39));
    if RG_NAT.ItemIndex=1 then
      rel_mod_layser_02.SQL.Add('  and NATDC<>'+chr(39)+'C'+chr(39));

      rel_mod_layser_02.SQL.Add(iif(RG_ESTADO.ItemIndex=0,
                      ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                      +iif(RG_ESTADO.ItemIndex=1,
                      ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));

    if Trim(MDT1.Text)<>'/  /' then
       begin
       if CB_DATAREF.Checked then
         rel_mod_layser_02.SQL.Add(' and DATAREF>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
       else
          begin
            rel_mod_layser_02.SQL.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                                    ' and DATADP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));
          end;

       end;
    if Trim(MDT2.Text)<>'/  /' then
       begin
       if CB_DATAREF.Checked then
         rel_mod_layser_02.SQL.Add(' and DATAREF<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39))
       else
          rel_mod_layser_02.SQL.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                                   ' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
       end;
    rel_mod_layser_02.SQL.Add(' Group by CODDEP,CODCC,NOMDEP,NOMCCU )');
    try
      rel_mod_layser_02.ExecSQL;
      rel_mod_layser_02.SQL.SaveToFile(mpastatemp + 'SQL.txt');
    except
      rel_mod_layser_02.SQL.SaveToFile(mpastatemp + 'SQL.txt');
      end;
    Qr_Ldr.Close;
    Qr_Ldr.SQl.Clear;
    Qr_Ldr.SQl.add('Select NOMDEP, NOMCCU, CODDEP, CODCC, '
                  +' sum(CRED) AS CRED, sum(DEB) as DEB '
                  +' from '+mNomeView
                  +' Group by CODDEP,CODCC,NOMDEP,NOMCCU '
                  +' Order by CODDEP,CODCC,NOMDEP,NOMCCU ');
    Qr_Ldr.Open;
    end;
  end
else
   begin
   if RG_ESTADO.ItemIndex=0 then
      begin
      mCampoVlr_Dap:='CAVALPAG';
      mCampoVlr_Dar:='(CRVALPAG+CRDEVOL)';
      end
   else
      begin
      mCampoVlr_Dap:='CAVALOR';
      mCampoVlr_Dar:='CRVALOR';
      end;


   mNomeView:=fProcTemp(22);
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';

   if RG_NAT.ItemIndex<>1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.sql.Clear;
      DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
      la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
      fInnerJoin(0,'CADDEP','DCODEMP','CRCODEMP','DCODDEP','CRCODDEP');
      if pbanco=0 then
        la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADCCU' ,'CCCODEMP','CRCODEMP' ,'CCCODCCU' ,'CRCODCC');

      DM1.Query1.SQl.add('Select DNOME as NOMDEP, CCNOME as NOMCCU, CRCODDEP AS CODDEP, CRCODCC AS CODCC '
                        +',sum(DECODE(CRNATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dar+',0)) as CRED, '
                    +' sum(DECODE(CRNATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dar+')) as DEB '
                    +' from CADDAR'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' CRSTATUS<>9');

      mcinst4:='';
      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then
         mcinst4:=mcinst4+' CRCODCLI '+mcinst2;



      mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
      if trim(mcinst2)<>'' then
         mcinst4:=mcinst4+' CRCODVEN '+mcinst2;


      if trim(mcinst4)<>'' then
         DM1.Query1.SQL.Add(' and '+mcinst4);

      mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and CRCODCTA '+mcinst2);
      if not CB_NOTACREDITO.Checked then
         begin
         DM1.Query1.Sql.Add(' and CRDUP<>5');
         end;
      mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CRCODCC '+mcinst2);


      mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CRCODDEP '+mcinst2);

      DM1.Query1.Sql.add(iif(RG_ESTADO.ItemIndex=0,' and CRSTATUS>0 ','')
                        +iif(RG_ESTADO.ItemIndex=1,' and CRSTATUS<2',''));

      if Trim(MDT1.Text)<>'/  /' then
         begin
         if CB_DATAREF.Checked then
            DM1.Query1.Sql.Add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
         else
            DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and CRDTPAG>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                                      ' and CRDTVCTO>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));

         end;
      if Trim(MDT2.Text)<>'/  /' then
         begin
         if CB_DATAREF.Checked then
            DM1.Query1.Sql.Add(' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39))
         else
            DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and CRDTPAG<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                                      ' and CRDTVCTO<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
         end;
      DM1.Query1.Sql.add(' Group by DNOME,CCNOME,CRCODDEP,CRCODCC');
      end;

   if RG_NAT.ItemIndex<>2 then
      begin
      if RG_NAT.ItemIndex=1 then
         begin
         DM1.Query1.Close;
         DM1.Query1.sql.Clear;
         DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
         end
      else
         DM1.Query1.SQL.Add(' union ');
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';

      la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);

      fInnerJoin(0,'CADDEP','DCODEMP','CACODEMP','DCODDEP','CACODDEP');
      if pbanco=0 then
        la_instrucao:=la_instrucao+' and ';
      fInnerJoin(0,'CADCCU' ,'CCCODEMP','CACODEMP' ,'CCCODCCU' ,'CACODCC');

      DM1.Query1.SQl.add('Select DNOME as NOMDEP, CCNOME as NOMCCU, CACODDEP AS CODDEP, CACODCC AS CODCC '
                        +',sum(DECODE(CANATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dap+',0)) as CRED, '
                    +' sum(DECODE(CANATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dap+')) as DEB '
                    +' from CADDAP'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +' CASTATUS<>9');

      mcinst4:='';
      mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
      if trim(mcinst2)<>'' then
         mcinst4:=mcinst4+' CACODFOR '+mcinst2;

      if trim(mcinst4)<>'' then
         DM1.Query1.SQL.Add(' and '+mcinst4);

      mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
      if trim(mcinst2)<>'' then
         DM1.Query1.Sql.Add(' and CACODCTA '+mcinst2);
      mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CACODDEP '+mcinst2);

      if not CB_NOTACREDITO.Checked then
         begin
         DM1.Query1.Sql.Add(' and CADUP<>5');
         end;


      mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
      if trim(mcinst2)<>'' then
         DM1.Query1.SQL.Add(' and CACODCC '+mcinst2);


      DM1.Query1.Sql.add(iif(RG_ESTADO.ItemIndex=0,' and CASTATUS>0 ','')
                        +iif(RG_ESTADO.ItemIndex=1,' and CASTATUS<2',''));



      if Trim(MDT1.Text)<>'/  /' then
         begin
         if CB_DATAREF.Checked then
            DM1.Query1.Sql.Add(' and CADTEMIS>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
         else
            DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and CADTPAG>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                                      ' and CADTVCTO>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));
         end;
      if Trim(MDT2.Text)<>'/  /' then
         begin
         if CB_DATAREF.Checked then
            DM1.Query1.Sql.Add(' and CADTEMIS<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39))
         else
            DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and CADTPAG<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                                      ' and CADTVCTO<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
         end;
      DM1.Query1.Sql.add(' Group by DNOME,CCNOME,CACODDEP,CACODCC');
      DM1.Query1.Sql.add(' order by CODDEP, NOMDEP, CODCC, NOMCCU ');
      end;

   try
      DM1.Query1.ExecSQL;
   except
      DM1.Query1.SQL.SaveToFile(mpastatemp + 'SQL.txt');
      end;
   Qr_Ldr.Close;
   Qr_Ldr.SQl.Clear;
   Qr_Ldr.SQl.add('Select NOMDEP, NOMCCU, CODDEP, CODCC, '
                 +' sum(CRED) AS CRED, sum(DEB) as DEB '
                 +' from '+mNomeView
                 +' Group by NOMDEP,NOMCCU,CODDEP,CODCC '
                 +' order by CODDEP, NOMDEP, CODCC, NOMCCU ');
   Qr_Ldr.Open;
   end;

//Qr_Ldr.SQL.SaveToFile(mpastatemp + 'SQL.txt');

msaldoi:=0;  mtotdeb_ger:=0; mtotcred_ger:=0; msaldod:=0;
mtotdeb_gru:=0;mtotcred_gru:=0;
if Qr_LDR.Eof then
   begin
   fmensagem('Nada a ser impresso no período Solicitado!',0,['0'],0);
   exit;
   end;
if CB_MODREL.ItemIndex=1 then
   begin
   if CB_BORDAS.Checked then
      mboolean:=false
   else
      mboolean:=true;
   RLReport1.Borders.DrawLeft:=mboolean;
   RLReport1.Borders.DrawRight:=mboolean;
   RLReport1.Borders.Drawtop:=mboolean;
   RLReport1.Borders.DrawBottom:=mboolean;
   RLBand_filtros.Borders.DrawBottom:=mboolean;



   RLBand_filtros.Borders.DrawTop:=mboolean;

   RLGroup_dep.Borders.DrawTop:=mboolean;
   RLBand_Cab02.Borders.DrawTop:=mboolean;

   RLBand_total.Borders.DrawTop:=mboolean;

   lbl_codccu.Borders.DrawRight := mboolean;
   lbl_nomccu.Borders.DrawRight := mboolean;
   lbl_cred.Borders.DrawRight   := mboolean;
   lbl_cred.Borders.DrawRight   := mboolean;


   txt_codccu.Borders.DrawRight := mboolean;
   txt_nomccu.Borders.DrawRight := mboolean;
   txt_cred.Borders.DrawRight   := mboolean;
   txt_cred.Borders.DrawRight   := mboolean;

   lblgru_codccu.Borders.DrawRight := mboolean;
   lblgru_nomccu.Borders.DrawRight := mboolean;
   lblgru_cred.Borders.DrawRight   := mboolean;
   lblgru_cred.Borders.DrawRight   := mboolean;

   lblger_codccu.Borders.DrawRight := mboolean;
   lblger_nomccu.Borders.DrawRight := mboolean;
   lblger_cred.Borders.DrawRight   := mboolean;
   lblger_cred.Borders.DrawRight   := mboolean;

   RLBand_rodape.Borders.DrawTop   := mboolean;

   RLBand_totgru.Borders.DrawTop   := mboolean;
   rlfiltros.Lines.Clear;
   rlfiltros.Lines.Add(fperiodo(0,MDT1.Text,MDT2.Text));
   if lbx_codbco.Count>0 then
      FImprimeTitulo_fortes('Banco',lbx_codbco,OMITIR_BCO);
   if lbx_coddep.Count>0 then
      FImprimeTitulo_fortes('Departamento',lbx_coddep,OMITIR_DEP);
   if lbx_codccu.Count>0 then
      FImprimeTitulo_fortes('Centro de Custo',lbx_codccu,OMITIR_CCU);
   if lbx_codcli.Count>0 then
      FImprimeTitulo_fortes('Cliente',lbx_codcli,OMITIR_CLI);
   if lbx_codfor.Count>0 then
      FImprimeTitulo_fortes('Fornecedor',lbx_codfor,OMITIR_FOR);
   if lbx_codven.Count>0 then
      FImprimeTitulo_fortes('Vendedor',lbx_codven,OMITIR_VEN);
   if lbx_codtra.Count>0 then
      FImprimeTitulo_fortes('Transportadora',lbx_codtra,OMITIR_TRA);
   if lbx_codusr.Count>0 then
      FImprimeTitulo_fortes('Usuario',lbx_codusr,OMITIR_USR);
   lbl_obs.Caption:='Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
   RLReport1.PreviewModal;
   end
else
   begin
   testeform := TFrm_CX_RCC(FindGlobalComponent('form_impres_cx_rcc'));
   if (testeform=nil)  then
      begin
      Application.CreateForm(Tfrm_Impres, form_impres_cx_rcc);
      end;

   form_impres_cx_rcc.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
   form_impres_cx_rcc.mpag:=0;
   form_impres_cx_rcc.mlin:=0;
   While not Qr_Ldr.Eof do
      begin
      if form_impres_cx_rcc.mlin=0 then
         begin
         form_impres_cx_rcc.mpag:=form_impres_cx_rcc.mpag+1;
         form_impres_cx_rcc.mlin:=form_impres_cx_rcc.fImprimirCabecalho(80,'Resumo do caixa por Departamento e Centro de Custo.');
         form_impres_cx_rcc.mlin:=form_impres_cx_rcc.mlin+1;
         form_impres_cx_rcc.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
         form_impres_cx_rcc.RDprint1.ImpF(04,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
         form_impres_cx_rcc.mlin:=5;
         if lbx_codbco.Count>0 then
            FImprimeTitulo('Banco',lbx_codbco,OMITIR_BCO);
         if lbx_coddep.Count>0 then
            FImprimeTitulo('Departamento',lbx_coddep,OMITIR_DEP);
         if lbx_codccu.Count>0 then
            FImprimeTitulo('Centro de Custo',lbx_codccu,OMITIR_CCU);
         if lbx_codcli.Count>0 then
            FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
         if lbx_codfor.Count>0 then
            FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);
         if lbx_codven.Count>0 then
            FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
         if lbx_codtra.Count>0 then
            FImprimeTitulo('Transportadora',lbx_codtra,OMITIR_TRA);
         if lbx_codusr.Count>0 then
            FImprimeTitulo('Usuario',lbx_codusr,OMITIR_USR);

         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,01,' Código   Nome                                             Creditos      %             Debitos      %               Saldo      %',mreduz);
         form_impres_cx_rcc.mlin:=form_impres_cx_rcc.mlin+1;
         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,01,Qr_LDRCODDEP.Value+' '+Qr_LDRNOMDEP.Value,mneg);
         nomea:=Qr_LDRCODDEP.Value;
   {
    12345   1234567890123456789012345678901234567890   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00

    Código   Nome do Departamento                             Creditos      %             Debitos      %               Saldo      %
     12345   1234567890123456789012345678901234567890   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00   ZZZ.ZZZ.ZZ9,99   ZZZ0.00
   }

         end;
      form_impres_cx_rcc.mlin :=form_impres_cx_rcc.mlin+1;
      if nomea<>Qr_LDRCODDEP.Value then
         begin
         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,03,insere2('-Totais','.',51)
                                 +insere(FormatFloat('##0.00',mtotcred_gru),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp1),' ',7)+'   '
                                 +insere(FormatFloat('##0.00',mtotdeb_gru),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp2),' ',7)+'   '
                                 +insere(FormatFloat('##0.00',0),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp3),' ',7),mreduz);
         mtotcred_gru:=0;
         mtotdeb_gru :=0;
         form_impres_cx_rcc.mlin :=form_impres_cx_rcc.mlin+2;
         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,01,Qr_LDRCODDEP.Value+' '+Qr_LDRNOMDEP.Value,mneg);
         nomea:=Qr_LDRCODDEP.Value;
         form_impres_cx_rcc.mlin:=form_impres_cx_rcc.mlin+1;
         end;
      mp1:=0;
      mp2:=0;
      mp3:=0;
      msaldoi:=Qr_LDRCRED.Value-Qr_LDRDEB.Value;
      mtotdeb_ger :=mtotdeb_ger +Qr_LDRDEB.Value;
      mtotcred_ger:=mtotcred_ger+Qr_LDRCRED.Value;
      mtotdeb_gru :=mtotdeb_gru+Qr_LDRDEB.Value;
      mtotcred_gru:=mtotcred_gru+Qr_LDRCRED.Value;


      form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,03,insere(Qr_LDRCODCC.Value,' ',5)+'   '
                              +insere2(Qr_LDRNOMCCU.Value,' ',40)+'   '
                              +insere(FormatFloat('##0.00',Qr_LDRCRED.Value),' ',14)+'   '
                              +insere(FormatFloat('##0.00',mp1),' ',7)+'   '
                              +insere(FormatFloat('##0.00',Qr_LDRDEB.Value),' ',14)+'   '
                              +insere(FormatFloat('##0.00',mp2),' ',7)+'   '
                              +insere(FormatFloat('##0.00',msaldoi),' ',14)+'   '
                              +insere(FormatFloat('##0.00',mp3),' ',7),mreduz);
      Qr_Ldr.Next;

      if Qr_Ldr.Eof then
         begin
         mp1:=0;
         mp2:=0;
         mp3:=0;
         msaldoi:=mtotcred_ger-mtotdeb_ger;
         form_impres_cx_rcc.mlin :=form_impres_cx_rcc.mlin+1;
         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,03,insere2('-Totais','.',51)
                                 +insere(FormatFloat('##0.00',mtotcred_gru),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp1),' ',7)+'   '
                                 +insere(FormatFloat('##0.00',mtotdeb_gru),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp2),' ',7)+'   '
                                 +insere(FormatFloat('##0.00',0),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp3),' ',7),mreduz);
         form_impres_cx_rcc.mlin:=form_impres_cx_rcc.mlin+1;
         mtotcred_gru:=0;
         mtotdeb_gru :=0;


         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,03,insere2('-Totais','.',51)
                                 +insere(FormatFloat('##0.00',mtotcred_ger),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp1),' ',7)+'   '
                                 +insere(FormatFloat('##0.00',mtotdeb_ger),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp2),' ',7)+'   '
                                 +insere(FormatFloat('##0.00',msaldoi),' ',14)+'   '
                                 +insere(FormatFloat('##0.00',mp3),' ',7),mreduz);
         form_impres_cx_rcc.mlin:=form_impres_cx_rcc.mlin+1;

         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,01,insere2('Fim...','-',80),mnormal);
         if form_impres_cx_rcc.RDprint1.Setup then form_impres_cx_rcc.RDprint1.Fechar;
         form_impres_cx_rcc.free;
         form_impres_cx_rcc:=nil;
         end
      else if form_impres_cx_rcc.mlin>58 then
         begin
         form_impres_cx_rcc.mlin:=form_impres_cx_rcc.mlin+1;
         form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,01,insere2('Coninua...','-',80),mnormal);
         form_impres_cx_rcc.RDprint1.Novapagina;
         form_impres_cx_rcc.mlin:=0;
         end;
      end;
   end;
if trim(mNomeView)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Drop VIEW '+mNomeView);
   try
     DM1.Query1.ExecSQL;
   Except
      DM1.query1.SQL.SaveToFile(mpastatemp + 'SQL.txt');
      end;
   end;
end;

procedure TFrm_CX_RCC.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_RCC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CX_RCC.CODBCOExit(Sender: TObject);
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
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;

end;

procedure TFrm_CX_RCC.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)<>'' then
   begin
   if flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      lbx_coddep.Items.Add(CODDEP.TEXT
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODDEP.text := '';
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
      end
   else
      begin
      fmensagem('Departamento não Cadastrado!',0,['0'],0);
      CODDEP.text := '';
      if (CODDEP.Visible=true) and (CODDEP.Enabled=true) then
         CODDEP.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCC.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)<>'' then
   begin
   if flqr1('CCNOME,CCNAT','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      lbx_codccu.Items.Add(CODCCU.TEXT
                                    +'-'+DM1.Query1.Fields[0].AsString+'/'+DM1.Query1.Fields[1].AsString);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end
   else
      begin
      fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCC.CODCLIExit(Sender: TObject);
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
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCC.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codfor.text := '';
      codfor.SetFocus;
      end
   else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCC.CODVENExit(Sender: TObject);
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
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCC.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)<>'' then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODTRA.Text) then
      begin
      lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(CODTRA.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end
   else
      begin
      fmensagem('Transportador não Cadastrado!',0,['0'],0);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCC.MCODUSRExit(Sender: TObject);
begin
MCODUSR.Text:=fdeixanum2(MCODUSR.Text);
if Trim(MCODUSR.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',MCODUSR.Text) then
      begin
      lbx_codusr.Items.Add(FormatFloat('0000000',StrToFloat(MCODUSR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      MCODUSR.text := '';
      MCODUSR.SetFocus;
      end
   else
      begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      MCODUSR.text := '';
      MCODUSR.SetFocus;
      end;
   end;


end;

procedure TFrm_CX_RCC.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CX_RCC',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_RCC.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   if trim(CODCLI.Text)<>'' then
   CODCLIExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_CX_RCC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_CX_RCC',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_RCC.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=fChamaVen(0,'frm_CX_RCC',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_RCC.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_CX_RCC',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_RCC.MCODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   MCODUSR.Text:=fChamaUsr(0,'frm_CX_RCC',Key);
   if trim(MCODUSR.Text)<>'' then
      MCODUSRExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CX_RCC.lbx_codusrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr.ItemIndex>=0 then
      lbx_codusr.Items.Delete(lbx_codusr.ItemIndex);

end;

procedure TFrm_CX_RCC.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_CX_RCC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_CX_RCC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_CX_RCC.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_CX_RCC.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);

end;

procedure TFrm_CX_RCC.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_CX_RCC.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_CX_RCC.sbn_coddepClick(Sender: TObject);
begin
CODDEP.Text :=fChamaDeptoCX(0,'frm_CX_RCC','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(self);
end;

procedure TFrm_CX_RCC.sbn_codccuClick(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_CX_RCC','');
if trim(CODCCU.Text)<>'' then
   CODCCUExit(self);

end;

procedure TFrm_CX_RCC.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);



if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

if flfilpad(0,'_CX_RCC','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MODREL',[]) then
      CB_MODREL.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ORIGEMINFO',[]) then
      RG_ORIGEMINFO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_BORDAS',[]) then
      CB_BORDAS.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_NAT',[]) then
      RG_NAT.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_ESTADO',[]) then
      RG_ESTADO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DATAREF',[]) then
      CB_DATAREF.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_NOTACREDITO',[]) then
      CB_NOTACREDITO.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
   end;
CB_MODRELClick(self);
RG_ORIGEMINFOClick(Self);

if codusr=1111 then
   mboolean:=true
else
   mboolean:=false;
tsRelatorio.TabVisible:=mboolean;
tsRelDiver.TabVisible :=mboolean;
lbl_dtconsis.Visible  :=mboolean;
lbl_agrupar.Visible   :=mboolean;
CB_DTCONS.Visible     :=mboolean;
CB_AGRUPAR.Visible    :=mboolean;
tsRelatorio.TabVisible:=mboolean;

Qr_LDRCRED.DisplayFormat:=mcasas;
Qr_LDRDEB.DisplayFormat :=mcasas;

Qr_TotalCR_CRED.DisplayFormat  :=mcasas;
Qr_TotalCR_DEB.DisplayFormat   :=mcasas;
Qr_TotalFCCR_CRED.DisplayFormat:=mcasas;
Qr_TotalCP_CRED.DisplayFormat  :=mcasas;
Qr_TotalCP_DEB.DisplayFormat   :=mcasas;
Qr_TotalFCCP_CRED.DisplayFormat:=mcasas;
Qr_TotalFPCP_DEB.DisplayFormat :=mcasas;
Qr_TotalFC_CRED.DisplayFormat  :=mcasas;
Qr_TotalFC_DEB.DisplayFormat   :=mcasas;
Qr_TotalFCCR_DEB.DisplayFormat :=mcasas;


end;

function TFrm_CX_RCC.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin

if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_cx_rcc.mlin:=form_impres_cx_rcc.mlin+1;
      form_impres_cx_rcc.RDprint1.ImpF(form_impres_cx_rcc.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_CX_RCC.RG_ORIGEMINFOClick(Sender: TObject);
begin
if RG_ORIGEMINFO.ItemIndex=0 then
   begin
   memo_obs.Visible  :=false;
   CB_DATAREF.Caption:='Pesquisar Na Data de Referencia';
   CB_NOTACREDITO.Visible:=false;
   end
else
   begin
   memo_obs.Visible:=true;
   CB_DATAREF.Caption:='Pesquisar Na Data de Emissão';
   CB_NOTACREDITO.Visible:=true;
   end;

fDeletaPadroes(0,'_CX_RCC','RG_ORIGEMINFO');
fGravaPadroes(0,'RG_ORIGEMINFO'   ,'itemindex'   ,'_CX_RCC',IntToStr(RG_ORIGEMINFO.ItemIndex));
end;

procedure TFrm_CX_RCC.bbConsisteClick(Sender: TObject);
var
mNomeView02: String;
mCampoData_Fc: String;
mCampoData_CP: String;
mCampoData_CR: String;
x: Integer;
begin
bbConsiste.Enabled:=false;
if fmensagem('Quer Ajustar o CADLDR Antes de Fazer a Consistencia?',0,['1','2'],2)=mrYes then
   begin
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('UPDATE CADLDR SET LOCDEP=1 '
                     +' WHERE '
                     +' LOCDEP<>1 '
                     +' AND EXISTS '
                     +' (select FPCODLDR FROM FPCP '
                     +' WHERE FPCODEMP=CODEMP '
                     +' AND FPCODLDR=CODLDR) ');

   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;


   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('UPDATE CADLDR SET LOCDEP=3 '
                     +' WHERE '
                     +' LOCDEP<>3 '
                     +' AND EXISTS '
                     +' (select FPCODLDR FROM FPCR '
                     +' WHERE FPCODEMP=CODEMP '
                     +' AND FPCODLDR=CODLDR) ');

   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;

   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('UPDATE CADLDR SET LOCDEP=1 '
                     +' WHERE '
                     +' LOCDEP<>1 '
                     +' AND '
                     +' EXISTS '
                     +' (select CACODLDR FROM CADDAP '
                     +' WHERE CACODEMP=CODEMP '
                     +' AND CACODLDR=CODLDR AND CASTATUS<2) ');

   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;


   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('UPDATE CADLDR SET LOCDEP=3 '
                     +' WHERE '
                     +' LOCDEP<>3 '
                     +' AND '
                     +' EXISTS '
                     +' (select CRCODLDR FROM CADDAR '
                     +' WHERE CRCODEMP=CODEMP '
                     +' AND CRCODLDR=CODLDR AND CRSTATUS<2) ');

   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;

   end;
if CB_DTCONS.ItemIndex=0 then
   begin
   mCampoData_Fc:='DATAREF';
   mCampoData_CP:='CADTEMIS';
   mCampoData_CR:='CRDTEMIS';
   end
else if CB_DTCONS.ItemIndex=1 then
   begin
   mCampoData_Fc:='DATADP';
   mCampoData_CP:='CADTVCTO';
   mCampoData_CR:='CRDTVCTO';
   end
else if CB_DTCONS.ItemIndex=2 then
   begin
   mCampoData_Fc:='DATAREAL';
   mCampoData_CP:='CADTPAG';
   mCampoData_CR:='CRDTPAG';
   end;



mNomeView02:=fProcTemp(23);

DM1.Query1.close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.Add('Create or replace view '+mNomeView02+' as ');
if RG_ESTADO.ItemIndex=0 then
   begin
   mCampoVlr_Dar:='VALORR';
   mCampoVlr_Dap:='VALORR';
   end
else
   begin
   mCampoVlr_Dar:='VALORP';
   mCampoVlr_Dap:='VALORP';
   end;


for x:=1 to 3 do
   begin
   if x>1 then
      DM1.Query1.Sql.Add(' union ');
   DM1.Query1.Sql.Add('Select ');
   if CB_AGRUPAR.ItemIndex=0 then
      begin
      DM1.Query1.SQL.add(' to_char('+mCampoData_Fc+','+chr(39)+fdt2+chr(39)+') as CAMPO_GRUPO ');
      DM1.Query1.SQL.add(',to_char('+mCampoData_Fc+','+chr(39)+'YYYYMMDD'+chr(39)+') as CAMPO_ORDEM ');
      end
   else if CB_AGRUPAR.ItemIndex=1 then
      begin
      DM1.Query1.SQL.add(' to_char('+mCampoData_Fc+','+chr(39)+'MM/YYYY'+chr(39)+') as CAMPO_GRUPO ');
      DM1.Query1.SQL.add(',to_char('+mCampoData_Fc+','+chr(39)+'YYYYMM'+chr(39)+') as CAMPO_ORDEM ');
      end
   else if CB_AGRUPAR.ItemIndex=2 then
      begin
      DM1.Query1.SQL.add(' to_char('+mCampoData_Fc+','+chr(39)+'YYYY'+chr(39)+') as CAMPO_GRUPO ');
      DM1.Query1.SQL.add(',to_char('+mCampoData_Fc+','+chr(39)+'YYYY'+chr(39)+') as CAMPO_ORDEM ');
      end
   else
      begin
      DM1.Query1.SQL.add(chr(39)+''+chr(39)+' as CAMPO_GRUPO ');
      DM1.Query1.SQL.add(','+chr(39)+''+chr(39)+' as CAMPO_ORDEM ');
      end;
   DM1.Query1.SQL.add(',0 AS CR_CRED ');
   DM1.Query1.SQL.add(',0 AS CR_DEB ');
   if x=1 then
      begin
      DM1.Query1.SQL.add(', DECODE(NATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dar+',0) as FCCR_CRED ');
      DM1.Query1.SQL.add(', DECODE(NATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dap+') as FCCR_DEB ');
      end
   else
      begin
      DM1.Query1.SQL.add(', 0 as FCCR_CRED ');
      DM1.Query1.SQL.add(', 0 as FCCR_DEB ');
      end;

   DM1.Query1.SQL.add(',0 AS CP_CRED ');
   DM1.Query1.SQL.add(',0 AS CP_DEB ');
   if x=2 then
      begin
      DM1.Query1.SQL.add(', DECODE(NATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dar+',0) as FCCP_CRED ');
      DM1.Query1.SQL.add(', DECODE(NATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dap+') as FCCP_DEB ');
      end
   else
      begin
      DM1.Query1.SQL.add(', 0 as FCCP_CRED ');
      DM1.Query1.SQL.add(', 0 as FCCP_DEB ');
      end;

   if x=3 then
      begin
      DM1.Query1.SQL.add(', DECODE(NATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dar+',0) as FC_CRED ');
      DM1.Query1.SQL.add(', DECODE(NATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dap+') as FC_DEB ');
      end
   else
      begin
      DM1.Query1.SQL.add(', 0 as FC_CRED ');
      DM1.Query1.SQL.add(', 0 as FC_DEB ');
      end;

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';

   la_Empresas:=fEmpresas_Selecionadas('CADLDR','CODEMP',Form_SelEmp.CLB_EMPRESAS);

   fInnerJoin(0,'CADDEP','DCODEMP','CODEMP','DCODDEP','CODDEP');
   if pbanco=0 then
     la_instrucao:=la_instrucao+' and ';
   fInnerJoin(0,'CADCCU' ,'CCCODEMP','CODEMP' ,'CCCODCCU' ,'CODCC');

   DM1.Query1.SQL.add(' from CADLDR'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' STATUS<>9');
   mcinst4:='';
   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')'
      end;

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')'
      end;

   mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')'
      end;

   mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')'
      end;
   mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
   if trim(mcinst2)<>'' then
      begin
      if trim(mcinst4)='' then
         mcinst4:='( '
      else
         mcinst4:=' or ';
      mcinst4:=mcinst4+' ( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')'
      end;
   if trim(mcinst4)<>'' then
      mcinst4:=mcinst4+' )';

   if trim(mcinst4)<>'' then
      Qr_Ldr.SQL.Add(' and '+mcinst4);

   mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
   if trim(mcinst2)<>'' then
      DM1.Query1.Sql.Add(' and CODBCO '+mcinst2);
   mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODDEP '+mcinst2);

   mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
   if trim(mcinst2)<>'' then
      DM1.Query1.SQL.Add(' and CODCC '+mcinst2);
   if RG_NAT.ItemIndex=2 then
      DM1.Query1.SQL.Add('  and NATDC='+chr(39)+'C'+chr(39));
   if RG_NAT.ItemIndex=1 then
      DM1.Query1.SQL.Add('  and NATDC<>'+chr(39)+'C'+chr(39));
   DM1.Query1.SQL.add(iif(RG_ESTADO.ItemIndex=0,
                        ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
                        +iif(RG_ESTADO.ItemIndex=1,
                        ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));

   if Trim(MDT1.Text)<>'/  /' then
      begin
      if CB_DATAREF.Checked then
         DM1.Query1.Sql.Add(' and DATAREF>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
      else
         begin
         DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39),
                                                   ' and DATADP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39)));
         end;
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      if CB_DATAREF.Checked then
         DM1.Query1.Sql.Add(' and DATAREF<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39))
      else
         DM1.Query1.Sql.Add(iif(RG_ESTADO.ItemIndex=0,' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39),
                                                   ' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39)));
      end;
   if x=1 then
      DM1.Query1.Sql.add(' and LOCDEP=3')
   else if x=2 then
      DM1.Query1.Sql.add(' and LOCDEP=1')
   else
      DM1.Query1.Sql.add(' and LOCDEP<>1 and LOCDEP<>3');

   end;


// CONTAS A RECEBER

if RG_ESTADO.ItemIndex=0 then
   begin
   mCampoVlr_Dap:='CAVALPAG';
   mCampoVlr_Dar:='(CRVALPAG+CRDEVOL)';
   end
else
   begin
   mCampoVlr_Dap:='CAVALOR';
   mCampoVlr_Dar:='CRVALOR';
   end;

DM1.Query1.Sql.Add(' union ');
DM1.Query1.Sql.Add('Select ');
if CB_AGRUPAR.ItemIndex=0 then
   begin
   DM1.Query1.SQL.add(' to_char('+mCampoData_CR+','+chr(39)+fdt2+chr(39)+') as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(',to_char('+mCampoData_CR+','+chr(39)+'YYYYMMDD'+chr(39)+') as CAMPO_ORDEM ');
   end
else if CB_AGRUPAR.ItemIndex=1 then
   begin
   DM1.Query1.SQL.add(' to_char('+mCampoData_CR+','+chr(39)+'MM/YYYY'+chr(39)+') as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(',to_char('+mCampoData_CR+','+chr(39)+'YYYYMM'+chr(39)+') as CAMPO_ORDEM ');
   end
else if CB_AGRUPAR.ItemIndex=2 then
   begin
   DM1.Query1.SQL.add(' to_char('+mCampoData_CR+','+chr(39)+'YYYY'+chr(39)+') as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(',to_char('+mCampoData_CR+','+chr(39)+'YYYY'+chr(39)+') as CAMPO_ORDEM ');
   end
else
   begin
   DM1.Query1.SQL.add(chr(39)+''+chr(39)+' as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(','+chr(39)+''+chr(39)+' as CAMPO_ORDEM ');
   end;

DM1.Query1.SQL.add(', DECODE(CRNATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dar+',0) as CR_CRED ');
DM1.Query1.SQL.add(', DECODE(CRNATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dar+') as CR_DEB ');

DM1.Query1.SQL.add(', 0 as FCCR_CRED ');
DM1.Query1.SQL.add(', 0 as FCCR_DEB ');
DM1.Query1.SQL.add(',0 AS CP_CRED ');
DM1.Query1.SQL.add(',0 AS CP_DEB ');
DM1.Query1.SQL.add(', 0 as FCCP_CRED ');
DM1.Query1.SQL.add(', 0 as FCCP_DEB ');
DM1.Query1.SQL.add(', 0 as FC_CRED ');
DM1.Query1.SQL.add(', 0 as FC_DEB ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(0,'CADDEP','DCODEMP','CRCODEMP','DCODDEP','CRCODDEP');
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCCU' ,'CCCODEMP','CRCODEMP' ,'CCCODCCU' ,'CRCODCC');

DM1.Query1.SQL.add(' from CADDAR'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +' CRSTATUS<>9');
mcinst4:='';
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' (  and CRCODCLI '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( and CRCODVEN '+mcinst2+')'
   end;

if trim(mcinst4)<>'' then
   mcinst4:=mcinst4+' )';

if trim(mcinst4)<>'' then
   Qr_Ldr.SQL.Add(' and '+mcinst4);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   DM1.Query1.Sql.Add(' and CRCODCTA '+mcinst2);
mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODDEP '+mcinst2);

mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CRCODCC '+mcinst2);
if RG_NAT.ItemIndex=2 then
   DM1.Query1.SQL.Add('  and CRNATDC='+chr(39)+'C'+chr(39));
if RG_NAT.ItemIndex=1 then
   DM1.Query1.SQL.Add('  and CRNATDC<>'+chr(39)+'C'+chr(39));
DM1.Query1.sql.add( iif(RG_ESTADO.ItemIndex=0,' and CRSTATUS>0 ','')
                  +iif(RG_ESTADO.ItemIndex=1,' and CRSTATUS<2 ',''));

if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.Sql.Add(' and '+mCampoData_CR+'>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query1.Sql.Add(' and '+mCampoData_CR+'<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));


// CONTAS A PAGAR

if RG_ESTADO.ItemIndex=0 then
   begin
   mCampoVlr_Dap:='CAVALPAG';
   mCampoVlr_Dar:='(CRVALPAG+CRDEVOL)';
   end
else
   begin
   mCampoVlr_Dap:='CAVALOR';
   mCampoVlr_Dar:='CRVALOR';
   end;

DM1.Query1.Sql.Add(' union ');
DM1.Query1.Sql.Add('Select ');
if CB_AGRUPAR.ItemIndex=0 then
   begin
   DM1.Query1.SQL.add(' to_char('+mCampoData_CP+','+chr(39)+fdt2+chr(39)+') as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(',to_char('+mCampoData_CP+','+chr(39)+'YYYYMMDD'+chr(39)+') as CAMPO_ORDEM ');
   end
else if CB_AGRUPAR.ItemIndex=1 then
   begin
   DM1.Query1.SQL.add(' to_char('+mCampoData_CP+','+chr(39)+'MM/YYYY'+chr(39)+') as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(',to_char('+mCampoData_CP+','+chr(39)+'YYYYMM'+chr(39)+') as CAMPO_ORDEM ');
   end
else if CB_AGRUPAR.ItemIndex=2 then
   begin
   DM1.Query1.SQL.add(' to_char('+mCampoData_CP+','+chr(39)+'YYYY'+chr(39)+') as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(',to_char('+mCampoData_CP+','+chr(39)+'YYYY'+chr(39)+') as CAMPO_ORDEM ');
   end
else
   begin
   DM1.Query1.SQL.add(chr(39)+''+chr(39)+' as CAMPO_GRUPO ');
   DM1.Query1.SQL.add(','+chr(39)+''+chr(39)+' as CAMPO_ORDEM ');
   end;

DM1.Query1.SQL.add(', 0 as CR_CRED ');
DM1.Query1.SQL.add(', 0 as CR_DEB ');

DM1.Query1.SQL.add(', 0 as FCCR_CRED ');
DM1.Query1.SQL.add(', 0 as FCCR_DEB ');

DM1.Query1.SQL.add(', DECODE(CANATDC,'+chr(39)+'C'+chr(39)+','+mCampoVlr_Dap+',0) as CP_CRED ');
DM1.Query1.SQL.add(', DECODE(CANATDC,'+chr(39)+'C'+chr(39)+',0,'+mCampoVlr_Dap+') as CP_DEB ');

DM1.Query1.SQL.add(', 0 as FCCP_CRED ');
DM1.Query1.SQL.add(', 0 as FCCP_DEB ');
DM1.Query1.SQL.add(', 0 as FC_CRED ');
DM1.Query1.SQL.add(', 0 as FC_DEB ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(0,'CADDEP','DCODEMP','CACODEMP','DCODDEP','CACODDEP');
if pbanco=0 then
  la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCCU' ,'CCCODEMP','CACODEMP' ,'CCCODCCU' ,'CACODCC');

DM1.Query1.SQL.add(' from CADDAP'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +' CASTATUS<>9');
mcinst4:='';
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' (  and CACODFOR '+mcinst2+')'
   end;

if trim(mcinst4)<>'' then
   Qr_Ldr.SQL.Add(' and '+mcinst4);

mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   DM1.Query1.Sql.Add(' and CACODCTA '+mcinst2);
mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CACODDEP '+mcinst2);

mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CACODCC '+mcinst2);
if RG_NAT.ItemIndex=2 then
   DM1.Query1.SQL.Add('  and CANATDC='+chr(39)+'C'+chr(39));
if RG_NAT.ItemIndex=1 then
   DM1.Query1.SQL.Add('  and CANATDC<>'+chr(39)+'C'+chr(39));
DM1.Query1.sql.add(iif(RG_ESTADO.ItemIndex=0,' and CASTATUS>0 ','')
                  +iif(RG_ESTADO.ItemIndex=1,' and CASTATUS<2 ',''));

if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.Sql.Add(' and '+mCampoData_CP+'>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query1.Sql.Add(' and '+mCampoData_CP+'<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
DM1.Query1.SQL.savetofile(mpastatemp + 'SQLrcc.txt');

TRY
   DM1.Query1.ExecSQL;
except
   DM1.Query1.SQL.savetofile(mpastatemp + 'SQLrcc.txt');
   bbConsiste.Enabled:=true;
   exit;
   end;

{
CR_CRED
CR_DEB
FCCR_CRED
FCCR_DEB

CP_CRED
CP_DEB
FCCP_CRED
FCCP_DEB

FC_CRED
FC_DEB


| CONTAS A RECEBER|  FLUXO DE CAIXA |    DIFERENCA    | |  CONTAS A PAGAR |  FLUXO DE CAIXA |    DIFERENCA    | |ORIGEM INDEFINIDA| | DIFERENCA GERAL |
+-----------------+-----------------+-----------------+ +-----------------+-----------------+-----------------+ +-----------------+ +-----------------+
| CREDITO| DEBITO | CREDITO| DEBITO | CREDITO| DEBITO | | CREDITO| DEBITO | CREDITO| DEBITO | CREDITO| DEBITO | |CREDITO | DEBITO | |CREDITO | DEBITO |

TOTCREC TOTFCREC DIFER   TOTCPAG TOTFCPAG DIFER  TOT

}

Qr_total.Close;
Qr_total.sql.clear;
Qr_total.sql.Add('select '+chr(39)+insere2(' ',' ',10)+chr(39)+' as GRUPO,  CAMPO_GRUPO,CAMPO_ORDEM,sum(CR_CRED) as CR_CRED, '
                +' sum(CR_DEB) AS CR_DEB, sum(FCCR_CRED) as FCCR_CRED, '
                +' sum(FCCR_DEB) as FCCR_DEB, '
                +' sum(CP_CRED) AS CP_CRED, sum(CP_DEB) as CP_DEB, '
                +' sum(FCCP_CRED) as FCCP_CRED, sum(FCCP_DEB) as FPCP_DEB'
                +' ,sum(FC_CRED) as FC_CRED '
                +' ,sum(FC_DEB) as FC_DEB from '+mNomeView02
                +' group by CAMPO_ORDEM,CAMPO_GRUPO ');
Qr_Total.Open;

RLReport2.PreviewModal;
bbConsiste.Enabled:=true;

end;

procedure TFrm_CX_RCC.CB_MODRELClick(Sender: TObject);
begin
IF CB_MODREL.ItemIndex=1 then
   CB_BORDAS.Visible:=true
else
   CB_BORDAS.Visible:=false;

fDeletaPadroes(0,'_CX_RCC','CB_MODREL');
fGravaPadroes(0,'CB_MODREL'   ,'itemindex'   ,'_CX_RCC',intToStr(CB_MODREL.ItemIndex));

end;

procedure TFrm_CX_RCC.CB_BORDASClick(Sender: TObject);
begin
fDeletaPadroes(0,'_CX_RCC','CB_BORDAS');
fGravaPadroes(0,'CB_BORDAS'   ,'checked'   ,'_CX_RCC',iif(CB_BORDAS.Checked,'true','false'));

end;

procedure TFrm_CX_RCC.RG_NATClick(Sender: TObject);
begin
fDeletaPadroes(0,'_CX_RCC','RG_NAT');
fGravaPadroes(0,'RG_NAT'   ,'itemindex'   ,'_CX_RCC',IntToStr(RG_NAT.ItemIndex));

end;

procedure TFrm_CX_RCC.RG_ESTADOClick(Sender: TObject);
begin
   fDeletaPadroes(0,'_CX_RCC','RG_ESTADO');
   fGravaPadroes(0,'RG_ESTADO'   ,'itemindex'   ,'_CX_RCC',IntToStr(RG_ESTADO.ItemIndex));

end;

procedure TFrm_CX_RCC.CB_DATAREFClick(Sender: TObject);
begin
fDeletaPadroes(0,'_CX_RCC','CB_DATAREF');
fGravaPadroes(0,'CB_DATAREF'   ,'checked'   ,'_CX_RCC',iif(CB_DATAREF.Checked,'true','false'));

end;

procedure TFrm_CX_RCC.CB_NOTACREDITOClick(Sender: TObject);
begin
fDeletaPadroes(0,'_CX_RCC','CB_NOTACREDITO');
fGravaPadroes(0,'CB_NOTACREDITO'   ,'checked'   ,'_CX_RCC',iif(CB_NOTACREDITO.Checked,'true','false'));

end;

function FImprimeTitulo_Fortes(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      Frm_CX_RCC.rlfiltros.Lines.Add(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x]);
      end;
   end;
result:=true;
end;


procedure TFrm_CX_RCC.RLBand_totalBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblger_cred.Caption:=FormatFloat(mcasas, mtotcred_ger);
lblger_deb.Caption :=FormatFloat(mcasas, mtotdeb_ger);
mtotdeb_ger  :=0;
mtotcred_ger :=0;

end;

procedure TFrm_CX_RCC.RLBand_totgruBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lblgru_cred.Caption:=FormatFloat(mcasas, mtotcred_gru);
lblgru_deb.Caption :=FormatFloat(mcasas, mtotdeb_gru);
mtotdeb_gru  :=0;
mtotcred_gru :=0;

end;

procedure TFrm_CX_RCC.RLBand1AfterPrint(Sender: TObject);
begin
mtotdeb_ger:=mtotdeb_ger+Qr_LDRDEB.AsFloat;
mtotdeb_gru:=mtotdeb_gru+Qr_LDRDEB.AsFloat;

mtotcred_ger:=mtotcred_ger+Qr_LDRCRED.AsFloat;
mtotcred_gru:=mtotcred_gru+Qr_LDRCRED.AsFloat;

end;

procedure TFrm_CX_RCC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CX_RCC.FormActivate(Sender: TObject);
begin
if log_coddep_cx=''  then
   begin
   CODDEP.Enabled    :=true;
   lbx_coddep.Enabled:=true;
   OMITIR_DEP.Enabled:=true;
   end
else
   begin
   CODDEP.Enabled    :=false;
   lbx_coddep.Enabled:=false;
   OMITIR_DEP.Enabled:=false;
   CODDEP.Text       :=log_coddep_cx;
   CODDEPExit(self);
   end;


end;

end.
