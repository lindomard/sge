unit S_AMVS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, StdCtrls, Buttons, S_DM1, Func, Grids, DBGrids, Db,
  DBTables, S_Agde,MaskUtils,lerarq, CheckLst,S_Impres, ComCtrls, RxMemDS,
  RLReport, jpeg, S_SelEmp, RLHTMLFilter, RLXLSFilter, RLPDFFilter,
  RLFilters, RLRichFilter,s_lerarq_geral, ToolEdit, CurrEdit,DateUtils,
  ExtDlgs, QuickRpt, QRCtrls, DBClient;

type
  TFrm_AMVS = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DtFabri: TStringField;
    Query1P1NUMNF: TFloatField;
    Query1P1DATANF: TDateTimeField;
    Query1P1DATVIS: TDateTimeField;
    Query1P1NUMVIS: TStringField;
    Query1P2CODPRO: TFloatField;
    Query1P2LOTE: TStringField;
    Query1P2QTD: TFloatField;
    Query1PDNOME: TStringField;
    Query1PDUND: TStringField;
    Query1PDREGMS: TStringField;
    Query1PDPRZVAL: TFloatField;
    Query1P2DTVCTO: TDateTimeField;
    Query1PDCODBAR: TFloatField;
    Query1CRAZAO: TStringField;
    Query1CLOG: TStringField;
    Query1CBAIRRO: TStringField;
    Query1CCIDADE: TStringField;
    Query1CUF: TStringField;
    Query1CCODCLI: TFloatField;
    Query1PDMARCA: TStringField;
    Query1CDENOM: TStringField;
    Query1TIPOMOV: TFloatField;
    Query1P1DATAMOV: TDateTimeField;
    MEM_NOTLOTES: TRxMemoryData;
    SRC_NOTLOTES: TDataSource;
    MEM_NOTLOTESDATANF: TDateTimeField;
    MEM_NOTLOTESDATAMOV: TDateTimeField;
    MEM_NOTLOTESRAZAO_SOC: TStringField;
    MEM_NOTLOTESENTRADAS: TFloatField;
    MEM_NOTLOTESSAIDAS: TFloatField;
    MEM_NOTLOTESPERDAS: TFloatField;
    MEM_NOTLOTESASS_RESP: TStringField;
    MEM_NOTLOTESOBSNF: TStringField;
    MEM_NOTLOTESCOLUNA: TFloatField;
    MEM_NOTLOTESCODPRO: TFloatField;
    MEM_NOTLOTESSALDO_INI: TFloatField;
    MEM_NOTLOTESNOMPRO: TStringField;
    MEM_NOTLOTESUNDPRO: TStringField;
    MEM_NOTLOTESNUMLOTE: TStringField;
    MEM_NOTLOTESPEDFOR: TIntegerField;
    MEM_NOTLOTESSALDO_ATU: TFloatField;
    MEM_NOTLOTESCNPJ: TStringField;
    Query1PDPESOB: TFloatField;
    MEM_NOTLOTESPESOB: TFloatField;
    Query1nomdcb: TStringField;
    Query1coddcb: TStringField;
    Query1endercomp: TStringField;
    Query1CCNPJ: TStringField;
    Query1CCPF: TStringField;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    Query1lote_calc: TStringField;
    Query1dtvcto_calc: TDateField;
    Query1PDAPRES: TStringField;
    opd1: TOpenPictureDialog;
    PageControl2: TPageControl;
    tsGeral: TTabSheet;
    tsConfiguracao: TTabSheet;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    PageControl1: TPageControl;
    tsFiltgos: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    sb_SalvarPadrao: TSpeedButton;
    BBAplicar: TBitBtn;
    BBnMMag: TBitBtn;
    bbImprimir: TBitBtn;
    bbFechar: TBitBtn;
    bbAnvisa: TBitBtn;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    lbl_ordem: TLabel;
    lbl_modelo: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    RGTIPO: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mDestino: TEdit;
    mArq1: TEdit;
    mArq2: TEdit;
    RG_CODCON: TCheckListBox;
    CB_ORDEM: TComboBox;
    CB_MODELO: TComboBox;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CB_TERMOS: TCheckBox;
    CB_TITNEG: TCheckBox;
    CB_SEPPAG: TCheckBox;
    cb_InibirNF_Complementar: TCheckBox;
    MDT1: TDateEdit;
    MDT2: TDateEdit;
    edt_datini_abert: TDateEdit;
    edt_datfin_abert: TDateEdit;
    edt_numlivro: TEdit;
    TabSheet2: TTabSheet;
    sbSavarPadrao2: TSpeedButton;
    tsmodelo03: TTabSheet;
    tsTipoped: TTabSheet;
    StaticText10: TStaticText;
    CLBNivel: TCheckListBox;
    tsConfigMaster: TTabSheet;
    GroupBox2: TGroupBox;
    logosis: TImage;
    bbAdquirir: TBitBtn;
    BBGRAVAR: TBitBtn;
    bbExcImagem: TBitBtn;
    DBGrid2: TDBGrid;
    edt_totsai: TCurrencyEdit;
    edt_totent: TCurrencyEdit;
    edt_totperdas: TCurrencyEdit;
    edt_saldo: TCurrencyEdit;
    rl_modelo03: TRLReport;
    RLBand_CAB: TRLBand;
    RLLabel1: TRLLabel;
    RLImage1: TRLImage;
    RLLabel2: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel3: TRLLabel;
    RLMemo2: TRLMemo;
    rl_mesano: TRLLabel;
    RLCAB_CARCNPJ: TRLMemo;
    RLLabel5: TRLLabel;
    RLMemo5: TRLMemo;
    rl_email: TRLLabel;
    rl_telefone: TRLLabel;
    rl_cep: TRLLabel;
    rl_empresa: TRLLabel;
    rl_ender: TRLLabel;
    rl_cidade: TRLLabel;
    rl_autfun: TRLLabel;
    rl_licenfun: TRLLabel;
    rl_autesp: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    QRIMG_CARCNPJ: TRLImage;
    RLBand_CABDET: TRLBand;
    RLCAB_CODDCB: TRLMemo;
    RLCAB_NOMDCB: TRLMemo;
    RLCAB_NOMPRO: TRLMemo;
    RLCAB_APRECON: TRLMemo;
    RLCAB_QTDVEN: TRLMemo;
    RLCAB_DATNFE: TRLMemo;
    RLCAB_NUMNFE: TRLMemo;
    RLCAB_DATNV: TRLMemo;
    RLCAB_NOMCOMP: TRLMemo;
    RLCAB_CNPJ: TRLMemo;
    RLCAB_LOTE: TRLMemo;
    RLCAB_UF: TRLMemo;
    RLBand_DET: TRLBand;
    RLDET_ENDERCOMP: TRLDBMemo;
    RLDET_CNPJ: TRLMemo;
    RLDBMemo2: TRLDBMemo;
    RLDET_UF: TRLMemo;
    RLDET_LOTE: TRLDBMemo;
    RLDET_QTD: TRLDBMemo;
    RLDET_APRECON: TRLDBMemo;
    RLDET_NOMPRO: TRLDBMemo;
    RLDET_NOMDBC: TRLDBMemo;
    RLDET_CODDCB: TRLDBMemo;
    RLDET_NUMNFE: TRLDBMemo;
    RLDET_DATNV: TRLMemo;
    RLBand1: TRLBand;
    rl_emitido: TRLLabel;
    RLBand2: TRLBand;
    tsAbertura: TTabSheet;
    RLReport_termo_abertura: TRLReport;
    RLBand3: TRLBand;
    rlheader_empresa: TRLLabel;
    RLLabel10: TRLLabel;
    RL_TA_NUMLIVRO: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    rlheader_periodo: TRLLabel;
    RLLabel16: TRLLabel;
    rlheader_razaoSocial: TRLLabel;
    RLLabel18: TRLLabel;
    rlheader_endereco: TRLLabel;
    RLLabel17: TRLLabel;
    rlheader_fonefax: TRLLabel;
    RLLabel19: TRLLabel;
    rlheader_cidade: TRLLabel;
    RLLabel20: TRLLabel;
    rlheader_cnpj: TRLLabel;
    RLLabel21: TRLLabel;
    rlheader_ie: TRLLabel;
    RLLabel22: TRLLabel;
    rlheader_representante_legal: TRLLabel;
    cds_termo: TClientDataSet;
    cds_termochave_id: TIntegerField;
    src_termo: TDataSource;
    RLLabel23: TRLLabel;
    rlheader_resp_tecnico: TRLLabel;
    RLLabel25: TRLLabel;
    rlheader_crf: TRLLabel;
    RLLabel24: TRLLabel;
    rlheader_autorizacao_funcionamento: TRLLabel;
    RLLabel26: TRLLabel;
    rlheader_alvfunc: TRLLabel;
    RLLabel27: TRLLabel;
    rlheader_autorizacao_especial: TRLLabel;
    RLLabel28: TRLLabel;
    rlheader_listas: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    tsTermoEncerramento: TTabSheet;
    RLBand4: TRLBand;
    rlfooter_empresa: TRLLabel;
    RLLabel36: TRLLabel;
    RL_TE_NUMLIVRO: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    rlfooter_periodo: TRLLabel;
    RLLabel43: TRLLabel;
    rlfooter_razaoSocial: TRLLabel;
    RLLabel45: TRLLabel;
    rlfooter_endereco: TRLLabel;
    RLLabel47: TRLLabel;
    rlfooter_fonefax: TRLLabel;
    RLLabel49: TRLLabel;
    rlfooter_cidade: TRLLabel;
    RLLabel51: TRLLabel;
    rlfooter_cnpj: TRLLabel;
    RLLabel53: TRLLabel;
    rlfooter_ie: TRLLabel;
    RLLabel55: TRLLabel;
    rlfooter_representante_legal: TRLLabel;
    RLLabel57: TRLLabel;
    rlfooter_resp_tecnico: TRLLabel;
    RLLabel59: TRLLabel;
    rlfooter_crf: TRLLabel;
    RLLabel61: TRLLabel;
    rlfooter_autorizacao_funcionamento: TRLLabel;
    RLLabel63: TRLLabel;
    rlfooter_alvfunc: TRLLabel;
    RLLabel65: TRLLabel;
    rlfooter_autorizacao_especial: TRLLabel;
    RLLabel67: TRLLabel;
    rlfooter_listas: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLReport1_encerramento: TRLReport;
    rlPagina: TRLLabel;
    Memo_cab_ent: TMemo;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Memo_cab_sai: TMemo;
    cb_termo_final: TCheckBox;
    cb_sql: TCheckBox;
    procedure BBAplicarClick(Sender: TObject);
    procedure BBnMMagClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbAnvisaClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RG_CODCONClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CB_MODELOClick(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure sbSavarPadrao2Click(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RLBand_DETBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand_DETAfterPrint(Sender: TObject);
    procedure rl_modelo03BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RGTIPOClick(Sender: TObject);
    procedure CB_ORDEMClick(Sender: TObject);
    procedure CB_SEPPAGClick(Sender: TObject);
    procedure CODPROChange(Sender: TObject);
    procedure OMITIR_PROClick(Sender: TObject);
    procedure cb_InibirNF_ComplementarClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure CLBNivelClick(Sender: TObject);
    procedure edt_numlivroExit(Sender: TObject);
    procedure bbAdquirirClick(Sender: TObject);
    procedure bbExcImagemClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RLBand_CABBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Memo_cab_entKeyPress(Sender: TObject; var Key: Char);
    procedure Memo_cab_saiKeyPress(Sender: TObject; var Key: Char);
    procedure cb_termo_finalClick(Sender: TObject);
  private
    { Private declarations }





    mChaveIdLogo: integer;

    function FNumeroDoLivro(pAnoMes: String; pNumeroLivro: String; pDataLivro: TDateTime): Integer;

    procedure fSalvarNumeroLivroPadrao;

    procedure fLerCadLog;
    procedure fSalvarCadLog;


    function fDtAbertura: String;
    function fDtEncerramento: String;

    procedure fImprimirInfCab(pLinhaIni: integer; pMemo: tMemo; pFontNegrito: boolean);


  public
    { Public declarations }
    form_impres_amvs: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp; 
    function FemitirMod02(pTipo: Integer): Boolean;
    function FemitirMod01(ptipo: Integer): Boolean;
    function FemitirMod03(ptipo: Integer): Boolean;
    function FemitirMod04(pTipo: Integer): Boolean;
    Function Famvscab(mtipo: Integer): Boolean;
    Function Famvsccl(mtipo: Integer): Boolean;
    Function FamvscabMod01(mtipo: Integer): Boolean;
    Function FamvscclMod01(mtipo: Integer): Boolean;
    Function FMod03Cab(mtipo: Integer): Boolean;
    function FMod04Cab(mtipo: Integer): Boolean;


  end;

function fDataEstoqueInicial(pData: TDateTime): tDateTime;

var
  Frm_AMVS: TFrm_AMVS;
  mCodProA: Real;
  mListas: String;
  mentrada,msaida,msaldo,mperdas,mtotal: Real;
  mcodclia: Real;

implementation

uses Func2, S_DM4, S_ANVISA, S_Informacoes, func_excecoes;

{$R *.DFM}

procedure TFrm_AMVS.BBAplicarClick(Sender: TObject);
var
   minscmun: string;
   x:integer;
   mCodPro_Ant: Real;
   mSaldo_Ant: Real;
   mItem: Integer;
   mTabTemp: String;
 //  query_temp: TQuery;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(MDT2.Text)<StrtoDate(MDT1.Text) then
      begin
      fmensagem('Data Final maior que data inicial!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

if (Trim(MDT1.Text)='/  /') then
   begin
   fmensagem('Data Inicial Campo Obrigatorio!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;

minscmun:='';
for x:=Length(DM1.Tb_Empinscmunic.AsString) downto 1 do
   begin
   If DM1.Tb_Empinscmunic.AsString[x] in ['0'..'9'] then
      minscmun:=DM1.Tb_Empinscmunic.AsString[x]+minscmun;
   end;
if minscmun='' then
   begin
   fmensagem('N o h  inscri  o municipal da empresa.'+#13
               +#13
               +'Alterar em SISTEMA/EMPRESA.',0,['0'],0);
   MDT1.SetFocus;
   Exit;
   end;
mArq1.Text:=FormatFloat('000000',StrToInt(copy(minscmun,1,6)))
            +Copy(MDT1.Text,08,2)+'.'+UpperCase(copy(NMES(StrToDate(MDT1.Text)),1,3));
mArq2.Text:='RMV'+UpperCase(copy(NMES(StrToDate(MDT1.Text)),1,3))+Copy(mdt1.Text,08,2);
{
select P1NUMNF, P1DTEMIS, P1DATVIS, P1NUMVIS, P2CODPRO,
 P2LOTE, P2QTD, PDNOME, PDAPRES, PDUND, PDREGMS, PDPRZVAL, P2DATVEN, PDCODDCB, GENOMGER,
 PDCODBARR, CRAZAO, CENDER, CBAIRRO, CCGC, LNOME, LEST
 from PED01, PED02, CADCLI, CADPRO, CADLOC, CADGER
 where P2NUMERO=P1NUMERO
 and P2ORDEM=P1ORDEM
 and CCODCLI=P1CODCLI
  and PDCODPRO=P2CODPRO
  and LCODLOC=CCODLOC
  and GECODGER=PDCODDCB
  and PDCODCON>0
  Order by CRAZAO,P1NUMNF
}

mcinst4:='';


mListas:='';
for x:=0 to RG_CODCON.Items.Count-2 do
   begin
   if RG_CODCON.Checked[x] then
      begin
      if trim(mListas)='' then
         mListas:=copy(RG_CODCON.Items[x],1,2)
      else
         mlistas:=mlistas+' - '+copy(RG_CODCON.items[x],1,2);
      end;
   end;


if not RG_CODCON.Checked[RG_CODCON.Items.Count-1] then
   begin
   mboolean:=false;
   for x:=0 to RG_CODCON.Items.Count-1 do
      begin
      if RG_CODCON.Checked[x] then
         begin
         mboolean:=true;
         break;
         end;
      end;
   if not mboolean then
      begin
      fmensagem('Favor Selecionar uma Portaria!',0,['0'],0);
      exit;
      end;

   DM1.Query6.First;
   mcinst4:='';
   for x:=0 to RG_CODCON.Items.Count-1 do
      begin
      if RG_CODCON.Checked[x] then
         begin
         if trim(mcinst4)<>'' then
            mcinst4:=mcinst4+',';
         if DM1.Query6.Locate('CNOME',RG_CODCON.Items[x],[]) then
            mcinst4:=mcinst4+DM1.Query6.fieldbyName('CCODCON').Asstring;
         end;
      end;
   end;
if (CB_MODELO.ItemIndex=0) and
   ((RGTIPO.ItemIndex>2) or (RGTIPO.ItemIndex<0)) then
   RGTIPO.ItemIndex:=2;
{
query_temp:=TQuery.Create(NIL);
query_temp.DatabaseName:='SG_ASSOC';
query_temp.SQL.Add('UPDATE CADP01 SET P1TIPO_ENTSAI=1 '
                  +' WHERE EXISTS '
                  +' (SELECT P2CFO FROM CADP02 WHERE P2CHAVE=P1CHAVE AND P2CODEMP=P1CODEMP '
                  +' AND P2LOTSEQ=P1LOTSEQ AND P2ORDEM=P1ORDEM AND P2CFO<5000) ');
query_temp.ExecSQL;
fdm1StartCommit;
}

Query1.Close;
Query1.SQL.Clear;


if RGTIPO.ItemIndex<>1 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin5(0,'CADP02_LOTES','P2LM_CODEMP','P2CODEMP','P2LM_LOTSEQ','P2LOTSEQ','P2LM_CHAVE','P2CHAVE','P2LM_CODPRO','P2CODPRO','P2LM_ITEM','P2ITEM');


   Query1.SQL.Add('select '+QuotedStr('VENDA')+' AS MOVIM,P2ITEM, P1NUMNF, P1DATANF, P1DATVIS, P1NUMVIS, P2CODPRO, '
                 +'  DECODE(P2LM_QTD,NULL,P2LOTE,P2LM_LOTE) AS P2LOTE, '
                 +' DECODE(P2LM_QTD,NULL,P2QTD,P2LM_QTD) AS P2QTD, PDNOME, PDAPRES, PDUND, PDREGMS, PDPRZVAL, '
                 +'DECODE(P2LM_QTD,NULL,P2DTVCTO,P2LM_DTVCTO) AS P2DTVCTO, PDPESOB,'
                 +' PDCODBAR, CCODCLI,CRAZAO, CLOG, CBAIRRO, to_char(CCNPJ) as CCNPJ, TO_CHAR(CCPF) AS CCPF, CCIDADE, CUF '
                 +' ,PDMARCA,CDENOM, case when P1TIPO_ENTSAI=1 then 0 else 01 end as TIPOMOV,P1DATANF AS P1DATAMOV,ROWNUM AS COLUNA '
                 +' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido
               +' and P1TIPO>0 and P1EMIDOC=1  '
               +' and P1TIPO<>8 and P1TIPO<>12 and P1TIPO<>13 and P1TIPO<>17 and P1TIPO<>9 '
               +' and PDCODCON>0 ');
   if cb_InibirNF_Complementar.Checked then
      Query1.SQL.add(' and P1TIPO<>10 ');
   if trim(mcinst4)<>'' then
      Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');

   Query1.SQL.add(fFormatdatetimeParaConsulta('P1DATDOC',true,StrTodate(MDT1.Text)));
   Query1.SQL.add(fFormatdatetimeParaConsulta('P1DATDOC',false,StrTodate(MDT2.Text)));


   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and P2CODPRO '+mcinst2);

   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and PDNIVEL '+mcinst2);

   Query1.SQL.Add(' union all ');

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(1,'CADPRO','PDCODEMP', 'AJCODEMP','PDCODPRO' ,'AJCODPRO');
   Query1.SQL.Add('select '+QuotedStr('AJUSTE')+' AS MOVIM,0 AS P2ITEM, 0 as P1NUMNF, AJDATA AS  P1DATANF, '
                 +' AJDATAREF AS P1DATVIS, '+chr(39)+' '+chr(39)+'P1NUMVIS, AJCODPRO AS P2CODPRO, '
                 +' AJLOTE AS P2LOTE, AJQTD AS P2QTD, PDNOME, PDAPRES, PDUND, PDREGMS, PDPRZVAL, AJDATAV AS P2DTVCTO, PDPESOB,'
                 +' PDCODBAR, 0 AS CCODCLI, AJMOTIVO AS CRAZAO, '
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as CLOG,'
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as  CBAIRRO, '
                 +' '+chr(39)+'0'+chr(39)+' as CCNPJ, '+chr(39)+'0'+chr(39)+' as CCPF, '
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as CCIDADE,'
                 +' '+chr(39)+insere2(' ',' ',02)+chr(39)+' as  CUF '
                 +' ,PDMARCA,'
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as CDENOM, 02 as TIPOMOV,AJDATAREF AS P1DATAMOV,ROWNUM AS COLUNA '
                 +' from CADAJU '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' AJTIPOM=1 '
               +' and PDCODCON>0 ');

   if trim(mcinst4)<>'' then
      Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   if trim(MDT1.Text)<>'/  /' then
      Query1.SQL.add(' and AJDATAREF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      Query1.SQL.add(' and AJDATAREF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   Query1.SQL.add(' and AJMOTIVO='+chr(39)+'PERDAS'+chr(39));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and AJCODPRO '+mcinst2);
   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and PDNIVEL '+mcinst2);


   if RGTIPO.ItemIndex<>0 then
      Query1.SQL.Add(' union all  ')
   else
      begin
      if CB_ORDEM.ItemIndex=0 then
         Query1.SQL.add(' Order by CRAZAO,CCODCLI,P1NUMNF ')
      else
         Query1.SQL.add(' Order by PDNOME,P2CODPRO,P1DATANF,TIPOMOV,P1NUMNF ')
      end;

   end;

if RGTIPO.ItemIndex<>0 then
   begin


   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin5(1,'CADPF2_LOTES_ORC','PF2L_CODEMP','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_CODPRO','PF2CODPRO','PF2L_ITEM','PF2ITEM');
   la_instrucao:=la_instrucao+' and ';

   fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'PF2CODEMP','PDCODPRO' ,'PF2CODPRO');


   Query1.SQL.Add('select  '+QuotedStr('COMPRA')+' AS MOVIM,PF2ITEM, '

                 +'  PF1NUMNF AS P1NUMNF, PF1DATANF AS P1DATANF, to_date('+QuotedStr('01/01/1900')+') AS P1DATVIS, '+chr(39)+''+chr(39)+' AS P1NUMVIS, PF2CODPRO AS P2CODPRO,'
                 +' DECODE(PF2L_QTD,NULL,PF2LOTE,PF2L_LOTE) AS P2LOTE, '
                 +' DECODE(PF2L_QTD,NULL,PF2QTDP,PF2L_QTD) AS P2QTD, '
                 +' PDNOME,PDAPRES,PDUND,PDREGMS,PDPRZVAL, '
                 +' DECODE(PF2L_QTD,NULL,PF2DATAV,PF2L_DTVCTO) AS P2DTVCTO, '
                 +' PDPESOB,'
                 +' PDCODBAR, '
                 +' FCODFOR AS CCODCLI, FRAZAO AS CRAZAO, FNLOG AS CLOG, FBAIRRO AS CBAIRRO, FCGC AS CCNPJ, FCGC AS CCPF, FCIDADE AS CCIDADE, FUF AS CUF'
                 +' ,PDMARCA,FDENOM AS CDENOM, 00 as TIPOMOV,PF1DATAENT AS P1DATAMOV ,ROWNUM AS COLUNA'
                 +' from CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PF1STATUS=1 '
                 +' and PDCODCON>0 '
                 );
   if trim(mcinst4)<>'' then
      Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   if trim(MDT1.Text)<>'/  /' then
      Query1.SQL.add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      Query1.SQL.add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and PF2CODPRO '+mcinst2);
   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and PDNIVEL '+mcinst2);

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');

   la_instrucao:=la_instrucao+' and ';
   fInnerJoin5(0,'CADP02_LOTES','P2LM_CODEMP','P2CODEMP','P2LM_LOTSEQ','P2LOTSEQ','P2LM_CHAVE','P2CHAVE','P2LM_CODPRO','P2CODPRO','P2LM_ITEM','P2ITEM');

   Query1.SQL.Add('union all '
                 +'select  '+QuotedStr('DEVOL')+' AS MOVIM,P2ITEM,'
                 +'       P1NUMNF, P1DATANF, P1DATVIS, P1NUMVIS, P2CODPRO, '
                 +'  DECODE(P2LM_QTD,NULL,P2LOTE,P2LM_LOTE) AS P2LOTE, '
                 +'  DECODE(P2LM_QTD,NULL,P2QTD,P2LM_QTD) AS P2QTD, PDNOME, PDAPRES, PDUND, PDREGMS, PDPRZVAL, '
                 +' DECODE(P2LM_QTD,NULL,P2DTVCTO,P2LM_DTVCTO) AS P2DTVCTO, PDPESOB,'
                 +' PDCODBAR, CCODCLI,CRAZAO, CLOG, CBAIRRO, to_char(CCNPJ) as CCNPJ, TO_CHAR(CCPF) AS CCPF, CCIDADE, CUF '
                 +' ,PDMARCA,CDENOM AS CDENOM, 00 as TIPOMOV,P1DATANF AS P1DATAMOV ,ROWNUM AS COLUNA'
                 +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(trim(la_Empresas)='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+'  and ')
                 +' P1STATUS<'+mstatus_excluido
                 +' and (P1TIPO=8 or P1TIPO=12 or P1TIPO=13 OR P1TIPO=17 ) and P1EMIDOC=1  '
                 +' and PDCODCON>0 ');
   if cb_InibirNF_Complementar.Checked then
      Query1.SQL.add(' and P1TIPO<>10 ');
   if trim(mcinst4)<>'' then
      Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');

   Query1.SQL.add(fFormatdatetimeParaConsulta('P1DATDOC',true,StrTodate(MDT1.Text)));
   Query1.SQL.add(fFormatdatetimeParaConsulta('P1DATDOC',false,StrTodate(MDT2.Text)));

   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and P2CODPRO '+mcinst2);
   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and PDNIVEL '+mcinst2);

   Query1.SQL.Add(' union all ');

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin(1,'CADPRO','PDCODEMP', 'AJCODEMP','PDCODPRO' ,'AJCODPRO');
   Query1.SQL.Add('select '+QuotedStr('AJUSTE-ENTRADA')+' AS MOVIM,0 AS P2ITEM, 0 as P1NUMNF, AJDATA AS  P1DATANF, '
                 +' AJDATAREF AS P1DATVIS, '+chr(39)+' '+chr(39)+'P1NUMVIS, AJCODPRO AS P2CODPRO, '
                 +' AJLOTE AS P2LOTE, AJQTD AS P2QTD, PDNOME, PDAPRES, PDUND, PDREGMS, PDPRZVAL, AJDATAV AS P2DTVCTO, PDPESOB,'
                 +' PDCODBAR, 0 AS CCODCLI, AJMOTIVO AS CRAZAO, '
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as CLOG,'
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as  CBAIRRO, '
                 +' '+chr(39)+'0'+chr(39)+' as CCNPJ, '+chr(39)+'0'+chr(39)+' as CCPF, '
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as CCIDADE,'
                 +' '+chr(39)+insere2(' ',' ',02)+chr(39)+' as  CUF '
                 +' ,PDMARCA,'
                 +' '+chr(39)+insere2(' ',' ',40)+chr(39)+' as CDENOM, 0 as TIPOMOV,AJDATAREF AS P1DATAMOV,ROWNUM AS COLUNA '
                 +' from CADAJU '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' AJTIPOM=0 '
               +' and PDCODCON>0 ');

   if trim(mcinst4)<>'' then
      Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   if trim(MDT1.Text)<>'/  /' then
      Query1.SQL.add(' and AJDATAREF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      Query1.SQL.add(' and AJDATAREF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   Query1.SQL.add(' and AJMOTIVO='+chr(39)+'PERDAS'+chr(39));
   mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and AJCODPRO '+mcinst2);
   mcinst2:=fItenstCheckListBox(0,CLBNivel);
   if trim(mcinst2)<>'' then
      Query1.SQL.Add(' and PDNIVEL '+mcinst2);


   if CB_ORDEM.ItemIndex=0 then
      Query1.SQL.add(' Order by CRAZAO,CCODCLI,P1NUMNF ')
   else
      Query1.SQL.add(' Order by PDNOME,P2CODPRO,P1DATANF,TIPOMOV,P1NUMNF ')

   end;
try
  Query1.Open;
except on e : exception do
  ex_erroSql_Novo(Query1,638,'_stru '+e.message,'user');

//  Query1.sql.savetofile(mpastatemp + 'SQL.txt');
  end;
if (codusr=1111) and (cb_sql.checked) then    
 ex_erroSql_Novo(Query1,638,'_stru ','user');


//Query1.sql.savetofile(mpastatemp + 'SQLAMVS.txt');

mCodPro_Ant:=0;
mSaldo_ant :=0;
mItem      :=0;

MEM_NOTLOTES.Close;
MEM_NOTLOTES.Open;

if trim(mtabtemp)='' then
   mTabTemp:=fProcTemp(22);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Create or replace view '+mTabTemp+' as ');
DM1.Query1.SQL.Add('select '+QuotedStr('VENDAS')+' as LOCAL, sum(decode(P1TIPO_ENTSAI,1,P2QTD,0)) AS QTDENT '
                  +',sum(decode(P1TIPO_ENTSAI,1,0,P2QTD)) AS QTDSAI '
                  +',0 as PERDAS '
                  +',0 as ESTOQUE_ATU '
                  +',p2codpro from cadp01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' P1STATUS<'+mstatus_excluido
                 +' and (P1TIPO>0) '
                 +' and PDCODCON>0 '
                 );
   if cb_InibirNF_Complementar.Checked then
      DM1.Query1.SQL.add(' and P1TIPO<>10 ');
if RG_CODCON.Checked[RG_CODCON.Items.Count-1]=true then
   DM1.Query1.SQL.add(' and PDCODCON>0 ')
else
   begin
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   end;

DM1.Query1.SQL.add(fFormatdatetimeParaConsulta('P1DATDOC',true,StrTodate(MDT1.Text)));
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P2CODPRO '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);

DM1.Query1.SQL.add(' and P1EMIDOC=1 ');

DM1.Query1.SQL.add(' group by P2CODPRO ');


// PEDIDO DE COMPRAS

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADPF2','PF2CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADPRO','PDCODEMP', 'PF2CODEMP','PDCODPRO' ,'PF2CODPRO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin3(1,'CADPF1','PF1CODEMP','PF2CODEMP','PF1LOTSEQ','PF2LOTSEQ','PF1CHAVE','PF2CHAVE');

DM1.Query1.SQL.Add(' union all ');
DM1.Query1.SQL.Add('select '+QuotedStr('COMPRAS')+' as LOCAL,sum(PF2QTDP) AS QTDENT '
                  +',0 AS QTDSAI '
                  +',0 as PERDAS '
                  +',0 as ESTOQUE_ATU '
                  +',pf2codpro as P2CODPRO from cadpf2 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' PF1STATUS>0 ');
if RG_CODCON.Checked[RG_CODCON.Items.Count-1]=true then
   DM1.Query1.SQL.add(' and PDCODCON>0 ')
else
   begin
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   end;
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39) );
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PF2CODPRO '+mcinst2);
mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);

DM1.Query1.SQL.add(' group by PF2CODPRO ');

// AJUSTE DE ESTOQUE - perdas

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADPRO','PDCODEMP', 'AJCODEMP','PDCODPRO' ,'AJCODPRO');

DM1.Query1.SQL.Add(' union all ');
DM1.Query1.SQL.Add('select '+QuotedStr('AJUSTE')+' as LOCAL,0 AS QTDENT '
                  +',0 AS QTDSAI '
                  +',sum(AJQTD) as PERDAS '
                  +',0 as ESTOQUE_ATU '
                  +',AJcodpro as P2CODPRO from CADAJU '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' AJTIPOM=1 ');
if RG_CODCON.Checked[RG_CODCON.Items.Count-1]=true then
   DM1.Query1.SQL.add(' and PDCODCON>0 ')
else
   begin
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   end;
if StrtoDate(MDT1.Text)>pdatanula then
   DM1.Query1.SQL.Add(' and AJDATAREF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
DM1.Query1.SQL.add(' and AJMOTIVO='+chr(39)+'PERDAS'+chr(39));

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
  DM1.Query1.SQL.Add(' and AJCODPRO '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);


DM1.Query1.SQL.add(' group by AJCODPRO ');


// AJUSTE DE ESTOQUE - perdas

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADAJU','AJCODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADPRO','PDCODEMP', 'AJCODEMP','PDCODPRO' ,'AJCODPRO');

DM1.Query1.SQL.Add(' union all ');
DM1.Query1.SQL.Add('select '+QuotedStr('AJUSTE')+' as LOCAL,sum(AJQTD) AS QTDENT '
                  +',0 AS QTDSAI '
                  +',0 as PERDAS '
                  +',0 as ESTOQUE_ATU '
                  +',AJcodpro as P2CODPRO from CADAJU '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' AJTIPOM=0 ');
if RG_CODCON.Checked[RG_CODCON.Items.Count-1]=true then
   DM1.Query1.SQL.add(' and PDCODCON>0 ')
else
   begin
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   end;
if StrtoDate(MDT1.Text)>pdatanula then
   DM1.Query1.SQL.Add(' and AJDATAREF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
DM1.Query1.SQL.add(' and AJMOTIVO='+chr(39)+'PERDAS'+chr(39));

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and AJCODPRO '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);


DM1.Query1.SQL.add(' group by AJCODPRO ');


// ESTOQUE ATUAL


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADEST','CECODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADPRO','PDCODEMP', 'CECODEMP','PDCODPRO' ,'CECODPRO');

DM1.Query1.SQL.Add(' union all ');
DM1.Query1.SQL.Add('select '+QuotedStr('ESTOQUE')+' as LOCAL,0 AS QTDENT '
                  +',0 AS QTDSAI '
                  +',0 as PERDAS '
                  +',CESALDO as ESTOQUE_ATU '
                  +',CEcodpro as P2CODPRO from CADEST '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' CESALDO<>0 ');
if RG_CODCON.Checked[RG_CODCON.Items.Count-1]=true then
   DM1.Query1.SQL.add(' and PDCODCON>0 ')
else
   begin
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   end;

if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and CECODPRO '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);


// mercadorias revservadas

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP02','P2CODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

DM1.Query1.SQL.Add(' union all ');

DM1.Query1.SQL.Add('select '+QuotedStr('PENDENTES')+' as LOCAL,0 AS QTDENT '
                  +',0 AS QTDSAI '
                  +',0 as PERDAS '
                  +',sum(decode(P1TIPO_ENTSAI,1,P2QTD*-1,P2QTD)) AS ESTOQUE_ATU '
                  +',p2codpro from cadp01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' P1STATUS<'+mstatus_excluido
                 +' and (P1TIPO>0) '
                 +' and PDCODCON>0 '
                 );
   if cb_InibirNF_Complementar.Checked then
      DM1.Query1.SQL.add(' and P1TIPO<>10 ');
if RG_CODCON.Checked[RG_CODCON.Items.Count-1]=true then
   DM1.Query1.SQL.add(' and PDCODCON>0 ')
else
   begin
   if trim(mcinst4)<>'' then
      DM1.Query1.SQL.add(' and PDCODCON in ('+mcinst4+')');
   end;
{
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and P1DATAP>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and P1DATAP<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
}

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and PDNIVEL '+mcinst2);

DM1.Query1.SQL.add(' and P1EMIDOC=0 ');

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P2CODPRO '+mcinst2);
DM1.Query1.SQL.add(' group by P2CODPRO ');


// termino das reservadas



// DM1.Query1.sql.savetofile(mpastatemp + 'SQL_trig.txt');

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
  DM1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');
   end;
//DM1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');

DM1.Query5.close;
DM1.Query5.sql.clear;
DM1.Query5.SQL.Add('select sum(QTDENT) as QTDENT '
                  +',sum(QTDSAI) AS QTDSAI '
                  +',sum(PERDAS) as PERDAS '
                  +',sum(ESTOQUE_ATU) AS ESTOQUE_ATU '
                  +',P2CODPRO from '+mtabtemp
                  +' group by P2CODPRO ');
DM1.Query5.Open;
edt_totsai.Value   :=0;
edt_totent.Value   :=0;
edt_totperdas.Value:=0;
edt_saldo.Value    :=0;



While not Query1.Eof do
   begin
   if mCodPro_Ant<>Query1P2CODPRO.AsFloat then
      begin
      if DM1.Query5.locate('P2CODPRO',Query1P2CODPRO.AsFloat,[]) then
         mSaldo_ant:=(
                     (DM1.Query5.fieldbyName('QTDSAI').asfloat+DM1.Query5.fieldbyName('ESTOQUE_ATU').asfloat+
                     DM1.Query5.fieldbyName('PERDAS').asfloat)
                     - (DM1.Query5.fieldbyName('QTDENT').asfloat)
                     )

      else
         mSaldo_ant:=0;
      mCodPro_Ant:=Query1P2CODPRO.AsFloat;
      end;

   mItem:=mItem+1;
   MEM_NOTLOTES.Append;
   MEM_NOTLOTESSALDO_INI.AsFloat    := mSaldo_Ant;
   MEM_NOTLOTESCNPJ.AsString        := Iif(Length(Query1CCNPJ.AsString) = 13,
                                            insere(Query1CCNPJ.AsString,'0',14),
                                       Iif(Length(Query1CCNPJ.AsString) = 12,insere(Query1CCNPJ.AsString,'0',14),
                                       Iif(Length(Query1CCNPJ.AsString) = 11,insere(Query1CCNPJ.AsString,'0',14),
                                       Query1CCNPJ.AsString)));
   if Query1PDPESOB.AsFloat<=0 then
      MEM_NOTLOTESPESOB.AsFloat        := 1
   else
      MEM_NOTLOTESPESOB.AsFloat        := Query1PDPESOB.AsFloat;
   MEM_NOTLOTESDATANF.AsDateTime    := Query1P1DATANF.AsDateTime;
   MEM_NOTLOTESDATAMOV.AsDateTime   := Query1P1DATANF.AsDateTime;
   MEM_NOTLOTESRAZAO_SOC.AsString   := Query1CRAZAO.AsString;
   MEM_NOTLOTESPEDFOR.AsInteger     := 0;

   if Query1TIPOMOV.AsInteger=2 then
      begin
      MEM_NOTLOTESENTRADAS.AsFloat  :=0;
      MEM_NOTLOTESSAIDAS.AsFloat    :=0;
      MEM_NOTLOTESPERDAS.AsFloat    :=Query1P2QTD.AsFloat;
      MEM_NOTLOTESOBSNF.AsString    :='';
      mSaldo_Ant:=mSaldo_Ant-Query1P2QTD.AsFloat;

      edt_totperdas.Value:=edt_totperdas.Value+Query1P2QTD.AsFloat;


      end
   else if Query1TIPOMOV.AsInteger=1 then
      begin
      MEM_NOTLOTESENTRADAS.AsFloat  :=0;
      MEM_NOTLOTESSAIDAS.AsFloat    :=Query1P2QTD.AsFloat;
      MEM_NOTLOTESPERDAS.AsFloat    :=0;
      MEM_NOTLOTESOBSNF.AsString    :='NF: '+Query1P1NUMNF.AsString+' Lt: '+Query1P2LOTE.AsString;
      mSaldo_Ant:=mSaldo_Ant-Query1P2QTD.AsFloat;
      edt_totsai.Value:=edt_totsai.Value+Query1P2QTD.AsFloat;

      end

   else
      begin
      MEM_NOTLOTESENTRADAS.AsFloat  :=Query1P2QTD.AsFloat;
      MEM_NOTLOTESSAIDAS.AsFloat    :=0;
      MEM_NOTLOTESPERDAS.AsFloat    :=0;
      MEM_NOTLOTESOBSNF.AsString    :='NF: '+Query1P1NUMNF.AsString+' Lt: '+Query1P2LOTE.AsString;
      MEM_NOTLOTESPEDFOR.AsInteger  :=1;
      mSaldo_Ant:=mSaldo_Ant+Query1P2QTD.AsFloat;
      MEM_NOTLOTESDATAMOV.AsDateTime   :=Query1P1DATAMOV.AsDateTime;
      edt_totent.Value:=edt_totent.Value+Query1P2QTD.AsFloat;

      end;
   MEM_NOTLOTESASS_RESP.AsString    :='';
   MEM_NOTLOTESCOLUNA.AsFloat       :=mItem;
   MEM_NOTLOTESCODPRO.AsFloat       :=Query1P2CODPRO.AsFloat;
   MEM_NOTLOTESNOMPRO.AsString      :=Query1PDNOME.AsString;
   MEM_NOTLOTESUNDPRO.AsString      :=Query1PDUND.AsString;
   MEM_NOTLOTESSALDO_ATU.AsFloat    :=mSaldo_Ant;
   MEM_NOTLOTES.Post;

   edt_saldo.Value    :=edt_totent.Value-(edt_totsai.Value+edt_totperdas.Value);
   Query1.Next;
   end;

end;

procedure TFrm_AMVS.BBnMMagClick(Sender: TObject);
var
   F: TextFile;
   mfone, minscmun: string;
   wArq1, wArq2:String;
   x, mreg, mtot: integer;
begin
   if not Query1.Active then
      begin
      BBAplicarClick(self);
//      fmensagem('  necess rio aplicar a sele  o!',0,['0'],0);
//      Exit;
      end;
   wArq1:=Trim(mDestino.Text)+mArq1.Text;
   AssignFile(F,wArq1);
   ReWrite(F);
   minscmun:='';
   for x:=Length(DM1.Tb_Empinscmunic.AsString) downto 1 do
   begin
      If DM1.Tb_Empinscmunic.AsString[x] in ['0'..'9'] then
         minscmun:=DM1.Tb_Empinscmunic.AsString[x]+minscmun;
   end;
   if minscmun='' then
   begin
      fmensagem('N o h  inscri  o municipal da empresa.'+#13
                  +#13
                  +'Alterar em SISTEMA/EMPRESA.',0,['0'],0);
      MDT1.SetFocus;
      Exit;
   end;
   mfone:='';
   for x:=Length(DM1.Tb_EmpFONE.Value) downto 1 do
   begin
      If DM1.Tb_EmpFONE.Value[x] in ['0'..'9'] then
         mfone:=DM1.Tb_EmpFONE.Value[x]+mfone;
   end;
   WriteLn(F,FormatFloat('000000000',fsonumero(minscmun))
           +Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)
           +Insere2(DM1.Tb_EmpRAZAO.Value,' ',60)
           +Insere2(DM1.Tb_EmpENDERECO.Value,' ',60)
           +Insere2(DM1.Tb_EmpBAIRRO.Value,' ',20)
           +Insere2(DM1.Tb_EmpCIDADE.Value,' ',40)
           +FormatFloat('00000000',fsonumero('0'+mfone))  
           +Insere2(DM1.Tb_EmpRESPONS.Value,' ',20)
           +Insere2(DM1.Tb_EmpCERTREG.Value,' ',7)
           +Insere2(DM1.Tb_EmpAUTFUNC.Value,' ',8)
           +Insere2(DM1.Tb_EmpAUTESP.Value,' ',8));
   CloseFile(F);
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.gb_progres.Visible:=True;
   Frm_Agde.Label1.Caption:='Gerando Arquivo! Aguarde...';
   Frm_Agde.Show;
   Frm_Agde.Update;
   mreg:=0; mtot:=Query1.RecordCount;
   wArq2:=Trim(mDestino.Text)+mArq2.Text;
   AssignFile(F,wArq2);
   ReWrite(F);
   Query1.First;
   while not Query1.Eof do
   begin
      flcadPgen(0,0,Query1P2CODPRO.AsString);
      mreg:=mreg+1;
      Frm_Agde.Gauge1.Progress:=mreg*100 div mtot;
      Frm_Agde.Update;
      WriteLn(F,Insere2(FormatMaskText('0000.00-A;0;',DM1.Tb_PGenPGCODDCB.Value),' ',9)
              +Insere2(DM1.Tb_PGennomedcb.Value,' ',40)
              +Insere2(Query1PDNOME.Value,' ',30)
              +Insere2(Query1PDNOME.Value,' ',30)
              +FormatFloat('0000000',Query1P2QTD.Value)
              +Insere2(Query1P2LOTE.Value,' ',15)
              +FormatFloat('000000000000000',Query1P1NUMNF.Value)
              +FormatDateTime('dd/mm/yyyy',Query1P1DATANF.Value)
              +IIF(Query1P1DATVIS.Value>StrToDate('01/01/1900'),FormatDateTime('dd/mm/yyyy',Query1P1DATVIS.Value),'          ')
              +FormatFloat('0000000000',ValFloat(Query1P1NUMVIS.Value))
              +Insere2(Query1CRAZAO.Value,' ',60)
              +Insere2(Query1CLOG.Value,' ',70)
              +Insere2(Query1CBAIRRO.Value,' ',20)
              +Insere2(Query1CCIDADE.Value,' ',40)
              +iif(ValFloat(Query1CCNPJ.AsString)=0,
                 insere2(FormatFloat('000"."000"."000-00',ValFloat(Query1CCPF.AsString)),'0',18)
                ,Insere2(FormatFloat('00"."000"."000/0000-00',ValFloat(Query1CCNPJ.AsString)),'0',18) )
              +Insere2(Query1CUF.Value,' ',2));
      Query1.Next;
   end;
   CloseFile(F);
   Query1.First;
   Frm_Agde.Free;
end;

procedure TFrm_AMVS.fSalvarNumeroLivroPadrao;
begin
fDeletaPadroes(0,'_AMVS_NUMLIVRO','');
fGravaPadroes(0,FormatDatetime('yyyymm', MDT1.date)      ,'text'  ,'_AMVS_NUMLIVRO',edt_numlivro.text);


end;


procedure TFrm_AMVS.bbImprimirClick(Sender: TObject);
begin
if not Query1.Active then
   begin
   BBAplicar.Click;
//   Exit;
   end;

fSalvarNumeroLivroPadrao;


if CB_MODELO.ItemIndex=1 then
   FemitirMod01(0)
//else if CB_MODELO.ItemIndex=1 then
//   FemitirMod02(0)
else if CB_MODELO.ItemIndex = 2 then
   FemitirMod04(0)
else if cb_modelo.ItemIndex = 3 then
  begin



  RL_TA_NUMLIVRO.Caption:='LIVRO NUMERO: '+edt_numlivro.Text;
  RL_TE_NUMLIVRO.Caption:='LIVRO NUMERO: '+edt_numlivro.Text;
  rl_mesano.Caption   :='M s/Ano...: '+copy(MDT1.Text,4,7);
  rl_autfun.Caption   :='Autoriza  o de Funcionamento N ...: '+dm1.Tb_EmpAUTFUNC.AsString;
  rl_licenfun.Caption :='Licenca de Funcionamento       N ...: '+dm1.Tb_EmpALVFUNC.AsString;
  rl_autesp.Caption   :='Autoriza  o Especial               N ...: '+dm1.Tb_EmpAUTESP.AsString;
  rl_empresa.Caption  :='Empresa......: '+dm1.Tb_EmpRAZAO.AsString;
  rl_ender.Caption    :='Endere o.....: '+dm1.Tb_EmpENDERECO.AsString+' - '+dm1.Tb_EmpBAIRRO.AsString;
  rl_cidade.Caption   :='Cidade.........: '+dm1.Tb_EmpCIDADE.AsString+' - '+dm1.Tb_EmpUF.AsString;
  rl_cep.Caption      :='CEP............: '+dm1.Tb_EmpCEP.AsString;
  rl_telefone.Caption :='FONE/FAX...: '+dm1.Tb_EmpFONE.AsString+' - '+dm1.Tb_EmpFAX.AsString;
  rl_email.Caption    :='Email...........: '+dm1.Tb_EmpE_MAIL.AsString;

  rlheader_empresa.Caption:= DM1.Tb_EmpRAZAO.AsString;

  rlheader_periodo.Caption    :=fDtAbertura;

  rlheader_razaoSocial.Caption:= DM1.Tb_EmpRAZAO.AsString;
  rlheader_endereco.Caption   := dm1.Tb_EmpENDERECO.AsString+' - '+dm1.Tb_EmpBAIRRO.AsString;
  rlheader_fonefax.Caption    := dm1.Tb_EmpFONE.AsString+' - '+dm1.Tb_EmpFAX.AsString;
  rlheader_cidade.Caption     := dm1.Tb_EmpCIDADE.AsString+' - '+dm1.Tb_EmpUF.AsString;

  rlheader_cnpj.Caption       := FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value);
  rlheader_ie.Caption                   := DM1.Tb_EmpINSCRICAO.Value;
  rlheader_representante_legal.Caption  := DM1.Tb_EmpDIRETOR.Value;
  rlheader_resp_tecnico.Caption         := DM1.Tb_EmpRESPONS.Value;
  rlheader_crf.Caption                        := DM1.Tb_EmpCERTREG.AsString;
  rlheader_autorizacao_funcionamento.Caption  := DM1.Tb_EmpAUTFUNC.AsString;
  rlheader_alvfunc.Caption                    := DM1.Tb_EmpALVFUNC.AsString;
  rlheader_autorizacao_especial.Caption       := DM1.Tb_EmpAUTESP.AsString;
  rlheader_listas.Caption                     := mListas;



  rlfooter_empresa.Caption    := DM1.Tb_EmpRAZAO.AsString;
  rlfooter_periodo.Caption    :=fDtEncerramento;


  rlfooter_razaoSocial.Caption:= DM1.Tb_EmpRAZAO.AsString;
  rlfooter_endereco.Caption   := dm1.Tb_EmpENDERECO.AsString+' - '+dm1.Tb_EmpBAIRRO.AsString;
  rlfooter_fonefax.Caption    := dm1.Tb_EmpFONE.AsString+' - '+dm1.Tb_EmpFAX.AsString;
  rlfooter_cidade.Caption     := dm1.Tb_EmpCIDADE.AsString+' - '+dm1.Tb_EmpUF.AsString;

  rlfooter_cnpj.Caption       := FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value);
  rlfooter_ie.Caption                   := DM1.Tb_EmpINSCRICAO.Value;
  rlfooter_representante_legal.Caption  := DM1.Tb_EmpDIRETOR.Value;
  rlfooter_resp_tecnico.Caption         := DM1.Tb_EmpRESPONS.Value;
  rlfooter_crf.Caption                        := DM1.Tb_EmpCERTREG.AsString;
  rlfooter_autorizacao_funcionamento.Caption  := DM1.Tb_EmpAUTFUNC.AsString;
  rlfooter_alvfunc.Caption                    := DM1.Tb_EmpALVFUNC.AsString;
  rlfooter_autorizacao_especial.Caption       := DM1.Tb_EmpAUTESP.AsString;
  rlfooter_listas.Caption                     := mListas;


  {

form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);

form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);



                             lindomar
}
  Query1.First; 
  if CB_TERMOS.Checked then
     begin
     RLReport_termo_abertura.NextReport:=RLReport1_encerramento;
     RLReport1_encerramento.NextReport:=rl_modelo03;
     RLReport_termo_abertura.PreviewModal;
     end
  else

     begin
     RLReport_termo_abertura.NextReport:=nil;
     RLReport1_encerramento.NextReport:=nil;

     rl_modelo03.PreviewModal;
     end;

//  RLReport_termo_abertura.PreviewModal;
//  rl_modelo03.PreviewModal;
  end
else
   FemitirMod03(0);

//   FemitirMod01(0);
//   }
end;

Function TFrm_AMVS.Famvscab(mtipo: Integer): Boolean;
begin
form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
form_impres_amvs.RDprint1.ImpF(01,01,insere2(dm1.Tb_EmpRAZAO.Value+' . PERIODO '+Frm_AMVS.MDT1.Text+' a '+Frm_AMVS.MDT2.Text+'.',' ',120)+'Pagina: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
form_impres_amvs.RDprint1.ImpF(02,01,'LISTAS: ' +mListas,mreduz);
form_impres_amvs.RDPRINT1.ImpF(03,01,insere('-','-',136),mreduz);

//   form_impres_amvs.RDprint1.ImpF(01,01,'DEMONSTRATIVO DE MOVIMENTO DE PSICOTROPICOS. PERIODO '+Frm_AMVS.MDT1.Text+' a '+Frm_AMVS.MDT2.Text+Insere(' ',' ',44)+'Pagina: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
//   form_impres_amvs.RDPRINT1.ImpF(02,01,insere('=','=',132),mreduz);

//   form_impres_amvs.RDprint1.ImpF(01,01,'DEMONSTRATIVO DE MOVIMENTO DE PSICOTROPICOS. PERIODO '+Frm_AMVS.MDT1.Text+' a '+Frm_AMVS.MDT2.Text+Insere(' ',' ',44)+'Pagina: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
//   form_impres_amvs.RDPRINT1.ImpF(02,01,insere('=','=',132),mreduz);
   form_impres_amvs.mlin:=3;
   result:=true;
end;
Function TFrm_AMVS.Famvsccl(mtipo: Integer): Boolean;
begin
if (mtipo=2) or (mCodProA<>Frm_AMVS.Query1P2CODPRO.Value) then
   begin
   form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',136),mreduz);
{
   if Frm_AMVS.CB_INICIALCALC.Checked then
      msaldo:=fSaldoProdutoRetroativo(0, Frm_AMVS.Query1P2CODPRO.AsFloat,'',mDataIni,mDataFin)
//      msaldo:=Frm_AMVS.fEstoqueInicial(Frm_AMVS.Query1P2CODPRO.AsFloat,mDataFin)
   else
      msaldo:=Frm_AMVS.Query1ESTINI.Value;
}
   mCodProA:=Frm_AMVS.Query1P2CODPRO.Value;
   end;

form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2('Produto: '
                        +FormatFloat('000000',Frm_AMVS.Query1P2CODPRO.Value)
                        +'-'+Frm_AMVS.Query1PDNOME.Value+' '
                        +Frm_AMVS.Query1PDMARCA.Value,' ',80),mreduz);
flcadPgen(0,0,Frm_AMVS.Query1P2CODPRO.AsString);
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,45,' Substancia: '+Insere2(Copy(DM1.Tb_PGennomedcb.Value,1,23),' ',23)
                   +' Codigo: '+Insere2(FormatMaskText('0000.00-A;0;',DM1.Tb_PGenPGCODDCB.Value),' ',9),
                   mreduz);
