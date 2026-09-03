unit s_sobra_dev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RXCtrls, Mask, ToolEdit, DB, DBTables, Grids, DBGrids,
  ComCtrls, ExtCtrls, DBCtrls, Buttons, RLReport, RLFilters, RLDraftFilter,
  S_SelEmp, DBClient, Menus,s_lerarq_geral;

type
  Tfrm_sobra_dev = class(TForm)
    GroupBox1: TGroupBox;
    cb_chave: TComboEdit;
    rxl_chave: TRxLabel;
    RxLabel1: TRxLabel;
    edt_cliente: TEdit;
    edt_ped: TEdit;
    RxLabel2: TRxLabel;
    PC1: TPageControl;
    ts2: TTabSheet;
    ts3: TTabSheet;
    bb_incluir: TButton;
    bb_alterar: TButton;
    bb_gravar: TButton;
    bb_fechar: TButton;
    dbg_prod_mat: TDBGrid;
    ts1: TTabSheet;
    dbg_prod_aca: TDBGrid;
    cb_materiaprima: TCheckBox;
    cb_precoextra: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cb_codpro: TComboEdit;
    edt_nompro: TEdit;
    edt_qtd: TEdit;
    edt_pcouni: TEdit;
    edt_pcotot: TEdit;
    bb_item_novo: TBitBtn;
    bb_item_cancela: TBitBtn;
    bb_item_grava: TBitBtn;
    bb_item_excluir: TBitBtn;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cb_codpro_mp: TComboEdit;
    edt_nompro_mp: TEdit;
    edt_qtd_mp: TEdit;
    edt_pcouni_mp: TEdit;
    edt_pcotot_mp: TEdit;
    bb_item_novo_mp: TBitBtn;
    bb_item_cancela_mp: TBitBtn;
    bb_item_grava_mp: TBitBtn;
    bb_item_excluir_mp: TBitBtn;
    edt_prodaca: TEdit;
    Label9: TLabel;
    bb_imprimir: TButton;
    mod_01: TTabSheet;
    mod_02: TTabSheet;
    qr_rel: TQuery;
    INF_CLIENTE: TQuery;
    ds_cliente: TDataSource;
    INF_CLIENTERG_IE: TStringField;
    INF_CLIENTECPF_CNPJ: TStringField;
    modelo01: TRLReport;
    rl_cabecalho: TRLBand;
    rl_empr: TRLLabel;
    rl_ender: TRLLabel;
    rl_fone: TRLLabel;
    INF_CLIENTECliente: TStringField;
    INF_CLIENTECCODCLI: TFloatField;
    INF_CLIENTECRAZAO: TStringField;
    INF_CLIENTECCPF: TFloatField;
    INF_CLIENTECRG: TStringField;
    INF_CLIENTECTPPESSOA: TFloatField;
    INF_CLIENTECCNPJ: TFloatField;
    INF_CLIENTECIE: TStringField;
    INF_CLIENTEP1S_CHAVE: TFloatField;
    INF_CLIENTEP1S_DATA_INC: TDateTimeField;
    RLBand5: TRLBand;
    rl_proj: TRLLabel;
    rl_tot_g_val: TRLLabel;
    Label10: TLabel;
    CB_TIPO_PRECO: TComboBox;
    rlPedido_OPMod03: TRLReport;
    RLBand6: TRLBand;
    rl_empr02: TRLLabel;
    rl_ender02: TRLLabel;
    rl_fone02: TRLLabel;
    RLBand11: TRLBand;
    rl_titulo_sep: TRLLabel;
    RLSystemInfo14: TRLSystemInfo;
    RLSystemInfo13: TRLSystemInfo;
    RLLabel19: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel13: TRLLabel;
    cb_mod_rel: TComboBox;
    Label11: TLabel;
    RLBand9: TRLBand;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel41: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel44: TRLLabel;
    rl_titulo_finan: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    ds_pedido: TDataSource;
    qr_relP2SMP_CODEMP: TFloatField;
    qr_relP2SMP_LOTSEQ: TFloatField;
    qr_relP2SMP_CHAVE: TFloatField;
    qr_relP2SMP_ITEM: TFloatField;
    qr_relP2SMP_CODPRO: TFloatField;
    qr_relP2SMP_CODPRO_ORI: TFloatField;
    qr_relP2SMP_ORIGEM: TFloatField;
    qr_relP2SMP_CODPRO_ORI_1: TFloatField;
    qr_relP2SMP_PRECO_UNI: TFloatField;
    qr_relP2SMP_PRECO_VEN: TFloatField;
    qr_relP2SMP_QTD_VEN: TFloatField;
    qr_relP2SMP_QTD_DEV: TFloatField;
    qr_relP2SMP_QTD_QUE: TFloatField;
    qr_relP2S_CODEMP: TFloatField;
    qr_relP2S_LOTSEQ: TFloatField;
    qr_relP2S_CHAVE: TFloatField;
    qr_relP2S_ITEM: TFloatField;
    qr_relP2S_CODPRO: TFloatField;
    qr_relP2S_ORIGEM: TFloatField;
    qr_relP2S_PRECO_UNI: TFloatField;
    qr_relP2S_PRECO_VEN: TFloatField;
    qr_relP2S_QTD_VEN: TFloatField;
    qr_relP2S_QTD_DEV: TFloatField;
    qr_relP2S_QTD_QUE: TFloatField;
    qr_relCODIGO_AGRUPAMENTO: TFloatField;
    qr_relPDCODGRU: TFloatField;
    qr_relPDNOMGRU: TStringField;
    qr_relCODIGO_PRODUTO: TFloatField;
    qr_relNOME_PRODUTO: TStringField;
    qr_relPDNOME_MP: TStringField;
    qr_relp2s_qtd_total: TFloatField;
    qr_relP2S_PRECO_CUS: TFloatField;
    qr_relP2SMP_PRECO_CUS: TFloatField;
    Src_PED02_SOBRAS: TDataSource;
    TB_PED02_SOBRAS: TQuery;
    TB_PED02_SOBRASNOMPRO: TStringField;
    TB_PED02_SOBRASP2S_CODEMP: TFloatField;
    TB_PED02_SOBRASP2S_LOTSEQ: TFloatField;
    TB_PED02_SOBRASP2S_CHAVE: TFloatField;
    TB_PED02_SOBRASP2S_ORIGEM: TFloatField;
    TB_PED02_SOBRASP2S_ITEM: TFloatField;
    TB_PED02_SOBRASP2S_CODPRO: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_UNI: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_CUS: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_VEN: TFloatField;
    TB_PED02_SOBRASP2S_QTD_VEN: TFloatField;
    TB_PED02_SOBRASP2S_QTD_DEV: TFloatField;
    TB_PED02_SOBRASP2S_QTD_QUE: TFloatField;
    UP_PED02_SOBRAS: TUpdateSQL;
    SRC_PED01_SOBRAS: TDataSource;
    TB_PED01_SOBRAS: TQuery;
    TB_PED01_SOBRASP1S_CODEMP: TFloatField;
    TB_PED01_SOBRASP1S_LOTSEQ: TFloatField;
    TB_PED01_SOBRASP1S_CHAVE: TFloatField;
    TB_PED01_SOBRASP1S_CODCLI: TFloatField;
    TB_PED01_SOBRASP1S_DATA_INC: TDateTimeField;
    TB_PED01_SOBRASP1S_USER_INC: TFloatField;
    TB_PED01_SOBRASP1S_DATA_FEC: TDateTimeField;
    TB_PED01_SOBRASP1S_USER_FEC: TFloatField;
    TB_PED01_SOBRASP1S_STATUS: TFloatField;
    UP_PED01_SOBRAS: TUpdateSQL;
    SRC_PED02_SOBRAS_MP: TDataSource;
    TB_PED02_SOBRAS_MP: TQuery;
    Label12: TLabel;
    RLLabel1: TRLLabel;
    rl_tot_p_val: TRLLabel;
    rl_tot_f_val: TRLLabel;
    RLLabel46: TRLLabel;
    TB_PED02_SOBRAS_MPP2SMP_CODEMP: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_LOTSEQ: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_CHAVE: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_ORIGEM: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_ITEM: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_CODPRO: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_CODPRO_ORI: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_VEN: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_VEN: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_DEV: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_QUE: TFloatField;
    TB_PED02_SOBRAS_MPNOMPRO_MP: TStringField;
    UP_PED02_SOBRAS_MP: TUpdateSQL;
    TB_PED02_SOBRASP2S_QTD_SOBRA: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_QTD_SOBRA: TFloatField;
    edt_sobras: TEdit;
    Label13: TLabel;
    edt_sobras_mp: TEdit;
    Label14: TLabel;
    qr_relP2SMP_QTD_SOBRA: TFloatField;
    qr_relP2S_QTD_SOBRA: TFloatField;
    matricial: TRLDraftFilter;
    CB_GRUPO_LOTE: TCheckBox;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    rl_codigo: TRLLabel;
    rl_nompro: TRLLabel;
    rl_quantidade: TRLLabel;
    rl_preco: TRLLabel;
    rl_valor_total: TRLLabel;
    RLBand3: TRLBand;
    lbl_prod_acabado: TRLLabel;
    lbl_codpro: TRLLabel;
    lbl_nompro: TRLLabel;
    lbl_qtd: TRLLabel;
    lbl_preco: TRLLabel;
    lbl_valor_total: TRLLabel;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    rl_tot_pco: TRLLabel;
    rl_tot_val: TRLLabel;
    rl_tot_qtd: TRLLabel;
    RLGroup3: TRLGroup;
    RLGroup2: TRLGroup;
    RLBand7: TRLBand;
    RL_PRODUTO_ACABADO: TRLLabel;
    RLBand8: TRLBand;
    rl_base_prod: TRLLabel;
    rl_quant_prod: TRLLabel;
    rl_retorno_prod: TRLLabel;
    rl_desc_prod: TRLLabel;
    rl_quebra_prod: TRLLabel;
    qr_relSEQ_GRUPO: TFloatField;
    qr_relPDNOME_PA: TStringField;
    TB_PED01_SOBRASP1S_TABPV: TStringField;
    TB_PED01_SOBRASP1S_CODPV: TFloatField;
    TB_PED01_SOBRASP1S_PACTD: TFloatField;
    TB_PED02_SOBRASP2S_PRECO_ORI: TFloatField;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_ORI: TFloatField;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    TB_PED02_SOBRAS_MPP2SMP_ITEM_ORIGEM: TFloatField;
    pnl_excluido: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    edt_chave: TEdit;
    edt_newchave: TEdit;
    Label17: TLabel;
    edt_confnewchave: TEdit;
    Button2: TButton;
    Button3: TButton;
    btn_Desbloq: TButton;
    Label18: TLabel;
    edt_chave_p: TEdit;
    cb_alt_pco: TCheckBox;
    Panel1: TPanel;
    bb_atu_prc_hven: TButton;
    btn_libera_nulos: TButton;
    bb_corrige_codemp: TButton;
    RLLabel34: TRLLabel;
    RLDBText31: TRLDBText;
    Timer1: TTimer;
    TB_PED01_SOBRASP1S_DATHOR_EVE: TDateTimeField;
    cb_dedacr_hor_venda: TCheckBox;
    TabSheet1: TTabSheet;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Cds_Grupo: TClientDataSet;
    DataSource1: TDataSource;
    Cds_GrupoCODGRU: TIntegerField;
    Cds_GrupoPERC: TFloatField;
    Cds_GrupoNOMGRU: TStringField;
    PopupMenu1: TPopupMenu;
    Deletar1: TMenuItem;
    Label19: TLabel;
    edt_AtuCli: TEdit;
    btn_AtuCli: TButton;
    procedure cb_chaveButtonClick(Sender: TObject);
    procedure cb_chaveExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bb_alterarClick(Sender: TObject);
    procedure bb_fecharClick(Sender: TObject);
    procedure bb_incluirClick(Sender: TObject);
    procedure cb_chaveEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cb_codproButtonClick(Sender: TObject);
    procedure cb_codproEnter(Sender: TObject);
    procedure cb_codproExit(Sender: TObject);
    procedure bb_item_novoClick(Sender: TObject);
    procedure bb_item_cancelaClick(Sender: TObject);
    procedure bb_item_gravaClick(Sender: TObject);
    procedure edt_qtdExit(Sender: TObject);
    procedure edt_pcouniExit(Sender: TObject);
    procedure bb_item_excluirClick(Sender: TObject);
    procedure cb_codpro_mpExit(Sender: TObject);
    procedure cb_codpro_mpEnter(Sender: TObject);
    procedure edt_pcouniEnter(Sender: TObject);
    procedure bb_gravarClick(Sender: TObject);
    procedure bb_item_novo_mpClick(Sender: TObject);
    procedure bb_item_cancela_mpClick(Sender: TObject);
    procedure bb_item_grava_mpClick(Sender: TObject);
    procedure bb_item_excluir_mpClick(Sender: TObject);
    procedure edt_qtd_mpExit(Sender: TObject);
    procedure edt_pcouni_mpEnter(Sender: TObject);
    procedure edt_pcouni_mpExit(Sender: TObject);
    procedure dbg_prod_acaDblClick(Sender: TObject);
    procedure ts2Exit(Sender: TObject);
    procedure cb_codpro_mpButtonClick(Sender: TObject);
    procedure rl_cabecalhoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure bb_imprimirClick(Sender: TObject);
    procedure INF_CLIENTECalcFields(DataSet: TDataSet);
    procedure ts2Show(Sender: TObject);
    procedure ts1Show(Sender: TObject);
    procedure qr_relCalcFields(DataSet: TDataSet);
    procedure c(DataSet: TDataSet);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure TB_PED02_SOBRASBeforePost(DataSet: TDataSet);
    procedure TB_PED02_SOBRAS_MPBeforePost(DataSet: TDataSet);
    procedure TB_PED02_SOBRASCalcFields(DataSet: TDataSet);
    procedure TB_PED02_SOBRAS_MPCalcFields(DataSet: TDataSet);
    procedure cb_codproKeyPress(Sender: TObject; var Key: Char);
    procedure cb_codpro_mpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup3AfterPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btn_libera_nulosClick(Sender: TObject);
    procedure btn_DesbloqClick(Sender: TObject);
    procedure bb_corrige_codempClick(Sender: TObject);
    procedure bb_atu_prc_hvenClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Cds_GrupoCalcFields(DataSet: TDataSet);
    procedure Deletar1Click(Sender: TObject);
    procedure cb_materiaprimaClick(Sender: TObject);
    procedure cb_precoextraClick(Sender: TObject);
    procedure CB_GRUPO_LOTEClick(Sender: TObject);
    procedure cb_alt_pcoClick(Sender: TObject);
    procedure cb_dedacr_hor_vendaClick(Sender: TObject);
    procedure btn_AtuCliClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function Baixa_Estoque(pchave, ptipo: Integer; Query_Temp: TQuery): Boolean;

var
  frm_sobra_dev: Tfrm_sobra_dev;
  Form_SelEmp: TFrm_SelEmp;

  CLIENTE: String;
  CHAVE_P  : String;
  CODEMP_P : String;
  LOTSEQ_P : String;
  CODCLI_P : String;

  Grupo    : Integer;

  total_QTD:     Real;
  total_PCO_UNI: Real;
  total_PCO_TOT: Real;
  total_G_QTD:     Real;
  total_G_PCO_UNI: Real;
  total_G_PCO_TOT: Real;

  OPERACAO: Integer=0;
  MCODPRO_ANT: Integer=0;

implementation

uses S_PedCli, Func, S_DM1, S_DM4, lerarq, S_Pro, flerarq, S_Pedido_OP,
  S_DM2, Math, S_IndEnv_Fab, DateUtils;

