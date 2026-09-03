unit S_CABC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, db, dbtables,func, S_DM1, Buttons, S_Impres,
  S_Ven,S_Cli,lerarq, jpeg, CheckLst, ComCtrls, S_SelEmp,s_lerarq_geral,
  ToolEdit;

type
  TFrm_CABC = class(TForm)
    Qr_Ven: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsTipoPed: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    Label5: TLabel;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    Label3: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label4: TLabel;
    CB_EmiDoc: TCheckBox;
    mais_dados: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Label2: TLabel;
    CB_TIPOPESQ: TComboBox;
    Label6: TLabel;
    CB_ORDEM: TComboBox;
    CB_FORCAR: TCheckBox;
    StaticText7: TStaticText;
    CODRED: TEdit;
    lbx_codred: TListBox;
    OMITIR_RED: TCheckBox;
    StaticText2: TStaticText;
    CODGFOR: TEdit;
    lbx_codgfor: TListBox;
    OMITIR_GFOR: TCheckBox;
    StaticText10: TStaticText;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    StaticText11: TStaticText;
    CODORI_PED: TEdit;
    lbx_oriped: TListBox;
    OMITIR_ORIPED: TCheckBox;
    Label7: TLabel;
    CB_ICMSRET: TCheckBox;
    Qr_VenNOME: TStringField;
    Qr_VenCODIGO: TFloatField;
    Qr_VenTOTAL: TFloatField;
    Qr_VenTOTAL_QTD: TFloatField;
    Qr_VenCLOG: TStringField;
    Qr_VenCCIDADE: TStringField;
    Qr_VenCCUF: TStringField;
    Qr_VenCBAIRRO: TStringField;
    Qr_VenCCEP: TStringField;
    Qr_VenCFONE01: TStringField;
    Qr_VenGRUPO: TStringField;
    CB_SEPARADO: TComboBox;
    CB_AVANCPAG: TCheckBox;
    Qr_VenCFONE02: TStringField;
    Qr_VenCFONE03: TStringField;
    Qr_VenCFONERES: TStringField;
    Qr_VenCFONECOM: TStringField;
    Qr_VenDTULTCPR: TDateTimeField;
    Qr_VenVALORUCPR: TFloatField;
    Qr_Vendata_ucpr: TDateField;
    Qr_Venvalor_ucpr: TFloatField;
    CB_REDDESCFIN: TCheckBox;
    CB_SEMMOV: TCheckBox;
    CB_COMPARAR: TCheckBox;
    GB_COMPARADO: TGroupBox;
    Label8: TLabel;
    MDT1_COMP: TMaskEdit;
    Label9: TLabel;
    MDT2_COMP: TMaskEdit;
    Qr_VenTOTAL_VLR_SEGPER: TFloatField;
    Qr_VenTOTAL_QTD_SEGPER: TFloatField;
    CB_COMP_QTD: TCheckBox;
    tsOutros: TTabSheet;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CODLOC: TEdit;
    lbx_codloc: TListBox;
    OMITIR_LOC: TCheckBox;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    CODUF: TEdit;
    lbx_coduf: TListBox;
    OMITIR_UF: TCheckBox;
    lbl_prodserv: TLabel;
    CB_PRODSERV: TComboBox;
    bb_exportar: TBitBtn;
    Src_Ven: TDataSource;
    RG_IE: TRadioGroup;
    StaticText4: TStaticText;
    EDT_CODREG: TEdit;
    lbx_CODREG: TListBox;
    OMITIR_CODREG: TCheckBox;
    Label13: TLabel;
    CLBDocRecFederal: TCheckListBox;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    edt_datinc_ini: TDateEdit;
    edt_datinc_fin: TDateEdit;
    Qr_VenCEMAIL: TStringField;
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OMITIR_VENMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure OMITIR_CLIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure RG_TIPOPEDExit(Sender: TObject);
    procedure CB_TIPOPESQExit(Sender: TObject);
    procedure CB_EmiDocClick(Sender: TObject);
    procedure CODREDKeyPress(Sender: TObject; var Key: Char);
    procedure CODGFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODORI_PEDKeyPress(Sender: TObject; var Key: Char);
    procedure CODREDExit(Sender: TObject);
    procedure CODGFORExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODORI_PEDExit(Sender: TObject);
    procedure lbx_codredKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codgforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_oripedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Qr_VenCalcFields(DataSet: TDataSet);
    procedure CB_COMPARARClick(Sender: TObject);
    procedure MDT1_COMPExit(Sender: TObject);
    procedure MDT2_COMPExit(Sender: TObject);
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODUFExit(Sender: TObject);
    procedure lbx_codufKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODLOCExit(Sender: TObject);
    procedure CODLOCKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codlocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bb_exportarClick(Sender: TObject);
    procedure EDT_CODREGExit(Sender: TObject);
    procedure EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLBDocRecFederalClick(Sender: TObject);
  private
    { Private declarations }
    function fCABCCabRel(pTipo: Integer): Boolean;
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
    function fTestaCab(pTipo: Integer): Boolean;
    function fImprimirCriterito(pQtdCol: Integer): boolean;
    function FAbrirBanco: Boolean;

  public
    { Public declarations }
    form_impres_cabc: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
    Frm_CABC: TFrm_CABC;
    tipo_ped       : string;
    mNomeView : String;

implementation

uses S_DM2, S_GFor, S_DM4, S_OriPed, S_DM6, S_Red, S_For, S_UF, Math,
  Func2, func_excecoes;


{$R *.dfm}

procedure TFrm_CABC.bbImprimirClick(Sender: TObject);
var
mordem_imp: Integer;
mtotg,mtotb,mtotb_gru: Real;
mTotQtd, mTotQtd_Gru: Real;
mperc: Real;
mCampoGrupo: String;
mCampoOrdem: String;
mGrupo_ant: String;
mCampoGrupo_semmov: String;
mCampoOrdem_SemMov: String;
mQtdComMov,mQtdSemMov: Integer;
mCasasComp,mCampo01, mCampo02: String;
mUsaVend: Boolean;
x: integer;
Query_exe_local: tQuery;

begin


if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
mUsaVend:=false;
if (CB_COMPARAR.Checked) then
   begin
   if (Trim(MDT1_COMP.Text)<>'/  /') and (Trim(MDT2_COMP.Text)<>'/  /') then
      begin
      if StrTodate(MDT2_COMP.Text)<StrToDate(MDT1_COMP.Text) then
         begin
         fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
         MDT1_COMP.SetFocus;
         exit;
         end;
      end;
   end;

Query_exe_local:=tQuery.create(nil);
Query_exe_local.DatabaseName:=DM1.SG_ASSOC.DatabaseName;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if trim(mNomeView)='' then
   mNomeView:=fProcTemp(22);
mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

if (lbx_codfor.Items.Count>0) or (lbx_codgfor.Items.Count>0) or (CB_SEPARADO.ItemIndex=4) then
  begin
  if (pbanco=0) and (trim(la_instrucao)<>'') then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','P2CODEMP','FCODFOR','P2CODFAB');
  end;

//mcampo_vlr:='sum((P2TOTLIQ+P2ICMSR)-P2DESCRAT)';


if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';

if CB_SEPARADO.ItemIndex=0 then // bairro
   begin
   mCampoOrdem:='CADCLI.CUF,CADCLI.CCIDADE,CADCLI.CBAIRRO';
   mCampoGrupo:='CADCLI.CUF  ||'+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ||'+chr(39)+' '+chr(39)+'|| CADCLI.CBAIRRO';
   mCampoGrupo_semmov:='CADCLI.CUF  ||'+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ||'+chr(39)+' '+chr(39)+'|| CADCLI.CBAIRRO';
   mCampoOrdem_SemMov:='CADCLI.CUF,CADCLI.CCIDADE,CADCLI.CBAIRRO';

   end
else if CB_SEPARADO.ItemIndex=1 then // cidade
   begin
   mCampoOrdem:='CADCLI.CUF,CADCLI.CCIDADE';
   mCampoGrupo:='CADCLI.CUF || '+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ';
   mCampoGrupo_semmov:='CADCLI.CUF || '+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ';
   mCampoOrdem_SemMov:='CADCLI.CUF,CADCLI.CCIDADE';
   end
else if CB_SEPARADO.ItemIndex=2 then // cliente
   begin
   mCampoOrdem:='NOME,CODIGO';
   mCampoGrupo:='TO_CHAR(P1CODCLI) || '+chr(39)+'-'+chr(39)+'|| CRAZAO';
   mCampoGrupo_semmov:='TO_CHAR(CCODCLI) || '+chr(39)+'-'+chr(39)+'|| CRAZAO';
   mCampoOrdem_SemMOv:='NOME,CODIGO';
   end
else if CB_SEPARADO.ItemIndex=3 then // Estado
   begin
   mCampoOrdem:='CUF';
   mCampoGrupo:='CUF';
   mCampoGrupo_semmov:='CUF';
   mCampoOrdem_SemMov:='CUF';
   end
else if CB_SEPARADO.ItemIndex=4 then // fornecedor
   begin
   mCampoOrdem:='FRAZAO,FCODFOR';
   mCampoGrupo:='TO_CHAR(FCODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=5 then // bairro
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMGRU,PDCODGRU';
   mCampoGrupo:='TO_CHAR(PDCODGRU) || '+chr(39)+'-'+chr(39)+'|| PDNOMGRU ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=6 then // bairro
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDMARCA';
   mCampoGrupo:='PDMARCA';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=7 then // bairro
   begin
   mCampoOrdem:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
   mCampoGrupo:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=8 then // RAMO
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMRAM,PDCODRAM';
   mCampoGrupo:='TO_CHAR(PDCODRAM) || '+chr(39)+'-'+chr(39)+'|| PDNOMRAM ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=9 then // cidade
   begin
   mCampoOrdem:='CNOMRED,CCODRED';
   mCampoGrupo:='TO_CHAR(CCODRED) || '+chr(39)+'-'+chr(39)+'|| CNOMRED';
   mCampoGrupo_semmov:='TO_CHAR(CCODRED) || '+chr(39)+'-'+chr(39)+'|| CNOMRED';
   mCampoOrdem_SemMov:='CNOMRED,CCODRED';
   end
else if CB_SEPARADO.ItemIndex=10 then // sem separara
   begin
   mCampoOrdem:='';
   mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=11 then // RAMO
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMCON,PDCODCON';
   mCampoGrupo:='TO_CHAR(PDCODCON) || '+chr(39)+'-'+chr(39)+'|| PDNOMCON ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=12 then // VENDEDOR
   begin
   mUsaVend:=true;
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';

   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   mCampoOrdem:='VNOME,P1CODVEN';
   mCampoGrupo:='TO_CHAR(P1CODVEN) || '+chr(39)+'-'+chr(39)+'|| VNOME ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end;