DM1.Tb_PGen.Next;
while not DM1.Tb_PGen.Eof do
   begin
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,45,
                   Insere2(FormatMaskText('0000.00-A;0;',DM1.Tb_PGenPGCODDCB.Value),' ',9)+' '
                   +Insere2(Copy(DM1.Tb_PGennomedcb.Value,1,23),' ',23),
                   mreduz);
   DM1.Tb_Pgen.Next;
   if not DM1.Tb_PGen.Eof then
      begin
      if form_impres_amvs.mlin>57 then
         begin
         form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
         form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',136),mreduz);
         form_impres_amvs.RDprint1.Novapagina;
         famvscab(1);
         famvsccl(1);
         form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
         end;
      end;

   end;
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
{
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'Estoque Inicial: '+
                      iif(Frm_AMVS.CB_INICIALCALC.Checked,
                      FloatToStr(fSaldoProdutoRetroativo(0, Frm_AMVS.Query1P2CODPRO.AsFloat,'',mDataIni,mDataFin))
                      ,Frm_AMVS.Query1ESTINI.AsString
                      ),mreduz);
}
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'Dt. Mov.   Razao Social                              N Fisc Dt.Emissao ------Lote------ Entrada   Saida  Perdas Estoque --Observacoes--',mreduz);
{

Dt. Mov.   Razao Social                             Nome de Fantasia                    N Fisc Dt.Emissao Entrada  Saida Perdas Estoque Obs.
Dt. Mov.   Razao Social                              N Fisc Dt.Emissao ------Lote------ Entrada   Saida  Perdas Estoque --Obeservacoes--
05/05/2007 12345678901234567890123456789012345678901 000000 10/06/2000 1234567890123456 zzz.zzz zzz.zzz zzz.zzz zzz.zzz
}