{$R *.dfm}

function Baixa_Estoque(pchave, ptipo: Integer; Query_Temp: TQuery): Boolean;
var
formace : Integer;
QTD     : Real;
	pBaixar: pBaixarLotes;

begin
if ptipo=1 then
  begin
  dm1.Query3.Close;
  dm1.Query3.SQL.Clear;
  dm1.Query3.SQL.Add(' select max(p1chave) as p1chave, max(p1numnf) as p1numnf, max(p1datanf) as p1datanf, '
                    +' sum(p1totall) as p1totall, max(p1codcli) as p1codcli, max(p1status) as p1status,    '
                    +' min(p1codemp) as p1codemp, max(p1lotseq) as p1lotseq, max(p1formace) as p1formace   '
                    +' from CADP01 where p1chave=0'+inttostr(pchave)+' and p1status <'+mstatus_excluido+'                    ');
  dm1.Query3.Open;
  formace:=dm1.Query3.fieldbyname('P1FORMACE').AsInteger;
  dm1.Query4.Close;
  dm1.Query4.SQL.Clear;
  dm1.Query4.SQL.Add(' Select                                                  ');
  dm1.Query4.SQL.Add('  min(P2CODEMP) as P2CODEMP, max(P2CODPRO) as P2CODPRO,  ');
  dm1.Query4.SQL.Add('  max(P2LOTSEQ) as P2LOTSEQ, max(P2CHAVE) as P2CHAVE,    ');
  if formace=0 then
    begin
    dm1.Query4.SQL.Add(' sum(P2QTD) as P2QTD, max(P2PRECO) as P2PRECO,         ');
    dm1.Query4.SQL.Add(' max(P2PCOCUS) as P2PCOCUS, max(P2PCOTAB) as P2PCOTAB  ');
    end
  else if formace=1 then
    begin
    dm1.Query4.SQL.Add(' max(P2QTD) as P2QTD, sum(P2PRECO) as P2PRECO,         ');
    dm1.Query4.SQL.Add(' sum(P2PCOCUS) as P2PCOCUS, sum(P2PCOTAB) as P2PCOTAB  ');
    end;
  dm1.Query4.SQL.Add(',MAX(P2ID_NEW) AS P2ID_NEW  from CADP02 ');
  dm1.Query4.SQL.Add(' where P2CHAVE='+IntToStr(pchave));
  dm1.Query4.SQL.Add(' group by P2CODPRO, P2ITEM ');
  dm1.Query4.SQL.Add(' order by P2ITEM ');
  try
    dm1.Query4.Open;
  except
    error:=SALVA_NOME('c:\sge\errosql\','ex');
    dm1.Query4.SQL.SaveToFile(error);
    fmensagem('Erro ao selecionar o Pedido!!!',0,['0'],0);
    EXIT;
    end;
  dm1.Query4.First;
  while not dm1.Query4.Eof do
    begin

	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := 0;
	pBaixar.pDocOri := 04;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := pchave;
	pBaixar.pChave_ano := ls_numped;
	pBaixar.pQtd       := dm1.Query4.FieldByName('P2QTD').AsFloat;
	pBaixar.pCodPro    := dm1.Query4.FieldByName('P2CODPRO').AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := dm1.Query4.FieldByName('P2ID_NEW').AsInteger;

	fBaixarMercadorias(pBaixar);


  {

    fBaixarMercadorias(codemp
            ,log_filial_padrao
            ,0 // item
            ,04 // docori
            ,codusr
            ,0 //pcontesp
            ,Log_TipoProdPad //ptipoprod
            ,pchave // chave
            ,ls_numped
            ,dm1.Query4.FieldByName('P2QTD').AsFloat // qtd
            ,dm1.Query4.FieldByName('P2CODPRO').AsString
            ,'S'
            ,'N'
            ,''
            ,0
                  ,'' // lote re
                  ,'' // obs

            );

}            
    dm1.Query4.Next;
    end;

  Query_Temp.Close;
  Query_Temp.SQL.Clear;
  Query_Temp.SQL.Add(' Select                                                                  '
                     +'        P2SMP_CODEMP,                                                    '
                     +'        P2SMP_LOTSEQ,                                                    '
                     +'        P2SMP_CHAVE,                                                     '
                     +'        P2SMP_ITEM,                                                      '
                     +'        P2SMP_CODPRO,                                                    '
                     +'        P2SMP_CODPRO_ORI,                                                '
                     +'        P2SMP_ORIGEM,                                                    '
                     +'        P2SMP_CODPRO_ORI,                                                '
                     +'        P2SMP_PRECO_UNI,                                                 '
                     +'        P2SMP_PRECO_VEN,                                                 '
                     +'        P2SMP_PRECO_CUS,                                                 '
                     +'        P2SMP_QTD_SOBRA,                                                 '
                     +'        P2SMP_QTD_VEN,                                                   '
                     +'        P2SMP_QTD_DEV,                                                   '
                     +'        P2SMP_QTD_QUE,                                                   '
                     +'        P2S_CODEMP,                                                      '
                     +'        P2S_LOTSEQ,                                                      '
                     +'        P2S_CHAVE,                                                       '
                     +'        P2S_ITEM,                                                        '
                     +'        P2S_CODPRO,                                                      '
                     +'        P2S_ORIGEM,                                                      '
                     +'        P2S_PRECO_UNI,                                                   '
                     +'        P2S_PRECO_VEN,                                                   '
                     +'        P2S_PRECO_CUS,                                                   '
                     +'        P2S_QTD_SOBRA,                                                   '
                     +'        P2S_QTD_VEN,                                                     '
                     +'        P2S_QTD_DEV,                                                     '
                     +'        P2S_QTD_QUE,                                                     '
                     +' CASE                                                                    '
                     +'   WHEN P2SMP_CODPRO IS NULL                                             '
                     +'     THEN NULL                                                           '
                     +'   WHEN P2SMP_ITEM_ORIGEM IS NOT NULL                                    '
                     +'     THEN P2SMP_ITEM_ORIGEM                                             '
                     +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
                     +'     THEN P2SMP_CODPRO_ORI                                               '
                     +' END AS CODIGO_AGRUPAMENTO,                                              '
                     +' CASE                                                                    '
                     +'   WHEN P2SMP_CODPRO IS NULL                                             '
                     +'     THEN (SELECT PDCODGRU FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO)       '
                     +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
                     +'     THEN (SELECT PDCODGRU FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO)     '
                     +' END AS PDCODGRU,                                                        '
                     +' CASE                                                                    '
                     +'   WHEN P2SMP_CODPRO IS NULL                                             '
                     +'     THEN (SELECT PDNOMGRU FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO)       '
                     +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
                     +'     THEN (SELECT PDNOMGRU FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO)     '
                     +' END AS PDNOMGRU,                                                        '
                     +' CASE                                                                    '
                     +'   WHEN P2SMP_CODPRO IS NULL                                             '
                     +'     THEN P2S_CODPRO                                                     '
                     +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
                     +'     THEN P2SMP_CODPRO                                                   '
                     +' END AS CODIGO_PRODUTO,                                                  '
                     +' CASE                                                                    '
                     +'   WHEN P2SMP_CODPRO IS NULL                                             '
                     +'     THEN P2S_LOTSEQ                                                     '
                     +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
                     +'     THEN P2SMP_LOTSEQ                                                   '
                     +' END AS SEQ_GRUPO,                                                       '
                     +' CASE                                                                    '
                     +'   WHEN P2SMP_CODPRO IS  NULL                                            '
                     +'     THEN (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO)         '
                     +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
                     +'     THEN (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO)       '
                     +' END AS NOME_PRODUTO,                                                    '
                     +' (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO) AS PDNOME_MP,  '
                     +' (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO) AS PDNOME_PA     '
                     +' FROM                                                                    '
                     +'      	CADP02_SOBRAS,	CADPRO,	CADP02_SOBRAS_MP                          '
                     +' where                                                                   '
                     +'    PDCODPRO=P2s_CODPRO and  P2SMP_CODEMP(+)=P2S_CODEMP and              '
                     +'    P2SMP_CHAVE(+)=P2S_CHAVE and P2SMP_CODPRO_ORI(+)=P2S_CODPRO and      '
                     +'    (P2S_CODEMP=1 or P2S_CODEMP=101) and P2S_CHAVE=0'+inttostr(pchave));
  Query_Temp.Sql.add(' order by SEQ_GRUPO, CODIGO_AGRUPAMENTO, PDNOMGRU, NOME_PRODUTO, CODIGO_PRODUTO  ');
  try
    Query_Temp.Open;
  except
    error:=SALVA_NOME('c:\sge\errosql\','ex');
    Query_Temp.SQL.SaveToFile(error);
    fmensagem('Erro ao selecionar o Pedido!!!',0,['0'],0);
    EXIT;
    end;
  Query_Temp.First;
  while not Query_Temp.Eof do
    begin
    if not Query_Temp.FieldByName('P2SMP_CHAVE').IsNull then
      begin
      QTD:=Query_Temp.FieldByName('P2SMP_QTD_VEN').AsFloat+Query_Temp.FieldByName('P2SMP_QTD_SOBRA').AsFloat-Query_Temp.FieldByName('P2SMP_QTD_DEV').AsFloat;
      end
    else
      begin
      QTD:=Query_Temp.FieldByName('P2S_QTD_VEN').AsFloat+Query_Temp.FieldByName('P2S_QTD_SOBRA').AsFloat-Query_Temp.FieldByName('P2S_QTD_DEV').AsFloat;
      end;
    if QTD>0 then
      begin



	pBaixar.pCodemp := codemp;
	pBaixar.pFilial := log_filial_padrao;
	pBaixar.pItem   := 0;
	pBaixar.pDocOri := 00;
	pBaixar.pCodUsr  := codusr;
	pBaixar.pContEsp := 0;
	pBaixar.pTipoProd := Log_TipoProdPad;
	pBaixar.pChave   := pchave;
	pBaixar.pChave_ano := ls_numped;
	pBaixar.pQtd       := qtd;
	pBaixar.pCodPro    := Query_Temp.FieldByName('CODIGO_PRODUTO').AsString;
	pBaixar.pEstNor       := 'S'; // estnor;
	pBaixar.pEstReservado := 'N';
	pBaixar.pLote         := '';
	pBaixar.pDtVcto       := 0;
	pBaixar.pDtFab        := 0;
	pBaixar.pLoteRe       := '';
	pBaixar.pObs          := '';
  PBaixar.pChaveIdNew   := pchave;

	fBaixarMercadorias(pBaixar);

{
       fBaixarMercadorias(codemp
                     ,log_filial_padrao
                     ,0 //pitem
                     ,00 // docori
                     ,codusr
                     ,0 //pcontesp
                     ,Log_TipoProdPad //ptipoprod
                     ,pchave
                     ,ls_numped
                     ,qtd
                     ,Query_Temp.FieldByName('CODIGO_PRODUTO').AsString
                     ,'S'
                     ,'N'
                     ,''
                     ,0
                  ,'' // lote re
                  ,'' // obs

                     );
}                     
      end;
    Query_Temp.Next;
    end;
  Result:=True;
  end;
end;






procedure Tfrm_sobra_dev.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;


procedure Tfrm_sobra_dev.cb_chaveButtonClick(Sender: TObject);
begin
if Frm_PedCli=nil then
  begin
  Application.CreateForm(TFrm_PedCli, Frm_PedCli);
  end
else
  begin
  Frm_PedCli.Free;
  Frm_PedCli := nil;
  Application.CreateForm(TFrm_PedCli, Frm_PedCli);
  end;
Frm_PedCli.ShowModal;
cb_chave.Text:=FloatToStr(mchaveped);
if mchaveped<>0 then
  begin
  edt_ped.Text:='  Chave..:'+cb_chave.Text
               +'  NF..:'+BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1NUMNF',DM1.Query1)
               +'  Data de Emissão..: '+BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1DATANF',DM1.Query1)
               +'  Valor..: R$'+BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1TOTALL',DM1.Query1);
  end;
Cliente:=BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1CODCLI',DM1.Query1);
edt_cliente.Text:=Cliente+' - '+BUSCA_VALOR2('CADCLI','CCODCLI',Cliente,'CRAZAO',DM1.Query1);
end;

procedure Tfrm_sobra_dev.cb_chaveExit(Sender: TObject);
var
x: integer;
begin
if cb_chave.Text<>'0' then
  begin
  cb_chave.Text:=fdeixanum(cb_chave.Text);
  dm1.Query1.Close;
  dm1.Query1.SQL.Clear;
  dm1.Query1.SQL.Add(' select max(p1chave) as p1chave, max(p1numnf) as p1numnf, max(p1datanf) as p1datanf, '
                    +' sum(p1totall) as p1totall, max(p1codcli) as p1codcli, max(p1status) as p1status,    '
                    +' min(p1codemp) as p1codemp, max(p1lotseq) as p1lotseq, max(p1analise) as p1analise   '                                
                    +' from CADP01 where p1chave='+cb_chave.Text);
  dm1.Query1.Open;
  if dm1.Query1.IsEmpty then
    begin
    cb_chave.Clear;
    tb_ped01_SOBRAS.close;
    TB_PED02_SOBRAS.close;
    TB_PED02_SOBRAS_MP.close;
    bb_incluir.Enabled  :=false;
    bb_alterar.Enabled  :=false;
    bb_gravar.Enabled   :=false;
    bb_fechar.Enabled   :=false;
    bb_imprimir.Enabled :=false;
    fmensagem('Pedido Inexistente!!!',0,['0'],0);
    edt_ped.Text:='Chave..: 0000 NF..: 0000 Data de Emissão..: 01/01/1990 Valor..: R$ 0.000,00';
    edt_cliente.Text:='0000 - Cliente não cadastrado!!!';
    cb_chave.SetFocus;
    end
  else
    begin
    CHAVE_P :=dm1.Query1.FieldByName('P1CHAVE').AsString;
    CODEMP_P:=dm1.Query1.FieldByName('P1CODEMP').AsString;
    LOTSEQ_P:=dm1.Query1.FieldByName('P1LOTSEQ').AsString;
    CODCLI_P:=dm1.Query1.FieldByName('P1CODCLI').AsString;
    edt_ped.Text:='  Chave..:'+cb_chave.Text
                 +'  NF..:'+BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1NUMNF',DM1.Query2)
                 +'  Data de Emissão..: '+BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1DATANF',DM1.Query2)
                 +'  Valor..: R$'+Format_ValFloat(BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1TOTALL',DM1.Query2));
    Cliente:=BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1CODCLI',DM1.Query2);
    edt_cliente.Text:=Cliente+' - '+BUSCA_VALOR2('CADCLI','CCODCLI',Cliente,'CRAZAO',DM1.Query2);
    if (dm1.Query1.FieldByName('P1ANALISE').AsInteger=0) and
       (not dm1.Query1.FieldByName('P1ANALISE').IsNull) then
      begin
      fmensagem('Pedido ainda não foi Colocado em Analise!!!',0,['0'],0);
      tb_ped01_SOBRAS.close;
      TB_PED02_SOBRAS.close;
      TB_PED02_SOBRAS_MP.close;
      bb_incluir.Enabled  :=false;
      bb_alterar.Enabled  :=false;
      bb_gravar.Enabled   :=false;
      bb_fechar.Enabled   :=false;
      bb_imprimir.Enabled :=false;
      cb_chave.SetFocus;
      end
    else if (dm1.Query1.FieldByName('P1STATUS').AsInteger>valint(mstatus_excluido)) then
      begin
      pnl_excluido.Visible:=True;
      edt_chave.Text:=cb_chave.Text;
      edt_newchave.SetFocus;
      end
    else if ((not dm1.Query1.FieldByName('P1ANALISE').IsNull)
         and (dm1.Query1.FieldByName('P1ANALISE').AsInteger=1))
       or (dm1.Query1.FieldByName('P1STATUS').AsInteger=2)
       or (dm1.Query1.FieldByName('P1STATUS').AsInteger=3) then
      begin
      TB_PED01_SOBRAS.Close;
      TB_PED01_SOBRAS.SQL.Clear;
      TB_PED01_SOBRAS.SQL.Add(' select * from CADP01_SOBRAS ');
      TB_PED01_SOBRAS.SQL.Add(' where '                      );
      TB_PED01_SOBRAS.SQL.Add('      P1S_CHAVE='+CHAVE_P     );
      TB_PED02_SOBRAS.SQL.Add(' and '+fla_sqlmp('P1S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
//      TB_PED01_SOBRAS.SQL.Add(' and P1S_CODCLI='+CODCLI_P    );
      try
        TB_PED01_SOBRAS.Open;
      except
        error:=SALVA_NOME('c:\sge\errosql\','ex');
        TB_PED01_SOBRAS.SQL.SaveToFile(error);
        end;

      if not TB_PED01_SOBRAS.IsEmpty then
        begin
        if TB_PED01_SOBRASP1S_CODCLI.AsFloat<>ValFloat(CODCLI_P) then
          begin
          fmensagem('Cliente do lançamente difere do cliente do pedido!'+#13
                   +'Favor corrigir!',0,['0'],0);
          Exit;
          end;


        if (TB_PED01_SOBRASP1S_STATUS.AsInteger=0) or (SecondOf(TB_PED01_SOBRASP1S_DATHOR_EVE.AsDateTime-now)>59)then
          begin
          bb_alterar.Enabled:=True;
          bb_imprimir.Enabled:=True;
          bb_incluir.Enabled:=False;
          bb_fechar.Enabled:=True;
          TB_PED02_SOBRAS.Close;
          TB_PED02_SOBRAS.SQL.Clear;
          TB_PED02_SOBRAS.SQL.Add(' select * from CADP02_SOBRAS ');
          TB_PED02_SOBRAS.SQL.Add(' where '                      );
          TB_PED02_SOBRAS.SQL.Add('      P2S_CHAVE='+CHAVE_P     );
          TB_PED02_SOBRAS.SQL.Add(' and '+fla_sqlmp('P2S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
          try
            TB_PED02_SOBRAS.Open;
          except
            error:=SALVA_NOME('c:\sge\errosql\','ex');
            TB_PED02_SOBRAS.SQL.SaveToFile(error);
            end;
          bb_alterar.SetFocus;
          end
        else if (TB_PED01_SOBRASP1S_STATUS.AsInteger=1) then
          begin

          bb_incluir.Enabled:=False;
          bb_alterar.Enabled:=False;
          bb_imprimir.Enabled:=False;
          bb_fechar.Enabled:=False;
          fmensagem('Pedido de sobras está sendo alterado em outra estação!!!',0,['0'],0);
          end
        else if TB_PED01_SOBRASP1S_STATUS.AsInteger=2 then
          begin
          bb_imprimir.Enabled:=True;
          bb_incluir.Enabled:=False;
          bb_alterar.Enabled:=False;
          bb_gravar.Enabled:=False;
          bb_fechar.Enabled:=False;
          TB_PED02_SOBRAS.Close;
          TB_PED02_SOBRAS.SQL.Clear;
          TB_PED02_SOBRAS.SQL.Add(' select * from CADP02_SOBRAS ');
          TB_PED02_SOBRAS.SQL.Add(' where '                      );
          TB_PED02_SOBRAS.SQL.Add('      P2S_CHAVE='+CHAVE_P     );
          TB_PED02_SOBRAS.SQL.Add(' and '+fla_sqlmp('P2S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
          try
            TB_PED02_SOBRAS.Open;
         except
            error:=SALVA_NOME('c:\sge\errosql\','ex');
            TB_PED02_SOBRAS.SQL.SaveToFile(error);
            end;
          fmensagem('Pedido ja Finalizado!!!',0,['0'],0);
          bb_imprimir.SetFocus;
          end;
        end
      else
        begin
        bb_incluir.Enabled:=True;
        bb_incluir.SetFocus;
        bb_alterar.Enabled  :=false;
        bb_gravar.Enabled   :=false;
        bb_fechar.Enabled   :=false;
        bb_imprimir.Enabled :=false;
        end;
      end;
    end;
  end
else
  begin
  tb_ped01_SOBRAS.close;
  TB_PED02_SOBRAS.close;
  TB_PED02_SOBRAS_MP.close;
  bb_incluir.Enabled  :=false;
  bb_alterar.Enabled  :=false;
  bb_gravar.Enabled   :=false;
  bb_fechar.Enabled   :=false;
  bb_imprimir.Enabled :=false;
  fmensagem('Pedido Inexistente!!!',0,['0'],0);
  edt_ped.Text:='Chave..: 0000 NF..: 0000 Data de Emissão..: 01/01/1990 Valor..: R$ 0.000,00';
  edt_cliente.Text:='0000 - Cliente não cadastrado!!!';
  end;
end;

procedure Tfrm_sobra_dev.FormActivate(Sender: TObject);
begin
PC1.TabIndex:=0;
OPERACAO:=0;
MCODPRO_ANT:=0;
if flfilpad(0,'_SOBRA_DEV','') then
  begin
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MATERIAPRIMA',[]) then
    begin
    cb_materiaprima.Checked := DM4.Tb_FilPad2FPVALOR.AsString = 'true';
    end;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_PRECOEXTRA',[]) then
    begin
    cb_precoextra.Checked := DM4.Tb_FilPad2FPVALOR.AsString = 'true';
    end;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_GRUPO_LOTE',[]) then
    begin
    CB_GRUPO_LOTE.Checked := DM4.Tb_FilPad2FPVALOR.AsString = 'true';
    end;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_ALT_PCO',[]) then
    begin
    cb_alt_pco.Checked := DM4.Tb_FilPad2FPVALOR.AsString = 'true';
    end;
  if DM4.Tb_FilPad2.Locate('FPCOMP','CB_DEDACR_HOR_VENDA',[]) then
    begin
    cb_dedacr_hor_venda.Checked := DM4.Tb_FilPad2FPVALOR.AsString = 'true';
    end;
  end;
flfilpad(0,'_SOBRA_DEV_GRUPO','');
Cds_Grupo.EmptyDataSet;
while not DM4.Tb_FilPad2.Eof do
  begin
  Cds_Grupo.Append;
  Cds_GrupoCODGRU.AsString:=DM4.Tb_FilPad2FPCOMP.AsString;
  Cds_GrupoPERC.AsString  :=DM4.Tb_FilPad2FPVALOR.AsString;
  Cds_Grupo.Post;
  DM4.Tb_FilPad2.Next;
  end;
TS2.TabVisible:=cb_materiaprima.Checked;
edt_pcouni.ReadOnly:=cb_precoextra.Checked;
if codusr=1111 then
  begin
  ts3.TabVisible:=True;
  mod_01.TabVisible:=True;
  mod_02.TabVisible:=True;
  end
else
  begin
  ts3.TabVisible:=False;
  mod_01.TabVisible:=False;
  mod_02.TabVisible:=False;
  end;
end;

procedure Tfrm_sobra_dev.bb_alterarClick(Sender: TObject);
begin
if TB_PED01_SOBRASP1S_STATUS.AsInteger=0 then
  begin
//  dbg_prod_aca.Columns[0].ReadOnly:=False; - codpro
//  dbg_prod_aca.Columns[1].ReadOnly:=False; - nompro
//  dbg_prod_aca.Columns[2].ReadOnly:=False; - qtd ven
  dbg_prod_aca.Columns[3].ReadOnly:=False;
  dbg_prod_aca.Columns[4].ReadOnly:=False;
  dbg_prod_aca.Columns[5].ReadOnly:=False;
if cb_alt_pco.Checked=True then
  begin
  dbg_prod_aca.Columns[6].ReadOnly:=False;
  dbg_prod_aca.Columns[7].ReadOnly:=False;
  dbg_prod_aca.Columns[8].ReadOnly:=False;
  end;

//  dbg_prod_mat.Columns[0].ReadOnly:=False; - codpro
//  dbg_prod_mat.Columns[1].ReadOnly:=False; - codmat
//  dbg_prod_mat.Columns[2].ReadOnly:=False; - nompro
//  dbg_prod_mat.Columns[3].ReadOnly:=False; - qtd ven
  dbg_prod_mat.Columns[4].ReadOnly:=False;
  dbg_prod_mat.Columns[5].ReadOnly:=False;
  dbg_prod_mat.Columns[6].ReadOnly:=False;
if cb_alt_pco.Checked=True then
  begin
  dbg_prod_mat.Columns[7].ReadOnly:=False;
  dbg_prod_mat.Columns[8].ReadOnly:=False;
  dbg_prod_mat.Columns[9].ReadOnly:=False;
  end;

  TB_PED01_SOBRAS.Edit;
  TB_PED01_SOBRASP1S_STATUS.AsInteger:=1;

  TB_PED01_SOBRAS.Post;
  DM1.Query4.Close;
  DM1.Query4.SQL.Clear;
  DM1.Query4.SQL.Add(' select                                        '
                    +'  case                                         '
                    +'   when  max(p2s_lotseq) >= max(p2smp_lotseq)  '
                    +'    then max(p2s_lotseq)                       '
                    +'   when max(p2s_lotseq) < max(p2smp_lotseq)    '
                    +'    then max(p2smp_lotseq)                     '
                    +'  end Prox_Lote                                '
                    +' from cadp02_sobras, cadp02_sobras_mp          '
                    +' where p2s_chave=p2smp_chave                   '
                    +' and p2s_codemp=p2smp_codemp                   '
                    +' and p2s_chave='+cb_chave.Text);
  DM1.Query4.SQL.Add(codemp2('p2s_codemp',codemp));
  DM1.Query4.Open;
  LOTSEQ_P:=IntToStr(dm1.Query4.fieldbyname('Prox_Lote').AsInteger+1);
  Timer1.Enabled:=True;
  cb_chave.Enabled:=False;
  bb_alterar.Enabled:=False;
  bb_gravar.Enabled:=True;
  bb_imprimir.Enabled:=False;
  bb_item_cancelaClick(self);
  bb_item_cancela_mpClick(self);
  bb_fechar.Enabled:=False;
  OPERACAO:=2;
  end
else if BUSCA_VALOR2('cadp01_sobras','p1s_chave',cb_chave.Text,'p1s_status',dm1.Query2)='1' then
  begin
  ShowMessage('Pedido já esta sendo alterado em outra estação');
  end
else if BUSCA_VALOR2('cadp01_sobras','p1s_chave',cb_chave.Text,'p1s_status',dm1.Query2)='9' then
  begin
  ShowMessage('Pedido foi excluido');
  end;

end;


procedure Tfrm_sobra_dev.bb_fecharClick(Sender: TObject);
begin
TB_PED01_SOBRAS.Edit;
TB_PED01_SOBRASP1S_USER_FEC.AsInteger:=codusr;
TB_PED01_SOBRASP1S_DATA_FEC.AsDateTime:=Date;
TB_PED01_SOBRASP1S_STATUS.AsInteger:=2;
TB_PED01_SOBRAS.Post;

OPERACAO:=0;

bb_incluir.Enabled:=False;
bb_gravar.Enabled:=False;
bb_alterar.Enabled:=False;
bb_fechar.Enabled:=False;

bb_item_novo.Enabled:=False;
bb_item_cancela.Enabled:=False;
Timer1.Enabled:=False;
bb_item_grava.Enabled:=False;
bb_item_excluir.Enabled:=False;
bb_item_novo_mp.Enabled:=False;
bb_item_cancela_mp.Enabled:=False;
bb_item_grava_mp.Enabled:=False;
bb_item_excluir_mp.Enabled:=False;

Baixa_Estoque(StrToInt(cb_chave.Text),1,qr_rel);
end;

procedure Tfrm_sobra_dev.bb_incluirClick(Sender: TObject);
var
  formace: integer;
begin
if cb_chave.Text<>'0' then
  begin
  TB_PED01_SOBRAS.Close;
  TB_PED01_SOBRAS.SQL.Clear;
  TB_PED01_SOBRAS.SQL.Add(' select * from cadp01_sobras ');
  TB_PED01_SOBRAS.SQL.Add(' where p1s_chave='+cb_chave.Text);
  try
    TB_PED01_SOBRAS.Open;
  except
    error:=SALVA_NOME('c:\sge\errosql\','ex');
    TB_PED01_SOBRAS.SQL.SaveToFile(error);
    end;
  if TB_PED01_SOBRAS.IsEmpty  then
    begin
//    Instrucao_SQL('delete from cadp01_sobras where p1s_chave='+chr(39)+cb_chave.Text+chr(39),dm1.Query3);
//    Instrucao_SQL('delete from cadp02_sobras where p2s_chave='+chr(39)+cb_chave.Text+chr(39),dm1.Query3);
//    Instrucao_SQL('delete from cadp02_sobras_mp where p2smp_chave='+chr(39)+cb_chave.Text+chr(39),dm1.Query3);
    dm1.Query3.Close;
    dm1.Query3.SQL.Clear;
    dm1.Query3.SQL.Add(' select max(p1chave) as p1chave, max(p1numnf) as p1numnf, max(p1datanf) as p1datanf, '
                      +' sum(p1totall) as p1totall, max(p1codcli) as p1codcli, max(p1status) as p1status,    '
                      +' min(p1codemp) as p1codemp, max(p1lotseq) as p1lotseq, max(p1formace) as p1formace,  '
                      +' min(p1tabpv) as p1tabpv, max(p1codpv) as p1codpv, max(p1pvactd) as p1pvactd           '
                      +' from CADP01 where p1chave='+cb_chave.Text+' and p1status<'+mstatus_excluido+'                        ');
    dm1.Query3.Open;
    formace:=dm1.Query3.fieldbyname('P1FORMACE').AsInteger;
    tb_ped01_SOBRAS.Insert;
//    tb_ped01_SOBRASP1S_CODEMP.AsInteger   :=dm1.Query3.fieldbyname('P1CODEMP').AsInteger;
    tb_ped01_SOBRASP1S_CODEMP.AsInteger   :=CODEMP;
    tb_ped01_SOBRASP1S_CHAVE.AsInteger    :=dm1.Query3.fieldbyname('P1CHAVE' ).AsInteger;
    tb_ped01_SOBRASP1S_LOTSEQ.AsInteger   :=0;
    TB_PED01_SOBRASP1S_TABPV.AsString     :=dm1.Query3.fieldbyname('P1TABPV' ).AsString;
    TB_PED01_SOBRASP1S_CODPV.AsFloat      :=dm1.Query3.fieldbyname('P1CODPV' ).AsFloat;
    TB_PED01_SOBRASP1S_PACTD.AsString     :=dm1.Query3.fieldbyname('P1PVACTD' ).AsString;
    tb_ped01_SOBRASP1S_CODCLI.AsInteger   :=dm1.Query3.fieldbyname('P1CODCLI').AsInteger;
    tb_ped01_SOBRASP1S_DATA_INC.AsDateTime:=Date;
    tb_ped01_SOBRASP1S_USER_INC.AsInteger :=codusr;
    tb_ped01_SOBRASP1S_STATUS.AsInteger :=0;
    tb_ped01_SOBRAS.Post;
    TB_PED02_SOBRAS.Close;
    TB_PED02_SOBRAS.SQL.Clear;
    TB_PED02_SOBRAS.SQL.Add(' Select * from CADP02_SOBRAS ');
    TB_PED02_SOBRAS.SQL.Add(' where P2S_CODEMP is null ');
    try
      TB_PED02_SOBRAS.Open;
    except
      error:=SALVA_NOME('c:\sge\errosql\','ex');
      TB_PED02_SOBRAS.SQL.SaveToFile(error);
      end;
    dm1.Query4.Close;
    dm1.Query4.SQL.Clear;
    dm1.Query4.SQL.Add(' Select                                                  ');
    dm1.Query4.SQL.Add('  min(P2CODEMP) as P2CODEMP, max(P2CODPRO) as P2CODPRO,  ');
    dm1.Query4.SQL.Add('  max(P2LOTSEQ) as P2LOTSEQ, max(P2CHAVE) as P2CHAVE,    ');
    if formace=1 then
      begin
      dm1.Query4.SQL.Add(' max(P2QTD) as P2QTD, sum(P2PRECO) as P2PRECO,         ');
      dm1.Query4.SQL.Add(' sum(P2PCOCUS) as P2PCOCUS, sum(P2PCOTAB) as P2PCOTAB  ');
      end
    else
      begin
      dm1.Query4.SQL.Add(' sum(P2QTD) as P2QTD, max(P2PRECO) as P2PRECO,         ');
      dm1.Query4.SQL.Add(' max(P2PCOCUS) as P2PCOCUS, max(P2PCOTAB) as P2PCOTAB  ');
      end;

    dm1.Query4.SQL.Add(' from CADP02 ');
    dm1.Query4.SQL.Add(' where P2CHAVE='+chr(39)+cb_chave.Text+chr(39));
    dm1.Query4.SQL.Add(' group by P2CODPRO, P2ITEM ');
    dm1.Query4.SQL.Add(' order by P2ITEM ');
    try
      dm1.Query4.Open;
    except
      Instrucao_SQL('delete from cadp01_sobras where p1s_chave='+chr(39)+cb_chave.Text+chr(39),dm1.Query3);
      Instrucao_SQL('delete from cadp02_sobras where p2s_chave='+chr(39)+cb_chave.Text+chr(39),dm1.Query3);
      Instrucao_SQL('delete from cadp02_sobras_mp where p2smp_chave='+chr(39)+cb_chave.Text+chr(39),dm1.Query3);
      end;
    if DM1.Query4.RecordCount>0 then
      begin
      dm1.Query4.First;
      while not dm1.Query4.Eof do
        begin
        TB_PED02_SOBRAS.Insert;
        TB_PED02_SOBRASP2S_CODPRO.AsInteger      :=DM1.Query4.fieldbyname('P2CODPRO').AsInteger;
        TB_PED02_SOBRASP2S_CODEMP.AsInteger      :=CODEMP;
        TB_PED02_SOBRASP2S_LOTSEQ.AsInteger      :=0;
        TB_PED02_SOBRASP2S_CHAVE.AsInteger       :=DM1.Query4.fieldbyname('P2CHAVE').AsInteger;
        TB_PED02_SOBRASP2S_ORIGEM.AsInteger      :=1;
        TB_PED02_SOBRASP2S_QTD_VEN.AsFloat       :=DM1.Query4.fieldbyname('P2QTD').AsFloat;
        TB_PED02_SOBRASP2S_QTD_QUE.AsFloat       :=0;
        TB_PED02_SOBRASP2S_QTD_DEV.AsFloat       :=0;
        TB_PED02_SOBRASP2S_QTD_SOBRA.AsFloat     :=0;
        TB_PED02_SOBRASP2S_PRECO_UNI.AsFloat     :=dm1.Query4.fieldbyname('P2PRECO').AsFloat;
        TB_PED02_SOBRASP2S_PRECO_CUS.AsFloat     :=dm1.Query4.fieldbyname('P2PCOCUS').AsFloat;
        if cb_dedacr_hor_venda.Checked then
          TB_PED02_SOBRASP2S_PRECO_VEN.AsFloat     :=dm1.Query4.fieldbyname('P2PCOTAB').AsFloat/(TB_PED01_SOBRASP1S_PACTD.AsFloat/100+1)
        else
          TB_PED02_SOBRASP2S_PRECO_VEN.AsFloat     :=dm1.Query4.fieldbyname('P2PCOTAB').AsFloat;
        flcadpro(1,0,0,TB_PED02_SOBRASP2S_CODPRO.AsString);
        if not DM1.Tb_Pro.IsEmpty then
          if Cds_Grupo.Locate('CODGRU',DM1.Tb_ProPDCODGRU.AsString,[loCaseInsensitive,loPartialKey]) then
            TB_PED02_SOBRASP2S_PRECO_VEN.AsFloat     :=TB_PED02_SOBRASP2S_PRECO_VEN.AsFloat/(Cds_GrupoPERC.AsFloat/100+1);
        TB_PED02_SOBRAS.Post;
        dm1.Query4.Next;
        end;
      end;
    TB_PED02_SOBRAS_MP.Close;
    TB_PED02_SOBRAS_MP.SQL.Clear;
    TB_PED02_SOBRAS_MP.SQL.Add(' select * from CADP02_SOBRAS_MP ');
    TB_PED02_SOBRAS_MP.SQL.Add(' where '                         );
    TB_PED02_SOBRAS_MP.SQL.Add('      P2SMP_CHAVE='+tb_ped01_SOBRASP1S_CHAVE.AsString);
    TB_PED02_SOBRAS_MP.SQL.Add(' and '+fla_sqlmp('P2SMP_CODEMP',Form_SelEmp.CLB_EMPRESAS) );
    TB_PED02_SOBRAS_MP.SQL.Add(' and P2SMP_LOTSEQ='+tb_ped01_SOBRASP1S_LOTSEQ.AsString);
    TB_PED02_SOBRAS_MP.Open;
    dm1.Query2.Close;
    dm1.Query2.SQL.Clear;
    dm1.Query2.SQL.Add('select * from CADP02_MP where P2MP_CHAVE='+cb_chave.Text);
    dm1.Query2.Open;
    if DM1.Query2.RecordCount>0 then
      begin
      dm1.Query2.First;
      while not dm1.Query2.Eof do
        begin
        TB_PED02_SOBRAS_MP.Insert;
        TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsInteger     := DM1.Query2.FieldByName('P2MP_CODPRO'    ).AsInteger;
        TB_PED02_SOBRAS_MPP2SMP_CODPRO_ORI.AsInteger := DM1.Query2.FieldByName('P2MP_CODPRO_ORI').AsInteger;
        TB_PED02_SOBRAS_MPP2SMP_CODEMP.AsInteger     := CODEMP;
        TB_PED02_SOBRAS_MPP2SMP_LOTSEQ.AsInteger     := 0;
        TB_PED02_SOBRAS_MPP2SMP_CHAVE.AsInteger      := DM1.Query2.FieldByName('P2MP_CHAVE'     ).AsInteger;
        TB_PED02_SOBRAS_MPP2SMP_ORIGEM.AsInteger     := 1;
        TB_PED02_SOBRAS_MPP2SMP_QTD_VEN.AsFloat      := DM1.Query2.FieldByName('P2MP_QTDSOL'    ).AsFloat;
        TB_PED02_SOBRAS_MPP2SMP_QTD_SOBRA.AsFloat    := DM1.Query2.FieldByName('P2MP_QTD_SOBRA' ).AsFloat;
        TB_PED02_SOBRAS_MPP2SMP_QTD_DEV.AsFloat      := 0;
        TB_PED02_SOBRAS_MPP2SMP_QTD_QUE.AsFloat      := 0;
        TB_PED02_SOBRAS_MPP2SMP_PRECO_VEN.AsFloat    := DM1.Query2.FieldByName('P2MP_PRECO'     ).AsFloat;
        TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI.AsFloat    := DM1.Query2.FieldByName('P2MP_PRECO_ORI' ).AsFloat;
        TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS.AsFloat    := DM1.Query2.FieldByName('P2MP_PCOCUS'    ).AsFloat;
        TB_PED02_SOBRAS_MP.Post;
        dm1.Query2.Next;
        end;
      end;
    bb_alterar.Enabled  := True;
    bb_fechar.Enabled   := True;
    bb_imprimir.Enabled := True;
    bb_incluir.Enabled  := False;
    TB_PED01_SOBRAS.Close;
    TB_PED01_SOBRAS.SQL.Clear;
    TB_PED01_SOBRAS.SQL.Add(' select * from CADP01_SOBRAS ');
    TB_PED01_SOBRAS.SQL.Add(' where '                      );
    TB_PED01_SOBRAS.SQL.Add('      P1S_CHAVE='+CHAVE_P     );
    TB_PED01_SOBRAS.SQL.Add(' and '+fla_sqlmp('P1S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
    TB_PED01_SOBRAS.SQL.Add(' and P1S_CODCLI='+CODCLI_P    );
    try
      TB_PED01_SOBRAS.Open;
    except
      error:=SALVA_NOME('c:\sge\errosql\','ex');
      TB_PED01_SOBRAS.SQL.SaveToFile(error);
      end;
    end
  else if BUSCA_VALOR2('CADP01_SOBRAS','P1S_CHAVE',cb_chave.Text,'P1S_STATUS',DM1.Query2)='1' then
    begin
    ShowMessage('Pedido está sendo alterado em outra estação!!!');
    end;
  end;
if not tb_ped01_SOBRASP1S_CHAVE.IsNull then
  begin
  TB_PED02_SOBRAS.Close;
  TB_PED02_SOBRAS.SQL.Clear;
  TB_PED02_SOBRAS.SQL.Add(' select * from CADP02_SOBRAS ');
  TB_PED02_SOBRAS.SQL.Add(' where '                      );
  TB_PED02_SOBRAS.SQL.Add('      P2S_CHAVE='+tb_ped01_SOBRASP1S_CHAVE.AsString);
  TB_PED02_SOBRAS.SQL.Add(' and '+fla_sqlmp('P2S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
  TB_PED02_SOBRAS.Open;
  TB_PED02_SOBRAS.Active:=True;
  TB_PED02_SOBRAS_MP.Close;
  TB_PED02_SOBRAS_MP.SQL.Clear;
  TB_PED02_SOBRAS_MP.SQL.Add(' select * from CADP02_SOBRAS_MP ');
  TB_PED02_SOBRAS_MP.SQL.Add(' where '                         );
  TB_PED02_SOBRAS_MP.SQL.Add('      P2SMP_CHAVE='+tb_ped01_SOBRASP1S_CHAVE.AsString);
  TB_PED02_SOBRAS_MP.SQL.Add(' and '+fla_sqlmp('P2SMP_CODEMP',Form_SelEmp.CLB_EMPRESAS));
  TB_PED02_SOBRAS_MP.Open;
  TB_PED02_SOBRAS_MP.Active:=True;
  OPERACAO:=1;
  end;
end;

procedure Tfrm_sobra_dev.cb_chaveEnter(Sender: TObject);
begin
if (TB_PED02_SOBRAS.Active=False) and (trim(cb_chave.text)='0') then
  begin
  cb_chave.Clear;
  tb_ped01_SOBRAS.close;
  TB_PED02_SOBRAS.close;
  TB_PED02_SOBRAS_MP.close;
  end;
end;

procedure Tfrm_sobra_dev.FormShow(Sender: TObject);
begin
tb_ped01_SOBRAS.Close;
TB_PED02_SOBRAS.Close;
TB_PED02_SOBRAS_MP.Close;
end;

procedure Tfrm_sobra_dev.cb_codproButtonClick(Sender: TObject);
begin
cb_codpro.Text:=fChamaPro(0,'Frm_sobra_dev','');
edt_nompro.Text:=DM1.Tb_ProPDNOME.AsString;
end;

procedure Tfrm_sobra_dev.cb_codproEnter(Sender: TObject);
begin
if trim(cb_codpro.text)='0' then
  begin
  cb_codpro.Clear;
  end;
end;

procedure Tfrm_sobra_dev.cb_codproExit(Sender: TObject);
begin
cb_codpro.Text:=fdeixanum2(cb_codpro.Text);
if not (flcadpro(1,0,0,Trim(cb_codpro.Text))) and (Trim(cb_codpro.Text)<>'') and (Trim(cb_codpro.Text)<>'0')then
  begin
  fmensagem('Produto não cadastrado!',0,['0'],0);
  cb_codpro.setfocus;
  exit;
  end
else if TB_PED02_SOBRAS.State in [dsinsert] then
  begin
  edt_nompro.Text                      := DM1.Tb_ProPDNOME.AsString;
  edt_pcouni.Text                      := FormatFloat(mcasaspu,DM1.Tb_ProPDPRECO1.AsFloat+(DM1.Tb_ProPDPRECO1.AsFloat*TB_PED01_SOBRASP1S_PACTD.AsFloat/100));
  TB_PED02_SOBRASP2S_CODPRO.AsFloat    := fsonumero(cb_codpro.Text);
  TB_PED02_SOBRASP2S_PRECO_CUS.AsFloat := DM1.Tb_ProPDPRECOC.AsFloat+(DM1.Tb_ProPDPRECOC.AsFloat*TB_PED01_SOBRASP1S_PACTD.AsFloat/100);
  TB_PED02_SOBRASP2S_PRECO_UNI.AsFloat := DM1.Tb_ProPDPRECO1.AsFloat+(DM1.Tb_ProPDPRECO1.AsFloat*TB_PED01_SOBRASP1S_PACTD.AsFloat/100);
  edt_pcouni.Text:=Format_ValFloat(edt_pcouni.Text);
  end;
end;

procedure Tfrm_sobra_dev.bb_item_novoClick(Sender: TObject);
begin
cb_codpro.Text:='0';
edt_nompro.Clear;
edt_qtd.Text:='0';
edt_sobras.Text:='0';
edt_pcouni.Text:='0,00';
edt_pcotot.Text:='0,00';
cb_codpro.ReadOnly:=False;
edt_qtd.ReadOnly:=False;
edt_sobras.ReadOnly:=False;
//edt_pcotot.ReadOnly:=False;
cb_codpro.SetFocus;
bb_item_novo.Enabled:=False;
Timer1.Enabled:=True;
bb_item_cancela.Enabled:=True;
bb_item_grava.Enabled:=True;
bb_item_excluir.Enabled:=False;
bb_item_novo_mp.Enabled:=False;
bb_item_cancela_mp.Enabled:=False;
bb_item_grava_mp.Enabled:=False;
bb_item_excluir_mp.Enabled:=False;
TB_PED02_SOBRAS.Insert;
TB_PED02_SOBRASP2S_CODEMP.AsString      :=IIF(StrToInt(CODEMP_P)<100,CODEMP_P,IntToStr(StrToInt(CODEMP_P)-100));
TB_PED02_SOBRASP2S_CHAVE.AsString       :=CHAVE_P;
TB_PED02_SOBRASP2S_LOTSEQ.AsString      :=LOTSEQ_P;
TB_PED02_SOBRASP2S_ORIGEM.AsInteger     :=2;
TB_PED02_SOBRASP2S_QTD_VEN.AsInteger    :=0;
TB_PED02_SOBRASP2S_QTD_QUE.AsInteger    :=0;
TB_PED02_SOBRASP2S_QTD_DEV.AsInteger    :=0;
end;

procedure Tfrm_sobra_dev.bb_item_cancelaClick(Sender: TObject);
begin
cb_codpro.Text:='0';
edt_nompro.Clear;
edt_qtd.Text:='0';
edt_sobras.Text:='0';
edt_pcouni.Text:='0,00';
edt_pcotot.Text:='0,00';
cb_codpro.ReadOnly:=True;
edt_qtd.ReadOnly:=True;
edt_sobras.ReadOnly:=True;
edt_pcouni.ReadOnly:=True;
//edt_pcotot.ReadOnly:=True;
bb_item_novo.Enabled:=True;
bb_item_cancela.Enabled:=False;
bb_item_grava.Enabled:=False;
bb_item_excluir.Enabled:=True;
bb_item_novo_mp.Enabled:=True;
bb_item_cancela_mp.Enabled:=False;
bb_item_grava_mp.Enabled:=False;
bb_item_excluir_mp.Enabled:=True;
TB_PED02_SOBRAS.Cancel;
end;

procedure Tfrm_sobra_dev.bb_item_gravaClick(Sender: TObject);
begin
if (trim(cb_codpro.Text)<>'') and (trim(cb_codpro.Text)<>'0') then
  begin
  TB_PED02_SOBRASP2S_CODPRO.AsFloat      :=fsonumero(cb_codpro.Text);
  TB_PED02_SOBRASP2S_QTD_VEN.AsFloat     :=ValFloat(edt_qtd.Text);
  TB_PED02_SOBRASP2S_QTD_SOBRA.AsFloat   :=ValFloat(edt_sobras.Text);
  TB_PED02_SOBRASP2S_PRECO_UNI.AsFloat   :=StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))*(TB_PED01_SOBRASP1S_PACTD.AsFloat/100+1);
  TB_PED02_SOBRASP2S_PRECO_CUS.AsFloat   :=StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECOC','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))*(TB_PED01_SOBRASP1S_PACTD.AsFloat/100+1);
  TB_PED02_SOBRASP2S_PRECO_VEN.AsFloat   :=ValFloat(edt_pcouni.Text);
  TB_PED02_SOBRAS.Post;
  cb_codpro.Text:='0';
  edt_nompro.Clear;
  edt_qtd.Text:='0';
  edt_sobras.Text:='0';
  edt_pcouni.Text:='0,00';
  edt_pcotot.Text:='0,00';
  cb_codpro.ReadOnly:=True;
  edt_qtd.ReadOnly:=True;
  edt_sobras.ReadOnly:=True;
  edt_pcouni.ReadOnly:=True;
  //edt_pcotot.ReadOnly:=True;
  bb_item_novo.Enabled:=True;
  bb_item_cancela.Enabled:=False;
  bb_item_grava.Enabled:=False;
  bb_item_excluir.Enabled:=True;
  bb_item_novo_mp.Enabled:=True;
  bb_item_cancela_mp.Enabled:=False;
  bb_item_grava_mp.Enabled:=False;
  bb_item_excluir_mp.Enabled:=True;
  end
else
  begin
    fmensagem('Favor verifique se os dados foram digitados corretamente!!!',0,['0'],0);
  end;
end;

procedure Tfrm_sobra_dev.edt_qtdExit(Sender: TObject);
begin
edt_qtd.Text:=FloatToStr(ValFloat(edt_qtd.Text));
if (ValFloat(edt_qtd.Text)<>0) and (ValFloat(edt_pcouni.Text)<>0) then
  begin
  edt_pcotot.Text:=FloatToStr(ValFloat(edt_qtd.Text)*ValFloat(edt_pcouni.Text));
  edt_pcotot.Text:=Format_ValFloat(edt_pcotot.Text);
  end;
end;

procedure Tfrm_sobra_dev.edt_pcouniExit(Sender: TObject);
begin
edt_pcouni.Text:=Format_ValFloat(edt_pcouni.Text);
if edt_pcouni.Text<>'0,00' then
  begin
  edt_pcotot.Text:=FloatToStr(ValFloat(edt_qtd.Text)*ValFloat(edt_pcouni.Text));
  edt_pcotot.Text:=Format_ValFloat(edt_pcotot.Text);
  end;
end;

procedure Tfrm_sobra_dev.bb_item_excluirClick(Sender: TObject);
begin
{if TB_PED02_SOBRASP2S_ORIGEM.AsInteger=2 then
  begin
  TB_PED02_SOBRAS.Delete;
  end
else if TB_PED02_SOBRASP2S_ORIGEM.AsInteger=1 then
  begin
  fmensagem('Produto Adicionado Atraves de Pedido, não pode ser Excluido!!!',0,['0'],0);
  end;}
if not (TB_PED02_SOBRASP2S_CODPRO.IsNull) and (fMensagem('Quer Realmente Exluir este produto!',0,['1','2'],0)=mrYes) then
  begin
  TB_PED02_SOBRAS.Delete;
  end;
end;

procedure Tfrm_sobra_dev.cb_codpro_mpExit(Sender: TObject);
begin
cb_codpro_mp.Text:=fdeixanum2(cb_codpro_mp.Text);
if not (flcadpro(1,0,0,Trim(cb_codpro_mp.Text))) and (Trim(cb_codpro_mp.Text)<>'') and (Trim(cb_codpro_mp.Text)<>'0')then
  begin
  fmensagem('Produto não cadastrado!',0,['0'],0);
  cb_codpro_mp.setfocus;
  exit;
  end
else if TB_PED02_SOBRAS_MP.State in [dsinsert] then
  begin
  edt_nompro_mp.Text                        := DM1.Tb_ProPDNOME.AsString;
  edt_pcouni_mp.Text                        := DM1.Tb_ProPDPRECO1.AsString;
  TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsFloat    := fsonumero(cb_codpro_mp.Text);
  TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsFloat    := fsonumero(cb_codpro_mp.Text);
  TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS.AsFloat := DM1.Tb_ProPDPRECOC.AsFloat+(DM1.Tb_ProPDPRECOC.AsFloat*TB_PED01_SOBRASP1S_PACTD.AsFloat/100);
  TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI.AsFloat := DM1.Tb_ProPDPRECO1.AsFloat+(DM1.Tb_ProPDPRECO1.AsFloat*TB_PED01_SOBRASP1S_PACTD.AsFloat/100);
  edt_pcouni_mp.Text:=Format_ValFloat(edt_pcouni_mp.Text);
  end;
end;

procedure Tfrm_sobra_dev.cb_codpro_mpEnter(Sender: TObject);
begin
if trim(cb_codpro_mp.text)='0' then
  begin
  cb_codpro_mp.Clear;
  end;
end;

procedure Tfrm_sobra_dev.edt_pcouniEnter(Sender: TObject);
begin
if cb_precoextra.Checked=True then
  begin
  edt_pcouni.ReadOnly:=False;
  end
else
  begin
  edt_pcouni.ReadOnly:=True;
  end;
end;

procedure Tfrm_sobra_dev.bb_gravarClick(Sender: TObject);
begin
TB_PED01_SOBRAS.Edit;
TB_PED01_SOBRASP1S_STATUS.AsInteger:=0;
TB_PED01_SOBRAS.Post;

dbg_prod_aca.Columns[0].ReadOnly:=True;
dbg_prod_aca.Columns[1].ReadOnly:=True;
dbg_prod_aca.Columns[2].ReadOnly:=True;
dbg_prod_aca.Columns[3].ReadOnly:=True;
dbg_prod_aca.Columns[4].ReadOnly:=True;
dbg_prod_aca.Columns[5].ReadOnly:=True;

dbg_prod_mat.Columns[1].ReadOnly:=True;
dbg_prod_mat.Columns[2].ReadOnly:=True;
dbg_prod_mat.Columns[3].ReadOnly:=True;
dbg_prod_mat.Columns[4].ReadOnly:=True;
dbg_prod_mat.Columns[5].ReadOnly:=True;
dbg_prod_mat.Columns[6].ReadOnly:=True;

Timer1.Enabled:=False;
bb_item_novo.Enabled:=False;
bb_item_cancela.Enabled:=False;
bb_item_grava.Enabled:=False;
bb_item_excluir.Enabled:=False;
bb_item_novo_mp.Enabled:=False;
bb_item_cancela_mp.Enabled:=False;
bb_item_grava_mp.Enabled:=False;
bb_item_excluir_mp.Enabled:=False;

OPERACAO:=0;

bb_alterar.Enabled:=True;
bb_gravar.Enabled:=False;
bb_fechar.Enabled:=True;
bb_imprimir.Enabled:=True;
cb_chave.Enabled:=True;
cb_chave.ReadOnly:=False;
bb_imprimir.SetFocus;

end;

procedure Tfrm_sobra_dev.bb_item_novo_mpClick(Sender: TObject);
begin
if trim(pega_codigo(edt_prodaca.Text,'-'))<>'0' then
  begin
  cb_codpro_mp.Text:='0';
  edt_nompro_mp.Clear;
  edt_qtd_mp.Text:='0';
  edt_sobras_mp.Text:='0';
  edt_pcouni_mp.Text:='0,00';
  edt_pcotot_mp.Text:='0,00';
  cb_codpro_mp.ReadOnly:=False;
  edt_qtd_mp.ReadOnly:=False;
  edt_sobras_mp.ReadOnly:=False;
  //edt_pcotot.ReadOnly:=False;
  cb_codpro_mp.SetFocus;
  bb_item_novo_mp.Enabled:=False;
  bb_item_cancela_mp.Enabled:=True;
  bb_item_grava_mp.Enabled:=True;
  bb_item_excluir_mp.Enabled:=False;
  bb_item_novo.Enabled:=False;
  bb_item_cancela.Enabled:=False;
  bb_item_grava.Enabled:=False;
  bb_item_excluir.Enabled:=False;
  TB_PED02_SOBRAS_MP.Insert;
  if trim(edt_prodaca.Text)<>'' then
    begin
   TB_PED02_SOBRAS_MPP2SMP_CODPRO_ORI.AsString:=pega_codigo(edt_prodaca.Text,'-');
   TB_PED02_SOBRAS_MPP2SMP_ITEM_ORIGEM.AsInteger:=TB_PED02_SOBRASP2S_ITEM.AsInteger;
    end;
  TB_PED02_SOBRAS_MPP2SMP_CODEMP.AsInteger     :=tb_ped01_SOBRASP1S_CODEMP.AsInteger;
  TB_PED02_SOBRAS_MPP2SMP_CHAVE.AsInteger      :=tb_ped01_SOBRASP1S_CHAVE.AsInteger;
  TB_PED02_SOBRAS_MPP2SMP_LOTSEQ.AsString      :=LOTSEQ_P;
  TB_PED02_SOBRAS_MPP2SMP_ORIGEM.AsInteger     :=2;
  TB_PED02_SOBRAS_MPP2SMP_QTD_VEN.AsInteger    :=0;
  TB_PED02_SOBRAS_MPP2SMP_QTD_QUE.AsInteger    :=0;
  TB_PED02_SOBRAS_MPP2SMP_QTD_DEV.AsInteger    :=0;
  end
else
  begin
  fmensagem('Favor informe o produto acabado!!!',0,['0'],0);
  end;
end;

procedure Tfrm_sobra_dev.bb_item_cancela_mpClick(Sender: TObject);
begin
cb_codpro_mp.Text:='0';
edt_nompro_mp.Clear;
edt_qtd_mp.Text:='0';
edt_sobras_mp.Text:='0';
edt_pcouni_mp.Text:='0,00';
edt_pcotot_mp.Text:='0,00';
cb_codpro_mp.ReadOnly:=True;
edt_qtd_mp.ReadOnly:=True;
edt_sobras_mp.ReadOnly:=True;
edt_pcouni_mp.ReadOnly:=True;
//edt_pcotot.ReadOnly:=True;
bb_item_novo_mp.Enabled:=True;
bb_item_cancela_mp.Enabled:=False;
bb_item_grava_mp.Enabled:=False;
bb_item_excluir_mp.Enabled:=True;
bb_item_novo.Enabled:=True;
bb_item_cancela.Enabled:=False;
bb_item_grava.Enabled:=False;
bb_item_excluir.Enabled:=True;
TB_PED02_SOBRAS_MP.Cancel;
end;

procedure Tfrm_sobra_dev.bb_item_grava_mpClick(Sender: TObject);
begin
if (trim(cb_codpro_mp.text)<>'') and (trim(cb_codpro_mp.text)<>'0') then
  begin
  TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsFloat    :=fsonumero(cb_codpro_mp.Text);
  TB_PED02_SOBRAS_MPP2SMP_QTD_VEN.AsFloat   :=ValFloat(edt_qtd_mp.Text);
  TB_PED02_SOBRAS_MPP2SMP_QTD_SOBRA.AsFloat :=ValFloat(edt_sobras_mp.Text);
  TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS.AsFloat :=ValFloat(Campo_Calculado(DM1.Query1,'PDPRECOC','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))*(TB_PED01_SOBRASP1S_PACTD.AsFloat/100+1);
  TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI.AsFloat :=ValFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))*(TB_PED01_SOBRASP1S_PACTD.AsFloat/100+1);
  TB_PED02_SOBRAS_MPP2SMP_PRECO_VEN.AsFloat :=ValFloat(edt_pcouni_mp.Text);
  TB_PED02_SOBRAS_MP.Post;
  cb_codpro_mp.Text:='0';
  edt_nompro_mp.Clear;
  edt_qtd_mp.Text:='0';
  edt_sobras_mp.Text:='0';
  edt_pcouni_mp.Text:='0,00';
  edt_pcotot_mp.Text:='0,00';
  cb_codpro_mp.ReadOnly:=True;
  edt_qtd_mp.ReadOnly:=True;
  edt_sobras_mp.ReadOnly:=True;
  edt_pcouni_mp.ReadOnly:=True;
  //edt_pcotot.ReadOnly:=True;
  bb_item_novo_mp.Enabled:=True;
  bb_item_cancela_mp.Enabled:=False;
  bb_item_grava_mp.Enabled:=False;
  bb_item_excluir_mp.Enabled:=True;
  bb_item_novo.Enabled:=True;
  bb_item_cancela.Enabled:=False;
  bb_item_grava.Enabled:=False;
  bb_item_excluir.Enabled:=True;
  bb_item_novo_mp.SetFocus;
  end
else
  begin
    fmensagem('Favor verifique se os dados foram digitados corretamente!!!',0,['0'],0);
  end;
end;

procedure Tfrm_sobra_dev.bb_item_excluir_mpClick(Sender: TObject);
begin
{if TB_PED02_SOBRAS_MPP2SMP_ORIGEM.AsInteger=2 then
  begin
  TB_PED02_SOBRAS_MP.Delete;
  end
else if TB_PED02_SOBRAS_MPP2SMP_ORIGEM.AsInteger=1 then
  begin
  fmensagem('Produto Adicionado Atraves de Pedido, não pode ser Excluido!!!',0,['0'],0);
  end;}
if not (TB_PED02_SOBRASP2S_CODPRO.IsNull) and (fMensagem('Quer Realmente Exluir este produto!',0,['1','2'],0)=mrYes) then
  begin
  TB_PED02_SOBRAS_MP.Delete;
  end;
end;

procedure Tfrm_sobra_dev.edt_qtd_mpExit(Sender: TObject);
begin
edt_qtd_mp.Text:=FloatToStr(ValFloat(edt_qtd_mp.Text));
if (ValFloat(edt_qtd_mp.Text)<>0) and (ValFloat(edt_pcouni_mp.Text)<>0) then
  begin
  edt_pcotot_mp.Text:=FloatToStr(ValFloat(edt_qtd_mp.Text)*ValFloat(edt_pcouni_mp.Text));
  edt_pcotot_mp.Text:=Format_ValFloat(edt_pcotot_mp.Text);
  end;
end;

procedure Tfrm_sobra_dev.edt_pcouni_mpEnter(Sender: TObject);
begin
if cb_precoextra.Checked=True then
  begin
  edt_pcouni_mp.ReadOnly:=False;
  end
else
  begin
  edt_pcouni_mp.ReadOnly:=True;
  end;

end;

procedure Tfrm_sobra_dev.edt_pcouni_mpExit(Sender: TObject);
begin
edt_pcouni_mp.Text:=Format_ValFloat(edt_pcouni_mp.Text);
if edt_pcouni_mp.Text<>'0,00' then
  begin
  edt_pcotot_mp.Text:=FloatToStr(ValFloat(edt_qtd_mp.Text)*ValFloat(edt_pcouni_mp.Text));
  edt_pcotot_mp.Text:=Format_ValFloat(edt_pcotot_mp.Text);
  end;

end;

procedure Tfrm_sobra_dev.dbg_prod_acaDblClick(Sender: TObject);
begin
if (bb_item_novo_mp.Enabled=True) and (ts2.TabVisible=True) then
  begin
  edt_prodaca.Text:=TB_PED02_SOBRASP2S_CODPRO.AsString+' - '+BUSCA_VALOR2('CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString,'PDNOME',DM1.Query2);
  pc1.TabIndex:=1;
  bb_item_novo_mp.SetFocus;
  end;
end;
procedure Tfrm_sobra_dev.ts2Exit(Sender: TObject);
begin
if PC1.TabIndex<>1 then
  begin
  edt_prodaca.Clear;
  edt_prodaca.text:='0 - Nenhum produto acabado foi selecionado';
  end;

end;

procedure Tfrm_sobra_dev.cb_codpro_mpButtonClick(Sender: TObject);
begin
cb_codpro_mp.Text:=fChamaPro(0,'Frm_sobra_dev','');
edt_nompro_mp.Text:=dm1.Tb_ProPDNOME.AsString;
end;

procedure Tfrm_sobra_dev.rl_cabecalhoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_empr.Caption  :='Empresa...: '+dm1.Tb_EmpRAZAO.AsString;
rl_ender.Caption :='Endereço..: '+DM1.Tb_EmpENDERECO.AsString+' '+DM1.Tb_EmpBAIRRO.AsString+' '+DM1.Tb_EmpCIDADE.AsString+'-'+DM1.Tb_EmpUF.AsString;
rl_fone.Caption  :='Telefone..: '+DM1.Tb_Emptelefone.AsString+' Fax..: '+DM1.Tb_EmpFAX.AsString;

end;

procedure Tfrm_sobra_dev.bb_imprimirClick(Sender: TObject);
begin
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' select max(p2s_lotseq) from cadp02_sobras where p2s_chave='+cb_chave.Text);
DM1.Query4.SQL.Add(' and '+fla_sqlmp('p2s_codemp',Form_SelEmp.CLB_EMPRESAS));
DM1.Query4.Open;
if dm1.Query4.FieldByName('max(p2s_lotseq)').AsInteger>0 then
  begin
  Grupo:=1;
  end
else
  begin
  Grupo:=0;
  end;
la_Empresas :='';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
//fInnerJoin(1,'CADP01_ORC','P1ORC_CODEMP','P1CODEMP','P1ORC_CHAVE','P1CHAVE');

DM2.Qr_Cab.Close;
DM2.Qr_Cab.SQL.Clear;
DM2.Qr_Cab.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1CODCLI,P1DATAP,P1DATANF,'
                  +' P1CODV02,P1CODVEN,P1CODASSE,'
                  +'       P1CODECF,P1DATACF, '
                  +'P1OBS1,P1OBS2,P1OBS3,P1FRETEPC,P1UFPV,P1PLACAV,'
                  +'P1TOTALB,P1TOTALL, P1TOTVALAPROXTRIB,'
                  +'P1CODUSR,P1HORADIG,P1TABPV,P1CODPV,P1NUMNF,P1NUMCF,'
                  +'P1CODTRA,P1BASEN,P1SERIE '
                  +',P1DATVIS '
                  +',P1NUMVIS  '
                     +'       ,P1NFE_IMP_UFSAIDA_PAIS '
                     +'       ,P1NFE_IMP_XLOCEXPORTA '
                     +'       ,P1NFE_IMP_XLOCDESPACHO '
                    +'        ,P1TRUNCARREND '


                  +'       ,P1ICMS_BCFRE '
                  +'       ,P1ICMS_ALFRE '
                  +'       ,P1ICMS_VLFRE '
                     +'       ,P1DESPACES '

                  +',P1TOTPIS '
                     +'       ,P1CSLL '
                     +'       ,P1IRRF '
                  
                  +',P1TPEMIS,P1CODSER '
                  +',P1TOTCOFINS '
                  +',P1RED_BCISSQN '
                  +',P1BCINSS '
                  +',P1RED_BCINSS '
                  +',P1VINSS '
                  +',P1BCIRRF '
                  +',P1RED_BCIRRF '
                  +',P1VIRRF '
                  +' , P1NFE_ENVXML '
                 +',P1NFCE_DATA,P1NFCE_NUMERO,P1NFCE_SERIE,P1NFCE_SITUACAO,P1NFCE_MODELO,P1NFCE_CHV_ACESSO,P1NFCE_NPROT '

                  +',P1ICMSN,P1BASER,P1ICMSR,P1TOTDES,'
                  +'P1TOTTRI, P1TOTRET,P1TOTISE,P1TIPO,P1TIPO_ENTSAI,'
                  +'P1BASENP, P1BASENN, P1BASENI,P1ICMSNP,P1ICMSNN,P1ICMSNI,'
                  +'P1BASERP, P1BASERN, P1BASERI,P1ICMSRP,P1ICMSRN,P1ICMSRI,'
                  +'P1BASENRI, P1BASENRP, P1BASENRN, P1ICMSNRI,P1ICMSNRP,P1ICMSNRN,'
                  +'P1TOTPOS,P1TOTNEG,P1TOTINA,P1DESC01,P1DESC02,P1VLRDES,P1REPAS,'
                  +'P1IPIPOS,P1IPINEG,P1IPIINA,P1TOTOUT, '
                  +'P1TARBAN,P1INCTB, P1TOTCGRU,P1TOTSGRU, P1VALSEG,P1SUBMOD,P1ALIQDEB, '
                  +'P1CUPACRE,P1CUPDES,P1BCISSQN,P1VISSQN,P1CFOSER,'
                  +'CCODBAI, CCODLOC,CCEP,CCELULAR,CFONERES,CFAX,P1QTDVOL,P1PESOL,'
                  +' CDEC5834, CDEC5825, '
                  +'CCODBAIC, CCODLOCC,CCEPC,CCIDADEC,CUFC,CBAIRROC, CENDERC, '
                  +'P1VALFRE, P1PESOB,P1ESPECIE,P1BANCO,'
                  +'      P1SEPAMB, '
                  +'       P1QTDDECPU, '
                  +'      P1PREVENT,P1HPREVENT,'
                  +'           P1TOTDI01,P1TOTDI02,P1TOTDI03,P1TOTDIVL, '
                  +'   P1CODCV,P1ACRECONV,P1ACREGER,P1TIPENT, P1CFO1,P1CFO2, '
                  +'   P1TOTSERLIQ, '
                  +'   P1NPEDORI, '
                  +'   P1PEDORI1, '
                  +'   P1PEDORI2, '
                  +'   P1EMITENTE, '
                  +'   P1COMIS, '
                  +'   P1COMV02, '
                     +'   P1IRRF, '
                     +'   P1CSLL, '

                  +'   CCONSF, '
                  +'   CREVENDA_CP, '
                  +'CFONECOM,CDTCAD,CRAZAO,CDENOM,CPONTOR,COBS01,COBS02,COBS03,'
                  +'COBS04,COBS05,CSITCLI,CLIM1,CLIM2, '
                  +'CREDICMSNOR,CCIDADE,CUF,CBAIRRO,CLOG,CNUM,CCOMPL,CCODRED, CNOMCON,CFONCON,'
                  +'       CFONE01,CFONE02,CFONE03,CICMSR, '
                  +'RAZAO,FANTASIA,ENDERECO,BAIRRO, '
                  +' CIDADE,UF,CGC,INSCRICAO,'
                  +' FONE,FAX,E_MAIL '
                  +'From CADP01, CADEMP, CADCLI '
                  +'  where '
                  +'  P1STATUS<'+mstatus_excluido+'  and CODEMP=P1CODEMP and p1codcli=ccodcli ');

if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM2.Qr_Cab.Sql.Add(CODEMP2('P1CODEMP',codemp));
   DM2.Qr_Cab.Sql.Add(CODEMP2('CCODEMP',codemp));
   end;
DM2.Qr_Cab.SQL.Add(' and P1CHAVE=0'+CHAVE_P);
try
  DM2.Qr_Cab.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  dm2.Qr_Cab.SQL.SaveToFile(error);
  fmensagem('Erro ao selecionar o Pedido!!!',0,['0'],0);
  EXIT;
  end;

total_G_QTD:=0;
total_G_PCO_UNI:=0;
total_G_PCO_TOT:=0;
tb_ped01_SOBRAS.Close;
tb_ped01_SOBRAS.SQL.Clear;
tb_ped01_SOBRAS.SQL.Add(' select * from CADP01_SOBRAS ');
tb_ped01_SOBRAS.SQL.Add(' where '                      );
tb_ped01_SOBRAS.SQL.Add('      P1S_CHAVE='+CHAVE_P     );
tb_ped01_SOBRAS.SQL.Add(' and '+fla_sqlmp('P1S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
tb_ped01_SOBRAS.SQL.Add(' and P1S_CODCLI='+CODCLI_P    );
try
  tb_ped01_SOBRAS.Open;
except
  error:=SALVA_NOME('c:\sge\errosql \','ex');
  tb_ped01_SOBRAS.SQL.SaveToFile(error);
  fmensagem('Erro ao selecionar o Pedido!!!',0,['0'],0);
  EXIT;
  end;
qr_rel.Close;
qr_rel.SQL.Clear;
qr_rel.SQL.Add(' Select                                                                  '
              +'        P2SMP_CODEMP,                                                    '
              +'        P2SMP_LOTSEQ,                                                    '
              +'        P2SMP_CHAVE,                                                     '
              +'        P2SMP_ITEM,                                                      '
              +'        P2SMP_CODPRO,                                                    '
              +'        P2SMP_CODPRO_ORI,                                                '
              +'        P2SMP_ORIGEM,                                                    '
              +'        P2SMP_CODPRO_ORI,                                                '
              +'        P2SMP_PRECO_UNI,                                                 '
              +'        P2SMP_PRECO_VEN,                                                 '
              +'        P2SMP_PRECO_CUS,                                                 '
              +'        P2SMP_QTD_SOBRA,                                                 '
              +'        P2SMP_QTD_VEN,                                                   '
              +'        P2SMP_QTD_DEV,                                                   '
              +'        P2SMP_QTD_QUE,                                                   '
              +'        P2S_CODEMP,                                                      '
              +'        P2S_LOTSEQ,                                                      '
              +'        P2S_CHAVE,                                                       '
              +'        P2S_ITEM,                                                        '
              +'        P2S_CODPRO,                                                      '
              +'        P2S_ORIGEM,                                                      '
              +'        P2S_PRECO_UNI,                                                   '
              +'        P2S_PRECO_VEN,                                                   '
              +'        P2S_PRECO_CUS,                                                   '
              +'        P2S_QTD_SOBRA,                                                   '
              +'        P2S_QTD_VEN,                                                     '
              +'        P2S_QTD_DEV,                                                     '
              +'        P2S_QTD_QUE,                                                     '
              +' CASE                                                                    '
              +'   WHEN P2SMP_CODPRO IS NULL                                             '
              +'     THEN NULL                                                           '
              +'   WHEN P2SMP_ITEM_ORIGEM IS NOT NULL                                    '
              +'     THEN P2SMP_ITEM_ORIGEM                                              '
              +'   WHEN  P2SMP_CODPRO IS NOT NULL                                        '
              +'     THEN P2SMP_CODPRO_ORI                                               '
              +' END AS CODIGO_AGRUPAMENTO,                                              '
              +' CASE                                                                    '
              +'   WHEN P2SMP_CODPRO IS NULL                                             '
              +'     THEN (SELECT PDCODGRU FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO)       '
              +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
              +'     THEN (SELECT PDCODGRU FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO)     '
              +' END AS PDCODGRU,                                                        '
              +' CASE                                                                    '
              +'   WHEN P2SMP_CODPRO IS NULL                                             '
              +'     THEN (SELECT PDNOMGRU FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO)       '
              +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
              +'     THEN (SELECT PDNOMGRU FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO)     '
              +' END AS PDNOMGRU,                                                        '
              +' CASE                                                                    '
              +'   WHEN P2SMP_CODPRO IS NULL                                             '
              +'     THEN P2S_CODPRO                                                     '
              +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
              +'     THEN P2SMP_CODPRO                                                   '
              +' END AS CODIGO_PRODUTO,                                                  '
              +' CASE                                                                    '
              +'   WHEN P2SMP_CODPRO IS NULL                                             '
              +'     THEN P2S_LOTSEQ                                                     '
              +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
              +'     THEN P2SMP_LOTSEQ                                                   '
              +' END AS SEQ_GRUPO,                                                       '
              +' CASE                                                                    '
              +'   WHEN P2SMP_CODPRO IS  NULL                                            '
              +'     THEN (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO)         '
              +'   WHEN P2SMP_CODPRO IS NOT NULL                                         '
              +'     THEN (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO)       '
              +' END AS NOME_PRODUTO,                                                    '
              +' (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2SMP_CODPRO) AS PDNOME_MP,  '
              +' (SELECT PDNOME FROM CADPRO WHERE  PDCODPRO=P2S_CODPRO) AS PDNOME_PA     '
              +' FROM                                                                    '
              +'      	CADP02_SOBRAS,	CADPRO,	CADP02_SOBRAS_MP                         '
              +' where                                                                   '
              +'    PDCODPRO=P2s_CODPRO and  P2SMP_CODEMP(+)=P2S_CODEMP and              '
              +'    P2SMP_CHAVE(+)=P2S_CHAVE and P2SMP_CODPRO_ORI(+)=P2S_CODPRO and      '
              +'    (P2S_CODEMP=1 or P2S_CODEMP=101) and P2S_CHAVE=0'+CHAVE_P);
qr_rel.Sql.add(' order by SEQ_GRUPO, CODIGO_AGRUPAMENTO, PDNOMGRU, NOME_PRODUTO, CODIGO_PRODUTO  ');
try
  qr_rel.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  qr_rel.SQL.SaveToFile(error);
  fmensagem('Erro ao selecionar o Pedido!!!',0,['0'],0);
  EXIT;
  end;
INF_CLIENTE.Close;
INF_CLIENTE.SQL.Clear;
INF_CLIENTE.SQL.Add(' SELECT CCODCLI, CRAZAO,CCPF,CRG,CTPPESSOA,CCNPJ,CIE,  '
                   +'        P1S_CHAVE, P1S_DATA_INC                        '
                   +' FROM CADP01_SOBRAS,CADCLI                             '
                   +' WHERE P1S_CODCLI=CCODCLI                              '
                   +' AND P1S_CHAVE='+CHAVE_P+ ' AND P1S_LOTSEQ='+LOTSEQ_P);
try
  INF_CLIENTE.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','exp');
  fmensagem('Erro ao selecionar o Pedido!!!',0,['0'],0);
  INF_CLIENTE.SQL.SaveToFile(error);
  EXIT;
  end;

if (cb_mod_rel.ItemIndex=0) or (cb_mod_rel.ItemIndex=1) then
  begin
  rlPedido_OPMod03.NextReport:=nil;
  rlPedido_OPMod03.PreviewModal;
  end
else if (cb_mod_rel.ItemIndex=2) or (cb_mod_rel.ItemIndex=3) then
  begin
  modelo01.NextReport:=nil;
  TB_PED02_SOBRASP2S_PRECO_UNI.DisplayFormat:=mcasaspu;
  TB_PED02_SOBRASP2S_PRECO_CUS.DisplayFormat:=mcasaspu;
  TB_PED02_SOBRASP2S_PRECO_VEN.DisplayFormat:=mcasaspu;
  TB_PED02_SOBRASP2S_PRECO_ORI.DisplayFormat:=mcasaspu;

  TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI.DisplayFormat:=mcasaspu;
  TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS.DisplayFormat:=mcasaspu;
  TB_PED02_SOBRAS_MPP2SMP_PRECO_VEN.DisplayFormat:=mcasaspu;
  TB_PED02_SOBRAS_MPP2SMP_PRECO_ORI.DisplayFormat:=mcasaspu;
  modelo01.PreviewModal;
  end;
end;

procedure Tfrm_sobra_dev.INF_CLIENTECalcFields(DataSet: TDataSet);
begin
if INF_CLIENTECTPPESSOA.AsInteger=0 then     // fisica
  begin
  INF_CLIENTECPF_CNPJ.AsString:=INF_CLIENTECCPF.AsString;
  INF_CLIENTERG_IE.AsString   :=INF_CLIENTECRG.AsString;
  end
else if INF_CLIENTECTPPESSOA.AsInteger=1 then    // juridica
  begin
  INF_CLIENTECPF_CNPJ.AsString:=INF_CLIENTECCNPJ.AsString;
  INF_CLIENTERG_IE.AsString   :=INF_CLIENTECIE.AsString;
  end;
INF_CLIENTECliente.AsString:=INF_CLIENTECCODCLI.AsString+' - '+INF_CLIENTECRAZAO.AsString;
end;

procedure Tfrm_sobra_dev.ts2Show(Sender: TObject);
begin
if not tb_ped01_SOBRASP1S_CHAVE.IsNull then
  begin
  TB_PED02_SOBRAS_MP.Close;
  TB_PED02_SOBRAS_MP.SQL.Clear;
  TB_PED02_SOBRAS_MP.SQL.Add(' select * from CADP02_SOBRAS_MP ');
  TB_PED02_SOBRAS_MP.SQL.Add(' where '                         );
  TB_PED02_SOBRAS_MP.SQL.Add('      P2SMP_CHAVE='+CHAVE_P      );
  TB_PED02_SOBRAS_MP.SQL.Add(' and '+fla_sqlmp('P2SMP_CODEMP',Form_SelEmp.CLB_EMPRESAS) );
  try
    TB_PED02_SOBRAS_MP.Open;
  except
    TB_PED02_SOBRAS_MP.SQL.SaveToFile(mpastatemp +'sql');
    end;
  end;
end;

procedure Tfrm_sobra_dev.ts1Show(Sender: TObject);
begin
if not tb_ped01_SOBRASP1S_CHAVE.IsNull then
  begin
  TB_PED02_SOBRAS.Close;
  TB_PED02_SOBRAS.SQL.Clear;
  TB_PED02_SOBRAS.SQL.Add(' select * from CADP02_SOBRAS ');
  TB_PED02_SOBRAS.SQL.Add(' where '                      );
  TB_PED02_SOBRAS.SQL.Add('      P2S_CHAVE='+CHAVE_P     );
  TB_PED02_SOBRAS.SQL.Add(' and '+fla_sqlmp('P2S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
  try
    TB_PED02_SOBRAS.Open;
  except
    TB_PED02_SOBRAS.SQL.SaveToFile(mpastatemp +'sql');
    end;
  end;
end;

procedure Tfrm_sobra_dev.qr_relCalcFields(DataSet: TDataSet);
begin
if qr_relP2SMP_CHAVE.IsNull then
  begin
  qr_relp2s_qtd_total.AsFloat  := qr_relP2S_QTD_VEN.AsFloat+qr_relP2S_QTD_SOBRA.AsFloat-qr_relP2S_QTD_DEV.AsFloat;
  qr_relp2s_qtd_total.DisplayFormat:=mcasaspu;
  end
else
  begin
  qr_relp2s_qtd_total.AsFloat  := qr_relP2SMP_QTD_VEN.AsFloat+qr_relP2SMP_QTD_SOBRA.AsFloat-qr_relP2SMP_QTD_DEV.AsFloat;
  qr_relp2s_qtd_total.DisplayFormat:=mcasaspu;
  end;
end;

procedure Tfrm_sobra_dev.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
total_QTD:=0;
total_PCO_UNI:=0;
total_PCO_TOT:=0;

if not qr_relP2SMP_CHAVE.IsNull then
  begin
  lbl_prod_acabado.Caption:='Produto Acabado ...: '+qr_relPDNOME_PA.AsString;
  RLGroup1.DataFields:='CODIGO_AGRUPAMENTO'
  end
else
  begin
  lbl_prod_acabado.Caption:='Grupo do Produto...: '+qr_relPDNOMGRU.AsString;
  RLGroup1.DataFields:='PDCODGRU'
  end;
end;

procedure Tfrm_sobra_dev.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_codigo.Caption      :=  qr_relCODIGO_PRODUTO.AsString;
rl_nompro.Caption      :=  qr_relNOME_PRODUTO.AsString;

//modelo financeiro Acabado
if (cb_mod_rel.ItemIndex=2) then
  begin
  if qr_relP2SMP_CHAVE.IsNull then
    begin
    rl_quantidade.Caption  :=  qr_relP2S_QTD_VEN.AsString;
    end
  else
    begin
    rl_quantidade.Caption  :=  qr_relP2SMP_QTD_VEN.AsString;
    end;
  end
else if (cb_mod_rel.ItemIndex=3)  then
  begin
  rl_quantidade.Caption  :=  qr_relp2s_qtd_total.AsString;
  end;


if qr_relP2SMP_CHAVE.IsNull then
  begin
  if CB_TIPO_PRECO.ItemIndex=0 then
    begin
    rl_preco.Caption       := Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDCUSFIN',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=1 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(qr_relP2S_PRECO_CUS.AsString);
    end
  else if CB_TIPO_PRECO.ItemIndex=2 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(qr_relP2S_PRECO_UNI.AsString);
    end
  else if CB_TIPO_PRECO.ItemIndex=3 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDPRECO1',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=4 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDPRECO2',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=5 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDPRECO3',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=6 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(qr_relP2S_PRECO_VEN.AsString);
    end;
  end
else
  begin
  if CB_TIPO_PRECO.ItemIndex=0 then
    begin
    rl_preco.Caption       := Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDCUSFIN',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=1 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(qr_relP2SMP_PRECO_CUS.AsString);
    end
  else if CB_TIPO_PRECO.ItemIndex=2 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(qr_relP2SMP_PRECO_VEN.AsString);
    end
  else if CB_TIPO_PRECO.ItemIndex=3 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDPRECO1',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=4 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDPRECO2',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=5 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(BUSCA_VALOR2('CADPRO','PDCODPRO',qr_relCODIGO_PRODUTO.AsString,'PDPRECO3',DM1.Query1));
    end
  else if CB_TIPO_PRECO.ItemIndex=6 then
    begin
    rl_preco.Caption       :=  Format_ValFloat(qr_relP2SMP_PRECO_UNI.AsString);
    end;
  end;
rl_valor_total.Caption :=  FloatToStr(ValFloat(rl_quantidade.Caption)*ValFloat(rl_preco.Caption));
rl_valor_total.Caption :=  Format_ValFloat(rl_valor_total.Caption);
total_QTD              :=  total_QTD+ValFloat(rl_quantidade.Caption);
total_PCO_UNI          :=  total_PCO_UNI+ValFloat(rl_preco.Caption);
total_PCO_TOT          :=  total_PCO_TOT+ValFloat(rl_valor_total.Caption);
end;

procedure Tfrm_sobra_dev.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_tot_qtd.Caption      :=  FloatToStr(total_QTD);
total_G_QTD             :=  total_G_QTD+total_QTD;
//rl_tot_qtd.Caption      :=  Format_ValFloat(rl_tot_qtd.Caption);
rl_tot_pco.Caption      :=  FloatToStr(total_PCO_UNI);
total_G_PCO_UNI         :=  total_G_PCO_UNI+total_PCO_UNI;
rl_tot_pco.Caption      :=  Format_ValFloat(rl_tot_pco.Caption);
rl_tot_val.Caption      :=  FloatToStr(total_PCO_TOT);
total_G_PCO_TOT         :=  total_G_PCO_TOT+total_PCO_TOT;
rl_tot_val.Caption      :=  Format_ValFloat(rl_tot_val.Caption);
end;

procedure Tfrm_sobra_dev.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_tot_g_val.Caption      :=  FloatToStr(total_G_PCO_TOT);
rl_tot_g_val.Caption      :=  Format_ValFloat(rl_tot_g_val.Caption);
rl_tot_p_val.Caption      :=  BUSCA_VALOR2('CADP01','P1CHAVE',cb_chave.Text,'P1TOTALL',DM1.Query1);
rl_tot_p_val.Caption      :=  Format_ValFloat(rl_tot_p_val.Caption);
rl_tot_F_val.Caption      :=  FloatToStr(ValFloat(rl_tot_p_val.Caption)-ValFloat(rl_tot_g_val.Caption));
rl_tot_F_val.Caption      :=  Format_ValFloat(rl_tot_F_val.Caption);
if ValFloat(rl_tot_F_val.Caption)<0 then
  begin
  rl_tot_F_val.Caption      :=  FloatToStr(ValFloat(rl_tot_F_val.Caption)*(-1));
  rl_tot_F_val.Caption      :=' ( - ) '+Format_ValFloat(rl_tot_F_val.Caption);
  end;
end;

procedure Tfrm_sobra_dev.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if not qr_relP2SMP_CHAVE.IsNull then
  begin
  RL_PRODUTO_ACABADO.Caption:='Produto Acabado ...: '+qr_relPDNOME_PA.AsString;
  RLGroup2.DataFields:='CODIGO_AGRUPAMENTO';
  end
else
  begin
  RL_PRODUTO_ACABADO.Caption:='Grupo do Produto...: '+qr_relPDNOMGRU.AsString;
  RLGroup2.DataFields:='PDNOMGRU';
  end;
end;

procedure Tfrm_sobra_dev.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if (qr_relPDNOMGRU.AsString='VIDROS') or (qr_relPDNOMGRU.AsString='VIDRO') then
  begin
  rl_base_prod.Visible:=True;
  end
else
  begin
  rl_base_prod.Visible:=False;
  end;
if qr_relP2SMP_CHAVE.IsNull then
  begin
  rl_desc_prod.Caption     :=qr_relNOME_PRODUTO.AsString;
//  rl_base_prod.Caption     :=Qr_Ped02_MPP2MP_NOME2.AsString;

//modelo de lista de separação Acabado
  if (cb_mod_rel.ItemIndex=0) then
    begin
    //modelo 01
    rl_quant_prod.Caption  :=  qr_relP2S_QTD_VEN.AsString;
    end
  else if (cb_mod_rel.ItemIndex=1) then
    begin
    //modelo 02
    rl_quant_prod.Caption  :=  qr_relp2s_qtd_total.AsString;
    end;

  rl_retorno_prod.Caption  :=qr_relP2S_QTD_DEV.AsString;
  rl_quebra_prod.Caption   :=qr_relP2S_QTD_QUE.AsString;
  end
else
  begin
  rl_desc_prod.Caption     :=qr_relPDNOME_MP.AsString;
//  rl_base_prod.Caption     :=Qr_Ped02_MPP2MP_OUTINF.AsString;

//modelo lista de separação MP
  if (cb_mod_rel.ItemIndex=0) then
    begin
    //modelo 01
    rl_quant_prod.Caption   :=  qr_relP2SMP_QTD_VEN.AsString;
    end
  else if (cb_mod_rel.ItemIndex=1) then
    begin
    //modelo 02
    rl_quant_prod.Caption  :=  qr_relp2s_qtd_total.AsString;
    end;

  rl_retorno_prod.Caption  :=qr_relP2SMP_QTD_DEV.AsString;
  rl_quebra_prod.Caption   :=qr_relP2SMP_QTD_QUE.AsString;
  end;
end;

procedure Tfrm_sobra_dev.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_empr02.Caption:='Empresa...: '+dm1.Tb_EmpRAZAO.AsString;
rl_ender02.Caption:='Endereço...: '+DM1.Tb_EmpENDERECO.AsString+' '+DM1.Tb_EmpBAIRRO.AsString+' '+DM1.Tb_EmpCIDADE.AsString+'-'+DM1.Tb_EmpUF.AsString;
rl_fone02.Caption:='Telefone..: '+DM1.Tb_Emptelefone.AsString+' Fax..: '+DM1.Tb_EmpFAX.AsString;

end;

procedure Tfrm_sobra_dev.TB_PED02_SOBRASBeforePost(DataSet: TDataSet);
begin
if TB_PED02_SOBRASP2S_CODPRO.IsNull then
  begin
  dbg_prod_aca.SelectedField:=TB_PED02_SOBRASP2S_CODPRO;
  TB_PED02_SOBRAS.Cancel;
  abort;
  end;
if (TB_PED02_SOBRAS.State in [dsinsert]) then
  begin
  dm1.Query5.close;
  dm1.Query5.SQL.clear;
  dm1.Query5.SQL.Add(' select max(P2S_ITEM) from cadp02_sobras '          );
  dm1.Query5.SQL.Add(' where P2S_CHAVE='+TB_PED01_SOBRASP1S_CHAVE.AsString);
  dm1.Query5.SQL.Add(CODEMP2('P2S_CODEMP',codemp)                         );
  try
    dm1.Query5.Open;
    TB_PED02_SOBRASP2S_ITEM.AsInteger:=dm1.Query5.FieldByName('max(P2S_ITEM)').AsInteger+1;
//    TB_PED02_SOBRASP2S_PRECO_UNI.AsFloat := StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))+StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))*TB_PED01_SOBRASP1S_PACTD.AsFloat/100;
    TB_PED02_SOBRASP2S_PRECO_ORI.AsFloat := ValFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))+StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))*TB_PED01_SOBRASP1S_PACTD.AsFloat/100;
    TB_PED02_SOBRASP2S_PRECO_CUS.AsFloat := StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECOC','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))+StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECOC','CADPRO','PDCODPRO',TB_PED02_SOBRASP2S_CODPRO.AsString))*TB_PED01_SOBRASP1S_PACTD.AsFloat/100;
  except
    fmensagem('Erro ao buscar proximo numero de item!!!',0,['0'],0);
    end;
  end;
end;

procedure Tfrm_sobra_dev.TB_PED02_SOBRAS_MPBeforePost(DataSet: TDataSet);
begin
if (TB_PED02_SOBRAS_MPP2SMP_CODPRO_ORI.IsNull) or (TB_PED02_SOBRAS_MPP2SMP_CODPRO.IsNull) then
  begin
  dbg_prod_mat.SelectedField:=TB_PED02_SOBRAS_MPP2SMP_CODPRO;
  TB_PED02_SOBRAS_MP.Cancel;
  abort;
  end;
if TB_PED02_SOBRAS_MP.State in [dsinsert] then
  begin
  dm1.Query5.close;
  dm1.Query5.SQL.clear;
  dm1.Query5.SQL.Add(' select max(P2SMP_ITEM) from CADP02_SOBRAS_MP'        );
  dm1.Query5.SQL.Add(' where P2SMP_CHAVE='+TB_PED01_SOBRASP1S_CHAVE.AsString);
  dm1.Query5.SQL.Add(CODEMP2('P2SMP_CODEMP',codemp)                         );
  try
    dm1.Query5.Open;
    TB_PED02_SOBRAS_MPP2SMP_ITEM.AsInteger:=dm1.Query5.FieldByName('max(P2SMP_ITEM)').AsInteger+1;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI.AsFloat := StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))+StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))*TB_PED01_SOBRASP1S_PACTD.AsFloat/100;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_ORI.AsFloat := StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))+StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECO1','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))*TB_PED01_SOBRASP1S_PACTD.AsFloat/100;
    TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS.AsFloat := StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECOC','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))+StrToFloat(Campo_Calculado(DM1.Query1,'PDPRECOC','CADPRO','PDCODPRO',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString))*TB_PED01_SOBRASP1S_PACTD.AsFloat/100;
  except
    fmensagem('Erro ao buscar proximo numero de item!!!',0,['0'],0);
    end;
  end;
end;

procedure Tfrm_sobra_dev.TB_PED02_SOBRASCalcFields(DataSet: TDataSet);
begin
if TB_PED02_SOBRASP2S_CODPRO.AsInteger>0 then
  begin
  TB_PED02_SOBRASNOMPRO.AsString:=Campo_Calculado(dm1.Query6,'pdnome','cadpro','pdcodpro',TB_PED02_SOBRASP2S_CODPRO.AsString);
  end
else
  begin
 TB_PED02_SOBRASNOMPRO.AsString:='NÃO CADASTRADO';
  end;
TB_PED02_SOBRASP2S_PRECO_UNI.DisplayFormat:=mcasaspu;
TB_PED02_SOBRASP2S_PRECO_CUS.DisplayFormat:=mcasaspu;
TB_PED02_SOBRASP2S_PRECO_VEN.DisplayFormat:=mcasaspu;
end;


procedure Tfrm_sobra_dev.TB_PED02_SOBRAS_MPCalcFields(DataSet: TDataSet);
begin
if TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsInteger>0 then
  begin
  TB_PED02_SOBRAS_MPNOMPRO_MP.AsString:=Campo_Calculado(dm1.Query4,'pdnome','cadpro','pdcodpro',TB_PED02_SOBRAS_MPP2SMP_CODPRO.AsString);
  end
else
  begin
  TB_PED02_SOBRAS_MPNOMPRO_MP.AsString:='NÃO CADASTRADO';
  end;
TB_PED02_SOBRAS_MPP2SMP_PRECO_UNI.DisplayFormat:=mcasaspu;
TB_PED02_SOBRAS_MPP2SMP_PRECO_CUS.DisplayFormat:=mcasaspu;
TB_PED02_SOBRAS_MPP2SMP_PRECO_VEN.DisplayFormat:=mcasaspu;
end;


procedure Tfrm_sobra_dev.cb_codproKeyPress(Sender: TObject; var Key: Char);
begin
if TB_PED02_SOBRAS.State in [dsinsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    cb_codpro.Text:=fChamaPro(0,'Frm_sobra_dev',key);
    key:=#0;
    end
  else if not (key in ['0'..'9']) and (key<>#8) then
    begin
    key:=#0;
    end;
  end;
end;

procedure Tfrm_sobra_dev.cb_codpro_mpKeyPress(Sender: TObject;
  var Key: Char);
begin
if TB_PED02_SOBRAS_MP.State in [dsinsert] then
  begin
  if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
    begin
    cb_codpro_mp.Text:=fChamaPro(0,'Frm_sobra_dev',key);
    key:=#0;
    end
  else if not (key in ['0'..'9']) and (key<>#8) then
    begin
    key:=#0;
    end;
  end;
end;

procedure Tfrm_sobra_dev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if OPERACAO>0 then
  begin
  case Fmensagem('Você está Alterando. Deseja Salvar???',0,['1','2'],0) of
    mrYes:
      begin
      bb_gravarClick(self);
      if TB_PED02_SOBRAS.State in [dsinsert, dsedit] then
        TB_PED02_SOBRAS.Post;
      if TB_PED02_SOBRAS_MP.State in [dsinsert, dsedit] then
        TB_PED02_SOBRAS_MP.Post;
      end;
    mrNo:
      begin
      bb_gravarClick(self);
      if TB_PED02_SOBRAS.State in [dsinsert, dsedit] then
        TB_PED02_SOBRAS.Cancel;
      if TB_PED02_SOBRAS_MP.State in [dsinsert, dsedit] then
        TB_PED02_SOBRAS_MP.Cancel;
      end;
    end;
  end;
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure Tfrm_sobra_dev.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if cb_mod_rel.ItemIndex=2 then
  begin
  rl_titulo_finan.Caption:='Relatorio de Fechamento (Simulação)';
  end
else if cb_mod_rel.ItemIndex=3 then
  begin
  rl_titulo_finan.Caption:='Relatorio de Fechamento';
  end;
end;

procedure Tfrm_sobra_dev.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if cb_mod_rel.ItemIndex=0 then
  begin
  rl_titulo_sep.Caption:='Relatorio de Expedição (Pedido)';
  end
else if cb_mod_rel.ItemIndex=1 then
  begin
  rl_titulo_sep.Caption:='Relatorio de Expedição (Complementos)';
  end;
end;

procedure Tfrm_sobra_dev.RLGroup3AfterPrint(Sender: TObject);
begin
if (grupo=1) and (CB_GRUPO_LOTE.Checked=True) and not (qr_rel.Eof) then
  begin
  rlPedido_OPMod03.NewPage;
  end;
end;

procedure Tfrm_sobra_dev.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
Cds_Grupo.CreateDataSet;
IF (SCREEN.Width=800) AND (SCREEN.height=600) then
   height := 467
else
   Height:=560;
end;

procedure Tfrm_sobra_dev.Button2Click(Sender: TObject);
begin
if edt_newchave.Text=edt_confnewchave.Text then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' SELECT * FROM CADP01 WHERE P1CHAVE='+fdeixanum(edt_newchave.Text)+codemp2('P1CODEMP',codemp));
  DM1.Query1.Open;
  if DM1.Query1.IsEmpty then
    begin
    fmensagem('Nova chave não encontrada!',0,['0'],0);
    edt_newchave.Clear;
    edt_confnewchave.Clear;
    edt_newchave.SetFocus;
    Exit;
    end;
  pnl_excluido.Visible:=False;
  cb_chave.Text:=edt_confnewchave.Text;
  DM1.Query4.Close;
  DM1.Query4.SQL.Clear;
  DM1.Query4.SQL.Add(' update CADP01_SOBRAS set P1S_CHAVE='+fdeixanum(edt_newchave.Text)+'where P1S_CHAVE='+fdeixanum(edt_chave.Text));
  DM1.Query4.ExecSQL;
  DM1.Query4.SQL.Clear;
  DM1.Query4.SQL.Add(' update CADP02_SOBRAS set P2S_CHAVE='+fdeixanum(edt_newchave.Text)+'where P2S_CHAVE='+fdeixanum(edt_chave.Text));
  DM1.Query4.ExecSQL;
  DM1.Query4.SQL.Clear;
  DM1.Query4.SQL.Add(' update CADP02_SOBRAS_MP set P2SMP_CHAVE='+fdeixanum(edt_newchave.Text)+'where P2SMP_CHAVE='+fdeixanum(edt_chave.Text));
  DM1.Query4.ExecSQL;
  end;
end;

procedure Tfrm_sobra_dev.Button3Click(Sender: TObject);
begin
pnl_excluido.Visible:=False;
end;

procedure Tfrm_sobra_dev.btn_libera_nulosClick(Sender: TObject);
begin
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' delete from CADP01_SOBRAS where (p1s_chave is null) or (p1s_codemp is null)');
DM1.Query4.ExecSQL;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' delete from CADP02_SOBRAS where (p2s_chave is null) or (p2s_codemp is null) or (p2s_chave=0) or (p2s_item=0)');
DM1.Query4.ExecSQL;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' delete from CADP02_SOBRAS_MP where (p2smp_chave is null) or (p2smp_codemp is null) or (p2smp_chave=0) or (p2smp_codpro=0) or (p2smp_codpro=0)');
DM1.Query4.ExecSQL;
end;

procedure Tfrm_sobra_dev.btn_DesbloqClick(Sender: TObject);
begin
dm1.Query1.Close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' update cadp01_sobras set p1s_status=0 where '
                  +' p1s_chave='+chr(39)+edt_chave_p.Text+chr(39)
                  +' and p1s_codemp='+IntToStr(codemp));
try
  dm1.Query1.ExecSQL;
  fmensagem('Pedido '+edt_chave_p.Text+' liberado!',0,['0'],0);
except
  fmensagem('Erro ao liberar o pedido de numero..: '+edt_chave_p.Text,0,['0'],0);
  end;
end;
procedure Tfrm_sobra_dev.bb_corrige_codempClick(Sender: TObject);
begin
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' update CADP01_SOBRAS set p1s_codemp=1 ');
DM1.Query4.ExecSQL;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' update CADP02_SOBRAS set p2s_codemp=1 ');
DM1.Query4.ExecSQL;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' update CADP02_SOBRAS_MP set p2smp_codemp=1 ');
DM1.Query4.ExecSQL;

