unit S_FISCAL_LivroEle_DF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,db,dbtables,
  RxMemDS, DBCtrls, Grids, DBGrids, CurrEdit, RxDBComb, RXDBCtrl;

type
  TFrm_FISCAL_LivroEle_DF = class(TForm)
    Panel2: TPanel;
    bbGerar: TBitBtn;
    bbSair: TBitBtn;
    PageControl1: TPageControl;
    tsEventos: TTabSheet;
    memo_erros: TRichEdit;
    TabSheet1: TTabSheet;
    memo1: TRichEdit;
    mem_R0150: TRxMemoryData;
    mem_R0150COD_PART: TStringField;
    mem_R0150COD_PAIS: TIntegerField;
    mem_R0150CNPJ: TStringField;
    mem_R0150CPF: TStringField;
    mem_R0150IE: TStringField;
    mem_R0150COD_MUN: TIntegerField;
    mem_R0150SUFRAMA: TStringField;
    mem_R0200: TRxMemoryData;
    mem_R0200COD_ITEM: TStringField;
    mem_R0200DESCR_ITEM: TStringField;
    mem_R0200COD_GEN: TStringField;
    mem_R0200COD_LST: TStringField;
    mem_R0400: TRxMemoryData;
    mem_R0400COD_NAT: TStringField;
    mem_R0400DESCR_NAT: TStringField;
    tsEntrada: TTabSheet;
    Label6: TLabel;
    cb_COD_INC_TRIB: TComboBox;
    Label7: TLabel;
    CB_IND_APRO_CRED: TComboBox;
    Label8: TLabel;
    CB_COD_TIPO_CONT: TComboBox;
    mem_R0150NOME: TStringField;
    Tb_GuiaST: TRxMemoryData;
    Tb_GuiaSTCOD_OR: TStringField;
    Tb_GuiaSTVL_OR: TFloatField;
    Tb_GuiaSTDT_VCTO: TDateTimeField;
    Tb_GuiaSTCOD_REC: TStringField;
    Tb_GuiaSTIND_PROC: TIntegerField;
    Tb_GuiaSTPROC: TStringField;
    Tb_GuiaSTTXT_COMP: TStringField;
    Tb_GuiaSTMES_REF: TStringField;
    Tb_GuiaSTNUM_PROC: TStringField;
    Tb_GuiaSTUF: TStringField;
    Src_GuiaST: TDataSource;
    Tb_AjusE115: TRxMemoryData;
    Tb_AjusE115TABELA: TStringField;
    Tb_AjusE115DESCRICAO: TStringField;
    Tb_AjusE115VALORAJUST: TFloatField;
    Tb_AjusE115TIPO: TStringField;
    Tb_AjusE115CODIGOAJUST: TStringField;
    Tb_AjusE115INDICE: TIntegerField;
    Tb_AjusE115COMPL_DESCR: TStringField;
    src_ajusE115: TDataSource;
    Tb_AjusE111: TRxMemoryData;
    Tb_AjusE111TABELA: TStringField;
    Tb_AjusE111DESCRICAO: TStringField;
    Tb_AjusE111VALORAJUST: TFloatField;
    Tb_AjusE111TIPO: TStringField;
    Tb_AjusE111CODIGOAJUST: TStringField;
    Tb_AjusE111INDICE: TIntegerField;
    Tb_AjusE111COMPL_DESCR: TStringField;
    src_ajusE111: TDataSource;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    bbe111_INCLUIR: TBitBtn;
    bbe111_ALTERAR: TBitBtn;
    bbe111_EXCLUIR: TBitBtn;
    bbe111_GRAVAR: TBitBtn;
    bbe111_CANCELAR: TBitBtn;
    bbe111_DBNavigator1: TDBNavigator;
    DBGrid1_e111: TDBGrid;
    tsE115: TTabSheet;
    tsGuiaST: TTabSheet;
    GroupBox5: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    sbnNotas: TSpeedButton;
    edtguiast_valordig: TCurrencyEdit;
    edtguiast_valoresp: TCurrencyEdit;
    edtguiast_valorResto: TCurrencyEdit;
    Panel3: TPanel;
    DBText1: TDBText;
    Panel4: TPanel;
    DBText2: TDBText;
    DBGrid1_e115: TDBGrid;
    Panel5: TPanel;
    bbe115_INCLUIR: TBitBtn;
    bbe115_ALTERAR: TBitBtn;
    bbe115_EXCLUIR: TBitBtn;
    bbe115_GRAVAR: TBitBtn;
    bbe115_CANCELAR: TBitBtn;
    bbe115_DBNAVIGATOR1: TDBNavigator;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label57: TLabel;
    Label65: TLabel;
    Label56: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label58: TLabel;
    Label61: TLabel;
    bbGuiaST_Incluir: TBitBtn;
    bbGuiaST_Excluir: TBitBtn;
    bbGuiaST_Alterar: TBitBtn;
    DBedtguiast_num_proc: TDBEdit;
    RxDB_valor: TRxDBCalcEdit;
    dbCB_GUIAST_COD_OR: TRxDBComboBox;
    dbedtguiast_dt_vcto: TDBDateEdit;
    dbcb_UF: TRxDBComboBox;
    db_PROC: TDBEdit;
    db_TXT_COMP: TDBEdit;
    DBE_MES_REF: TDBEdit;
    DBE_ANO_REF: TDBEdit;
    Tb_GuiaSTANO_REF: TIntegerField;
    DBGrid_GuiaST: TDBGrid;
    bbGuiaST_GRAVAR: TBitBtn;
    bbGuiaST_Cancelar: TBitBtn;
    mem_e200: TRxMemoryData;
    mem_e200E200_UF: TStringField;
    mem_e200E200_DT_INI: TDateField;
    mem_e200E200_DT_FIN: TDateField;
    mem_e210: TRxMemoryData;
    mem_e210E210_IND_MOV_ST: TStringField;
    mem_e210E210_VL_SLD_CRED_ANT_ST: TFloatField;
    mem_e210E210_VL_DEVOL_ST: TFloatField;
    mem_e210E210_VL_RESSARC_ST: TFloatField;
    mem_e210E210_VL_OUT_CRED_ST: TFloatField;
    mem_e210E210_VL_AJ_CREDITOS_ST: TFloatField;
    mem_e210E210_VL_RETENAO_ST: TFloatField;
    mem_e210E210_VL_OUT_DEB_ST: TFloatField;
    mem_e210E210_VL_AJ_DEBITOS_ST: TFloatField;
    mem_e210E210_VL_SLD_DEV_ANT_ST: TFloatField;
    mem_e210E210_VL_DEDUCOES_ST: TFloatField;
    mem_e210E210_VL_ICMS_RECOL_ST: TFloatField;
    mem_e210E210_VL_SLD_CRED_ST_TRAN: TFloatField;
    mem_e210E210_DEB_ESP_ST: TFloatField;
    mem_e210E210_UF: TStringField;
    tsFiltros: TTabSheet;
    GroupBox2: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    edt_numnf_ent: TEdit;
    edt_numnf_sai: TEdit;
    edt_num_ecf: TEdit;
    lbx_numnf_ent: TListBox;
    lbx_numnf_sai: TListBox;
    lbx_numcf: TListBox;
    OMITIR_VEN: TCheckBox;
    DBE_COD_REC: TDBEdit;
    mem_R0150CEI: TStringField;
    mem_R0150UF: TStringField;
    mem_R0150NIT: TStringField;
    mem_R0150IE_ST: TStringField;
    mem_R0150IM: TStringField;
    mem_R0205: TRxMemoryData;
    mem_R0205COD_ITEM_ANT: TStringField;
    mem_R0205DESCR_ANT_ITEM: TStringField;
    mem_R0205DT_INI_ANT: TDateField;
    mem_R0205DT_FIN_ANT: TDateField;
    mem_R0180: TRxMemoryData;
    mem_r180IND_REL: TIntegerField;
    mem_r180DT_INI_REL: TDateField;
    mem_r180DT_FIN_REL: TDateField;
    Mem_R0210: TRxMemoryData;
    Mem_R0210UNID_ITEM: TStringField;
    Mem_R0210COD_ITEM_COMP: TStringField;
    Mem_R0210QTD_COMP: TFloatField;
    Mem_R0210UNID_COMP: TStringField;
    Mem_R0210PERDA_COMP: TFloatField;
    Mem_R0210DT_INI_COMP: TDateField;
    Mem_R0210DT_FIN_COMP: TDateField;
    Mem_R0220: TRxMemoryData;
    Mem_R0220UNID_INV: TStringField;
    Mem_R0220UNID_CONV: TStringField;
    Mem_R0220FAT_CONV: TFloatField;
    Mem_R0450: TRxMemoryData;
    Mem_R0450COD_INF_OBS: TStringField;
    Mem_R0450TXT: TStringField;
    Mem_R0460: TRxMemoryData;
    Mem_R0465: TRxMemoryData;
    Mem_R0455: TRxMemoryData;
    Mem_R0455NORMA: TStringField;
    Mem_R0460COD_DA: TStringField;
    Mem_R0460NUM_DA: TStringField;
    Mem_R0460VL_DA: TFloatField;
    Mem_R0460DT_INI: TDateField;
    Mem_R0460DT_FIN: TDateField;
    Mem_R0460DT_VCTO: TDateField;
    Mem_R0460DT_PGTO: TDateField;
    Mem_R0465IND_OPER: TIntegerField;
    Mem_R0465IND_EMIT: TIntegerField;
    Mem_R0465CNPJ: TStringField;
    Mem_R0465CPF: TStringField;
    Mem_R0465UF: TStringField;
    Mem_R0465IE: TStringField;
    Mem_R0465COD_MUN: TStringField;
    Mem_R0465IM: TStringField;
    Mem_R0465COD_SIT: TStringField;
    Mem_R0465SER: TStringField;
    Mem_R0465SUB: TStringField;
    Mem_R0465NUM_DOC: TIntegerField;
    Mem_R0465DT_DOC: TDateField;
    Mem_R0465VL_DOC: TFloatField;
    Mem_R0465VL_ISSQN: TFloatField;
    Mem_R0465VL_RT: TFloatField;
    Mem_R0465VL_ICMS: TFloatField;
    Mem_R0465VL_ST: TFloatField;
    Mem_R0465VL_IPI: TFloatField;
    Mem_R0470: TRxMemoryData;
    Mem_R0470COD_MOD: TStringField;
    Mem_R0470ECF_FAB: TStringField;
    Mem_R0470ECF_CX: TIntegerField;
    Mem_R0470CRO: TIntegerField;
    Mem_R0470CRZ: TIntegerField;
    Mem_R0470NUM_DOC: TIntegerField;
    Mem_R0470DT_DOC: TDateField;
    Mem_R0470VL_DOC: TFloatField;
    Mem_R0470VL_ISSQN: TFloatField;
    Mem_R0470VL_ICMS: TFloatField;
    tsGeral: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    sbnsalvar: TSpeedButton;
    Label47: TLabel;
    Label67: TLabel;
    edt_datini: TDateEdit;
    edt_datfin: TDateEdit;
    cb_codfin: TComboBox;
    edt_nomarq: TEdit;
    CB_INVENTARIO: TComboBox;
    cb_versao_layout: TComboBox;
    edt_COD_SRP: TEdit;
    Label5: TLabel;
    cb_IND_ED: TComboBox;
    Label9: TLabel;
    CB_IND_CENTR: TComboBox;
    mem_R0150END: TStringField;
    mem_R0150NUM: TStringField;
    mem_R0150COMPL: TStringField;
    mem_R0150BAIRRO: TStringField;
    mem_R0150CEP: TStringField;
    mem_R0150CEP_CP: TStringField;
    mem_R0150FONE: TStringField;
    mem_R0150FAX: TStringField;
    mem_e360: TRxMemoryData;
    mem_e360VALDEBIMP01: TFloatField;
    mem_e360VALOUTDEB02: TFloatField;
    mem_e360VALESTCRED03: TFloatField;
    mem_e360VALDEB04: TFloatField;
    mem_e360VALCRED05: TFloatField;
    mem_e360VALOUTCRED06: TFloatField;
    mem_e360VALESTDEB07: TFloatField;
    mem_e360VALCRED08: TFloatField;
    mem_e360VALCRED_ANT09: TFloatField;
    mem_e360VALTOTCRED10: TFloatField;
    mem_e360VALCREDTRANSP11: TFloatField;
    mem_e360VALTOTDEV12: TFloatField;
    mem_e360VALDEDUC13: TFloatField;
    mem_e360VALICMSREC14: TFloatField;
    mem_e360VALCREDICMSST15: TFloatField;
    mem_e360VALICMSST_DEST16: TFloatField;
    mem_e360VALDIFICMS17: TFloatField;
    mem_e360VALICMSIMP18: TFloatField;
    mem_e360VALOUTICMS19: TFloatField;
    mem_e360VALICMSRECOLHER20: TFloatField;
    mem_e360VALICMSST_OUTEST99: TFloatField;
    mem_e310: TRxMemoryData;
    mem_e310CFOP: TIntegerField;
    mem_e310VL_CONT: TFloatField;
    mem_e310VL_BC_ICMS: TFloatField;
    mem_e310VL_ICMS: TFloatField;
    mem_e310VL_ST: TFloatField;
    mem_e310VL_COMPL: TFloatField;
    mem_e310VL_ISNT_ICMS: TFloatField;
    mem_e310VL_OUT_ICMS: TFloatField;
    procedure bbGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure bbe111_INCLUIRClick(Sender: TObject);
    procedure bbe111_ALTERARClick(Sender: TObject);
    procedure bbe111_EXCLUIRClick(Sender: TObject);
    procedure bbe111_GRAVARClick(Sender: TObject);
    procedure bbe111_CANCELARClick(Sender: TObject);
    procedure Tb_AjusE111AfterCancel(DataSet: TDataSet);
    procedure Tb_AjusE111AfterDelete(DataSet: TDataSet);
    procedure Tb_AjusE111AfterEdit(DataSet: TDataSet);
    procedure Tb_AjusE111AfterInsert(DataSet: TDataSet);
    procedure Tb_AjusE111AfterPost(DataSet: TDataSet);
    procedure Tb_AjusE111BeforePost(DataSet: TDataSet);
    procedure Tb_AjusE115AfterCancel(DataSet: TDataSet);
    procedure Tb_AjusE115AfterDelete(DataSet: TDataSet);
    procedure Tb_AjusE115AfterInsert(DataSet: TDataSet);
    procedure Tb_AjusE115AfterEdit(DataSet: TDataSet);
    procedure Tb_AjusE115AfterPost(DataSet: TDataSet);
    procedure Tb_AjusE115BeforePost(DataSet: TDataSet);
    procedure bbe115_INCLUIRClick(Sender: TObject);
    procedure bbe115_ALTERARClick(Sender: TObject);
    procedure bbe115_EXCLUIRClick(Sender: TObject);
    procedure bbe115_GRAVARClick(Sender: TObject);
    procedure bbe115_CANCELARClick(Sender: TObject);
    procedure Tb_GuiaSTAfterCancel(DataSet: TDataSet);
    procedure Tb_GuiaSTAfterDelete(DataSet: TDataSet);
    procedure Tb_GuiaSTAfterEdit(DataSet: TDataSet);
    procedure Tb_GuiaSTAfterInsert(DataSet: TDataSet);
    procedure Tb_GuiaSTAfterPost(DataSet: TDataSet);
    procedure Tb_GuiaSTBeforePost(DataSet: TDataSet);
    procedure bbGuiaST_IncluirClick(Sender: TObject);
    procedure bbGuiaST_AlterarClick(Sender: TObject);
    procedure bbGuiaST_ExcluirClick(Sender: TObject);
    procedure bbGuiaST_GRAVARClick(Sender: TObject);
    procedure bbGuiaST_CancelarClick(Sender: TObject);
    procedure sbnNotasClick(Sender: TObject);
    procedure edt_numnf_entExit(Sender: TObject);
    procedure edt_numnf_saiExit(Sender: TObject);
    procedure edt_num_ecfExit(Sender: TObject);
    procedure lbx_numnf_entKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_numnf_saiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_numcfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    mFinalCFOP_Frete: String;
    mfone_temp: String;
    mLinha: String;
    mTabela: String;
    items_lista_bloco0: TStrings;
    items_lista_blocoA: TStrings;
    items_lista_blocoB: TStrings;
    items_lista_blocoC: TStrings;
    items_lista_blocoD: TStrings;
    items_lista_blocoE: TStrings;
    items_lista_blocoH: TStrings;
    items_lista_bloco8: TStrings;



    mQtdRegBloco0 : Integer;
    mQtdRegBlocoA : Integer;
    mQtdRegBlocoB : Integer;
    mQtdRegBlocoC : Integer;
    mQtdRegBlocoD : Integer;
    mQtdRegBlocoE : Integer;
    mQtdRegBlocoF : Integer;

    mQtdRegBlocoH : Integer;
    mQtdRegBloco8 : Integer;


    mQtdRegBloco_0000: Integer;
    mQtdRegBloco_0001: Integer;
    mQtdRegBloco_0005: Integer;
    mQtdRegBloco_0100: Integer;
    mQtdRegBloco_0125: Integer;
    mQtdRegBloco_0150: Integer;
    mQtdRegBloco_0175: Integer;
    mQtdRegBloco_0200: Integer;
    mQtdRegBloco_0990: Integer;



    mQtdRegBloco_A001: Integer;
    mQtdRegBloco_A990: Integer;

    mQtdRegBloco_B001: Integer;
    mQtdRegBloco_B990: Integer;

    mQtdRegBloco_C001: Integer;
    mQtdRegBloco_C020: Integer;
    mQtdRegBloco_C300: Integer;
    mQtdRegBloco_C305: Integer;
    mQtdRegBloco_C990: Integer;


    mQtdRegBloco_D001: Integer;
    mQtdRegBloco_D990: Integer;


    mQtdRegBloco_E001: Integer;
    mQtdRegBloco_E020: Integer;
    mQtdRegBloco_E025: Integer;
    mQtdRegBloco_E300: Integer;
    mQtdRegBloco_E310: Integer;
    mQtdRegBloco_E360: Integer;
    mQtdRegBloco_E990: Integer;

    mQtdRegBloco_H001: Integer;
    mQtdRegBloco_H020: Integer;
    mQtdRegBloco_H990: Integer;

    mQtdRegBloco_8001: Integer;
    mQtdRegBloco_8990: Integer;



    mQtdRegBloco_9001: Integer;
    mQtdRegBloco_9900: Integer;
    mQtdRegBloco_9990: Integer;
    mQtdRegBloco_9999: Integer;

    mAlterouGuia: boolean;

    mtotGNRE: Real;


    moper_e111: Integer;


    query_c020: tQuery;
    query_c300: tQuery;
    query_c305: tQuery;


    query_c025: tQuery;

    function fTotalizarST(pTipo: Integer): Boolean;

    function fBloco0(pOrigem: Integer): Boolean;

    function fBlocoA(pOrigem: Integer): Boolean;
    function fBlocoB(pOrigem: Integer): Boolean;


    function fBlocoC(pOrigem: Integer): Boolean;

    function fBlocoD(pOrigem: Integer): Boolean;

    function fBlocoE(pOrigem: Integer): Boolean;


    function fBlocoH(pOrigem: Integer): Boolean;


    function fBloco8(pOrigem: Integer): Boolean;


    function fGerarReg9900(pTipo: String;pQtdReg: Integer): Boolean;

    function fTestarCliFor(pCodigo: String): Boolean;
    function fTestarR0200(pCodigo: String): Boolean;

    function fTestarR0400(pCodigo: String): Boolean;

    function fBloqueiaCampos(pBloqueia: Boolean): Boolean;


    function fGravarGuiaST: Boolean;

    function fGerarE310(pCfop: Integer; pVL_CONT,pVL_BC_ICMS,pVL_ST,pVL_COMPL,pVL_ICMS, pVL_ISNT_ICMS,pVL_OUT_ICMS: Real): Boolean;




  public
    { Public declarations }
     mAnoMes_ini: String;

  end;