end;

procedure TFrm_AMVS.bbAnvisaClick(Sender: TObject);
begin
   Application.CreateForm(TFrm_ANVISA, Frm_ANVISA);
   Frm_ANVISA.ShowModal;
   freeandnil(frm_anvisa);
end;

procedure TFrm_AMVS.Query1CalcFields(DataSet: TDataSet);
var
   mdia, mmes, mano: word;
   x: Integer;
begin
if ((Query1PDPRZVAL.Value>0) and (not Query1P2DTVCTO.IsNull)) then
   begin
   DecodeDate(Query1P2DTVCTO.Value,mano,mmes,mdia);
   for x:=1 to (Query1PDPRZVAL.AsInteger) do
      begin
      if mmes=1 then
         begin
         mmes:=12;
         mano:=mano-1;
         end
      else mmes:=mmes-1;
      end;
   Query1DtFabri.Value:='01'+'/'+FormatFloat('00',mmes)+'/'+FormatFloat('0000',mano);
   end
else
  begin
  Query1DtFabri.Value:='';
  end;
Query1endercomp.AsString:=Query1CRAZAO.AsString+' - '+Query1CLOG.AsString+' '
                         +Query1CBAIRRO.AsString+' '
                         +Query1CCIDADE.AsString+'-'+Query1CUF.AsString;