end;

procedure Tfrm_sobra_dev.bb_atu_prc_hvenClick(Sender: TObject);
begin
if (fsonumero(cb_chave.Text)>0) and (TB_PED02_SOBRASP2S_CHAVE.AsInteger>0) then
  begin
  TB_PED02_SOBRAS.First;
  while not TB_PED02_SOBRAS.Eof do
    begin
    DM1.Query4.Close;
    DM1.Query4.SQL.Clear;
    DM1.Query4.SQL.Add(' select PDPRECO1, PDPCOFAB from CADPRO ');
    DM1.Query4.SQL.Add(' where PDCODPRO='+TB_PED02_SOBRASP2S_CODPRO.AsString);
    DM1.Query4.SQL.Add(CODEMP2('PDCODEMP',TB_PED02_SOBRASP2S_CODEMP.AsInteger));
    DM1.Query4.Open;
    TB_PED02_SOBRAS.Edit;
    TB_PED02_SOBRASP2S_PRECO_VEN.AsFloat:=DM1.Query4.FieldByName('PDPRECO1').AsFloat*(TB_PED01_SOBRASP1S_PACTD.AsFloat/100+1);
    TB_PED02_SOBRASP2S_PRECO_CUS.AsFloat:=DM1.Query4.FieldByName('PDPRECOC').AsFloat*(TB_PED01_SOBRASP1S_PACTD.AsFloat/100+1);
    TB_PED02_SOBRAS.Post;
    TB_PED02_SOBRAS.Next;
    end;
  fmensagem('Concluido!',0,['0'],0);
  end;