var
  Frm_FISCAL_LivroEle_DF: TFrm_FISCAL_LivroEle_DF;

    const
    fdt_efd='ddmmyyyy';
    fdt_efd2='mmyyyy';
    mCasas2Dec='##0.00';
    mCasas3Dec='##0.000';
    mCasas4Dec='##0.0000';
    mCasas5Dec='##0.00000';

implementation

uses Func, S_DM1, lerarq, S_SPED_EFD_NotasST;

{$R *.dfm}

procedure TFrm_FISCAL_LivroEle_DF.bbGerarClick(Sender: TObject);
var
mNomeArq: String;
mSeqTeste: Integer;
query_temp: tQuery;

begin
if edt_datini.Date<=pDataNula then
   begin
   MessageDlg('Data Inicial Campo Obrigatório!',mtWarning,[mbOk],0);
   PageControl1.ActivePage:=tsGeral;
   edt_datini.SetFocus;
   exit
   end;
if edt_datini.Date>edt_datfin.Date then
   begin
   MessageDlg('Data Final Campo Obrigatório!',mtWarning,[mbOk],0);
   PageControl1.ActivePage:=tsGeral;
   edt_datfin.SetFocus;
   exit
   end;
if mAlterouGuia then
   fGravarGuiaST;

edt_datfinExit(self);
query_temp:=tQuery.create(nil);
query_temp.databasename:='SG_ASSOC';
Query_temp.Sql.add('Update CADPRO SET PDUND='+Quotedstr('UND')+' where PDUND IS NULL or PDUND='+Quotedstr(' '));
try
   query_temp.execsql;
   fdm1startcommit;
except
   end;

query_temp.Close;

query_temp.SQL.clear;
Query_temp.Sql.add('Update CADPRO SET PDUND=trim(PDUND) where trim(PDUND)<>PDUND ');
try
   query_temp.execsql;
   fdm1startcommit;
except
   end;

freeandnil(query_temp);

if not mem_R0150.Active then
   mem_R0150.Open;
mem_R0150.EmptyTable;


if not mem_R0180.Active then
   mem_R0180.Open;
mem_R0180.EmptyTable;


if not mem_R0200.Active then
   mem_R0200.Open;
mem_R0200.EmptyTable;

if not mem_R0205.Active then
   mem_R0205.Open;
mem_R0205.EmptyTable;

if not mem_R0210.Active then
   mem_R0210.Open;
mem_R0210.EmptyTable;

if not mem_R0220.Active then
   mem_R0220.Open;
mem_R0220.EmptyTable;

if not mem_R0400.Active then
   mem_R0400.Open;
mem_R0400.EmptyTable;


if not mem_R0450.Active then
   mem_R0450.Open;
mem_R0450.EmptyTable;

if not Mem_R0455.Active then
   mem_R0455.Open;
mem_R0455.EmptyTable;

if not Mem_R0460.Active then
   mem_R0460.Open;
mem_R0460.EmptyTable;

if not Mem_R0465.Active then
   mem_R0465.Open;
mem_R0465.EmptyTable;

if not Mem_R0470.Active then
   mem_R0470.Open;
mem_R0470.EmptyTable;

if not mem_e310.Active then
   mem_e310.Open;
mem_e310.EmptyTable;

if not mem_e360.Active then
   mem_e360.Open;
mem_e360.EmptyTable;


memo_erros.Lines.Clear;

items_lista_bloco0.Clear;
items_lista_blocoA.Clear;
items_lista_blocoB.Clear;
items_lista_blocoC.Clear;
items_lista_blocoD.Clear;
items_lista_blocoE.Clear;
items_lista_blocoH.Clear;
items_lista_bloco8.Clear;


mFinalCFOP_Frete:='102';

mQtdRegBloco0:=0;
mQtdRegBlocoA:=0;
mQtdRegBlocoB:=0;
mQtdRegBlocoC:=0;
mQtdRegBlocoD:=0;
mQtdRegBlocoE:=0;
mQtdRegBlocoH:=0;
mQtdRegBloco8:=0;






mQtdRegBloco_0000:=0;
mQtdRegBloco_0001:=0;
mQtdRegBloco_0005:=0;
mQtdRegBloco_0100:=0;
mQtdRegBloco_0125:=0;
mQtdRegBloco_0150:=0;
mQtdRegBloco_0175:=0;
mQtdRegBloco_0200:=0;
mQtdRegBloco_0990:=0;



mQtdRegBloco_A001:=0;
mQtdRegBloco_A990:=0;

mQtdRegBloco_B001:=0;
mQtdRegBloco_B990:=0;

mQtdRegBloco_C001:=0;
mQtdRegBloco_C020:=0;
mQtdRegBloco_C300:=0;
mQtdRegBloco_C305:=0;
mQtdRegBloco_C990:=0;


mQtdRegBloco_D001:=0;
mQtdRegBloco_D990:=0;


mQtdRegBloco_E001:=0;
mQtdRegBloco_E020:=0;
mQtdRegBloco_E025:=0;
mQtdRegBloco_E990:=0;
mQtdRegBloco_E300:=0;
mQtdRegBloco_E310:=0;
mQtdRegBloco_E360:=0;


mQtdRegBloco_H001:=0;
mQtdRegBloco_H020:=0;
mQtdRegBloco_H990:=0;

mQtdRegBloco_8001:=0;
mQtdRegBloco_8990:=0;



mQtdRegBloco_9001:=0;
mQtdRegBloco_9900:=0;
mQtdRegBloco_9990:=0;
mQtdRegBloco_9999:=0;


mtotGNRE:=0;


fBlocoA(0);
fBlocoB(0);
fBlocoC(0);
fBlocoD(0);
fBlocoE(0);
fBlocoH(0);
fBloco8(0);
fBloco0(0);

if trim(items_lista_blocoA.Text)<>'' then
   items_lista_bloco0.Add(trim(items_lista_blocoA.Text));
if trim(items_lista_blocoB.Text)<>'' then
   items_lista_bloco0.Add(trim(items_lista_blocoB.Text));
if trim(items_lista_blocoC.Text)<>'' then
   items_lista_bloco0.Add(trim(items_lista_blocoC.Text));
if trim(items_lista_blocoD.Text)<>'' then
   items_lista_bloco0.Add(trim(items_lista_blocoD.Text));

if trim(items_lista_blocoE.Text)<>'' then
   items_lista_bloco0.Add(trim(items_lista_blocoE.Text));


if trim(items_lista_blocoH.Text)<>'' then
   items_lista_bloco0.Add(trim(items_lista_blocoH.Text));

if trim(items_lista_bloco8.Text)<>'' then
   items_lista_bloco0.Add(trim(items_lista_bloco8.Text));


mQtdRegBloco_9001:=mQtdRegBloco_9001+1;
mLinha:='|9001|0|'; // com dados
Memo1.Lines.Add(mLinha);
items_lista_bloco0.Add(mLinha);
mQtdRegBloco_9900:=mQtdRegBloco_9900+1;

fGerarReg9900('0000',mQtdRegBloco_0000);
fGerarReg9900('0001',mQtdRegBloco_0001);
fGerarReg9900('0005',mQtdRegBloco_0005);
fGerarReg9900('0100',mQtdRegBloco_0100);
fGerarReg9900('0125',mQtdRegBloco_0125);
fGerarReg9900('0150',mQtdRegBloco_0150);
fGerarReg9900('0175',mQtdRegBloco_0175);
fGerarReg9900('0200',mQtdRegBloco_0200);
fGerarReg9900('0990',mQtdRegBloco_0990);



fGerarReg9900('A001',mQtdRegBloco_A001);
fGerarReg9900('A990',mQtdRegBloco_A990);

fGerarReg9900('B001',mQtdRegBloco_B001);
fGerarReg9900('B990',mQtdRegBloco_B990);

fGerarReg9900('C001',mQtdRegBloco_C001);
fGerarReg9900('C020',mQtdRegBloco_C020);
fGerarReg9900('C300',mQtdRegBloco_C300);
fGerarReg9900('C305',mQtdRegBloco_C305);
fGerarReg9900('C990',mQtdRegBloco_C990);

fGerarReg9900('D001',mQtdRegBloco_D001);
fGerarReg9900('D990',mQtdRegBloco_D990);

fGerarReg9900('E001',mQtdRegBloco_E001);
fGerarReg9900('E020',mQtdRegBloco_E020);
fGerarReg9900('E025',mQtdRegBloco_E025);

fGerarReg9900('E300',mQtdRegBloco_E300);
fGerarReg9900('E310',mQtdRegBloco_E310);
fGerarReg9900('E360',mQtdRegBloco_E360);

fGerarReg9900('E990',mQtdRegBloco_E990);



fGerarReg9900('H001',mQtdRegBloco_H001);
fGerarReg9900('H020',mQtdRegBloco_H020);
fGerarReg9900('H990',mQtdRegBloco_H990);


fGerarReg9900('8001',mQtdRegBloco_8001);
fGerarReg9900('8990',mQtdRegBloco_8990);


fGerarReg9900('9001',mQtdRegBloco_9001);
mQtdRegBloco_9900:=mQtdRegBloco_9900+1;
fGerarReg9900('9900',mQtdRegBloco_9900+1);

fGerarReg9900('9990',mQtdRegBloco_9990+1);
fGerarReg9900('9999',mQtdRegBloco_9999+1);

mLinha:='|9990|'+IntToStr(mQtdRegBloco_9900+mQtdRegBloco_9990+1)+'|';
Memo1.Lines.Add(mLinha);
items_lista_bloco0.Add(mLinha);

mQtdRegBloco_9999:=mQtdRegBloco0+mQtdRegBlocoA+mQtdRegBlocoC+mQtdRegBlocoD+mQtdRegBlocoF+mQtdRegBlocoE+mQtdRegBlocoH+mQtdRegBloco8+mQtdRegBloco_9900+mQtdRegBloco_9990;
mQtdRegBloco_9999:=mQtdRegBloco_9999+1;
mLinha:='|9999|'+IntToStr(mQtdRegBloco_9999+2)+'|';
Memo1.Lines.Add(mLinha);
items_lista_bloco0.Add(mLinha);


mNomeArq:=edt_nomarq.Text;
mSeqTeste:=-1;
while true do
   begin
   try
     items_lista_BLOCO0.SaveToFile(mNomeArq);
     edt_nomarq.Text:=mNomeArq;
     break;
   except
      mSeqTeste:=mSeqTeste+1;
      mNomeArq:=fRetiraExtensao(edt_nomarq.Text)+'_'+Formatfloat('00', mSeqTeste)+'.'+fsoExtensao(edt_nomarq.Text);
      end;
   end;
MessageDlg('Arquivo Salvo: '+edt_nomarq.Text,mtInformation,[mbOk],0 );



end;


function TFrm_FISCAL_LivroEle_DF.fBloco0(pOrigem: Integer): Boolean;
var
mValorCampo: String;
Query_R0000: tQuery;
Query_R0100: tQuery;
begin
Query_R0000:=TQuery.Create(nil);
Query_R0000.DatabaseName:='SG_ASSOC';

Query_R0100:=TQuery.Create(nil);
Query_R0100.DatabaseName:='SG_ASSOC';



mTabela:='TAB_R0000';

Query_R0000.close;
Query_R0000.SQL.Clear;
Query_R0000.SQL.Add('Select '+QuotedStr('LFPD')+' as LFPD '
                   +',:edt_versao as COD_VER '
                   +',:COD_SRP as COD_SRP '
                   +',:CB_CODFIN as COD_FIN '
                   +',:edt_datini as DT_INI,:edt_datfin as DT_FIN'
                   +',:CB_IND_ED as IND_ED '
                   +',:CB_IND_CENTR as IND_CENTR '
                   +',CADEMP.RAZAO as NOME '
                   +',CADEMP.CGC as CNPJ'
                   +',LPAD('+QuotedStr('0')+',14,'+QuotedStr('0')+') as CPF'
                   +',EMP_INSC_PISPASEP AS NIT '
                   +',CADEMP.UF as UF '
                   +',CADEMP.INSCRICAO as IE'
                   +',CADLOC.LCODMUN_IBGE as COD_MUN '
                   +',CADEMP.INSCMUNIC as IM '
                   +',CADEMP.EMP_SUFRAMA as SUFRAMA '
                   +',FANTASIA '
                   +',CEP '
                   +',ENDERECO AS END  '
                   +',NUMERO AS NUM '
                   +',EMP_CONT_COMP_END AS COMPL '
                   +',BAIRRO AS BAIRRO '
                   +',0 AS CEP_CP '
                   +',0 AS CP '
                   +',FONE '
                   +',FAX '
                   +',E_MAIL AS EMAIL '
                  +' from CADEMP,CADLOC where CODLOC=LCODLOC AND '
                  +' CODEMP=:CODEMP ');
if length(cb_versao_layout.Text)<3 then
   cb_versao_layout.Text:='001';
if valint(edt_COD_SRP.Text)=0 then
   edt_COD_SRP.Text:=' ';
if length(cb_codfin.Text)<3 then
   cb_codfin.Text:='0';
if length(cb_IND_ED.Text)<3 then
   CB_IND_ED.Text:='0';

Query_R0000.ParamByName('edt_versao').Value        :=trim(copy(cb_versao_layout.Text,1,4));
Query_R0000.ParamByName('COD_SRP').Value           :=edt_COD_SRP.Text;
Query_R0000.ParamByName('CB_CODFIN').Value         :=copy(cb_codfin.text,1,2);
Query_R0000.ParamByName('edt_datini').Value        :=StrToDatetime(edt_datini.Text);
Query_R0000.ParamByName('edt_datfin').Value        :=StrToDatetime(edt_datfin.Text);
Query_R0000.ParamByName('CB_IND_ED').Value         :=copy(cb_IND_ED.text,1,1);
Query_R0000.ParamByName('CB_IND_CENTR').Value      :=copy(CB_IND_CENTR.text,1,1);

Query_R0000.ParamByName('CODEMP').Value            :=codemp;
try
   Query_R0000.Open;
except
   Query_R0000.Sql.savetofile(mpastatemp +'sql.txt');
   end;

if not Query_R0000.IsEmpty then
   begin
   Query_R0000.First;
   mLinha:='';
   while not Query_R0000.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0000:=mQtdRegBloco_0000+1;
      mLinha:='|';
      mLinha:=mLinha+'0000|';
      mLinha:=mLinha+Query_R0000.fieldbyName('LFPD').AsString+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('COD_VER').AsString+'|';
      mLinha:=mLinha+trim(Query_R0000.fieldbyName('COD_SRP').AsString)+'|';
      mLinha:=mLinha+trim(Query_R0000.fieldbyName('COD_FIN').AsString)+'|';
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0000.fieldbyName('DT_INI').AsDateTime)+'|';
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0000.fieldbyName('DT_FIN').AsDateTime)+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('IND_ED').AsString+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('IND_CENTR').AsString+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('NOME').AsString+'|';
      mLinha:=mLinha+insere(Query_R0000.fieldbyName('CNPJ').AsString,'0',14)+'|';
      mLinha:=mLinha+'|';  // cpf

      if fsonumero(Query_R0000.fieldbyName('NIT').AsString)=0 then
         mLinha:=mLinha+'00000000000|'
      else
         mLinha:=mLinha+Query_R0000.fieldbyName('NIT').AsString+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('UF').AsString+'|';
      mLinha:=mLinha+fdeixanum(Query_R0000.fieldbyName('IE').AsString)+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('COD_MUN').AsString+'|';
      mLinha:=mLinha+trim(Query_R0000.fieldbyName('IM').AsString)+'|';
      mLinha:=mLinha+trim(Query_R0000.fieldbyName('SUFRAMA').AsString)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);
      Query_R0000.Next;
      end;
//   Query_R0000.Close;
   end;
// INICIO DO 005