dm1.Query1.Close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add('select * from CADPGEN where PGCODPRO=0'+Query1P2CODPRO.AsString);
try
   dm1.Query1.Open;
except
   dm1.Query1.sql.savetofile(mpastatemp + 'SQL.txt');
   end;
Query1coddcb.Value:='';
Query1nomdcb.Value:='';
DM1.Query1.First;

if DM1.Query1.IsEmpty then
   begin
   Query1coddcb.Value:='.';
   Query1nomdcb.Value:='.';
   end;

while not dm1.Query1.Eof do
  begin
  Query1coddcb.AsString:=  Query1coddcb.AsString+DM1.Query1.FieldByName('PGCODDCB').AsString+chr(13);
  if Length(dm1.Query1.FieldByName('PGCODDCB').AsString)>1 then
    begin
    dm1.Query2.Close;
    dm1.Query2.SQL.Clear;
    dm1.Query2.SQL.Add('select CGNOME from CADGEN where CGCODDCB=:CODDCB');
    dm1.Query2.ParamByName('CODDCB').AsString:=dm1.Query1.FieldByName('PGCODDCB').AsString;
    try
      dm1.Query2.Open;
    except
      dm1.Query2.sql.savetofile(mpastatemp + 'SQL.txt');

      end;
    while not dm1.Query2.Eof do
      begin
      Query1nomdcb.AsString:=Query1nomdcb.AsString+dm1.Query2.FieldByName('CGNOME').AsString+chr(13);
      dm1.Query2.Next;
      end;
    end;
    dm1.Query1.Next;
  end;

end;
function TFrm_AMVS.FNumeroDoLivro(pAnoMes: String; pNumeroLivro: String; pDataLivro: TDateTime): Integer;

var
mDataOrigem: TDateTime;
mQtdMeses: integer;
begin
try
   mDataOrigem:=StrToDateTime('01/'+copy(pAnoMes,5,2)+'/'+copy(pAnoMes,1,4)) ;
except
   mDataOrigem:=date;
   end;


mQtdMeses := MonthsBetween(pDataLivro,mDataOrigem);
if mDataOrigem>pDataLivro then
   mQtdMeses:=mQtdMeses*-1;
result := mQtdMeses+valint(pNumeroLivro);



end;



procedure TFrm_AMVS.FormCreate(Sender: TObject);
var
dia,mes,ano : Word;
x: Integer;

  n: Integer;
  nivel  : TNivPro;



begin
if (codusr<>1111) then
   begin
   tsconfiguracao.Visible := false;
   tsAbertura.Visible := false;
   tsTermoEncerramento.Visible := false;
   tsConfiguracao.Visible:= false;
   end;
cb_sql.Visible := codusr=1111;

cds_termo.CreateDataSet;
cds_termo.Open;
cds_termo.Append;
cds_termochave_id.value:=1;
cds_termo.post;
Query1P1DATANF.DisplayFormat  := fdt2;
Query1P1DATVIS.DisplayFormat  := fdt2;
Query1P1DATAMOV.DisplayFormat := fdt2;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if codusr=1111 then
   begin
   cb_InibirNF_Complementar.Visible:=True;
   tsConfigMaster.Visible := true;
   end
else
   begin
   tsConfigMaster.Visible := true;
   cb_InibirNF_Complementar.Visible:=False;
   Label8.Visible:=false;
   Label7.Visible:=false;
   Label10.Visible:=false;
   Label11.Visible:=false;
   edt_totent.Visible:=false;
   edt_totsai.Visible:=false;
   edt_saldo.Visible:=false;

   end;
{
if codusr=1111  then
   tsmodelo03.TabVisible:=true
else}
   tsmodelo03.TabVisible:=false;
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');

//PageControl1.TabIndex:=0;
DecodeDate(date, ano,mes,dia);
if dia<28 then
   begin
   mes:=mes-1;
   if mes<1 then
      begin
      mes:=12;
      ano:=ano-1;
      end;
   end;
mdt1.Text:='01/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano);
mdt2.Text:=FormatDateTime(fdt2, fdatafinal(1,StrToDate(mdt1.Text)));



edt_datini_abert.Date := mdt1.Date;

edt_datfin_abert.Date := mdt2.Date;


if flfilpad(0,'_AMVS_NUMLIVRO','') then
   begin
   edt_numlivro.text := inttostr(FNumeroDoLivro(DM4.Tb_FilPad2FPCOMP.AsString,DM4.Tb_FilPad2FPVALOR.AsString,mdt1.date));
   end
else
   edt_numlivro.text := '1';


DM1.Query6.Close;
DM1.Query6.SQL.Clear;
DM1.Query6.SQL.Add('SELECT CCODCON,CNOME FROM CADCON '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' where CCODEMP=0'+IntToStr(codemp))
                  +' order by CNOME ');
DM1.Query6.Open;
RG_CODCON.Items.Clear;
While not DM1.Query6.Eof do
   begin
   RG_CODCON.Items.Add(DM1.Query6.fieldbyName('CNOME').AsString);
   DM1.Query6.Next;
   end;
RG_CODCON.Items.Add('Todos');


if flfilpad(0,'_AMVS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MODELO',[]) then
      CB_MODELO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RGTIPO',[]) then
      RGTIPO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);

   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_CODCON',[]) then
      begin
      mcinst:='';
      for x:=1 to length(DM4.Tb_FilPad2FPVALOR.Value) do
         begin
         if DM4.Tb_FilPad2FPVALOR.Value[x]=',' then
            begin
            RG_CODCON.Checked[ValInt(mcinst)]:=true;
            mcinst:='';
            end
         else
            mcinst:=mcinst+DM4.Tb_FilPad2FPVALOR.Value[x];
         end;
      if trim(mcinst)<>'' then
         RG_CODCON.Checked[ValInt(mcinst)]:=true;
      end
   else
      begin
      RG_CODCON.Checked[RG_CODCON.Items.Count-1]:=true;
      end;
   end
else
   RG_CODCON.Checked[RG_CODCON.Items.Count-1]:=true;

RG_CODCON.ItemIndex:=RG_CODCON.Items.Count-1;
RG_CODCONClick(self);
{
if flfilpad(0,'_AMVS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_INICIALCALC',[]) then
      CB_INICIALCALC.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;
}


if flfilpad(-3,'_AMVS','') then
   cb_termo_final.Checked :=  DM4.Tb_FilPad2FPVALOR.AsString='true';

   