end;

procedure Tfrm_sobra_dev.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_sobra_dev.Timer1Timer(Sender: TObject);
begin
if fsonumero(CHAVE_P)>0 then
  begin
  DM1.Query1.Close;
  DM1.Query1.SQL.Clear;
  DM1.Query1.SQL.Add(' update cadp01_Sobras set P1S_DATHOR_EVE=:dathor_eve ');
  DM1.Query1.SQL.Add(' where P1S_CHAVE='+CHAVE_P     );
  DM1.Query1.SQL.Add(' and '+fla_sqlmp('P1S_CODEMP',Form_SelEmp.CLB_EMPRESAS));
  DM1.Query1.ParamByName('dathor_eve').AsDateTime:=Now;
  DM1.Query1.ExecSQL;
  end;
end;

procedure Tfrm_sobra_dev.Button1Click(Sender: TObject);
begin
DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.SQL.Add(' update cadp02_sobras ');
DM1.Query4.SQL.Add(' set P2S_PRECO_VEN = (SELECT P2PCOTAB FROM CADP02 ');
DM1.Query4.SQL.Add(' WHERE P2CHAVE=P2S_CHAVE AND P2CODPRO=P2S_CODPRO) ');
DM1.Query4.SQL.Add(' WHERE P2S_ORIGEM=1 AND P2S_CHAVE='+cb_chave.Text);
DM1.Query4.Open;
fmensagem('Concluido!',0,['0'],0);
end;