if not Query_R0000.IsEmpty then
   begin
   Query_R0000.First;
   mQtdRegBloco0:=mQtdRegBloco0+1;
   mLinha:='|0001|0|'; // com dados
   mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
   Memo1.Lines.Add(mLinha);
   items_lista_bloco0.Add(mLinha);


   mLinha:='';
   while not Query_R0000.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0005:=mQtdRegBloco_0005+1;
      mLinha:='|';
      mLinha:=mLinha+'0005|';
      mLinha:=mLinha+Query_R0000.fieldbyName('FANTASIA').AsString+'|';
      mLinha:=mLinha+fdeixanum( Query_R0000.fieldbyName('CEP').AsString)+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('END').AsString+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('NUM').AsString+'|';
      mLinha:=mLinha+Query_R0000.fieldbyName('COMPL').AsString+'|'; // COMPLEMENTO
      mLinha:=mLinha+Query_R0000.fieldbyName('BAIRRO').AsString+'|';
      if fsonumero(Query_R0000.fieldbyName('CEP_CP').AsString)>0 then
         mLinha:=mLinha+copy(fdeixanum(Query_R0000.fieldbyName('CEP_CP').AsString),1,8)+'|'
      else
         mLinha:=mLinha+'|';
      mLinha:=mLinha+copy(fdeixanum(Query_R0000.fieldbyName('CP').AsString),1,8)+'|';
      if fsonumero(Query_R0000.fieldbyName('FONE').AsString)>0 then
         mLinha:=mLinha+copy(fdeixanum(Query_R0000.fieldbyName('FONE').AsString),1,10)+'|'
      else
         mLinha:=mLinha+'|';
      if fsonumero(Query_R0000.fieldbyName('FAX').AsString)>0 then
         mLinha:=mLinha+copy(fdeixanum(Query_R0000.fieldbyName('FAX').AsString),1,10)+'|'
      else
         mLinha:=mLinha+'|';
      mLinha:=mLinha+trim(copy(Query_R0000.fieldbyName('EMAIL').AsString,1,300))+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);
      Query_R0000.Next;
      end;
   Query_R0000.Close;
   end;


// TERMINO DO 005




Query_R0100.close;
Query_R0100.SQL.Clear;
Query_R0100.SQL.Add('Select CADEMP.CONTADOR as NOME'
                   +',LPAD(CADEMP.EMP_CONT_CNPJ,14,'+QuotedStr('0')+') as CNPJ '
                   +',LPAD(CADEMP.EMP_CONT_CPF,11,'+QuotedStr('0')+') as CPF '
                   +',CADEMP.CRC_CONTADOR as CRC'
                   +',LUF AS UF'
                   +',CADEMP.EMP_CONT_CEP as CEP '
                   +',CADEMP.EMP_CONT_ENDER as END'
                   +',CADEMP.EMP_CONT_NUM_END as NUM '
                   +',CADEMP.EMP_CONT_COMP_END as COMPL'
                   +',CADEMP.EMP_CONT_BAIRRO as BAIRRO '
                   +',0 AS CEP_CP '
                   +',0 AS CP '
                   +',LPAD( NVL( LTRIM(translate(CADEMP.EMP_CONT_FONE, '
                   +' translate(CADEMP.EMP_CONT_FONE, '+QuotedStr('1234567890')+', '+QuotedStr(' ')+') , '+QuotedStr(' ')+')),0),10,'+QuotedStr('0')+') as FONE '
                   +',LPAD( NVL( LTRIM(translate(CADEMP.EMP_CONT_FAX, '
                   +' translate(CADEMP.EMP_CONT_FAX, '+QuotedStr('1234567890')+', '+QuotedStr(' ')+') , '+QuotedStr(' ')+')),0),10,'+QuotedStr('0')+') as FAX '
                   +' ,CADEMP.EMP_CONT_EMAIL as EMAIL '
                   +' from CADEMP,CADLOC where LCODLOC=CODLOC '
                   +' AND CODEMP=:CODEMP ');
Query_R0100.ParamByName('CODEMP').Value:=codemp;
try
   Query_R0100.Open;
except
   end;

mTabela:='TAB_R0100';
if not Query_R0100.IsEmpty then
   begin
   Query_R0100.First;
   mLinha:='';
   while not Query_R0100.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0100:=mQtdRegBloco_0100+1;

      mLinha:='|';
      mLinha:=mLinha+'0100|'; // 01
      mLinha:=mLinha+Query_R0100.fieldbyName('NOME').AsString+'|';  // 02
      if fsonumero(Query_R0100.fieldbyName('CNPJ').AsString)=0 then
         mLinha:=mLinha+'|' // 03
      else
         mLinha:=mLinha+Query_R0100.fieldbyName('CNPJ').AsString+'|'; // 03

      if (fsonumero(Query_R0100.fieldbyName('CPF').AsString)=0) and  (fsonumero(Query_R0100.fieldbyName('CNPJ').AsString)=0) then
         memo_erros.Lines.Add('CPF ou CNPJ é obrigatorio, para coloca-lo va em Sistema->Empresa e coloque!');

      if fsonumero(Query_R0100.fieldbyName('CPF').AsString)=0 then
         begin
         mLinha:=mLinha+'|'; // 04
         end
      else
         begin
         mValorCampo:=Query_R0100.fieldbyName('CPF').Value;
         mLinha:=mLinha+mValorCampo+'|'; // 04
         end;
      mLinha:=mLinha+Query_R0100.fieldbyName('CRC').AsString+'|'; // 05
      mLinha:=mLinha+Query_R0100.fieldbyName('UF').AsString+'|'; // 06
      mLinha:=mLinha+fdeixanum(Query_R0100.fieldbyName('CEP').AsString)+'|'; // 07
      mLinha:=mLinha+Query_R0100.fieldbyName('END').AsString+'|'; // 08
      mLinha:=mLinha+Query_R0100.fieldbyName('NUM').AsString+'|'; // 09
      mLinha:=mLinha+Query_R0100.fieldbyName('COMPL').AsString+'|'; // 10
      mLinha:=mLinha+Query_R0100.fieldbyName('BAIRRO').AsString+'|'; // 11
      mLinha:=mLinha+fdeixanum(Query_R0100.fieldbyName('CEP_CP').AsString)+'|'; // 12
      mLinha:=mLinha+Query_R0100.fieldbyName('CP').AsString+'|'; // 13
      if fsonumero(Query_R0100.fieldbyName('FONE').AsString)=0 then
         begin
         mLinha:=mLinha+'|'; // 14
         memo_erros.Lines.Add('Telefone do Contabilista é obrigatorio, para coloca-lo va em Sistema->Empresa e coloque!');
         end
      else
         mLinha:=mLinha+insere(Query_R0100.fieldbyName('FONE').AsString,'0',10)+'|'; // 14
      if fsonumero(Query_R0100.fieldbyName('FAX').AsString)=0 then
         mLinha:=mLinha+'|' // 15
      else
         mLinha:=mLinha+insere(Query_R0100.fieldbyName('FONE').AsString,'0',10)+'|'; // 15
      mLinha:=mLinha+Query_R0100.fieldbyName('EMAIL').AsString+'|'; // 16
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);
      Query_R0100.Next;
      end;
   end;

// 0105

mTabela:='TAB_R0125';

if not Query_R0100.IsEmpty then
   begin
   Query_R0100.First;
   mLinha:='';
   while not Query_R0100.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0125:=mQtdRegBloco_0125+1;

      mLinha:='|';
      mLinha:=mLinha+'0125|'; // 01
      mLinha:=mLinha+Query_R0100.fieldbyName('NOME').AsString+'|';  // 02
      if fsonumero(Query_R0100.fieldbyName('CNPJ').AsString)=0 then
         mLinha:=mLinha+'|' // 03
      else
         mLinha:=mLinha+Query_R0100.fieldbyName('CNPJ').AsString+'|'; // 03


      if fsonumero(Query_R0100.fieldbyName('CPF').AsString)=0 then
         mLinha:=mLinha+'|' // 04
      else
         begin
         mValorCampo:=Query_R0100.fieldbyName('CPF').Value;
         mLinha:=mLinha+mValorCampo+'|'; // 04
         end;

      if fsonumero(Query_R0100.fieldbyName('FONE').AsString)=0 then
         mLinha:=mLinha+'|' // 14
      else
         mLinha:=mLinha+insere(Query_R0100.fieldbyName('FONE').AsString,'0',10)+'|'; // 14
      if fsonumero(Query_R0100.fieldbyName('FAX').AsString)=0 then
         mLinha:=mLinha+'|' // 15
      else
         mLinha:=mLinha+insere(Query_R0100.fieldbyName('FAX').AsString,'0',10)+'|'; // 15
      mLinha:=mLinha+Query_R0100.fieldbyName('EMAIL').AsString+'|'; // 16
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);
      Query_R0100.Next;
      end;
   Query_R0100.Close;
   end;

Query_R0100.Close;


// 0105


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADLOC','LCODEMP','CCODEMP','LCODLOC','CCODLOC');



// REGISTRO 150

mTabela:='TAB_R0150';
if not mem_R0150.IsEmpty then
   begin
   mem_r0150.SortOnFields('COD_PART');
   mem_R0150.First;
   if mQtdRegBloco0<1 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);
      end;

   mLinha:='';
   while not mem_R0150.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0150:=mQtdRegBloco_0150+1;

      mLinha:='|';
      mLinha:=mLinha+'0150|';
      mLinha:=mLinha+mem_R0150.fieldbyName('COD_PART').AsString+'|';
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('NOME').AsString)+'|';
      mLinha:=mLinha+Formatfloat('00000', fsonumero(mem_R0150.fieldbyName('COD_PAIS').AsString))+'|';
      if fsonumero(mem_R0150.fieldbyName('CNPJ').AsString)=0 then
         begin
         mLinha:=mLinha+'|';
         end
      else
         begin
         mLinha:=mLinha+mem_R0150.fieldbyName('CNPJ').AsString+'|';
         end;

      if fsonumero(mem_R0150.fieldbyName('CPF').AsString)=0 then
         mLinha:=mLinha+'|'
      else
         begin
         mLinha:=mLinha+mem_R0150.fieldbyName('CPF').AsString+'|';
         end;
      mLinha:=mLinha+'|'; // CEI - Número de inscrição no Cadastro Específico do INSS
      mLinha:=mLinha+'|'; // NIT - Número de Identificação do Trabalhador, Pis, Pasep, SUS
      mLinha:=mLinha+mem_R0150.fieldbyName('UF').AsString+'|';
      if copy(uppercase( trim(mem_R0150.FieldbyName('IE').AsString)),1,5)='ISENT' then
         mLinha:=mLinha+'|'
      else
         mLinha:=mLinha+fdeixanum(mem_R0150.fieldbyName('IE').AsString)+'|';
      mLinha:=mLinha+'|'; // IE_ST - Inscrição Estadual do participante na unidade da federação do destinatário, na condição de contribuinte substituto

      mLinha:=mLinha+mem_R0150.fieldbyName('COD_MUN').AsString+'|';
      mLinha:=mLinha+'|'; // IM - IE_ST - Inscrição Estadual do participante na unidade da federação do destinatário, na condição de contribuinte substituto

      mLinha:=mLinha+mem_R0150.fieldbyName('SUFRAMA').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);

      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0175:=mQtdRegBloco_0175+1;

      mLinha:='|';
      mLinha:=mLinha+'0175|';
      mLinha:=mLinha+fdeixanum(mem_R0150.fieldbyName('CEP').AsString)+'|';
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('END').AsString)+'|';
      mLinha:=mLinha+mem_R0150.fieldbyName('NUM').AsString+'|';
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('COMPL').AsString)+'|';
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('BAIRRO').AsString)+'|';
      mLinha:=mLinha+'|'; // CEP_CP - Código de Endereçamento Postal da caixa postal
      mLinha:=mLinha+'|'; // CP - Caixa postal do participante

      if fsonumero(mem_R0150.fieldbyName('FONE').AsString)=0 then
         mLinha:=mLinha+'|' // 09
      else
         mLinha:=mLinha+insere(mem_R0150.fieldbyName('FONE').AsString,'0',10); // 09

      if fsonumero(mem_R0150.fieldbyName('FAX').AsString)=0 then
         mLinha:=mLinha+'|' // 10
      else
         mLinha:=mLinha+insere(mem_R0150.fieldbyName('FAX').AsString,'0',10); // 10
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);

      mem_R0150.Next;
      end;
   mem_R0150.Close;
   end;

// TERMINO REGISTRO 150





// REGISTRO 200

mTabela:='TAB_R0200';
if not mem_R0200.IsEmpty then
   begin
   mem_R0200.SortOnFields('COD_ITEM');

   mem_R0200.First;
   if mQtdRegBloco0<1 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);
      end;

   mLinha:='';
   while not mem_R0200.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0200:=mQtdRegBloco_0200+1;




      mLinha:='|';
      mLinha:=mLinha+'0200|';
      mLinha:=mLinha+mem_R0200.fieldbyName('COD_ITEM').AsString+'|';

      mLinha:=mLinha+mem_R0200.fieldbyName('DESCR_ITEM').AsString+'|';

      mLinha:=mLinha+mem_R0200.fieldbyName('COD_GEN').AsString+'|';

      mLinha:=mLinha+mem_R0200.fieldbyName('COD_LST').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_bloco0.Add(mLinha);

      mem_R0200.Next;
      end;
   mem_R0200.Close;
   end;

// REGISTRO 990


if mqtdRegBloco0<1 then
   begin
   mQtdRegBloco0:=mQtdRegBloco0+1;
   mLinha:='|0001|1|'; // SEM dados
   mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
   Memo1.Lines.Add(mLinha);
   items_lista_bloco0.Add(mLinha);
   end;



if mqtdRegBloco0>0 then
   begin
   mQtdRegBloco_0990:=mQtdRegBloco_0990+1;
   mQtdRegBloco0:=mQtdRegBloco0+1;
   mLinha:='|0990|'+inttostr(mqtdRegBloco0)+'|';
   Memo1.Lines.Add(mLinha);
   items_lista_bloco0.Add(mLinha);
   end;


Query_R0000.Close;
FreeAndNil(Query_R0000);
Query_R0100.Close;
FreeAndNil(Query_R0100);

// TERMINO REGISTRO 990


//fMontarInstrucao_Parametros_Geral(0);

end;


function TFrm_FISCAL_LivroEle_DF.fTestarCliFor(pCodigo: String): Boolean;
var
query_temp: tQuery;
mforCli: String;
mCodigo: String;
begin
if not mem_R0150.Locate('COD_PART',pCodigo,[]) then
   begin
   query_temp:=tQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.Close;
   query_temp.SQL.Clear;
   mforCli:=pCodigo[1];
   mcodigo:=copy(mcodigo,2,length(pcodigo)-1);
   if mforcli='F' then
      begin
      query_temp.SQL.add('select CRCODPAIS AS COD_PAIS '
                        +',LPAD(FCGC,14,'+QuotedStr('0')+') AS CNPJ '
                        +',LPAD('+QuotedStr('0')+',11,'+QuotedStr('0')+') AS CPF '
                        +',FIE AS IE '
                        +',LUF AS UF '
                        +',LCODMUN_IBGE AS COD_MUN '
                        +','+QuotedStr('     ')+' AS SUFRAMA '
                        +',FNLOG AS END '
                        +',FNUM AS NUM '
                        +',FRAZAO AS NOME '
                        +',FCOMPL AS COMPL '
                        +',FBAIRRO AS BAIRRO '
                        +' FROM CADFOR,CADUF,CADLOC,NFE_CADREG '
                        +' WHERE PUF=FUF AND '
                        +' LCODLOC(+)=FCODLOC AND '
                        +' CRCODREG(+)=PCODREG_IBGE '
                        +' and FCODFOR=:CODIGO ');
      end

   else
      begin
      query_temp.SQL.add('select CRCODPAIS AS COD_PAIS '
                        +',LPAD(CCNPJ,14,'+QuotedStr('0')+') AS CNPJ '
                        +',LPAD(CCPF,11,'+QuotedStr('0')+') AS CPF '
                        +',CIE AS IE '
                        +',LCODMUN_IBGE AS COD_MUN '
                        +',LUF AS UF '
                        +',CSUFRAMA AS SUFRAMA '
                        +',CLOG AS END '
                        +',CNUM AS NUM'
                        +',CRAZAO AS NOME '
                        +',CCOMPL AS COMPL '
                        +',CBAIRRO AS BAIRRO '
                        +' FROM CADCLI,CADUF,CADLOC,NFE_CADREG '
                        +' WHERE PUF=CUF AND '
                        +' LCODLOC=CCODLOC AND '
                        +' CRCODREG=PCODREG_IBGE '
                        +' and CCODCLI=:CODIGO ');
      end;
   query_temp.ParamByName('CODIGO').Value:=fsonumero(pCodigo);
   try
      query_temp.Open;
   except
      query_temp.sql.savetofile(mpastatemp +'sql.TXT');
      end;
   if not query_temp.IsEmpty then
      begin
      mem_R0150.Append;
      mem_R0150COD_PART.Value:=pCodigo;
      mem_R0150COD_PAIS.Value:=query_temp.fieldbyName('COD_PAIS').AsInteger;
      if fsonumero(query_temp.fieldbyName('CNPJ').AsString)>0 then
         begin
         mem_R0150CNPJ.Value    :=query_temp.fieldbyName('CNPJ').AsString;
         mem_R0150CPF.Value     :='';
         end
      else
         begin
         mem_R0150CNPJ.Value    :='';
         mem_R0150CPF.Value     :=query_temp.fieldbyName('CPF').AsString;
         end;




//      if copy(uppercase( trim(Query_temp.FieldbyName('IE').AsString)),1,5)='ISENT' then
      if fsonumero(Query_temp.FieldbyName('IE').AsString)=0 then
         mem_R0150IE.Value     :=''
      else

         mem_R0150IE.Value     :=fDeixanum(query_temp.fieldbyName('IE').AsString);
      mem_R0150COD_MUN.Value   :=query_temp.fieldbyName('COD_MUN').AsInteger;
      mem_R0150NOME.Value      :=query_temp.fieldbyName('NOME').AsString;
      mem_R0150SUFRAMA.Value   :=trim(query_temp.fieldbyName('SUFRAMA').AsString);
      mem_R0150END.Value       :=query_temp.fieldbyName('END').AsString;
      mem_R0150NUM.Value       :=trim(query_temp.fieldbyName('NUM').AsString);
      mem_R0150NUM.Value       :=trim(query_temp.fieldbyName('NUM').AsString);
      mem_R0150UF.Value        :=query_temp.fieldbyName('UF').AsString;
      mem_R0150BAIRRO.Value    :=query_temp.fieldbyName('BAIRRO').AsString;
      mem_R0150.Post;
      end;
   end;
FreeandNil(query_temp);
result:=true;
end;


function TFrm_FISCAL_LivroEle_DF.fBlocoA(pOrigem: Integer): Boolean;
var
Query_emp: tQuery;
begin
Query_emp:=TQuery.Create(nil);
Query_emp.DatabaseName:='SG_ASSOC';
Query_emp.Close;
Query_emp.Sql.Clear;
Query_emp.Sql.Add('Select CADLOC.LCODMUN_IBGE as COD_MUN '
                  +' from CADEMP,CADLOC where CODLOC=LCODLOC AND '
                  +' CODEMP=:CODEMP ');