if flfilpad(-1,'_AMVS','') then
   begin


   if DM4.Tb_FilPad2.Locate('FPCOMP','memo_cab_ent',[]) then
      Memo_cab_ent.Lines.Text := DM4.Tb_FilPad2FPVALOR_MEMO.AsString;


   if DM4.Tb_FilPad2.Locate('FPCOMP','memo_cab_sai',[]) then
      Memo_cab_sai.Lines.Text := DM4.Tb_FilPad2FPVALOR_MEMO.AsString;
{


fDeletaPadroes(-1,'_AMVS','');
fGravaPadroeMemos(-1,'memo_cab_ent'         ,'text'  ,'_AMVS',Memo_cab_ent.Lines.Text);
fGravaPadroeMemos(-1,'memo_cab_sai'         ,'text'  ,'_AMVS',Memo_cab_sai.Lines.Text);


      txt_cabEntlinha01.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','txt_cabentlinha02',[]) then
      txt_cabEntlinha02.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','txt_cabentlinha03',[]) then
      txt_cabEntlinha03.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   if DM4.Tb_FilPad2.Locate('FPCOMP','txt_cabsailinha01',[]) then
      txt_cabSailinha01.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','txt_cabsailinha02',[]) then
      txt_cabsailinha02.Text:=DM4.Tb_FilPad2FPVALOR.Value;
   if DM4.Tb_FilPad2.Locate('FPCOMP','txt_cabsailinha03',[]) then
      txt_cabsailinha03.Text:=DM4.Tb_FilPad2FPVALOR.Value;
 }
   end;


CB_MODELOClick(self);
{
if codusr=1111 then
   begin
   CB_INICIALCALC.Visible:=true;
   sb_SalvarPadrao2.Visible:=true;
   end
else
   begin
   CB_INICIALCALC.Visible:=false;
   sb_SalvarPadrao2.Visible:=false;
   end;
}
fLerCadLog;

end;

procedure TFrm_AMVS.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AMVS.RG_CODCONClick(Sender: TObject);
begin
RG_CODCON:=Valida_CheckList(RG_CODCON);
if Query1.Active then
   Query1.Close;

end;

procedure TFrm_AMVS.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDatetime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
if flfilpad(0,'_AMVS_NUMLIVRO','') then
   begin
   edt_numlivro.text := inttostr(FNumeroDoLivro(DM4.Tb_FilPad2FPCOMP.AsString,DM4.Tb_FilPad2FPVALOR.AsString,mdt1.date));
   end
else
   edt_numlivro.text := '1';
   
if Query1.Active then
   Query1.Close;
end;

procedure TFrm_AMVS.MDT2Exit(Sender: TObject);
begin
if trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDatetime(fdt2, StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;
if Query1.Active then
   Query1.Close;

end;

procedure tFrm_AMVS.fImprimirInfCab(pLinhaIni: integer; pMemo: tMemo; pFontNegrito: boolean);

var
x_lin: integer;
begin
if (pMemo.Lines.Count>4) then
   pLinhaIni:=pLinhaIni-3;
for x_lin:=0 to pMemo.lines.count do
   begin
   if pFontNegrito then
      form_impres_amvs.Rdprint1.ImpF(pLinhaIni,01,Centra(pMemo.Lines[x_lin],' ',80),mnormal+mneg)
   else
      form_impres_amvs.Rdprint1.ImpF(pLinhaIni,01,Centra(pMemo.Lines[x_lin],' ',80),mnormal);

   pLinhaini:=pLinhaIni+1;
   end;

end;




function TFrm_AMVS.FemitirMod02(ptipo: Integer): Boolean;

begin

if not Query1.Active then
   begin
   fmensagem('  necess rio aplicar a sele  o!',0,['0'],0);
   result:=false;
   Exit;
   end;
testeform := TFrm_AMVS(FindGlobalComponent('form_impres_amvs'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_amvs);

form_impres_amvs.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

form_impres_amvs.mpag:=1;
form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);
//form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',136),mreduz);
if CB_TITNEG.Checked then
   begin
   form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mneg);
   form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg);
   end
else
   begin
   form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mnormal);
   form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);

   end;
form_impres_amvs.Rdprint1.ImpF(10,01,Centra('ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIRA PARA:',' ',136),mreduz);
if RGTIPO.ItemIndex=0 then
   begin
   fImprimirInfCab(15,memo_cab_sai,true);
   end
else
   begin
   fImprimirInfCab(15,memo_cab_ent,true);
   end;

form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, edt_datini_abert.date)
                    +' - ' + Formatdatetime(fdt2, edt_datfin_abert.date)
                     ,mreduz);


form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);

form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);

//form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________       Data                                                     _________________________',mreduz);
//form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                      ASSINATURA R.T.    ',mreduz);



form_impres_amvs.Rdprint1.Novapagina;
form_impres_amvs.mlin:=0;
mCodProA:=0;
mtotal :=0;
Query1.First;


While not Query1.Eof do
   begin
   if form_impres_amvs.mlin=0 then
      begin
      famvscab(1);
      famvsccl(1);
      end;
   if mCodProA<>Query1P2CODPRO.Value then
      begin
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      famvsccl(2);
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      end;
   mPerdas:=0;

   if Query1TIPOMOV.Value=0 then // entradaa
      begin
      msaida:=0;
      mentrada:=Query1P2QTD.Value;
      msaldo:=msaldo+Query1P2QTD.Value;
      mcinst4:='Entrada';
      end
   else if Query1TIPOMOV.Value=2 then // eperdas
      begin
      msaida  :=0;
      mentrada:=0;
      mperdas :=Query1P2QTD.Value;
      msaldo:=msaldo-Query1P2QTD.Value;
      mcinst4:='Perdas';
      end
   else
      begin
      msaida:=Query1P2QTD.Value;
      mentrada:=0;
      msaldo:=msaldo-Query1P2QTD.Value;
      mcinst4:='Saida';
      end;
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;

   form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,FormatDatetime(fdt2, Query1P1DATAMOV.Value)+' '
                           +insere2(Query1CRAZAO.Value,' ',41)+' '
                           +insere(Formatfloat('000000', Query1P1NUMNF.Value),' ',06)+' '
                           +Insere(FormatDatetime(fdt2, Query1P1DATAMOV.Value),' ',10)
                           +' '
                           +centra(Query1P2LOTE.Value,' ',16)+' '
                           +insere(Formatfloat(mcasqtd, mEntrada),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, mSaida),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, mPerdas),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, msaldo),' ',07)+' '
                           +mcinst4,mreduz);




   Query1.Next;
   if not Query1.Eof then
      begin
      if form_impres_amvs.mlin>57 then
         begin
         form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
         form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',136),mreduz);
         form_impres_amvs.RDprint1.Novapagina;
         form_impres_amvs.mlin:=0;
         end;
      end;
   end;
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,02,insere('=','=',136),mreduz);
//form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
//form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,02,'-Quantidades...'+FloatToStr(mtotal),mreduz);
form_impres_amvs.RDprint1.Novapagina;
form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);
//form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',136),mreduz);
if CB_TITNEG.Checked then
   begin
   form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mneg);
   form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg);
   end
else
   begin
   form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mnormal);
   form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);

   end;

form_impres_amvs.Rdprint1.ImpF(10,01,Centra('ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIU PARA:',' ',136),mreduz);
{if RGTIPO.ItemIndex=0 then
   form_impres_amvs.Rdprint1.ImpF(15,01,Centra('RELACAO MENSAL DE VENDAS DE MEDICAMENTOS',' ',80),mneg)
else
   form_impres_amvs.Rdprint1.ImpF(15,01,Centra('RELACAO MENSAL DE ENTRADAS DE MEDICAMENTOS',' ',80),mneg);
}

if RGTIPO.ItemIndex=0 then
   begin
   fImprimirInfCab(15,memo_cab_sai,true);

   end
else
   begin
   fImprimirInfCab(15,memo_cab_sai,true);

   end;

//form_impres_amvs.Rdprint1.ImpF(16,01,Centra('SUJEITO A CONTROLE ESPECIAL     ',' ',80),mneg);
form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, MDT1.date)
                    +' - ' + Formatdatetime(fdt2, MDT2.date)
                     ,mreduz);
form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);

form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);

//form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________       Data                                                     _________________________',mreduz);
//form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                      ASSINATURA R.T.    ',mreduz);


iF form_impres_amvs.RDprint1.Setup then
   form_impres_amvs.RDprint1.Fechar;
form_impres_amvs.free;
form_impres_amvs:=nil;   
//   Frm_Agde.Free;


end;

procedure TFrm_AMVS.CB_MODELOClick(Sender: TObject);
begin
if query1.Active then
   Query1.Close;
if (CB_MODELO.ItemIndex=0) then
   begin
   RGTIPO.Items.Clear;
   RGTIPO.Items.Add('Saidas');
   RGTIPO.Items.Add('Entradas');
   RGTIPO.Items.Add('Ambas');
   RGTIPO.ItemIndex:=2;
   RGTIPO.Visible:=false;
   lbl_ordem.Visible:=false;
   CB_ORDEM.Visible :=false;
   end
else if (CB_MODELO.ItemIndex=1)  then
   begin
   RGTIPO.Items.Clear;
   RGTIPO.Items.Add('Saidas');
   RGTIPO.Items.Add('Entradas');
//   RGTIPO.Items.Add('Ambas');
   RGTIPO.Visible:=true;
   RGTIPO.ItemIndex:=0;
   lbl_ordem.Visible:=true;
   CB_ORDEM.Visible :=true;
   end
else if (CB_MODELO.ItemIndex=2) then
   begin
   RGTIPO.Items.Clear;
   RGTIPO.Items.Add('Saidas');
   RGTIPO.Items.Add('Entradas');
//   RGTIPO.Items.Add('Ambas');
   RGTIPO.Visible:=true;
   RGTIPO.ItemIndex:=0;
   lbl_ordem.Visible:=true;
   CB_ORDEM.Visible :=true;
   end
else if (CB_MODELO.ItemIndex=3) then
   begin
   RGTIPO.Items.Clear;
   RGTIPO.Items.Add('Saidas');
   RGTIPO.Items.Add('Entradas');
   RGTIPO.Items.Add('Ambas');
   RGTIPO.Visible:=true;
   RGTIPO.ItemIndex:=2;
   lbl_ordem.Visible:=true;
   CB_ORDEM.Visible :=true;
   end;

end;

procedure TFrm_AMVS.sb_SalvarPadraoClick(Sender: TObject);
var
x: Integer;
begin
fDeletaPadroes(0,'_AMVS','');
fGravaPadroes(0,'RGTIPO'         ,'itemindex'  ,'_AMVS',IntToStr(RGTIPO.ItemIndex));
fGravaPadroes(0,'CB_ORDEM'       ,'itemindex'  ,'_AMVS',IntToStr(CB_ORDEM.ItemIndex));
fGravaPadroes(0,'CB_MODELO'      ,'itemindex'  ,'_AMVS',IntToStr(CB_MODELO.ItemIndex));
mcinst2:='';
for x:=0 to RG_CODCON.Items.Count-1 do
   begin
   if RG_CODCON.Checked[x] then
      mcinst2:=mcinst2+InttoStr(x)+',';
   end;
if trim(mcinst2)<>'' then
   mcinst2:=copy(mcinst2,1,length(mcinst2)-1);
fGravaPadroes(0,'RG_CODCON'          ,'itemindex' ,'_AMVS',mcinst2);

Fmensagem('Gravado',0,['0'],0);

end;

Function TFrm_AMVS.FamvscabMod01(mtipo: Integer): Boolean;
begin
   form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
   form_impres_amvs.RDprint1.ImpF(01,01,'DEMONSTRATIVO DE MOVIMENTO DE PSICOTROPICOS. PERIODO '+Frm_AMVS.MDT1.Text+' a '+Frm_AMVS.MDT2.Text+Insere(' ',' ',44)+'Pagina: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
   form_impres_amvs.RDPRINT1.ImpF(02,01,insere('=','=',132),mreduz);
   form_impres_amvs.mlin:=2;
   result:=true;
end;
Function TFrm_AMVS.FamvscclMod01(mtipo: Integer): Boolean;
begin
   if mtipo=2 then
      form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',132),mreduz);
   mCodCliA:=Frm_AMVS.Query1CCODCLI.Value;
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   if Frm_AMVS.RGTIPO.ItemIndex=0 then
      begin
      if Frm_AMVS.Query1CCNPJ.AsString='0' then
         form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'DADOS DO COMPRADOR....>>> RAZAO SOCIAL..: '+insere2(Frm_AMVS.Query1CRAZAO.Value,' ',40)+'           CNPJ....: '+Insere2(FormatFloat('000"."000"."000-00',ValFloat(Frm_AMVS.Query1CCPF.AsString)),'0',18),mreduz)
      else
         form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'DADOS DO COMPRADOR....>>> RAZAO SOCIAL..: '+insere2(Frm_AMVS.Query1CRAZAO.Value,' ',40)+'           CNPJ....: '+Insere2(FormatFloat('00"."000"."000/0000-00',ValFloat(Frm_AMVS.Query1CCNPJ.AsString)),'0',18),mreduz);
      end
   else
      form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'DADOS DO VENDEDOR.....>>> RAZAO SOCIAL..: '+insere2(Frm_AMVS.Query1CRAZAO.Value,' ',40)+'           CNPJ....: '+Insere2(FormatFloat('00"."000"."000/0000-00',StrToFloat(Frm_AMVS.Query1CCNPJ.AsString)),'0',18),mreduz);
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   form_impres_amvs.RdPrint1.Impf(form_impres_amvs.mlin,01,'                          ENDERECO......: '+insere2(Frm_AMVS.Query1CLOG.Value+' '+Frm_AMVS.Query1CBAIRRO.Value,' ',50)+' CIDADE..: '+insere2(Frm_AMVS.Query1CCIDADE.Value,' ',20)+'  UF: '+Frm_AMVS.Query1CUF.Value,mreduz);
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('-','-',132),mreduz);
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   form_impres_amvs.RDPRINT1.Impf(form_impres_amvs.mlin,01,'NOME DO MEDICAMENTO                      UND CODIGO    NOME                       QTD LOTE       NOTA   DATA DE    *---- VISTO ----*',mreduz);
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   form_impres_amvs.RDPRINT1.Impf(form_impres_amvs.mlin,01,'                                             D.C.B.    GENERICO                                  FISCAL EMISSAO    DATA       NUMERO',mreduz);
   result:=true;
end;



function TFrm_AMVS.FemitirMod01(ptipo: Integer): Boolean;
var
mtotal: Real;
begin
testeform := TFrm_AMVS(FindGlobalComponent('form_impres_amvs'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_amvs);
form_impres_amvs.mpag:=0;
form_impres_amvs.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
if CB_TERMOS.Checked then
   begin
   form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
   form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);
//   form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
   form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',132),mreduz);
   if CB_TITNEG.Checked then
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mneg);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg)
      end
   else
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mnormal);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);

      end;

   form_impres_amvs.Rdprint1.ImpF(10,18,'ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIRA PARA:',mreduz);
   if RGTIPO.ItemIndex=0 then
      begin
      fImprimirInfCab(15,memo_cab_sai,true);
      end
   else
      begin
      fImprimirInfCab(15,memo_cab_ent,true);
      end;


   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, edt_datini_abert.date)
                    +' - ' + Formatdatetime(fdt2, edt_datfin_abert.date)
                     ,mreduz);

   //   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+NMes(StrToDate(MDT1.Text))+'/'+FormatDateTime('yyyy',StrToDate(MDT1.Text)),mreduz);


   form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
   form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
   form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);

   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);

//   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________       Data                                                     _________________________',mreduz);
//   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                      ASSINATURA R.T.    ',mreduz);
   form_impres_amvs.Rdprint1.Novapagina;
   end;

// onde era o corpo




if CB_TERMOS.Checked then
   begin
   form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
   if CB_TITNEG.Checked then
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mneg);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg)

      end
   else
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mnormal);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);

      end;

   form_impres_amvs.Rdprint1.ImpF(10,08,'ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIU PARA:',mreduz);
   {
   if RGTIPO.ItemIndex=0 then
      form_impres_amvs.Rdprint1.ImpF(15,10,'RELACAO MENSAL DE VENDAS DE MEDICAMENTOS',mneg)
   else
      form_impres_amvs.Rdprint1.ImpF(15,10,'RELACAO MENSAL DE ENTRADAS DE MEDICAMENTOS',mneg);
   }

   if RGTIPO.ItemIndex=0 then
      begin
      fImprimirInfCab(15,memo_cab_sai,true);
      end
   else
      begin
      fImprimirInfCab(15,memo_cab_ent,true);
      end;

   //form_impres_amvs.Rdprint1.ImpF(16,10,'        SUJEITO A CONTROLE ESPECIAL     ',mneg);


   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, MDT1.date)
                    +' - ' + Formatdatetime(fdt2, MDT2.date)
                     ,mreduz);