if lbx_codsup.Items.Count>0 then
   mUsaVend:=true;

if (mUsaVend=true) and (CB_SEPARADO.ItemIndex<>12) then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   end;
if (CB_PRODSERV.ItemIndex<>1) then
   begin
   Query_exe_local.Close;
   Query_exe_local.SQl.Clear;
//   mcampo_qtd:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcampo_qtd:=' DECODE(max(P1FORMACE),                                     '
              +'   0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD)), '
              +'   1,DECODE(max(P1TIPO_ENTSAI),1,max(P2QTD)*-1,max(P2QTD))) ';
   if CB_ICMSRET.Checked then
      begin
      if CB_REDDESCFIN.Checked then
         mcampo_vlr:='DECODE(max(P1TIPO_ENTSAI),1,sum(P2TOTLIQ-P2VDESCF+P2ICMSR)*-1,sum(P2TOTLIQ-P2VDESCF+P2ICMSR))'
      else
         mcampo_vlr:='DECODE(max(P1TIPO_ENTSAI),1,sum(P2TOTLIQ+P2ICMSR)*-1,sum(P2TOTLIQ+P2ICMSR))';
      end
   else
      begin
      if CB_REDDESCFIN.Checked then
         mcampo_vlr:='DECODE(max(P1TIPO_ENTSAI),1,sum(P2TOTLIQ-P2VDESCF)*-1,sum(P2TOTLIQ-P2VDESCF))'
      else
         mcampo_vlr:='DECODE(max(P1TIPO_ENTSAI),1,sum(P2TOTLIQ)*-1,sum(P2TOTLIQ))';
      end;
   mcampo_icmsr :='sum(DECODE(P1TIPO_ENTSAI,1,P2ICMSR*-1,p2ICMSR))';
   Query_exe_local.SQL.Add('Create or replace view '+mNomeView+' as ');

   Query_exe_local.SQl.Add('Select CRAZAO AS NOME, P1CODCLI AS CODIGO,'+mcampo_vlr+' as TOTAL'
                     +'       ,'+mcampo_qtd+' as TOTAL_QTD '
                     +', 0 as total_vlr_segper   '
                     +', 0 as total_qtd_segper   '
                     +','+iif(trim(mcampogrupo)='',quotedstr(' '),mcampogrupo)+' as GRUPO '
                     +', max(CLOG) as CLOG       '
                     +', max(CCIDADE) as CCIDADE '
                     +', max(CUF) as CCUF        '
                     +', max(CBAIRRO) as CBAIRRO '
                     +', max(CEMAIL) as CEMAIL '
                     +', max(CCEP)  as CCEP      '
                     +', max(CFONE01) as CFONE01 '
                     +', max(CFONE02) as CFONE02 '
                     +', max(CFONE03) as CFONE03 '
                     +', max(CFONERES) as CFONERES '
                     +', max(CFONECOM) as CFONECOM ');
   if mais_dados.Checked then
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
      end
   else
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
      end;

   Query_exe_local.SQL.Add(', 0 as LOCAL_INFO ');

   Query_exe_local.Sql.add(' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                   +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_EmiDoc.Checked then
      Query_exe_local.SQL.Add('       and P1EMIDOC=1 ');

   if RG_IE.ItemIndex=1 then
      begin
      Query_exe_local.SQl.Add(' and length(CIE)<=4 ');
      end
   else if RG_IE.ItemIndex=0 then
      begin
      Query_exe_local.SQl.Add(' and length(CIE)>4 ');
      end;

   if trim(edt_datinc_ini.Text)<>'/  /' then
      begin

      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta('CDTCAD',true,edt_datinc_ini.Date));
      end;


   if trim(edt_datinc_fin.Text)<>'/  /' then
      begin
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta('CDTCAD',false,edt_datinc_fin.Date));
      end;



   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and  P1TIPO '+mcinst2);

   if Trim(MDT1.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));


   if Trim(MDT2.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,FALSE,StrToDate(MDT2.Text)));

   mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODVEN '+mcinst2);



   mcinst2:='';
   mcinst3:='';
   for x:=0 to lbx_coduf.Count -1 do
     begin
     mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
     mcinst3:=',';
     end;

   if trim(mcinst2)<>'' then
     begin
     mcinst2:=' in ('+mcinst2+')';
     if OMITIR_UF.Checked then
       mcinst2:=' not '+mcinst2;
     Query_exe_local.sql.Add(' and CUF '+mcinst2);
     end;

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODLOC '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CROTA '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and VCODSUP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODCLI '+mcinst2);

   mcinst2:='';
   IF CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]<>true then
      begin
      if CLBDocRecFederal.Checked[0]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCPF>0 ';
      if CLBDocRecFederal.Checked[1]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCNPJ>0 ';
      if CLBDocRecFederal.Checked[2]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' (CCNPJ=0 and CCPF=0) ';
      if trim(mcinst2)<>'' then
         Query_exe_local.sql.Add(' and ('+mcinst2+')');
      end;


   mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODRED '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODGFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_oriped,OMITIR_ORIPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and P1ORIGEM '+mcinst2);

   if (trim(mCampoOrdem)<>'') and (CB_SEPARADO.itemindex<>2) then
      Query_exe_local.SQL.Add(' Group by P2CHAVE,P2ITEM,'+mCampoOrdem+',')
   else
      Query_exe_local.SQL.Add(' Group by ');
   Query_exe_local.SQL.Add(' CRAZAO,P1CODCLI,P2CHAVE,P2ITEM');
   // testa servicos
   end;

if CB_PRODSERV.ItemIndex>0 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');

   if (lbx_codfor.Items.Count>0) or (lbx_codgfor.Items.Count>0) or (CB_SEPARADO.ItemIndex=4) then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','P2SCODEMP','FCODFOR','P2SCODFAB');
      end;

   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';

   if CB_SEPARADO.ItemIndex=6 then // bairro
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');
      end
   else if CB_SEPARADO.ItemIndex=8 then // RAMO
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');
      end
   else if CB_SEPARADO.ItemIndex=11 then // RAMO
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');
      end
   else if CB_SEPARADO.ItemIndex=12 then // Estado
      begin
      mUsaVend:=true;
      end;

   if lbx_codsup.Items.Count>0 then
      mUsaVend:=true;
   if mUsaVend then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
      end;

//   mcampo_qtd:=fGerarInstrucaoQtd(0,'P2SQTD',Form_SelEmp.CLB_EMPRESAS);
   mcampo_qtd:=' DECODE(max(P1FORMACE),                                     '
            +'   0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2SQTD)*-1,sum(P2SQTD)), '
            +'   1,DECODE(max(P1TIPO_ENTSAI),1,max(P2SQTD)*-1,max(P2SQTD))) ';

   if CB_REDDESCFIN.Checked then
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,((PS2TOTLIQ)-P2SVDESCF)*-1,(P2STOTLIQ)-P2SVDESCF)))'
   else
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2STOTLIQ)*-1,(P2STOTLIQ)))';


   mcampo_icmsr :='sum(DECODE(P1TIPO_ENTSAI,1,0,0))';
   if cb_ProdServ.ItemIndex=1 then
      begin
      Query_exe_local.Close;
      Query_exe_local.SQl.Clear;
      Query_exe_local.SQL.Add('Create or replace view '+mNomeView+' as ');
      end
   else
      Query_exe_local.SQL.Add(' union ');


   Query_exe_local.SQl.Add('Select CRAZAO AS NOME, P1CODCLI AS CODIGO,'+mcampo_vlr+' as TOTAL'
                    +'       ,'+mcampo_qtd+' as TOTAL_QTD '
                    +', 0 as total_vlr_segper '
                    +', 0 as total_qtd_segper '
                     +','+iif(trim(mcampogrupo)='',quotedstr(' '),mcampogrupo)+' as GRUPO '
                   +', max(CLOG) as CLOG '
                   +', max(CCIDADE) as CCIDADE '
                   +', max(CUF) as CCUF '
                   +', max(CBAIRRO) as CBAIRRO '
                     +', max(CEMAIL) as CEMAIL '
                   
                   +', max(CCEP)  as CCEP '
                   +', max(CFONE01) as CFONE01 '
                   +', max(CFONE02) as CFONE02 '
                   +', max(CFONE03) as CFONE03 '
                   +', max(CFONERES) as CFONERES '
                   +', max(CFONECOM) as CFONECOM ');
   if mais_dados.Checked then
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');

      end
   else
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
      end;
   Query_exe_local.SQL.Add(', 1 as LOCAL_INFO ');

   Query_exe_local.Sql.add(' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                   +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_EmiDoc.Checked then
      Query_exe_local.SQL.Add('       and P1EMIDOC=1 ');

   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and  P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));


   if Trim(MDT2.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,FALSE,StrToDate(MDT2.Text)));

   mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODVEN '+mcinst2);



   if trim(edt_datinc_ini.Text)<>'/  /' then
      begin
      Query_exe_local.SQL.Add( mcinst+ ' CDTCAD>=:DTCAD_INI');
      Query_exe_local.ParamByName('DTCAD_INI').AsDateTime:=edt_datinc_ini.Date;
      mcinst:=' and ';
      end;


   if trim(edt_datinc_fin.Text)<>'/  /' then
      begin
      Query_exe_local.SQL.Add( mcinst+ ' CDTCAD<=:DTCAD_FIN');
      Query_exe_local.ParamByName('DTCAD_FIN').AsDateTime:=edt_datinc_fin.Date;
      mcinst:=' and ';
      end;


   mcinst2:='';
   mcinst3:='';
   for x:=0 to lbx_coduf.Count -1 do
     begin
     mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
     mcinst3:=',';
     end;
   if trim(mcinst2)<>'' then
     begin
     mcinst2:=' in ('+mcinst2+')';
     if OMITIR_UF.Checked then
       mcinst2:=' not '+mcinst2;
     Query_exe_local.sql.Add(' and CUF '+mcinst2);
     end;

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODLOC '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and VCODSUP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODCLI '+mcinst2);


   mcinst2:='';
   IF CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]<>true then
      begin
      if CLBDocRecFederal.Checked[0]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCPF>0 ';
      if CLBDocRecFederal.Checked[1]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCNPJ>0 ';
      if CLBDocRecFederal.Checked[2]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' (CCNPJ=0 and CCPF=0) ';
      if trim(mcinst2)<>'' then
       Query_exe_local.sql.Add(' and ('+mcinst2+')');
      end;

   mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODRED '+mcinst2);
{
   mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODGFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODFOR '+mcinst2);
}
   mcinst2:=fItensListBox(0,lbx_oriped,OMITIR_ORIPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and P1ORIGEM '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CROTA '+mcinst2);

   if (trim(mCampoOrdem)<>'') and (CB_SEPARADO.itemindex<>2) then
      Query_exe_local.SQL.Add(' Group by P2SCHAVE, P2SITEM,'+mCampoOrdem+',')
   else
      Query_exe_local.SQL.Add(' Group by ');
   Query_exe_local.SQL.Add(' CRAZAO,P1CODCLI,P2SCHAVE,P2SITEM');
   end;