procedure Tfrm_sobra_dev.Button4Click(Sender: TObject);
begin
fDeletaPadroes(0,'_SOBRA_DEV_GRUPO','');
Cds_Grupo.First;
while not Cds_Grupo.Eof do
  begin
  fGravaPadroes(0,Cds_GrupoCODGRU.AsString,'float','_SOBRA_DEV_GRUPO',Cds_GrupoPERC.AsString);
  Cds_Grupo.Next;
  end;
end;

procedure Tfrm_sobra_dev.Cds_GrupoCalcFields(DataSet: TDataSet);
begin
flcadGPro(1,0,Cds_GrupoCODGRU.AsString);
if not DM1.Tb_Gpro.IsEmpty then
  Cds_GrupoNOMGRU.AsString:=DM1.Tb_GproGRNOME.AsString
else
  Cds_GrupoNOMGRU.AsString:='Não Encontrado';
end;

procedure Tfrm_sobra_dev.Deletar1Click(Sender: TObject);
begin
if not Cds_Grupo.IsEmpty then
  Cds_Grupo.Delete;
end;

procedure Tfrm_sobra_dev.cb_materiaprimaClick(Sender: TObject);
begin
fDeletaPadroes(0,'_SOBRA_DEV','CB_MATERIAPRIMA');
fGravaPadroes(0,'CB_MATERIAPRIMA','checked' ,'_SOBRA_DEV',iif(cb_materiaprima.Checked,'true','false'));
TS2.TabVisible:=cb_materiaprima.Checked;
end;