//   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, MDT1.date+' - ' + Formatdatetime(fd2, MDT2.date);

//   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+NMes(StrToDate(MDT1.Text))+'/'+FormatDateTime('yyyy',StrToDate(MDT1.Text)),mreduz);
   form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
   form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
   form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);

   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);

//   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________       Data                                                     _________________________',mreduz);
//   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                      ASSINATURA R.T.    ',mreduz);

   form_impres_amvs.RDprint1.Novapagina;


   end;

// novo corpo

form_impres_amvs.mlin:=0;
mCodCliA:=0;
mtotal :=0;
Query1.First;
if query1.IsEmpty then
   begin
   famvscabMod01(1);
   famvscclMod01(1);
   end;

While not Query1.Eof do
   begin
   mtotal:=mtotal+Query1P2QTD.Value;

   if form_impres_amvs.mlin=0 then
      begin
      famvscabMod01(1);
      famvscclMod01(1);
      end;
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   if form_impres_amvs.mlin>57 then
      begin
      form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',132),mreduz);
      form_impres_amvs.RDprint1.Novapagina;
      famvscabMod01(1);
      famvscclMod01(1);
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      end;
   if mCodCliA<>Query1CCODCLI.Value then
      begin
      famvscclMod01(2);
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      end;
   flcadPgen(0,0,Query1P2CODPRO.AsString);
   form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2(Query1PDNOME.Value,' ',40)+' '
                   +insere2(Query1PDUND.Value,' ',3)+' '
                   +Insere2(FormatMaskText('0000.00-A;0;',DM1.Tb_PGenPGCODDCB.Value),' ',9)+' '
                   +Insere2(Copy(DM1.Tb_PGennomedcb.Value,1,23),' ',23)
                   +Insere(FormatFloat(mcasqtd, Query1P2QTD.Value),' ',7)+' '
                   +Insere2(Query1P2LOTE.Value,' ',10)+' '
                   +FormatFloat('000000',Query1P1NUMNF.Value)+' '
                   +FormatDateTime('dd/mm/YYYY',Query1P1DATANF.Value)+' '
                   +IIF(Query1P1DATVIS.Value>StrToDate('01/01/1900'),
                        FormatDateTime('dd/mm/YYYY',Query1P1DATVIS.Value),'          ')+' '
                   +FormatFloat('#######',ValFloat(Query1P1NUMVIS.Value)),
                   mreduz);
   DM1.Tb_PGen.Next;
   While not DM1.Tb_PGen.Eof do
      begin
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      if form_impres_amvs.mlin>57 then
         begin
         form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',132),mreduz);
         form_impres_amvs.RDprint1.Novapagina;
         famvscabMod01(1);
         famvscclMod01(1);
         form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
         end;
      form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2(' ',' ',44)+' '
                      +Insere2(FormatMaskText('0000.00-A;0;',DM1.Tb_PGenPGCODDCB.Value),' ',9)+' '
                      +Insere2(Copy(DM1.Tb_PGennomedcb.Value,1,23),' ',23),
                      mreduz);
      DM1.Tb_Pgen.Next;
      end;
   Query1.Next;
   end;


form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,02,insere('=','=',132),mreduz);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,02,'-Quantidades...'+FloatToStr(mtotal),mreduz);
//form_impres_amvs.RDprint1.Novapagina;
//form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);
//form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
//form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',132),mreduz);



iF form_impres_amvs.RDprint1.Setup then
   form_impres_amvs.RDprint1.Fechar;
form_impres_amvs.free;
form_impres_amvs:=nil;
result:=true;
end;

procedure TFrm_AMVS.bbFecharClick(Sender: TObject);
begin
close;
end;


function fDataEstoqueInicial(pData: TDateTime): tDateTime;
var
{
Esta Fun  o Calcula o Estoque inicial
Forma de se calcular:  Estoque Atual +
                      ( (Saidas nao Emitidas - Entradas nao Emitidas) de Propria Emissao)
                      + ( Saidas do Periodo - propria emissao)
                      + (perdas do periodo - Ajuste de Estoque)
                      - (Entradas do periodo pedido de compra)


}
msaldo: Real;
mVendaNCF: Real;
begin
end;



procedure TFrm_AMVS.sbSavarPadrao2Click(Sender: TObject);
begin

fDeletaPadroes(-1,'_AMVS','');
fGravaPadroesMemo(-1,'memo_cab_ent'         ,'text'  ,'_AMVS',Memo_cab_ent.Lines.Text);
fGravaPadroesMemo(-1,'memo_cab_sai'         ,'text'  ,'_AMVS',Memo_cab_sai.Lines.Text);


{
fDeletaPadroes(-1,'_AMVS','');
fGravaPadroes(-1,'txt_cabentlinha01'         ,'text'  ,'_AMVS',txt_cabEntlinha01.Text);
fGravaPadroes(-1,'txt_cabentlinha02'         ,'text'  ,'_AMVS',txt_cabEntlinha02.Text);
fGravaPadroes(-1,'txt_cabentlinha03'         ,'text'  ,'_AMVS',txt_cabEntlinha03.Text);


fGravaPadroes(-1,'txt_cabsailinha01'         ,'text'  ,'_AMVS',txt_cabSailinha01.Text);
fGravaPadroes(-1,'txt_cabsailinha02'         ,'text'  ,'_AMVS',txt_cabSailinha02.Text);
fGravaPadroes(-1,'txt_cabsailinha03'         ,'text'  ,'_AMVS',txt_cabSailinha03.Text);
 }
fmensagem('Gravado!',0,['0'],0);
end;

procedure TFrm_AMVS.CODPROExit(Sender: TObject);
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

procedure TFrm_AMVS.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_AMVS.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);
if Query1.Active then
   Query1.Close;

end;


function TFrm_AMVS.FemitirMod03(ptipo: Integer): Boolean;

   procedure fEmitirTermoEncerramento(Compagina: boolean);
   begin

   if cb_termo_final.checked then
      form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz)
   else
      form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);

   form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',136),mreduz);
   if CB_TITNEG.Checked then
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mneg);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg);

      end
   else
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mnormal);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);

      end;
   form_impres_amvs.Rdprint1.ImpF(10,01,Centra('ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIU PARA:',' ',136),mreduz);



   if RGTIPO.ItemIndex=0 then
      begin
      fImprimirInfCab(15,memo_cab_sai,true);
      end
   else
      begin
      fImprimirInfCab(15,memo_cab_ent,true);
      end;


   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, MDT1.date)
                    +' - ' + Formatdatetime(fdt2, MDT2.date)
                     ,mreduz);



   form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
   form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
   form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);

   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);
   end;

begin

if not MEM_NOTLOTES.Active then
   begin
   fmensagem('  necess rio aplicar a sele  o!',0,['0'],0);
   result:=false;
   Exit;

   end;
testeform := TFrm_AMVS(FindGlobalComponent('form_impres_amvs'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_amvs);

form_impres_amvs.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
{
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
|          |          |                                   |         M O V I M E N T O        |           |   Assinatura do  |            OBSERVACAO            |
| D A T A  |  EMISSAO |      H I S T O R I C O            |----------------------------------|   Estoque |    Responsavel   |                                  |
|          |  ORIGEM  |                                   |  Entrada  |   Saida   |  Perdas  |           |     Tecnico      |           NOTAS E LOTES          |
|10/09/2009|10/09/2009|PANARELLO DISTRIB. FARMACEUTIC     |12345678901|12345678901|1234567801|12345678901|                  |   NF: 0221363 lt: 1390361234567  |
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
}

form_impres_amvs.mpag:=0;
if CB_TERMOS.Checked then
   begin
   form_impres_amvs.mpag:=1;
   if cb_termo_final.checked then
      form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz)
   else
      form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);

   form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',136),mreduz);
   if CB_TITNEG.Checked then
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mneg);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg)

      end
   else
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mnormal);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);

      end;
   form_impres_amvs.Rdprint1.ImpF(10,01,Centra('ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIRA PARA:',' ',136),mreduz);
   if RGTIPO.ItemIndex=0 then
      begin
      if CB_TITNEG.Checked then
         begin
         fImprimirInfCab(15,memo_cab_sai,true);

         end
      else
         begin
         fImprimirInfCab(15,memo_cab_sai,false);
         end;

      end
   else
      begin
      if CB_TITNEG.Checked then
         begin
         fImprimirInfCab(15,memo_cab_sai,true);
         end
      else
         begin
         fImprimirInfCab(15,memo_cab_ent,true);
         end;

      end;

   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, edt_datini_abert.date)
                    +' - ' + Formatdatetime(fdt2, edt_datfin_abert.date)
                     ,mreduz);

//   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+NMes(StrToDate(MDT1.Text))+'/'+FormatDateTime('yyyy',StrToDate(MDT1.Text)),mreduz);
   form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
   form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
   form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);

   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);

//   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________       Data                                                     _________________________',mreduz);
//   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                      ASSINATURA R.T.    ',mreduz);
   form_impres_amvs.Rdprint1.Novapagina;
   end;

   //form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
//form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,02,'-Quantidades...'+FloatToStr(mtotal),mreduz);
if (CB_TERMOS.Checked) and (cb_termo_final.Checked=false) then
   begin
//   form_impres_amvs.RDprint1.Novapagina;
   fEmitirTermoEncerramento(false);
   form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
   form_impres_amvs.Rdprint1.Novapagina;


   end;



form_impres_amvs.mlin:=0;
mCodProA:=0;
mtotal :=0;
MEM_NOTLOTES.First;
if MEM_NOTLOTES.isEmpty then
   FMod03Cab(0);

MEM_NOTLOTES.SortOnFields('NOMPRO;CODPRO;DATANF');


MEM_NOTLOTES.First;

While not MEM_NOTLOTES.Eof do
   begin
   if form_impres_amvs.mlin=0 then
      begin
      FMod03Cab(0);
      end;
   if mCodProA<>MEM_NOTLOTESCODPRO.Value then
      begin
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+',m20ccp);

      if (CB_SEPPAG.Checked) or (form_impres_amvs.mlin>50)  then
         begin
         form_impres_amvs.RDprint1.Novapagina;
         fmod03Cab(0);
         end
      else
         begin
         form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
         fmod03Cab(1);
         end;

      end;
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   if MEM_NOTLOTESPEDFOR.AsInteger=1 then
      mcinst4:=FormatDatetime(fdt2, MEM_NOTLOTESDATANF.AsDateTime)
   else
      mcinst4:=insere(' ',' ',10);

   form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|'+FormatDatetime(fdt2, MEM_NOTLOTESDATAMOV.AsDateTime)+'|'
                           +mcinst4+'|'+insere2(MEM_NOTLOTESRAZAO_SOC.AsString,' ',35)
                           +'|'+insere(MEM_NOTLOTESENTRADAS.AsString,' ',11)+'|'
                           +insere(MEM_NOTLOTESSAIDAS.AsString,' ',11)+'|'
                           +insere(MEM_NOTLOTESPERDAS.AsString,' ',10)+'|'
                           +insere(MEM_NOTLOTESSALDO_ATU.AsString,' ',11)+'|'
                           +insere2(MEM_NOTLOTESASS_RESP.AsString,' ',18)+'|'
                           +insere2(MEM_NOTLOTESOBSNF.AsString,' ',34)+'|',m20ccp);



{

+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
|          |          |                                   |         M O V I M E N T O        |           |   Assinatura do  |            OBSERVACAO            |
| D A T A  |  EMISSAO |      H I S T O R I C O            |----------------------------------|   Estoque |    Responsavel   |                                  |
|          |  ORIGEM  |                                   |  Entrada  |   Saida   |  Perdas  |           |     Tecnico      |           NOTAS E LOTES          |
|10/09/2009|10/09/2009|PANARELLO DISTRIB. FARMACEUTIC     |12345678901|12345678901|1234567801|12345678901|                  |   NF: 0221363 lt: 1390361234567  |
                       12345678901234567890123456789012345                                                123456789012345678 1234567890123456789012345678901234
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+


   form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,FormatDatetime(fdt2, Query1P1DATAMOV.Value)+' '
                           +insere2(Query1CRAZAO.Value,' ',41)+' '
                           +insere(Formatfloat('000000', Query1P1NUMNF.Value),' ',06)+' '
                           +Insere(FormatDatetime(fdt2, Query1P1DATAMOV.Value),' ',10)
                           +' '
                           +centra(Query1P2LOTE.Value,' ',16)+' '
                           +insere(Formatfloat(mcasqtd, mEntrada),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, mSaida),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, mPerdas),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, msaldo),' ',07)+' '
                           +mcinst4,mreduz);



{
Dt. Mov.   Razao Social                              N Fisc Dt.Emissao ------Lote------ Entrada   Saida  Perdas Estoque --Obeservacoes--
05/05/2007 12345678901234567890123456789012345678901 000000 10/06/2000 1234567890123456 zzz.zzz zzz.zzz zzz.zzz zzz.zzz
}

   MEM_NOTLOTES.Next;
   if not MEM_NOTLOTES.Eof then
      begin
      if form_impres_amvs.mlin>57 then
         begin
         form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
         form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',160),m20ccp);
         form_impres_amvs.RDprint1.Novapagina;
         form_impres_amvs.mlin:=0;
         end;
      end;
   end;



form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',160),m20ccp);

if (CB_TERMOS.Checked) and (cb_termo_final.Checked=true) then
   begin
   form_impres_amvs.RDprint1.Novapagina;
   form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
   fEmitirTermoEncerramento(false);
   end;



iF form_impres_amvs.RDprint1.Setup then
   form_impres_amvs.RDprint1.Fechar;
form_impres_amvs.free;
form_impres_amvs:=nil;
//   Frm_Agde.Free;


end;

Function TFrm_AMVS.FMod03Cab(mtipo: Integer): Boolean;
begin
mCodProA:=Frm_AMVS.MEM_NOTLOTESCODPRO.AsFloat;

if mtipo=1 then
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1
else
   begin
   form_impres_amvs.mlin:=01;
   form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
   end;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2(DM1.Tb_Empcnpj_masc.AsString+' '+DM1.Tb_EmpRAZAO.AsString,' ',140)+' Pagina: '+FormatFloat('###0', form_impres_amvs.mpag),m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2('Periodo: '+fperiodo(0,Frm_AMVS.MDT1.text,Frm_AMVS.MDT2.Text)
                         ,' ',140)+' Emissao: '+FormatDateTime(fdt2, date),m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
//if (not DM1.Tb_PGen.Active) or (DM1.Tb_PGenPGCODPRO.AsFloat<>Frm_AMVS.MEM_NOTLOTESCODPRO.AsFloat) and (Frm_AMVS.MEM_NOTLOTESCODPRO.AsFloat>0) then
   flcadPgen(0,0,iif(Frm_AMVS.MEM_NOTLOTESCODPRO.asfloat=0,'-1',Frm_AMVS.MEM_NOTLOTESCODPRO.AsString));

form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2('Produto: '+Frm_AMVS.MEM_NOTLOTESCODPRO.AsString+' - '+Frm_AMVS.MEM_NOTLOTESNOMPRO.AsString+ ' '+Frm_AMVS.MEM_NOTLOTESUNDPRO.AsString,' ',80)
                        +' DCB: '+DM1.Tb_PGenPGCODDCB.AsString+' - '+DM1.Tb_PGennomedcb.AsString
                         ,m20ccp);
if not DM1.Tb_PGen.IsEmpty then
   begin
   DM1.Tb_PGen.Next;
   While not DM1.Tb_PGen.Eof do
      begin
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2(' ',' ',80)
                              +'      '+DM1.Tb_PGenPGCODDCB.AsString+' - '+DM1.Tb_PGennomedcb.AsString
                               ,m20ccp);
      DM1.Tb_PGen.Next;
      end;
   end;

form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,Centra('FOLHA DO LIVRO DE REGISTRO ESPECIFICOS',' ',160)
                         ,form_impres_amvs.mComp20reduz);