// fim da alimentação para servicos

if CB_COMPARAR.Checked then
   begin
   Query_exe_local.SQl.Add(' union ');

   Query_exe_local.SQl.Add('Select CRAZAO AS NOME, P1CODCLI AS CODIGO, '
                     +' 0 as TOTAL, '
                     +' 0 AS TOTAL_QTD '
                     +','+mcampo_vlr+' as total_vlr_segper '
                     +','+mcampo_qtd+' as total_qtd_segper '
                     +','+iif(trim(mcampogrupo)='',quotedstr(' '),mcampogrupo)+' as GRUPO '
                   +', max(CLOG) as CLOG '
                   +', max(CCIDADE) as CCIDADE '
                   +', max(CUF) as CCUF '
                   +', max(CBAIRRO) as CBAIRRO '
                     +', max(CEMAIL) as CEMAIL '

                   +', max(CCEP)  as CCEP '
                   +', max(CFONE01) as CFONE01 '
                   +', max(CFONE02) as CFONE02 '
                   +', max(CFONE03) as CFONE03 '
                   +', max(CFONERES) as CFONERES '
                   +', max(CFONECOM) as CFONECOM ');
   if mais_dados.Checked then
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');

      end
   else
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
      end;
   Query_exe_local.SQL.Add(', 2 as LOCAL_INFO ');


   Query_exe_local.Sql.add(' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where P1STATUS<'+mstatus_excluido+iif(la_Empresas='','',' and ')+la_Empresas
                   +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_EmiDoc.Checked then
      Query_exe_local.SQL.Add('       and P1EMIDOC=1 ');

   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and  P1TIPO '+mcinst2);



   if Trim(MDT1_COMP.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1_COMP.Text)));


   if Trim(MDT2_COMP.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,FALSE,StrToDate(MDT2_COMP.Text)));


   mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODVEN '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODCLI '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODRED '+mcinst2);

 {  mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODGFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODFOR '+mcinst2);
 }

   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CROTA '+mcinst2);

   if trim(edt_datinc_ini.Text)<>'/  /' then
      begin
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta('CDTCAD',true,edt_datinc_ini.Date));
      end;


   if trim(edt_datinc_fin.Text)<>'/  /' then
      begin
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta('CDTCAD',false,edt_datinc_fin.Date));
      end;



   mcinst2:='';
   mcinst3:='';
   for x:=0 to lbx_coduf.Count -1 do
     begin
     mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
     mcinst3:=',';
     end;
   if trim(mcinst2)<>'' then
     begin
     mcinst2:=' in ('+mcinst2+')';
     if OMITIR_UF.Checked then
       mcinst2:=' not '+mcinst2;
     Query_exe_local.sql.Add(' and CUF '+mcinst2);
     end;

    mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
    if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODLOC '+mcinst2);


    mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
    if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and VCODSUP '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_oriped,OMITIR_ORIPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and P1ORIGEM '+mcinst2);

   if (trim(mCampoOrdem)<>'') and (CB_SEPARADO.itemindex<>2) then
      Query_exe_local.SQL.Add(' Group by P2CHAVE, P2ITEM,'+mCampoOrdem+',')
   else
      Query_exe_local.SQL.Add(' Group by ');
   Query_exe_local.SQL.Add(' CRAZAO,P1CODCLI,P2CHAVE,P2ITEM');

   end;

// Query_exe_local.SQL.SAVETOFILE(mpastatemp + 'SQL.TXT');
Query_exe_local.RequestLive:=false;
//Query_exe_local. RequestLive:=false;

try
   Query_exe_local.ExecSQL;
except on e : exception do
   begin
   ex_erroSql_Novo(Query_exe_local,8410,'SGE '+E.MESSAGE,'CADOP02');

   end;
   end;



Qr_Ven.Close;
Qr_Ven.SQL.Clear;
Qr_Ven.sql.add('Select NOME'
                +',CODIGO,'
                +'sum(TOTAL) as total '
                +',sum(TOTAL_QTD) as TOTAL_QTD '
                +', sum(total_vlr_segper) as total_vlr_segper '
                +', sum(total_qtd_segper) as total_qtd_segper '
                +', GRUPO '
                +', max(CLOG) AS CLOG '
                +', max(CCIDADE) AS CCIDADE '
                +', max(CCUF) as CCUF '
                +', max(CBAIRRO) as CBAIRRO '
                +', max(CEMAIL) as CEMAIL '
                +', max(CCEP) as CCEP '
                +', max(CFONE01) as CFONE01 '
                +', max(CFONE02) as CFONE02 '
                +', max(CFONE03) as  CFONE03 '
                +', max(CFONERES) as CFONERES '
                +', max(CFONECOM) as CFONECOM '
                +', max(DTULTCPR) as DTULTCPR'
                +', sum(VALORUCPR) as VALORUCPR '
                +', max(LOCAL_INFO) as LOCAL_INFO '

                +' from '+mNomeView);
Qr_ven.SQL.add('group by NOME,CODIGO,GRUPO ');


IF CB_SEMMOV.Checked then
   begin
   Qr_Ven.SQL.Add(' union ');
   Qr_Ven.SQL.add(' Select CRAZAO AS NOME, CCODCLI AS CODIGO, 0 AS TOTAL, 0 as TOTAL_QTD '
                 +', 0 as total_vlr_segper '
                 +', 0 as total_qtd_segper, '
                 +mCampoGrupo_SemMov +' as GRUPO '
                +',  CADCLI.CLOG AS CLOG'
                +',  CADCLI.CCIDADE AS CCIDADE'
                +',  CADCLI.CUF AS CCUF'
                +',  CADCLI.CBAIRRO AS CBAIRRO '
                +',  CADCLI.CEMAIL as CEMAIL '

                +',  CADCLI.CCEP AS CCEP'
                +',  CADCLI.CFONE01 AS CFONE01 '
                +',  CADCLI.CFONE02  AS CFONE02 '
                +',  CADCLI.CFONE03 AS CFONE03'
                +',  CADCLI.CFONERES AS CFONERES'
                +',  CADCLI.CFONECOM AS CFONECOM '
                +',  CDTUCPR'
                +',  0 as VALORUCPR '
                +', 5 as LOCAL_INFO '

                +' from CADCLI, '+mNomeView
                 +'       where CSTATUS < 9 ');
    if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
       Qr_Ven.SQL.add(' and CCODEMP=0'+IntToStr(codemp));
    Qr_Ven.SQL.Add(' and CODIGO(+)=CCODCLI and CODIGO IS NULL ');

    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and CCODCLI '+mcinst2);

   mcinst2:='';
   IF CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]<>true then
      begin
      if CLBDocRecFederal.Checked[0]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCPF>0 ';
      if CLBDocRecFederal.Checked[1]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCNPJ>0 ';
      if CLBDocRecFederal.Checked[2]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' (CCNPJ=0 and CCPF=0) ';
      if trim(mcinst2)<>'' then
       Qr_ven.sql.Add(' and ('+mcinst2+')');
      end;


    mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and CCODRED '+mcinst2);

    if lbx_codven.Items.Count>0 then
       begin
       mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
       if trim(mcinst2)<>'' then
          begin
          Qr_Ven.SQL.Add(' and (  (CCODVEN '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV02 '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV03 '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV04 '+mcinst2+')');
          Qr_Ven.SQL.Add('     ) ');

          end;
       end;

   mcinst2:='';
   mcinst3:='';
   for x:=0 to lbx_coduf.Count -1 do
     begin
     mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
     mcinst3:=',';
     end;
   if trim(mcinst2)<>'' then
     begin
     mcinst2:=' in ('+mcinst2+')';
     if OMITIR_UF.Checked then
       mcinst2:=' not '+mcinst2;
     Qr_Ven.sql.Add(' and CUF '+mcinst2);
     end;
if trim(edt_datinc_ini.Text)<>'/  /' then
   begin
   Qr_Ven.SQL.Add( mcinst+ ' CDTCAD>=:DTCAD_INI');
   Qr_Ven.ParamByName('DTCAD_INI').AsDateTime:=edt_datinc_ini.Date;
   mcinst:=' and ';
   end;


if trim(edt_datinc_fin.Text)<>'/  /' then
   begin
   Qr_Ven.SQL.Add( mcinst+ ' CDTCAD<=:DTCAD_FIN');
   Qr_Ven.ParamByName('DTCAD_FIN').AsDateTime:=edt_datinc_fin.Date;
   mcinst:=' and ';
   end;



    mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and CCODLOC '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codreg,OMITIR_CODREG);
   if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and CROTA '+mcinst2);


    end;

Qr_Ven.SQL.add(' order by GRUPO ');

if CB_ORDEM.ItemIndex=1 then
   Qr_Ven.SQL.Add(' ,CODIGO ')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Ven.SQL.Add(' ,TOTAL ')
else if CB_ORDEM.ItemIndex=3 then
   Qr_Ven.SQL.Add(' ,TOTAL desc ')
else
   Qr_Ven.SQL.Add(' ,NOME ');

//Qr_ven.SQL.SaveToFile(mpastatemp + 'SQL2.TXT');

try
   Qr_ven.Open;
except
   Qr_ven.SQL.SaveToFile(mpastatemp + 'SQL2.TXT');
   exit;
   end;



if Qr_Ven.Eof then
   begin
   fmensagem('Nada a ser impresso na condição solicitada',0,['0'],0);
   exit
   end;