procedure Tfrm_sobra_dev.cb_precoextraClick(Sender: TObject);
begin
fDeletaPadroes(0,'_SOBRA_DEV','CB_PRECOEXTRA');
fGravaPadroes(0,'CB_PRECOEXTRA'  ,'checked' ,'_SOBRA_DEV',iif(cb_precoextra.Checked  ,'true','false'));
edt_pcouni.ReadOnly:=cb_precoextra.Checked;
end;

procedure Tfrm_sobra_dev.CB_GRUPO_LOTEClick(Sender: TObject);
begin
fDeletaPadroes(0,'_SOBRA_DEV','CB_GRUPO_LOTE');
fGravaPadroes(0,'CB_GRUPO_LOTE'  ,'checked' ,'_SOBRA_DEV',iif(CB_GRUPO_LOTE.Checked  ,'true','false'));
end;

procedure Tfrm_sobra_dev.cb_alt_pcoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_SOBRA_DEV','CB_ALT_PCO');
fGravaPadroes(0,'CB_ALT_PCO'  ,'checked' ,'_SOBRA_DEV',iif(cb_alt_pco.Checked  ,'true','false'));
end;

procedure Tfrm_sobra_dev.cb_dedacr_hor_vendaClick(Sender: TObject);
begin
fDeletaPadroes(0,'_SOBRA_DEV','CB_DEDACR_HOR_VENDA');
fGravaPadroes(0,'CB_DEDACR_HOR_VENDA'  ,'checked' ,'_SOBRA_DEV',iif(cb_dedacr_hor_venda.Checked  ,'true','false'));
end;

procedure Tfrm_sobra_dev.btn_AtuCliClick(Sender: TObject);
begin
dm1.Query1.Close;
dm1.Query1.SQL.Clear;
dm1.Query1.SQL.Add(' update cadp01_sobras set p1s_codcli=(select p1codcli from '
                  +' cadp01 where p1codemp=p1s_codemp and p1chave=p1s_chave)   '
                  +' where p1s_chave='+chr(39)+edt_AtuCli.Text+chr(39)+' and '
                  +' p1s_codemp='+IntToStr(codemp));
try
  dm1.Query1.ExecSQL;
  fmensagem('Cliente do Pedido '+edt_AtuCli.Text+' alterado!',0,['0'],0);
except
  fmensagem('Erro ao Atualizar cliente!',0,['0'],0);
  end;

end;

end.