form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|          |          |                                   |         M O V I M E N T O        |           |   Assinatura do  |            OBSERVACAO            |',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'| D A T A  |  EMISSAO |      H I S T O R I C O            |----------------------------------|   Estoque |    Responsavel   |                                  |',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|          |  ORIGEM  |                                   |  Entrada  |   Saida   |  Perdas  |           |     Tecnico      |           NOTAS E LOTES          |',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|          |          |  Saldo Inicial                    |           |           |          |'+insere(Frm_AMVS.MEM_NOTLOTESSALDO_INI.AsString,' ',11)+'|                  |                                  |',m20ccp);

{
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
|          |          |                                   |         M O V I M E N T O        |           |   Assinatura do  |            OBSERVACAO            |
| D A T A  |  EMISSAO |      H I S T O R I C O            |----------------------------------|   Estoque |    Responsavel   |                                  |
|          |  ORIGEM  |                                   |  Entrada  |   Saida   |  Perdas  |           |     Tecnico      |           NOTAS E LOTES          |
|10/09/2009|10/09/2009|PANARELLO DISTRIB. FARMACEUTIC     |12345678901|12345678901|1234567801|12345678901|                  |   NF: 0221363 lt: 1390361234567  |
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+

 }

result:=true;
end;


procedure TFrm_AMVS.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if MEM_NOTLOTESCOLUNA.AsFloat>0 then
   begin
   if Odd(MEM_NOTLOTESCOLUNA.AsInteger) then
      begin
      if (gdSelected in State) or (DBGrid2.SelectedRows.CurrentRowSelected) then
          begin
          DBGrid2.Canvas.Brush.Color := clActiveCaption;
          DBGrid2.Canvas.Font.Color  := clWindow;
          end
       else
          begin
          DBGrid2.Canvas.Font.Color  := clBlack;
          DBGrid2.Canvas.Brush.Color := clMoneyGreen;
          end;
      end
   else
      begin
      if (gdSelected in State) or (DBGrid2.SelectedRows.CurrentRowSelected) then
         begin
         DBGrid2.Canvas.Brush.Color := clActiveCaption;
         DBGrid2.Canvas.Font.Color  := clWindow;
         end
      else
         begin
         DBGrid2.Canvas.Font.Color  := clBlack;
         DBGrid2.Canvas.Brush.Color := clInfoBk;
         end;
      end;
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

end;

function TFrm_AMVS.FemitirMod04(pTipo: Integer): Boolean;
begin

if not MEM_NOTLOTES.Active then
   begin
   fmensagem('  necess rio aplicar a sele  o!',0,['0'],0);
   result:=false;
   Exit;
   end;
testeform := TFrm_AMVS(FindGlobalComponent('form_impres_amvs'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_amvs);
  
form_impres_amvs.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
{
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
|          |          |                                   |         M O V I M E N T O        |           |   Assinatura do  |            OBSERVACAO            |
| D A T A  |  EMISSAO |      H I S T O R I C O            |----------------------------------|   Estoque |    Responsavel   |                                  |
|          |  ORIGEM  |                                   |  Entrada  |   Saida   |  Perdas  |           |     Tecnico      |           NOTAS E LOTES          |
|10/09/2009|10/09/2009|PANARELLO DISTRIB. FARMACEUTIC     |12345678901|12345678901|1234567801|12345678901|                  |   NF: 0221363 lt: 1390361234567  |
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
}

form_impres_amvs.mpag:=0;
if CB_TERMOS.Checked then
   begin
   form_impres_amvs.mpag:=1;
   form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);
//   form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
   form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',136),mreduz);
   if CB_TITNEG.Checked then
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mneg);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg)

      end
   else
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ABERTURA',' ',80),mnormal);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);
      end;
   form_impres_amvs.Rdprint1.ImpF(10,01,Centra('ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIRA PARA:',' ',136),mreduz);
   if RGTIPO.ItemIndex=0 then
      begin
      if CB_TITNEG.Checked then
         begin
         fImprimirInfCab(15,memo_cab_sai,true);
     end
      else
         begin
         fImprimirInfCab(15,memo_cab_sai,false);
         end;

      end
   else
      begin
      if CB_TITNEG.Checked then
         begin
         fImprimirInfCab(15,memo_cab_ent,true);
         end
      else
         begin
         fImprimirInfCab(15,memo_cab_ent,false);
         end;

      end;

   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, edt_datini_abert.date)
                    +' - ' + Formatdatetime(fdt2, edt_datfin_abert.date)
                     ,mreduz);

   form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
   form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
   form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);


   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);

//   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________       Data                                                     _________________________',mreduz);
//   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                      ASSINATURA R.T.    ',mreduz);
   form_impres_amvs.Rdprint1.Novapagina;
   end;
//form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
//form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,02,'-Quantidades...'+FloatToStr(mtotal),mreduz);
if CB_TERMOS.Checked then
   begin
   form_impres_amvs.mpag:=form_impres_amvs.mpag+1;

//   form_impres_amvs.RDprint1.Novapagina;
   form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118),mreduz);
//   form_impres_amvs.RDprint1.ImpF(01,01,Insere2(DM1.Tb_EmpRAZAO.Value,' ',118)+'Pagina..: '+FormatFloat('0000',form_impres_amvs.mpag),mreduz);
   form_impres_amvs.Rdprint1.ImpF(02,01,insere('-','-',136),mreduz);
   if CB_TITNEG.Checked then
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mneg);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mneg)

      end
   else
      begin
      form_impres_amvs.Rdprint1.ImpF(05,01,Centra('TERMO DE ENCERRAMENTO',' ',80),mnormal);
      form_impres_amvs.Rdprint1.ImpF(06,01,Centra('N  do livro: ' + edt_numlivro.text ,' ',80),mnormal);
      end;
   form_impres_amvs.Rdprint1.ImpF(10,01,Centra('ESTE RELATORIO EMITIDO POR PROCESSAMENTO DE DADOS SERVIU PARA:',' ',136),mreduz);

if RGTIPO.ItemIndex=0 then
   begin
   fImprimirInfCab(15,memo_cab_sai,true);
   end
else
   begin
   fImprimirInfCab(15,memo_cab_sai,true);
   end;
{
   if RGTIPO.ItemIndex=0 then
      begin
      if CB_TITNEG.Checked then
         form_impres_amvs.Rdprint1.ImpF(15,01,Centra('RELACAO MENSAL DE VENDAS DE MEDICAMENTOS',' ',80),mneg)
      else
         form_impres_amvs.Rdprint1.ImpF(15,01,Centra('RELACAO MENSAL DE VENDAS DE MEDICAMENTOS',' ',80),mnormal);
      end
   else
      begin
      if CB_TITNEG.Checked then
         form_impres_amvs.Rdprint1.ImpF(15,01,Centra('RELACAO MENSAL DE ENTRADAS DE MEDICAMENTOS',' ',80),mneg)
      else
         form_impres_amvs.Rdprint1.ImpF(15,01,Centra('RELACAO MENSAL DE ENTRADAS DE MEDICAMENTOS',' ',80),mnormal);
      end;
   if CB_TITNEG.Checked then
      form_impres_amvs.Rdprint1.ImpF(16,01,Centra('SUJEITO A CONTROLE ESPECIAL     ',' ',80),mneg)
   else
      form_impres_amvs.Rdprint1.ImpF(16,01,Centra('SUJEITO A CONTROLE ESPECIAL     ',' ',80),mnormal);
}


   form_impres_amvs.Rdprint1.ImpF(22,05,'PERIODO DO REGISTRO.......: '+FormatDateTime(fdt2, MDT1.date)
                    +' - ' + Formatdatetime(fdt2, MDT2.date)
                     ,mreduz);


   form_impres_amvs.Rdprint1.ImpF(24,05,'RAZAO SOCIAL..............: '+DM1.Tb_EmpRAZAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(26,05,'ENDERECO..................: '+insere2(DM1.Tb_EmpENDERECO.Value+' '+DM1.Tb_EmpBAIRRO.Value,' ',60)          +'TELEFONE/FAX......: '+DM1.Tb_EmpFONE.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(28,05,'CIDADE....................: '+insere2(DM1.Tb_EmpCIDADE.Value,' ',60),mreduz);
   form_impres_amvs.Rdprint1.ImpF(30,05,'C.N.P.J...................: '+Insere2(FormatFloat('00"."000"."000/0000-00',DM1.Tb_EmpCGC.Value),'0',18)+insere(' ',' ',42)+'INSC.ESTADUAL.....: '+DM1.Tb_EmpINSCRICAO.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(32,05,'REPRESENTANTE LEGAL.......: '+DM1.Tb_EmpDIRETOR.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(34,05,'RESPONSAVEL TECNICO.......: '+Insere2(DM1.Tb_EmpRESPONS.Value,' ',70)+'C.R.F.........: '+DM1.Tb_EmpCERTREG.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(36,05,'AUTORIZACAO FUNCIONAMENTO.: '+DM1.Tb_EmpAUTFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(38,05,'ALVARA DE FUNCIONAMENTO...: '+DM1.Tb_EmpALVFUNC.Value,mreduz);
   form_impres_amvs.Rdprint1.ImpF(40,05,'AUTORIZACAO ESPECIAL......: '+DM1.Tb_EmpAUTESP.Value,mreduz);
   form_impres_amvs.RDprint1.ImpF(42,05,'LISTAS....................: ' +mListas,mreduz);


  form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________            Data                       __________________________________________________',mreduz);
  form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA       ____/____/____                           ASSINATURA RESPONSAVEL TECNICO(A)        ',mreduz);

   form_impres_amvs.RDprint1.Novapagina;

//   form_impres_amvs.RDprint1.ImpF(60,05,'____________________________________________       Data                                                     _________________________',mreduz);
//   form_impres_amvs.RDprint1.ImpF(61,05,'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                      ASSINATURA R.T.    ',mreduz);


// '____________________________________________       Data                                                     _________________________',mreduz);
// 'ASSINATURA E CARIMBO DA AUTORIDADE SANITARIA  ____/____/____                                                       ASSINATURA        ',mreduz);

   end;

form_impres_amvs.mlin:=0;
mCodProA:=0;
mtotal :=0;
MEM_NOTLOTES.First;
if MEM_NOTLOTES.IsEmpty then
   begin
   FMod04Cab(0);
   end;


While not MEM_NOTLOTES.Eof do
   begin
   if form_impres_amvs.mlin=0 then
      begin
      FMod04Cab(0);
      end;
   if mCodProA<>MEM_NOTLOTESCODPRO.Value then
      begin
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'+--------+----------+------------------+-----------------------------------+-----------+-----------+----------+---------+---------------+---------------------+',m20ccp);

      form_impres_amvs.RDprint1.Novapagina;
      fmod04Cab(0);
      end;
   form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
   if MEM_NOTLOTESPEDFOR.AsInteger=1 then
//      mcinst4:=FormatDatetime(fdt2, MEM_NOTLOTESDATANF.AsDateTime)
      mcinst4:=''
   else
      mcinst4:=insere(' ',' ',00);

   form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|'+FormatDatetime(fdt3, MEM_NOTLOTESDATAMOV.AsDateTime)+'|'
                           +Insere(' ',' ',10)+'|'+insere2(MaskCPFCNPJ(MEM_NOTLOTESCNPJ.AsString),' ',18)
                           +mcinst4+'|'+insere2(MEM_NOTLOTESRAZAO_SOC.AsString,' ',35)
                           +'|'+insere(FormatFloat('#0.000',(MEM_NOTLOTESPESOB.AsFloat*MEM_NOTLOTESENTRADAS.AsFloat)),' ',11)+'|'
                           +insere(FormatFloat('#0.000',(MEM_NOTLOTESPESOB.AsFloat*MEM_NOTLOTESSAIDAS.AsFloat)),' ',11)+'|'
                           +insere(FormatFloat('#0.000',(MEM_NOTLOTESPESOB.AsFloat*MEM_NOTLOTESPERDAS.AsFloat)),' ',10)+'|'
                           +insere(FormatFloat('#0.000',(MEM_NOTLOTESPESOB.AsFloat*MEM_NOTLOTESSALDO_ATU.AsFloat)),' ',09)+'|'
                           +insere2(MEM_NOTLOTESASS_RESP.AsString,' ',15)+'|'
                           +insere2(MEM_NOTLOTESOBSNF.AsString,' ',21)+'|',m20ccp);



{

+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
|          |          |                                   |         M O V I M E N T O        |           |   Assinatura do  |            OBSERVACAO            |
| D A T A  |  EMISSAO |      H I S T O R I C O            |----------------------------------|   Estoque |    Responsavel   |                                  |
|          |  ORIGEM  |                                   |  Entrada  |   Saida   |  Perdas  |           |     Tecnico      |           NOTAS E LOTES          |
|10/09/2009|10/09/2009|PANARELLO DISTRIB. FARMACEUTIC     |12345678901|12345678901|1234567801|12345678901|                  |   NF: 0221363 lt: 1390361234567  |
                       12345678901234567890123456789012345                                                123456789012345678 1234567890123456789012345678901234
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+


   form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,FormatDatetime(fdt2, Query1P1DATAMOV.Value)+' '
                           +insere2(Query1CRAZAO.Value,' ',41)+' '
                           +insere(Formatfloat('000000', Query1P1NUMNF.Value),' ',06)+' '
                           +Insere(FormatDatetime(fdt2, Query1P1DATAMOV.Value),' ',10)
                           +' '
                           +centra(Query1P2LOTE.Value,' ',16)+' '
                           +insere(Formatfloat(mcasqtd, mEntrada),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, mSaida),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, mPerdas),' ',07)+' '
                           +insere(Formatfloat(mcasqtd, msaldo),' ',07)+' '
                           +mcinst4,mreduz);



{
Dt. Mov.   Razao Social                              N Fisc Dt.Emissao ------Lote------ Entrada   Saida  Perdas Estoque --Obeservacoes--
05/05/2007 12345678901234567890123456789012345678901 000000 10/06/2000 1234567890123456 zzz.zzz zzz.zzz zzz.zzz zzz.zzz
}

   MEM_NOTLOTES.Next;
   if not MEM_NOTLOTES.Eof then
      begin
      if form_impres_amvs.mlin>57 then
         begin
         form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
         form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',160),m20ccp);
         form_impres_amvs.RDprint1.Novapagina;
         form_impres_amvs.mlin:=0;
         end;
      end;
   end;

form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDPRINT1.ImpF(form_impres_amvs.mlin,01,insere('=','=',160),m20ccp);



iF form_impres_amvs.RDprint1.Setup then
   form_impres_amvs.RDprint1.Fechar;
form_impres_amvs.free;
form_impres_amvs:=nil;
//   Frm_Agde.Free;

end;

function TFrm_AMVS.FMod04Cab(mtipo: Integer): Boolean;
begin
mCodProA:=Frm_AMVS.MEM_NOTLOTESCODPRO.AsFloat;

form_impres_amvs.mpag:=form_impres_amvs.mpag+1;
form_impres_amvs.mlin:=01;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2(DM1.Tb_Empcnpj_masc.AsString+' '+DM1.Tb_EmpRAZAO.AsString,' ',140)+' Pagina: '+FormatFloat('###0', form_impres_amvs.mpag),m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2('Periodo: '+fperiodo(0,Frm_AMVS.MDT1.text,Frm_AMVS.MDT2.Text)
                         ,' ',140)+' Emissao: '+FormatDateTime(fdt2, date),m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
if (not DM1.Tb_PGen.Active) or (DM1.Tb_PGenPGCODPRO.AsFloat<>Frm_AMVS.MEM_NOTLOTESCODPRO.AsFloat) then
   flcadPgen(0,0,Frm_AMVS.MEM_NOTLOTESCODPRO.AsString);

form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2('Produto: '+Frm_AMVS.MEM_NOTLOTESCODPRO.AsString+' - '+Frm_AMVS.MEM_NOTLOTESNOMPRO.AsString+ ' '+Frm_AMVS.MEM_NOTLOTESUNDPRO.AsString,' ',80)
                        +' DCB: '+DM1.Tb_PGenPGCODDCB.AsString+' - '+DM1.Tb_PGennomedcb.AsString
                         ,m20ccp);
if not DM1.Tb_PGen.IsEmpty then
   begin
   DM1.Tb_PGen.Next;
   While not DM1.Tb_PGen.Eof do
      begin
      form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
      form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,insere2(' ',' ',80)
                              +'      '+DM1.Tb_PGenPGCODDCB.AsString+' - '+DM1.Tb_PGennomedcb.AsString
                               ,m20ccp);
      DM1.Tb_PGen.Next;
      end;
   end;