testeform := TFrm_CABC(FindGlobalComponent('form_impres_cabc'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_cabc);

form_impres_cabc.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mQtdComMov:=0;
mQtdSemMov:=0;;

mtotb      :=0;
mtotb_gru  :=0;
mTotQtd    :=0;
mordem_imp :=0;
mTotQtd_Gru:=0;
form_impres_cabc.mpag:=0;
form_impres_cabc.mlin:=0;
mtotg:=0;
While not Qr_Ven.Eof do
   begin
   mtotg:=mtotg+Qr_VenTOTAL.Value;
   Qr_Ven.Next;
   end;
Qr_Ven.First;
mGrupo_ant:=Qr_VenGRUPO.AsString;
mCampo01:='TOTAL';
mCampo02:='TOTAL_QTD';

if CB_COMPARAR.Checked then
   begin
   if CB_COMP_QTD.Checked then
      begin
      mCampo01:='TOTAL_QTD';
      mCampo02:='total_qtd_segper';
      mCasasComp:=mcasqtd;
      end
   else
      begin
      mCampo01:='TOTAL';
      mCampo02:='total_vlr_segper';
      mCasasComp:=mcasas;
      end;
   end;
mGrupo_ant:='';
While not Qr_Ven.Eof do
  begin
  if form_impres_cabc.mlin=0 then
    begin
    fCABCCabRel(0);
    if CB_SEPARADO.ItemIndex=10 then
      fCABCCabRel(1);
    end;

  if (CB_SEPARADO.ItemIndex<>10) and (mGrupo_ant<>Qr_VenGRUPO.AsString)  then
    begin
    mGrupo_ant:=Qr_VenGRUPO.AsString;
    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    form_impres_cabc.RDprint1.impf(form_impres_cabc.mlin,01,centra(mGrupo_ant,' ',136),m12ccp);
    fCABCCabRel(1);
    end;

  mordem_imp:=mordem_imp+1;
  form_impres_cabc.mlin:=form_impres_cabc.mlin+1;

  if CB_COMPARAR.Checked then
    begin
    if (Qr_Ven.fieldbyName(mCampo01).Asfloat>0) and
       (Qr_Ven.fieldbyName(mCampo02).Asfloat=0) then
       mperc:=-100
    else if (Qr_Ven.fieldbyName(mCampo01).Asfloat=0) and
       (Qr_Ven.fieldbyName(mCampo02).Asfloat>0) then
       mperc:=100
    else if (Qr_Ven.fieldbyName(mCampo01).Asfloat>0) and
       (Qr_Ven.fieldbyName(mCampo02).Asfloat>0) then
       begin
       try
          mperc:=((Qr_Ven.fieldbyName(mCampo02).Asfloat
                -Qr_Ven.fieldbyName(mCampo01).Asfloat)*100)/Qr_Ven.fieldbyName(mCampo02).Asfloat;
       except
          mperc:=0;
          end;
       end;
    end
  else
    begin
    if (Qr_Ven.fieldbyName(mCampo01).Asfloat>0) and (mtotg>0) then
       mperc:=(Qr_Ven.fieldbyName(mCampo01).Value*100)/mtotg
    else
       mperc:=0;
    end;
  form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+insere(FloatToStr(mordem_imp),'0',05)
                                +'|'+insere(Qr_VenCODIGO.AsString,' ',8)
                                +'|'+insere2(Qr_VenNOME.Value,' ',41)+'|'
                                +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp, mcasas), Qr_Ven.fieldbyName(mCampo01).Asfloat),' ',14)+'|'
                                +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp,mcasqtd), Qr_Ven.fieldbyName(mCampo02).Asfloat),' ',14)+'|'
                                +insere(FormatFloat('##0.0', mperc),' ',6)+'%|',m12ccp);
  if mais_dados.Checked then
    begin
    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+insere2(Qr_VenCLOG.ASSTRING,' ',30)+'|'
                                         +insere2(Qr_VenCCIDADE.AsString+' - '+Qr_VenCCUF.ASSTRING,' ',15)+'|'
                                         +insere2(Qr_VenCBAIRRO.ASSTRING,' ',20)+'|'
                                         +insere2(Qr_VenCCEP.ASSTRING,' ',10)+'|'
                                         +insere2(Qr_VenCFONE01.ASSTRING,' ',15),m12ccp);

    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+insere2(Qr_VenCFONE02.ASSTRING,' ',21)+' | '
                                     +insere2(Qr_VenCFONE03.ASSTRING,' ',21)+' | '
                                     +insere2(Qr_VenCFONERES.ASSTRING,' ',21)+' | '
                                     +insere2(Qr_VenCFONECOM.ASSTRING,' ',21)+' | '
                                     ,m12ccp);
    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+insere2('E-Mail: '+Qr_VenCEmail.ASSTRING,' ',94)+'|'
                                     ,m12ccp);

    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+Centra('Data da Ultima compra: '+formatDatetime(fdt2, Qr_Vendata_ucpr.Value)
                                        +' Valor: '+FormatFloat(mcasas, Qr_Venvalor_ucpr.Value),' ',94)
                                        +'|'
                                     ,m12ccp);


    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'------------------------------------------------------------------------------------------------',m12ccp);

    end;

  mtotb      :=mtotb +Qr_Ven.fieldbyName(mCampo01).Value;
  mtotb_gru  :=mtotb_gru+Qr_Ven.fieldbyName(mCampo01).Value;
  mTotQtd    :=mTotQtd+Qr_Ven.fieldbyName(mCampo02).Value;
  mTotQtd_Gru:=mTotQtd_Gru+Qr_Ven.fieldbyName(mCampo02).Value;

  if Qr_Ven.fieldbyName(mCampo01).AsFloat>0 then
     mQtdComMov:=mQtdComMov+1
  else
     mQtdSemMov:=mQtdSemMov+1;

  Qr_Ven.Next;

  if not Qr_Ven.Eof then
    begin
    if (CB_SEPARADO.ItemIndex<>10) and (mGrupo_ant<>Qr_VenGRUPO.AsString) then
      begin
      if CB_COMPARAR.Checked then
        begin
        try
          mperc:=((mTotQtd_Gru-mtotb_gru)*100)/mTotQtd_Gru
        except
          mperc:=0;
          end;
        end
      else
        begin
        try
          mperc:=((mtotb_gru)*100)/mtotg;
        except
          mperc:=0;
          end;
        end;
      form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
      form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+insere(' ',' ',05)
                                    +'|'+insere(' ',' ',8)
                                    +'|'+insere2('Total do Grupo','.',41)+'|'
                                    +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp,mcasas), mtotb_gru),' ',14)+'|'
                                    +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp,mcasqtd), mTotQtd_Gru),' ',14)+'|'
                                    +insere(FormatFloat('##0.0', mperc),' ',6)+'%|',m12ccp);
      form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
      mTotQtd_Gru:=0;
      mtotb_gru  :=0;
      form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'+-----+--------+-----------------------------------------+--------------+--------------+-------+',m12ccp);
      if (CB_AVANCPAG.Checked) or (form_impres_cabc.mlin>57) then
        begin
        form_impres_cabc.mlin:=0;
        form_impres_cabc.RDprint1.Novapagina;
        fCABCCabRel(0);
        end
      else
        begin
        mGrupo_ant:=Qr_VenGRUPO.AsString;
        form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
        form_impres_cabc.RDprint1.impf(form_impres_cabc.mlin,01,centra(mGrupo_ant,' ',136),mneg);
        end;
      end
    else if form_impres_cabc.mlin>58 then
      begin
      form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
      form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'+Continua------+-----------------------------------------+--------------+--------------+-------+',m12ccp);
      form_impres_cabc.RDprint1.Novapagina;
      fCABCCabRel(0);
      form_impres_cabc.mlin:=0;
      end;
    end;
  end;

if (CB_SEPARADO.ItemIndex<>10) and ((mtotg<>0) or (mtotb_gru<>0)) then
   begin
   form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
   if CB_COMPARAR.Checked then
      begin
      try
         mperc:=((mTotQtd_Gru-mtotb_gru)*100)/mTotQtd_Gru
      except
         mperc:=0;
         end;

      end
   else
      begin
      try
         mperc:=((mtotb_gru)*100)/mtotg;
      except
         mperc:=0;
         end;
      end;
   form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+insere(' ',' ',05)
                     +'|'+insere(' ',' ',8)
                     +'|'+insere2('Total do Grupo','.',41)+'|'
                     +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp,mcasas), mtotb_gru),' ',14)+'|'
                     +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp,mcasqtd), mTotQtd_Gru),' ',14)+'|'
                     +insere(FormatFloat('##0.0', mperc),' ',6)+'%|',m12ccp);
   mTotQtd_Gru:=0;
   mtotb_gru  :=0;
   end;
if CB_COMPARAR.Checked then
   begin
   if (mtotQtd=0) or (mtotb=0) then
      mperc:=0
   else
      begin
      try
         mperc:=((mTotQtd-mtotb)*100)/mTotQtd;
      except
         mperc:=0;
         end;
      end;

   end
else
   mperc:=100;

form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|'+insere(' ',' ',05)
                  +'|'+insere(' ',' ',8)
                  +'|'+insere2('Total Geral','.',41)+'|'
                  +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp,mcasas), mtotb),' ',14)+'|'
                  +insere(FormatFloat(iif(CB_COMPARAR.Checked,mCasasComp,mcasqtd), mTotQtd),' ',14)+'|'
                  +insere(FormatFloat('##0.0', mperc),' ',6)+'%|',m12ccp);
form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'+-----+--------+-----------------------------------------+--------------+--------------+-------+',m12ccp);

mTotQtd_Gru:=0;
mtotb_gru  :=0;


if Qr_Ven.Eof then
  begin
  form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
  form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Insere2('-','-',136),mreduz);
  fImprimirCriterito(136);
  if form_impres_cabc.RDprint1.Setup then
    form_impres_cabc.RDprint1.Fechar;
  form_impres_cabc.free;
  form_impres_cabc:=nil;
  end;
Query_exe_local.close;
freeAndnil(Query_exe_local);
end;

procedure TFrm_CABC.MDT1Exit(Sender: TObject);
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

procedure TFrm_CABC.MDT2Exit(Sender: TObject);
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

procedure TFrm_CABC.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_CABC',Key);
   CODVENExit(Self);
   if CODVEN.Enabled then
      codven.SetFocus;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_CABC.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      Lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);

      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
      end;   
   end;
end;

procedure TFrm_CABC.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CABC.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.Text := '';
      CODCLI.SetFocus;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      CODCLI.SetFocus;
   end;
end;

procedure TFrm_CABC.FormCreate(Sender: TObject);
var x:integer;
begin


Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if log_codven=0 then
   begin
   CODVEN.Enabled    :=true;
   lbx_codven.Enabled:=true;
   OMITIR_VEN.Enabled:=true;
   end
else
   begin
   CODVEN.Enabled    :=false;
   lbx_codven.Enabled:=false;
   OMITIR_VEN.Enabled:=false;
   CODVEN.Text       :=FloatToStr(log_codven);
   CODVENExit(self);
   end;