Query_emp.ParambyName('CODEMP').value:=codemp;
Query_Emp.Open;
mQtdRegBlocoA:=mQtdRegBlocoA+1;

mLinha:='|A001|1|'; // 0-com dados 1-Sem Dados
mLinha:=mLinha+Query_emp.FieldbyName('COD_MUN').asstring+'|';
Memo1.Lines.Add(mLinha);
items_lista_blocoA.Add(mLinha);
mQtdRegBloco_A001:=mQtdRegBloco_A001+1;
mQtdRegBlocoA:=mQtdRegBlocoA+1;
mLinha:='|A990|'+IntToStr(mQtdRegBlocoA)+'|' ; // sem dados
mQtdRegBloco_A990:=mQtdRegBloco_A990+1;
Memo1.Lines.Add(mLinha);
items_lista_blocoA.Add(mLinha);
freeandnil(Query_Emp);
result:=true;
end;



function TFrm_FISCAL_LivroEle_DF.fBlocoB(pOrigem: Integer): Boolean;
var
Query_emp: tQuery;
begin
Query_emp:=TQuery.Create(nil);
Query_emp.DatabaseName:='SG_ASSOC';
Query_emp.Close;
Query_emp.Sql.Clear;
Query_emp.Sql.Add('Select CADLOC.LCODMUN_IBGE as COD_MUN '
                  +' from CADEMP,CADLOC where CODLOC=LCODLOC AND '
                  +' CODEMP=:CODEMP ');
Query_emp.ParambyName('CODEMP').value:=codemp;
Query_Emp.Open;
mQtdRegBlocoB:=mQtdRegBlocoB+1;

mLinha:='|B001|1|'; // 0-com dados 1-Sem Dados
mLinha:=mLinha+Query_emp.FieldbyName('COD_MUN').asstring+'|';
Memo1.Lines.Add(mLinha);
items_lista_blocoB.Add(mLinha);
mQtdRegBloco_B001:=mQtdRegBloco_B001+1;
mQtdRegBlocoB:=mQtdRegBlocoB+1;
mLinha:='|B990|'+IntToStr(mQtdRegBlocoB)+'|' ; // sem dados
mQtdRegBloco_B990:=mQtdRegBloco_B990+1;
Memo1.Lines.Add(mLinha);
items_lista_blocoB.Add(mLinha);
freeandnil(Query_Emp);
result:=true;
end;



// inicio do bloco C

function TFrm_FISCAL_LivroEle_DF.fBlocoC(pOrigem: Integer): Boolean;
var
mTabNivel_02: String;
mTemServicos: boolean;
mRestoCFOP: Integer;
mComplInstruc: String;
mNum_item: Integer;
begin
if query_c020=nil then
   begin
   query_c020:=tQuery.create(nil);
   query_c020.DatabaseName:='SG_ASSOC';
   end;
if query_c300=nil then
   begin
   query_c300:=tQuery.create(nil);
   query_c300.DatabaseName:='SG_ASSOC';
   end;
if query_c305=nil then
   begin
   query_c305:=tQuery.create(nil);
   query_c305.DatabaseName:='SG_ASSOC';
   end;



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');



query_c020.Close;
query_c020.SQL.Clear;
query_c020.SQL.Add('Select CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END AS IND_OPER '
                     +'      ,0 AS IND_EMIT '
                     +','+chr(39)+'C'+chr(39)+'|| NSCODCLI AS COD_PART '
                     +'      ,NSMODELO AS COD_MOD '
                     +'      ,DECODE(max(NSSTATUS),9,'+QuotedStr('02')+',8,'+QuotedStr('02')+','+QuotedStr('00')+') AS COD_SIT '
                     +'      ,NSSERIE AS SER '
                     +'      ,NSNUMERO AS NUM_DOC '
                     +'      ,NSDTEMIS AS DT_DOC '
                     +'      ,NSDTEMIS AS DT_E_S '
                     +'      ,P2CFO AS COD_NAT '
                     +'      ,sum(((P2QTD*P2PRECO)+P2VALIPI+P2ICMSR)-P2TOTDES) as VL_DOC '
                     +'      ,NSAVAP AS IND_PGTO '
                     +'      , sum(P2TOTDES) as VL_DESC '
                     +'      , sum(P2QTD*P2PRECO) as VL_MERC '
                     +'      ,DECODE(NSFRETE,0,0,NSFRETEPC) AS IND_FRT '
                     +'      ,NSFRETE AS VL_FRT '
                     +'      ,sum(P2VSEGRAT) AS VL_SEG '
                     +'      ,sum(P2VDESPACESRAT) AS VL_OUT_DA '



                     +'      ,sum(P2BASEN+decode(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                     +'      ,sum(P2ICMSN+decode(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS '
                     +'      ,sum(P2BASER) AS VL_BC_ST '
                     +'      ,sum(p2ICMSR) AS VL_ST '
                     +'      ,sum(P2VALIPI) AS VL_IPI '
                     +'      ,'+QuotedStr('   ')+' as COD_INF_OBS '
                     +'      ,NSCODEMP AS CODEMP '
                     +'      ,NSLOTSEQ_CP AS LOTSEQ '
                     +'      ,NSCHAVEP AS CHAVE '
                     +'      ,NSORDEMP AS ORDEM '
                     +'      FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' NSCODEMP=0'+IntToStr(codemp)+' and '
                     +' NSSTATUS<>-9 and NSSTATUS<>2 and NSTIPO<2 and (NSNUMERO>0)');
if fsonumero(edt_datini.Text)<>0 then
   query_c020.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_c020.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));
query_c020.SQL.Add(' AND NOT (NSSTATUS>=8 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');
mComplInstruc:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c020.sql.Add(' and NSNUMERO '+mComplInstruc);

mComplInstruc:=fItensListBox(0,lbx_numcf,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c020.sql.Add(' and NSNUMCUP '+mComplInstruc);


query_c020.SQL.add('Group by  CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END '
                     +'      ,NSCODCLI'
                     +'      ,NSMODELO  '
                     +'      ,DECODE(NSSTATUS,9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+')  '
                     +'      ,NSSERIE '
                     +'      ,NSNUMERO '
                     +'      ,NSDTEMIS  '
                     +'      ,P2CFO '
                     +'      ,NSAVAP  '
                     +'      ,DECODE(NSFRETE,0,0,NSFRETEPC) '
                     +'      ,NSFRETE  '
                     +'      ,NSCODEMP '
                     +'      ,NSLOTSEQ_CP  '
                     +'      ,NSCHAVEP  '
                     +'      ,NSORDEMP  ');

query_c020.SQL.add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');
la_instrucao:=la_instrucao+' and ';

fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');


query_c020.SQL.add(' Select 0 IND_OPER '
                     +'      ,1 AS IND_EMIT '
                     +','+chr(39)+'F'+chr(39)+'||max(FCODFOR) AS COD_PART '
                     +'      ,max(NeMODELO) AS COD_MOD '
                     +'      ,DECODE(max(NESTATUS),9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+') AS COD_SIT '
                     +'      ,max(NESERIE) AS SER '
                     +'      ,max(NENUMERO) AS NUM_DOC '
                     +'      ,max(NEDTEMIS) AS DT_DOC '
                     +'      ,max(NEDTENT) AS DT_E_S '
                     +'      ,PF2CFO AS COD_NAT '
                     +'      ,sum(PF2TOTLIQ) AS VL_DOC '
                     +'      ,max(NEAVAP) AS IND_PGTO '
                     +'      ,sum(nvl(PF2TOTDES,0)) as VL_DESC '
                     +'      ,sum(pf2qtdp*pf2pu) as VL_MERC '
                     +'      ,DECODE(max(NEFRETE),0,0,max(NEFRETEPC)) AS IND_FRT '
                     +'      ,sum(PF2FRERAT) AS VL_FRT '

                     +'      ,0 AS VL_SEG       '

                     +'      ,sum(PF2DESCRATOUT) AS VL_OUT_DA '
                     +'      ,sum(PF2BASEN)+ max(DECODE(NEICMS_FRETE,0,0,NEFRETE)) AS VL_BC_ICMS '
                     +'      ,sum(PF2ICMSN)+ max(NEICMS_FRETE) AS VL_ICMS '
                     +'      ,sum(PF2BASER) AS VL_BC_ST '
                     +'      ,sum(PF2ICMSR) AS VL_ST '
                     +'      ,sum(PF2IPI) AS VL_IPI '
                     +'      ,'+QuotedStr('   ')+' as COD_INF_OBS '
                     +'      ,NECODEMP AS CODEMP '
                     +'      ,NELOTSEQ_CP AS LOTSEQ '
                     +'      ,NECHAVEP AS CHAVE '
                     +'      ,0 AS ORDEM '
                     +'      FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +' NECODEMP=0'+IntToStr(codemp)+' and '
                    +' NESTATUS<>-9 ');

if fsonumero(edt_datini.Text)<>0 then
   query_c020.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_c020.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));
query_c020.SQL.Add('and NOT NECFO in (1353,2353,1303,2303)');

mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c020.sql.Add(' and NENUMERO '+mComplInstruc);

query_c020.SQL.Add(' group by PF2CFO, NECODEMP '
                     +'      ,NELOTSEQ_CP '
                     +'      ,NECHAVEP ');
mTemServicos:=true;

if mTemServicos then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');

   query_c020.SQL.add(' union  ');
   query_c020.SQL.add(' Select 0 IND_OPER '
                        +'      ,1 AS IND_EMIT '
                        +','+chr(39)+'F'+chr(39)+'||max(FCODFOR) AS COD_PART '
                        +'      ,max(NeMODELO) AS COD_MOD '
                        +'      ,DECODE(max(NESTATUS),9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+') AS COD_SIT '
                        +'      ,max(NESERIE) AS SER '
                        +'      ,NENUMERO AS NUM_DOC '
                        +'      ,NEDTEMIS AS DT_DOC '
                        +'      ,max(NEDTENT) AS DT_E_S '
                        +'      ,MAX(NECFO) AS COD_NAT '
                        +'      ,max(NETOTNOT) AS VL_DOC '
                        +'      ,max(NEAVAP) AS IND_PGTO '
                        +'      ,0 as VL_DESC '
                        +'      ,max(netotmer) as VL_MERC '
                        +'      ,DECODE(max(NEFRETE),0,0,max(NEFRETEPC)) AS IND_FRT '
                        +'      ,max(NEFRETE) AS VL_FRT '

                        +'      ,0 AS VL_SEG       '
                        +'      ,sum(NEOUTRAS+NEOUTDESP) AS VL_OUT_DA '
                        +'      ,max(NEBASEN+NEOUTRAS+DECODE(NEICMS_FRETE,0,0,NEFRETE)) AS VL_BC_ICMS '
                        +'      ,max(NEICMSN+NEOUTRAS_IMP+NEICMS_FRETE) AS VL_ICMS '
                        +'      ,max(NEBASER) AS VL_BC_ST '
                        +'      ,max(NEICMSR) AS VL_ST '
                        +'      ,max(NEIPI) AS VL_IPI '
                        +'      ,'+QuotedStr('   ')+' as COD_INF_OBS '
                        +'      ,NECODEMP AS CODEMP '
                        +'      ,NELOTSEQ_CP AS LOTSEQ '
                        +'      ,NECHAVEP AS CHAVE '
                        +'      ,0 AS ORDEM '

                        +'      FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                       +' NECODEMP=0'+IntToStr(codemp)+' and '
                       +' NESTATUS<>-9 ');

   if fsonumero(edt_datini.Text)<>0  then
      query_c020.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
   if fsonumero(edt_datfin.Text)<>0 then
      query_c020.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));
   query_c020.SQL.Add(' and NECHAVEP=0'
                  +' and SUBSTR(TO_CHAR(NECFO),2,3)<>'+QuotedStr('949'));
   query_c020.SQL.Add('and NOT NECFO in (1252,2252,1353,2353,1303,2303,1253,2253,2352,1352)');

   query_c020.SQL.Add('and NECHAVEP=0');
   query_c020.SQL.Add('and NETIPO=56');

   mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
   if trim(mComplInstruc)<>'' then query_c020.sql.Add(' and NENUMERO '+mComplInstruc);


   query_c020.SQL.Add('and NOT NECFO in (1252,1253,2252,2253)');

   query_c020.SQL.Add(' group by NECODEMP '
                        +'      ,NELOTSEQ_CP '
                        +'      ,NECHAVEP '
                        +'      ,NENUMERO,NEDTEMIS ' );

   end;

try
   query_c020.Open;
except
   query_c020.SQL.SaveToFile(mpastatemp +'sql.txt');
   MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
   exit;
   end;




mTabela:='TAB_C020';
if not query_c020.IsEmpty then
   begin
   mLinha:='|C001|0|'; // com dados
   mQtdRegBlocoC:=mQtdRegBlocoC+1;
   mQtdRegBloco_C001:=mQtdRegBloco_C001+1;

   Memo1.Lines.Add(mLinha);
   items_lista_BlocoC.Add(mLinha);

   while not query_c020.Eof do
      begin
// INICIO C

      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C020:=mQtdRegBloco_C020+1;
      if query_c020.FieldByName('COD_SIT').AsInteger<>2 then
         fTestarCliFor(query_c020.fieldbyName('COD_PART').AsString);

      mLinha:='|';
      mLinha:=mLinha+'C020|';  // 01
      mLinha:=mLinha+query_c020.fieldbyname('IND_OPER').AsString+'|'; // 02
      mLinha:=mLinha+query_c020.fieldbyname('IND_EMIT').AsString+'|'; //3
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',query_c020.fieldbyname('COD_PART').AsString)+'|'; //04
      if not LocalizaArray(mModeloNF_valido,query_c020.fieldbyname('COD_MOD').AsString) then
         mLinha:=mLinha+'01|' //5
      else
         mLinha:=mLinha+query_c020.fieldbyname('COD_MOD').AsString+'|'; //5
      mLinha:=mLinha+query_c020.fieldbyname('COD_SIT').AsString+'|'; // 06
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',trim(query_c020.fieldbyname('SER').AsString))+'|'; //7
      mLinha:=mLinha+query_c020.fieldbyname('NUM_DOC').AsString+'|'; // 08
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=-2,'',FormatdateTime(fdt_efd, query_c020.fieldbyname('DT_DOC').AsDateTime))+'|'; //10
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=-2,'',FormatdateTime(fdt_efd, query_c020.fieldbyname('DT_E_S').AsDateTime))+'|'; //11
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=-2,'',trim(query_c020.fieldbyname('COD_NAT').AsString))+'|'; //7
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_DOC').AsFloat))+'|'; //12
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=-2,'',query_c020.fieldbyname('IND_PGTO').AsString)+'|'; //13
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_DESC').AsFloat))+'|'; //14
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_MERC').AsFloat))+'|'; //15
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=-2,'',query_c020.fieldbyname('IND_FRT').AsString)+'|'; //16
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_FRT').AsFloat))+'|'; //17
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_SEG').AsFloat))+'|'; //18
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_OUT_DA').AsFloat))+'|'; //19
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_BC_ICMS').AsFloat))+'|'; //20
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_ICMS').AsFloat))+'|'; //21
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_BC_ST').AsFloat))+'|'; //22
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_ST').AsFloat))+'|'; //23
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c020.fieldbyname('VL_IPI').AsFloat))+'|'; //24
      mLinha:=mLinha+iif(query_c020.FieldByName('COD_SIT').AsInteger=2,'',query_c020.fieldbyname('COD_INF_OBS').AsString)+'|'; //25
      Memo1.Lines.Add(mLinha);

      items_lista_BlocoC.Add(mLinha);
      // TERMINO adentação registro C120
      query_C300.Close;
      query_C300.SQL.Clear;
      if (query_c020.FieldByName('CHAVE').AsFloat>0) and (query_c020.FieldByName('COD_SIT').AsFloat<>2) then
         begin
         if query_c020.FieldByName('IND_EMIT').AsInteger=1 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

            query_C300.SQL.Add('SELECT PF2ITEM AS NUM_ITEM'
                                    +', TO_CHAR(PDCODPRO) AS COD_ITEM '
                                    +', '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL'
                                    +', PF2PU AS VL_UNIT '
                                    +', PF2QTDP AS QTD '
                                    +',upper(NVL(PDUND,'+QuotedStr('UND')+')) AS UNID'
                                    +', (PF2PU*PF2QTDP) AS VL_ITEM '
                                    +' ,nvl(PF2TOTDES,0) AS VL_DESC_I '
                                    +',0 AS IND_MOV '
                                    +',PDCODNCM AS COD_NCM '
                                    +','+QuotedStr('00')+' EX_NCM '
                                    +','+QuotedStr('00')+' EX_II '
                                    +', CASE WHEN PF2SIT='+chr(39)+'000'+chr(39)
                                    +' AND PF2BASEN=0 THEN '
                                    +chr(39)+'040'+chr(39)
                                   +' ELSE PF2SIT END  '
                                   +' AS CST '
                                    +',PF2CFO AS CFOP '

                                    +',PF2BASEN AS VL_BC_ICMS_I '
                                    +' ,PF2ALIQ AS ALIQ_ICMS_I '
                                    +',PF2ICMSN AS VL_ICMS_I '
                                    +',PF2BASER AS VL_BC_ST_I '
                                    +', PF2ST_ICMSDEB AS ALIQ_ST '
                                    +',PF2ICMSR AS VL_ST_I '
                                    +' ,DECODE(PF2IPI,0,0,PF2IPI) AS VL_BC_IPI '
                                    +' ,PF2ALIPI AS ALIQ_IPI '
                                    +' ,PF2IPI as VL_IPI_I '
                                    +','+QuotedStr('00')+' CTIPI '
                                    +' FROM CADNE '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' PF2CODEMP=0'+query_c020.FieldByName('CODEMP').AsString);
            query_C300.SQL.Add(' and PF2LOTSEQ=0'+query_c020.FieldByName('LOTSEQ').AsString);
            query_C300.SQL.Add(' and PF2CHAVE=0'+query_c020.FieldByName('CHAVE').AsString);

            try
               query_C300.Open;
            except
               query_C300.SQL.savetofile(mpastatemp +'sql.txt');
               messagedlg('erro ao abrir qrc170',mterror,[mbOk],0);
               exit;
               end;
            end
         else  // if query_c020.fieldbyname('COD_MOD').AsString<>'55' then