form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,Centra('FOLHA DO LIVRO DE REGISTRO ESPECIFICOS',' ',160)
                         ,form_impres_amvs.mComp20reduz);

form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'+--------+----------+------------------+-----------------------------------+----------------------------------+---------+---------------+---------------------+',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|        |          |                  |                                   |         M O V I M E N T O        |         | Assinatura do |       OBSERVACAO    |',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|D A T A |  EMISSAO |    CNPJ          |   H I S T O R I C O               |----------------------------------| Estoque |  Responsavel  |                     |',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|        |  ORIGEM  |                  |                                   |  Entrada  |   Saida   |  Perdas  |         |   Tecnico     |      NOTAS E LOTES  |',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'+--------+----------+------------------+-----------------------------------+----------------------------------+---------+---------------+---------------------+',m20ccp);
form_impres_amvs.mlin:=form_impres_amvs.mlin+1;
form_impres_amvs.RDprint1.ImpF(form_impres_amvs.mlin,01,'|        |          |                  | Saldo Inicial                     |           |           |          |'+insere(FormatFloat('#0.000',(Frm_AMVS.MEM_NOTLOTESPESOB.AsFloat*Frm_AMVS.MEM_NOTLOTESSALDO_INI.AsFloat)),' ',09)+'|               |                     |',m20ccp);

{
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+
|          |          |                                   |         M O V I M E N T O        |           |   Assinatura do  |            OBSERVACAO            |
| D A T A  |  EMISSAO |      H I S T O R I C O            |----------------------------------|   Estoque |    Responsavel   |                                  |
|          |  ORIGEM  |                                   |  Entrada  |   Saida   |  Perdas  |           |     Tecnico      |           NOTAS E LOTES          |
|10/09/2009|10/09/2009|PANARELLO DISTRIB. FARMACEUTIC     |12345678901|12345678901|1234567801|12345678901|                  |   NF: 0221363 lt: 1390361234567  |
+----------+----------+-----------------------------------+----------------------------------+-----------+------------------+----------------------------------+

 }

result:=true;
end;

procedure TFrm_AMVS.RLBand_DETBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if not Query1CCNPJ.IsNull then
  RLDET_CNPJ.Lines.Text:=FormatFloat('00"."000"."000"/"0000"-"00',Query1CCNPJ.AsFloat);
RLDET_UF.Lines.Text:=Query1CUF.AsString;
if not Query1P1DATVIS.IsNull then
  begin
  if Query1P1DATVIS.AsDateTime>StrToDateTime('01/01/1900') then
    begin
    RLDET_DATNV.Lines.Text:=DateTimeToStr(Query1P1DATVIS.AsDateTime);
    end
  else
    begin
    RLDET_DATNV.Lines.Text:='';
    end;
  end
else
  begin
  RLDET_DATNV.Lines.Text:='';
  end;

end;

procedure TFrm_AMVS.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_AMVS.RLBand_DETAfterPrint(Sender: TObject);
begin
//RLBand_DET.Height:=11;
end;

procedure TFrm_AMVS.rl_modelo03BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_emitido.Caption:='Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time);
if mChaveIdLogo>0 then
   begin
   QRIMG_CARCNPJ.Picture:=logosis.Picture;
   RLCAB_CNPJ.Visible   :=false;
   RLLabel5.Visible   :=false;
   QRIMG_CARCNPJ.Enabled:=true;
   QRIMG_CARCNPJ.Top :=RLCAB_CARCNPJ.Top;
   QRIMG_CARCNPJ.Width :=RLCAB_CARCNPJ.Width;
   QRIMG_CARCNPJ.Height :=RLCAB_CARCNPJ.Height;
   QRIMG_CARCNPJ.Left   :=RLCAB_CARCNPJ.Left;
   end
else
   begin
   RLCAB_CARCNPJ.Visible   :=true;
   QRIMG_CARCNPJ.Enabled:=false;
   end;

end;

procedure TFrm_AMVS.RGTIPOClick(Sender: TObject);
begin
if Query1.Active then
   Query1.Close;

end;

procedure TFrm_AMVS.CB_ORDEMClick(Sender: TObject);
begin
if Query1.Active then
   Query1.Close;

end;

procedure TFrm_AMVS.CB_SEPPAGClick(Sender: TObject);
begin
if Query1.Active then
   Query1.Close;

end;

procedure TFrm_AMVS.CODPROChange(Sender: TObject);
begin
if CODPRO.Modified then
   begin
   if Query1.Active then
      Query1.Close;
   end;   

end;

procedure TFrm_AMVS.OMITIR_PROClick(Sender: TObject);
begin
if Query1.Active then
   Query1.Close;

end;

procedure TFrm_AMVS.cb_InibirNF_ComplementarClick(Sender: TObject);
begin
if Query1.Active then
   Query1.Close;

end;

procedure TFrm_AMVS.DBGrid2DblClick(Sender: TObject);
var
form_info: TFrm_Informacoes;
query_pend: tQuery;
begin
if (MEM_NOTLOTES.Active) and  (MEM_NOTLOTESCODPRO.AsFloat>0) then
   begin
   Application.CreateForm(TFrm_Informacoes, form_info);
   query_pend:=tQuery.Create(nil);
   query_pend.DatabaseName:='SG_ASSOC';
   query_pend.Close;
   query_pend.SQL.Clear;

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
   fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin(1,'CADPRO','PDCODEMP', 'P2CODEMP','PDCODPRO' ,'P2CODPRO');
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin5(1,'CADP02_LOTES','P2LM_CODEMP','P2CODEMP','P2LM_LOTSEQ','P2LOTSEQ','P2LM_CHAVE','P2CHAVE','P2LM_CODPRO','P2CODPRO','P2LM_ITEM','P2ITEM');

   query_pend.sql.Add('select '+QuotedStr('VENDA')+' AS MOVIM,P2ITEM, P1NUMNF, P1DATAP AS P1DATANF, P1DATVIS, P1NUMVIS, P2CODPRO,P2CHAVE, '
                 +'  DECODE(P2LM_QTD,NULL,P2LOTE,P2LM_LOTE) AS P2LOTE, '
                 +' CASE WHEN P2LM_QTD is null THEN P2QTD WHEN P2LM_QTD=0 THEN P2QTD ELSE P2LM_QTD END AS P2QTD, PDNOME, PDAPRES, PDUND, PDREGMS, PDPRZVAL, '
                 +'DECODE(P2LM_QTD,NULL,P2DTVCTO,P2LM_DTVCTO) AS P2DTVCTO, PDPESOB,'
                 +' PDCODBAR, CCODCLI,CRAZAO, CLOG, CBAIRRO, to_char(CCNPJ) as CCNPJ, TO_CHAR(CCPF) AS CCPF, CCIDADE, CUF '
                 +' ,PDMARCA,CDENOM, 01 as TIPOMOV,P1DATANF AS P1DATAMOV '
                 +' from CADP01'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+'  and P1TIPO>0 and ((P1NUMCF=0 AND P1NUMNF=0) or (P1TIPO=9)  or (P1EMIDOC=0) ) '
//               +' and P1TIPO<>8 and P1TIPO<>12 and P1TIPO<>13 and P1TIPO<>17 and P1TIPO<>9 '
               +' and PDCODCON>0 ');
   if cb_InibirNF_Complementar.Checked then
      query_pend.SQL.add(' and P1TIPO<>10 ');
   if trim(mcinst4)<>'' then
      query_pend.SQL.add(' and PDCODCON in ('+mcinst4+')');
{
   if trim(MDT1.Text)<>'/  /' then
      query_pend.SQL.add(' and P1DATAP>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if trim(MDT2.Text)<>'/  /' then
      query_pend.SQL.add(' and P1DATAP<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
}      
    query_pend.SQL.Add(' and P2CODPRO='+MEM_NOTLOTESCODPRO.AsString);
//   query_pend.sql.savetofile(mpastatemp + 'SQLamvs.txt');

   try
      query_pend.Open;
   except
      query_pend.sql.savetofile(mpastatemp + 'SQLamvs.txt');
      end;

   form_info.RichEdit1.Clear;
   form_info.Panel1.Caption:='Mercadorias Aguardando Emiss o das Notas';

   if query_pend.IsEmpty then
      form_info.RichEdit1.Text:='N o Existem Pedidos Pendentes!!!'
   else
      form_info.RichEdit1.Text:=' Chave   data Ped.    Quantidade Cliente';
   While not query_pend.Eof do
      begin
      form_info.RichEdit1.Lines.Add(Formatfloat('0000000', query_pend.fieldbyName('P2CHAVE').AsFloat)
                                   +' '+FormatDatetime(fdt2, query_pend.fieldbyName('P1DATANF').AsDateTime)
                                   +insere(query_pend.fieldbyName('P2QTD').AsString,' ',14)
                                   +' '+insere2(query_pend.fieldbyName('CRAZAO').AsString,' ',60)
                                   +' Produto: '+query_pend.fieldbyName('P2CODPRO').AsString+' - '
                                   +query_pend.fieldbyName('PDNOME').AsString
                                   );
      query_pend.Next;
      end;
   form_info.ShowModal;
   FreeAndNil(form_info);
   end;
end;

procedure TFrm_AMVS.CLBNivelClick(Sender: TObject);
begin
CLBNivel:=Valida_CheckList(CLBNivel);

end;

procedure TFrm_AMVS.edt_numlivroExit(Sender: TObject);
begin
if fsonumero(edt_numlivro.text)=0 then
   edt_numlivro.clear
else
   edt_numlivro.text:=fdeixanum(edt_numlivro.text);
end;

procedure TFrm_AMVS.fLerCadLog;
var
query_logo: tQuery;
mStream: TMemoryStream;
jpg:TJPEGImage;
begin
mChaveIdLogo:=-1;
query_logo:=tQuery.create(nil);
query_logo.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_logo.sql.add('select LD_ID,LD_NOMEREL,LD_LOGO FROM CADLOGDIV WHERE LD_NOMEREL=:NOMEREL ');
try
   query_logo.ParamByName('NOMEREL').AsString:='CARIMBO_CNPJ';
   query_logo.open;
   if query_logo.IsEmpty=false then
      begin
      mStream := TMemoryStream.Create;
      mChaveIdLogo:=query_logo.fieldbyname('LD_ID').asinteger;
      (query_logo.fieldbyName('LD_LOGO') as TBlobField).SaveToStream(mStream);
       mStream.Position := 0;

      jpg:=TJPEGImage.Create;
      jpg.LoadFromStream( mStream );
      logosis.Picture.Bitmap.Assign(jpg);
      freeandnil(jpg);
      freeandnil(mstream);
      end;

except on e : exception do
  ex_erroSql_Novo(Query_logo,30828,'_stru '+e.message,'user');
  end;
query_logo.close;
freeandnil(query_logo);

end;

procedure TFrm_AMVS.bbAdquirirClick(Sender: TObject);
var
mTam: Integer;
begin
If Opd1.Execute then
   begin
   mtam:=length(Opd1.FileName);
   if (UpperCase(copy(Opd1.FileName,mtam-3,4))<>'.JPG') and
       (UpperCase(copy(Opd1.FileName,mtam-4,4))<>'.JPEG') then
      begin
      fmensagem('Nao   uma Figura Valida.',0,['0'],0);
      end
   else
      begin
      logosis.Picture.LoadFromFile(Opd1.FileName);
      end;
   end;
end;
procedure TFrm_AMVS.BBGRAVARClick(Sender: TObject);
begin
if (logosis.Picture<>nil) then
   fSalvarCadLog;


end;

procedure TFrm_AMVS.bbExcImagemClick(Sender: TObject);
var
query_img: tQuery;
begin
logosis.Picture:=nil;
if (mChaveIdLogo>0) then
   begin
   query_img:=TQuery.Create(nil);
   query_img.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
   query_img.Close;
   query_img.SQL.Clear;
   query_img.SQL.Add('Delete from CADLOGDIV where LD_ID='+InttoStr(mChaveIdLogo));
   try
      query_img.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Atualizar o Logotipo!',0,['0'],0);
      end;
   mChaveIdLogo:=0;
   query_img.close;
   freeandnil(query_img);

   end;

end;



procedure TFrm_AMVS.fSalvarCadLog;
var
query_logo: tQuery;
imagestream:  TMemoryStream;
jpg: TJPEGImage;

begin

query_logo:=tQuery.create(nil);
query_logo.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
if mChaveIdLogo>0 then
   begin
   query_logo.sql.add('UPDATE CADLOGDIV WHERE SET  LD_LOGO=:LD_LOGO '
                     +' WHERE LD_ID='+Inttostr(mChaveIdLogo));
   end
else
   begin
   mChaveIdLogo:=fBuscareTestarID('CADLOGDIV_SEQ');
   query_logo.sql.add('insert into CADLOGDIV (LD_ID,LD_NOMEREL,LD_LOGO) '
                     +' values ('+inttostr(mChaveIdLogo)+','+QuotedStr('CARIMBO_CNPJ')
                     +',:LD_LOGO )');
   end;


with TJPEGImage.Create do
    begin
    imagestream:=TMemoryStream.Create;

    Assign(logosis.Picture.Graphic);
    SaveToStream(imagestream);  //  ToFile('c:\img.jpg');
    Free;

    end;

query_logo.ParamByName('LD_LOGO').LoadFromStream(imagestream,ftBlob);
try
   query_logo.ExecSQL;
   fdm1StartCommit;
   ShowMessage('Registro salvo id '+IntToChar(mChaveIdLogo));
except on e : exception do
   begin
   mChaveIdLogo:=0;
   ex_erroSql_Novo(Query_logo,30828,'_stru '+e.message,'user');
   end;
   end;
query_logo.close;
freeandnil(query_logo);
freeandnil(imagestream);

end;


procedure TFrm_AMVS.FormActivate(Sender: TObject);
begin
PageControl1.ActivePageIndex:=1;
PageControl1.ActivePage:=tsFiltgos;
PageControl2.ActivePage:=tsGeral;

end;

procedure TFrm_AMVS.RLBand_CABBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

rlPagina.Caption:='Numero da Pagina: '
end;



function TFrm_AMVS.fDtAbertura: String;
begin

result := edt_datini_abert.Text+' a '+edt_datfin_abert.Text;

end;

function TFrm_AMVS.fDtEncerramento: String;
begin

result := MDT1.Text+' a '+MDT2.Text;

end;


procedure TFrm_AMVS.Memo_cab_entKeyPress(Sender: TObject; var Key: Char);
var
  LinhaAtual: Integer;
  ComprimentoLinha: Integer;
begin
  with Sender as TMemo do
  begin
    // Permite Backspace (#8) e Enter (#13)
    if (Key = #8) or (Key = #13) then
      Exit;

    // Descobre em qual linha o cursor está
    LinhaAtual := Perform(EM_LINEFROMCHAR, SelStart, 0);

    // Descobre o tamanho (comprimento) da linha atual
    ComprimentoLinha := Length(Lines[LinhaAtual]);

    // Se a linha já tiver 80 ou mais caracteres, cancela a tecla
    if ComprimentoLinha >= 80 then
      Key := #0;
  end;
end;

procedure TFrm_AMVS.Memo_cab_saiKeyPress(Sender: TObject; var Key: Char);
var
  LinhaAtual: Integer;
  ComprimentoLinha: Integer;
begin
  with Sender as TMemo do
  begin
    // Permite Backspace (#8) e Enter (#13)
    if (Key = #8) or (Key = #13) then
      Exit;

    // Descobre em qual linha o cursor está
    LinhaAtual := Perform(EM_LINEFROMCHAR, SelStart, 0);

    // Descobre o tamanho (comprimento) da linha atual
    ComprimentoLinha := Length(Lines[LinhaAtual]);

    // Se a linha já tiver 80 ou mais caracteres, cancela a tecla
    if ComprimentoLinha >= 80 then
      Key := #0;
  end;

end;

procedure TFrm_AMVS.cb_termo_finalClick(Sender: TObject);
begin
fDeletaPadroes(-3,'_AMVS','');
fGravaPadroes(-3,'cb_termo_final'         ,'text'  ,'_AMVS',iif(cb_termo_final.Checked,'true','false'));

end;

end.