if log_codsup=0 then
   begin
   CODSUP.Enabled    :=true;
   lbx_codsup.Enabled:=true;
   OMITIR_SUP.Enabled:=true;
   end
else
   begin
   CODSUP.Enabled    :=false;
   lbx_codsup.Enabled:=false;
   OMITIR_SUP.Enabled:=false;
   CODSUP.Text       :=FloatToStr(log_codsup);
   CODSUPExit(self);
   end;


RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;

RG_TIPOPED.Checked[0] := TRUE;

CB_ORDEM.itemIndex:=0;
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',date)));
MDT2.Text   :=FormatDatetime(fdt2, date);

if ValInt(copy(mpseg,7,2))=01 then  // Prestação de servicos
   begin
   lbl_prodserv.Visible:=true;
   CB_PRODSERV.Visible :=true;
   end;
CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]:=true;
CLBDocRecFederal.Selected[CLBDocRecFederal.Items.Count-1]:=true;;
CLBDocRecFederal:=Valida_CheckList(CLBDocRecFederal);


end;

procedure TFrm_CABC.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CABC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CABC.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_CABC.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);

end;
procedure TFrm_CABC.OMITIR_VENMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ven.Hint := 'Omitir Marcado - Todos Vendedores'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_CABC.OMITIR_CLIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_cli.Hint := 'Omitir Marcado - Todos Clientes'+#13+' Selecionados Nao Serao Impressos';
end;

procedure TFrm_CABC.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;


procedure TFrm_CABC.RG_TIPOPEDExit(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_CABC.CB_TIPOPESQExit(Sender: TObject);
begin
with CB_TIPOPESQ do ItemIndex:=Items.IndexOf(CB_TIPOPESQ.Text);

end;

procedure TFrm_CABC.CB_EmiDocClick(Sender: TObject);
begin
if CB_EmiDoc.Checked then
   CB_TIPOPESQ.ItemIndex:=0
else
   CB_TIPOPESQ.ItemIndex:=1;

end;

function tFrm_CABC.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
  begin
  for x:=0 to pListBox.items.count-1 do
    begin
    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    fTestaCab(0);
    form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',136),mreduz);
    end;
  end;
result:=true;
end;

function TFrm_CABC.fCABCCabRel(pTipo: Integer): Boolean;
begin
if (ptipo=0) then
  begin
  form_impres_cabc.mpag:=form_impres_cabc.mpag+1;
  form_impres_cabc.RDprint1.ImpF(01,01,FormatDateTime(fhr, time)+centra(DM1.Tb_EmpRAZAO.Value,' ',62)+FormatDatetime(fdt2, date),mnormal);
  form_impres_cabc.RDprint1.ImpF(02,01,'Relatorio de Vendas por Cliente.'+insere('Pagina: '+FormatFloat('0000',form_impres_cabc.mpag),' ',40),mnormal);
  form_impres_cabc.RDprint1.ImpF(03,01,'+-----+--------+-----------------------------------------+--------------+--------------+-------+',m12ccp);
  form_impres_cabc.mlin:=3;
  end
else if (ptipo=1) then
  begin
  form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
  mcinst2:='Total Valor';
  mcinst3:='Total Quant.';
  if CB_COMPARAR.Checked then
    begin
    if CB_COMP_QTD.Checked then
      begin
      mcinst2:='Total Quant.';
      mcinst3:='Total Quant.';
      end
    else
      begin
      mcinst2:='Total Valor';
      mcinst3:='Total Valor';
      end;
    end;
  form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|Ordem| Código |Nome do Cliente                          |'+centra(mcinst2,' ',14)+'|'+centra(mcinst3,' ',14)+'|Percent|',m12ccp);
  if CB_COMPARAR.Checked then
    begin
    if (trim(MDT1.Text)='/  /') and (trim(MDT2.Text)='/  /') then
      mcinst2:='Geral'
    else if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)='/  /') then
      mcinst2:='a Partir:'+copy(mdt1.Text,1,5)
    else if (trim(MDT1.Text)='/  /') and (trim(MDT2.Text)<>'/  /') then
      mcinst2:='ate:'+mdt2.Text
    else
      mcinst2:=copy(mdt1.Text,1,5)+' a '+copy(mdt2.Text,1,5);

    if (trim(MDT1_COMP.Text)='/  /') and (trim(MDT2_COMP.Text)='/  /') then
      mcinst3:='Geral'
    else if (trim(MDT1_COMP.Text)<>'/  /') and (trim(MDT2_COMP.Text)='/  /') then
      mcinst3:='a Partir:'+copy(mdt1_COMP.Text,1,5)
    else if (trim(MDT1_COMP.Text)='/  /') and (trim(MDT2_COMP.Text)<>'/  /') then
      mcinst3:='ate:'+mdt2_COMP.Text
    else
       mcinst3:=copy(mdt1_COMP.Text,1,5)+' a '+copy(mdt2_COMP.Text,1,5);
    form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
    form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'|     |        |                                         |'+centra(mcinst2,' ',14)+'|'+centra(mcinst3,' ',14)+'| difer |',m12ccp);
    end;
  form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
  form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,'+-----+--------+-----------------------------------------+--------------+--------------+-------+',m12ccp);
  {
  +-----+--------+-----------------------------------------+--------------+--------------+-------+
  |Ordem| Código |Nome do Cliente                          |  Total Valor | Total Quant. |Percent|
  |12345| Código |12345678901234567890123456789012345678901|zzz.zzz.zz9,99|zzz.zzz.zz9,99|Percent|
  +-----+--------+-----------------------------------------+--------------+--------------+-------+
  }
  end;
result:=true;
end;

function TFrm_CABC.fTestaCab(pTipo: Integer): Boolean;
begin
if form_impres_cabc.mlin>57 then
   begin
   form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Insere2('-','-',136),mreduz);
   form_impres_cabc.mlin:=0;
   form_impres_cabc.RDprint1.Novapagina;
   fCABCCabRel(0);
   form_impres_cabc.mlin:=3;
   end;
result:=true;
end;


function tFrm_CABC.fImprimirCriterito(pQtdCol: Integer): boolean;
begin
form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
fTestaCab(0);
form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Centra('CRITERITOS DO RELATORIOS',' ',136),mreduz);
form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
fTestaCab(0);
if CB_COMPARAR.Checked then
  form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Centra('Comparando '+fperiodo(0,mdt1.Text,mdt2.Text)
                                             +' Com '+fperiodo(0,mdt1_comp.Text,mdt2_comp.Text)
                                             +iif(CB_REDDESCFIN.Checked,'. Diminuido o Desconto Financeiro',''),' ',136),mreduz)
else
  form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Centra(fperiodo(0,mdt1.Text,mdt2.Text)+iif(CB_REDDESCFIN.Checked,'. Diminuido o Desconto Financeiro',''),' ',136),mreduz);
if lbx_codven.Count>0 then
  FImprimeTitulo('Vendedor',lbx_codven,OMITIR_VEN);
if lbx_codcli.Count>0 then
  FImprimeTitulo('Cliente',lbx_codcli,OMITIR_CLI);
if lbx_coduf.Count>0 then
  FImprimeTitulo('Estado',lbx_coduf,OMITIR_UF);

if lbx_codloc.Count>0 then
  FImprimeTitulo('Cidade',lbx_coduf,OMITIR_UF);

if lbx_CODREG.Count>0 then
  FImprimeTitulo('Regiao',lbx_CODREG,OMITIR_CODREG);