//         else
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');



            query_C300.SQL.Add('SELECT P2ITEM AS NUM_ITEM'
                                    +', TO_CHAR(PDCODPRO) AS COD_ITEM '
                                    +', '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL'
                                    +', P2PRECO AS VL_UNIT '
                                    +', P2QTD AS QTD '
                                    +',upper(NVL(PDUND,'+QuotedStr('UND')+')) AS UNID'
                                    +', (P2PRECO*P2QTD) AS VL_ITEM '
                                    +' ,nvl(P2TOTDES,0) AS VL_DESC_I '
                                    +',0 AS IND_MOV '
                                    +',PDCODNCM AS COD_NCM '
                                    +','+QuotedStr('00')+' EX_NCM '
                                    +','+QuotedStr('00')+' EX_II '
                                    +', CASE WHEN P2SIT='+chr(39)+'000'+chr(39)
                                    +' AND P2BASEN=0 THEN '
                                    +chr(39)+'040'+chr(39)
                                   +' ELSE P2SIT END  '
                                   +' AS CST '
                                    +',P2CFO AS CFOP '

                                    +',P2BASEN AS VL_BC_ICMS_I '
                                    +' ,P2ALIQ AS ALIQ_ICMS_I '
                                    +',P2ICMSN AS VL_ICMS_I '
                                    +',P2BASER AS VL_BC_ST_I '
                                    +', P2ST_ICMDEB AS ALIQ_ST '
                                    +',P2ICMSR AS VL_ST_I '
                                    +' ,DECODE(P2VALIPI,0,0,P2VALIPI) AS VL_BC_IPI '
                                    +' ,P2ALIPI AS ALIQ_IPI '
                                    +' ,P2VALIPI as VL_IPI_I '
                                    +','+QuotedStr('00')+' CTIPI '

                                    +' FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' P2CODEMP=0'+query_c020.FieldByName('CODEMP').AsString
                             +' and NSSTATUS=0'
                             +' and NSNUMERO<>0');


            query_C300.SQL.Add(' and P2LOTSEQ=0'+query_c020.FieldByName('LOTSEQ').AsString);
            query_C300.SQL.Add(' and P2CHAVE=0'+query_c020.FieldByName('CHAVE').AsString);
            query_C300.SQL.Add(' and P2ORDEM=0'+query_c020.FieldByName('ORDEM').AsString);
            try
               query_C300.Open;
             except
               query_C300.SQL.savetofile(mpastatemp +'sql.txt');
               MessageDlg('Erro ao Abrit Qr0170',mtError,[mbOk],0);
               exit;
               end;
            end;
//         end;

         // INICIO adentação registro C170
         mTabNivel_02:='TAB_C300';
         if (query_C300.Active) and (not query_C300.IsEmpty) then
            begin
            mNum_item:=0;
            while not query_C300.Eof do

               begin
               fTestarR0200(query_C300.fieldbyName('COD_ITEM').AsString);
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C300:=mQtdRegBloco_C300+1;
               mNum_item:=mNum_item+1;

               mLinha:='|';
               mLinha:=mLinha+'C300|';
               mLinha:=mLinha+IntTostr(mNum_item)+'|';   //02
               mLinha:=mLinha+query_C300.fieldbyName('COD_ITEM').AsString+'|'; // 03
               mLinha:=mLinha+FormatFloat(mCasas3Dec, query_C300.fieldbyName('VL_UNIT').AsFloat)+'|'; // 04
               mLinha:=mLinha+FormatFloat(mCasas3Dec, query_C300.fieldbyName('QTD').AsFloat)+'|'; // 05
               mLinha:=mLinha+query_C300.fieldbyName('UNID').AsString+'|'; // 06
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_ITEM').AsFloat)+'|'; // 07
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_DESC_I').AsFloat)+'|'; // 08
               mLinha:=mLinha+query_C300.fieldbyName('IND_MOV').AsString+'|'; // 09
               mLinha:=mLinha+query_C300.fieldbyName('COD_NCM').AsString+'|'; // 10
               mLinha:=mLinha+query_C300.fieldbyName('EX_NCM').AsString+'|'; // 11
               mLinha:=mLinha+query_C300.fieldbyName('EX_II').AsString+'|'; // 12
               mLinha:=mLinha+query_C300.fieldbyName('CST').AsString+'|'; // 13
               mLinha:=mLinha+query_C300.fieldbyName('CFOP').AsString+'|'; // 14
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_BC_ICMS_I').AsFloat)+'|'; // 15
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('ALIQ_ICMS_I').AsFloat)+'|';
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_ICMS_I').AsFloat)+'|';
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_BC_ST_I').AsFloat)+'|';
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('ALIQ_ST').AsFloat)+'|';
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_ST_I').AsFloat)+'|';
               mLinha:=mLinha+query_C300.fieldbyName('CTIPI').AsString+'|';
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_BC_IPI').AsFloat)+'|';
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('ALIQ_IPI').AsFloat)+'|';
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_C300.fieldbyName('VL_IPI_I').AsFloat)+'|';
               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);
               if length(trim(query_C300.fieldbyName('DESCR_COMPL').AsString))>1 then
                   begin
                   mQtdRegBlocoC:=mQtdRegBlocoC+1;
                   mQtdRegBloco_C305:=mQtdRegBloco_C305+1;
                   mLinha:='|';
                   mLinha:=mLinha+'C305|';
                   mLinha:=mLinha+query_C305.fieldbyName('DESCR_COMPL').AsString+'|';
                   Memo1.Lines.Add(mLinha);
                   items_lista_BlocoC.Add(mLinha);
                   end;
               query_C300.Next;
               end;
            query_C300.Close;
            end;
         end;
      query_c020.Next;
      end;
   query_c020.Close;
  end;


mQtdRegBlocoC:=mQtdRegBlocoC+1;
mQtdRegBloco_C990:=mQtdRegBloco_C990+1;
mLinha:='|C990|'+IntToStr(mQtdRegBlocoC)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoC.Add(mLinha);

result:=true;

end;
// termino do bloco c


function TFrm_FISCAL_LivroEle_DF.fBlocoD(pOrigem: Integer): Boolean;
begin


if mQtdRegBlocoD<1 then
   begin
   mLinha:='|D001|1|'; // 0-sem dados 1-Com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoD.Add(mLinha);
   mQtdRegBlocoD:=mQtdRegBlocoD+1;
   mQtdRegBloco_D001:=mQtdRegBloco_D001+1;
   end;
mQtdRegBlocoD:=mQtdRegBlocoD+1;
mQtdRegBloco_D990:=mQtdRegBloco_D990+1;
mLinha:='|D990|'+IntToStr(mQtdRegBlocoD)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoD.Add(mLinha);

result:=true;
end;
//Termino do bloco D

// inicio bloco E

function TFrm_FISCAL_LivroEle_DF.fBlocoE(pOrigem: Integer): Boolean;
var
Query_e020: tQuery;
Query_e025: tQuery;

mTemServicos: boolean;
//mRestoCFOP: Integer;
mComplInstruc: String;
mPrimDigCfop: Integer;
begin
if query_e020=nil then
   begin
   query_e020:=tQuery.create(nil);
   query_e020.DatabaseName:='SG_ASSOC';
   end;
if query_e025=nil then
   begin
   query_e025:=tQuery.create(nil);
   query_e025.DatabaseName:='SG_ASSOC';
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');



query_e020.Close;
query_e020.SQL.Clear;
query_e020.SQL.Add('Select CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END AS IND_OPER '
                     +'      ,0 AS IND_EMIT '
                     +','+chr(39)+'C'+chr(39)+'|| NSCODCLI AS COD_PART '
                     +'      ,NSMODELO AS COD_MOD '
                     +'      ,DECODE(max(NSSTATUS),9,'+QuotedStr('02')+',8,'+QuotedStr('02')+','+QuotedStr('00')+') AS COD_SIT '
                     +'      ,NSSERIE AS SER '
                     +'      ,NSNUMERO AS NUM_DOC '
                     +'      ,NSDTEMIS AS DT_DOC '
                     +'      ,'+QuotedStr('   ')+' as NUM_LCTO '
                     +'      ,NSDTEMIS AS DT_E_S '
                     +'      ,sum(((P2QTD*P2PRECO)+P2VALIPI+P2ICMSR)-P2TOTDES) as VL_CONT '
                     +'      ,sum(P2BASEN+decode(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                     +'      ,sum(P2ICMSN+decode(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS '
                     +'      ,sum(p2ICMSR) AS VL_ST '
                     +'      ,0 AS VL_COMPL '
                     +'      ,'+QuotedStr('00')+' as IND_COMPL '
//                     +'      ,sum(P2VDESPACESRAT) AS VL_ISNT_ICMS '
                     +'      ,0  AS VL_ISNT_ICMS '
                     +'      ,0  AS VL_OUT_ICMS '
                     +'      ,0  AS VL_BC_IPI '
                     +'      ,0  AS VL_IPI '
                     +'      ,0  AS VL_ISNT_IPI '
                     +'      ,0  AS VL_OUT_IPI '
                     +'      ,'+QuotedStr('   ')+' as COD_INF_OBS '
                     +'      ,max(CUF) AS UF '
                     +'      ,NSCODEMP AS CODEMP '
                     +'      ,NSLOTSEQ_CP AS LOTSEQ '
                     +'      ,NSCHAVEP AS CHAVE '
                     +'      ,NSORDEMP AS ORDEM '
                     +'      FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' NSCODEMP=0'+IntToStr(codemp)+' and '
                     +' NSSTATUS<>-9 and NSSTATUS<>2 and NSTIPO<2 and (NSNUMERO>0)');
if fsonumero(edt_datini.Text)<>0 then
   query_E020.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_E020.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));
query_E020.SQL.Add(' AND NOT (NSSTATUS>=8 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');
mComplInstruc:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_E020.sql.Add(' and NSNUMERO '+mComplInstruc);

mComplInstruc:=fItensListBox(0,lbx_numcf,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_E020.sql.Add(' and NSNUMCUP '+mComplInstruc);


query_E020.SQL.add('Group by  CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END '
                     +'      ,NSCODCLI'
                     +'      ,NSMODELO  '
                     +'      ,DECODE(NSSTATUS,9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+')  '
                     +'      ,NSSERIE '
                     +'      ,NSNUMERO '
                     +'      ,NSDTEMIS  '
                     +'      ,NSCODEMP '
                     +'      ,NSLOTSEQ_CP  '
                     +'      ,NSCHAVEP  '
                     +'      ,NSORDEMP  ');

query_E020.SQL.add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');
la_instrucao:=la_instrucao+' and ';

fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');


query_e020.SQL.Add('Select CASE WHEN NECFO>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END AS IND_OPER '
                     +'      ,1 AS IND_EMIT '
                     +','+chr(39)+'F'+chr(39)+'|| NECODFOR AS COD_PART '
                     +'      ,NEMODELO AS COD_MOD '
                     +'      ,DECODE(max(NESTATUS),9,'+QuotedStr('02')+',8,'+QuotedStr('02')+','+QuotedStr('00')+') AS COD_SIT '
                     +'      ,NESERIE AS SER '
                     +'      ,NENUMERO AS NUM_DOC '
                     +'      ,NEDTEMIS AS DT_DOC '
                     +'      ,'+QuotedStr('   ')+' as NUM_LCTO '
                     +'      ,NEDTENT AS DT_E_S '
                     +'      ,sum(((PF2QTDP*PF2PU)+PF2IPI+PF2ICMSR)-PF2TOTDES) as VL_CONT '
                     +'      ,sum(PF2BASEN) AS VL_BC_ICMS '
                     +'      ,sum(PF2ICMSN) AS VL_ICMS '
                     +'      ,sum(pF2ICMSR) AS VL_ST '
                     +'      ,0 AS VL_COMPL '
                     +'      ,'+QuotedStr('00')+' as IND_COMPL '
//                     +'      ,sum(PF2OUTRAS) AS VL_ISNT_ICMS '
                     +'      ,0  AS VL_ISNT_ICMS '
                     +'      ,0  AS VL_OUT_ICMS '
                     +'      ,0  AS VL_BC_IPI '
                     +'      ,0  AS VL_IPI '
                     +'      ,0  AS VL_ISNT_IPI '
                     +'      ,0  AS VL_OUT_IPI '
                     +'      ,'+QuotedStr('   ')+' as COD_INF_OBS '
                     +'      ,max(FUF) AS UF '
                     +'      ,NECODEMP AS CODEMP '
                     +'      ,NELOTSEQ_CP AS LOTSEQ '
                     +'      ,NECHAVEP AS CHAVE '
                     +'      ,0 AS ORDEM '
                     +'      FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +' NECODEMP=0'+IntToStr(codemp)+' and '
                    +' NESTATUS<>-9 ');

if fsonumero(edt_datini.Text)<>0 then
   query_E020.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_E020.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));
query_E020.SQL.Add('and NOT NECFO in (1353,2353,1303,2303)');

mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_E020.sql.Add(' and NENUMERO '+mComplInstruc);

query_E020.SQL.Add(' group by CASE WHEN NECFO>'+QuotedStr('4999')+' THEN 1  ELSE 0 END,'+Quotedstr('F')+'|| NECODFOR,NEMODELO '
                  +' ,NESERIE,NENUMERO,NEDTEMIS,NEDTENT '
                  +'  ,NECODEMP       ,NELOTSEQ_CP       ,NECHAVEP ');

try
   query_E020.Open;
except
   query_E020.SQL.SaveToFile(mpastatemp +'sql.txt');
   MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
   exit;
   end;




mTabela:='TAB_E020';
if not query_E020.IsEmpty then
   begin
   mLinha:='|E001|0|'; // com dados
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E001:=mQtdRegBloco_E001+1;

   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);

   while not query_E020.Eof do
      begin
// INICIO C

      mQtdRegBlocoE:=mQtdRegBlocoE+1;
      mQtdRegBloco_E020:=mQtdRegBloco_E020+1;
      if query_e020.FieldByName('COD_SIT').AsInteger<>2 then
         fTestarCliFor(query_e020.fieldbyName('COD_PART').AsString);
      mLinha:='|';
      mLinha:=mLinha+'E020|';  // 01
      mLinha:=mLinha+query_E020.fieldbyname('IND_OPER').AsString+'|'; // 02
      mLinha:=mLinha+query_E020.fieldbyname('IND_EMIT').AsString+'|'; //3
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',query_E020.fieldbyname('COD_PART').AsString)+'|'; //04

      if not LocalizaArray(mModeloNF_valido,query_E020.fieldbyname('COD_MOD').AsString) then
         mLinha:=mLinha+'01|' //5
      else
         mLinha:=mLinha+query_E020.fieldbyname('COD_MOD').AsString+'|'; //5

      mLinha:=mLinha+query_E020.fieldbyname('COD_SIT').AsString+'|'; // 06
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',trim(query_E020.fieldbyname('SER').AsString))+'|'; //7
      mLinha:=mLinha+query_E020.fieldbyname('NUM_DOC').AsString+'|'; // 08
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=-2,'',FormatdateTime(fdt_efd, query_E020.fieldbyname('DT_DOC').AsDateTime))+'|'; //09
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',trim(query_E020.fieldbyname('NUM_LCTO').AsString))+'|'; //10
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=-2,'',FormatdateTime(fdt_efd, query_E020.fieldbyname('DT_E_S').AsDateTime))+'|'; //11
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_CONT').AsFloat))+'|'; //12
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_BC_ICMS').AsFloat))+'|'; //13
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_ICMS').AsFloat))+'|'; //14
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_ST').AsFloat))+'|'; //15
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_COMPL').AsFloat))+'|'; //16
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=-2,'',query_E020.fieldbyname('IND_COMPL').AsString)+'|'; //17
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_ISNT_ICMS').AsFloat))+'|'; //18
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_OUT_ICMS').AsFloat))+'|'; //19
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_BC_IPI').AsFloat))+'|'; //20
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_IPI').AsFloat))+'|'; //21
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_ISNT_IPI').AsFloat))+'|'; //22
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_E020.fieldbyname('VL_OUT_IPI').AsFloat))+'|'; //23
      mLinha:=mLinha+iif(query_E020.FieldByName('COD_SIT').AsInteger=2,'',query_E020.fieldbyname('COD_INF_OBS').AsString)+'|'; //24
      Memo1.Lines.Add(mLinha);

      items_lista_BlocoE.Add(mLinha);
      // TERMINO adentação registro C120



      query_E025.Close;
      query_E025.SQL.Clear;
      if (query_E020.FieldByName('CHAVE').AsFloat>0) and (query_E020.FieldByName('COD_SIT').AsFloat<>2) then
         begin
         if query_E020.FieldByName('IND_EMIT').AsInteger=1 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

            query_E025.SQL.Add('SELECT PF2CFO AS CFOP'
                                    +', sum( ( (PF2PU*PF2QTDP)+nvl(PF2FRERAT,0) ) '
                                    +' -(nvl(PF2TOTDES,0)) ) AS VL_CONT_P '
                                    +', sum(PF2BASEN) AS VL_BC_ICMS_P '
                                    +', PF2ALIQ as ALIQ_ICMS '
                                    +', sum(PF2ICMSN) AS VL_ICMS_P '
                                    +', sum(PF2ICMSR) AS VL_ST_P '
                                    +', 0 AS VL_COMPL_P '
                                    +', 0 AS VL_ISNT_ICMS_P '
                                    +', 0 AS VL_OUT_ICMS_P '
                                    +', 0 AS VL_BC_IPI_P '
                                    +', sum(PF2IPI)  AS VL_IPI_P '
                                    +', 0 AS VL_ISNT_IPI_P '
                                    +', 0 AS VL_OUT_IPI_P '
                                    +' FROM CADNE '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' PF2CODEMP=0'+query_E020.FieldByName('CODEMP').AsString);
            query_E025.SQL.Add(' and PF2LOTSEQ=0'+query_E020.FieldByName('LOTSEQ').AsString);
            query_E025.SQL.Add(' and PF2CHAVE=0'+query_E020.FieldByName('CHAVE').AsString);
            query_E025.SQL.Add(' group by PF2CFO,PF2ALIQ');

            try
               query_E025.Open;
            except
               query_E025.SQL.savetofile(mpastatemp +'sql.txt');
               messagedlg('erro ao abrir qrc170',mterror,[mbOk],0);
               exit;
               end;
            end
         else  // if query_E020.fieldbyname('COD_MOD').AsString<>'55' then