form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Centra('Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDatetime(fhr, time),' ',136),mreduz);
form_impres_cabc.mlin:=form_impres_cabc.mlin+1;
form_impres_cabc.RDprint1.ImpF(form_impres_cabc.mlin,01,Insere2('-','-',136),mreduz);
result:=true;
end;

procedure TFrm_CABC.CODREDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRED.Text:=fChamaRedCli(0,'frm_cabc',key);
   key:=#0;
   end;
end;

procedure TFrm_CABC.CODGFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGFOR.Text:=fChamaGFor(0,'frm_cabc',key);
   CODGFORExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_CABC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_CABC',Key);
   CODFORExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_CABC.CODORI_PEDKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODORI_PED.Text:=fChamaoriped(0,'pcomvv',key);
   CODORI_PEDExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_CABC.CODREDExit(Sender: TObject);
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

procedure TFrm_CABC.CODGFORExit(Sender: TObject);
begin
CODGFOR.Text:=fdeixanum2(CODGFOR.Text);
if Trim(CODGFOR.Text)<>'' then
   begin
   if flqr1('GFNOME','GF','CADGFOR','N','GFCODGRU',CODGFOR.Text) then
      begin
      lbx_codgfor.Items.Add(FormatFloat('0000000',StrToFloat(CODGFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codgfor.ItemIndex:=lbx_codgfor.Items.Count-1;
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end
   else
      begin
      fmensagem('Grupo de Fornecedor não Cadastrado!',0,['0'],0);
      CODGFOR.text := '';
      CODGFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_CABC.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codfor.ItemIndex:=lbx_codfor.Items.Count-1;
      CODFOR.text := '';
      CODFOR.SetFocus;
      end
   else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_CABC.CODORI_PEDExit(Sender: TObject);
begin
CODORI_PED.Text:=fdeixanum2(CODORI_PED.Text);
if Trim(CODORI_PED.Text)<>'' then
   begin
   if not flCadOrPed(1,CODORI_PED.Text) then
      begin
      fmensagem('Origem não Cadastrado!',0,['0'],0);
      CODORI_PED.SetFocus;
      end
   else
      begin
      lbx_oriped.Items.Add(FormatFloat('0000000',StrToFloat(DM6.Tb_OrPedCOCODIGO.ASSTRING))
                                    +' - '+DM6.Tb_OrPedCONOMORI.Value);
      lbx_oriped.ItemIndex:=lbx_oriped.Items.Count-1;

      CODORI_PED.text := '';
      CODORI_PED.SetFocus;
      end;
   end;


end;

procedure TFrm_CABC.lbx_codredKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codred.ItemIndex>=0 then
      lbx_codred.Items.Delete(lbx_codred.ItemIndex);

end;

procedure TFrm_CABC.lbx_codgforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codgfor.ItemIndex>=0 then
      lbx_codgfor.Items.Delete(lbx_codgfor.ItemIndex);

end;

procedure TFrm_CABC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_CABC.lbx_oripedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_oriped.ItemIndex>=0 then
      lbx_oriped.Items.Delete(lbx_oriped.ItemIndex);

end;

procedure TFrm_CABC.Qr_VenCalcFields(DataSet: TDataSet);
begin
if mais_dados.Checked then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('SELECT SUM(P1TOTALL) VALCPR ,MAX(P1DATAP) AS DATACPR '
                     +' from CADP01 '
                     +' where '
                     +' p1codemp=0'+InttoStr(codemp)+' and '
                     +' P1DATAP=(Select max(P1DATAP) FROM '
                     +' cadp01 peddat '
                     +' where '
                     +' PEDDAT.P1CODEMP=CADP01.P1CODEMP '
                     +' and PEDDAT.P1CODCLI=CADP01.P1CODCLI '
                     +' and P1EMIDOC=1 and P1STATUS<'+mstatus_excluido+' '
                     +' ) '
                     +' AND P1CODCLI=0'+Qr_VenCODIGO.AsString
                     +' and P1EMIDOC=1 and P1STATUS<'+mstatus_excluido+' '
                     );
   DM1.Query1.Open;
   if not DM1.Query1.IsEmpty then
      begin
      Qr_Vendata_ucpr.Value :=DM1.Query1.fieldbyName('DATACPR').AsDateTime;
      Qr_Venvalor_ucpr.Value:=DM1.Query1.fieldbyName('VALCPR').AsFloat;
      end;
   end;
end;

procedure TFrm_CABC.CB_COMPARARClick(Sender: TObject);
begin
IF CB_COMPARAR.Checked then
   begin
   if (trim(MDT1.Text)<>'/  /') and (trim(MDT1_COMP.Text)='/  /') then
      MDT1_COMP.Text:=FormatDateTime(fdt2, INCMONTH(StrToDate(MDT1.Text),1));
   if (trim(MDT2.Text)<>'/  /') and (trim(MDT2_COMP.Text)='/  /') then
      MDT2_COMP.Text:=FormatDateTime(fdt2, INCMONTH(StrToDate(MDT2.Text),1));
   GB_COMPARADO.Visible:=true;
   end
else
   GB_COMPARADO.Visible:=false;

end;

procedure TFrm_CABC.MDT1_COMPExit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1_COMP.Text:=FormatDateTime(fdt2,StrtoDate(MDT1_COMP.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1_COMP.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_CABC.MDT2_COMPExit(Sender: TObject);
begin
if Trim(MDT2_COMP.Text)<>'/  /' then
   begin
   Try
      MDT2_COMP.Text:=FormatDateTime(fdt2,StrtoDate(MDT2_COMP.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2_COMP.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_CABC.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',Trim(CODSUP.Text)) then
      begin
      fmensagem('Supervidor não cadastrado!',0,['0'],0);
      CODSUP.SetFocus;
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(CODSUP.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODSUP.text := '';
      if CODSUP.Enabled then
         CODSUP.SetFocus;
      end;
   end;


end;

procedure TFrm_CABC.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text  :=fChamaSup(0,'frm_MedCli',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(self);
   key:=#0;
   end;


end;

procedure TFrm_CABC.lbx_codsupKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_CABC.CODUFKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CABC.CODUFExit(Sender: TObject);
begin
//CODUF.Text:=fdeixanum2(CODUF.Text);
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

procedure TFrm_CABC.lbx_codufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_coduf.ItemIndex>=0 then
      lbx_coduf.Items.Delete(lbx_coduf.ItemIndex);

end;

procedure TFrm_CABC.CODLOCExit(Sender: TObject);
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

procedure TFrm_CABC.CODLOCKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODLOC.Text:=fChamaLoc(0,'frm_MedCli',Key);
   if trim(CODLOC.Text)<>'' then
      CODLOCExit(self);
   key:=#0;
   end;


end;

procedure TFrm_CABC.lbx_codlocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codloc.ItemIndex>=0 then
      lbx_codloc.Items.Delete(lbx_codloc.ItemIndex);

end;

procedure TFrm_CABC.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_CABC.bb_exportarClick(Sender: TObject);
begin
bb_exportar.Enabled:=false;
fAbrirBanco;
fGerarPlanilhaExcel([],Src_Ven);
bb_exportar.Enabled:=true;

end;

function tFrm_CABC.FAbrirBanco: Boolean;
var
mCampoGrupo: String;
mCampoOrdem: String;
mCampoGrupo_semmov: String;
mCampoOrdem_SemMov: String;
mUsaVend: Boolean;
x: integer;
Query_exe_local: tQuery;

begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
mUsaVend:=false;
if (CB_COMPARAR.Checked) then
   begin
   if (Trim(MDT1_COMP.Text)<>'/  /') and (Trim(MDT2_COMP.Text)<>'/  /') then
      begin
      if StrTodate(MDT2_COMP.Text)<StrToDate(MDT1_COMP.Text) then
         begin
         fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
         MDT1_COMP.SetFocus;
         exit;
         end;
      end;
   end;

Query_exe_local:=tQuery.create(nil);
Query_exe_local.DatabaseName:=DM1.SG_ASSOC.DatabaseName;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if trim(mNomeView)='' then
   mNomeView:=fProcTemp(22);
mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

if (lbx_codfor.Items.Count>0) or (lbx_codgfor.Items.Count>0) or (CB_SEPARADO.ItemIndex=4) then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','P2CODEMP','FCODFOR','P2CODFAB');
   end;

//mcampo_vlr:='sum((P2TOTLIQ+P2ICMSR)-P2DESCRAT)';

if CB_TIPOPESQ.ItemIndex=0 then
   pdatapesq:='P1DATDOC'
else
   pdatapesq:='P1DATAP';

if CB_SEPARADO.ItemIndex=0 then // bairro
   begin
   mCampoOrdem:='CADCLI.CUF,CADCLI.CCIDADE,CADCLI.CBAIRRO';
   mCampoGrupo:='CADCLI.CUF  ||'+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ||'+chr(39)+' '+chr(39)+'|| CADCLI.CBAIRRO';
   mCampoGrupo_semmov:='CADCLI.CUF  ||'+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ||'+chr(39)+' '+chr(39)+'|| CADCLI.CBAIRRO';
   mCampoOrdem_SemMov:='CADCLI.CUF,CADCLI.CCIDADE,CADCLI.CBAIRRO';

   end
else if CB_SEPARADO.ItemIndex=1 then // cidade
   begin
   mCampoOrdem:='CADCLI.CUF,CADCLI.CCIDADE';
   mCampoGrupo:='CADCLI.CUF || '+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ';
   mCampoGrupo_semmov:='CADCLI.CUF || '+chr(39)+' '+chr(39)+'|| CADCLI.CCIDADE ';
   mCampoOrdem_SemMov:='CADCLI.CUF,CADCLI.CCIDADE';
   end
else if CB_SEPARADO.ItemIndex=2 then // cliente
   begin
   mCampoOrdem:='NOME,CODIGO';
   mCampoGrupo:='TO_CHAR(P1CODCLI) || '+chr(39)+'-'+chr(39)+'|| CRAZAO';
   mCampoGrupo_semmov:='TO_CHAR(CCODCLI) || '+chr(39)+'-'+chr(39)+'|| CRAZAO';
   mCampoOrdem_SemMOv:='NOME,CODIGO';
   end
else if CB_SEPARADO.ItemIndex=3 then // Estado
   begin
   mCampoOrdem:='CUF';
   mCampoGrupo:='CUF';
   mCampoGrupo_semmov:='CUF';
   mCampoOrdem_SemMov:='CUF';
   end
else if CB_SEPARADO.ItemIndex=4 then // fornecedor
   begin
   mCampoOrdem:='FRAZAO,FCODFOR';
   mCampoGrupo:='TO_CHAR(FCODFOR) || '+chr(39)+'-'+chr(39)+'|| FRAZAO';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=5 then // bairro
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMGRU,PDCODGRU';
   mCampoGrupo:='TO_CHAR(PDCODGRU) || '+chr(39)+'-'+chr(39)+'|| PDNOMGRU ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=6 then // bairro
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDMARCA';
   mCampoGrupo:='PDMARCA';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=7 then // bairro
   begin
   mCampoOrdem:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
   mCampoGrupo:='TO_CHAR('+pDataPesq+','+chr(39)+'YYYYMM'+chr(39)+')';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=8 then // RAMO
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMRAM,PDCODRAM';
   mCampoGrupo:='TO_CHAR(PDCODRAM) || '+chr(39)+'-'+chr(39)+'|| PDNOMRAM ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=9 then // cidade
   begin
   mCampoOrdem:='CNOMRED,CCODRED';
   mCampoGrupo:='TO_CHAR(CCODRED) || '+chr(39)+'-'+chr(39)+'|| CNOMRED';
   mCampoGrupo_semmov:='TO_CHAR(CCODRED) || '+chr(39)+'-'+chr(39)+'|| CNOMRED';
   mCampoOrdem_SemMov:='CNOMRED,CCODRED';
   end
else if CB_SEPARADO.ItemIndex=10 then // sem separara
   begin
   mCampoOrdem:='';
   mCampoGrupo:=chr(39)+insere(' ',' ',40)+chr(39);
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=11 then // RAMO
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
   mCampoOrdem:='PDNOMCON,PDCODCON';
   mCampoGrupo:='TO_CHAR(PDCODCON) || '+chr(39)+'-'+chr(39)+'|| PDNOMCON ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end
else if CB_SEPARADO.ItemIndex=12 then // VENDEDOR
   begin
   mUsaVend:=true;
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';

   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   mCampoOrdem:='VNOME,P1CODVEN';
   mCampoGrupo:='TO_CHAR(P1CODVEN) || '+chr(39)+'-'+chr(39)+'|| VNOME ';
   mCampoGrupo_semmov:=chr(39)+insere(' ',' ',40)+chr(39);
   end;

if lbx_codsup.Items.Count>0 then
   mUsaVend:=true;

if (mUsaVend=true) and (CB_SEPARADO.ItemIndex<>12) then
   begin
   if (pbanco=0) and (trim(la_instrucao)<>'') then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
   end;
if (CB_PRODSERV.ItemIndex<>1) then
   begin
   Query_exe_local.Close;
   Query_exe_local.SQl.Clear;
//   mcampo_qtd:=fGerarInstrucaoQtd(0,'P2QTD',Form_SelEmp.CLB_EMPRESAS);
   mcampo_qtd:=' DECODE(max(P1FORMACE),                                     '
              +'   0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2QTD)*-1,sum(P2QTD)), '
              +'   1,DECODE(max(P1TIPO_ENTSAI),1,max(P2QTD)*-1,max(P2QTD))) ';
   if CB_ICMSRET.Checked then
      begin
      if CB_REDDESCFIN.Checked then
         mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ-P2VDESCF+P2ICMSR)*-1,P2TOTLIQ-P2VDESCF+P2ICMSR))'
      else
         mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ+P2ICMSR)*-1,P2TOTLIQ+P2ICMSR))';
      end
   else
      begin
      if CB_REDDESCFIN.Checked then
         mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2TOTLIQ-P2VDESCF)*-1,P2TOTLIQ-P2VDESCF)))'
      else
         mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,P2TOTLIQ*-1,P2TOTLIQ))';
      end;
   mcampo_icmsr :='sum(DECODE(P1TIPO_ENTSAI,1,P2ICMSR*-1,P2ICMSR))';
   Query_exe_local.SQL.Add('Create or replace view '+mNomeView+' as ');

   Query_exe_local.SQl.Add('Select CRAZAO AS NOME, P1CODCLI AS CODIGO,'+mcampo_vlr+' as TOTAL'
                     +'       ,'+mcampo_qtd+' as TOTAL_QTD '
                     +', 0 as total_vlr_segper   '
                     +', 0 as total_qtd_segper   '
                     +','+iif(trim(mcampogrupo)='',quotedstr(' '),mcampogrupo)+' as GRUPO '
                     +', max(CLOG) as CLOG       '
                     +', max(CCIDADE) as CCIDADE '
                     +', max(CUF) as CCUF        '
                     +', max(CBAIRRO) as CBAIRRO '
                     +', max(CEMAIL) as CEMAIL '
                     +', max(CCEP)  as CCEP      '
                     +', max(CFONE01) as CFONE01 '
                     +', max(CFONE02) as CFONE02 '
                     +', max(CFONE03) as CFONE03 '
                     +', max(CFONERES) as CFONERES '
                     +', max(CFONECOM) as CFONECOM ');
   if mais_dados.Checked then
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
      end
   else
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
      end;

   Query_exe_local.SQL.Add(', 0 as LOCAL_INFO ');

   Query_exe_local.Sql.add(' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                   +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_EmiDoc.Checked then
      Query_exe_local.SQL.Add('       and P1EMIDOC=1 ');

   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and  P1TIPO '+mcinst2);


   if Trim(MDT1.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));


   if Trim(MDT2.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,FALSE,StrToDate(MDT2.Text)));

   mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODVEN '+mcinst2);

   mcinst2:='';
   mcinst3:='';
   for x:=0 to lbx_coduf.Count -1 do
     begin
     mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
     mcinst3:=',';
     end;

   if trim(mcinst2)<>'' then
     begin
     mcinst2:=' in ('+mcinst2+')';
     if OMITIR_UF.Checked then
       mcinst2:=' not '+mcinst2;
     Query_exe_local.sql.Add(' and CUF '+mcinst2);
     end;

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODLOC '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and VCODSUP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODCLI '+mcinst2);


   mcinst2:='';
   IF CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]<>true then
      begin
      if CLBDocRecFederal.Checked[0]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCPF>0 ';
      if CLBDocRecFederal.Checked[1]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCNPJ>0 ';
      if CLBDocRecFederal.Checked[2]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' (CCNPJ=0 and CCPF=0) ';
      if trim(mcinst2)<>'' then
       Query_exe_local.sql.Add(' and ('+mcinst2+')');
      end;

   mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODRED '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODGFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_oriped,OMITIR_ORIPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and P1ORIGEM '+mcinst2);

   if (trim(mCampoOrdem)<>'') and (CB_SEPARADO.itemindex<>2) then
      Query_exe_local.SQL.Add(' Group by P2CHAVE,P2ITEM,'+mCampoOrdem+',')
   else
      Query_exe_local.SQL.Add(' Group by ');
   Query_exe_local.SQL.Add(' CRAZAO,P1CODCLI,P2CHAVE,P2ITEM');
   // testa servicos



    if CB_COMPARAR.Checked then
       begin

       Query_exe_local.SQl.Add(' union ');

       Query_exe_local.SQl.Add('Select CRAZAO AS NOME, P1CODCLI AS CODIGO, '
                         +' 0 as TOTAL, '
                         +' 0 AS TOTAL_QTD '
                         +','+mcampo_vlr+' as total_vlr_segper '
                         +','+mcampo_qtd+' as total_qtd_segper '
                     +','+iif(trim(mcampogrupo)='',quotedstr(' '),mcampogrupo)+' as GRUPO '

                       +', max(CLOG) as CLOG '
                       +', max(CCIDADE) as CCIDADE '
                       +', max(CUF) as CCUF '
                       +', max(CBAIRRO) as CBAIRRO '
                     +', max(CEMAIL) as CEMAIL '

                       +', max(CCEP)  as CCEP '
                       +', max(CFONE01) as CFONE01 '
                       +', max(CFONE02) as CFONE02 '
                       +', max(CFONE03) as CFONE03 '
                       +', max(CFONERES) as CFONERES '
                       +', max(CFONECOM) as CFONECOM ');
       if mais_dados.Checked then
          begin
          Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
          Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');

          end
       else
          begin
          Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
          Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
          end;
       Query_exe_local.SQL.Add(', 2 as LOCAL_INFO ');


       Query_exe_local.Sql.add(' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where P1STATUS<'+mstatus_excluido+' '+iif(la_Empresas='','',' and ')+la_Empresas
                       +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
       if CB_EmiDoc.Checked then
          Query_exe_local.SQL.Add('       and P1EMIDOC=1 ');

       mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
       if trim(mcinst2)<>'' then
          Query_exe_local.SQL.Add(' and  P1TIPO '+mcinst2);


   if Trim(MDT1_comp.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1_COMP.Text)));


   if Trim(MDT2_COMP.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,FALSE,StrToDate(MDT2_COMP.Text)));

       mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
       if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODVEN '+mcinst2);

       mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
       if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODCLI '+mcinst2);


   mcinst2:='';
   IF CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]<>true then
      begin
      if CLBDocRecFederal.Checked[0]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCPF>0 ';
      if CLBDocRecFederal.Checked[1]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCNPJ>0 ';
      if CLBDocRecFederal.Checked[2]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' (CCNPJ=0 and CCPF=0) ';
      if trim(mcinst2)<>'' then
       Query_exe_local.sql.Add(' and ('+mcinst2+')');
      end;

       mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
       if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODRED '+mcinst2);

       mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
       if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODGFOR '+mcinst2);

       mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
       if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODFOR '+mcinst2);

       mcinst2:='';
       mcinst3:='';
       for x:=0 to lbx_coduf.Count -1 do
         begin
         mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
         mcinst3:=',';
         end;
       if trim(mcinst2)<>'' then
         begin
         mcinst2:=' in ('+mcinst2+')';
         if OMITIR_UF.Checked then
           mcinst2:=' not '+mcinst2;
         Query_exe_local.sql.Add(' and CUF '+mcinst2);
         end;

        mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
        if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODLOC '+mcinst2);


        mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
        if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and VCODSUP '+mcinst2);


       mcinst2:=fItensListBox(0,lbx_oriped,OMITIR_ORIPED);
       if trim(mcinst2)<>'' then
          Query_exe_local.SQL.Add(' and P1ORIGEM '+mcinst2);

       if (trim(mCampoOrdem)<>'') and (CB_SEPARADO.itemindex<>2) then
          Query_exe_local.SQL.Add(' Group by P2CHAVE,P2ITEM,'+mCampoOrdem)
       else
          Query_exe_local.SQL.Add(' Group by ');
       Query_exe_local.SQL.Add(' CRAZAO,P1CODCLI,P2CHAVE,P2ITEM');
       end;    


   end;