//         else
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

            query_E025.SQL.Add('SELECT P2CFO AS CFOP'
                                    +', sum( ( (P2PRECO*P2QTD)+nvl(P2VFRERAT,0) ) '
                                    +' -(nvl(P2TOTDES,0)) ) AS VL_CONT_P '
                                    +', sum(P2BASEN) AS VL_BC_ICMS_P '
                                    +', P2ALIQ as ALIQ_ICMS '
                                    +', sum(P2ICMSN) AS VL_ICMS_P '
                                    +', sum(P2ICMSR) AS VL_ST_P '
                                    +', 0 AS VL_COMPL_P '
                                    +', 0 AS VL_ISNT_ICMS_P '
                                    +', 0 AS VL_OUT_ICMS_P '
                                    +', 0 AS VL_BC_IPI_P '
                                    +', sum(P2VALIPI)  AS VL_IPI_P '
                                    +', 0 AS VL_ISNT_IPI_P '
                                    +', 0 AS VL_OUT_IPI_P '

                                    +' FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' P2CODEMP=0'+query_E020.FieldByName('CODEMP').AsString
                             +' and NSSTATUS=0'
                             +' and NSNUMERO<>0');


            query_E025.SQL.Add(' and P2LOTSEQ=0'+query_E020.FieldByName('LOTSEQ').AsString);
            query_E025.SQL.Add(' and P2CHAVE=0'+query_E020.FieldByName('CHAVE').AsString);
            query_E025.SQL.Add(' and P2ORDEM=0'+query_E020.FieldByName('ORDEM').AsString);
            query_E025.SQL.Add(' group by P2CFO,P2ALIQ');

            try
               query_E025.Open;
             except
               query_E025.SQL.savetofile(mpastatemp +'sql.txt');
               MessageDlg('Erro ao Abrit Qr0170',mtError,[mbOk],0);
               exit;
               end;
            end;
         if (query_E025.Active) and (not query_E025.IsEmpty) then
            begin
            while not query_E025.Eof do
               begin
               mQtdRegBlocoE:=mQtdRegBlocoE+1;
               mQtdRegBloco_E025:=mQtdRegBloco_E025+1;
               mLinha:='|';
               mLinha:=mLinha+'E025|';
               mLinha:=mLinha+query_E025.fieldbyName('CFOP').AsString+'|';   //02
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_CONT_P').AsFloat)+'|'; // 03
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_BC_ICMS_P').AsFloat)+'|'; // 04
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('ALIQ_ICMS').AsFloat)+'|'; // 05
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_ICMS_P').AsFloat)+'|'; // 06
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_ST_P').AsFloat)+'|'; // 07
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_COMPL_P').AsFloat)+'|'; // 08
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_ISNT_ICMS_P').AsFloat)+'|'; // 09
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_OUT_ICMS_P').AsFloat)+'|'; // 10
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_BC_IPI_P').AsFloat)+'|'; // 11
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_IPI_P').AsFloat)+'|'; // 13
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_ISNT_IPI_P').AsFloat)+'|'; // 14
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_E025.fieldbyName('VL_OUT_IPI_P').AsFloat)+'|'; // 15
               Memo1.Lines.Add(mLinha);
               items_lista_BlocoE.Add(mLinha);
               fGerarE310(valint(query_E025.fieldbyName('CFOP').AsString)
                          ,query_E025.fieldbyName('VL_CONT_P').AsFloat
                          ,query_E025.fieldbyName('VL_BC_ICMS_P').AsFloat
                          ,query_E025.fieldbyName('VL_ST_P').AsFloat
                          ,query_E025.fieldbyName('VL_COMPL_P').AsFloat
                          ,query_E025.fieldbyName('VL_ICMS_P').AsFloat
                          ,query_E025.fieldbyName('VL_ISNT_ICMS_P').AsFloat
                          ,query_E025.fieldbyName('VL_OUT_ICMS_P').AsFloat);


               mPrimDigCfop:=valint(copy(query_E025.fieldbyName('CFOP').AsString,1,1));
               if mem_e360.IsEmpty then
                  begin
                  mem_e360.Append;
                  mem_e360VALDEBIMP01.Value       :=0;
                  mem_e360VALOUTDEB02.Value       :=0;
                  mem_e360VALESTCRED03.Value      :=0;
                  mem_e360VALDEB04.Value          :=0;
                  mem_e360VALCRED05.Value         :=0;
                  mem_e360VALOUTCRED06.Value      :=0;
                  mem_e360VALESTDEB07.Value       :=0;
                  mem_e360VALCRED08.Value         :=0;
                  mem_e360VALCRED_ANT09.Value     :=0;
                  mem_e360VALTOTCRED10.Value      :=0;
                  mem_e360VALCREDTRANSP11.Value   :=0;
                  mem_e360VALTOTDEV12.Value       :=0;
                  mem_e360VALDEDUC13.Value        :=0;
                  mem_e360VALICMSREC14.Value      :=0;
                  mem_e360VALCREDICMSST15.Value   :=0;
                  mem_e360VALICMSST_DEST16.Value  :=0;
                  mem_e360VALDIFICMS17.Value      :=0;
                  mem_e360VALICMSIMP18.Value      :=0;
                  mem_e360VALOUTICMS19.Value      :=0;
                  mem_e360VALICMSRECOLHER20.Value :=0;
                  mem_e360VALICMSST_OUTEST99.Value:=0;
                  end
               else
                  mem_e360.Edit;

               if mPrimDigCfop>4 then
                  begin
                  mem_e360VALDEBIMP01.Value:=mem_e360VALDEBIMP01.Value+query_E025.fieldbyName('VL_ICMS_P').AsFloat;
                  mem_e360VALOUTDEB02.Value:=mem_e360VALOUTDEB02.Value+query_E025.fieldbyName('VL_OUT_ICMS_P').AsFloat;
                  if mPrimDigCfop=5 then
                     mem_e360VALICMSST_DEST16.Value:=mem_e360VALICMSST_DEST16.Value+query_E025.fieldbyName('VL_ST_P').AsFloat
                  else
                     mem_e360VALICMSST_OUTEST99.Value:=mem_e360VALICMSST_OUTEST99.Value+query_E025.fieldbyName('VL_ST_P').AsFloat;
                  end
               else
                  begin
                  mem_e360VALCRED05.Value:=mem_e360VALCRED05.Value+query_E025.fieldbyName('VL_ICMS_P').AsFloat;
                  mem_e360VALOUTCRED06.Value:=mem_e360VALOUTCRED06.Value+query_E025.fieldbyName('VL_OUT_ICMS_P').AsFloat;
                  mem_e360VALCREDICMSST15.Value:=mem_e360VALCREDICMSST15.Value+query_E025.fieldbyName('VL_ST_P').AsFloat;
                  end;
               mem_e360VALDEB04.Value          :=mem_e360VALDEBIMP01.Value+mem_e360VALOUTDEB02.Value+mem_e360VALESTCRED03.Value;
               mem_e360VALCRED08.Value         :=mem_e360VALCRED05.Value+mem_e360VALOUTCRED06.Value+mem_e360VALESTDEB07.Value;
               mem_e360VALTOTCRED10.Value      :=mem_e360VALCRED08.Value+mem_e360VALCRED_ANT09.Value;
               mem_e360.Post;
               query_E025.Next;
               end;
            query_E025.Close;
            end;
         end;
      query_E020.Next;
      end;
   query_E020.Close;
  end;

// iniciko e 300
if not mem_e310.IsEmpty then
   begin
   mem_e360.First;
   While not mem_e360.Eof do
      begin
      mem_e360.Edit;
      if mem_e360VALTOTCRED10.Value-mem_e360VALDEB04.Value>0 then
         mem_e360VALCREDTRANSP11.Value   :=mem_e360VALTOTCRED10.Value-mem_e360VALDEB04.Value
      else
         mem_e360VALTOTDEV12.Value       :=mem_e360VALDEB04.Value-mem_e360VALTOTCRED10.Value;
      mem_e360VALICMSREC14.Value      :=mem_e360VALTOTDEV12.Value-mem_e360VALDEDUC13.Value;

      mem_e360.Post;
      mem_e360.Next;
      end;
   mem_e360.First;
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E300:=mQtdRegBloco_E300+1;
   mLinha:='|';
   mLinha:=mLinha+'E300|';  // 01
   mLinha:=mLinha+FormatDatetime('ddmmyyyy', edt_datini.Date)+'|'; // 02
   mLinha:=mLinha+FormatDatetime('ddmmyyyy', edt_datfin.Date)+'|'; // 03
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);

   mem_e310.First;
   While not mem_e310.Eof do
      begin
      mQtdRegBlocoE:=mQtdRegBlocoE+1;
      mQtdRegBloco_E310:=mQtdRegBloco_E310+1;
      mLinha:='|';
      mLinha:=mLinha+'E310|';  // 01
      mLinha:=mLinha+FormatFloat('0000', mem_e310CFOP.AsInteger)+'|'; // 02
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e310VL_CONT.AsFloat)+'|'; // 03
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e310VL_BC_ICMS.AsFloat)+'|'; // 04
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e310VL_ICMS.AsFloat)+'|'; // 05
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e310VL_ST.AsFloat)+'|'; // 06
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e310VL_COMPL.AsFloat)+'|'; // 07
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e310VL_ISNT_ICMS.AsFloat)+'|'; // 08
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e310VL_OUT_ICMS.AsFloat)+'|'; // 09
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoE.Add(mLinha);
      mem_e310.Next;
      end;


   mem_e360.First;
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E360:=mQtdRegBloco_E360+1;
   mLinha:='|';
   mLinha:=mLinha+'E360|';  // 01
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALDEBIMP01.AsFloat)+'|'; // 02
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALOUTDEB02.AsFloat)+'|'; // 03
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALESTCRED03.AsFloat)+'|'; // 04
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALDEB04.AsFloat)+'|'; // 05
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALCRED05.AsFloat)+'|'; // 06
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALOUTCRED06.AsFloat)+'|'; // 07
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALESTDEB07.AsFloat)+'|'; // 08
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALCRED08.AsFloat)+'|'; // 09
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALCRED_ANT09.AsFloat)+'|'; // 10
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALTOTCRED10.AsFloat)+'|'; // 11
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALCREDTRANSP11.AsFloat)+'|'; // 12
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALTOTDEV12.AsFloat)+'|'; // 13
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALDEDUC13.AsFloat)+'|'; // 14
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALICMSREC14.AsFloat)+'|'; // 15
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALCREDICMSST15.AsFloat)+'|'; // 16
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALICMSST_DEST16.AsFloat)+'|'; // 17
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALDIFICMS17.AsFloat)+'|'; // 18
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALICMSIMP18.AsFloat)+'|'; // 19
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALOUTICMS19.AsFloat)+'|'; // 20
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALICMSRECOLHER20.AsFloat)+'|'; // 21
   mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_e360VALICMSST_OUTEST99.AsFloat)+'|'; // 22
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);
   mem_e360.Next;
   end;
// termino e 300

if mQtdRegBlocoE<1 then
   begin
   mLinha:='|E001|1|'; // 0-sem dados 1-Com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoD.Add(mLinha);
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E001:=mQtdRegBloco_E001+1;
   end;
mQtdRegBlocoE:=mQtdRegBlocoE+1;
mQtdRegBloco_E990:=mQtdRegBloco_E990+1;
mLinha:='|E990|'+IntToStr(mQtdRegBlocoE)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoE.Add(mLinha);

result:=true;

end;
// termino do bloco c







// INICIO BLOCO H
function TFrm_FISCAL_LivroEle_DF.fBlocoH(pOrigem: Integer): Boolean;
begin
if mQtdRegBlocoH<1 then
   begin
   mLinha:='|H001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoH.Add(mLinha);
   mQtdRegBlocoH:=mQtdRegBlocoH+1;
   mQtdRegBloco_H001:=mQtdRegBloco_H001+1;

   mLinha:='|H020|'+Formatdatetime('ddmmyyyy', edt_datfin.Date)+'|'+'|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoH.Add(mLinha);
   mQtdRegBlocoH:=mQtdRegBlocoH+1;
   mQtdRegBloco_H020:=mQtdRegBloco_H020+1;

   end;
{
else
   begin
   mLinha:='|H001|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoH.Add(mLinha);
   mQtdRegBlocoH:=mQtdRegBlocoH+1;
   mQtdRegBloco_H001:=mQtdRegBloco_H001+1;
   end;
}
if mQtdRegBlocoH>0 then
   begin
   mQtdRegBlocoH:=mQtdRegBlocoH+1;
   mQtdRegBloco_H990:=mQtdRegBloco_H990+1;
   mLinha:='|H990|'+IntToStr(mQtdRegBlocoH)+'|' ; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoH.Add(mLinha);
   end;
result:=true;
end;

// TERMNINO BLOCO H




//Inicio Bloco M
function TFrm_FISCAL_LivroEle_DF.fBloco8(pOrigem: Integer): Boolean;
var
Query_emp: tQuery;
begin
Query_emp:=TQuery.Create(nil);
Query_emp.DatabaseName:='SG_ASSOC';
Query_emp.Close;
Query_emp.Sql.Clear;
Query_emp.Sql.Add('Select UF,CADLOC.LCODMUN_IBGE as COD_MUN '
                  +' from CADEMP,CADLOC where CODLOC=LCODLOC AND '
                  +' CODEMP=:CODEMP ');
Query_emp.ParambyName('CODEMP').value:=codemp;
Query_Emp.Open;

if mQtdRegBloco8<1 then
   begin
   mLinha:='|8001|1|'+Query_emp.FieldbyName('UF').asstring+'|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco8.Add(mLinha);
   mQtdRegBlocO8:=mQtdRegBloco8+1;
   mQtdRegBloco_8001:=mQtdRegBloco_8001+1;
   end;
freeandnil(query_emp);   
mQtdRegBloco8:=mQtdRegBloco8+1;
mQtdRegBloco_8990:=mQtdRegBloco_8990+1;
mLinha:='|8990|'+IntToStr(mQtdRegBloco8)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_Bloco8.Add(mLinha);

result:=true;



end;



procedure TFrm_FISCAL_LivroEle_DF.FormCreate(Sender: TObject);
var
dia,mes,ano : Word;

begin
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
edt_datini.Text:='01/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano);
edt_datfin.Text:=FormatDateTime(fdt2, fdatafinal(1,StrToDate(edt_datini.Text)));
edt_nomarq.Text:='C:\SGE\EFD_PISCOFINS_'+FormatDateTime('mmyyyy',StrToDate(edt_datini.Text))+'.TXT';
fRealcalcularPedfor;
PageControl1.ActivePageIndex:=0;
PageControl2.ActivePageIndex:=0;
mAlterouGuia:=false;

end;

procedure TFrm_FISCAL_LivroEle_DF.FormShow(Sender: TObject);
begin
fBloqueiaCampos(true);


Tb_AjusE115VALORAJUST.DisplayFormat:=mcasas;
Tb_AjusE111VALORAJUST.DisplayFormat:=mcasas;


Tb_GuiaSTVL_OR.DisplayFormat  :=mcasas;
Tb_GuiaSTDT_VCTO.DisplayFormat:=fdt2;
RxDB_valor.DisplayFormat      :=mcasas;




items_lista_bloco0:=TStringlist.create;
items_lista_blocoA:=TStringlist.create;
items_lista_blocoB:=TStringlist.create;
items_lista_blocoC:=TStringlist.create;
items_lista_blocoD:=TStringlist.create;
items_lista_blocoE:=TStringlist.create;
items_lista_bloco8:=TStringlist.create;
items_lista_blocoH:=TStringlist.create;



edt_datfinExit(self);

PageControl1.ActivePage:=tsGeral;
end;

procedure TFrm_FISCAL_LivroEle_DF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query_c020<>nil then
   begin
   query_c020.Close;
   FreeAndNil(query_c020);
   end;


if query_C300<>nil then
   begin
   query_C300.Close;
   FreeAndNil(query_C300);
   end;



if query_c300<>nil then
   begin
   query_c300.Close;
   FreeAndNil(query_c300);
   end;




















Freeandnil(items_lista_bloco0);
Freeandnil(items_lista_blocoA);
Freeandnil(items_lista_blocoB);
Freeandnil(items_lista_blocoC);
Freeandnil(items_lista_blocoD);
Freeandnil(items_lista_blocoH);
Freeandnil(items_lista_bloco8);


if (FormState<>[fsModal]) then
   Action := caFree;


end;

procedure TFrm_FISCAL_LivroEle_DF.bbSairClick(Sender: TObject);
begin
close;
end;


function TFrm_FISCAL_LivroEle_DF.fGerarReg9900(pTipo: String;pQtdReg: Integer): Boolean;
begin
if pQtdReg>0 then
   begin
   mQtdRegBloco_9900:=mQtdRegBloco_9900+1;
   mLinha:='|9900|'+pTipo+'|'+IntToStr(pQtdReg)+'|';
   Memo1.Lines.Add(mLinha);
   items_lista_bloco0.Add(mLinha);
   end;
result:=true;
end;




function TFrm_FISCAL_LivroEle_DF.fTestarR0200(pCodigo: String): Boolean;
var
query_temp: tQuery;
begin