if CB_PRODSERV.ItemIndex>0 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE','P2SORDEM','P1ORDEM');

   if (lbx_codfor.Items.Count>0) or (lbx_codgfor.Items.Count>0) or (CB_SEPARADO.ItemIndex=4) then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(IIF(CB_FORCAR.Checked,0,1),'CADFOR','FCODEMP','P2SCODEMP','FCODFOR','P2SCODFAB');
      end;

   if CB_TIPOPESQ.ItemIndex=0 then
      pdatapesq:='P1DATDOC'
   else
      pdatapesq:='P1DATAP';

   if CB_SEPARADO.ItemIndex=6 then // bairro
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');
      end
   else if CB_SEPARADO.ItemIndex=8 then // RAMO
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');
      end
   else if CB_SEPARADO.ItemIndex=11 then // RAMO
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');
      end
   else if CB_SEPARADO.ItemIndex=12 then // Estado
      begin
      mUsaVend:=true;
      end;

   if lbx_codsup.Items.Count>0 then
      mUsaVend:=true;
   if mUsaVend then
      begin
      if (pbanco=0) and (trim(la_instrucao)<>'') then
         la_instrucao:=la_instrucao+' and ';
      fInnerJoin(iif(CB_FORCAR.Checked,0,1),'CADVEN','VCODEMP','P1CODEMP','VCODVEN','P1CODVEN');
      end;

//   mcampo_qtd:=fGerarInstrucaoQtd(0,'P2SQTD',Form_SelEmp.CLB_EMPRESAS);
      mcampo_qtd:=' DECODE(max(P1FORMACE),                                     '
              +'   0,DECODE(max(P1TIPO_ENTSAI),1,sum(P2SQTD)*-1,sum(P2SQTD)), '
              +'   1,DECODE(max(P1TIPO_ENTSAI),1,max(P2SQTD)*-1,max(P2SQTD))) ';

   if CB_REDDESCFIN.Checked then
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,((P2STOTLIQ+)-P2SVDESCF)*-1,(P2STOTLIQ)-P2SVDESCF)))'
   else
      mcampo_vlr:='sum(DECODE(P1TIPO_ENTSAI,1,(P2STOTLIQ)*-1,(P2STOTLIQ)))';


   mcampo_icmsr :='sum(DECODE(P1TIPO_ENTSAI,1,0,0))';
   if cb_ProdServ.ItemIndex=1 then
      begin
      Query_exe_local.Close;
      Query_exe_local.SQl.Clear;
      Query_exe_local.SQL.Add('Create or replace view '+mNomeView+' as ');
      end
   else
      Query_exe_local.SQL.Add(' union ');


   Query_exe_local.SQl.Add('Select CRAZAO AS NOME, P1CODCLI AS CODIGO,'+mcampo_vlr+' as TOTAL'
                    +'       ,'+mcampo_qtd+' as TOTAL_QTD '
                    +', 0 as total_vlr_segper '
                    +', 0 as total_qtd_segper '
                     +','+iif(trim(mcampogrupo)='',quotedstr(' '),mcampogrupo)+' as GRUPO '
                   +', max(CLOG) as CLOG '
                   +', max(CCIDADE) as CCIDADE '
                   +', max(CUF) as CCUF '
                   +', max(CBAIRRO) as CBAIRRO '
                     +', max(CEMAIL) as CEMAIL '

                   +', max(CCEP)  as CCEP '
                   +', max(CFONE01) as CFONE01 '
                   +', max(CFONE02) as CFONE02 '
                   +', max(CFONE03) as CFONE03 '
                   +', max(CFONERES) as CFONERES '
                   +', max(CFONECOM) as CFONECOM ');
   if mais_dados.Checked then
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');

      end
   else
      begin
      Query_exe_local.SQL.Add(', max(CDTUCPR) as DTULTCPR');
      Query_exe_local.SQL.Add(', max(P1TOTALL) as VALORUCPR ');
      end;
   Query_exe_local.SQL.Add(', 1 as LOCAL_INFO ');

   Query_exe_local.Sql.add(' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where P1STATUS<'+mstatus_excluido+iif(la_Empresas='','',' and ')+la_Empresas
                   +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_EmiDoc.Checked then
      Query_exe_local.SQL.Add('       and P1EMIDOC=1 ');

   mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and  P1TIPO '+mcinst2);
   if Trim(MDT1.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,true,StrToDate(MDT1.Text)));


   if Trim(MDT2.Text)<>'/  /' then
      Query_exe_local.Sql.Add( fFormatdatetimeParaConsulta(pDataPesq,FALSE,StrToDate(MDT2.Text)));

   mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODVEN '+mcinst2);

   mcinst2:='';
   mcinst3:='';
   for x:=0 to lbx_coduf.Count -1 do
     begin
     mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
     mcinst3:=',';
     end;
   if trim(mcinst2)<>'' then
     begin
     mcinst2:=' in ('+mcinst2+')';
     if OMITIR_UF.Checked then
       mcinst2:=' not '+mcinst2;
     Query_exe_local.sql.Add(' and CUF '+mcinst2);
     end;

   mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODLOC '+mcinst2);


   mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and VCODSUP '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and P1CODCLI '+mcinst2);


   mcinst2:='';
   IF CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]<>true then
      begin
      if CLBDocRecFederal.Checked[0]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCPF>0 ';
      if CLBDocRecFederal.Checked[1]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCNPJ>0 ';
      if CLBDocRecFederal.Checked[2]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' (CCNPJ=0 and CCPF=0) ';
      if trim(mcinst2)<>'' then
       Query_exe_local.sql.Add(' and ('+mcinst2+')');
      end;

   mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and CCODRED '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codgfor,OMITIR_GFOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODGFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
   if trim(mcinst2)<>'' then Query_exe_local.sql.Add(' and FCODFOR '+mcinst2);

   mcinst2:=fItensListBox(0,lbx_oriped,OMITIR_ORIPED);
   if trim(mcinst2)<>'' then
      Query_exe_local.SQL.Add(' and P1ORIGEM '+mcinst2);

   if (trim(mCampoOrdem)<>'') and (CB_SEPARADO.itemindex<>2) then
      Query_exe_local.SQL.Add(' Group by P2SCHAVE,P2SITEM,'+mCampoOrdem+',')
   else
      Query_exe_local.SQL.Add(' Group by ');
   Query_exe_local.SQL.Add(' CRAZAO,P1CODCLI,P2SCHAVE,P2SITEM');
   end;
// fim da alimentação para servicos

//Query_exe_local.SQL.SAVETOFILE(mpastatemp + 'SQL.TXT');

try
   Query_exe_local.ExecSQL;
except
   Query_exe_local.SQL.SAVETOFILE(mpastatemp + 'SQL.TXT');
   EXIT;
   end;

Qr_Ven.Close;
Qr_Ven.SQL.Clear;
Qr_Ven.sql.add('Select NOME'
                +',CODIGO,'
                +'sum(TOTAL) as total '
                +',sum(TOTAL_QTD) as TOTAL_QTD '
                +', sum(total_vlr_segper) as total_vlr_segper '
                +', sum(total_qtd_segper) as total_qtd_segper '
                +', GRUPO '
                +', max(CLOG) AS CLOG '
                +', max(CCIDADE) AS CCIDADE '
                +', max(CCUF) as CCUF '
                +', max(CBAIRRO) as CBAIRRO '
                +', max(CEMAIL) as CEMAIL '

                +', max(CCEP) as CCEP '
                +', max(CFONE01) as CFONE01 '
                +', max(CFONE02) as CFONE02 '
                +', max(CFONE03) as  CFONE03 '
                +', max(CFONERES) as CFONERES '
                +', max(CFONECOM) as CFONECOM '
                +', max(DTULTCPR) as DTULTCPR'
                +', sum(VALORUCPR) as VALORUCPR '
                +', max(LOCAL_INFO) as LOCAL_INFO '

                +' from '+mNomeView);
Qr_ven.SQL.add('group by NOME,CODIGO,GRUPO ');


IF CB_SEMMOV.Checked then
   begin
   Qr_Ven.SQL.Add(' union ');
   Qr_Ven.SQL.add(' Select CRAZAO AS NOME, CCODCLI AS CODIGO, 0 AS TOTAL, 0 as TOTAL_QTD '
                 +', 0 as total_vlr_segper '
                 +', 0 as total_qtd_segper, '
                 +mCampoGrupo_SemMov +' as GRUPO '
                +',  CADCLI.CLOG AS CLOG'
                +',  CADCLI.CCIDADE AS CCIDADE'
                +',  CADCLI.CUF AS CCUF'
                +',  CADCLI.CBAIRRO AS CBAIRRO '
                     +', CADCLI.CEMAIL as CEMAIL '

                +',  CADCLI.CCEP AS CCEP'
                +',  CADCLI.CFONE01 AS CFONE01 '
                +',  CADCLI.CFONE02  AS CFONE02 '
                +',  CADCLI.CFONE03 AS CFONE03'
                +',  CADCLI.CFONERES AS CFONERES'
                +',  CADCLI.CFONECOM AS CFONECOM '
                +',  CDTUCPR'
                +',  0 as VALORUCPR '
                +', 5 as LOCAL_INFO '

                +' from CADCLI, '+mNomeView
                 +'       where CSTATUS < 9 ');
    if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
       Qr_Ven.SQL.add(' and CCODEMP=0'+IntToStr(codemp));
    Qr_Ven.SQL.Add(' and CODIGO(+)=CCODCLI and CODIGO IS NULL ');

    mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and CCODCLI '+mcinst2);

   mcinst2:='';
   IF CLBDocRecFederal.Checked[CLBDocRecFederal.Items.Count-1]<>true then
      begin
      if CLBDocRecFederal.Checked[0]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCPF>0 ';
      if CLBDocRecFederal.Checked[1]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' CCNPJ>0 ';
      if CLBDocRecFederal.Checked[2]=true then
         mcinst2:=mcinst2+iif(mcinst2<>'',' or ','')+' (CCNPJ=0 and CCPF=0) ';
      if trim(mcinst2)<>'' then
         Qr_Ven.sql.Add(' and ('+mcinst2+')');
      end;

    mcinst2:=fItensListBox(0,lbx_codred,OMITIR_RED);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and CCODRED '+mcinst2);

    if lbx_codven.Items.Count>0 then
       begin
       mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
       if trim(mcinst2)<>'' then
          begin
          Qr_Ven.SQL.Add(' and (  (CCODVEN '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV02 '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV03 '+mcinst2+')');
          Qr_Ven.SQL.Add('     or (CCODV04 '+mcinst2+')');
          Qr_Ven.SQL.Add('     ) ');

          end;
       end;

   mcinst2:='';
   mcinst3:='';
   for x:=0 to lbx_coduf.Count -1 do
     begin
     mcinst2:=mcinst2+mcinst3+chr(39)+copy(lbx_coduf.Items[x],1,fPosCaractere('-',lbx_coduf.items[x])-1)+chr(39);
     mcinst3:=',';
     end;
   if trim(mcinst2)<>'' then
     begin
     mcinst2:=' in ('+mcinst2+')';
     if OMITIR_UF.Checked then
       mcinst2:=' not '+mcinst2;
     Qr_Ven.sql.Add(' and CUF '+mcinst2);
     end;

    mcinst2:=fItensListBox(0,lbx_codloc,OMITIR_LOC);
    if trim(mcinst2)<>'' then Qr_Ven.sql.Add(' and CCODLOC '+mcinst2);

    end;

Qr_Ven.SQL.add(' order by GRUPO ');

if CB_ORDEM.ItemIndex=1 then
   Qr_Ven.SQL.Add(' ,CODIGO ')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Ven.SQL.Add(' ,TOTAL ')
else if CB_ORDEM.ItemIndex=3 then
   Qr_Ven.SQL.Add(' ,TOTAL desc ')
else
   Qr_Ven.SQL.Add(' ,NOME ');

//Qr_ven.SQL.SaveToFile(mpastatemp + 'SQL.TXT');

try
   Qr_ven.Open;
except
   Qr_ven.SQL.SaveToFile(mpastatemp + 'SQL.TXT');
   exit;
   end;
Query_exe_local.close;
freeandnil(Query_exe_local);


result:=true;
end;

procedure TFrm_CABC.EDT_CODREGExit(Sender: TObject);
begin

edt_codreg.Text:=fdeixanum2(edt_codreg.Text);
if Trim(edt_codreg.Text)<>'' then
   begin
   if flqr1('CR_NOMREG','CR_','CADREGIAO','N','CR_CODREG',edt_codreg.Text) then
      begin
      lbx_codreg.Items.Add(FormatFloat('0000000',StrToFloat(edt_codreg.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      lbx_codreg.ItemIndex:=lbx_codreg.Items.Count-1;
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end
   else
      begin
      fmensagem('Região Não Cadastrado!',0,['0'],0);
      edt_codreg.text := '';
      edt_codreg.SetFocus;
      end;
   end;


end;

procedure TFrm_CABC.EDT_CODREGKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codreg.Text:=fdeixanum(fChamaRegiao(0,'frm_rped',key));
   edt_codregExit(self);
   key:=#0;
   end;


end;

procedure TFrm_CABC.lbx_CODREGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_CODREG.ItemIndex>=0 then
      lbx_CODREG.Items.Delete(lbx_CODREG.ItemIndex);

end;

procedure TFrm_CABC.CLBDocRecFederalClick(Sender: TObject);
begin
CLBDocRecFederal:=Valida_CheckList(CLBDocRecFederal);

end;

end.