if not mem_R0200.Locate('COD_ITEM',pCodigo,[]) then
   begin
   query_temp:=tQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.add('Select PDCODPRO  AS CODPRO,PDNOME AS NOMPRO,PDCODBAR AS CODBAR,PDCODGEN, '
                     +'       upper(NVL(PDUND,'+QuotedStr('UND')+')) AS UNID,       PDNIVEL AS  NIVEL,       PDCODNCM AS COD_NCM, '
                     +'       PDTABICM as PDTABICM '
                     +',CASE '
                     +'WHEN PDTABICM='+chr(39)+'A'+chr(39)+' THEN PICMSA '
                     +'when PDTABICM='+chr(39)+'B'+chr(39)+' THEN PICMSB '
                     +'when PDTABICM='+chr(39)+'C'+chr(39)+' THEN PICMSC '
                     +'when PDTABICM='+chr(39)+'D'+chr(39)+' THEN PICMSD '
                     +'when PDTABICM='+chr(39)+'E'+chr(39)+' THEN PICMSNE '
                     +'when PDTABICM='+chr(39)+'F'+chr(39)+' THEN PICMSNF '
                     +'when PDTABICM='+chr(39)+'G'+chr(39)+' THEN PICMSNG '
                     +'when PDTABICM='+chr(39)+'H'+chr(39)+' THEN PICMSNH '
                     +'when PDTABICM='+chr(39)+'I'+chr(39)+' THEN PICMSNI '
                     +'else 0 '
                     +'END ALIQ_ICM '
                     +' FROM CADPRO,CADUF '
                     +' WHERE PUF=:UF '
                     +' and PDCODPRO=:CODPRO ');
   query_temp.ParamByName('UF').Value:=DM1.Tb_EmpUF.AsString;
   query_temp.ParamByName('CODPRO').Value:=pCodigo;
   query_temp.Open;
   if not query_temp.IsEmpty then
      begin

      mem_R0200.Append;
      mem_R0200COD_ITEM.Value    :=pCodigo;
      if valint(query_temp.fieldbyName('PDCODGEN').AsString)=0 then
         mem_R0200COD_GEN.Value     :='30'
      else
         mem_R0200COD_GEN.Value     :=query_temp.fieldbyName('PDCODGEN').AsString;
      mem_R0200DESCR_ITEM.Value  :=trim(query_temp.fieldbyName('NOMPRO').AsString);


      mem_R0200COD_LST.Value     :='';
      mem_R0200.Post;
      end;
   end;
FreeandNil(query_temp);

result:=true;
end;



function TFrm_FISCAL_LivroEle_DF.fTestarR0400(pCodigo: String): Boolean;
var
query_temp: tQuery;
begin
if not mem_R0400.Locate('COD_NAT',pCodigo,[]) then
   begin
   query_temp:=tQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.add('SELECT CFCODCFO AS COD_NAT,CFNOME AS DESCR_NAT FROM CADCFO '
                     +' where CFCODCFO=:CODCFO ');
   query_temp.ParamByName('CODCFO').Value:=pCodigo;

   query_Temp.Open;
   if not query_temp.IsEmpty then
      begin
      mem_R0400.Append;
      mem_R0400COD_NAT.Value     :=pCodigo;
      mem_R0400DESCR_NAT.Value   :=query_temp.fieldbyName('DESCR_NAT').AsString;
      mem_R0400.Post;
      end;
   end;
FreeandNil(query_temp);
result:=true;
end;

procedure TFrm_FISCAL_LivroEle_DF.edt_datfinExit(Sender: TObject);
begin



try
   mAnoMes_ini:=FormatDatetime('yyyymm', StrToDatetime(edt_datfin.Text));
except
   MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
   edt_datini.SetFocus;
   exit;
   end;
edt_nomarq.text:='C:\SGE\EFD_'+FormatDatetime('mmyyyy', edt_datini.Date)+'.TXT';

if (not Tb_AjusE111.Active) or (Tb_AjusE111.IsEmpty) or (trim(mAnoMes_ini)<>'') then
   begin


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select * from CADEFD_AJU where AJCODEMP='+IntToStr(codemp)
                     +' and AJANOMES=:ANOMES order by AJSEQ');
   DM1.Query1.ParamByName('ANOMES').AsString :=mAnoMes_ini;
   DM1.query1.Open;
   if DM1.Query1.FieldByName('AJCODAJU').IsNull then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.sql.add('Update CADEFD_AJU set AJCODAJU=:CODAJU');
      DM1.Query1.ParamByName('CODAJU').AsString:='E111';
      DM1.Query1.execsql;
      fdm1StartCommit;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select * from CADEFD_AJU where AJCODEMP='+IntToStr(codemp)
                        +' and AJANOMES=:ANOMES order by AJSEQ');
      DM1.Query1.ParamByName('ANOMES').AsString :=mAnoMes_ini;
      DM1.query1.Open;

      end;
   Tb_AjusE111.Close;
   Tb_AjusE111.Open;
   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.FieldByName('AJCODAJU').AsString<>'E111' then
         begin
         DM1.Query1.Next;
         Continue;
         end;
      Tb_AjusE111.Append;
      Tb_AjusE111TABELA.Value     :='E111';
      Tb_AjusE111DESCRICAO.Value  :=DM1.Query1.fieldbyname('AJSEL_TEXTO').AsString;
      Tb_AjusE111VALORAJUST.Value :=DM1.Query1.fieldbyname('AJVALOR_AJU').AsFloat;
      Tb_AjusE111TIPO.Value       :=DM1.Query1.fieldbyname('AJNATDC').AsString;
      Tb_AjusE111CODIGOAJUST.Value:=copy(DM1.Query1.fieldbyname('AJSEL_TEXTO').AsString,1,8);
      Tb_AjusE111INDICE.Value     :=DM1.Query1.fieldbyname('AJSEL_INDEX').AsInteger;
      CB_INVENTARIO.Text       :=DM1.Query1.fieldbyname('AJINVENTARIO').AsString;
      Tb_AjusE111.Post;
      DM1.Query1.Next;
      end;
   DM1.Query1.First;
   Tb_AjusE115.Close;
   Tb_AjusE115.Open;
   While not DM1.Query1.Eof do
      begin
      if DM1.Query1.FieldByName('AJCODAJU').AsString<>'E115' then
         begin
         DM1.Query1.Next;
         Continue;
         end;
      Tb_AjusE115.Append;
      Tb_AjusE115TABELA.Value     :='E115';
      Tb_AjusE115DESCRICAO.Value  :=DM1.Query1.fieldbyname('AJSEL_TEXTO').AsString;
      Tb_AjusE115VALORAJUST.Value :=DM1.Query1.fieldbyname('AJVALOR_AJU').AsFloat;
      Tb_AjusE115TIPO.Value       :=DM1.Query1.fieldbyname('AJNATDC').AsString;
      Tb_AjusE115CODIGOAJUST.Value:=copy(DM1.Query1.fieldbyname('AJSEL_TEXTO').AsString,1,8);
      Tb_AjusE115INDICE.Value     :=DM1.Query1.fieldbyname('AJSEL_INDEX').AsInteger;
      CB_INVENTARIO.Text       :=DM1.Query1.fieldbyname('AJINVENTARIO').AsString;
      Tb_AjusE115.Post;
      DM1.Query1.Next;
      end;

   end;
// testar guia de recolhimento


if (not Tb_GuiaST.Active) or (Tb_GuiaST.IsEmpty) or (trim(mAnoMes_ini)<>'') then
   begin


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select * from CADEFD_GUIAST where GST_CODEMP='+IntToStr(codemp)
                     +' and GST_ANOMES=:ANOMES order by GST_SEQ');
   DM1.Query1.ParamByName('ANOMES').AsString :=mAnoMes_ini;
   try
      DM1.query1.Open;
   except
      DM1.query1.SQL.SaveToFile(mpastatemp +'sql.txt');;
      end;
   Tb_GuiaST.Close;
   Tb_GuiaST.Open;
   edtguiast_valordig.Value  :=0;
   edtguiast_valoresp.Value  :=0;
   edtguiast_valorResto.Value:=0;

   While not DM1.Query1.Eof do
      begin
      Tb_GuiaST.Append;
      Tb_GuiaSTCOD_OR.Value       :=DM1.Query1.fieldbyName('GST_COD_OR').AsString;
      Tb_GuiaSTVL_OR.Value        :=DM1.Query1.fieldbyName('GST_VL_OR').AsFloat;
      Tb_GuiaSTDT_VCTO.Value      :=DM1.Query1.fieldbyName('GST_DT_VCTO').AsDateTime;
      Tb_GuiaSTCOD_REC.Value      :=DM1.Query1.fieldbyName('GST_COD_REC').AsString;
      Tb_GuiaSTIND_PROC.Value     :=DM1.Query1.fieldbyName('GST_IND_PROC').AsInteger;
      Tb_GuiaSTPROC.Value         :=DM1.Query1.fieldbyName('GST_PROC').AsString;
      Tb_GuiaSTTXT_COMP.Value     :=DM1.Query1.fieldbyName('GST_TXT_COMPL').AsString;
      Tb_GuiaSTMES_REF.Value      :=COPY(DM1.Query1.fieldbyName('GST_MES_REF').AsString,1,2);
      Tb_GuiaSTANO_REF.Value      :=valint(COPY(DM1.Query1.fieldbyName('GST_MES_REF').AsString,3,4));
      Tb_GuiaSTNUM_PROC.Value     :=DM1.Query1.fieldbyName('GST_NUM_REC').AsString;
      Tb_GuiaSTUF.Value           :=DM1.Query1.fieldbyName('GST_UF').AsString;
      edtguiast_valordig.Value:=edtguiast_valordig.Value+DM1.Query1.fieldbyName('GST_VL_OR').AsFloat;
      Tb_GuiaST.Post;
      DM1.Query1.Next;
      end;
   edtguiast_valorResto.Value:=edtguiast_valoresp.Value-edtguiast_valordig.Value;
   fTotalizarST(0);
   mAlterouGuia:=false;
   end;

end;

function tFrm_FISCAL_LivroEle_DF.fTotalizarST(pTipo: Integer): Boolean;
var
mVC_Ent: Real;
mVC_Sai: Real;

mICMSR_Ent: Real;
mICMSR_Sai: Real;

begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');
if FRM_SPED_EFD_NotasST=nil then
  Application.CreateForm(TFrm_SPED_EFD_NotasST, Frm_SPED_EFD_NotasST);
FRM_SPED_EFD_NotasST.Qr_Notas.Close;
FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Clear;
FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add('Select NSNUMERO AS NUMNF, '
                                     +'       NSDTEMIS AS DATAEMIS, '
                                     +'       NSTOTNOTA AS VALORNF, '
                                     +'       NSICMSRI+NSICMSRN+NSICMSRP AS ICMSST, '
                                     +'       NSCODCLI AS CODIGO, '
                                     +'       NSCFO1 AS CFOP, '
                                     +'       CRAZAO  AS NOME, CUF AS UF, '
                                     +'       '+chr(39)+'Propria '+chr(39)+' AS TIPONF from CADNS'+iif(la_tabelas='','',',')+la_tabelas
                                     +'       '+la_Join
                                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                     +'       NSICMSRI+NSICMSRN+NSICMSRP > 0 and NSSTATUS=0 '
                                     +'       and NSCODEMP='+IntToStr(codemp));
if fsonumero(edt_datini.Text)<>0 then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NSDTEMIS>=:NSDATAINI ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NSDATAINI').AsDateTime:=edt_datini.Date;
   end;

if fSonumero(edt_datfin.Text)<>0 then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NSDTEMIS<=:NSDATAFIN ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NSDATAFIN').AsDateTime:=edt_datfin.date;
   end;

FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' union ');


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','NECODEMP','FCODFOR','NECODFOR');

FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add('Select NENUMERO AS NUMNF, '
                                     +'       NEDTEMIS AS DATAEMIS, '
                                     +'       NETOTNOT AS VALORNF, '
                                     +'       NEICMSR AS ICMSST, '
                                     +'       NECODFOR AS CODIGO, '
                                     +'       TO_CHAR(NECFO) AS CFOP, '
                                     +'       FRAZAO  AS NOME, FUF AS UF,'
                                     +'       '+chr(39)+'Terceiros '+chr(39)+' AS TIPONF from CADNE'+iif(la_tabelas='','',',')+la_tabelas
                                     +'       '+la_Join
                                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                     +'       NEICMSR>0 AND NESTATUS=0 '
                                     +'       and NECODEMP='+IntToStr(codemp));

if fSonumero(edt_datini.Text)<>0 then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NEDTEMIS>=:NEDATAINI ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NEDATAINI').AsDateTime:=edt_datini.Date;
   end;

if fSonumero(edt_datfin.Text)<>0 then
   begin
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.Add(' and NEDTEMIS<=:NEDATAFIN ');
   FRM_SPED_EFD_NotasST.Qr_Notas.ParamByName('NEDATAFIN').AsDateTime:=edt_datfin.Date;
   end;

try
   FRM_SPED_EFD_NotasST.Qr_Notas.Open;
except
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.SaveToFile(mpastatemp +'sql.txt');
   MessageDlg('Erro ao Abrir notas com ICMSST',mtWarning,[mbOk],0);
   end;
//FRM_SPED_EFD_NotasST.Qr_Notas.SQL.SaveToFile(mpastatemp +'sql.txt');

While not Frm_SPED_EFD_NotasST.Qr_Notas.Eof do
   begin
   edtguiast_valoresp.Value  :=edtguiast_valoresp.Value+Frm_SPED_EFD_NotasST.Qr_NotasICMSST.AsFloat;
   Frm_SPED_EFD_NotasST.Qr_Notas.Next;
   end;
Frm_SPED_EFD_NotasST.Qr_Notas.First;


mVC_Ent   :=0;
mVC_Sai   :=0;

mICMSR_Ent:=0;
mICMSR_Sai:=0;
Frm_SPED_EFD_NotasST.mem_resumo.Close;
Frm_SPED_EFD_NotasST.mem_resumo.EmptyTable;
Frm_SPED_EFD_NotasST.mem_resumo.Open;
While not Frm_SPED_EFD_NotasST.Qr_Notas.Eof do
   begin
   if Frm_SPED_EFD_NotasST.mem_resumo.Locate('uf',Frm_SPED_EFD_NotasST.Qr_NotasUF.AsString,[]) then
      Frm_SPED_EFD_NotasST.mem_resumo.Edit
   else
      begin
      Frm_SPED_EFD_NotasST.mem_resumo.Append;
      Frm_SPED_EFD_NotasST.mem_resumouf.Value                :=Frm_SPED_EFD_NotasST.Qr_NotasUF.AsString;
      Frm_SPED_EFD_NotasST.mem_resumoent_valor_contabil.Value:=0;
      Frm_SPED_EFD_NotasST.mem_resumoent_icmsr.Value         :=0;
      Frm_SPED_EFD_NotasST.mem_resumosai_valor_contabil.Value:=0;
      Frm_SPED_EFD_NotasST.mem_resumosai_icmsr.Value         :=0;
      Frm_SPED_EFD_NotasST.mem_resumotot_gnre.Value         :=0;
      end;
  if Frm_SPED_EFD_NotasST.Qr_NotasCFOP.AsFloat<5000 then
      begin
      Frm_SPED_EFD_NotasST.mem_resumoent_valor_contabil.Value:=Frm_SPED_EFD_NotasST.mem_resumoent_valor_contabil.Value+
                                                               Frm_SPED_EFD_NotasST.Qr_NotasVALORNF.AsFloat;
      Frm_SPED_EFD_NotasST.mem_resumoent_icmsr.Value         :=Frm_SPED_EFD_NotasST.mem_resumoent_icmsr.Value+
                                                               Frm_SPED_EFD_NotasST.Qr_NotasICMSST.AsFloat;
      mVC_Ent   :=mVC_Ent+Frm_SPED_EFD_NotasST.Qr_NotasVALORNF.AsFloat;
      mICMSR_Ent:=mICMSR_Ent+Frm_SPED_EFD_NotasST.Qr_NotasICMSST.AsFloat;
      end
   else
      begin
      Frm_SPED_EFD_NotasST.mem_resumosai_valor_contabil.Value:=Frm_SPED_EFD_NotasST.mem_resumosai_valor_contabil.Value+
                                                               Frm_SPED_EFD_NotasST.Qr_NotasVALORNF.AsFloat;
      Frm_SPED_EFD_NotasST.mem_resumosai_icmsr.Value         :=Frm_SPED_EFD_NotasST.mem_resumosai_icmsr.Value+
                                                               Frm_SPED_EFD_NotasST.Qr_NotasICMSST.AsFloat;
      mVC_Sai   :=mVC_Sai+Frm_SPED_EFD_NotasST.Qr_NotasVALORNF.AsFloat;
      mICMSR_Sai:=mICMSR_Sai+Frm_SPED_EFD_NotasST.Qr_NotasICMSST.AsFloat;
      end;
   Frm_SPED_EFD_NotasST.mem_resumo.Post;
   Frm_SPED_EFD_NotasST.Qr_Notas.Next;
   end;
Tb_GuiaST.First;
While not Tb_GuiaST.Eof do
   begin
   if Frm_SPED_EFD_NotasST.mem_resumo.Locate('uf',Tb_GuiaSTUF.AsString,[]) then
      Frm_SPED_EFD_NotasST.mem_resumo.Edit
   else
      begin
      Frm_SPED_EFD_NotasST.mem_resumo.Append;
      Frm_SPED_EFD_NotasST.mem_resumouf.Value                :=Tb_GuiaSTUF.AsString;
      Frm_SPED_EFD_NotasST.mem_resumoent_valor_contabil.Value:=0;
      Frm_SPED_EFD_NotasST.mem_resumoent_icmsr.Value         :=0;
      Frm_SPED_EFD_NotasST.mem_resumosai_valor_contabil.Value:=0;
      Frm_SPED_EFD_NotasST.mem_resumosai_icmsr.Value         :=0;
      Frm_SPED_EFD_NotasST.mem_resumotot_gnre.Value         :=0;
      end;
   Frm_SPED_EFD_NotasST.mem_resumotot_gnre.Value         :=Frm_SPED_EFD_NotasST.mem_resumotot_gnre.Value+Tb_GuiaSTVL_OR.AsFloat;
   Frm_SPED_EFD_NotasST.mem_resumo.Post;
   Tb_GuiaST.Next;
   end;

Frm_SPED_EFD_NotasST.Qr_Notas.First;
Frm_SPED_EFD_NotasST.st_ent_valcont.Caption:=FormatFloat(mcasas,mVC_Ent);
Frm_SPED_EFD_NotasST.st_ent_baser.Caption  :='';
Frm_SPED_EFD_NotasST.ST_ent_ICMSRET.Caption:=FormatFloat(mcasas,mICMSR_Ent);

Frm_SPED_EFD_NotasST.st_sai_valcont.Caption:=FormatFloat(mcasas,mVC_sai);
Frm_SPED_EFD_NotasST.st_sai_baser.Caption  :='';
Frm_SPED_EFD_NotasST.ST_sai_ICMSRET.Caption:=FormatFloat(mcasas,mICMSR_sai);


result:=true;
end;


procedure TFrm_FISCAL_LivroEle_DF.bbe111_INCLUIRClick(Sender: TObject);
begin
Tb_AjusE111.Append;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe111_ALTERARClick(Sender: TObject);
begin
if Tb_AjusE111CODIGOAJUST.IsNull then
   exit;
Tb_AjusE111.Edit;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe111_EXCLUIRClick(Sender: TObject);
begin
if Tb_AjusE111CODIGOAJUST.IsNull then
   exit;
if Application.MessageBox('Quer Realmente Excluir o Ajuste selecionado?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_AjusE111.delete;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe111_GRAVARClick(Sender: TObject);
begin
Tb_AjusE111.Post;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe111_CANCELARClick(Sender: TObject);
begin
Tb_AjusE111.Cancel;
end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE111AfterCancel(DataSet: TDataSet);
begin

bbe111_INCLUIR.Enabled     :=true;
bbe111_ALTERAR.Enabled     :=true;
bbe111_GRAVAR.Enabled      :=false;
bbe111_EXCLUIR.Enabled     :=true;
bbe111_CANCELAR.Enabled    :=True;
bbe111_DBNavigator1.Enabled:=True;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE111AfterDelete(DataSet: TDataSet);
begin

bbe111_INCLUIR.Enabled     :=true;
bbe111_ALTERAR.Enabled     :=true;
bbe111_GRAVAR.Enabled      :=False;
bbe111_EXCLUIR.Enabled     :=true;
bbe111_CANCELAR.Enabled    :=True;
bbe111_DBNavigator1.Enabled:=True;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE111AfterEdit(DataSet: TDataSet);
begin
bbe111_INCLUIR.Enabled     :=False;
bbe111_ALTERAR.Enabled     :=False;
bbe111_GRAVAR.Enabled      :=True;
bbe111_EXCLUIR.Enabled     :=False;
bbe111_CANCELAR.Enabled    :=True;
bbe111_DBNavigator1.Enabled:=False;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE111AfterInsert(DataSet: TDataSet);
begin

bbe111_ALTERAR.Enabled     :=False;
bbe111_INCLUIR.Enabled     :=False;
bbe111_GRAVAR.Enabled      :=True;
bbe111_EXCLUIR.Enabled     :=False;
bbe111_CANCELAR.Enabled    :=True;
bbe111_DBNavigator1.Enabled:=False;



moper_e111:=0;

DBGrid1_e111.SetFocus;


end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE111AfterPost(DataSet: TDataSet);
begin
bbe111_CANCELARClick(self);

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE111BeforePost(DataSet: TDataSet);
begin

if length(Tb_AjusE111CODIGOAJUST.AsString)< 8 then
   begin
   MessageDlg('Codigo do Ajuste é invalido!',mtWarning,[mbOk],0);
   DBGrid1_e111.SetFocus;
   abort;
   end;

if (Tb_AjusE111VALORAJUST.AsFloat<=0) then
   begin
   MessageDlg('Valor do Ajuste é invalido!',mtWarning,[mbOk],0);
   DBGrid1_e111.SetFocus;
   abort;
   end;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE115AfterCancel(DataSet: TDataSet);
begin
bbe115_INCLUIR.Enabled     :=true;
bbe115_ALTERAR.Enabled     :=true;
bbe115_GRAVAR.Enabled      :=false;
bbe115_EXCLUIR.Enabled     :=true;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=True;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE115AfterDelete(DataSet: TDataSet);
begin

bbe115_INCLUIR.Enabled     :=true;
bbe115_ALTERAR.Enabled     :=true;
bbe115_GRAVAR.Enabled      :=False;
bbe115_EXCLUIR.Enabled     :=true;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=True;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE115AfterInsert(DataSet: TDataSet);
begin

bbe115_ALTERAR.Enabled     :=False;
bbe115_INCLUIR.Enabled     :=False;
bbe115_GRAVAR.Enabled      :=True;
bbe115_EXCLUIR.Enabled     :=False;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=False;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE115AfterEdit(DataSet: TDataSet);
begin
bbe115_INCLUIR.Enabled     :=False;
bbe115_ALTERAR.Enabled     :=False;
bbe115_GRAVAR.Enabled      :=True;
bbe115_EXCLUIR.Enabled     :=False;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=False;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE115AfterPost(DataSet: TDataSet);
begin
bbe115_CANCELARClick(self);

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_AjusE115BeforePost(DataSet: TDataSet);
begin
if length(Tb_AjusE115CODIGOAJUST.AsString)< 8 then
   begin
   MessageDlg('Codigo do Ajuste é invalido!',mtWarning,[mbOk],0);
   DBGrid1_e115.SetFocus;
   abort;
   end;

if (Tb_AjusE115VALORAJUST.AsFloat<=0) then
   begin
   MessageDlg('Valor do Ajuste é invalido!',mtWarning,[mbOk],0);
   DBGrid1_e115.SetFocus;
   abort;
   end;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe115_INCLUIRClick(Sender: TObject);
begin
Tb_AjusE115.Append;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe115_ALTERARClick(Sender: TObject);
begin
if Tb_AjusE115CODIGOAJUST.IsNull then
   exit;
Tb_AjusE115.Edit;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe115_EXCLUIRClick(Sender: TObject);
begin
if Tb_AjusE115CODIGOAJUST.IsNull then
   exit;
if Application.MessageBox('Quer Realmente Excluir o Ajuste selecionado?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_AjusE115.delete;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe115_GRAVARClick(Sender: TObject);
begin
Tb_AjusE115.Post;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbe115_CANCELARClick(Sender: TObject);
begin
Tb_AjusE115.Cancel;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_GuiaSTAfterCancel(DataSet: TDataSet);
begin
bbGuiaST_Incluir.Enabled     :=true;
bbGuiaST_ALTERAR.Enabled     :=true;
bbGuiaST_GRAVAR.Enabled      :=false;
bbGuiaST_EXCLUIR.Enabled     :=true;
bbGuiaST_CANCELAR.Enabled    :=True;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_GuiaSTAfterDelete(DataSet: TDataSet);
begin
bbGuiaST_Incluir.Enabled     :=true;
bbGuiaST_ALTERAR.Enabled     :=true;
bbGuiaST_GRAVAR.Enabled      :=false;
bbGuiaST_EXCLUIR.Enabled     :=true;
bbGuiaST_CANCELAR.Enabled    :=True;




end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_GuiaSTAfterEdit(DataSet: TDataSet);
begin

bbGuiaST_Incluir.Enabled     :=False;
bbGuiaST_ALTERAR.Enabled     :=False;
bbGuiaST_GRAVAR.Enabled      :=True;
bbGuiaST_EXCLUIR.Enabled     :=False;
bbGuiaST_CANCELAR.Enabled    :=True;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_GuiaSTAfterInsert(DataSet: TDataSet);
begin
bbGuiaST_GRAVAR.Enabled      :=True;
bbGuiaST_CANCELAR.Enabled    :=True;
bbGuiaST_ALTERAR.Enabled     :=False;
bbGuiaST_INCLUIR.Enabled     :=False;
bbGuiaST_EXCLUIR.Enabled     :=False;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_GuiaSTAfterPost(DataSet: TDataSet);
begin
bbGuiaST_Incluir.Enabled     :=true;
bbGuiaST_ALTERAR.Enabled     :=true;
bbGuiaST_GRAVAR.Enabled      :=false;
bbGuiaST_EXCLUIR.Enabled     :=true;
bbGuiaST_CANCELAR.Enabled    :=True;
mAlterouGuia:=true;

end;
function TFrm_FISCAL_LivroEle_DF.fBloqueiaCampos(pBloqueia: Boolean): Boolean;
begin
dbCB_GUIAST_COD_OR.ReadOnly  :=pBloqueia;
RxDB_valor.ReadOnly          :=pBloqueia;
dbedtguiast_dt_vcto.ReadOnly :=pBloqueia;
DBedtguiast_num_proc.ReadOnly:=pBloqueia;
dbcb_UF.ReadOnly             :=pBloqueia;
DBE_COD_REC.ReadOnly         :=pBloqueia;
DBE_MES_REF.ReadOnly         :=pBloqueia;
DBE_ANO_REF.ReadOnly         :=pBloqueia;
db_PROC.ReadOnly             :=pBloqueia;
db_TXT_COMP.ReadOnly         :=pBloqueia;
result:=true;

end;

procedure TFrm_FISCAL_LivroEle_DF.Tb_GuiaSTBeforePost(DataSet: TDataSet);
begin
if length(Tb_GuiaSTCOD_OR.AsString)< 3 then
   begin
   MessageDlg('Codigo da Obrigação é invalido!',mtWarning,[mbOk],0);
   DBGrid_GuiaST.SetFocus;
   abort;
   end;

if (Tb_GuiaSTVL_OR.AsFloat<=0) then
   begin
   MessageDlg('Valor da Receita é invalido!',mtWarning,[mbOk],0);
   DBGrid_GuiaST.SetFocus;
   abort;
   end;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbGuiaST_IncluirClick(Sender: TObject);
begin
fBloqueiaCampos(false);
Tb_GuiaST.Append;
dbCB_GUIAST_COD_OR.SetFocus;
end;

procedure TFrm_FISCAL_LivroEle_DF.bbGuiaST_AlterarClick(Sender: TObject);
begin
if Tb_GuiaSTCOD_OR.IsNull then
   exit;
fBloqueiaCampos(false);

Tb_GuiaST.Edit;

end;

procedure TFrm_FISCAL_LivroEle_DF.bbGuiaST_ExcluirClick(Sender: TObject);
begin
if Tb_GuiaSTCOD_OR.IsNull then
   exit;
if Application.MessageBox('Quer Realmente Excluir o Ajuste selecionado?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_GuiaST.delete;
fBloqueiaCampos(false);

end;

procedure TFrm_FISCAL_LivroEle_DF.bbGuiaST_GRAVARClick(Sender: TObject);
begin
Tb_GuiaST.Post;
fBloqueiaCampos(true);

end;

procedure TFrm_FISCAL_LivroEle_DF.bbGuiaST_CancelarClick(Sender: TObject);
begin
fBloqueiaCampos(false);

Tb_GuiaST.Cancel;

end;

procedure TFrm_FISCAL_LivroEle_DF.sbnNotasClick(Sender: TObject);
begin
Frm_SPED_EFD_NotasST.Show;

end;

procedure TFrm_FISCAL_LivroEle_DF.edt_numnf_entExit(Sender: TObject);
begin
edt_numnf_ent.Text:=fdeixanum2(edt_numnf_ent.Text);
if Trim(edt_numnf_ent.Text)<>'' then
   begin
   lbx_numnf_ent.Items.Add(edt_numnf_ent.Text+' - '+edt_numnf_ent.Text);
   edt_numnf_ent.Text := '';
    if edt_numnf_ent.Enabled then
       edt_numnf_ent.SetFocus;
   end;

end;

procedure TFrm_FISCAL_LivroEle_DF.edt_numnf_saiExit(Sender: TObject);
begin
edt_numnf_sai.Text:=fdeixanum2(edt_numnf_sai.Text);
if Trim(edt_numnf_sai.Text)<>'' then
   begin
   lbx_numnf_sai.Items.Add(edt_numnf_sai.Text+' - '+edt_numnf_sai.Text);
   edt_numnf_sai.Text := '';
    if edt_numnf_sai.Enabled then
       edt_numnf_sai.SetFocus;
   end;

end;

procedure TFrm_FISCAL_LivroEle_DF.edt_num_ecfExit(Sender: TObject);
begin
edt_num_ecf.Text:=fdeixanum2(edt_num_ecf.Text);
if Trim(edt_num_ecf.Text)<>'' then
   begin
   lbx_numcf.Items.Add(edt_num_ecf.Text+' - '+edt_num_ecf.Text);
   edt_num_ecf.Text := '';
    if edt_num_ecf.Enabled then
       edt_num_ecf.SetFocus;
   end;

end;

procedure TFrm_FISCAL_LivroEle_DF.lbx_numnf_entKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_ent.ItemIndex>=0 then
      lbx_numnf_ent.Items.Delete(lbx_numnf_ent.ItemIndex);

end;

procedure TFrm_FISCAL_LivroEle_DF.lbx_numnf_saiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_sai.ItemIndex>=0 then
      lbx_numnf_sai.Items.Delete(lbx_numnf_sai.ItemIndex);

end;

procedure TFrm_FISCAL_LivroEle_DF.lbx_numcfKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numcf.ItemIndex>=0 then
      lbx_numcf.Items.Delete(lbx_numcf.ItemIndex);


end;

function tFrm_FISCAL_LivroEle_DF.fGerarE310(pCfop: Integer; pVL_CONT,pVL_BC_ICMS,pVL_ST,pVL_COMPL,pVL_ICMS, pVL_ISNT_ICMS,pVL_OUT_ICMS: Real): Boolean;
begin

if not mem_e310.Locate('CFOP',pCfop,[]) then
   begin
   mem_e310.Append;
   mem_e310CFOP.Value        :=pCfop;
   mem_e310VL_CONT.Value     :=0;
   mem_e310VL_BC_ICMS.Value  :=0;
   mem_e310VL_ICMS.Value     :=0;
   mem_e310VL_ST.Value       :=0;
   mem_e310VL_COMPL.Value    :=0;
   mem_e310VL_ISNT_ICMS.Value:=0;
   mem_e310VL_OUT_ICMS.Value :=0;
   end
else
   mem_e310.Edit;
mem_e310VL_CONT.Value     :=mem_e310VL_CONT.Value+pVL_CONT;
mem_e310VL_BC_ICMS.Value  :=mem_e310VL_BC_ICMS.Value+pVL_BC_ICMS;
mem_e310VL_ST.Value       :=mem_e310VL_ST.Value+pVL_ST;
mem_e310VL_COMPL.Value    :=mem_e310VL_COMPL.Value+pVL_COMPL;
mem_e310VL_ICMS.Value     :=mem_e310VL_ICMS.Value+pVL_ICMS;
mem_e310VL_ISNT_ICMS.Value:=mem_e310VL_ISNT_ICMS.Value+pVL_ISNT_ICMS;
mem_e310VL_OUT_ICMS.Value :=mem_e310VL_OUT_ICMS.Value+pVL_OUT_ICMS;
mem_e310.Post;
result:=true;
end;




function tFrm_FISCAL_LivroEle_DF.fGravarGuiaST: Boolean;
var
mAnoMes: String;
mSeq: Integer;
query_guiast: TQuery;
begin
query_guiast:=TQuery.Create(nil);
query_guiast.DatabaseName:='SG_ASSOC';

if trim(edt_datini.Text)<>'/  /' then
   begin
   mSeq:=0;
   mAnoMes:=formatDatetime('yyyymm', edt_datini.Date);
   query_guiast.Close;
   query_guiast.SQL.Clear;
   query_guiast.SQL.Add('Delete from CADEFD_GUIAST where GST_CODEMP='+IntToStr(codemp)
                     +'  and GST_ANOMES=:ANOMES ');
   query_guiast.ParamByName('ANOMES').AsString :=mAnoMes;
   query_guiast.ExecSQL;
   fdm1StartCommit;
   Tb_GuiaST.First;
   While not Tb_GuiaST.Eof do
      begin
      query_guiast.Close;
      query_guiast.SQL.Clear;
      query_guiast.SQL.Add('Insert into CADEFD_GUIAST ('
                        +' GST_CODEMP'
                        +',GST_ANOMES'
                        +',GST_SEQ'
                        +',GST_COD_OR'
                        +',GST_VL_OR'
                        +',GST_DT_VCTO'
                        +',GST_COD_REC'
                        +',GST_NUM_REC'
                        +',GST_IND_PROC'
                        +',GST_PROC'
                        +',GST_TXT_COMPL'
                        +',GST_MES_REF'
                        +',GST_UF'
                        +') values ('
                        +' :GST_CODEMP'
                        +',:GST_ANOMES'
                        +',:GST_SEQ'
                        +',:GST_COD_OR'
                        +',:GST_VL_OR'
                        +',:GST_DT_VCTO'
                        +',:GST_COD_REC'
                        +',:GST_NUM_REC'
                        +',:GST_IND_PROC'
                        +',:GST_PROC'
                        +',:GST_TXT_COMPL'
                        +',:GST_MES_REF'
                        +',:GST_UF'

                        +') ');




      mSeq:=mSeq+1;

      query_guiast.ParamByName('GST_CODEMP').AsInteger    :=codemp;
      query_guiast.ParamByName('GST_ANOMES').AsString     :=mAnoMes;
      query_guiast.ParamByName('GST_SEQ').AsInteger       :=mSeq;
      query_guiast.ParamByName('GST_COD_OR').AsString     :=Tb_GuiaSTCOD_OR.Value;
      query_guiast.ParamByName('GST_VL_OR').AsFloat       :=Tb_GuiaSTVL_OR.Value;
      query_guiast.ParamByName('GST_DT_VCTO').AsDateTime  :=Tb_GuiaSTDT_VCTO.AsDateTime;
      query_guiast.ParamByName('GST_COD_REC').AsString    :=Tb_GuiaSTCOD_REC.Value;
      query_guiast.ParamByName('GST_NUM_REC').AsString    :=Tb_GuiaSTNUM_PROC.Value;
      query_guiast.ParamByName('GST_IND_PROC').AsInteger  :=Tb_GuiaSTIND_PROC.AsInteger;
      query_guiast.ParamByName('GST_PROC').AsString       :=Tb_GuiaSTPROC.Value;
      query_guiast.ParamByName('GST_TXT_COMPL').AsString  :=Tb_GuiaSTTXT_COMP.Value;
      query_guiast.ParamByName('GST_MES_REF').AsString    :=Formatfloat('00',  Tb_GuiaSTMES_REF.Asinteger)+Formatfloat('0000', Tb_GuiaSTANO_REF.Asinteger);
      query_guiast.ParamByName('GST_UF').AsString         :=Tb_GuiaSTUF.Value;
      try
         query_guiast.ExecSQL;
         fdm1StartCommit;
      except
         query_guiast.SQL.SaveToFile(mpastatemp +'sql.txt');

         end;
      Tb_GuiaST.Next;
      end;
   end;
freeandnil(query_guiast);
result:=true;
end;

end.


