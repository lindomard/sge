unit S_SPED_EFD_NOVO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,db,dbtables,
  RxMemDS, DBCtrls, Grids, DBGrids, CurrEdit, RxDBComb, RXDBCtrl, DBClient;

type
  TFrm_SPED_EFD_NOVO = class(TForm)
    Panel2: TPanel;
    bbGerar: TBitBtn;
    bbSair: TBitBtn;
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsEventos: TTabSheet;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    Label3: TLabel;
    edt_codigo_layout: TEdit;
    Label4: TLabel;
    cb_tipo_escritura: TComboBox;
    lbl_numrec_esc: TLabel;
    edt_numrec_esc_ant: TEdit;
    Label5: TLabel;
    cb_ind_sit_ESP: TComboBox;
    Label15: TLabel;
    edt_nomarq: TEdit;
    sbnsalvar: TSpeedButton;
    memo_erros: TRichEdit;
    TabSheet1: TTabSheet;
    memo1: TRichEdit;
    Label47: TLabel;
    CB_INVENTARIO: TComboBox;
    mem_R0150: TRxMemoryData;
    mem_R0150COD_PART: TStringField;
    mem_R0150COD_PAIS: TIntegerField;
    mem_R0150CNPJ: TStringField;
    mem_R0150CPF: TStringField;
    mem_R0150IE: TStringField;
    mem_R0150COD_MUN: TIntegerField;
    mem_R0150SUFRAMA: TStringField;
    mem_R0150END: TStringField;
    mem_R0150NUM: TStringField;
    mem_R0150COMPL: TStringField;
    mem_R0150BAIRRO: TStringField;
    mem_R0190: TRxMemoryData;
    mem_R0190UNID: TStringField;
    mem_R0190DESCR: TStringField;
    mem_R0200: TRxMemoryData;
    mem_R0200COD_ITEM: TStringField;
    mem_R0200DESCR_ITEM: TStringField;
    mem_R0200COD_BARRA: TStringField;
    mem_R0200COD_ANT_ITEM: TStringField;
    mem_R0200UNID_INV: TStringField;
    mem_R0200TIPO_ITEM: TStringField;
    mem_R0200COD_NCM: TStringField;
    mem_R0200EX_IPI: TStringField;
    mem_R0200COD_GEN: TStringField;
    mem_R0200COD_LST: TStringField;
    mem_R0200ALIQ_ICMS: TFloatField;
    mem_R0400: TRxMemoryData;
    mem_R0400COD_NAT: TStringField;
    mem_R0400DESCR_NAT: TStringField;
    Tb_ValVal: TQuery;
    tsEntrada: TTabSheet;
    Label6: TLabel;
    cb_COD_INC_TRIB: TComboBox;
    Label7: TLabel;
    CB_IND_APRO_CRED: TComboBox;
    Label8: TLabel;
    CB_COD_TIPO_CONT: TComboBox;
    mem_R0150NOME: TStringField;
    mem_m100: TRxMemoryData;
    mem_m105: TRxMemoryData;
    mem_m200: TRxMemoryData;
    mem_m100COD_CRED: TStringField;
    mem_m100IND_CRED_ORI: TIntegerField;
    mem_m100VL_BC_PIS: TFloatField;
    mem_m100ALIQ_PIS: TFloatField;
    mem_m100QUANT_BC_PIS: TFloatField;
    mem_m100ALIQ_PIS_QUANT: TFloatField;
    mem_m100VL_CRED: TFloatField;
    mem_m100VL_AJUS_ACRES: TFloatField;
    mem_m100VL_CRED_DIF: TFloatField;
    mem_m100VL_CRED_DISP: TFloatField;
    mem_m100IND_DESC_CRED: TFloatField;
    mem_m100VL_CRED_DESC: TFloatField;
    mem_m100SLD_CRED: TFloatField;
    mem_m105NAT_BC_CRED: TStringField;
    mem_m105CST_PIS: TStringField;
    mem_m105VL_BC_PIS_TOT: TFloatField;
    mem_m105VL_BC_PIS_CUM: TFloatField;
    mem_m105VL_BC_PIS_NC: TFloatField;
    mem_m105VL_BC_PIS: TFloatField;
    mem_m105QUANT_BC_PIS_TOT: TFloatField;
    mem_m105QUANT_BC_PIS: TFloatField;
    mem_m105DESC_CRED: TStringField;
    mem_m200VL_TOT_CONT_NC_PER: TFloatField;
    mem_m200VL_TOT_CRED_DESC: TFloatField;
    mem_m200VL_TOT_CRED_DESC_ANT: TFloatField;
    mem_m200VL_TOT_CONT_NC_DEV: TFloatField;
    mem_m200VL_RET_NC: TFloatField;
    mem_m200VL_OUT_DED_NC: TFloatField;
    mem_m200VL_CONT_NC_REC: TFloatField;
    mem_m200VL_TOT_CONT_CUM_PER: TFloatField;
    mem_m200VL_RET_CUM: TFloatField;
    mem_m200VL_OUT_DED_CUM: TFloatField;
    mem_m200VL_CONT_CUM_REC: TFloatField;
    mem_m200VL_TOT_CONT_REC: TFloatField;
    mem_m210: TRxMemoryData;
    mem_m210COD_CONT: TStringField;
    mem_m210VL_REC_BRT: TFloatField;
    mem_m210VL_BC_CONT: TFloatField;
    mem_m210ALIQ_PIS: TFloatField;
    mem_m210QUANT_BC_PIS: TFloatField;
    mem_m210ALIQ_PIS_QUANT: TFloatField;
    mem_m210VL_CONT_APUR: TFloatField;
    mem_m210VL_AJUS_ACRES: TFloatField;
    mem_m210VL_AJUS_REDUC: TFloatField;
    mem_m210VL_CONT_DIFER: TFloatField;
    mem_m210VL_CONT_DIFER_ANT: TFloatField;
    mem_m210VL_CONT_PER: TFloatField;
    mem_m500: TRxMemoryData;
    mem_m505: TRxMemoryData;
    mem_m600: TRxMemoryData;
    mem_m610: TRxMemoryData;
    mem_m500COD_CRED: TStringField;
    mem_m500IND_CRED_ORI: TIntegerField;
    mem_m500VL_BC_COFINS: TFloatField;
    mem_m500ALIQ_COFINS: TFloatField;
    mem_m500QUANT_BC_COFINS: TFloatField;
    mem_m500ALIQ_COFINS_QUANT: TFloatField;
    mem_m500VL_CRED: TFloatField;
    mem_m500VL_AJUS_ACRES: TFloatField;
    mem_m500VL_AJUS_REDUC: TFloatField;
    mem_m500VL_CRED_DIF: TFloatField;
    mem_m500VL_CRED_DISP: TFloatField;
    mem_m500IND_DESC_CRED: TFloatField;
    mem_m500VL_CRED_DESC: TFloatField;
    mem_m500SLD_CRED: TFloatField;
    mem_m505NAT_BC_CRED: TStringField;
    mem_m505CST_COFINS: TStringField;
    mem_m505VL_BC_COFINS_TOT: TFloatField;
    mem_m505VL_BC_COFINS_CUM: TFloatField;
    mem_m505VL_BC_COFINS_NC: TFloatField;
    mem_m505VL_BC_COFINS: TFloatField;
    mem_m505QUANT_BC_COFINS_TOT: TFloatField;
    mem_m505QUANT_BC_COFINS: TFloatField;
    mem_m505DESC_CRED: TStringField;
    mem_m600VL_TOT_CONT_NC_PER: TFloatField;
    mem_m600VL_TOT_CRED_DESC: TFloatField;
    mem_m600VL_TOT_CRED_DESC_ANT: TFloatField;
    mem_m600VL_TOT_CONT_NC_DEV: TFloatField;
    mem_m600VL_RET_NC: TFloatField;
    mem_m600VL_OUT_DED_NC: TFloatField;
    mem_m600VL_CONT_NC_REC: TFloatField;
    mem_m600VL_TOT_CONT_CUM_PER: TFloatField;
    mem_m600VL_RET_CUM: TFloatField;
    mem_m600VL_OUT_DED_CUM: TFloatField;
    mem_m600VL_CONT_CUM_REC: TFloatField;
    mem_m600VL_TOT_CONT_REC: TFloatField;
    mem_m610COD_CONT: TStringField;
    mem_m610VL_REC_BRT: TFloatField;
    mem_m610VL_BC_CONT: TFloatField;
    mem_m610ALIQ_COFINS: TFloatField;
    mem_m610QUANT_BC_COFINS: TFloatField;
    mem_m610ALIQ_COFINS_QUANT: TFloatField;
    mem_m610VL_CONT_APUR: TFloatField;
    mem_m610VL_AJUS_ACRES: TFloatField;
    mem_m610VL_AJUS_REDUC: TFloatField;
    mem_m610VL_CONT_DIFER: TFloatField;
    mem_m610VL_CONT_DIFER_ANT: TFloatField;
    mem_m610VL_CONT_PER: TFloatField;
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
    mem_E110: TRxMemoryData;
    mem_E110E110_VL_TOT_DEBITOS: TFloatField;
    mem_E110E110_VL_AJ_DEBITOS: TFloatField;
    mem_E110E110_VL_TOT_AJ_DEBITOS: TFloatField;
    mem_E110E110_VL_ESTORNOS_CRED: TFloatField;
    mem_E110E110_VL_TOT_CREDITOS: TFloatField;
    mem_E110E110_VL_AJ_CREDITOS: TFloatField;
    mem_E110E110_VL_TOT_AJ_CREDITOS: TFloatField;
    mem_E110E110_VL_ESTORNOS_DEB: TFloatField;
    mem_E110E110_VL_SLD_CREDOR_ANT: TFloatField;
    mem_E110E110_VL_SLD_APURADO: TFloatField;
    mem_E110E110_VL_TOT_DED: TFloatField;
    mem_E110E110_VL_ICMS_RECOLHER: TFloatField;
    mem_E110E110_VL_SLD_CREDOR_TRANSPORTAR: TFloatField;
    mem_E110E110_DEB_ESP: TFloatField;
    mem_E116: TRxMemoryData;
    mem_E116E116_COD_OR: TStringField;
    mem_E116E116_VL_OR: TFloatField;
    mem_E116E116_DT_VCTO: TDateField;
    mem_E116E116_COD_REC: TStringField;
    mem_E116E116_NUM_PROC: TStringField;
    mem_E116E116_IND_PROC: TStringField;
    mem_E116E116_PROC: TStringField;
    mem_E116E116_TXT_COMPL: TStringField;
    mem_E116E116_MES_REF: TStringField;
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
    Label38: TLabel;
    CB_PERFIL: TComboBox;
    Qr_1010: TQuery;
    Qr_1010REG: TStringField;
    Qr_1010IND_EXP: TStringField;
    Qr_1010IND_CCRF: TStringField;
    Qr_1010IND_COMB: TStringField;
    Qr_1010IND_USINA: TStringField;
    Qr_1010IND_VA: TStringField;
    Qr_1010IND_EE: TStringField;
    Qr_1010IND_CART: TStringField;
    Qr_1010IND_FORM: TStringField;
    Qr_1010IND_AER: TStringField;
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
    Label67: TLabel;
    CB_CODREC_OBRIGATORIO: TComboBox;
    DBE_COD_REC: TDBEdit;
    CB_SOH: TCheckBox;
    Label66: TLabel;
    CB_MOTINV: TComboBox;
    Label9: TLabel;
    edt_datini_filtro: TDateEdit;
    Label10: TLabel;
    edt_datfin_filtro: TDateEdit;
    BitBtn1: TBitBtn;
    tsHistoricoVersao: TTabSheet;
    GroupBox1: TGroupBox;
    Src_HistoricoVersao: TDataSource;
    cds_HistoricoVersao: TClientDataSet;
    cds_HistoricoVersaoVERSAO_LAYOUT: TStringField;
    cds_HistoricoVersaoCODIGO_LAYOUT: TStringField;
    cds_HistoricoVersaoDATA_INICIO: TDateField;
    cds_HistoricoVersaoDATA_FINAL: TDateField;
    DBGrid1: TDBGrid;
    mem_R0200CEST: TStringField;
    Qr_1010IND_GIAF1: TStringField;
    Qr_1010IND_GIAF2: TStringField;
    Qr_1010IND_GIAF3: TStringField;
    CB_BLOCOK: TCheckBox;
    gb_reg_blocoK: TGroupBox;
    CB_K100: TCheckBox;
    CB_K200: TCheckBox;
    CB_K220: TCheckBox;
    CB_K230: TCheckBox;
    CB_K235: TCheckBox;
    CB_K250: TCheckBox;
    CB_K255: TCheckBox;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure CB_BLOCOKClick(Sender: TObject);
  private
    { Private declarations }

    mFinalCFOP_Frete: String;
    mfone_temp: String;
    mLinha: String;
    mTabela: String;
    items_lista_blocoR: TStrings;
    items_lista_blocoA: TStrings;
    items_lista_blocoB: TStrings;
    items_lista_blocoC: TStrings;
    items_lista_blocoD: TStrings;
    items_lista_blocoE: TStrings;
    items_lista_blocoF: TStrings;
    items_lista_blocoG: TStrings;
    items_lista_blocoH: TStrings;
    items_lista_blocoK: TStrings;
    items_lista_blocoM: TStrings;
    items_lista_bloco1: TStrings;



    mQtdRegBloco0 : Integer;
    mQtdRegBlocoA : Integer;
    mQtdRegBlocoB : Integer;
    mQtdRegBlocoC : Integer;
    mQtdRegBlocoD : Integer;
    mQtdRegBlocoF : Integer;
    mQtdRegBlocoE : Integer;
    mQtdRegBlocoG : Integer;
    mQtdRegBlocoH : Integer;
    mQtdRegBlocoK : Integer;
    mQtdRegBlocoM : Integer;
    mQtdRegBloco1: Integer;


    mQtdRegBloco_A001: Integer;
    mQtdRegBloco_A010: Integer;
    mQtdRegBloco_A100: Integer;
    mQtdRegBloco_A110: Integer;
    mQtdRegBloco_A111: Integer;
    mQtdRegBloco_A120: Integer;
    mQtdRegBloco_A170: Integer;
    mQtdRegBloco_A990: Integer;

    mQtdRegBloco_B001: Integer;
    mQtdRegBloco_B990: Integer;


    mQtdRegBloco_C001: Integer;
    mQtdRegBloco_C010: Integer;
    mQtdRegBloco_C100: Integer;
    mQtdRegBloco_C110: Integer;
    mQtdRegBloco_C111: Integer;
    mQtdRegBloco_C120: Integer;
    mQtdRegBloco_C170: Integer;
    mQtdRegBloco_C173: Integer;
    mQtdRegBloco_C180: Integer;
    mQtdRegBloco_C181: Integer;
    mQtdRegBloco_C185: Integer;
    mQtdRegBloco_C188: Integer;
    mQtdRegBloco_C190: Integer;
    mQtdRegBloco_C191: Integer;
    mQtdRegBloco_C195: Integer;
    mQtdRegBloco_C198: Integer;
    mQtdRegBloco_C199: Integer;
    mQtdRegBloco_C380: Integer;
    mQtdRegBloco_C381: Integer;
    mQtdRegBloco_C385: Integer;
    mQtdRegBloco_C395: Integer;
    mQtdRegBloco_C396: Integer;
    mQtdRegBloco_C400: Integer;
    mQtdRegBloco_C405: Integer;
    mQtdRegBloco_C481: Integer;
    mQtdRegBloco_C485: Integer;
    mQtdRegBloco_C489: Integer;
    mQtdRegBloco_C490: Integer;
    mQtdRegBloco_C491: Integer;
    mQtdRegBloco_C495: Integer;
    mQtdRegBloco_C499: Integer;
    mQtdRegBloco_C500: Integer;
    mQtdRegBloco_C501: Integer;
    mQtdRegBloco_C505: Integer;
    mQtdRegBloco_C509: Integer;
    mQtdRegBloco_C590: Integer;
    mQtdRegBloco_C600: Integer;
    mQtdRegBloco_C601: Integer;
    mQtdRegBloco_C605: Integer;
    mQtdRegBloco_C609: Integer;
    mQtdRegBloco_C990: Integer;

    mQtdRegBloco_D001: Integer;
    mQtdRegBloco_D010: Integer;
    mQtdRegBloco_D100: Integer;
    mQtdRegBloco_D190: Integer;
    mQtdRegBloco_D101: Integer;
    mQtdRegBloco_D105: Integer;
    mQtdRegBloco_D111: Integer;
    mQtdRegBloco_D200: Integer;
    mQtdRegBloco_D201: Integer;
    mQtdRegBloco_D205: Integer;
    mQtdRegBloco_D209: Integer;
    mQtdRegBloco_D300: Integer;
    mQtdRegBloco_D309: Integer;
    mQtdRegBloco_D350: Integer;
    mQtdRegBloco_D359: Integer;
    mQtdRegBloco_D500: Integer;
    mQtdRegBloco_D501: Integer;
    mQtdRegBloco_D505: Integer;
    mQtdRegBloco_D509: Integer;
    mQtdRegBloco_D590: Integer;

    mQtdRegBloco_D600: Integer;
    mQtdRegBloco_D601: Integer;
    mQtdRegBloco_D605: Integer;
    mQtdRegBloco_D609: Integer;
    mQtdRegBloco_D990: Integer;


    mQtdRegBloco_G001: Integer;
    mQtdRegBloco_G990: Integer;


    mQtdRegBloco_H001: Integer;
    mQtdRegBloco_H005: Integer;
    mQtdRegBloco_H010: Integer;
    mQtdRegBloco_H990: Integer;


    mQtdRegBloco_K001: Integer;
    mQtdRegBloco_K100: Integer;
    mQtdRegBloco_K230: Integer;
    mQtdRegBloco_K235: Integer;
    mQtdRegBloco_K990: Integer;


    mQtdRegBloco_E001: Integer;
    mQtdRegBloco_E100: Integer;
    mQtdRegBloco_E110: Integer;
    mQtdRegBloco_E111: Integer;
    mQtdRegBloco_E115: Integer;
    mQtdRegBloco_E116: Integer;
    mQtdRegBloco_E200: Integer;
    mQtdRegBloco_E210: Integer;
    mQtdRegBloco_E250: Integer;
    mQtdRegBloco_E990: Integer;


    mQtdRegBloco_F001: Integer;
    mQtdRegBloco_F010: Integer;
    mQtdRegBloco_F100: Integer;
    mQtdRegBloco_F111: Integer;
    mQtdRegBloco_F120: Integer;
    mQtdRegBloco_F129: Integer;
    mQtdRegBloco_F130: Integer;
    mQtdRegBloco_F139: Integer;
    mQtdRegBloco_F150: Integer;
    mQtdRegBloco_F200: Integer;
    mQtdRegBloco_F205: Integer;
    mQtdRegBloco_F210: Integer;
    mQtdRegBloco_F211: Integer;
    mQtdRegBloco_F600: Integer;
    mQtdRegBloco_F700: Integer;
    mQtdRegBloco_F800: Integer;
    mQtdRegBloco_F990: Integer;

    mQtdRegBloco_M001: Integer;
    mQtdRegBloco_M100: Integer;
    mQtdRegBloco_1001: Integer;
    mQtdRegBloco_1010: Integer;
    mQtdRegBloco_1020: Integer;
    mQtdRegBloco_M105: Integer;
    mQtdRegBloco_M110: Integer;
    mQtdRegBloco_1100: Integer;
    mQtdRegBloco_1101: Integer;
    mQtdRegBloco_1102: Integer;
    mQtdRegBloco_1200: Integer;
    mQtdRegBloco_1210: Integer;
    mQtdRegBloco_1220: Integer;
    mQtdRegBloco_1300: Integer;
    mQtdRegBloco_1500: Integer;
    mQtdRegBloco_1501: Integer;
    mQtdRegBloco_1502: Integer;
    mQtdRegBloco_1600: Integer;
    mQtdRegBloco_1610: Integer;
    mQtdRegBloco_1620: Integer;
    mQtdRegBloco_1700: Integer;
    mQtdRegBloco_1800: Integer;
    mQtdRegBloco_1809: Integer;
    mQtdRegBloco_1990: Integer;

    mQtdRegBloco_M200: Integer;
    mQtdRegBloco_M210: Integer;
    mQtdRegBloco_M211: Integer;
    mQtdRegBloco_M220: Integer;
    mQtdRegBloco_M230: Integer;
    mQtdRegBloco_M300: Integer;
    mQtdRegBloco_M350: Integer;
    mQtdRegBloco_M400: Integer;
    mQtdRegBloco_M410: Integer;
    mQtdRegBloco_M500: Integer;
    mQtdRegBloco_M505: Integer;
    mQtdRegBloco_M510: Integer;
    mQtdRegBloco_M600: Integer;
    mQtdRegBloco_M610: Integer;
    mQtdRegBloco_M611: Integer;
    mQtdRegBloco_M620: Integer;
    mQtdRegBloco_M630: Integer;
    mQtdRegBloco_M700: Integer;
    mQtdRegBloco_M800: Integer;
    mQtdRegBloco_M810: Integer;
    mQtdRegBloco_M990: Integer;

    mQtdRegBloco_0000: Integer;
    mQtdRegBloco_0001: Integer;
    mQtdRegBloco_0005: Integer;
    mQtdRegBloco_0100: Integer;
    mQtdRegBloco_0110: Integer;
    mQtdRegBloco_0111: Integer;
    mQtdRegBloco_0140: Integer;
    mQtdRegBloco_0150: Integer;
    mQtdRegBloco_0190: Integer;
    mQtdRegBloco_0200: Integer;
    mQtdRegBloco_0205: Integer;
    mQtdRegBloco_0206: Integer;
    mQtdRegBloco_0208: Integer;
    mQtdRegBloco_0400: Integer;
    mQtdRegBloco_0450: Integer;
    mQtdRegBloco_0500: Integer;
    mQtdRegBloco_0600: Integer;
    mQtdRegBloco_9001: Integer;
    mQtdRegBloco_9900: Integer;
    mQtdRegBloco_9990: Integer;
    mQtdRegBloco_9999: Integer;

    mAlterouGuia: boolean;

    mtotGNRE: Real;

    mQtdRegBloco_0990: Integer;

    moper_e111: Integer;


    query_c100: tQuery;
    query_c170: tQuery;
    query_c190: tQuery;

    query_c300: tQuery;
    query_c310: tQuery;
    query_c320: tQuery;
    query_c321: tQuery;
    query_c350: tQuery;
    query_c370: tQuery;
    query_c390: tQuery;

    query_c400: tQuery;
    query_c405: tQuery;
    query_c481: tQuery;

    query_c485: tQuery;

    query_c489: tQuery;
    query_c490: tQuery;
    query_c491: tQuery;
    query_c495: tQuery;

    query_c499: tQuery;
    query_c500: tQuery;
    query_c501: tQuery;
    query_c505: tQuery;
    query_c509: tQuery;
    query_c600: tQuery;
    query_c601: tQuery;
    query_c605: tQuery;
    query_c609: tQuery;



    function fTotalizarST(pTipo: Integer): Boolean;

    function fBlocoR(pOrigem: Integer): Boolean;

    function fBlocoA(pOrigem: Integer): Boolean;

    function fBlocoB(pOrigem: Integer): Boolean;
    function fBlocoC(pOrigem: Integer): Boolean;

    function fBlocoD(pOrigem: Integer): Boolean;

    function fBlocoE(pOrigem: Integer): Boolean;

    function fBlocoF(pOrigem: Integer): Boolean;

    function fBlocoG(pOrigem: Integer): Boolean;

    function fBlocoH(pOrigem: Integer): Boolean;

    function fBlocoK(pOrigem: Integer): Boolean;

    function fBlocoM(pOrigem: Integer): Boolean;

    function fBloco1(pOrigem: Integer): Boolean;

    function fValVal(pObs,pNomeTab,pCampo,pValorCampo: String): Boolean;


    function fGerarReg9900(pTipo: String;pQtdReg: Integer): Boolean;

    function fTestarCliFor(pCodigo: String): Boolean;
    function fTestarR0190(pCodigo: String): Boolean;
    function fTestarR0200(pCodigo: String): Boolean;

    function fTestarR0400(pCodigo: String): Boolean;

    function fBloqueiaCampos(pBloqueia: Boolean): Boolean;


    function fGerarM100(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Pis,pAliqPis,pQuant_BC_Pis,pAliq_Pis_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;


    function fGerarM105(pNAT_BC_CRED,pCST_PIS: string; pVL_BC_PIS_TOT, pVL_BC_PIS_CUM,pVL_BC_PIS_NC,pVL_BC_PIS,pQUANT_BC_PIS_TOT
       ,pQUANT_BC_PIS  : real; pDESC_CRED: String): Boolean;


    function fGerarM200(pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;

    function fGerarM210(pCOD_CONT: String;
    pVL_REC_BRT,pVL_BC_CONT,pALIQ_PIS,pQUANT_BC_PIS,pALIQ_PIS_QUANT,pVL_CONT_APUR
    ,pVL_AJUS_ACRES,pVL_AJUS_REDUC,pVL_CONT_DIFER,pVL_CONT_DIFER_ANT,pVL_CONT_PER: Real): Boolean;




    function fGerarM500(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Cofins,pAliqCofins,pQuant_BC_Cofins,pAliq_Cofins_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Ajus_Reduc,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;


    function fGerarM505(pNAT_BC_CRED,pCST_Cofins: string; pVL_BC_Cofins_TOT, pVL_BC_Cofins_CUM,pVL_BC_Cofins_NC,pVL_BC_Cofins,pQUANT_BC_Cofins_TOT
       ,pQUANT_BC_Cofins  : real; pDESC_CRED: String): Boolean;


    function fGerarM600(pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;

    function fGerarM610(pCOD_CONT: String;
    pVL_REC_BRT,pVL_BC_CONT,pALIQ_Cofins,pQUANT_BC_Cofins,pALIQ_Cofins_QUANT,pVL_CONT_APUR
    ,pVL_AJUS_ACRES,pVL_AJUS_REDUC,pVL_CONT_DIFER,pVL_CONT_DIFER_ANT,pVL_CONT_PER: Real): Boolean;



    Function fAbrirReg190(pEmitente: Integer;pCodEmp,pLotSEq,pChave,pOrdem: Real): Boolean;


    function fGravarGuiaST: Boolean;

    procedure fAtualizarHistoricos;

  public
    { Public declarations }
     mAnoMes_ini: String;

  end;

var
  Frm_SPED_EFD_NOVO: TFrm_SPED_EFD_NOVO;

    const
    fdt_efd='ddmmyyyy';
    fdt_efd2='mmyyyy';
    mCasas2Dec='##0.00';
    mCasas3Dec='##0.000';
    mCasas4Dec='##0.0000';
    mCasas5Dec='##0.00000';

implementation

uses Func, S_DM1, lerarq, S_SPED_EFD_NotasST, func_excecoes;

{$R *.dfm}

procedure TFrm_SPED_EFD_NOVO.bbGerarClick(Sender: TObject);
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


if CB_SOH.Checked then
   begin
   if trim(CB_INVENTARIO.Text)='' then
      begin
      fmensagem('Inventario tem que ser colocado',0,['0'],0);
      exit;
      end
   else
      begin
      if CB_INVENTARIO.ItemIndex<0 then
         begin
         fmensagem('Nome inválido do inventario!',0,['0'],0);
         exit;
         end
      end;
   end;
if mAlterouGuia then
   fGravarGuiaST;

query_temp:=tQuery.create(nil);
query_temp.databasename:='SG_ASSOC';

edt_datfinExit(self);
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

if not mem_R0190.Active then
   mem_R0190.Open;
mem_R0190.EmptyTable;

if not mem_R0200.Active then
   mem_R0200.Open;
mem_R0200.EmptyTable;

if not mem_R0400.Active then
   mem_R0400.Open;
mem_R0400.EmptyTable;


if not mem_m100.Active then
   mem_m100.Open;
mem_m100.EmptyTable;

if not mem_m105.Active then
   mem_m105.Open;
mem_m105.EmptyTable;

if not mem_m200.Active then
   mem_m200.Open;
mem_m200.EmptyTable;


if not mem_e200.active then
   mem_e200.open;
mem_e200.EmptyTable;

if not mem_e210.active then
   mem_e210.open;
mem_e210.EmptyTable;




if not mem_m210.Active then
   mem_m210.Open;
mem_m210.EmptyTable;


if not mem_m500.Active then
   mem_m500.Open;
mem_m500.EmptyTable;

if not mem_m505.Active then
   mem_m505.Open;
mem_m505.EmptyTable;

if not mem_m600.Active then
   mem_m600.Open;
mem_m600.EmptyTable;


if not mem_m610.Active then
   mem_m610.Open;
mem_m610.EmptyTable;



if not mem_E110.Active then
   mem_E110.Open;
mem_E110.EmptyTable;

mem_E110.Append;
mem_E110E110_VL_TOT_DEBITOS.AsFloat           :=0;
mem_E110E110_VL_AJ_DEBITOS.AsFloat            :=0;
mem_E110E110_VL_TOT_AJ_DEBITOS.AsFloat        :=0;
mem_E110E110_VL_ESTORNOS_CRED.AsFloat         :=0;
mem_E110E110_VL_TOT_CREDITOS.AsFloat          :=0;
mem_E110E110_VL_AJ_CREDITOS.AsFloat           :=0;
mem_E110E110_VL_TOT_AJ_CREDITOS.AsFloat       :=0;
mem_E110E110_VL_ESTORNOS_DEB.AsFloat          :=0;
mem_E110E110_VL_SLD_CREDOR_ANT.AsFloat        :=0;
mem_E110E110_VL_SLD_APURADO.AsFloat           :=0;
mem_E110E110_VL_TOT_DED.AsFloat               :=0;
mem_E110E110_VL_ICMS_RECOLHER.AsFloat         :=0;
mem_E110E110_VL_SLD_CREDOR_TRANSPORTAR.AsFloat:=0;
mem_E110E110_DEB_ESP.AsFloat                  :=0;



memo_erros.Lines.Clear;
memo1.Lines.Clear;


items_lista_blocoR.Clear;
items_lista_blocoA.Clear;
items_lista_blocoB.Clear;
items_lista_blocoC.Clear;
items_lista_blocoD.Clear;
items_lista_blocoE.Clear;
items_lista_blocoF.Clear;
items_lista_blocoG.Clear;
items_lista_blocoH.Clear;
items_lista_blocoK.Clear;
items_lista_blocoM.Clear;
items_lista_bloco1.Clear;


mFinalCFOP_Frete:='102';

mQtdRegBloco0:=0;
mQtdRegBlocoA:=0;
mQtdRegBlocoB:=0;
mQtdRegBlocoC:=0;
mQtdRegBlocoD:=0;
mQtdRegBlocoE:=0;
mQtdRegBlocoF:=0;
mQtdRegBlocoG :=0;
mQtdRegBlocoH :=0;
mQtdRegBlocoK :=0;


mQtdRegBlocoM:=0;
mQtdRegBloco1:=0;







mQtdRegBloco_A001:=0;
mQtdRegBloco_A100:=0;
mQtdRegBloco_A110:=0;
mQtdRegBloco_A111:=0;
mQtdRegBloco_A120:=0;
mQtdRegBloco_A170:=0;
mQtdRegBloco_A990:=0;

mQtdRegBloco_B001:=0;
mQtdRegBloco_B990:=0;

mQtdRegBloco_C001:=0;
mQtdRegBloco_C010:=0;
mQtdRegBloco_C100:=0;
mQtdRegBloco_C110:=0;
mQtdRegBloco_C111:=0;
mQtdRegBloco_C120:=0;
mQtdRegBloco_C170:=0;
mQtdRegBloco_C173:=0;
mQtdRegBloco_C180:=0;
mQtdRegBloco_C181:=0;
mQtdRegBloco_C185:=0;
mQtdRegBloco_C188:=0;
mQtdRegBloco_C190:=0;
mQtdRegBloco_C191:=0;
mQtdRegBloco_C195:=0;
mQtdRegBloco_C198:=0;
mQtdRegBloco_C199:=0;
mQtdRegBloco_C380:=0;
mQtdRegBloco_C381:=0;
mQtdRegBloco_C385:=0;
mQtdRegBloco_C395:=0;
mQtdRegBloco_C396:=0;
mQtdRegBloco_C400:=0;
mQtdRegBloco_C405:=0;
mQtdRegBloco_C481:=0;
mQtdRegBloco_C485:=0;
mQtdRegBloco_C489:=0;
mQtdRegBloco_C490:=0;
mQtdRegBloco_C491:=0;
mQtdRegBloco_C495:=0;
mQtdRegBloco_C499:=0;
mQtdRegBloco_C500:=0;
mQtdRegBloco_C501:=0;
mQtdRegBloco_C505:=0;
mQtdRegBloco_C509:=0;
mQtdRegBloco_C590:=0;

mQtdRegBloco_C600:=0;
mQtdRegBloco_C601:=0;
mQtdRegBloco_C605:=0;
mQtdRegBloco_C609:=0;
mQtdRegBloco_C990:=0;


mQtdRegBloco_D001:=0;
mQtdRegBloco_D010:=0;
mQtdRegBloco_D100:=0;
mQtdRegBloco_D190:=0;
mQtdRegBloco_D590:=0;
mQtdRegBloco_D101:=0;
mQtdRegBloco_D105:=0;
mQtdRegBloco_D111:=0;
mQtdRegBloco_D200:=0;
mQtdRegBloco_D201:=0;
mQtdRegBloco_D205:=0;
mQtdRegBloco_D209:=0;
mQtdRegBloco_D300:=0;
mQtdRegBloco_D309:=0;
mQtdRegBloco_D350:=0;
mQtdRegBloco_D359:=0;
mQtdRegBloco_D500:=0;
mQtdRegBloco_D501:=0;
mQtdRegBloco_D505:=0;
mQtdRegBloco_D509:=0;
mQtdRegBloco_D600:=0;
mQtdRegBloco_D601:=0;
mQtdRegBloco_D605:=0;
mQtdRegBloco_D609:=0;
mQtdRegBloco_D990:=0;

mQtdRegBloco_E001:=0;
mQtdRegBloco_E100:=0;
mQtdRegBloco_E110:=0;
mQtdRegBloco_E111:=0;
mQtdRegBloco_E115:=0;
mQtdRegBloco_E116:=0;
mQtdRegBloco_E200:=0;
mQtdRegBloco_E210:=0;
mQtdRegBloco_E250:=0;
mQtdRegBloco_E990:=0;

mtotGNRE:=0;

mQtdRegBloco_F001:=0;
mQtdRegBloco_F010:=0;
mQtdRegBloco_F100:=0;
mQtdRegBloco_F111:=0;
mQtdRegBloco_F120:=0;
mQtdRegBloco_F129:=0;
mQtdRegBloco_F130:=0;
mQtdRegBloco_F139:=0;
mQtdRegBloco_F150:=0;
mQtdRegBloco_F200:=0;
mQtdRegBloco_F205:=0;
mQtdRegBloco_F210:=0;
mQtdRegBloco_F211:=0;
mQtdRegBloco_F600:=0;
mQtdRegBloco_F700:=0;
mQtdRegBloco_F800:=0;
mQtdRegBloco_F990:=0;


mQtdRegBloco_G001:=0;
mQtdRegBloco_G990:=0;

mQtdRegBloco_H001:=0;
mQtdRegBloco_H005:=0;
mQtdRegBloco_H010:=0;

mQtdRegBloco_H990:=0;


mQtdRegBloco_K001:=0;
mQtdRegBloco_K100:=0;
mQtdRegBloco_K230:=0;
mQtdRegBloco_K235:=0;
mQtdRegBloco_K990:=0;

mQtdRegBloco_1001:=0;
mQtdRegBloco_1990:=0;

mQtdRegBloco_M001:=0;
mQtdRegBloco_M100:=0;
mQtdRegBloco_1010:=0;
mQtdRegBloco_1020:=0;
mQtdRegBloco_M105:=0;
mQtdRegBloco_M110:=0;
mQtdRegBloco_1100:=0;
mQtdRegBloco_1101:=0;
mQtdRegBloco_1102:=0;
mQtdRegBloco_1200:=0;
mQtdRegBloco_1210:=0;
mQtdRegBloco_1220:=0;
mQtdRegBloco_1300:=0;
mQtdRegBloco_1500:=0;
mQtdRegBloco_1501:=0;
mQtdRegBloco_1502:=0;
mQtdRegBloco_1600:=0;
mQtdRegBloco_1610:=0;
mQtdRegBloco_1620:=0;
mQtdRegBloco_1700:=0;
mQtdRegBloco_1800:=0;
mQtdRegBloco_1809:=0;
mQtdRegBloco_M200:=0;
mQtdRegBloco_M210:=0;
mQtdRegBloco_M211:=0;
mQtdRegBloco_M220:=0;
mQtdRegBloco_M230:=0;
mQtdRegBloco_M300:=0;
mQtdRegBloco_M350:=0;
mQtdRegBloco_M400:=0;
mQtdRegBloco_M410:=0;
mQtdRegBloco_M500:=0;
mQtdRegBloco_M505:=0;
mQtdRegBloco_M510:=0;
mQtdRegBloco_M600:=0;
mQtdRegBloco_M610:=0;
mQtdRegBloco_M611:=0;
mQtdRegBloco_M620:=0;
mQtdRegBloco_M630:=0;
mQtdRegBloco_M700:=0;
mQtdRegBloco_M800:=0;
mQtdRegBloco_M810:=0;
mQtdRegBloco_M990:=0;


mQtdRegBloco_0000:=0;
mQtdRegBloco_0001:=0;
mQtdRegBloco_0005:=0;
mQtdRegBloco_0100:=0;
mQtdRegBloco_0110:=0;
mQtdRegBloco_0111:=0;
mQtdRegBloco_0140:=0;
mQtdRegBloco_0150:=0;
mQtdRegBloco_0190:=0;
mQtdRegBloco_0200:=0;
mQtdRegBloco_0205:=0;
mQtdRegBloco_0206:=0;
mQtdRegBloco_0208:=0;
mQtdRegBloco_0400:=0;
mQtdRegBloco_0450:=0;
mQtdRegBloco_0500:=0;
mQtdRegBloco_0600:=0;
mQtdRegBloco_0990:=0;

mQtdRegBloco_9001:=0;
mQtdRegBloco_9900:=0;
mQtdRegBloco_9990:=0;
mQtdRegBloco_9999:=0;


//fBlocoA(0);
fBlocoB(0);
fBlocoC(0);
fBlocoD(0);
fBlocoE(0);
fBlocoG(0);
fBlocoH(0);
fBlocoK(0);

//fBlocoF(0);
//fBlocoM(0);
fBloco1(0);
fBlocoR(0);
if trim(items_lista_blocoA.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoA.Text));
if trim(items_lista_blocoB.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoB.Text));
if trim(items_lista_blocoC.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoC.Text));

if trim(items_lista_blocoD.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoD.Text));
if trim(items_lista_blocoE.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoE.Text));
if trim(items_lista_blocoF.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoF.Text));
if trim(items_lista_blocoG.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoG.Text));

if trim(items_lista_blocoH.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoH.Text));
if trim(items_lista_blocoK.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoK.Text));

if trim(items_lista_blocoM.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_blocoM.Text));
if trim(items_lista_bloco1.Text)<>'' then
   items_lista_blocoR.Add(trim(items_lista_bloco1.Text));

mQtdRegBloco_9001:=mQtdRegBloco_9001+1;
mLinha:='|9001|0|'; // com dados
Memo1.Lines.Add(mLinha);
items_lista_blocoR.Add(mLinha);
mQtdRegBloco_9900:=mQtdRegBloco_9900+1;

fGerarReg9900('0000',mQtdRegBloco_0000);
fGerarReg9900('0001',mQtdRegBloco_0001);
fGerarReg9900('0005',mQtdRegBloco_0005);

fGerarReg9900('0100',mQtdRegBloco_0100);
fGerarReg9900('0110',mQtdRegBloco_0110);
fGerarReg9900('0111',mQtdRegBloco_0111);
fGerarReg9900('0140',mQtdRegBloco_0140);
fGerarReg9900('0150',mQtdRegBloco_0150);
fGerarReg9900('0190',mQtdRegBloco_0190);
fGerarReg9900('0200',mQtdRegBloco_0200);
fGerarReg9900('0205',mQtdRegBloco_0205);
fGerarReg9900('0206',mQtdRegBloco_0206);
fGerarReg9900('0208',mQtdRegBloco_0208);
fGerarReg9900('0400',mQtdRegBloco_0400);
fGerarReg9900('0450',mQtdRegBloco_0450);
fGerarReg9900('0500',mQtdRegBloco_0500);
fGerarReg9900('0600',mQtdRegBloco_0600);
fGerarReg9900('0990',mQtdRegBloco_0990);
fGerarReg9900('A001',mQtdRegBloco_A001);
fGerarReg9900('A100',mQtdRegBloco_A100);
fGerarReg9900('A110',mQtdRegBloco_A110);
fGerarReg9900('A111',mQtdRegBloco_A111);
fGerarReg9900('A120',mQtdRegBloco_A120);
fGerarReg9900('A170',mQtdRegBloco_A170);
fGerarReg9900('A990',mQtdRegBloco_A990);
fGerarReg9900('B001',mQtdRegBloco_B001);
fGerarReg9900('B990',mQtdRegBloco_B990);


fGerarReg9900('C001',mQtdRegBloco_C001);
fGerarReg9900('C010',mQtdRegBloco_C010);
fGerarReg9900('C100',mQtdRegBloco_C100);
fGerarReg9900('C110',mQtdRegBloco_C110);
fGerarReg9900('C120',mQtdRegBloco_C120);
fGerarReg9900('C170',mQtdRegBloco_C170);
fGerarReg9900('C173',mQtdRegBloco_C173);
fGerarReg9900('C180',mQtdRegBloco_C180);
fGerarReg9900('C181',mQtdRegBloco_C181);
fGerarReg9900('C185',mQtdRegBloco_C185);
fGerarReg9900('C188',mQtdRegBloco_C188);
fGerarReg9900('C190',mQtdRegBloco_C190);
fGerarReg9900('C191',mQtdRegBloco_C191);
fGerarReg9900('C195',mQtdRegBloco_C195);
fGerarReg9900('C198',mQtdRegBloco_C198);
fGerarReg9900('C199',mQtdRegBloco_C199);
fGerarReg9900('C380',mQtdRegBloco_C380);
fGerarReg9900('C381',mQtdRegBloco_C381);
fGerarReg9900('C385',mQtdRegBloco_C385);
fGerarReg9900('C395',mQtdRegBloco_C395);
fGerarReg9900('C396',mQtdRegBloco_C396);
fGerarReg9900('C400',mQtdRegBloco_C400);
fGerarReg9900('C405',mQtdRegBloco_C405);
fGerarReg9900('C481',mQtdRegBloco_C481);
fGerarReg9900('C485',mQtdRegBloco_C485);
fGerarReg9900('C489',mQtdRegBloco_C489);
fGerarReg9900('C490',mQtdRegBloco_C490);
fGerarReg9900('C491',mQtdRegBloco_C491);
fGerarReg9900('C495',mQtdRegBloco_C495);
fGerarReg9900('C499',mQtdRegBloco_C499);
fGerarReg9900('C500',mQtdRegBloco_C500);
fGerarReg9900('C501',mQtdRegBloco_C501);
fGerarReg9900('C500',mQtdRegBloco_C500);
fGerarReg9900('C501',mQtdRegBloco_C501);
fGerarReg9900('C505',mQtdRegBloco_C505);
fGerarReg9900('C509',mQtdRegBloco_C509);
fGerarReg9900('C590',mQtdRegBloco_C590);

fGerarReg9900('C600',mQtdRegBloco_C600);
fGerarReg9900('C601',mQtdRegBloco_C601);
fGerarReg9900('C605',mQtdRegBloco_C605);
fGerarReg9900('C609',mQtdRegBloco_C609);
fGerarReg9900('C990',mQtdRegBloco_C990);

fGerarReg9900('D001',mQtdRegBloco_D001);
fGerarReg9900('D010',mQtdRegBloco_D010);
fGerarReg9900('D100',mQtdRegBloco_D100);
fGerarReg9900('D101',mQtdRegBloco_D101);
fGerarReg9900('D105',mQtdRegBloco_D105);
fGerarReg9900('D111',mQtdRegBloco_D111);
fGerarReg9900('D190',mQtdRegBloco_D190);
fGerarReg9900('D200',mQtdRegBloco_D200);
fGerarReg9900('D201',mQtdRegBloco_D201);
fGerarReg9900('D205',mQtdRegBloco_D205);
fGerarReg9900('D209',mQtdRegBloco_D209);
fGerarReg9900('D300',mQtdRegBloco_D300);
fGerarReg9900('D309',mQtdRegBloco_D309);
fGerarReg9900('D350',mQtdRegBloco_D350);
fGerarReg9900('D359',mQtdRegBloco_D359);
fGerarReg9900('D500',mQtdRegBloco_D500);
fGerarReg9900('D501',mQtdRegBloco_D501);
fGerarReg9900('D505',mQtdRegBloco_D505);
fGerarReg9900('D509',mQtdRegBloco_D509);
fGerarReg9900('D600',mQtdRegBloco_D600);
fGerarReg9900('D605',mQtdRegBloco_D605);
fGerarReg9900('D609',mQtdRegBloco_D609);
fGerarReg9900('D990',mQtdRegBloco_D990);
fGerarReg9900('E001',mQtdRegBloco_E001);
fGerarReg9900('E100',mQtdRegBloco_E100);
fGerarReg9900('E110',mQtdRegBloco_E110);
fGerarReg9900('E111',mQtdRegBloco_E111);
fGerarReg9900('E115',mQtdRegBloco_E115);
fGerarReg9900('E116',mQtdRegBloco_E116);





fGerarReg9900('E200',mQtdRegBloco_E200);
fGerarReg9900('E210',mQtdRegBloco_E210);
fGerarReg9900('E250',mQtdRegBloco_E250);
fGerarReg9900('E990',mQtdRegBloco_E990);




fGerarReg9900('F001',mQtdRegBloco_F001);
fGerarReg9900('F010',mQtdRegBloco_F010);
fGerarReg9900('F100',mQtdRegBloco_F100);
fGerarReg9900('F111',mQtdRegBloco_F111);
fGerarReg9900('F120',mQtdRegBloco_F120);
fGerarReg9900('F129',mQtdRegBloco_F129);
fGerarReg9900('F130',mQtdRegBloco_F130);
fGerarReg9900('F139',mQtdRegBloco_F139);
fGerarReg9900('F150',mQtdRegBloco_F150);
fGerarReg9900('F200',mQtdRegBloco_F200);
fGerarReg9900('F205',mQtdRegBloco_F205);
fGerarReg9900('F210',mQtdRegBloco_F210);
fGerarReg9900('F211',mQtdRegBloco_F211);
fGerarReg9900('F600',mQtdRegBloco_F600);
fGerarReg9900('F700',mQtdRegBloco_F700);
fGerarReg9900('F800',mQtdRegBloco_F800);
fGerarReg9900('F990',mQtdRegBloco_F990);


fGerarReg9900('G001',mQtdRegBloco_G001);
fGerarReg9900('G990',mQtdRegBloco_G990);


fGerarReg9900('H001',mQtdRegBloco_H001);
fGerarReg9900('H005',mQtdRegBloco_H005);
fGerarReg9900('H010',mQtdRegBloco_H010);



fGerarReg9900('H990',mQtdRegBloco_H990);

fGerarReg9900('K001',mQtdRegBloco_K001);
fGerarReg9900('K100',mQtdRegBloco_K100);
fGerarReg9900('K230',mQtdRegBloco_K230);
fGerarReg9900('K235',mQtdRegBloco_K235);
fGerarReg9900('K990',mQtdRegBloco_K990);


fGerarReg9900('M001',mQtdRegBloco_M001);
fGerarReg9900('M100',mQtdRegBloco_M100);
fGerarReg9900('M105',mQtdRegBloco_M105);
fGerarReg9900('M110',mQtdRegBloco_M110);
fGerarReg9900('M200',mQtdRegBloco_M200);
fGerarReg9900('M211',mQtdRegBloco_M211);
fGerarReg9900('M210',mQtdRegBloco_M210);
fGerarReg9900('M220',mQtdRegBloco_M220);
fGerarReg9900('M230',mQtdRegBloco_M230);
fGerarReg9900('M300',mQtdRegBloco_M300);
fGerarReg9900('M350',mQtdRegBloco_M350);
fGerarReg9900('M400',mQtdRegBloco_M400);
fGerarReg9900('M410',mQtdRegBloco_M410);
fGerarReg9900('M500',mQtdRegBloco_M500);
fGerarReg9900('M505',mQtdRegBloco_M505);
fGerarReg9900('M510',mQtdRegBloco_M510);
fGerarReg9900('M600',mQtdRegBloco_M600);
fGerarReg9900('M610',mQtdRegBloco_M610);
fGerarReg9900('M611',mQtdRegBloco_M611);
fGerarReg9900('M620',mQtdRegBloco_M620);
fGerarReg9900('M630',mQtdRegBloco_M630);
fGerarReg9900('M700',mQtdRegBloco_M700);
fGerarReg9900('M800',mQtdRegBloco_M800);
fGerarReg9900('M810',mQtdRegBloco_M810);
fGerarReg9900('M990',mQtdRegBloco_M990);

fGerarReg9900('1001',mQtdRegBloco_1001);

fGerarReg9900('1010',mQtdRegBloco_1010);
fGerarReg9900('1020',mQtdRegBloco_1020);
fGerarReg9900('1100',mQtdRegBloco_1100);
fGerarReg9900('1101',mQtdRegBloco_1101);
fGerarReg9900('1102',mQtdRegBloco_1102);
fGerarReg9900('1200',mQtdRegBloco_1200);
fGerarReg9900('1210',mQtdRegBloco_1210);
fGerarReg9900('1220',mQtdRegBloco_1220);
fGerarReg9900('1300',mQtdRegBloco_1300);
fGerarReg9900('1500',mQtdRegBloco_1500);
fGerarReg9900('1501',mQtdRegBloco_1501);
fGerarReg9900('1502',mQtdRegBloco_1502);
fGerarReg9900('1600',mQtdRegBloco_1600);
fGerarReg9900('1610',mQtdRegBloco_1610);
fGerarReg9900('1620',mQtdRegBloco_1620);
fGerarReg9900('1700',mQtdRegBloco_1700);
fGerarReg9900('1800',mQtdRegBloco_1800);
fGerarReg9900('1809',mQtdRegBloco_1809);
fGerarReg9900('1990',mQtdRegBloco_1990);
fGerarReg9900('9001',mQtdRegBloco_9001);
mQtdRegBloco_9900:=mQtdRegBloco_9900+1;
fGerarReg9900('9900',mQtdRegBloco_9900+1);
mQtdRegBloco_9990:=mQtdRegBloco_9990+1;
fGerarReg9900('9990',mQtdRegBloco_9990);
mQtdRegBloco_9999:=mQtdRegBloco_9999+1;
fGerarReg9900('9999',mQtdRegBloco_9999);

mLinha:='|9990|'+IntToStr(mQtdRegBloco_9900+1)+'|';
Memo1.Lines.Add(mLinha);
items_lista_blocoR.Add(mLinha);



mQtdRegBloco_9999:=mQtdRegBloco0+mQtdRegBlocoA+mQtdRegBlocoB+mQtdRegBlocoC+mQtdRegBlocoD+mQtdRegBlocoF+mQtdRegBlocoE
                   +mQtdRegBlocoM+mQtdRegBlocoG+mQtdRegBlocoH+mQtdRegBlocoK+mQtdRegBloco1+mQtdRegBloco_9900;

mLinha:='|9999|'+IntToStr(mQtdRegBloco_9999+1)+'|';
Memo1.Lines.Add(mLinha);
items_lista_blocoR.Add(mLinha);


mNomeArq:=edt_nomarq.Text;
mSeqTeste:=-1;
while true do
   begin
   try
     items_lista_BLOCOR.SaveToFile(mNomeArq);
     edt_nomarq.Text:=mNomeArq;
     break;
   except
      mSeqTeste:=mSeqTeste+1;
      mNomeArq:=fRetiraExtensao(edt_nomarq.Text)+'_'+Formatfloat('00', mSeqTeste)+'.'+fsoExtensao(edt_nomarq.Text);
      end;
   end;



if memo_erros.Lines.Count>0 then
   begin
   MessageDlg('Arquivo Gerado com Erros Ok Para Ver Erros!',mtError,[mbOk],0);
   PageControl1.ActivePage:=tsEventos;
   memo_erros.SetFocus;
   end;

MessageDlg('Arquivo Salvo: '+edt_nomarq.Text,mtInformation,[mbOk],0 );


end;


function TFrm_SPED_EFD_NOVO.fBlocoR(pOrigem: Integer): Boolean;
var
mValorCampo: String;
Query_R0000: tQuery;
Query_R0005: tQuery;
Query_R0100: tQuery;
Query_R0400: tQuery;
begin
Query_R0000:=TQuery.Create(nil);
Query_R0000.DatabaseName:='SG_ASSOC';

Query_R0005:=TQuery.Create(nil);
Query_R0005.DatabaseName:='SG_ASSOC';

Query_R0100:=TQuery.Create(nil);
Query_R0100.DatabaseName:='SG_ASSOC';






Query_R0400:=TQuery.Create(nil);
Query_R0400.DatabaseName:='SG_ASSOC';



mTabela:='TAB_R0000';

Query_R0000.close;
Query_R0000.SQL.Clear;
Query_R0000.SQL.Add('Select :edt_versao as COD_VER,:cb_tipo_escritura as TIPO_ESCRIT,'
                  +' :cb_ind_sit_ESP as IND_SIT_ESP,:edt_numrec_esc_ant as NUM_REC_ANTERIOR, '
                  +' :edt_datini as DT_INI,:edt_datfin as DT_FIN,CADEMP.RAZAO as NOME,LPAD(CADEMP.CGC,14,'+QuotedStr('0')+') as CNPJ'
                  +',CADEMP.INSCMUNIC as IM '
                  +',CADEMP.UF as UF,CADLOC.LCODMUN_IBGE as COD_MUN,CADEMP.EMP_SUFRAMA as SUFRAMA '
                  +',CADEMP.INSCRICAO as INSCRICAO,'


                  + QuotedStr(CB_PERFIL.Text)+' as IND_PERFIL,'+QuotedStr('1')+' as IND_ATIV '
                  +',FANTASIA,CEP,ENDERECO AS END ,NUMERO AS NUM,BAIRRO,FONE,FAX,E_MAIL AS EMAIL '
                  +',LPAD(CADEMP.INSCRICAO,14,'+QuotedStr('0')+') as INSCRICAO'
                   +',CADEMP.FANTASIA '
                   +',CADEMP.CEP '

                  +' from CADEMP,CADLOC where CODLOC=LCODLOC AND '
                  +' CODEMP=:CODEMP ');
Query_R0000.ParamByName('edt_versao').Value        :=edt_codigo_layout.Text;
Query_R0000.ParamByName('cb_tipo_escritura').Value :=cb_tipo_escritura.ItemIndex;
Query_R0000.ParamByName('cb_ind_sit_ESP').Value    :=cb_ind_sit_ESP.ItemIndex;
Query_R0000.ParamByName('edt_numrec_esc_ant').Value:=edt_numrec_esc_ant.Text;
Query_R0000.ParamByName('edt_datini').Value        :=StrToDatetime(edt_datini.Text);
Query_R0000.ParamByName('edt_datfin').Value        :=StrToDatetime(edt_datfin.Text);
Query_R0000.ParamByName('CODEMP').Value            :=codemp;
try
   Query_R0000.Open;
except
   Query_R0000.Sql.savetofile('c:\sql.txt');
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
      fValVal('Cadastro de Empresa ',mTabela,'CODVER',Query_R0000.fieldbyName('COD_VER').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('COD_VER').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,'TIPO_ESCRIT',Query_R0000.fieldbyName('TIPO_ESCRIT').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('TIPO_ESCRIT').AsString+'|';

      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0000.fieldbyName('DT_INI').AsDateTime)+'|';
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0000.fieldbyName('DT_FIN').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabela,'NOME',Query_R0000.fieldbyName('NOME').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('NOME').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0000.fieldbyName('CNPJ').FieldName,Query_R0000.fieldbyName('CNPJ').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('CNPJ').AsString+'|';

      mLinha:=mLinha+'|';  // cpf
      fValVal('Cadastro de Empresa ',mTabela,'UF',Query_R0000.fieldbyName('UF').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('UF').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,'INSCRICAO',Query_R0000.fieldbyName('INSCRICAO').AsString);
      mLinha:=mLinha+fdeixanum(Query_R0000.fieldbyName('INSCRICAO').AsString)+'|';



      fValVal('Cadastro de Empresa ',mTabela,'CODMUN',Query_R0000.fieldbyName('COD_MUN').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('COD_MUN').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,'IM',Query_R0000.fieldbyName('IM').AsString);
      mLinha:=mLinha+trim(Query_R0000.fieldbyName('IM').AsString)+'|';

      fValVal('Cadastro de Empresa ',mTabela,'SUFRAMA',Query_R0000.fieldbyName('SUFRAMA').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('SUFRAMA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'IND_PERFIL',Query_R0000.fieldbyName('IND_PERFIL').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('IND_PERFIL').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,'IND_ATIV',Query_R0000.fieldbyName('IND_ATIV').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('IND_ATIV').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
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
   items_lista_blocoR.Add(mLinha);

   
   mLinha:='';
   while not Query_R0000.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0005:=mQtdRegBloco_0005+1;
      mLinha:='|';
      mLinha:=mLinha+'0005|';
      fValVal('Cadastro de Empresa ',mTabela,'FANTASIA',Query_R0000.fieldbyName('FANTASIA').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('FANTASIA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'CEP',Query_R0000.fieldbyName('CEP').AsString);
      mLinha:=mLinha+fdeixanum( Query_R0000.fieldbyName('CEP').AsString)+'|';



      if length(Query_R0000.fieldbyName('END').AsString)<2  then
         memo_erros.Lines.Add(' Cadastro de Empresa o Endereco nao existe');


      fValVal('Cadastro de Empresa ',mTabela,'END',Query_R0000.fieldbyName('END').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('END').AsString+'|';


      fValVal('Cadastro de Empresa ',mTabela,'NUM',Query_R0000.fieldbyName('NUM').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('NUM').AsString+'|';
      mLinha:=mLinha+'|'; // COMPLEMENTO
      fValVal('Cadastro de Empresa ',mTabela,'BAIRRO',Query_R0000.fieldbyName('BAIRRO').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('BAIRRO').AsString+'|';
      mLinha:=mLinha+copy(fdeixanum(Query_R0000.fieldbyName('FONE').AsString),1,10)+'|';
      mLinha:=mLinha+copy(fdeixanum(Query_R0000.fieldbyName('FAX').AsString),1,10)+'|';
      mLinha:=mLinha+copy(fdeixanum(Query_R0000.fieldbyName('EMAIL').AsString),1,300)+'|';
      if length(Query_R0000.fieldbyName('EMAIL').AsString)<2  then
         memo_erros.Lines.Add(' Cadastro de Empresa o E-mail nao existe');


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      Query_R0000.Next;
      end;
   Query_R0000.Close;
   end;


// TERMINO DO 005




Query_R0100.close;
Query_R0100.SQL.Clear;
Query_R0100.SQL.Add('Select CADEMP.CONTADOR as NOME,LPAD(CADEMP.EMP_CONT_CPF,11,'+QuotedStr('0')+') as CPF,'
                   +'CADEMP.CRC_CONTADOR as CRC,LPAD(CADEMP.EMP_CONT_CNPJ,14,'+QuotedStr('0')+') as CNPJ,'
                   +'CADEMP.EMP_CONT_CEP as CEP,CADEMP.EMP_CONT_ENDER as END,'
                   +'CADEMP.EMP_CONT_NUM_END as NUM,CADEMP.EMP_CONT_COMP_END as COMPL,'
                   +'CADEMP.EMP_CONT_BAIRRO as BAIRRO,'
                   +'LPAD( NVL( LTRIM(translate(CADEMP.EMP_CONT_FONE, '
                   +' translate(CADEMP.EMP_CONT_FONE, '+QuotedStr('1234567890')+', '+QuotedStr(' ')+') , '+QuotedStr(' ')+')),0),10,'+QuotedStr('0')+') as FONE,'
                   +'CADEMP.EMP_CONT_FAX as FAX,CADEMP.EMP_CONT_EMAIL as EMAIL,CADLOC.LCODMUN_IBGE as COD_MUN '

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
      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('NOME').FieldName,Query_R0100.fieldbyName('NOME').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('NOME').AsString+'|';  // 02

      if fsonumero(Query_R0100.fieldbyName('CPF').AsString)=0 then
         mLinha:=mLinha+'|' // 03
      else
         begin
         fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('CPF').FieldName,Query_R0100.fieldbyName('CPF').AsString);
         mValorCampo:=Query_R0100.fieldbyName('CPF').Value;
         mLinha:=mLinha+mValorCampo+'|'; // 03
         end;

      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('CRC').FieldName,Query_R0100.fieldbyName('CRC').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('CRC').AsString+'|'; // 04

      if fsonumero(Query_R0100.fieldbyName('CNPJ').AsString)=0 then
         mLinha:=mLinha+'|' // 05
      else
         begin
         fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('CNPJ').FieldName,Query_R0100.fieldbyName('CNPJ').AsString);
         mLinha:=mLinha+Query_R0100.fieldbyName('CNPJ').AsString+'|'; // 05
         end;

      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('CEP').FieldName,Query_R0100.fieldbyName('CEP').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('CEP').AsString+'|'; // 06

      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('END').FieldName,Query_R0100.fieldbyName('END').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('END').AsString+'|'; // 07


      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('NUM').FieldName,Query_R0100.fieldbyName('NUM').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('NUM').AsString+'|'; // 08

      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('COMPL').FieldName,Query_R0100.fieldbyName('COMPL').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('COMPL').AsString+'|'; // 09


      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('BAIRRO').FieldName,Query_R0100.fieldbyName('BAIRRO').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('BAIRRO').AsString+'|'; // 10



      mfone_temp:=fdeixanum(Query_R0100.fieldbyName('FONE').AsString);
      mfone_temp:=insere(Query_R0100.fieldbyName('FONE').AsString,'0',10);

      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('FONE').FieldName,mfone_temp);
      mLinha:=mLinha+mfone_temp+'|'; // 11


      mfone_temp:=fdeixanum(Query_R0100.fieldbyName('FAX').AsString);
      mfone_temp:=insere(Query_R0100.fieldbyName('FAX').AsString,'0',10);

      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('FAX').FieldName,mfone_temp);
      mLinha:=mLinha+mfone_temp+'|'; // 12


      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('EMAIL').FieldName,Query_R0100.fieldbyName('EMAIL').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('EMAIL').AsString+'|'; // 13

      fValVal('Cadastro de Empresa ',mTabela,Query_R0100.fieldbyName('COD_MUN').FieldName,Query_R0100.fieldbyName('COD_MUN').AsString);
      mLinha:=mLinha+Query_R0100.fieldbyName('COD_MUN').AsString+'|'; // 14

      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      Query_R0100.Next;
      end;
   Query_R0100.Close;
   end;




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
   mem_R0150.First;
   if mQtdRegBloco0<1 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not mem_R0150.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0150:=mQtdRegBloco_0150+1;

      mLinha:='|';
      mLinha:=mLinha+'0150|';
      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('COD_PART').FieldName,mem_R0150.fieldbyName('COD_PART').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('COD_PART').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('NOME').FieldName,mem_R0150.fieldbyName('NOME').AsString);
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('NOME').AsString)+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('COD_PAIS').FieldName,mem_R0150.fieldbyName('COD_PAIS').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('COD_PAIS').AsString+'|';

      if fsonumero(mem_R0150.fieldbyName('CNPJ').AsString)=0 then
         begin
         mLinha:=mLinha+'|';
         end
      else
         begin
         fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('CNPJ').FieldName,mem_R0150.fieldbyName('CNPJ').AsString);
         mLinha:=mLinha+mem_R0150.fieldbyName('CNPJ').AsString+'|';
         end;

      if fsonumero(mem_R0150.fieldbyName('CPF').AsString)=0 then
         mLinha:=mLinha+'|'
      else
         begin
         fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('CPF').FieldName,mem_R0150.fieldbyName('CPF').AsString);
         mLinha:=mLinha+mem_R0150.fieldbyName('CPF').AsString+'|';
         end;




      if copy(uppercase( trim(mem_R0150.FieldbyName('IE').AsString)),1,5)='ISENT' then
         mfone_temp:='ISENTO'
      else if fsonumero(mem_R0150.fieldbyName('IE').AsString)=0 then
         mfone_temp:=''
      else
         mfone_temp:=fDeixanum(mem_R0150.fieldbyName('IE').AsString);



      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('IE').FieldName,mfone_temp);
      mLinha:=mLinha+mfone_temp+'|';




      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('COD_MUN').FieldName,mem_R0150.fieldbyName('COD_MUN').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('COD_MUN').AsString+'|';


      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('SUFRAMA').FieldName,mem_R0150.fieldbyName('SUFRAMA').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('SUFRAMA').AsString+'|';

      if length(mem_R0150.fieldbyName('END').AsString)<2  then
         memo_erros.Lines.Add(' Endereco do Participante '+mem_R0150.fieldbyName('COD_PART').AsString+' nome '+
         mem_R0150.fieldbyName('NOME').AsString+' nao existe');


      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('END').FieldName,mem_R0150.fieldbyName('END').AsString);
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('END').AsString)+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('NUM').FieldName,mem_R0150.fieldbyName('NUM').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('NUM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,trim(mem_R0150.fieldbyName('COMPL').FieldName),mem_R0150.fieldbyName('COMPL').AsString);
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('COMPL').AsString)+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('BAIRRO').FieldName,mem_R0150.fieldbyName('BAIRRO').AsString);
      mLinha:=mLinha+trim(mem_R0150.fieldbyName('BAIRRO').AsString)+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      mem_R0150.Next;
      end;
   mem_R0150.Close;
   end;

// TERMINO REGISTRO 150


// REGISTRO 190

mTabela:='TAB_R0190';
if not mem_R0190.IsEmpty then
   begin
   mem_R0190.First;
   if mQtdRegBloco0<1 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not mem_R0190.Eof do
      begin

      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0190:=mQtdRegBloco_0190+1;
      mLinha:='|';
      mLinha:=mLinha+'0190|';
      fValVal('Cadastro de Empresa ',mTabela,mem_R0190.FieldbyName('UNID').FieldName,mem_R0190.FieldbyName('UNID').AsString);
      mLinha:=mLinha+mem_R0190.FieldbyName('UNID').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0190.FieldbyName('DESCR').FieldName,mem_R0190.FieldbyName('DESCR').AsString);
      mLinha:=mLinha+mem_R0190.FieldbyName('DESCR').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      mem_R0190.Next;
      end;
   mem_R0190.Close;
   end;

// TERMINO REGISTRO 190



// REGISTRO 200

mTabela:='TAB_R0200';
if not mem_R0200.IsEmpty then
   begin
   mem_R0200.First;
   if mQtdRegBloco0<1 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not mem_R0200.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0200:=mQtdRegBloco_0200+1;




      mLinha:='|';
      mLinha:=mLinha+'0200|';
      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('COD_ITEM').FieldName,mem_R0200.fieldbyName('COD_ITEM').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('COD_ITEM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('DESCR_ITEM').FieldName,mem_R0200.fieldbyName('DESCR_ITEM').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('DESCR_ITEM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('COD_BARRA').FieldName,mem_R0200.fieldbyName('COD_BARRA').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('COD_BARRA').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('COD_ANT_ITEM').FieldName,mem_R0200.fieldbyName('COD_ANT_ITEM').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('COD_ANT_ITEM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('UNID_INV').FieldName,mem_R0200.fieldbyName('UNID_INV').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('UNID_INV').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('TIPO_ITEM').FieldName,mem_R0200.fieldbyName('TIPO_ITEM').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('TIPO_ITEM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('COD_NCM').FieldName,mem_R0200.fieldbyName('COD_NCM').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('COD_NCM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('EX_IPI').FieldName,mem_R0200.fieldbyName('EX_IPI').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('EX_IPI').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('COD_GEN').FieldName,mem_R0200.fieldbyName('COD_GEN').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('COD_GEN').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('COD_LST').FieldName,mem_R0200.fieldbyName('COD_LST').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('COD_LST').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('ALIQ_ICMS').FieldName,mem_R0200.fieldbyName('ALIQ_ICMS').AsString);
      mLinha:=mLinha+mem_R0200.fieldbyName('ALIQ_ICMS').AsString+'|';

      if valint(edt_codigo_layout.text)>10 then
         begin
         fValVal('Cadastro de Empresa ',mTabela,mem_R0200.fieldbyName('CEST').FieldName,mem_R0200.fieldbyName('CEST').AsString);
         mLinha:=mLinha+mem_R0200.fieldbyName('CEST').AsString+'|';
         end;


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      mem_R0200.Next;
      end;
   mem_R0200.Close;
   end;

// TERMINO REGISTRO 200


// REGISTRO 0400

mTabela:='TAB_R0400';
if not mem_R0400.IsEmpty then
   begin
   mem_R0400.First;
   if mQtdRegBloco0<1 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;


   mLinha:='';
   while not mem_R0400.Eof do
      begin


      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0400:=mQtdRegBloco_0400+1;

      mLinha:='|';
      mLinha:=mLinha+'0400|';
      fValVal('Cadastro de Empresa ',mTabela,mem_R0400COD_NAT.FieldName,mem_R0400COD_NAT.AsString);
      mLinha:=mLinha+mem_R0400COD_NAT.AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0400DESCR_NAT.FieldName,mem_R0400DESCR_NAT.AsString);
      mLinha:=mLinha+mem_R0400DESCR_NAT.AsString+'|';


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      mem_R0400.Next;
      end;
   mem_R0400.Close;
   end;




// REGISTRO 990


if mqtdRegBloco0<1 then
   begin
   mQtdRegBloco0:=mQtdRegBloco0+1;
   mLinha:='|0001|1|'; // SEM dados
   mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
   Memo1.Lines.Add(mLinha);
   items_lista_blocoR.Add(mLinha);
   end;



if mqtdRegBloco0>0 then
   begin
   mQtdRegBloco_0990:=mQtdRegBloco_0990+1;
   mQtdRegBloco0:=mQtdRegBloco0+1;
   mLinha:='|0990|'+inttostr(mqtdRegBloco0)+'|';
   Memo1.Lines.Add(mLinha);
   items_lista_blocoR.Add(mLinha);
   end;


Query_R0000.Close;
FreeAndNil(Query_R0000);
Query_R0100.Close;
FreeAndNil(Query_R0100);

// TERMINO REGISTRO 990


//fMontarInstrucao_Parametros_Geral(0);

end;

function TFrm_SPED_EFD_NOVO.fValVal(pObs,pNomeTab,pCampo,pValorCampo: String): Boolean;
begin
result:=true;
exit;

if not tb_valval.Active then
   begin
   tb_valval.Close;
   tb_valval.SQL.Clear;
   tb_valval.SQL.Add('select * from CADCFG_FISCAL_VALVAL where '
                    +' VV_CHAVE=:CHAVE '
                    +' order by VV_TABELA,VV_CAMPO ');
   tb_valval.ParamByName('CHAVE').AsString:='SPED_PIS_COFINS';
   tb_valval.Open;
   end;
if tb_valval.IsEmpty then
   result:=true
else
   begin
   if tb_valval.Locate('VV_TABELA;VV_CAMPO;VV_VALOR', vararrayof([pNomeTab,pCampo,pValorCampo]),[]) then
      result:=true
   else if tb_valval.Locate('VV_TABELA;VV_CAMPO',vararrayof([pNomeTab,pCampo]),[]) then
      begin
      memo_erros.Lines.Add(pObs+' Tabela: '+pNomeTab+' Campo: '+pCampo
      +' valor do campo: '+pValorCampo+' Valor(es) válido(s): '+chr(13));
      while (not tb_valval.Eof) and (tb_valval.FieldByName('VV_TABELA').AsString=pNomeTab)
            and (tb_valval.FieldByName('VV_CAMPO').AsString=pCAMPO) do
         begin

         memo_erros.Lines.Add(tb_valval.FieldByName('VV_VALOR').AsString+chr(13));
         tb_valval.Next

         end;
      end
   else
      result:=true;
   end;




end;

function TFrm_SPED_EFD_NOVO.fTestarCliFor(pCodigo: String): Boolean;
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
                        +',LCODMUN_IBGE AS COD_MUN '
                        +','+QuotedStr('     ')+' AS SUFRAMA '
                        +',FNLOG AS END '
                        +',FNUM AS NUM '
                        +',FRAZAO AS NOME '
                        +',FCOMPL AS COMPL '
                        +',FBAIRRO AS BAIRRO '
                        +' FROM CADFOR,CADUF,CADLOC,NFE_CADREG '
                        +' WHERE PUF=FUF AND '
                        +' LCODLOC=FCODLOC AND '
                        +' CRCODREG=PCODREG_IBGE '
                        +' and FCODFOR=:CODIGO ');
      end

   else
      begin
      query_temp.SQL.add('select CRCODPAIS AS COD_PAIS '
                        +',LPAD(CCNPJ,14,'+QuotedStr('0')+') AS CNPJ '
                        +',LPAD(CCPF,11,'+QuotedStr('0')+') AS CPF '
                        +',CIE AS IE '
                        +',LCODMUN_IBGE AS COD_MUN '
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
      query_temp.sql.savetofile('c:\SQL.TXT');
      end;
   if not query_temp.IsEmpty then

      begin
      if query_temp.fieldbyName('COD_MUN').AsInteger=0 then
         memo_erros.Lines.add('Participante '+pCodigo+' Nao possui o codigo do municipio no ibge');

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
      mem_R0150COMPL.Value     :=query_temp.fieldbyName('COMPL').AsString;
      mem_R0150BAIRRO.Value    :=query_temp.fieldbyName('BAIRRO').AsString;
      mem_R0150.Post;
      end;
   end;
FreeandNil(query_temp);
result:=true;
end;


function TFrm_SPED_EFD_NOVO.fBlocoA(pOrigem: Integer): Boolean;
var
mTabNivel_02: String;
query_A010: TQuery;
query_A100: TQuery;
query_A110: TQuery;
query_A111: TQuery;
query_A120: TQuery;
query_A170: TQuery;
begin
query_A010:=TQuery.Create(nil);
query_A010.DatabaseName:='SG_ASSOC';


query_A100:=TQuery.Create(nil);
query_A100.DatabaseName:='SG_ASSOC';

query_A110:=TQuery.Create(nil);
query_A110.DatabaseName:='SG_ASSOC';

query_A111:=TQuery.Create(nil);
query_A111.DatabaseName:='SG_ASSOC';

query_A120:=TQuery.Create(nil);
query_A120.DatabaseName:='SG_ASSOC';

query_A170:=TQuery.Create(nil);
query_A170.DatabaseName:='SG_ASSOC';

query_A010.Close;
query_A010.SQL.Clear;
query_A010.SQL.Add('SELECT LPAD(CFCODCFO,14,'+QuotedStr('0')+') AS CNPJ FROM CADCFO '
                  +' where CFCODCFO=-99999 ');
try
   query_A010.Open;
except
   end;

mTabela:='TAB_A010';

if not query_A010.IsEmpty then
   begin
   query_A010.First;
   if (query_A010.Active) and   (not query_A010.IsEmpty) then
      begin
      mLinha:='|A001|0|'; // com dados
      Memo1.Lines.Add(mLinha);
      items_lista_blocoA.Add(mLinha);
      mQtdRegBloco_A001:=mQtdRegBloco_A001+1;
      mQtdRegBlocoA:=mQtdRegBlocoA+1;

      mLinha:='';
      while not query_A010.Eof do
         begin
         mQtdRegBlocoA:=mQtdRegBlocoA+1;
         mQtdRegBloco_A010:=mQtdRegBloco_A010+1;
         mLinha:='|';
         mLinha:=mLinha+'A010|';
         fValVal('Cadastro de Empresa ',mTabela,query_A010.fieldbyname('CNPJ').FieldName,query_A010.fieldbyname('CNPJ').AsString);
         mLinha:=mLinha+query_A010.fieldbyname('CNPJ').AsString+'|';
         Memo1.Lines.Add(mLinha);
         items_lista_blocoA.Add(mLinha);
         query_A010.Next;
         end;
      end;
   query_A010.Close;
   end;

query_A100.Close;
query_A100.SQL.Clear;
query_A100.SQL.Add(' SELECT '+QuotedStr('1')+' AS IND_OPER '
                  +', '+QuotedStr('P')+' AS IND_EMIT '
                  +', TO_CHAR(NSCODCLI) AS COD_PART '
//                  +', DECODE(NSSTATUS,9,'+QuotedStr('02')+','+QuotedStr('00')+') AS COD_SIT '
                  +', DECODE(NSSTATUS,9,'+QuotedStr('02')+',8,'+QuotedStr('02')+','+QuotedStr('00')+') AS COD_SIT '
                  +', NSSERIE AS SER '
                  +', NSSUBSER AS SUB , TO_CHAR(NSNUMERO) AS NUM_DOC '
                  +', NSNFE_CHAVEACESSO || NSNFE_DCHAVEACESSO AS CHV_NFSE '
                  +', NSDTEMIS AS DT_DOC, NSDTEMIS AS DT_EXE_SERV '
                  +', NSTOTNOTA AS VL_DOC , TO_CHAR(NSAVAP) AS IND_PGTO '
                  +', 0 AS VL_DESC ,0 AS VL_BC_PIS ,0 AS VL_PIS '
                  +',0 AS VL_BC_COFINS ,0 AS VL_COFINS ,0 AS VL_PIS_RET '
                  +',0 AS VL_COFINS_RET '
                  +', 0 AS VL_ISS '
                  +',0 AS ALIQ_PIS '
                  +',0 AS ALIQ_COFINS '
                  +',0 AS QUANT_PIS_ALIQ '
                  +',0 AS QUANT_COFINS '
                  +',0 AS QUANT_BC_PIS_ALIQ '
                  +',0 AS QUANT_BC_COFINS '
                  +', '+QuotedStr('99')+' AS CST_PIS '
                  +', '+QuotedStr('99')+' AS CST_COFINS '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');
try
   query_A100.Open;
except
   end;



mTabela:='TAB_A100';
if not query_A100.IsEmpty then
   begin
   query_A100.First;
   while not query_A100.Eof do
      begin

      if query_A100.fieldbyName('VL_PIS').AsFloat>0 then
         begin
         fGerarM100('01' // pCod_Cred: String;
                   ,0 // pInd_Cred_Ori: Integer;
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat  // pVl_BC_Pis
                   ,query_A100.fieldbyName('ALIQ_PIS').AsFloat  //    pAliqPis
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  //   pQuant_BC_Pis
                   ,query_A100.fieldbyName('ALIQ_PIS_QUANT').AsFloat  //  pAliq_Pis_Quant
                   ,query_A100.fieldbyName('VL_PIS').AsFloat  //  pVl_Cred
                   ,0  //  ,pVl_Ajus_Acres
                   ,0 //   pVl_Cred_Dif
                   ,0  // ,pVl_Cred_Disp
                   ,0 // ,pInd_Desc_Cred
                   ,0 //,pVl_Desc_Cred
                   ,0 // ,pVl_Cred_Desc
                   ,0 // ,pSld_Cred: Real): Boolean;
                   );

         fGerarM105('01' // pNAT_BC_CRED
                   ,query_A100.fieldbyName('CST_PIS').AsString //,pCST_PIS: string;
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat  // pVL_BC_PIS_TOT
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat  //  pVL_BC_PIS_CUM
                   ,0 // ,pVL_BC_PIS_NC
                   ,0 // ,pVL_BC_PIS
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  // pQUANT_BC_PIS  : real;
                   ,'NAO DEFINIDO ' //   pDESC_CRED: String): Boolean;
                   );


         fGerarM200(query_A100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_A100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_NC_REC
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );

         fGerarM210('01' // pCOD_CONT: String;
                   ,query_A100.fieldbyName('VL_PIS').AsFloat //  pVL_REC_BRT
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_BC_CONT
                   ,query_A100.fieldbyName('ALIQ_PIS').AsFloat //  pALIQ_PIS

                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  //    ppQUANT_BC_PIS

                   ,query_A100.fieldbyName('ALIQ_PIS_QUANT').AsFloat //  pALIQ_PIS_QUANT
                   ,query_A100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_APUR
                   ,0 //    ,pVL_AJUS_ACRES
                   ,0 //,pVL_AJUS_REDUC
                   ,0  //,pVL_CONT_DIFER
                   ,0 //,pVL_CONT_DIFER_ANT
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // pVL_CONT_PER: Real): Boolean;
                   );

         end;


      if query_A100.fieldbyName('VL_COFINS').AsFloat>0 then
         begin
         fGerarM500('101' // pCod_Cred: String;
                   ,0 // pInd_Cred_Ori: Integer;
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  // pVl_BC_COFINS
                   ,query_A100.fieldbyName('ALIQ_COFINS').AsFloat  //    pAliqPis
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  //   pQuant_BC_COFINS
                   ,query_A100.fieldbyName('ALIQ_COFINS_QUANT').AsFloat  //  pAliq_COFINS_Quant
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat  //  pVl_Cred
                   ,0  //  ,pVl_Ajus_Acres
                   ,0  // pVl_Ajus_Reduc
                   ,0 //   pVl_Cred_Dif
                   ,0  // ,pVl_Cred_Disp
                   ,0 // ,pInd_Desc_Cred
                   ,0 //,pVl_Desc_Cred
                   ,0 // ,pVl_Cred_Desc
                   ,0 // ,pSld_Cred: Real): Boolean;
                   );

         fGerarM505('01' // pNAT_BC_CRED
                   ,query_A100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string;
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  //  pVL_BC_COFINS_CUM
                   ,0 // ,pVL_BC_COFINS_NC
                   ,0 // ,pVL_BC_COFINS
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real;
                   ,'NAO DEFINIDO ' //   pDESC_CRED: String): Boolean;
                   );


         fGerarM600(query_A100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat //  pVL_CONT_NC_REC
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );

         fGerarM610('01' // pCOD_CONT: String;
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat //  pVL_REC_BRT
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT
                   ,query_A100.fieldbyName('ALIQ_COFINS').AsFloat //  pALIQ_COFINS

                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  //    ppQUANT_BC_COFINS

                   ,query_A100.fieldbyName('ALIQ_COFINS_QUANT').AsFloat //  pALIQ_COFINS_QUANT
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat //  pVL_CONT_APUR
                   ,0 //    ,pVL_AJUS_ACRES
                   ,0 //,pVL_AJUS_REDUC
                   ,0  //,pVL_CONT_DIFER
                   ,0 //,pVL_CONT_DIFER_ANT
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat // pVL_CONT_PER: Real): Boolean;
                   );

         end;


      fTestarCliFor(query_A100.fieldbyName('COD_PART').AsString);



      mQtdRegBlocoA:=mQtdRegBlocoA+1;
      mQtdRegBloco_A100:=mQtdRegBloco_A100+1;
      mLinha:='|';
      mLinha:=mLinha+'A100|';
      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('IND_OPER').FieldName,query_A100.fieldbyName('IND_OPER').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('IND_OPER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('IND_EMIT').FieldName,query_A100.fieldbyName('IND_EMIT').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('IND_EMIT').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('COD_PART').FieldName,query_A100.fieldbyName('COD_PART').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('COD_PART').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('COD_SIT').FieldName,query_A100.fieldbyName('COD_SIT').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('COD_SIT').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('SER').FieldName,query_A100.fieldbyName('SER').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('SER').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('SUB').FieldName,query_A100.fieldbyName('SUB').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('SUB').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('NUM_DOC').FieldName,query_A100.fieldbyName('NUM_DOC').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('NUM_DOC').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('CHV_NFSE').FieldName,query_A100.fieldbyName('CHV_NFSE').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('CHV_NFSE').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('DT_DOC').FieldName,query_A100.fieldbyName('DT_DOC').AsString);
      mLinha:=mLinha+FormatdateTime(fdt_efd, query_A100.fieldbyName('DT_DOC').AsDateTime)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('DT_EXE_SERV').FieldName,query_A100.fieldbyName('DT_EXE_SERV').AsString);
      mLinha:=mLinha+FormatdateTime(fdt_efd, query_A100.fieldbyName('DT_EXE_SERV').AsDateTime)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_DOC').FieldName,query_A100.fieldbyName('VL_DOC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_DOC').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('IND_PGTO').FieldName,query_A100.fieldbyName('IND_PGTO').AsString);
      mLinha:=mLinha+query_A100.fieldbyName('IND_PGTO').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_DESC').FieldName,query_A100.fieldbyName('VL_DESC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_DESC').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_BC_PIS').FieldName,query_A100.fieldbyName('VL_BC_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_BC_PIS').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_PIS').FieldName,query_A100.fieldbyName('VL_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_PIS').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_BC_COFINS').FieldName,query_A100.fieldbyName('VL_BC_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_BC_COFINS').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_COFINS').FieldName,query_A100.fieldbyName('VL_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_COFINS').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_PIS_RET').FieldName,query_A100.fieldbyName('VL_PIS_RET').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_PIS_RET').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_COFINS_RET').FieldName,query_A100.fieldbyName('VL_COFINS_RET').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_COFINS_RET').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_A100.fieldbyName('VL_ISS').FieldName,query_A100.fieldbyName('VL_ISS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A100.fieldbyName('VL_ISS').AsFloat)+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_blocoA.Add(mLinha);

      // INICIO adentação registro A110
      mTabNivel_02:='TAB_A110';
      query_A110.Close;
      query_A110.SQL.Clear;
      query_A110.SQL.Add('SELECT TO_CHAR(NSCODCLI,'+QuotedStr('000000')+') AS COD_INF '
                        +',RPAD(NSNFE_CHAVEACESSO,3000,'+QuotedStr(' ')+')  AS TXT_COMPL '
                        +' FROM CADNS where NSNUMERO=-99999 ');
      try
         query_A110.Open;
      except
         end;



      if not query_A110.IsEmpty then
         begin
         while not query_A110.Eof do
            begin
            mQtdRegBlocoA:=mQtdRegBlocoA+1;
            mQtdRegBloco_A110:=mQtdRegBloco_A110+1;
            mLinha:='|';
            mLinha:=mLinha+'A110|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A110.fieldbyName('COD_INF').FieldName,query_A110.fieldbyName('COD_INF').AsString);
            mLinha:=mLinha+query_A110.fieldbyName('COD_INF').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A110.fieldbyName('TXT_COMPL').FieldName,query_A110.fieldbyName('TXT_COMPL').AsString);
            mLinha:=mLinha+query_A110.fieldbyName('TXT_COMPL').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_blocoA.Add(mLinha);

            query_A110.Next;
            end;
         query_A110.Close;
         end;
      // TERMINO adentação registro A110

      query_A111.Close;
      query_A111.SQL.Clear;
      query_A111.SQL.Add('SELECT RPAD('+QuotedStr('0')+',15,'+QuotedStr('  ')+') AS NUM_PROC '
                        +','+QuotedStr('1')+' AS IND_PROC '
                        +' FROM CADNS where NSNUMERO=-99999 ');
      try
         query_A111.Open;
      except
         end;


      // INICIO adentação registro A111
      mTabNivel_02:='TAB_A111';
      if not query_A111.IsEmpty then
         begin
         while not query_A111.Eof do
            begin
            mQtdRegBlocoA:=mQtdRegBlocoA+1;
            mQtdRegBloco_A111:=mQtdRegBloco_A111+1;
            mLinha:='|';
            mLinha:=mLinha+'A111|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A111.fieldbyName('NUM_PROC').FieldName,query_A111.fieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+query_A111.fieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A111.fieldbyName('IND_PROC').FieldName,query_A111.fieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+query_A111.fieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_blocoA.Add(mLinha);

            query_A111.Next;
            end;
         query_A111.Close;
         end;
      // TERMINO adentação registro A111

      // INICIO adentação registro A120
      mTabNivel_02:='TAB_A120';


      query_A120.Close;
      query_A120.SQL.Clear;
      query_A120.SQL.Add('select  0 AS VL_TOT_SERV '
                        +',0 VL_BC_PIS,0 VL_PIS_IMP,SYSDATE AS DT_PAG_PIS '
                        +',0 AS VL_BC_COFINS,0 AS VL_COFINS_IMP,'
                        +'SYSDATE AS DT_PAG_COFINS,'+QuotedStr('0')+' AS LOC_EXE_SERV '
                        +' from CADNS WHERE NSNUMERO=-999999');
      try
         query_A120.Open;
      except
         end;

      if not query_A120.IsEmpty then
         begin
         query_A120.First;
         while not query_A120.Eof do
            begin
            mQtdRegBlocoA:=mQtdRegBlocoA+1;
            mQtdRegBloco_A120:=mQtdRegBloco_A120+1;
            mLinha:='|';
            mLinha:=mLinha+'A120|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('VL_TOT_SERV').FieldName,query_A120.fieldbyName('VL_TOT_SERV').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A120.fieldbyName('VL_TOT_SERV').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('VL_BC_PIS').FieldName,query_A120.fieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A120.fieldbyName('VL_BC_PIS').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('VL_PIS_IMP').FieldName,query_A120.fieldbyName('VL_PIS_IMP').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A120.fieldbyName('VL_PIS_IMP').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('DT_PAG_PIS').FieldName,query_A120.fieldbyName('DT_PAG_PIS').AsString);
            mLinha:=mLinha+FormatDateTime(mCasas2Dec, query_A120.fieldbyName('DT_PAG_PIS').AsDateTime)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('DT_PAG_COFINS').FieldName,query_A120.fieldbyName('DT_PAG_COFINS').AsString);
            mLinha:=mLinha+FormatDateTime(mCasas2Dec, query_A120.fieldbyName('DT_PAG_COFINS').AsDateTime)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('VL_BC_COFINS').FieldName,query_A120.fieldbyName('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A120.fieldbyName('VL_BC_COFINS').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('VL_COFINS_IMP').FieldName,query_A120.fieldbyName('VL_COFINS_IMP').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A120.fieldbyName('VL_COFINS_IMP').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('DT_PAG_COFINS').FieldName,query_A120.fieldbyName('DT_PAG_COFINS').AsString);
            mLinha:=mLinha+FormatDateTime(mCasas2Dec, query_A120.fieldbyName('DT_PAG_COFINS').AsDateTime)+'|';


            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A120.fieldbyName('LOC_EXE_SERV').FieldName,query_A120.fieldbyName('LOC_EXE_SERV').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A120.fieldbyName('LOC_EXE_SERV').AsFloat)+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_blocoA.Add(mLinha);

            query_A120.Next;
            end;
         query_A120.Close;
         end;
      // TERMINO adentação registro A120


      query_A170.Close;
      query_A170.SQL.Clear;
      query_A170.SQL.Add('select  0 AS NUM_ITEM '
                        +',RPAD('+QuotedStr('  ')+',60) AS COD_ITEM '
                        +',RPAD('+QuotedStr('  ')+',3000) AS DESCR_COMPL '
                        +',0 AS VL_ITEM '
                        +',0 AS VL_DESC '
                        +','+QuotedStr('00')+' AS NAT_BC_CRED '
                        +','+QuotedStr('0')+' AS IND_ORIG_CRED '
                        +','+QuotedStr('99')+' AS CST_PIS '
                        +',0 AS VL_BC_PIS '
                        +',0 AS ALIQ_PIS '
                        +',0 AS VL_PIS '
                        +','+QuotedStr('99')+' AS CST_COFINS '
                        +',0 AS VL_BC_COFINS '
                        +',0 AS ALIQ_COFINS '
                        +', 0 AS VL_COFINS '
                        +',RPAD('+QuotedStr('  ')+',60) AS COD_CTA '
                        +',RPAD('+QuotedStr('  ')+',60) AS COD_CCUS '
                        +' from CADNS WHERE NSNUMERO=-999999');
      try
         query_A170.Open;
      except
         end;

      // INICIO adentação registro A170
      mTabNivel_02:='TAB_A170';

      if not query_A170.IsEmpty then
         begin
         while not query_A170.Eof do
            begin
            mQtdRegBlocoA:=mQtdRegBlocoA+1;
            mQtdRegBloco_A170:=mQtdRegBloco_A170+1;
            fTestarR0200(query_A170.fieldbyName('COD_ITEM').AsString);

            mLinha:='|';
            mLinha:=mLinha+'A170|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('NUM_ITEM').FieldName,query_A170.fieldbyName('NUM_ITEM').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('NUM_ITEM').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('COD_ITEM').FieldName,query_A170.fieldbyName('COD_ITEM').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('COD_ITEM').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('DESCR_COMPL').FieldName,query_A170.fieldbyName('DESCR_COMPL').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('DESCR_COMPL').Asstring+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('VL_ITEM').FieldName,query_A170.fieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('VL_ITEM').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('VL_DESC').FieldName,query_A170.fieldbyName('VL_DESC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('VL_DESC').AsFloat)+'|';


            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('NAT_BC_CRED').FieldName,query_A170.fieldbyName('NAT_BC_CRED').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('NAT_BC_CRED').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('IND_ORIG_CRED').FieldName,query_A170.fieldbyName('IND_ORIG_CRED').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('IND_ORIG_CRED').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('CST_PIS').FieldName,query_A170.fieldbyName('CST_PIS').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('CST_PIS').AsString+'|';


            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('VL_BC_PIS').FieldName,query_A170.fieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('VL_BC_PIS').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('ALIQ_PIS').FieldName,query_A170.fieldbyName('ALIQ_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('ALIQ_PIS').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('VL_PIS').FieldName,query_A170.fieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('VL_PIS').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('CST_COFINS').FieldName,query_A170.fieldbyName('CST_COFINS').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('CST_COFINS').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('VL_BC_COFINS').FieldName,query_A170.fieldbyName('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('VL_BC_COFINS').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('ALIQ_COFINS').FieldName,query_A170.fieldbyName('ALIQ_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('ALIQ_COFINS').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('VL_COFINS').FieldName,query_A170.fieldbyName('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_A170.fieldbyName('VL_COFINS').AsFloat)+'|';


            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('COD_CTA').FieldName,query_A170.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('COD_CTA').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_A170.fieldbyName('COD_CCUS').FieldName,query_A170.fieldbyName('COD_CCUS').AsString);
            mLinha:=mLinha+query_A170.fieldbyName('COD_CCUS').AsString+'|';



            Memo1.Lines.Add(mLinha);
            items_lista_blocoA.Add(mLinha);

            query_A170.Next;
            end;
         query_A170.Close;
         end;
      // TERMINO adentação registro A170
      query_A100.Next;
      end;
   query_A100.Close;
   query_A110.Close;
   query_A111.Close;
   query_A120.Close;
   query_A170.Close;

   end;


if mQtdRegBlocoA<1 then
   begin
   mLinha:='|A001|1|'; // sem dados
   mQtdRegBloco_A001:=mQtdRegBloco_A001+1;
   Memo1.Lines.Add(mLinha);
   items_lista_blocoA.Add(mLinha);
   mQtdRegBlocoA:=mQtdRegBlocoA+1;
   end;
mQtdRegBlocoA:=mQtdRegBlocoA+1;
mLinha:='|A990|'+IntToStr(mQtdRegBlocoA)+'|' ; // sem dados
mQtdRegBloco_A990:=mQtdRegBloco_A990+1;
Memo1.Lines.Add(mLinha);
items_lista_blocoA.Add(mLinha);

query_A010.Close;
FreeAndNil(query_A010);


query_A100.Close;
FreeAndNil(query_A100);

query_A110.Close;
FreeAndNil(query_A110);

query_A111.Close;
FreeAndNil(query_A111);

query_A120.Close;
FreeAndNil(query_A120);

query_A170.Close;
FreeAndNil(query_A170);

result:=true;
end;


Function tFrm_SPED_EFD_NOVO.fAbrirReg190(pEmitente: Integer;pCodEmp,pLotSEq,pChave,pOrdem: Real): Boolean;

begin

query_c190.Close;
query_c190.SQL.clear;
if pEmitente=1 then
   begin
   query_c190.SQL.Add('select  CASE WHEN CST_ICMS='+chr(39)+'000'+chr(39)
                                +' AND VL_BC_ICMS=0 THEN '
                                +chr(39)+'040'+chr(39)
                                +' ELSE CST_ICMS END  '
                                +' AS CST_ICMS '
                                +', CFOP '
                                +', ALIQ_ICMS '
                                +', sum(VL_OPR) AS VL_OPR '
                                +', sum(VL_BC_ICMS) AS VL_BC_ICMS '
                                +', sum(VL_ICMS) AS VL_ICMS '
                                +', sum(VL_BC_ICMS_ST)  AS VL_BC_ICMS_ST '
                                +', sum(VL_ICMS_ST) as VL_ICMS_ST '
                                +', sum(VL_RED_BC) AS VL_RED_BC '
                                +', sum(VL_IPI) AS VL_IPI '
                                +', max(COD_OBS) AS COD_OBS '
                                +' ,sum(OUTRAS_SICMS) as  OUTRAS_SICMS '
                                +' ,sum(OUTRAS_CICMS) as OUTRAS_CICMS'
                                +' ,sum(OUTRAS_VL_ICMS) as OUTRAS_VL_ICMS'
                                +' ,max(OUTRAS_ALIQ) as OUTRAS_ALIQ'
                                +' ,sum(ICMS_FRETE) as ICMS_FRETE'
                                +' ,max(ICMS_ALIQ_FRETE) as ICMS_ALIQ_FRETE'
                                +' ,sum(VALOR_FRETE) as VALOR_FRETE'
                                +' from (');

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
   query_c190.sQL.Add('select PF2SIT  AS CST_ICMS,DECODE(PF2CFO,0,'+chr(39)+'1102'+chr(39)+',TO_CHAR(PF2CFO)) AS CFOP,PF2ALIQ AS ALIQ_ICMS '
                                +'      ,sum((PF2QTDP*PF2PU)-nvl(PF2TOTDES,0)) AS VL_OPR,sum(PF2BASEN) AS VL_BC_ICMS '
                                +'      ,sum(PF2ICMSN) AS VL_ICMS,sum(PF2BASER) AS VL_BC_ICMS_ST '
                                +'     ,sum(DECODE(PF2CFO,2411,0,PF2ICMSR)) AS VL_ICMS_ST,        '
                                +'sum(CASE WHEN NVL(PF2ICMS_RED_VLR,0)>0 THEN PF2ICMS_RED_VLR ELSE PF2OUTRAS END) AS VL_RED_BC,sum(PF2IPI) AS VL_IPI '
                                +'     ,'+chr(39)+'      '+chr(39)+' AS COD_OBS '
                                +' ,max(NEOUTDESP) as  OUTRAS_SICMS '
                                +' ,max(NEOUTRAS) as OUTRAS_CICMS'
                                +' ,max(NEOUTRAS_IMP) as OUTRAS_VL_ICMS'
                                +' ,max(NEOUTRAS_ALIQ) as OUTRAS_ALIQ'
                                +' ,0 as ICMS_FRETE'
                                +' ,0 as ICMS_ALIQ_FRETE'
                                +' ,max(NEFRETE) as  VALOR_FRETE'
                                +' from CADNE '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                                +' PF2CODEMP=:CODEMP');
   query_c190.SQL.Add(' and PF2LOTSEQ=:LOTSEQ');
   query_c190.SQL.Add(' and PF2CHAVE=:CHAVE');
   query_c190.SQL.add(' GROUP BY PF2SIT,PF2CFO,PF2ALIQ ' );
   query_c190.SQL.Add(' union ');
{   query_c190.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
                                +'SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+' as CFOP '
                                +', NEALIQ_FRETE AS ALIQ_ICMS '
                                +', sum(NEFRETE) AS VL_OPR '
                                +', sum(NEFRETE) AS VL_BC_ICMS '
                                +', sum(NEICMS_FRETE) AS VL_ICMS '
                                +', 0 AS VL_BC_ICMS_ST '
                                +', 0 AS VL_ICMS_ST '
                                +', 0 AS VL_RED_BC '
                                +', 0 AS VL_IPI '
                                +','+chr(39)+'      '+chr(39)+' AS COD_OBS '
                                +' ,0 as  OUTRAS_SICMS '
                                +' ,0 as OUTRAS_CICMS'
                                +' ,0 as OUTRAS_VL_ICMS'
                                +' ,0 as OUTRAS_ALIQ'
                                +' ,0 as ICMS_FRETE'
                                +' ,0 as ICMS_ALIQ_FRETE'
                                +' ,0 as VALOR_FRETE'
                                +' from CADNE where NECODEMP=:CODEMP');
   query_c190.SQL.Add(' and NELOTSEQ_CP=:LOTSEQ');
   query_c190.SQL.Add(' and NECHAVEP=:CHAVE ');
   query_c190.SQL.Add(' and NEFRETE>0 AND NEICMS_FRETE>0');
   query_c190.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+',NEALIQ_FRETE');
   query_c190.SQL.Add(' union ');
   query_c190.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
                                +'SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+' as CFOP '
                                +', 0 AS ALIQ_ICMS '
                                +', sum(NEFRETE) AS VL_OPR '
                                +',  0 AS VL_BC_ICMS '
                                +', 0 AS VL_ICMS '
                                +', 0 AS VL_BC_ICMS_ST '
                                +', 0 AS VL_ICMS_ST '
                                +', 0 AS VL_RED_BC '
                                +', 0 AS VL_IPI '
                                +','+chr(39)+'      '+chr(39)+' AS COD_OBS '
                                +' ,0 as  OUTRAS_SICMS '
                                +' ,0 as OUTRAS_CICMS'
                                +' ,0 as OUTRAS_VL_ICMS'
                                +' ,0 as OUTRAS_ALIQ'
                                +' ,0 as ICMS_FRETE'
                                +' ,0 as ICMS_ALIQ_FRETE'
                                +' ,0 as VALOR_FRETE'
                                +' from CADNE where NECODEMP=:CODEMP ');
   query_c190.SQL.Add(' and NELOTSEQ_CP=:LOTSEQ ');
   query_c190.SQL.Add(' and NECHAVEP=:CHAVE ');
   query_c190.SQL.Add(' and NEFRETE>0 AND NEICMS_FRETE=0');
   query_c190.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39) );
   query_c190.SQL.Add(' union ');     }
   query_c190.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
                                +'SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+' as CFOP '
                                +', 0 AS ALIQ_ICMS '
                                +', sum(NEOUTDESP) AS VL_OPR '
                                +',  0 AS VL_BC_ICMS '
                                +', 0 AS VL_ICMS '
                                +', 0 AS VL_BC_ICMS_ST '
                                +', 0 AS VL_ICMS_ST '
                                +', 0 AS VL_RED_BC '
                                +', 0 AS VL_IPI '
                                +','+chr(39)+'      '+chr(39)+' AS COD_OBS '
                                +' ,0 as  OUTRAS_SICMS '
                                +' ,0 as OUTRAS_CICMS'
                                +' ,0 as OUTRAS_VL_ICMS'
                                +' ,0 as OUTRAS_ALIQ'
                                +' ,0 as ICMS_FRETE'
                                +' ,0 as ICMS_ALIQ_FRETE'
                                +' ,0 as VALOR_FRETE'
                                +' from CADNE where NECODEMP=:CODEMP');
   query_c190.SQL.Add(' and NELOTSEQ_CP=:LOTSEQ');
   query_c190.SQL.Add(' and NECHAVEP=:CHAVE');
   query_c190.SQL.Add(' and NEOUTDESP>0');
   query_c190.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39) );
// termino

// outras com icms

   query_c190.SQL.Add(' union ');
   query_c190.SQL.Add('select '+chr(39)+'000'+chr(39)+' AS CST_ICMS,'
                                +'SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+' as CFOP '
                                +', NEOUTRAS_ALIQ AS ALIQ_ICMS '
                                +', sum(NEOUTRAS) AS VL_OPR '
                                +', sum(NEOUTRAS) AS VL_BC_ICMS '
                                +', sum(NEOUTRAS_IMP) AS VL_ICMS '
                                +', 0 AS VL_BC_ICMS_ST '
                                +', 0 AS VL_ICMS_ST '
                                +', 0 AS VL_RED_BC '
                                +', 0 AS VL_IPI '
                                +','+chr(39)+'      '+chr(39)+' AS COD_OBS '
                                +' ,0 as  OUTRAS_SICMS '
                                +' ,0 as OUTRAS_CICMS'
                                +' ,0 as OUTRAS_VL_ICMS'
                                +' ,0 as OUTRAS_ALIQ'
                                +' ,0 as ICMS_FRETE'
                                +' ,0 as ICMS_ALIQ_FRETE'
                                +' ,0 as VALOR_FRETE'
                                +' from CADNE where NECODEMP=:CODEMP');
   query_c190.SQL.Add(' and NELOTSEQ_CP=:LOTSEQ');
   query_c190.SQL.Add(' and NECHAVEP=:CHAVE');
   query_c190.SQL.Add(' and NEOUTRAS>0');
   query_c190.SQL.add(' GROUP BY SUBSTR(NECFO,1,1) || '+chr(39)+mFinalCFOP_Frete+chr(39)+',NEOUTRAS_ALIQ' );
   query_c190.SQL.Add(') Group by '
                                +' CASE WHEN CST_ICMS='+chr(39)+'000'+chr(39)
                                +' AND VL_BC_ICMS=0 THEN '
                                +chr(39)+'040'+chr(39)
                                +' ELSE CST_ICMS END  '
                                +' ,CFOP '
                                +', ALIQ_ICMS ');
   query_c190.parambyName('CODEMP').value:=pCodemp;
   query_c190.parambyName('LOTSEQ').value:=pLotseq;
   query_c190.parambyName('CHAVE').value :=pChave;

//   query_c190.SQL.savetofile('c:\sql_C190.txt');
   try
      query_c190.Open;
   except
      query_c190.SQL.savetofile('c:\sql.txt');
      MessageDlg('Erro ao Abrit Qr0190',mtError,[mbOk],0);
      exit;
      end;
   end
else
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   if query_c100.FieldbyName('NUM_CUP').AsFloat>0 then
      mcinst4:='  CASE WHEN P2ICMSR>0 AND P2CFOSUBECF=2202 then  '+quotedstr('2411')
              +'  WHEN P2ICMSR>0 AND P2CFOSUBECF=1202 then  '+quotedstr('1411')
              +'  else TO_CHAR(P2CFOSUBECf) end '
//      mcinst4:='  CASE WHEN P2ICMSR>0 AND SUBSTR(P2CFOSUBECF,2,1)<>4 then '
//              +' SUBSTR(P2CFOSUBECF,1,1) ||  '+QuotedStr('4')+' || SUBSTR(P2CFOSUBECF,3,2)  else TO_CHAR(P2CFOSUBECf) end '


   else
      mcinst4:='  CASE WHEN P2ICMSR>0 AND P2CFO=2202 then  '+quotedstr('2411')
              +'  WHEN P2ICMSR>0 AND P2CFO=1202 then  '+quotedstr('1411')
              +'  else TO_CHAR(P2CFO) end ';

//      mcinst4:='  CASE WHEN P2ICMSR>0 AND SUBSTR(P2CFO,2,1)<>4 then '
//              +' SUBSTR(P2CFO,1,1) ||  '+QuotedStr('4')+' || SUBSTR(P2CFO,3,2)  else TO_CHAR(P2CFO) end ';


   fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
   query_c190.SQL.Add('select DECODE(p2ALIQ,0,'+chr(39)+'040'+chr(39)+',P2SIT)  AS CST_ICMS,'+mcinst4+' AS CFOP,P2ALIQ AS ALIQ_ICMS '

                          +' ,sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_OPR,sum(P2BASEN+DECODE(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                          +',sum(P2ICMSN+DECODE(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS,sum(P2BASER) AS VL_BC_ICMS_ST '
                          +' ,sum(P2ICMSR) AS VL_ICMS_ST,sum(P2REDUTICM) AS VL_RED_BC,sum(P2VALIPI) AS VL_IPI '
                          +','+chr(39)+'      '+chr(39)+' AS COD_OBS '
                          +',max(DECODE(NSICMS_VLOUTD,0,0,0)) as  OUTRAS_SICMS '
                          +' ,max(DECODE(NSICMS_VLOUTD,0,0,0)) as OUTRAS_CICMS '

                          +' ,max(NSICMS_VLOUTD) as OUTRAS_VL_ICMS '
                          +' ,max(NSICMS_ALOUTD) as OUTRAS_ALIQ '
                          +' ,max(DECODE(p2ALIQ,0,0,NSICMS_VLFRE)) as ICMS_FRETE '
                          +' ,max(DECODE(p2ALIQ,0,0,NSICMS_ALFRE)) as ICMS_ALIQ_FRETE '
                          +' ,max(NSFRETE) as  VALOR_FRETE '
                          +' FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                          +'       '+la_Join
                          +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' P2CODEMP=:CODEMP');
   query_c190.SQL.Add(' and P2LOTSEQ=:LOTSEQ');
   query_c190.SQL.Add(' and P2CHAVE=:CHAVE');
   query_c190.SQL.Add(' and P2ORDEM=:ORDEM');
   query_c190.SQL.add(' GROUP BY ');
   query_c190.SQL.add('DECODE(p2ALIQ,0,'+chr(39)+'040'+chr(39)+',P2SIT),');
   query_c190.SQL.add(' p2ALIQ,'+mcinst4);
   query_c190.parambyName('CODEMP').value:=pCodemp;
   query_c190.parambyName('LOTSEQ').value:=pLotseq;
   query_c190.parambyName('CHAVE').value :=pChave;
   query_c190.parambyName('ORDEM').value:=pOrdem;

   try
      query_c190.Open;
   except
      query_c190.SQL.savetofile('c:\sql.txt');
      MessageDlg('Erro ao Abrit Qr0190',mtError,[mbOk],0);
      exit;
      end;
   end;

//query_c190.SQL.savetofile('c:\sql_c190ns.txt');

result:=true;
end;

// inicio do bloco B

function TFrm_SPED_EFD_NOVO.fBlocoB(pOrigem: Integer): Boolean;
begin
mQtdRegBlocoB:=mQtdRegBlocoB+1;
mQtdRegBloco_B001:=mQtdRegBloco_B001+1;

mLinha:='|B001|1|'; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_Blocob.Add(mLinha);

mQtdRegBloco_B990:=mQtdRegBloco_B990+1;

mQtdRegBlocoB:=mQtdRegBlocoB+1;
mLinha:='|B990|'+inttostr(mQtdRegBlocoB)+'|';
Memo1.Lines.Add(mLinha);
items_lista_Blocob.Add(mLinha);


end;



// inicio do bloco C

function TFrm_SPED_EFD_NOVO.fBlocoC(pOrigem: Integer): Boolean;
var
mTabNivel_02: String;
mTemServicos: boolean;
mRestoCFOP: Integer;
mComplInstruc: String;
//indmov_e210: string;
begin
if query_c100=nil then
   begin
   query_c100:=tQuery.create(nil);
   query_c100.DatabaseName:='SG_ASSOC';
   end;
if query_c170=nil then
   begin
   query_c170:=tQuery.create(nil);
   query_c170.DatabaseName:='SG_ASSOC';
   end;


if query_c190=nil then
   begin
   query_c190:=tQuery.create(nil);
   query_c190.DatabaseName:='SG_ASSOC';
   end;
if query_c300=nil then
   begin
   query_c300:=tQuery.create(nil);
   query_c300.DatabaseName:='SG_ASSOC';
   end;
if query_c310=nil then
   begin
   query_c310:=tQuery.create(nil);
   query_c310.DatabaseName:='SG_ASSOC';
   end;
if query_c320=nil then
   begin
   query_c320:=tQuery.create(nil);
   query_c320.DatabaseName:='SG_ASSOC';
   end;
if query_c321=nil then
   begin
   query_c321:=tQuery.create(nil);
   query_c321.DatabaseName:='SG_ASSOC';
   end;
if query_c350=nil then
   begin
   query_c350:=tQuery.create(nil);
   query_c350.DatabaseName:='SG_ASSOC';
   end;
if query_c370=nil then
   begin
   query_c370:=tQuery.create(nil);
   query_c370.DatabaseName:='SG_ASSOC';
   end;
if query_c390=nil then
   begin
   query_c390:=tQuery.create(nil);
   query_c390.DatabaseName:='SG_ASSOC';
   end;
if query_c400=nil then
   begin
   query_c400:=tQuery.create(nil);
   query_c400.DatabaseName:='SG_ASSOC';
   end;
if query_c405=nil then
   begin
   query_c405:=tQuery.create(nil);
   query_c405.DatabaseName:='SG_ASSOC';
   end;
if query_c481=nil then
   begin
   query_c481:=tQuery.create(nil);
   query_c481.DatabaseName:='SG_ASSOC';
   end;

if query_c485=nil then
   begin
   query_c485:=tQuery.create(nil);
   query_c485.DatabaseName:='SG_ASSOC';
   end;

if query_c489=nil then
   begin
   query_c489:=tQuery.create(nil);
   query_c489.DatabaseName:='SG_ASSOC';
   end;
if query_c490=nil then
   begin
   query_c490:=tQuery.create(nil);
   query_c490.DatabaseName:='SG_ASSOC';
   end;

if query_c491=nil then
   begin
   query_c491:=tQuery.create(nil);
   query_c491.DatabaseName:='SG_ASSOC';
   end;
if query_c495=nil then
   begin
   query_c495:=tQuery.create(nil);
   query_c495.DatabaseName:='SG_ASSOC';
   end;
if query_c499=nil then
   begin
   query_c499:=tQuery.create(nil);
   query_c499.DatabaseName:='SG_ASSOC';
   end;
if query_c500=nil then
   begin
   query_c500:=tQuery.create(nil);
   query_c500.DatabaseName:='SG_ASSOC';
   end;
if query_c501=nil then
   begin
   query_c501:=tQuery.create(nil);
   query_c501.DatabaseName:='SG_ASSOC';
   end;
if query_c505=nil then
   begin
   query_c505:=tQuery.create(nil);
   query_c505.DatabaseName:='SG_ASSOC';
   end;
if query_c509=nil then
   begin
   query_c509:=tQuery.create(nil);
   query_c509.DatabaseName:='SG_ASSOC';
   end;
if query_c600=nil then
   begin
   query_c600:=tQuery.create(nil);
   query_c600.DatabaseName:='SG_ASSOC';
   end;
if query_c601=nil then
   begin
   query_c601:=tQuery.create(nil);
   query_c601.DatabaseName:='SG_ASSOC';
   end;
if query_c605=nil then
   begin
   query_c605:=tQuery.create(nil);
   query_c605.DatabaseName:='SG_ASSOC';
   end;
if query_c609=nil then
   begin
   query_c609:=tQuery.create(nil);
   query_c609.DatabaseName:='SG_ASSOC';
   end;


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','NSCODEMP','CCODCLI','NSCODCLI');



query_c100.Close;
query_c100.SQL.Clear;
query_c100.SQL.Add('Select CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END AS IND_OPER '
                     +'      ,0 AS IND_EMIT '
                     +','+chr(39)+'C'+chr(39)+'|| NSCODCLI AS COD_PART '
                     +'      ,NSMODELO AS COD_MOD '
//                     +'      ,DECODE(NSSTATUS,9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+') AS COD_SIT '
                     +'      ,DECODE(max(NSSTATUS),9,'+QuotedStr('02')+',8,'+QuotedStr('02')+','+QuotedStr('00')+') AS COD_SIT '
                     +'      ,NSSERIE AS SER '
                     +'      ,NSNUMERO AS NUM_DOC '
                     +'      ,NSNFE_CHAVEACESSO || NSNFE_DCHAVEACESSO AS CHV_NFE '
                     +'      ,NSDTEMIS AS DT_DOC '
                     +'      ,NSDTEMIS AS DT_E_S '
                     +'      ,sum(((P2QTD*P2PRECO)+P2VALIPI+P2ICMSR)-P2TOTDES) as VL_DOC '
                     +'      ,NSAVAP AS IND_PGTO '
                     +'      , sum(P2TOTDES) as VL_DESC '
                     +'      , 0 as VL_ABAT_NT '
                     +'      , sum(P2QTD*P2PRECO) as VL_MERC '
                     +'      ,DECODE(NSFRETE,0,9,NSFRETEPC) AS IND_FRT '
                     +'      ,NSFRETE AS VL_FRT '
                     +'      ,0 AS VL_SEG '
                     +'      ,0 AS VL_OUT_DA '



                     +'      ,sum(P2BASEN+decode(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                     +'      ,sum(P2ICMSN+decode(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS '
                     +'      ,sum(P2BASER) AS VL_BC_ICMS_ST '
                     +'      ,sum(p2ICMSR) AS VL_ICMS_ST '
                     +'      ,sum(P2VALIPI) AS VL_IPI '
                     +'      ,sum( ROUND( (P2QTD*P2PRECO),2)-P2TOTDES) AS VL_BC_PIS '
                     +'      ,sum( p2alpis) AS ALIQ_PIS '
                     +'      ,sum(P2VALPIS) AS VL_PIS '
                     +'      ,sum(P2COFINS) AS VL_COFINS '
                     +'      ,sum( ROUND( (P2QTD*P2PRECO),2)-P2TOTDES) AS VL_BC_COFINS '
                     +'      ,max(P2ALCOFINS) AS ALIQ_COFINS '
                     +'      ,0 AS QUANT_BC_COFINS '
                     +'      ,0 AS ALIQ_PIS_QUANT '
                     +'      ,0 AS QUANT_BC_PIS '

                     +'      ,0 AS VL_PIS_ST '
                     +'      ,max(P2COFINS) AS VL_COFINS_ST '
                     +'      ,0 AS ALIQ_COFINS_QUANT '
                     +'      ,max(decode(P2CST_COFINS,null,'+QuotedStr('99')+',P2CST_COFINS)) AS CST_COFINS '

                     +'      ,max(decode(P2CST_PIS,null,'+QuotedStr('99')+',P2CST_PIS)) AS CST_PIS '

                     +'      ,NSCODEMP AS CODEMP '
                     +'      ,NSLOTSEQ_CP AS LOTSEQ '
                     +'      ,NSCHAVEP AS CHAVE '
                     +'      ,NSORDEMP AS ORDEM '
                     +'      ,max(NSICMS_BCFRE) AS ICMS_BCFRE '
                     +'      ,max(NSICMS_ALFRE) AS ICMS_ALFRE '
                     +'      ,max(NSICMS_VLFRE) AS ICMS_VLFRE '

                     +'      ,max(NSNUMCUP) AS NUM_CUP '
                     +'      ,max(NSCFO1) AS CFOP '
                     +'      ,max(CUF) AS UF '
                     +'      FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' NSCODEMP=0'+IntToStr(codemp)+' and '
                     +' NSSTATUS<>-9 and NSSTATUS<>2 and NSTIPO<2 and (NSNUMERO>0)');
if fsonumero(edt_datini.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));

// temporario


if fsonumero(edt_datini_filtro.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));

// termino temporario


query_c100.SQL.Add(' AND NOT (NSSTATUS>=8 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');
mComplInstruc:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NSNUMERO '+mComplInstruc);

mComplInstruc:=fItensListBox(0,lbx_numcf,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NSNUMCUP '+mComplInstruc);


query_c100.SQL.add('Group by  CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN 1 '
                     +' ELSE 0 END '
                     +'      ,NSCODCLI'
                     +'      ,NSMODELO  '
                     +'      ,DECODE(NSSTATUS,9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+')  '
                     +'      ,NSSERIE '
                     +'      ,NSNUMERO '
                     +'      ,NSNFE_CHAVEACESSO,NSNFE_DCHAVEACESSO  '
                     +'      ,NSDTEMIS  '
                     +'      ,NSDTEMIS '
                     +'      ,NSAVAP  '
                     +'      ,DECODE(NSFRETE,0,9,NSFRETEPC)  '
                     +'      ,NSFRETE  '
                     +'      ,NSCODEMP '
                     +'      ,NSLOTSEQ_CP  '
                     +'      ,NSCHAVEP  '
                     +'      ,NSORDEMP  ');

query_c100.SQL.add(' union ');

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');
la_instrucao:=la_instrucao+' and ';

fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');


query_c100.SQL.add(' Select 0 IND_OPER '
                     +'      ,1 AS IND_EMIT '
                     +','+chr(39)+'F'+chr(39)+'||max(FCODFOR) AS COD_PART '
                     +'      ,max(NeMODELO) AS COD_MOD '
                     +'      ,DECODE(max(NESTATUS),9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+') AS COD_SIT '
                     +'      ,max(NESERIE) AS SER '
                     +'      ,max(NENUMERO) AS NUM_DOC '
                     +'      ,max(NENFE_CHAVE)  AS CHV_NFE '
                     +'      ,max(NEDTEMIS) AS DT_DOC '
                     +'      ,max(NEDTENT) AS DT_E_S '

                     +'      ,sum(( round((PF2QTDP*PF2PU),2)+PF2IPI+DECODE(PF2CFO,2411,0,PF2ICMSR))-PF2TOTDES) as VL_DOC  '

//                     +'      ,sum(PF2TOTLIQ+DECODE(PF2CFO,2411,0,PF2ICMSR)) AS VL_DOC '
                     +'      ,max(NEAVAP) AS IND_PGTO '
                     +'      ,sum(nvl(PF2TOTDES,0)) as VL_DESC '
                     +'      , 0 as VL_ABAT_NT '
                     +'      ,sum(pf2qtdp*pf2pu) as VL_MERC '
                     +'      ,DECODE(max(NEFRETE),0,9,max(NEFRETEPC)) AS IND_FRT '
                     +'      ,max(NEFRETE) AS VL_FRT '

                     +'      ,0 AS VL_SEG       '

                     +'      ,sum(NEOUTRAS+NEOUTDESP) AS VL_OUT_DA '
                     +'      ,sum(PF2BASEN)+ max(DECODE(NEICMS_FRETE,0,0,NEFRETE)) AS VL_BC_ICMS '
                     +'      ,sum(PF2ICMSN)+ max(NEICMS_FRETE) AS VL_ICMS '
                     +'      ,sum(PF2BASER) AS VL_BC_ICMS_ST '
                     +'      ,sum(DECODE(PF2CFO,2411,0,PF2ICMSR)) AS VL_ICMS_ST '
                     +'      ,sum(PF2IPI) AS VL_IPI '
                     +'      ,sum(PF2TOTLIQ) AS VL_BC_PIS  '
                     +'      ,sum(PF2PIS_PERC) as ALIQ_PIS '

                     +'      ,sum(PF2PIS_VALOR) AS VL_PIS '
                     +'      ,sum(PF2COFINS_VALOR) AS VL_COFINS '
                     +'      ,sum(PF2TOTLIQ) AS VL_BC_COFINS '
                     +'      ,max(PF2COFINS_PERC) AS ALIQ_COFINS '
                     +'      ,0 AS QUANT_BC_COFINS '
                     +'      ,0 AS ALIQ_PIS_QUANT '
                     +'      ,0 AS QUANT_BC_PIS '

                     +'      ,0 AS VL_PIS_ST '
                     +'      ,0 AS VL_COFINS_ST '
                     +'      ,0 AS ALIQ_COFINS_QUANT '
                     +'      ,max(PF2CST_COFINS) AS CST_COFINS '
                     +'      ,max(decode(PF2CST_PIS,null,'+QuotedStr('99')+',PF2CST_PIS)) AS CST_PIS '


                     +'      ,NECODEMP AS CODEMP '
                     +'      ,NELOTSEQ_CP AS LOTSEQ '
                     +'      ,NECHAVEP AS CHAVE '
                     +'      ,0 AS ORDEM '
                     +'      ,0 as ICMS_BCFRE '
                     +'      ,0 AS ICMS_ALFRE '
                     +'      ,0 AS ICMS_VLFRE '
                     +'      ,0  AS NUM_CUP '
                     +'      ,MAX(TO_CHAR(NECFO)) AS CFOP '

                     +'      ,max(FUF) AS UF '

                     +'      FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +' NECODEMP=0'+IntToStr(codemp)+' and '
                    +' NESTATUS<>-9 '
                    +' and NEMODELO<>'+QuotedStr('56')

                    );

if fsonumero(edt_datini.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));


// temporario


if fsonumero(edt_datini_filtro.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));


// termino temporario

query_c100.SQL.Add('and NOT NECFO in (1353,2353,1303,2303)');

mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NENUMERO '+mComplInstruc);

query_c100.SQL.Add(' group by NECODEMP '
                     +'      ,NELOTSEQ_CP '
                     +'      ,NECHAVEP ');
mTemServicos:=true;

if mTemServicos then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADFOR','FCODEMP','FCODEMP','FCODFOR','NECODFOR');

   query_c100.SQL.add(' union  ');
   query_c100.SQL.add(' Select 0 IND_OPER '
                        +'      ,1 AS IND_EMIT '
                        +','+chr(39)+'F'+chr(39)+'||max(FCODFOR) AS COD_PART '
                        +'      ,max(NeMODELO) AS COD_MOD '
                        +'      ,DECODE(max(NESTATUS),9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+') AS COD_SIT '
                        +'      ,max(NESERIE) AS SER '
                        +'      ,NENUMERO AS NUM_DOC '
                        +'      ,max(NENFE_CHAVE)  AS CHV_NFE '
                        +'      ,NEDTEMIS AS DT_DOC '
                        +'      ,max(NEDTENT) AS DT_E_S '
                        +'      ,max(NETOTNOT) AS VL_DOC '
                        +'      ,max(NEAVAP) AS IND_PGTO '
                        +'      ,0 as VL_DESC '
                        +'      , 0 as VL_ABAT_NT '
                        +'      ,max(netotmer) as VL_MERC '
                        +'      ,DECODE(max(NEFRETE),0,9,max(NEFRETEPC)) AS IND_FRT '
                        +'      ,max(NEFRETE) AS VL_FRT '

                        +'      ,0 AS VL_SEG       '
                        +'      ,sum(NEOUTRAS+NEOUTDESP) AS VL_OUT_DA '
                        +'      ,max(NEBASEN+NEOUTRAS+DECODE(NEICMS_FRETE,0,0,NEFRETE)) AS VL_BC_ICMS '
                        +'      ,max(NEICMSN+NEOUTRAS_IMP+NEICMS_FRETE) AS VL_ICMS '
                        +'      ,max(NEBASER) AS VL_BC_ICMS_ST '
                        +'      ,max(NEICMSR) AS VL_ICMS_ST '
                        +'      ,max(NEIPI) AS VL_IPI '
                        +'      ,0 AS VL_BC_PIS '

                        +'      ,0 AS ALIQ_PIS '
                        +'      ,0 AS VL_PIS '
                        +'      ,0 AS VL_COFINS '
                        +'      ,0 AS VL_BC_COFINS '
                        +'      ,0 AS ALIQ_COFINS '
                        +'      ,0 AS QUANT_BC_COFINS '
                     +'      ,0 AS ALIQ_PIS_QUANT '
                     +'      ,0 AS QUANT_BC_PIS '

                        +'      ,0 AS VL_PIS_ST '
                        +'      ,0 AS VL_COFINS_ST '
                        +'      ,0 AS ALIQ_COFINS_QUANT '
                        +'      ,'+QuotedStr('0')+' AS CST_COFINS '
                        +'      ,'+QuotedStr('0')+' AS CST_PIS '

                        +'      ,NECODEMP AS CODEMP '
                        +'      ,NELOTSEQ_CP AS LOTSEQ '
                        +'      ,NECHAVEP AS CHAVE '
                        +'      ,0 AS ORDEM '
                        +'      ,0 as ICMS_BCFRE '
                        +'      ,0 AS ICMS_ALFRE '
                        +'      ,0 AS ICMS_VLFRE '
                        +'      ,0  AS NUM_CUP '
                        +'      ,MAX(TO_CHAR(NECFO)) AS CFOP '
                        +'      ,max(FUF) AS UF '

                        +'      FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                       +'       '+la_Join
                       +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                       +' NECODEMP=0'+IntToStr(codemp)+' and '
                       +' NESTATUS<>-9 '
                       +' and NEMODELO<>'+QuotedStr('56')
                       );

   if fsonumero(edt_datini.Text)<>0  then
      query_c100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
   if fsonumero(edt_datfin.Text)<>0 then
      query_c100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));



// temporario

if fsonumero(edt_datini_filtro.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));


// termino temporario

   query_c100.SQL.Add(' and NECHAVEP=0'
                  +' and SUBSTR(TO_CHAR(NECFO),2,3)<>'+QuotedStr('949'));
   query_c100.SQL.Add('and NOT NECFO in (1252,2252,1353,2353,1303,2303,1253,2253,2352,1352)');

   query_c100.SQL.Add('and NECHAVEP=0');
   query_c100.SQL.Add('and NETIPO=56');

   mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
   if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NENUMERO '+mComplInstruc);


//DM1.Query1.SQL.Add(' and NECHAVEP=0'
//                  +' and SUBSTR(TO_CHAR(NECFO),2,3)<>'+QuotedStr('949'));


// DM1.Query1.SQL.Add('and NOT NECFO in (1252,2252,1353,2353,1303,2303,1253,2253,2352,1352)');

   query_c100.SQL.Add('and NOT NECFO in (1252,1253,2252,2253)');

   query_c100.SQL.Add(' group by NECODEMP '
                        +'      ,NELOTSEQ_CP '
                        +'      ,NECHAVEP '
                        +'      ,NENUMERO,NEDTEMIS ' );

   end;
//  query_c100.SQL.SaveToFile('c:\sql.txt');

try
   query_c100.Open;
except
   query_c100.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qr0150',mtError,[mbOk],0);
   exit;
   end;




mTabela:='TAB_C100';
if (not query_c100.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|C001|0|'; // com dados
   mQtdRegBlocoC:=mQtdRegBlocoC+1;
   mQtdRegBloco_C001:=mQtdRegBloco_C001+1;

   Memo1.Lines.Add(mLinha);
   items_lista_BlocoC.Add(mLinha);

   while not query_c100.Eof do
      begin
// INICIO C

      if query_C100.fieldbyName('VL_PIS').AsFloat>0 then
         begin
         fGerarM100('01' // pCod_Cred: String;
                   ,0 // pInd_Cred_Ori: Integer;
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat  // pVl_BC_Pis
                   ,query_C100.fieldbyName('ALIQ_PIS').AsFloat  //    pAliqPis
                   ,query_C100.fieldbyName('QUANT_BC_PIS').AsFloat  //   pQuant_BC_Pis
                   ,query_C100.fieldbyName('ALIQ_PIS_QUANT').AsFloat  //  pAliq_Pis_Quant
                   ,query_C100.fieldbyName('VL_PIS').AsFloat  //  pVl_Cred
                   ,0  //  ,pVl_Ajus_Acres
                   ,0 //   pVl_Cred_Dif
                   ,0  // ,pVl_Cred_Disp
                   ,0 // ,pInd_Desc_Cred
                   ,0 //,pVl_Desc_Cred
                   ,0 // ,pVl_Cred_Desc
                   ,0 // ,pSld_Cred: Real): Boolean;
                   );

         fGerarM105('01' // pNAT_BC_CRED
                   ,query_C100.fieldbyName('CST_PIS').AsString //,pCST_PIS: string;
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat  // pVL_BC_PIS_TOT
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat  //  pVL_BC_PIS_CUM
                   ,0 // ,pVL_BC_PIS_NC
                   ,0 // ,pVL_BC_PIS
                   ,query_C100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT
                   ,query_C100.fieldbyName('QUANT_BC_PIS').AsFloat  // pQUANT_BC_PIS  : real;
                   ,'NAO DEFINIDO ' //   pDESC_CRED: String): Boolean;
                   );


         fGerarM200(query_C100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_C100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_C100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_NC_REC
                   ,query_C100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );

         fGerarM210('01' // pCOD_CONT: String;
                   ,query_C100.fieldbyName('VL_PIS').AsFloat //  pVL_REC_BRT
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_BC_CONT
                   ,query_C100.fieldbyName('ALIQ_PIS').AsFloat //  pALIQ_PIS

                   ,query_C100.fieldbyName('QUANT_BC_PIS').AsFloat  //    ppQUANT_BC_PIS

                   ,query_C100.fieldbyName('ALIQ_PIS_QUANT').AsFloat //  pALIQ_PIS_QUANT
                   ,query_C100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_APUR
                   ,0 //    ,pVL_AJUS_ACRES
                   ,0 //,pVL_AJUS_REDUC
                   ,0  //,pVL_CONT_DIFER
                   ,0 //,pVL_CONT_DIFER_ANT
                   ,query_C100.fieldbyName('VL_PIS').AsFloat // pVL_CONT_PER: Real): Boolean;
                   );

         end;


      if query_C100.fieldbyName('VL_COFINS').AsFloat>0 then
         begin
         fGerarM500('101' // pCod_Cred: String;
                   ,0 // pInd_Cred_Ori: Integer;
                   ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  // pVl_BC_COFINS
                   ,query_C100.fieldbyName('ALIQ_COFINS').AsFloat  //    pAliqPis
                   ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat  //   pQuant_BC_COFINS
                   ,query_C100.fieldbyName('ALIQ_COFINS_QUANT').AsFloat  //  pAliq_COFINS_Quant
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat  //  pVl_Cred
                   ,0  //  ,pVl_Ajus_Acres
                   ,0  // pVl_Ajus_Reduc
                   ,0 //   pVl_Cred_Dif
                   ,0  // ,pVl_Cred_Disp
                   ,0 // ,pInd_Desc_Cred
                   ,0 //,pVl_Desc_Cred
                   ,0 // ,pVl_Cred_Desc
                   ,0 // ,pSld_Cred: Real): Boolean;
                   );

         fGerarM505('01' // pNAT_BC_CRED
                   ,query_C100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string;
                   ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT
                   ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  //  pVL_BC_COFINS_CUM
                   ,0 // ,pVL_BC_COFINS_NC
                   ,0 // ,pVL_BC_COFINS
                   ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT
                   ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real;
                   ,'NAO DEFINIDO ' //   pDESC_CRED: String): Boolean;
                   );


         fGerarM600(query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat //  pVL_CONT_NC_REC
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );

         fGerarM610('01' // pCOD_CONT: String;
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat //  pVL_REC_BRT
                   ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT
                   ,query_C100.fieldbyName('ALIQ_COFINS').AsFloat //  pALIQ_COFINS

                   ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat  //    ppQUANT_BC_COFINS

                   ,query_C100.fieldbyName('ALIQ_COFINS_QUANT').AsFloat //  pALIQ_COFINS_QUANT
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat //  pVL_CONT_APUR
                   ,0 //    ,pVL_AJUS_ACRES
                   ,0 //,pVL_AJUS_REDUC
                   ,0  //,pVL_CONT_DIFER
                   ,0 //,pVL_CONT_DIFER_ANT
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_CONT_PER: Real): Boolean;
                   );

         end;
// TERMINO C




      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C100:=mQtdRegBloco_C100+1;
      if query_c100.FieldByName('COD_SIT').AsInteger<>2 then
         fTestarCliFor(query_C100.fieldbyName('COD_PART').AsString);
      mLinha:='|';
      mLinha:=mLinha+'C100|';  // 01
      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('IND_OPER').FieldName,query_c100.fieldbyname('IND_OPER').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('IND_OPER').AsString+'|'; // 02
      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('IND_EMIT').FieldName,query_c100.fieldbyname('IND_EMIT').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('IND_EMIT').AsString+'|'; //3

      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('COD_PART').FieldName,query_c100.fieldbyname('COD_PART').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',query_c100.fieldbyname('COD_PART').AsString)+'|'; //44


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('COD_MOD').FieldName,query_c100.fieldbyname('COD_MOD').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('COD_MOD').AsString+'|'; //5


      if (query_c100.fieldbyName('COD_MOD').AsString='56') OR (valint(query_c100.fieldbyName('COD_MOD').AsString)=1)   then
         memo_erros.Lines.Add('REGISTRO C100 Codigo do Modelo da NF invalido : '+query_c100.FieldbyName('COD_MOD').AsString
                        +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                        +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString
                        +' Cliente/Fornecedor: '+query_c100.FieldbyName('COD_PART').AsString
                        );


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('COD_SIT').FieldName,query_c100.fieldbyname('COD_SIT').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('COD_SIT').AsString+'|'; // 06

      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('SER').FieldName,query_c100.fieldbyname('SER').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=-2,'',trim(query_c100.fieldbyname('SER').AsString))+'|'; //7
//      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',trim(query_c100.fieldbyname('SER').AsString))+'|'; //7


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('NUM_DOC').FieldName,query_c100.fieldbyname('NUM_DOC').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('NUM_DOC').AsString+'|'; // 08
      if (query_c100.fieldbyName('COD_MOD').AsString='56') OR (query_c100.fieldbyName('COD_MOD').AsString='55')   then
         begin
         if not ValidarChaveNFe(query_c100.fieldbyname('CHV_NFE').AsString) then
            begin
            memo_erros.Lines.Add('Documento: '+query_c100.fieldbyname('NUM_DOC').AsString
                                +' codigo do participante : ' + query_c100.fieldbyname('COD_PART').AsString
                                +' chave da NFE ' + query_c100.fieldbyname('CHV_NFE').AsString + ' é invalida!');
            end;
         end;


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('CHV_NFE').FieldName,query_c100.fieldbyname('CHV_NFE').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('CHV_NFE').AsString+'|'; //9



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('DT_DOC').FieldName,query_c100.fieldbyname('DT_DOC').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatdateTime(fdt_efd, query_c100.fieldbyname('DT_DOC').AsDateTime))+'|'; //10


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('DT_E_S').FieldName,query_c100.fieldbyname('DT_E_S').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatdateTime(fdt_efd, query_c100.fieldbyname('DT_E_S').AsDateTime))+'|'; //11



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_DOC').FieldName,query_c100.fieldbyname('VL_DOC').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_DOC').AsFloat))+'|'; //12


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('IND_PGTO').FieldName,query_c100.fieldbyname('IND_PGTO').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',query_c100.fieldbyname('IND_PGTO').AsString)+'|'; //13



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_DESC').FieldName,query_c100.fieldbyname('VL_DESC').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_DESC').AsFloat))+'|'; //14


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_ABAT_NT').FieldName,query_c100.fieldbyname('VL_ABAT_NT').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_ABAT_NT').AsFloat))+'|'; //15



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_MERC').FieldName,query_c100.fieldbyname('VL_MERC').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_MERC').AsFloat))+'|'; //16



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('IND_FRT').FieldName,query_c100.fieldbyname('IND_FRT').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',query_c100.fieldbyname('IND_FRT').AsString)+'|'; //17



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_FRT').FieldName,query_c100.fieldbyname('VL_FRT').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_FRT').AsFloat))+'|'; //18



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_SEG').FieldName,query_c100.fieldbyname('VL_SEG').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_SEG').AsFloat))+'|'; //19


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_OUT_DA').FieldName,query_c100.fieldbyname('VL_OUT_DA').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_OUT_DA').AsFloat))+'|'; //20


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_BC_ICMS').FieldName,query_c100.fieldbyname('VL_BC_ICMS').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_BC_ICMS').AsFloat))+'|'; //21


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_ICMS').FieldName,query_c100.fieldbyname('VL_ICMS').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_ICMS').AsFloat))+'|'; //22


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_BC_ICMS_ST').FieldName,query_c100.fieldbyname('VL_BC_ICMS_ST').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_BC_ICMS_ST').AsFloat))+'|'; //23


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_ICMS_ST').FieldName,query_c100.fieldbyname('VL_ICMS_ST').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_ICMS_ST').AsFloat))+'|'; //24

      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_IPI').FieldName,query_c100.fieldbyname('VL_IPI').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_IPI').AsFloat))+'|'; //25


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_PIS').FieldName,query_c100.fieldbyname('VL_PIS').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_PIS').AsFloat))+'|'; //26


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_COFINS').FieldName,query_c100.fieldbyname('VL_COFINS').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_COFINS').AsFloat))+'|'; //27

      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_PIS_ST').FieldName,query_c100.fieldbyname('VL_PIS_ST').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_PIS_ST').AsFloat))+'|'; //28


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('VL_COFINS_ST').FieldName,query_c100.fieldbyname('VL_COFINS_ST').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatFloat(mCasas2Dec, query_c100.fieldbyname('VL_COFINS_ST').AsFloat))+'|'; //29


      Memo1.Lines.Add(mLinha);



      items_lista_BlocoC.Add(mLinha);
      // TERMINO adentação registro C120
      query_c170.Close;
      query_c170.SQL.Clear;
      if (query_c100.FieldByName('CHAVE').AsFloat>0) and (query_c100.FieldByName('COD_SIT').AsFloat<>2) then
         begin
//         if (query_c100.FieldByName('IND_EMIT').AsInteger<>0) then
//         begin
         if query_c100.FieldByName('IND_EMIT').AsInteger=1 then
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin3(1,'CADPF2','PF2CODEMP','NECODEMP','PF2LOTSEQ','NELOTSEQ_CP','PF2CHAVE','NECHAVEP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

            query_c170.SQL.Add('SELECT PF2ITEM AS NUM_ITEM,TO_CHAR(PDCODPRO) AS COD_ITEM, '
                                    +' '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL, PF2QTDP AS QTD '
                                    +',upper(NVL(PDUND,'+QuotedStr('UND')+')) AS UNID, (PF2PU*PF2QTDP) AS VL_ITEM '
                                    +' ,nvl(PF2TOTDES,0) AS VL_DESC '
                                    +',0 AS IND_MOV '
                                    +', CASE WHEN PF2SIT='+chr(39)+'000'+chr(39)
                                    +' AND PF2BASEN=0 THEN '
                                    +chr(39)+'040'+chr(39)
                                   +' ELSE PF2SIT END  '
                                   +' AS CST_ICMS '
//                                    +',PF2SIT AS CST_ICMS '
                                    +',PF2CFO AS CFOP '
                                    +',PF2CFO AS COD_NAT '
                                    +',PF2BASEN AS VL_BC_ICMS '
                                    +',PF2ICMSN AS VL_ICMS '
                                    +',PF2BASER AS VL_BC_ICMS_ST '
                                    +',DECODE(PF2CFO,2411,0,PF2ICMSR) AS VL_ICMS_ST '
                                    +' ,PF2ALIQ AS ALIQ_ICMS '
                                    +' ,PF2ALIQ AS ALIQ_ST '
                                    +' , 0 AS IND_APUR '
                                    +' ,'+CHR(39)+'49'+CHR(39)+' AS CST_IPI '
                                    +' ,'+chr(39)+' '+chr(39)+' AS COD_ENQ '
                                    +' ,DECODE(PF2IPI,0,0,PF2IPI) AS VL_BC_IPI '
                                    +' ,PF2ALIPI AS ALIQ_IPI '
                                    +' ,PF2IPI as VL_IPI '
                                    +' , NVL(PF2CST_PIS,'+QuotedStr('99')+') AS CST_PIS '
                                    +', CASE WHEN PF2PIS_VALOR>0 THEN (PF2PU*PF2QTDP)-nvl(PF2TOTDES,0) ELSE 0 END AS  VL_BC_PIS '
                                    +' ,PF2PIS_PERC AS ALIQ_PIS '
                                    +'  ,0 AS QUANT_BC_PIS '
                                    +'  ,0 AS ALIQ_PIS_QUANT '
                                    +'  ,0 ALIQ_PIS_REAIS '

                                    +',PF2PIS_VALOR AS VL_PIS '
                                    +' , NVL(PF2CST_COFINS,'+QuotedStr('99')+') AS CST_COFINS '
                                    +', CASE WHEN PF2COFINS_VALOR>0 THEN (PF2PU*PF2QTDP)-nvl(PF2TOTDES,0) ELSE 0 END AS  VL_BC_COFINS '
                                    +' ,PF2COFINS_PERC AS ALIQ_COFINS '
                                    +' ,0 AS QUANT_BC_COFINS '
                                    +' ,0 AS ALIQ_COFINS_QUANT '
                                     +',PF2COFINS_VALOR AS VL_COFINS '
                                    +' ,'+chr(39)+' '+chr(39)+' CFOP '

                                    +' ,'+chr(39)+' '+chr(39)+' COD_CTA '
                                    +' ,0 AS ALIQ_COFINS_REAIS '
                                    +' ,PDPRZVAL_DIAS,PDPRZVAL,PDPRZVAL_ANOS '
                                    +' ,PF2LOTE AS C173_LOTE_MED '
                                    +' ,PF2QTDP  AS C173_QTD_ITEM '
                                    +' ,PF2DATAV AS C173_DT_VAL '
                                    +' ,DECODE(PDLISTA,NULL,4 '
                                    +'         ,0,4 '
                                    +'         ,1,3 '
                                    +'         ,2,2 '
                                    +'         ,4) AS IND_MED '
                                    +' ,DECODE(PF2PMC,NULL,DECODE(PDPMC,0,PF2PU,PDPMC),DECODE(PF2PMC,0,PDPMC,PF2PMC)) AS VL_TAB_MAX '
                                    +' ,DECODE(PDCODTIP,3,0 '
                                    +'         ,2,1 '
                                    +'         ,2) AS TP_PROD '
                                    +' ,NEOUTDESP as  OUTRAS_SICMS '
                                    +' ,NEOUTRAS as OUTRAS_CICMS'
                                    +' ,NEOUTRAS_IMP as OUTRAS_VL_ICMS'
                                    +' ,NEOUTRAS_ALIQ as OUTRAS_ALIQ'
                                    +' ,NEICMS_FRETE as ICMS_FRETE'
                                    +' ,NEALIQ_FRETE as ICMS_ALIQ_FRETE'
                                    +' ,NEFRETE as  VALOR_FRETE'
                                    +' ,0 AS VL_ABAT_NT '
                                    +' FROM CADNE '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' PF2CODEMP=0'+query_c100.FieldByName('CODEMP').AsString);
            query_c170.SQL.Add(' and PF2LOTSEQ=0'+query_c100.FieldByName('LOTSEQ').AsString);
            query_c170.SQL.Add(' and PF2CHAVE=0'+query_c100.FieldByName('CHAVE').AsString);

            try
               query_c170.Open;
            except
               query_c170.SQL.savetofile('c:\sql.txt');
               messagedlg('erro ao abrir qrc170',mterror,[mbOk],0);
               exit;
               end;
            end
         else if query_c100.fieldbyname('COD_MOD').AsString<>'55' then
//         else
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
            la_instrucao:=la_instrucao+' and ';

            fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
            query_c170.SQL.Add('SELECT P2ITEM AS NUM_ITEM,TO_CHAR(PDCODPRO) AS COD_ITEM, '
                                    +' '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL, P2QTD AS QTD '
                                    +',upper(NVL(PDUND,'+QuotedStr('UND')+')) AS UNID, (P2PRECO*P2QTD) AS VL_ITEM '
                                    +' ,P2TOTDES AS VL_DESC '
                                    +',0 AS IND_MOV '
                                    +',P2SIT AS CST_ICMS '
                                    +',DECODE(NSNUMCUP,0,P2CFO,P2CFOSUBECF) AS CFOP '
                                    +',DECODE(NSNUMCUP,0,P2CFO,P2CFOSUBECF) AS COD_NAT '
                                    +',P2BASEN+DECODE(P2BCINR,NULL,0,P2BCINR) AS VL_BC_ICMS '
                                    +',P2ICMSN+DECODE(P2ICMSNR,NULL,0,P2ICMSNR) AS VL_ICMS '
                                    +',P2BASER AS VL_BC_ICMS_ST '
                                    +',P2ICMSR AS VL_ICMS_ST '
                                    +',P2ALIQ AS ALIQ_ICMS '
                                    +' ,P2ST_ICMDEB AS ALIQ_ST '
                                    +' , 0 AS IND_APUR '
                                    +' ,'+CHR(39)+'99'+CHR(39)+' AS CST_IPI '
                                    +' ,'+chr(39)+' '+chr(39)+' AS COD_ENQ '
                                    +' ,DECODE(P2VALIPI,0,0,P2VALIPI) AS VL_BC_IPI '
                                    +' ,P2ALIPI AS ALIQ_IPI '
                                     +',P2VALIPI as VL_IPI '
                                    +' , NVL(P2CST_PIS,'+QuotedStr('99')+') AS CST_PIS '

                                    +' ,CASE WHEN P2VALPIS>0 THEN (P2PRECO*P2QTD)-P2TOTDES ELSE 0 END AS  VL_BC_PIS '

                                    +' ,P2ALPIS AS ALIQ_PIS '
                                    +' ,0 AS QUANT_BC_PIS '
                                    +' ,0 AS ALIQ_PIS_QUANT '
                                    +' ,0 ALIQ_PIS_REAIS '
                                    +' ,P2VALPIS AS VL_PIS '
                                    +' , NVL(P2CST_COFINS,'+QuotedStr('99')+') AS CST_COFINS '
                                    +' ,CASE WHEN P2COFINS>0 THEN (P2PRECO*P2QTD)-P2TOTDES ELSE 0 END AS VL_BC_COFINS '
                                    +' ,P2ALCOFINS AS ALIQ_COFINS '
                                    +' ,0 AS QUANT_BC_COFINS '
                                    +' ,0 AS ALIQ_COFINS_QUANT '

                                    +' ,P2COFINS AS VL_COFINS '
                                    +' ,'+chr(39)+' '+chr(39)+' COD_CTA '
                                    +' ,0 AS ALIQ_COFINS_REAIS '
                                    +' ,PDPRZVAL_DIAS,PDPRZVAL,PDPRZVAL_ANOS '
                                    +' ,P2LOTE AS C173_LOTE_MED '
                                    +' ,P2QTD  AS C173_QTD_ITEM '
                                    +' ,P2DTVCTO AS C173_DT_VAL '
                                   +'  ,DECODE(PDLISTA,NULL,4 '
                                    +'         ,0,4 '
                                    +'         ,1,3 '
                                    +'         ,2,2 '
                                   +'          ,4) AS IND_MED'
                                   +'  ,decode(P2PCOMAX,0,decode(p2pcotab,0,p2preco,p2pcotab) ,p2pcomax) AS VL_TAB_MAX '
                                    +' ,DECODE(PDCODTIP,3,0 '
                                     +'        ,2,1 '
                                    +'         ,2) AS TP_PROD '
                                    +',DECODE(NSICMS_VLOUTD,0,0,0) as  OUTRAS_SICMS '
                                    +',DECODE(NSICMS_VLOUTD,0,0,0) as OUTRAS_CICMS '
                                    +',NSICMS_VLOUTD as OUTRAS_VL_ICMS '
                                    +',NSICMS_ALOUTD as OUTRAS_ALIQ '
                                    +',NSICMS_VLFRE as ICMS_FRETE '
                                    +',NSICMS_ALFRE as ICMS_ALIQ_FRETE '
                                    +',NSFRETE as  VALOR_FRETE '
                                    +',0 AS VL_ABAT_NT '



                                    +' FROM CADNS '+iif(la_tabelas='','',',')+la_tabelas
                             +'       '+la_Join
                             +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                             +' P2CODEMP=0'+query_c100.FieldByName('CODEMP').AsString
                             +' and NSSTATUS=0'
                             +' and NSNUMERO<>0');


            query_c170.SQL.Add(' and P2LOTSEQ=0'+query_c100.FieldByName('LOTSEQ').AsString);
            query_c170.SQL.Add(' and P2CHAVE=0'+query_c100.FieldByName('CHAVE').AsString);
            query_c170.SQL.Add(' and P2ORDEM=0'+query_c100.FieldByName('ORDEM').AsString);
            try
               query_c170.Open;
             except
               query_c170.SQL.savetofile('c:\sql.txt');
               MessageDlg('Erro ao Abrit Qr0170',mtError,[mbOk],0);
               exit;
               end;
            end;
//         end;

         // INICIO adentação registro C170
         mTabNivel_02:='TAB_C170';
         if (query_c170.Active) and (not query_c170.IsEmpty) then
            begin
            while not query_c170.Eof do
               begin
               fTestarR0190(query_c170.fieldbyName('UNID').AsString);
               fTestarR0400(query_c170.fieldbyName('COD_NAT').AsString);
               fTestarR0200(query_C170.fieldbyName('COD_ITEM').AsString);

               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C170:=mQtdRegBloco_C170+1;
               mLinha:='|';
               mLinha:=mLinha+'C170|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('NUM_ITEM').FieldName,query_c170.fieldbyName('NUM_ITEM').AsString); // 01
               mLinha:=mLinha+query_c170.fieldbyName('NUM_ITEM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('COD_ITEM').FieldName,query_c170.fieldbyName('COD_ITEM').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('COD_ITEM').AsString+'|'; // 02

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('DESCR_COMPL').FieldName,query_c170.fieldbyName('DESCR_COMPL').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('DESCR_COMPL').AsString+'|'; // 03

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('QTD').FieldName,query_c170.fieldbyName('QTD').AsString);
               mLinha:=mLinha+FormatFloat(mCasas5Dec, query_c170.fieldbyName('QTD').AsFloat)+'|'; // 04

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('UNID').FieldName,query_c170.fieldbyName('UNID').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('UNID').AsString+'|'; // 05

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_ITEM').FieldName,query_c170.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_ITEM').AsFloat)+'|'; // 06

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_DESC').FieldName,query_c170.fieldbyName('VL_DESC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_DESC').AsFloat)+'|'; // 07
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('IND_MOV').FieldName,query_c170.fieldbyName('IND_MOV').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('IND_MOV').AsString+'|'; // 08
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('CST_ICMS').FieldName,query_c170.fieldbyName('CST_ICMS').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('CST_ICMS').AsString+'|'; // 09
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('CFOP').FieldName,query_c170.fieldbyName('CFOP').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('CFOP').AsString+'|'; // 10
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('COD_NAT').FieldName,query_c170.fieldbyName('COD_NAT').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('COD_NAT').AsString+'|'; // 011
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_BC_ICMS').FieldName,query_c170.fieldbyName('VL_BC_ICMS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_BC_ICMS').AsFloat)+'|'; // 12
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_ICMS').FieldName,query_c170.fieldbyName('ALIQ_ICMS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('ALIQ_ICMS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_ICMS').FieldName,query_c170.fieldbyName('VL_ICMS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_ICMS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_BC_ICMS_ST').FieldName,query_c170.fieldbyName('VL_BC_ICMS_ST').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_BC_ICMS_ST').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_ST').FieldName,query_c170.fieldbyName('ALIQ_ST').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('ALIQ_ST').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_ICMS_ST').FieldName,query_c170.fieldbyName('VL_ICMS_ST').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_ICMS_ST').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('IND_APUR').FieldName,query_c170.fieldbyName('IND_APUR').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('IND_APUR').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('CST_IPI').FieldName,query_c170.fieldbyName('CST_IPI').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('CST_IPI').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('COD_ENQ').FieldName,query_c170.fieldbyName('COD_ENQ').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('COD_ENQ').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_BC_IPI').FieldName,query_c170.fieldbyName('VL_BC_IPI').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_BC_IPI').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_IPI').FieldName,query_c170.fieldbyName('ALIQ_IPI').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('ALIQ_IPI').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_IPI').FieldName,query_c170.fieldbyName('VL_IPI').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_IPI').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('CST_PIS').FieldName,query_c170.fieldbyName('CST_PIS').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('CST_PIS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_BC_PIS').FieldName,query_c170.fieldbyName('VL_BC_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_BC_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_PIS').FieldName,query_c170.fieldbyName('ALIQ_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c170.fieldbyName('ALIQ_PIS').AsFloat)+'|';
               if query_c170.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('QUANT_BC_PIS').FieldName,query_c170.fieldbyName('QUANT_BC_PIS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c170.fieldbyName('QUANT_BC_PIS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if query_c170.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_PIS_QUANT').FieldName,query_c170.fieldbyName('ALIQ_PIS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c170.fieldbyName('ALIQ_PIS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if (query_c170.fieldbyName('VL_PIS').Asfloat<0) OR
                  (query_c170.fieldbyName('VL_PIS').Asfloat>query_c170.fieldbyName('VL_ITEM').Asfloat)  then
                  memo_erros.Lines.Add('REGISTRO C170 Valor do Pis invalida : '+FormatFloat(mcasas, query_c170.FieldbyName('VL_PIS').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString
                                 +' Cliente/Fornecedor: '+query_c100.FieldbyName('COD_PART').AsString
                                 );

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_PIS').FieldName,query_c170.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('CST_COFINS').FieldName,query_c170.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_BC_COFINS').FieldName,query_c170.fieldbyName('VL_BC_COFINS').AsString);
               if query_c170.fieldbyName('VL_BC_COFINS').Asfloat<0 then
                  memo_erros.Lines.Add('REGISTRO C170 Base Calc. Cofins Negativa: '+FormatFloat(mcasas, query_c170.FieldbyName('VL_BC_COFINS').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString
                                 +' Cliente/Fornecedor: '+query_c100.FieldbyName('COD_PART').AsString
                                 );

               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_COFINS').FieldName,query_c170.fieldbyName('ALIQ_COFINS').AsString);
               if (query_c170.fieldbyName('ALIQ_COFINS').Asfloat<0) OR (query_c170.fieldbyName('ALIQ_COFINS').Asfloat>30)  then
                  memo_erros.Lines.Add('REGISTRO C170 Aliquota Cofins invalida : '+FormatFloat(mcasas, query_c170.FieldbyName('ALIQ_COFINS').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString
                                 +' Cliente/Fornecedor: '+query_c100.FieldbyName('COD_PART').AsString
                                 );

               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c170.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
               if query_c170.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('QUANT_BC_COFINS').FieldName,query_c170.fieldbyName('QUANT_BC_COFINS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c170.fieldbyName('QUANT_BC_COFINS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if query_c170.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_COFINS_QUANT').FieldName,query_c170.fieldbyName('ALIQ_COFINS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c170.fieldbyName('ALIQ_COFINS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if (query_c170.fieldbyName('VL_COFINS').Asfloat<0) OR (query_c170.fieldbyName('VL_COFINS').Asfloat>query_c170.fieldbyName('VL_ITEM').Asfloat)  then
                  memo_erros.Lines.Add('REGISTRO C170 Valor do Cofins invalida : '+FormatFloat(mcasas, query_c170.FieldbyName('VL_PIS').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString
                                 +' Cliente/Fornecedor: '+query_c100.FieldbyName('COD_PART').AsString
                                 );


               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_COFINS').FieldName,query_c170.fieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('COD_CTA').FieldName,query_c170.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('COD_CTA').AsString+'|';

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_ABAT_NT').FieldName,query_c170.fieldbyName('VL_ABAT_NT').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_ABAT_NT').AsFloat)+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c170.Next;
               end;
            query_c170.Close;
            end;
         // TERMINO adentação registro C188

         fAbrirReg190(query_c100.fieldbyName('IND_EMIT').AsInteger,
                      query_c100.fieldbyName('CODEMP').Asfloat,
                      query_c100.fieldbyName('LOTSEQ').Asfloat,
                      query_c100.fieldbyName('CHAVE').Asfloat,
                      query_c100.fieldbyName('ORDEM').Asfloat);



         // INICIO adentação registro C190
         mTabNivel_02:='TAB_C190';
         if not query_c190.Eof then
            begin
            while not query_c190.Eof do
               begin
               mLInha:='|C190'; //1                                          
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C190:=mQtdRegBloco_C190+1;

               if query_c100.fieldbyname('IND_OPER').AsInteger=0 then // entrada
                  mem_E110E110_VL_TOT_CREDITOS.AsFloat:=mem_E110E110_VL_TOT_CREDITOS.AsFloat+
                  (query_c190.FieldbyName('VL_ICMS').AsFloat+query_c190.FieldbyName('ICMS_FRETE').Asfloat)
               else // entao sera saida
                  mem_E110E110_VL_TOT_DEBITOS.AsFloat:=mem_E110E110_VL_TOT_DEBITOS.AsFloat+
                  (query_c190.FieldbyName('VL_ICMS').AsFloat+query_c190.FieldbyName('ICMS_FRETE').Asfloat);


               mLInha:=mLinha+'|'+FormatFloat('000', valint(query_c190.fieldbyName('CST_ICMS').AsString));             //10
               mLInha:=mLInha+'|'+query_c190.fieldbyName('CFOP').AsString //3
                        +'|'+FormatFloat('##0.00',query_c190.fieldbyName('ALIQ_ICMS').AsFloat) //4
                        +'|'+FormatFloat('##0.00',(query_c190.fieldbyName('VL_OPR').AsFloat+query_c190.fieldbyName('VL_IPI').AsFloat
                                                   +query_c190.fieldbyName('VL_ICMS_ST').AsFloat)
                        +IIF(query_c190.fieldbyName('ICMS_FRETE').Asfloat>0,query_c190.fieldbyName('VALOR_FRETE').AsFloat,0) ); //5


              if (query_c190.FieldbyName('ALIQ_ICMS').AsFloat=0) and
             ( (copy(query_c190.FieldbyName('CST_ICMS').AsString,2,2)='10') or
               (copy(query_c190.FieldbyName('CST_ICMS').AsString,2,2)='00') or
               (copy(query_c190.FieldbyName('CST_ICMS').AsString,2,2)='20') or
               (copy(query_c190.FieldbyName('CST_ICMS').AsString,2,2)='70') ) then
             mLInha:=mLInha+'|'+FormatFloat('##0.00',0)+'|'+FormatFloat('##0.00',0) // 7
          else
             mLInha:=mLInha+'|'+FormatFloat('##0.00',query_c190.FieldbyName('VL_BC_ICMS').AsFloat
             +IIF(query_c190.FieldbyName('ICMS_FRETE').Asfloat>0,Query_c190.FieldbyName('VALOR_FRETE').AsFloat,0)) // 6
                     +'|'+FormatFloat('##0.00',query_c190.FieldbyName('VL_ICMS').AsFloat+query_c190.FieldbyName('ICMS_FRETE').Asfloat); // 7


          mLInha:=mLInha+'|'+FormatFloat('##0.00',query_c190.FieldbyName('VL_BC_ICMS_ST').asfloat) // 8
                +'|'+FormatFloat('##0.00',query_c190.FieldbyName('VL_ICMS_ST').asfloat); // 9             ]

          if query_c190.FieldbyName('VL_BC_ICMS').AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Base Calc. Icms Negativa: '+FormatFloat(mcasas, query_c100.FieldbyName('VL_BC_ICMS').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString);

          if query_c190.FieldbyName('VL_ICMS').AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor do Icms Negativa: '+FormatFloat(mcasas, query_c100.FieldbyName('VL_ICMS').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString);

          if query_c190.FieldbyName('VL_BC_ICMS_ST').AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Base Calc. Icms ST Negativa: '+FormatFloat(mcasas, query_c100.FieldbyName('VL_BC_ICMS_ST').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString);


          if query_c190.FieldbyName('VL_ICMS_ST').AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor do ICMS ST Negativa: '+FormatFloat(mcasas, query_c100.FieldbyName('VL_ICMS_ST').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString);





// inicio dos registros e200


//IND_MOV
//                         mem_e210E210_IND_MOV_ST.Value         :='1'

          if query_c190.FieldbyName('VL_ICMS_ST').AsFloat>0 then
             begin
             if not mem_e200.Locate('E200_UF',query_c100.fieldbyName('UF').AsString,[]) then
                begin
                mem_e200.Append;
                mem_e200E200_UF.Value    :=query_c100.fieldbyName('UF').AsString;
                mem_e200E200_DT_INI.Value:=edt_datini.Date;
                mem_e200E200_DT_FIN.Value:=edt_datfin.Date;
                mem_e200.Post;
                end;
             if not mem_e210.Locate('E210_UF',query_c100.fieldbyName('UF').AsString,[]) then
                begin
                mem_e210.Append;
                mem_e210E210_IND_MOV_ST.Value         :='1';
                mem_e210E210_VL_SLD_CRED_ANT_ST.Value :=0;
                mem_e210E210_VL_DEVOL_ST.Value        :=0;
                mem_e210E210_VL_RESSARC_ST.Value      :=0;
                mem_e210E210_VL_OUT_CRED_ST.Value     :=0;
                mem_e210E210_VL_AJ_CREDITOS_ST.Value  :=0;
                mem_e210E210_VL_RETENAO_ST.Value      :=0;
                mem_e210E210_VL_OUT_DEB_ST.Value      :=0;
                mem_e210E210_VL_AJ_DEBITOS_ST.Value   :=0;
                mem_e210E210_VL_SLD_DEV_ANT_ST.Value  :=0;
                mem_e210E210_VL_DEDUCOES_ST.Value     :=0;
                mem_e210E210_VL_OUT_CRED_ST.Value     :=0;
                mem_e210E210_VL_ICMS_RECOL_ST.Value   :=0;
                mem_e210E210_VL_SLD_CRED_ST_TRAN.Value:=0;
                mem_e210E210_DEB_ESP_ST.Value         :=0;
                mem_e210E210_UF.Value                 :=query_c100.fieldbyName('UF').AsString;
                mem_e210.post;
                end;

             if query_c190.fieldbyName('VL_ICMS_ST').AsFloat>0 then
                begin
                if query_c100.fieldbyName('IND_OPER').AsInteger=0 then
                   begin
                   if (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1410') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1411') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1414') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1415') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1660') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1661') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1662') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2410') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2411') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2414') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2415') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2660') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2661') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2662') then
                      begin
                      mem_e210.edit;
//                      if query_c190.fieldbyName('VL_ICMS_ST').AsFloat>0 then
                         mem_e210E210_IND_MOV_ST.Value         :='1';
//                      else
//                         mem_e210E210_IND_MOV_ST.Value         :='0';
                      mem_e210E210_VL_DEVOL_ST.Value          :=mem_e210E210_VL_DEVOL_ST.Value+query_c190.fieldbyName('VL_ICMS_ST').AsFloat;
                      mem_e210.Post;
                      end
                   end
                else
                   begin
                   if (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,1)='5') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,1)='6') then
                      begin
                      mem_e210.edit;
                      mem_e210E210_IND_MOV_ST.Value         :='1';
                      mem_e210E210_VL_RETENAO_ST.Value      :=mem_e210E210_VL_RETENAO_ST.Value+query_c190.fieldbyName('VL_ICMS_ST').AsFloat;
                      mem_e210.Post;
                      end;
                   end;
// inicio


                if (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1410') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1411') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1414') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1415') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1660') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1661') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='1662') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2410') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2411') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2414') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2415') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2660') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2661') or
                   (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,4)='2662') then
                else
                   begin
                   if (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,1)='1') or
                      (copy(formatFloat('0000', query_c100.fieldbyName('CFOP').AsFloat),1,1)='2') then
                      begin
                      mem_e210.edit;
                      mem_e210E210_IND_MOV_ST.Value         :='1';
                      mem_e210E210_VL_OUT_CRED_ST.Value      :=mem_e210E210_VL_OUT_CRED_ST.Value+query_c190.fieldbyName('VL_ICMS_ST').AsFloat;
                      mem_e210.Post;
                      end;
                   end;

// termino
                end;
             end;
// termino dos registros e 200




          if query_c190.FieldbyName('VL_RED_BC').AsFloat<0 then
             memo_erros.Lines.Add('REGISTRO C190 Valor da Redução BC Negativa: '+FormatFloat(mcasas, query_c190.FieldbyName('VL_RED_BC').asfloat)
                                 +' NF: '+query_c100.fieldbyName('NUM_DOC').AsString+' Data: '+FormatDateTime(fdt2, query_c100.fieldbyName('DT_DOC').AsDateTime)
                                 +' Chave Pedido: '+query_c100.FieldbyName('CHAVE').AsString+' CFOP: '+query_c100.FieldbyName('CFOP').AsString);



//          if (Copy(query_c190.FieldbyName('CST_ICMS.AsString,2,2)='20') or (Copy(query_c190.FieldbyName('CST_ICMS.AsString,2,2)='70') then
//            begin
{
            if ((copy(query_c190.FieldbyName('CST_ICMS').Value,2,2)='20') or
               (copy(query_c190.FieldbyName('CST_ICMS').Value,2,2)='70')) and
               (query_c190.FieldbyName('VL_RED_BC').AsFloat=0) then
               begin
               if fSonumero(query_c190.FieldbyName('CFOP').AsString)<5000 then
                  mcinst:=' de Entrada'
               else
                  mcinst:=' de Saida';

               if fSonumero(query_c190.FieldbyName('CFOP').AsString)<5000 then
                  begin
                  memo_erros.Lines.Add('Nota '+mcinst+' Numero: '+query_c100.FieldbyName('NUM_DOC').AsString+' Data: '
                            +FormatDateTime(fdt2, query_c100.FieldbyName('DT_DOC').AsDateTime)
                            +' possui item com CST: '+query_c190.FieldbyName('CST_ICMS').Value
                            +' e Redução de ICMS = 0. É invalido!'
                            +' Chave do Pedido: '+query_c100.FieldbyName('CHAVE').AsString);
                  if query_c190.FieldbyName('ALIQ_ICMS').AsFloat=0 then
                     begin
                     memo_erros.Lines.Add('Nota '+mcinst+' Numero: '+query_c100.FieldbyName('NUM_DOC').AsString+' Data: '
                            +FormatDateTime(fdt2, query_c100.FieldbyName('DT_DOC').AsDateTime)
                            +' possui item com CST: '+query_c190.FieldbyName('CST_ICMS').Value
                            +' e Redução Aliquota de ICMS = 0. É invalido!'
                            +' Chave do Pedido: '+query_c100.FieldbyName('CHAVE').AsString);
                     end;
                  end;
               end;

}
            mLInha:=mLInha+'|'+FormatFloat('##0.00',query_c190.FieldbyName('VL_RED_BC').AsFloat); // 10

            if (copy(formatfloat('0000',query_c190.FieldbyName('CFOP').AsFloat),1,1)='1') or
               (copy(formatfloat('0000',query_c190.FieldbyName('CFOP').AsFloat),1,1)='2') then
               mRestoCFOP:=valint(copy(formatfloat('0000',query_c190.FieldbyName('CFOP').AsFloat),2,3));
              { if (mRestoCFOP<>410) and
                  (mRestoCFOP<>411) and
                  (mRestoCFOP<>414) and
                  (mRestoCFOP<>415) and
                  (mRestoCFOP<>660) and
                  (mRestoCFOP<>661) and
                  (mRestoCFOP<>662) then}

             mLInha:=mLInha+'|'+FormatFloat('##0.00',query_c190.FieldbyName('VL_IPI').AsFloat) // 11
              +'|'+query_c190.FieldbyName('COD_OBS').AsString
              +'|'; // 12



               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c190.Next;
               end;

            query_c190.Close;
            end;
         // TERMINO adentação registro C190
         end;
      query_c100.Next;
      end;
   query_c100.Close;
  end;
{
// nao foram criados os registros c300 nota fiscal feita a mao modelo 02
// e tambem 0 registro do tipo 400 que é cupom fiscal

// inicio c300


// nota feito no bloco

query_c300.Close;
query_c300.SQL.Clear;
query_c300.SQL.Add('Select NSMODELO AS COD_MOD'
                     +'      ,NSSERIE AS SER '
                     +'      ,NSDTEMIS AS DT_DOC '
                     +'      ,NSSUBSER AS SUBSER '
                     +'      ,min(NSNUMERO) AS NUM_DOC_INI '
                     +'      ,max(NSNUMERO) AS NUM_DOC_FIN '
                     +'      ,sum(NSTOTNOTA) AS VL_DOC '
                     +'      ,0 AS VL_PIS '
                     +'      ,0 AS VL_COFINS '
                     +'      ,'+Quotedstr(' ')+' AS CODCTA '
                     +'      FROM CADNS where NSCODEMP='+IntTostr(codemp)
                    +' and  NSSTATUS<8 ');
if fsonumero(edt_datini.Text)<>0  then
   query_c300.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_c300.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));

query_c300.SQL.Add(' and NSNUMERO>0');
query_c300.SQL.Add(' and NSMODELO<>'+chr(39)+'55'+chr(39));

query_c300.SQL.Add(' Group by NSMODELO,NSSERIE,NSDTEMIS,NSSUBSER ');

try
   query_c300.Open;
except
    on E : Exception do
      begin
      ex_erroSql_Novo(Qr_C300_Notas,7526,'_sped_efd '+E.Message,'CADNS');
      end;
   end;



//termino 300






query_c400.close;
query_c400.SQL.Clear;
query_c400.SQL.Add('select RPAD('+QuotedStr('.')+',02,'+QuotedStr(' ')+') AS COD_MOD,RPAD('+QuotedStr('.')+',20,'+QuotedStr(' ')+') AS ECF_MOD '
                  +',RPAD('+QuotedStr('.')+',20,'+QuotedStr(' ')+') AS ECF_FAB,0 AS ECF_CX '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c400.Open;
except
   end;

// INICIO adentação registro C400
mTabNivel_02:='TAB_C400';
if not query_c400.Eof  then
   begin
   while not query_c400.Eof do
      begin
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C400:=mQtdRegBloco_C400+1;
      mLinha:='|';
      mLinha:=mLinha+'C400|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c400.fieldbyName('COD_MOD').FieldName,query_c400.fieldbyName('COD_MOD').AsString);
      mLinha:=mLinha+query_c400.fieldbyName('COD_MOD').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c400.fieldbyName('ECF_MOD').FieldName,query_c400.fieldbyName('ECF_MOD').AsString);
      mLinha:=mLinha+query_c400.fieldbyName('ECF_MOD').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c400.fieldbyName('ECF_FAB').FieldName,query_c400.fieldbyName('ECF_FAB').AsString);
      mLinha:=mLinha+query_c400.fieldbyName('ECF_FAB').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c400.fieldbyName('ECF_CX').FieldName,query_c400.fieldbyName('ECF_CX').AsString);
      mLinha:=mLinha+query_c400.fieldbyName('ECF_CX').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c400.Next;
      end;
   query_c400.Close;
   end;
// TERMINO adentação registro C400

query_c405.close;
query_c405.SQL.Clear;
query_c405.SQL.Add('select SYSDATE AS DT_DOC,0 AS CRO,0 AS CRZ '
                  +',0 AS NUM_COO_FIN,0 AS GT_FIN,0 AS VL_BRT '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c405.Open;
except
   end;

// INICIO adentação registro C405
mTabNivel_02:='TAB_C405';
if not query_c405.Eof then
   begin
   while not query_c405.Eof do
      begin
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C405:=mQtdRegBloco_C405+1;
      mLinha:='|';
      mLinha:=mLinha+'C405|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c405.fieldbyName('DT_DOC').FieldName,query_c405.fieldbyName('DT_DOC').AsString);
      mLinha:=mLinha+FormatdateTime(fdt_efd,query_c405.fieldbyName('DT_DOC').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c405.fieldbyName('CRO').FieldName,query_c405.fieldbyName('CRO').AsString);
      mLinha:=mLinha+query_c405.fieldbyName('CRO').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c405.fieldbyName('CRZ').FieldName,query_c405.fieldbyName('CRZ').AsString);
      mLinha:=mLinha+query_c405.fieldbyName('CRZ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c405.fieldbyName('NUM_COO_FIN').FieldName,query_c405.fieldbyName('NUM_COO_FIN').AsString);
      mLinha:=mLinha+query_c405.fieldbyName('NUM_COO_FIN').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c405.fieldbyName('GT_FIN').FieldName,query_c405.fieldbyName('GT_FIN').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c405.fieldbyName('GT_FIN').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c405.fieldbyName('VL_BRT').FieldName,query_c405.fieldbyName('VL_BRT').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c405.fieldbyName('VL_BRT').AsFloat)+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c405.Next;
      end;
   query_c405.Close;
   end;
// TERMINO adentação registro C405

query_c481.close;
query_c481.SQL.Clear;
query_c481.SQL.Add('select '+QuotedStr('99')+' AS CST_PIS,0 AS VL_ITEM ,0 AS VL_BC_PIS '
                  +',0 AS ALIQ_PIS,0 AS QUANT_BC_PIS,0 AS ALIQ_PIS_QUANT '
                  +',0 AS VL_PIS,RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_ITEM'
                  +',RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c481.Open;
except
   end;

// INICIO adentação registro C481
mTabNivel_02:='TAB_C481';
if not query_c481.Eof then
   begin
   while not query_c481.Eof do

      begin
      fTestarR0200(query_C481.fieldbyName('COD_ITEM').AsString);

      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C481:=mQtdRegBloco_C481+1;
      mLinha:='|';
      mLinha:=mLinha+'C481|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('CST_PIS').FieldName,query_c481.fieldbyname('CST_PIS').AsString);
      mLinha:=mLinha+query_c481.fieldbyname('CST_PIS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('VL_ITEM').FieldName,query_c481.fieldbyname('VL_ITEM').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c481.fieldbyname('VL_ITEM').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('VL_BC_PIS').FieldName,query_c481.fieldbyname('VL_BC_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c481.fieldbyname('VL_BC_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('ALIQ_PIS').FieldName,query_c481.fieldbyname('ALIQ_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c481.fieldbyname('ALIQ_PIS').AsFloat)+'|';
      if query_c481.fieldbyname('QUANT_BC_PIS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('QUANT_BC_PIS').FieldName,query_c481.fieldbyname('QUANT_BC_PIS').AsString);
        mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c481.fieldbyname('QUANT_BC_PIS').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;

      if query_c481.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('ALIQ_PIS_QUANT').FieldName,query_c481.fieldbyname('ALIQ_PIS_QUANT').AsString);
        mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c481.fieldbyname('ALIQ_PIS_QUANT').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('VL_PIS').FieldName,query_c481.fieldbyname('VL_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c481.fieldbyname('VL_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('COD_ITEM').FieldName,query_c481.fieldbyname('COD_ITEM').AsString);
      mLinha:=mLinha+query_c481.fieldbyname('COD_ITEM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c481.fieldbyname('COD_CTA').FieldName,query_c481.fieldbyname('COD_CTA').AsString);
      mLinha:=mLinha+query_c481.fieldbyname('COD_CTA').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c481.Next;
      end;
   query_c481.Close;
   end;
// TERMINO adentação registro C481

query_c485.close;
query_c485.SQL.Clear;
query_c485.SQL.Add('select '+QuotedStr('99')+' AS CST_COFINS ,0 AS VL_ITEM,0 AS VL_BC_COFINS '
                  +',0 AS ALIQ_COFINS,0 AS QUANT_BC_COFINS,'
                  +'0 AS ALIQ_COFINS_QUANT,0 AS VL_COFINS '
                  +' ,RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_ITEM '
                  +',RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c485.Open;
except
   end;

// INICIO adentação registro C485
mTabNivel_02:='TAB_C485';
if not query_c485.eof then
   begin
   while not query_c485.Eof do

      begin
       fTestarR0200(query_C481.FieldbyName('COD_ITEM').AsString);

      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C485:=mQtdRegBloco_C485+1;
      mLinha:='|';
      mLinha:=mLinha+'C485|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('CST_COFINS').FieldName,query_c485.fieldbyName('CST_COFINS').AsString);
      mLinha:=mLinha+query_c485.fieldbyName('CST_COFINS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('VL_ITEM').FieldName,query_c485.fieldbyName('VL_ITEM').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c485.fieldbyName('VL_ITEM').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('VL_BC_COFINS').FieldName,query_c485.fieldbyName('VL_BC_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c485.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('ALIQ_COFINS').FieldName,query_c485.fieldbyName('ALIQ_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c485.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
      if query_c485.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('QUANT_BC_COFINS').FieldName,query_c485.fieldbyName('QUANT_BC_COFINS').AsString);
        mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c485.fieldbyName('QUANT_BC_COFINS').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      if query_c485.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('ALIQ_COFINS_QUANT').FieldName,query_c485.fieldbyName('ALIQ_COFINS_QUANT').AsString);
        mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c485.fieldbyName('ALIQ_COFINS_QUANT').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('VL_COFINS').FieldName,query_c485.fieldbyName('VL_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c485.fieldbyName('VL_COFINS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('COD_ITEM').FieldName,query_c485.fieldbyName('COD_ITEM').AsString);
      mLinha:=mLinha+query_c485.fieldbyName('COD_ITEM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c485.fieldbyName('COD_CTA').FieldName,query_c485.fieldbyName('COD_CTA').AsString);
      mLinha:=mLinha+query_c485.fieldbyName('COD_CTA').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c485.Next;
      end;
   query_c485.Close;
   end;
// TERMINO adentação registro C485


query_c489.close;
query_c489.SQL.Clear;
query_c489.SQL.Add('select RPAD('+QuotedStr('.')+',20,'+QuotedStr('.')+') AS NUM_PROC ,'+QuotedStr('1')+' AS IND_PROC '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c489.Open;
except
   end;

// INICIO adentação registro C489
mTabNivel_02:='TAB_C489';
if not query_c489.Eof then
   begin
   while not query_c489.Eof do
      begin
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C489:=mQtdRegBloco_C489+1;
      mLinha:='|';
      mLinha:=mLinha+'C489|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c489.fieldbyName('NUM_PROC').FieldName,query_c489.fieldbyName('NUM_PROC').AsString);
      mLinha:=mLinha+query_c489.fieldbyName('NUM_PROC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c489.fieldbyName('IND_PROC').FieldName,query_c489.fieldbyName('IND_PROC').AsString);
      mLinha:=mLinha+query_c489.fieldbyName('IND_PROC').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c489.Next;
      end;
   query_c489.Close;
   end;
// TERMINO adentação registro C489


query_c490.close;
query_c490.SQL.Clear;
query_c490.SQL.Add('select SYSDATE AS DT_DOC_INI,SYSDATE AS DT_DOC_FIN '
                  +','+QuotedStr('00')+' AS COD_MOD '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c490.Open;
except
   end;

// INICIO adentação registro C490
mTabNivel_02:='TAB_C490';
if not query_c490.eof  then
   begin
   while not query_c490.Eof do
      begin
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C490:=mQtdRegBloco_C490+1;
      mLinha:='|';
      mLinha:=mLinha+'C490|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c490.fieldbyName('DT_DOC_INI').FieldName,query_c490.fieldbyName('DT_DOC_INI').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, query_c490.fieldbyName('DT_DOC_INI').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c490.fieldbyName('DT_DOC_FIN').FieldName,query_c490.fieldbyName('DT_DOC_FIN').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, query_c490.fieldbyName('DT_DOC_FIN').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c490.fieldbyName('COD_MOD').FieldName,query_c490.fieldbyName('COD_MOD').AsString);
      mLinha:=mLinha+query_c490.fieldbyName('COD_MOD').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c490.Next;
      end;
   query_c490.Close;
   end;
// TERMINO adentação registro C490

query_c491.close;
query_c491.SQL.Clear;
query_c491.SQL.Add('select RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_ITEM,'+QuotedStr('99')+' AS CST_PIS '
                  +',0 AS CFOP,0 AS VL_ITEM,0 AS VL_BC_PIS,0 AS ALIQ_PIS '
                  +',0 AS QUANT_BC_PIS,0 AS ALIQ_PIS_QUANT,0 AS VL_PIS '
                  +',RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c491.Open;
except
   end;

// INICIO adentação registro c491
mTabNivel_02:='TAB_c491';
if not query_c491.Eof then
   begin
   while not query_c491.Eof do
      begin
      fTestarR0200(query_C491.fieldbyName('COD_ITEM').AsString);
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_c491:=mQtdRegBloco_c491+1;
      mLinha:='|';
      mLinha:=mLinha+'c491|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('COD_ITEM').FieldName,query_c491.fieldbyName('COD_ITEM').AsString);
      mLinha:=mLinha+query_c491.fieldbyName('COD_ITEM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('CST_PIS').FieldName,query_c491.fieldbyName('CST_PIS').AsString);
      mLinha:=mLinha+query_c491.fieldbyName('CST_PIS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('CFOP').FieldName,query_c491.fieldbyName('CFOP').AsString);
      mLinha:=mLinha+query_c491.fieldbyName('CFOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('VL_ITEM').FieldName,query_c491.fieldbyName('VL_ITEM').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c491.fieldbyName('VL_ITEM').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('VL_BC_PIS').FieldName,query_c491.fieldbyName('VL_BC_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c491.fieldbyName('VL_BC_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('ALIQ_PIS').FieldName,query_c491.fieldbyName('ALIQ_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c491.fieldbyName('ALIQ_PIS').AsFloat)+'|';
      if query_c491.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('QUANT_BC_PIS').FieldName,query_c491.fieldbyName('QUANT_BC_PIS').AsString);
        mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c491.fieldbyName('QUANT_BC_PIS').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;

      if query_c491.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('ALIQ_PIS_QUANT').FieldName,query_c491.fieldbyName('ALIQ_PIS_QUANT').AsString);
        mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c491.fieldbyName('ALIQ_PIS_QUANT').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('VL_PIS').FieldName,query_c491.fieldbyName('VL_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c491.fieldbyName('VL_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c491.fieldbyName('COD_CTA').FieldName,query_c491.fieldbyName('COD_CTA').AsString);
      mLinha:=mLinha+query_c491.fieldbyName('COD_CTA').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c491.Next;
      end;
   query_c491.Close;
   end;
// TERMINO adentação registro c491


query_c495.close;
query_c495.SQL.Clear;
query_c495.SQL.Add('select RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_ITEM,'+QuotedStr('99')+' AS CST_COFINS '
                  +',0 AS CFOP,0 AS VL_ITEM,0 AS VL_BC_COFINS,0 AS ALIQ_COFINS '
                  +',0 AS QUANT_BC_COFINS,0 AS ALIQ_COFINS_QUANT,0 AS VL_COFINS '
                  +',RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c495.Open;
except
   end;


// INICIO adentação registro c495
mTabNivel_02:='TAB_c495';
if not query_c495.eof  then
   begin
   while not query_c495.Eof do
      begin
      fTestarR0200(query_C491.fieldbyName('COD_ITEM').AsString);

      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_c495:=mQtdRegBloco_c495+1;
      mLinha:='|';
      mLinha:=mLinha+'c495|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('COD_ITEM').FieldName,query_c495.fieldbyName('COD_ITEM').AsString);
      mLinha:=mLinha+query_c495.fieldbyName('COD_ITEM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('CST_COFINS').FieldName,query_c495.fieldbyName('CST_COFINS').AsString);
      mLinha:=mLinha+query_c495.fieldbyName('CST_COFINS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('CFOP').FieldName,query_c495.fieldbyName('CFOP').AsString);
      mLinha:=mLinha+query_c495.fieldbyName('CFOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('VL_ITEM').FieldName,query_c495.fieldbyName('VL_ITEM').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c495.fieldbyName('VL_ITEM').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('VL_BC_COFINS').FieldName,query_c495.fieldbyName('VL_BC_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c495.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('ALIQ_COFINS').FieldName,query_c495.fieldbyName('ALIQ_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c495.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
      if query_c495.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('QUANT_BC_COFINS').FieldName,query_c495.fieldbyName('QUANT_BC_COFINS').AsString);
        mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c495.fieldbyName('QUANT_BC_COFINS').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      if query_c495.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('ALIQ_COFINS_QUANT').FieldName,query_c495.fieldbyName('ALIQ_COFINS_QUANT').AsString);
        mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c495.fieldbyName('ALIQ_COFINS_QUANT').AsFloat)+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('VL_COFINS').FieldName,query_c495.fieldbyName('VL_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c495.fieldbyName('VL_COFINS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c495.fieldbyName('COD_CTA').FieldName,query_c495.fieldbyName('COD_CTA').AsString);
      mLinha:=mLinha+query_c495.fieldbyName('COD_CTA').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c495.Next;
      end;
   query_c495.Close;
   end;
// TERMINO adentação registro c495


query_c499.close;
query_c499.SQL.Clear;
query_c499.SQL.Add('select RPAD('+QuotedStr('.')+',20,'+QuotedStr('.')+') AS NUM_PROC,'+QuotedStr('1')+' AS IND_PROC '
                  +' FROM CADNS '
                  +' WHERE NSNUMERO=-999999');

try
   query_c499.Open;
except
   end;


// INICIO adentação registro c499
mTabNivel_02:='TAB_c499';
if not query_c499.eof then
   begin
   while not query_c499.Eof do
      begin
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_c499:=mQtdRegBloco_c499+1;
      mLinha:='|';
      mLinha:=mLinha+'c499|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c499.fieldbyName('NUM_PROC').FieldName,query_c499.fieldbyName('NUM_PROC').AsString);
      mLinha:=mLinha+query_c499.fieldbyName('NUM_PROC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c499.fieldbyName('IND_PROC').FieldName,query_c499.fieldbyName('IND_PROC').AsString);
      mLinha:=mLinha+query_c499.fieldbyName('IND_PROC').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c499.Next;
      end;
   query_c499.Close;
   end;
// TERMINO adentação registro c499

 }






query_c500.Close;
query_c500.SQL.clear;
query_c500.SQL.add(' Select 0 IND_OPER ,1 AS IND_EMIT,'+QuotedStr('F')+'||NECODFOR AS COD_PART '
                       +' ,NeMODELO AS COD_MOD ,DECODE(NESTATUS,9,'+QuotedStr('02')+','+QuotedStr('00')+') AS COD_SIT'
                       +'    ,NESERIE AS SER '
                        +'   ,NESUBSER AS SUB '
                       +'    ,NEENERGIA_COD_CONS AS COD_CONS '
                      +'     ,NENUMERO AS NUM_DOC '
                      +'     ,NEDTEMIS AS DT_DOC '
                     +'      ,NEDTENT AS DT_E_S '
                     +'      ,NETOTNOT AS VL_DOC '
                      +'     , 0 as VL_DESC '
                      +'     ,NETOTNOT AS VL_FORN '
                      +'     ,NEOUTNINC AS VL_SERV_NT '
                      +'     ,0 AS VL_TERC '
                     +'      ,NEOUTDESP AS VL_DA '
                     +'      ,NEBASEN AS VL_BC_ICMS '
                     +'      ,NEICMSN AS VL_ICMS '
                     +'      ,NEBASER AS VL_BC_ICMS_ST '
                     +'      ,NEICMSR AS VL_ICMS_ST '
                     +'      ,'+QuotedStr('     ')+' AS COD_INF '
                    +'       ,NEVL_PIS AS VL_PIS '
                    +'       ,NEVL_COFINS AS VL_COFINS '
                    +'       ,'+QuotedStr('     ')+' AS COD_CTA '
                   +'        ,NEENERGIA_TP_LIGACAO AS TP_LIGACAO '
                   +'        ,NEENERGIA_GRUPO_TENSAO AS COD_GRUPO_TENSAO '
                   +'        ,'+QuotedStr('000')+' AS C590_CST_ICMS '
                   +'        ,NECFO AS C590_CFOP '
                   +'        ,NEALIQ AS C590_ALIQ_ICMS '
                   +'        ,NETOTNOT AS C590_VL_OPR '
                   +'        ,NEBASEN AS C590_VL_BC_ICMS '
                   +'        ,NEICMSN AS C590_VL_ICMS '
                   +'        ,NEBASER AS C590_VL_BC_ICMS_ST '
                   +'        ,NEICMSR AS C590_VL_ICMS_ST '
                   +'        ,NEOUTNINC AS C590_VL_RED_BC '
                   +'        ,'+QuotedStr('     ')+' AS C590_COD_OBS '
                    +'       ,NECODEMP AS CODEMP '
                    +'       ,NELOTSEQ_CP AS LOTSEQ '
                     +'      ,NECHAVEP AS CHAVE '
                     +'      ,0 AS ORDEM '
                    +'       FROM CADNE where NESTATUS<>-9 '
                    +' and NEMODELO<>'+QuotedStr('56')


                         +'  and NECODEMP=0'+IntToStr(codemp));

if fsonumero(edt_datini.Text)<>0  then
   query_c500.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));

if fsonumero(edt_datfin.Text)<>0  then
   query_c500.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));

// temporario


if fsonumero(edt_datini_filtro.Text)<>0 then
   query_c500.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_c500.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));

// termino temporario


if fsonumero(edt_datfin.Text)<>0 then
query_c500.SQL.Add(' and (NECFO=1252 OR NECFO=1253 or NECFO=2252 OR NECFO=2253  ) ');

try
   query_c500.Open;
except
   query_c500.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qrc500',mtError,[mbOk],0);
   exit;
   end;

try
   query_c500.Open;
except
   end;

// INICIO adentação registro C500
mTabNivel_02:='TAB_C500';
if (not query_c500.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not query_c500.Eof do
      begin
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C500:=mQtdRegBloco_C500+1;
      if query_c500.FieldByName('COD_SIT').AsInteger<>2 then
         fTestarCliFor(query_C500.fieldbyName('COD_PART').AsString);
      mLinha:='|';
      mLinha:=mLinha+'C500|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('COD_PART').FieldName,query_c500.fieldbyName('COD_PART').AsString);
      mLinha:=mLinha+query_c500.fieldbyName('COD_PART').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('COD_MOD').FieldName,query_c500.fieldbyName('COD_MOD').AsString);
      mLinha:=mLinha+query_c500.fieldbyName('COD_MOD').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('COD_SIT').FieldName,query_c500.fieldbyName('COD_SIT').AsString);
      mLinha:=mLinha+query_c500.fieldbyName('COD_SIT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('SER').FieldName,query_c500.fieldbyName('SER').AsString);
      mLinha:=mLinha+trim(query_c500.fieldbyName('SER').AsString)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('SUB').FieldName,query_c500.fieldbyName('SUB').AsString);
      mLinha:=mLinha+query_c500.fieldbyName('SUB').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('NUM_DOC').FieldName,query_c500.fieldbyName('NUM_DOC').AsString);
      mLinha:=mLinha+query_c500.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('DT_DOC').FieldName,query_c500.fieldbyName('DT_DOC').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, query_c500.fieldbyName('DT_DOC').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('DT_E_SAI').FieldName,query_c500.fieldbyName('DT_ENT').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, query_c500.fieldbyName('DT_E_SAI').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('VL_DOC').FieldName,query_c500.fieldbyName('VL_DOC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c500.fieldbyName('VL_DOC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('VL_ICMS').FieldName,query_c500.fieldbyName('VL_ICMS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c500.fieldbyName('VL_ICMS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('COD_INF').FieldName,query_c500.fieldbyName('COD_INF').AsString);
      mLinha:=mLinha+query_c500.fieldbyName('COD_INF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('VL_PIS').FieldName,query_c500.fieldbyName('VL_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c500.fieldbyName('VL_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('VL_COFINS').FieldName,query_c500.fieldbyName('VL_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c500.fieldbyName('VL_COFINS').AsFloat)+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C590:=mQtdRegBloco_C590+1;

      mlinha:='|'+'C590'; //01
      mlinha:=mlinha+'|'+query_c500.fieldbyName('C590_CST_ICMS').asString;
      mLInha:=mlinha+'|'+FormatFloat('0000', query_c500.fieldbyName('C590_CFOP').AsInteger);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', query_c500.fieldbyName('C590_ALIQ_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', query_c500.fieldbyName('C590_VL_OPR').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', query_c500.fieldbyName('C590_VL_BC_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', query_c500.fieldbyName('C590_VL_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', query_c500.fieldbyName('C590_VL_BC_ICMS_ST').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', query_c500.fieldbyName('C590_VL_ICMS_ST').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', query_c500.fieldbyName('C590_VL_RED_BC').AsFloat);
      mLInha:=mlinha+'|'+query_c500.fieldbyName('C590_COD_OBS').AsString;
      mLinha:=mLinha+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);

      query_c500.Next;
      end;
   query_c500.Close;
   end;



if mQtdRegBlocoC<1 then
   begin
   mLinha:='|C001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoC.Add(mLinha);
   mQtdRegBlocoC:=mQtdRegBlocoC+1;
   mQtdRegBloco_C001:=mQtdRegBloco_C001+1;
   end;
mQtdRegBlocoC:=mQtdRegBlocoC+1;
mQtdRegBloco_C990:=mQtdRegBloco_C990+1;
mLinha:='|C990|'+IntToStr(mQtdRegBlocoC)+'|' ; // sem dados

Memo1.Lines.Add(mLinha);
items_lista_BlocoC.Add(mLinha);
result:=true;

end;
// termino do bloco c


function TFrm_SPED_EFD_NOVO.fBlocoD(pOrigem: Integer): Boolean;
var
mTabNivel_02: String;
Query_D100: tQuery;
Query_D500: tQuery;
Query_D509: tQuery;
begin


Query_D100:=tQuery.Create(nil);
Query_D100.DatabaseName:='SG_ASSOC';


Query_D500:=tQuery.Create(nil);
Query_D500.DatabaseName:='SG_ASSOC';



Query_D509:=tQuery.Create(nil);
Query_D509.DatabaseName:='SG_ASSOC';







Query_D100.Close;
Query_D100.SQL.Clear;
Query_D100.SQL.Add(' Select 0 IND_OPER '
                   +'  ,1 AS IND_EMIT '
                   +','+chr(39)+'F'+chr(39)+'||NECODFOR AS COD_PART '
                   +'  ,CASE  WHEN NETIPO=0 THEN '+chr(39)+'01'+chr(39)
                   +'   WHEN NETIPO=1 THEN '+chr(39)+'1B'+chr(39)
                   +'   WHEN NETIPO=2 THEN '+chr(39)+'2D'+chr(39)
                   +'   WHEN NETIPO=5 THEN '+chr(39)+'2E'+chr(39)
                   +'   WHEN NETIPO=12 THEN '+chr(39)+'8B'+chr(39)
                   +'   WHEN NETIPO=1 THEN '+chr(39)+'1B'+chr(39)
                   +' else TO_CHAR(NETIPO) '
                   +' END AS COD_MOD'
                   +',DECODE(NESTATUS,9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+') AS COD_SIT '
                   +'  ,NESERIE AS SER '
                   +'  ,NESUBSER AS SUB '
                   +'  ,NENUMERO AS NUM_DOC '
                   +'  ,NENFE_CHAVE  AS CHV_NFE '
                   +'  ,NEDTEMIS AS DT_DOC '
                   +'  ,NEDTENT AS DT_A_P '
                   +'  ,0 AS TP_CT_E'
                   +'  ,NENFE_CHAVE AS  CHV_CTE_RED '
                   +'  ,NETOTNOT AS VL_DOC '
                   +'  , 0 as VL_DESC '
                   +' ,DECODE(NEFRETE,0,9,NEFRETEPC) AS IND_FRT '
                   +'  ,NEFRETE AS VL_SERV '
                   +'  ,NEBASEN AS VL_BC_ICMS '
                   +'  ,NEICMSN AS VL_ICMS '
                   +'  ,0 AS VL_NT '
                   +'  ,'+chr(39)+'     '+chr(39)+' AS COD_INF '
                   +'  ,'+chr(39)+'     '+chr(39)+' AS COD_CTA '
                   +','+chr(39)+'000'+chr(39)+' AS D190_CST_ICMS '
                   +'  ,NECFO AS D190_CFOP '
                   +'  ,NEALIQ AS D190_ALIQ_ICMS '
                   +'  ,NETOTNOT AS D190_VL_OPR '
                   +'  ,NEBASEN AS D190_VL_BC_ICMS '
                   +'  ,NEICMSN AS D190_VL_ICMS '
                   +'  ,NEOUTNINC AS D190_VL_RED_BC '
                   +' ,'+chr(39)+'   '+chr(39)+' AS D190_COD_OBS '
                   +'  ,NECODEMP AS CODEMP '
                   +'  ,NELOTSEQ_CP AS LOTSEQ '
                   +'  ,NECHAVEP AS CHAVE '
                   +'   ,0 AS ORDEM '
                   +'  FROM CADNE where NECODEMP=0'+IntToStr(codemp)
                                       +' and NEMODELO<>'+QuotedStr('56')
                     );

if fsonumero(edt_datini.Text)<>0 then
   Query_D100.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   Query_D100.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, edt_datfin.Date)+chr(39));

if fsonumero(edt_datini_filtro.Text)<>0 then
   query_D100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_D100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));

Query_D100.SQL.Add(' and (NECFO=1353 OR NECFO=2353  ) ');

try
   Query_D100.Open;
except
   end;


Query_D500.Close;
Query_D500.SQL.Clear;
Query_D500.SQL.Add(' Select 0 IND_OPER  '
                         +' ,1 AS IND_EMIT '
                         +','+chr(39)+'F'+chr(39)+'||NECODFOR AS COD_PART '
                         +'  ,CASE  WHEN NETIPO=0 THEN '+chr(39)+'01'+chr(39)
                         +'   WHEN NETIPO=1 THEN '+chr(39)+'1B'+chr(39)
                         +'   WHEN NETIPO=2 THEN '+chr(39)+'2D'+chr(39)
                         +'   WHEN NETIPO=5 THEN '+chr(39)+'2E'+chr(39)
                         +'   WHEN NETIPO=12 THEN '+chr(39)+'8B'+chr(39)
                         +'   WHEN NETIPO=1 THEN '+chr(39)+'1B'+chr(39)
                         +' else TO_CHAR(NETIPO) '
                         +' END AS COD_MOD'
                         +',DECODE(NESTATUS,9,'+chr(39)+'02'+chr(39)+','+chr(39)+'00'+chr(39)+') AS COD_SIT '
                         +'  ,NESERIE AS SER '
                          +' ,NESUBSER AS SUB  '
                         +'  ,NENUMERO AS NUM_DOC '
                         +'  ,NEDTEMIS AS DT_DOC '
                         +'  ,NEDTENT AS DT_A_P '
                         +'  ,NETOTNOT AS VL_DOC '
                         +'  , 0 as VL_DESC '
                         +'  ,NEFRETE AS VL_SERV '
                         +'  ,NEOUTNINC AS VL_SERV_NT '
                         +'  ,0 AS VL_TERC '
                         +'  ,0 AS VL_DA '
                         +' ,NEBASEN AS VL_BC_ICMS '
                         +'  ,NEICMSN AS VL_ICMS '
                         +' ,'+chr(39)+'     '+chr(39)+' AS COD_INF '
                         +'  ,0 AS VL_PIS '
                         +'  ,0 AS VL_COFINS '
                         +'  ,'+chr(39)+'     '+chr(39)+' AS COD_CTA '
                         +'  ,1 AS TP_ASSINANTE '
                         +','+chr(39)+'000'+chr(39)+' AS D590_CST_ICMS '
                         +',NECFO AS D590_CFOP '
                         +'  ,NEALIQ AS D590_ALIQ_ICMS '
                         +'  ,NETOTNOT AS D590_VL_OPR '
                         +'  ,NEBASEN AS D590_VL_BC_ICMS '
                         +'  ,NEICMSN AS D590_VL_ICMS '
                         +'  ,NEBASER AS D590_VL_BC_ICMS_ST '
                         +'  ,NEICMSR AS D590_VL_ICMS_ST '
                         +'  ,NEOUTNINC AS D590_VL_RED_BC '
                         +'   ,'+chr(39)+'   '+chr(39)+' AS D590_COD_OBS '


                         +'  ,NECODEMP AS CODEMP '
                         +'  ,NELOTSEQ_CP AS LOTSEQ '
                         +'  ,NECHAVEP AS CHAVE '
                         +'  ,0 AS ORDEM '
                         +'  FROM CADNE where NECODEMP=0'+IntToStr(codemp)
                                             +' and NEMODELO<>'+QuotedStr('56')
                          );
if fsonumero(edt_datini.Text)<>0 then
   Query_D500.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, edt_datini.Date)+chr(39));
if trim(edt_datfin.Text)<>'/  /' then
   Query_D500.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, edt_datfin.date)+chr(39));
Query_D500.SQL.Add(' and (NECFO=1303 OR NECFO=2303) ');

if fsonumero(edt_datini_filtro.Text)<>0 then
   query_D500.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_D500.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));

try
   Query_D500.Open;
except
   Query_D500.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrit Qrd500',mtError,[mbOk],0);
   exit;
   end;




if (not query_D100.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|D001|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoD.Add(mLinha);
   mQtdRegBlocoD:=mQtdRegBlocoD+1;
   mQtdRegBloco_D001 :=mQtdRegBloco_D001+1;
   end;

mTabela:='TAB_D100';
if (not Query_D100.Eof) and (not CB_SOH.Checked)  then
   begin
   while not Query_D100.Eof do
      begin
      mQtdRegBlocoD:=mQtdRegBlocoD+1;
      mQtdRegBloco_D100:=mQtdRegBloco_D100+1;
      mLinha:='|';
      mLinha:=mLinha+'D100|';
      if query_d100.FieldByName('COD_SIT').AsInteger<>2 then
         fTestarCliFor(query_D100.fieldbyName('COD_PART').AsString);
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('IND_OPER').FieldName,Query_D100.fieldbyName('IND_OPER').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('IND_OPER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('IND_EMIT').FieldName,Query_D100.fieldbyName('IND_EMIT').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('IND_EMIT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_PART').FieldName,Query_D100.fieldbyName('COD_PART').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_PART').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_MOD').FieldName,Query_D100.fieldbyName('COD_MOD').AsString);
      mLinha:=mLinha+insere(Query_D100.fieldbyName('COD_MOD').AsString,'0',2)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_SIT').FieldName,Query_D100.fieldbyName('COD_SIT').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_SIT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('SER').FieldName,Query_D100.fieldbyName('SER').AsString);
      mLinha:=mLinha+trim(Query_D100.fieldbyName('SER').AsString)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('SUB').FieldName,Query_D100.fieldbyName('SUB').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('SUB').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('NUM_DOC').FieldName,Query_D100.fieldbyName('NUM_DOC').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('CHV_CTE_RED').FieldName,Query_D100.fieldbyName('CHV_CTE_RED').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('CHV_CTE_RED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('DT_DOC').FieldName,Query_D100.fieldbyName('DT_DOC').AsString);
      mLinha:=mLinha+FormatdateTime(fdt_efd, Query_D100.fieldbyName('DT_DOC').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('DT_A_P').FieldName,Query_D100.fieldbyName('DT_A_P').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd,Query_D100.fieldbyName('DT_A_P').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('TP_CT_E').FieldName,Query_D100.fieldbyName('TP_CT_E').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('TP_CT_E').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('CHV_CTE_RED').FieldName,Query_D100.fieldbyName('CHV_CTE_RED').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('CHV_CTE_RED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_DOC').FieldName,Query_D100.fieldbyName('VL_DOC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_DOC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_DESC').FieldName,Query_D100.fieldbyName('VL_DESC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_DESC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('IND_FRT').FieldName,Query_D100.fieldbyName('IND_FRT').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('IND_FRT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_SERV').FieldName,Query_D100.fieldbyName('VL_SERV').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_SERV').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_BC_ICMS').FieldName,Query_D100.fieldbyName('VL_BC_ICMS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_BC_ICMS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_ICMS').FieldName,Query_D100.fieldbyName('VL_ICMS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_ICMS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_NT').FieldName,Query_D100.fieldbyName('VL_NT').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_NT').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_INF').FieldName,Query_D100.fieldbyName('COD_INF').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_INF').AsString+'|';
//      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('COD_INF').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_CTA').FieldName,Query_D100.fieldbyName('COD_CTA').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_CTA').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoD.Add(mLinha);

      mQtdRegBlocoD:=mQtdRegBlocoD+1;
      mQtdRegBloco_D190:=mQtdRegBloco_D190+1;

      mlinha:='|'+'D190'; //01
      mLInha:=mlinha+'|'+Query_D100.fieldbyName('D190_CST_ICMS').AsString;
      mLInha:=mlinha+'|'+FormatFloat('0000', Query_D100.fieldbyName('D190_CFOP').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D100.fieldbyName('D190_ALIQ_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D100.fieldbyName('D190_VL_OPR').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D100.fieldbyName('D190_VL_BC_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D100.fieldbyName('D190_VL_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D100.fieldbyName('D190_VL_RED_BC').AsFloat);
      mLInha:=mlinha+'|'+Query_D100.fieldbyName('D190_COD_OBS').AsString;
      mLInha:=mlinha+'|';

    //LINDOMARAGORA
               if query_d100.fieldbyname('IND_OPER').AsInteger=0 then // entrada
                  mem_E110E110_VL_TOT_CREDITOS.AsFloat:=mem_E110E110_VL_TOT_CREDITOS.AsFloat+
                  (query_D100.FieldbyName('D190_VL_ICMS').Asfloat)
               else // entao sera saida
                  mem_E110E110_VL_TOT_DEBITOS.AsFloat:=mem_E110E110_VL_TOT_DEBITOS.AsFloat-
                  (query_D100.FieldbyName('D190_VL_ICMS').Asfloat);


      Memo1.Lines.Add(mLinha);


      items_lista_BlocoD.Add(mLinha);

      // TERMINO adentação registro D609
      Query_D100.Next;
      end;
   Query_D100.Close;
   end;

// inicio 500


// INICIO adentação registro D500

mTabNivel_02:='TAB_D500';
if (not query_D500.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_D500.Eof do
      begin
      mQtdRegBlocoD:=mQtdRegBlocoD+1;
      mQtdRegBloco_D500:=mQtdRegBloco_D500+1;
      if query_D500.FieldByName('COD_SIT').AsInteger<>2 then
         fTestarCliFor(query_D500.fieldbyName('COD_PART').AsString);
      mLinha:='|';
      mLinha:=mLinha+'D500|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('IND_OPER').FieldName,Query_D500.fieldbyName('IND_OPER').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('IND_OPER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('IND_EMIT').FieldName,Query_D500.fieldbyName('IND_EMIT').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('IND_EMIT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('COD_PART').FieldName,Query_D500.fieldbyName('COD_PART').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('COD_PART').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('COD_MOD').FieldName,Query_D500.fieldbyName('COD_MOD').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('COD_MOD').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('COD_SIT').FieldName,Query_D500.fieldbyName('COD_SIT').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('COD_SIT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('SER').FieldName,Query_D500.fieldbyName('SER').AsString);
      mLinha:=mLinha+trim(Query_D500.fieldbyName('SER').AsString)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('SUB').FieldName,Query_D500.fieldbyName('SUB').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('SUB').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('NUM_DOC').FieldName,Query_D500.fieldbyName('NUM_DOC').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('DT_DOC').FieldName,Query_D500.fieldbyName('DT_DOC').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_D500.fieldbyName('DT_DOC').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('DT_A_P').FieldName,Query_D500.fieldbyName('DT_A_P').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_D500.fieldbyName('DT_A_P').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_DOC').FieldName,Query_D500.fieldbyName('VL_DOC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_DOC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_DESC').FieldName,Query_D500.fieldbyName('VL_DESC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_DESC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_SERV').FieldName,Query_D500.fieldbyName('VL_SERV').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_SERV').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_SERV_NT').FieldName,Query_D500.fieldbyName('VL_SERV_NT').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_SERV_NT').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_TERC').FieldName,Query_D500.fieldbyName('VL_TERC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_TERC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_DA').FieldName,Query_D500.fieldbyName('VL_DA').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_DA').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_BC_ICMS').FieldName,Query_D500.fieldbyName('VL_BC_ICMS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_BC_ICMS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_ICMS').FieldName,Query_D500.fieldbyName('VL_ICMS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_ICMS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('COD_INF').FieldName,Query_D500.fieldbyName('COD_INF').AsString);
      mLinha:=mLinha+Query_D500.fieldbyName('COD_INF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_PIS').FieldName,Query_D500.fieldbyName('VL_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D500.fieldbyName('VL_COFINS').FieldName,Query_D500.fieldbyName('VL_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D500.fieldbyName('VL_COFINS').AsFloat)+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoD.Add(mLinha);

      mQtdRegBlocoD:=mQtdRegBlocoD+1;
      mQtdRegBloco_D590:=mQtdRegBloco_D590+1;

      mlinha:='|'+'D590'; //01
      mlinha:=mlinha+'|'+Query_D500.fieldbyName('D590_CST_ICMS').AsString;
      mLInha:=mlinha+'|'+FormatFloat('0000', Query_D500.fieldbyName('D590_CFOP').AsInteger);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D500.fieldbyName('D590_ALIQ_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D500.fieldbyName('D590_VL_OPR').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D500.fieldbyName('D590_VL_BC_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D500.fieldbyName('D590_VL_ICMS').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D500.fieldbyName('D590_VL_BC_ICMS_ST').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D500.fieldbyName('D590_VL_ICMS_ST').AsFloat);
      mLInha:=mlinha+'|'+FormatFloat('##0.00', Query_D500.fieldbyName('D590_VL_RED_BC').AsFloat);
      mLInha:=mlinha+'|'+Query_D500.fieldbyName('D590_COD_OBS').AsString;
      mLinha:=mLinha+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoD.Add(mLinha);


      Query_D500.Next;
      end;
   Query_D500.Close;
   end;
// TERMINO adentação registro D500






if mQtdRegBlocoD<1 then
   begin
   mLinha:='|D001|1|'; // sem dados
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




Query_D100.Close;
FreeandNil(Query_D100);












Query_D500.Close;
FreeandNil(Query_D500);


Query_D509.Close;
FreeandNil(Query_D509);



result:=true;
end;
//Termino do bloco D

// inicio bloco E
//Inicio Bloco F
function TFrm_SPED_EFD_NOVO.fBlocoE(pOrigem: Integer): Boolean;
var
query_E010: tQuery;

mTabNivel_02: String;
mvaldevol: Real;

begin


mTabela:='tb_E001';
mLinha:='|E001|0|'; // com dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoE.Add(mLinha);
mQtdRegBlocoE:=mQtdRegBlocoE+1;
mQtdRegBloco_E001:=mQtdRegBloco_E001+1;
mLinha:='';

mLinha:='|E100'+'|'+FormatDatetime('ddmmyyyy',edt_datini.Date)+'|'+FormatDatetime('ddmmyyyy',edt_datfin.Date)+'|';




mTabela:='tb_E100';
mLinha:='|E100'+'|'+FormatDatetime('ddmmyyyy',edt_datini.Date)+'|'+FormatDatetime('ddmmyyyy',edt_datfin.Date)+'|';
Memo1.Lines.Add(mLinha);
items_lista_BlocoE.Add(mLinha);
mQtdRegBlocoE:=mQtdRegBlocoE+1;
mQtdRegBloco_E100:=mQtdRegBloco_E100+1;
mLinha:='';




Tb_AjusE111.First;
While not Tb_AjusE111.Eof do
   begin
   if Tb_AjusE111TIPO.AsString = 'C' then
      mem_E110E110_VL_AJ_CREDITOS.Value:=mem_E110E110_VL_AJ_CREDITOS.Value + Tb_AjusE111VALORAJUST.AsFloat
   else
      mem_E110E110_VL_AJ_DEBITOS.Value:=mem_E110E110_VL_AJ_DEBITOS.Value + Tb_AjusE111VALORAJUST.AsFloat;
   Tb_AjusE111.Next;
   end;
mem_e110.fieldbyName('E110_VL_SLD_APURADO').asfloat:=mem_e110.fieldbyName('E110_VL_TOT_DEBITOS').asfloat
                                                       -mem_e110.fieldbyName('E110_VL_TOT_CREDITOS').asfloat;


if mem_e110.fieldbyName('E110_VL_SLD_APURADO').asfloat<0 then
   mem_e110.fieldbyName('E110_VL_SLD_APURADO').asfloat:=0;

mem_e110.fieldbyName('E110_VL_ICMS_RECOLHER').asfloat:=mem_e110.fieldbyName('E110_VL_TOT_DEBITOS').asfloat
                                                       -mem_e110.fieldbyName('E110_VL_TOT_CREDITOS').asfloat;

if mem_e110.fieldbyName('E110_VL_ICMS_RECOLHER').asfloat<0 then
   begin
   mem_e110.fieldbyName('E110_VL_SLD_CREDOR_TRANSPORTAR').asfloat:=mem_e110.fieldbyName('E110_VL_ICMS_RECOLHER').asfloat*-1;

   mem_e110.fieldbyName('E110_VL_ICMS_RECOLHER').asfloat:=0;
   end;

mem_E110.Post;


While not mem_e110.eof do
   begin
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E110:=mQtdRegBloco_E110+1;

   mLinha:='|'
        +'E110' //1
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_TOT_DEBITOS').asfloat) //2
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_AJ_DEBITOS').asfloat) //3
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_TOT_AJ_DEBITOS').asfloat) //4
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_ESTORNOS_CRED').asfloat) //5
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_TOT_CREDITOS').asfloat) //6
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_AJ_CREDITOS').asfloat) //7
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_TOT_AJ_CREDITOS').asfloat) //8
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_ESTORNOS_DEB').asfloat) //9
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_SLD_CREDOR_ANT').asfloat) //10
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_SLD_APURADO').asfloat) //11
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_TOT_DED').asfloat) //12
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_ICMS_RECOLHER').asfloat) //13
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_SLD_CREDOR_TRANSPORTAR').asfloat) //14
        +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_DEB_ESP').asfloat) //15
        +'|';
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);
   mem_e110.next;
   end;



Tb_AjusE111.First;
while not Tb_AjusE111.eof do
   begin
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E111:=mQtdRegBloco_E111+1;
   mLinha:='|'
      +'E111'
      +'|'+Tb_AjusE111CODIGOAJUST.Value
      +'|'+Trim(Tb_AjusE111COMPL_DESCR.Value)
      +'|'+FormatFloat('##0.00',Tb_AjusE111VALORAJUST.Value)
      +'|';
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);
   Tb_AjusE111.Next;
   end;


Tb_AjusE115.First;
while not Tb_AjusE115.eof do
   begin
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E115:=mQtdRegBloco_E115+1;
   mLinha:='|'
      +'E115' // 01
      +'|'+Tb_AjusE115CODIGOAJUST.Value //02
      +'|'+FormatFloat('##0.00',Tb_AjusE115VALORAJUST.Value) // 03
      +'|'+Trim(Tb_AjusE115COMPL_DESCR.Value) //04
      +'|';
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);
   Tb_AjusE115.Next;
   end;
mem_e110.first;

if mem_e110.fieldbyName('E110_VL_ICMS_RECOLHER').asfloat>0 then
   begin
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E116:=mQtdRegBloco_E116+1;
   mLinha:='|E116'
          +'|'+'000'
          +'|'+FormatFloat('##0.00',mem_e110.fieldbyName('E110_VL_ICMS_RECOLHER').asfloat)
          +'|'+FormatDateTime('ddmmyyyy',date)
          +'|'+Trim(fdeixanum(Copy(CB_CODREC_OBRIGATORIO.Text,1,4)))
          +'|'+''
          +'|'+''
          +'|'+''
          +'|'
          +'|'+FormatDateTime('mmyyyy',edt_datini.Date)
          +'|';
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);
   end;



{
if not mem_e116.active then
   mem_e116.open;
mem_e116.First;
while not mem_e116.eof do
   begin
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E116:=mQtdRegBloco_E116+1;
   mLinha:='|E116'
         +'|'+mem_e116.fieldbyName('E116_COD_OR').AsString // 2
         +'|'+FormatFloat('##0.00',mem_e116.fieldbyName('E110_VL_OR').asfloat) //3
         +'|'+FormatDateTime('ddmmyyyy', mem_e116.fieldbyName('E110_DT_VCTO').asDateTime) // 4
         +'|'+mem_e116.fieldbyName('E116_COD_REC').AsString // 5
         +'|'+mem_e116.fieldbyName('E116_NUM_PROC').AsString // 6
         +'|'+mem_e116.fieldbyName('E116_IND_PROC').AsString // 7
         +'|'+mem_e116.fieldbyName('E116_PROC').AsString // 8
         +'|'+mem_e116.fieldbyName('E116_TXT_COMPL').AsString // 9
         +'|'+mem_e116.fieldbyName('E116_MES_REF').AsString // 10
         +'|';
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);
   mem_e116.next;
   end;
}

mem_e200.first;
mvaldevol:=0;
While not mem_e200.Eof do
   begin
   mQtdRegBlocoE:=mQtdRegBlocoE+1;
   mQtdRegBloco_E200:=mQtdRegBloco_E200+1;

   mLInha:='|'+'E200'+'|'+mem_e200E200_UF.AsString+'|'+FormatDatetime('ddmmyyyy', edt_datini.Date)+'|'
                             +FormatDatetime('ddmmyyyy',edt_datfin.Date)+'|';
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);

   if  mem_e210.Locate('E210_UF',mem_e200E200_UF.AsString,[]) then
      begin
      While (not mem_e210.Eof) and (mem_e200E200_UF.AsString=mem_e210E210_UF.AsString) do
         begin
         mQtdRegBlocoE:=mQtdRegBlocoE+1;
         mQtdRegBloco_E210:=mQtdRegBloco_E210+1;
         mLInha:='|'+'E210'//1
              +'|'+FormatFloat('0', mem_e210E210_IND_MOV_ST.AsInteger) //2
              +'|'+FormatFloat('##0.00',0) //  vl_sld_cred_ant_st Qr_E200_ApuracaoSTVL_RETENCAO_ST 00_Subst_TribICMSR.AsFloat)//3
              +'|'+FormatFloat('##0.00', mem_e210E210_VL_DEVOL_ST.AsFloat) // SALDO CREDOR DO PERIODO ANTERIOR Qr_E210_ApuracaoSTVL_DEVOL_ST.AsFloat)//4
              +'|'+FormatFloat('##0.00',0)//5
              +'|'+FormatFloat('##0.00',mem_e210E210_VL_OUT_CRED_ST.AsFloat)//6
              +'|'+FormatFloat('##0.00',0)//7
              +'|'+FormatFloat('##0.00', mem_e210E210_VL_RETENAO_ST.AsFloat)//8
              +'|'+FormatFloat('##0.00',0)//9
              +'|'+FormatFloat('##0.00', mem_e210E210_VL_AJ_DEBITOS_ST.AsFloat);//10



         mem_e210.Edit;
         mem_e210E210_VL_SLD_DEV_ANT_ST.Value := (mem_e210E210_VL_RETENAO_ST.AsFloat
                                               + mem_e210E210_VL_OUT_DEB_ST.AsFloat
                                               + mem_e210E210_VL_AJ_DEBITOS_ST.AsFloat)
                                               - (mem_e210E210_VL_SLD_CRED_ANT_ST.AsFloat
                                                 +mem_e210E210_VL_DEVOL_ST.AsFloat
                                                 +mem_e210E210_VL_RESSARC_ST.AsFloat
                                                 +mem_e210E210_VL_OUT_CRED_ST.AsFloat
                                                 +mem_e210E210_VL_AJ_CREDITOS_ST.AsFloat);

          if mem_e210E210_VL_SLD_DEV_ANT_ST.AsFloat<0 then
             mem_e210E210_VL_SLD_DEV_ANT_ST.AsFloat:=0;

          mem_e210E210_VL_ICMS_RECOL_ST.AsFloat := mem_e210E210_VL_SLD_DEV_ANT_ST.AsFloat -
                                                   mem_e210E210_VL_DEDUCOES_ST.AsFloat;

          if mem_e210E210_VL_ICMS_RECOL_ST.AsFloat<0 then
             mem_e210E210_VL_ICMS_RECOL_ST.AsFloat:=0;


           mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat := ( mem_e210E210_VL_RETENAO_ST.Asfloat
                                                       + mem_e210E210_VL_OUT_DEB_ST.Asfloat
                                                       + mem_e210E210_VL_AJ_DEBITOS_ST.Asfloat
                                                        )
                                                       - (mem_e210E210_VL_SLD_CRED_ANT_ST.Asfloat
                                                         + mem_e210E210_VL_DEVOL_ST.Asfloat
                                                         + mem_e210E210_VL_RESSARC_ST.Asfloat
                                                         + mem_e210E210_VL_OUT_CRED_ST.Asfloat
                                                         + mem_e210E210_VL_AJ_CREDITOS_ST.Asfloat
                                                         + mem_e210E210_VL_DEDUCOES_ST.Asfloat
                                                         );



          if mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat>0 then
             mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat:=0
          else
             mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat:=mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat*-1;

          mem_E210.post;

          mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_SLD_DEV_ANT_ST.asfloat );//11


          mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_DEDUCOES_ST.AsFloat);//12
          mvaldevol:=mvaldevol+mem_e210E210_VL_DEDUCOES_ST.AsFloat;




          mlinha:=mlinha+'|'+FormatFloat('##0.00', mem_e210E210_VL_ICMS_RECOL_ST.ASFLOAT);//13
          mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_VL_SLD_CRED_ST_TRAN.AsFloat); //14
          mlinha:=mlinha+'|'+FormatFloat('##0.00',mem_e210E210_DEB_ESP_ST.AsFloat); //15
          mlinha:=mlinha+'|';
          Memo1.Lines.Add(mLinha);
          items_lista_BlocoE.Add(mLinha);
          mem_e210.next;
          end;
      end;


   if (Tb_GuiaST.Active) and (not Tb_GuiaST.IsEmpty) then
      begin
      Tb_GuiaST.First;
      While not Tb_GuiaST.Eof do
         begin
         if Tb_GuiaSTUF.AsString<>mem_e200E200_UF.AsString then
            begin
            Tb_GuiaST.Next;
            Continue;
            end;
         mQtdRegBlocoE:=mQtdRegBlocoE+1;
         mQtdRegBloco_E250:=mQtdRegBloco_E250+1;
//         mvaldevol

         mtotGNRE:=mtotGNRE+Tb_GuiaSTVL_OR.Value;
         mLInha:='|'+'E250'//1
                 +'|'+Tb_GuiaSTCOD_OR.AsString  // 02
                 +'|'+FormatFloat('##0.00',Tb_GuiaSTVL_OR.Value) // 03
                 +'|'+FormatDatetime('ddmmyyyy',Tb_GuiaSTDT_VCTO.AsDateTime)  // 04
                 +'|'+Tb_GuiaSTCOD_REC.AsString;  // 05
         if trim(Tb_GuiaSTNUM_PROC.AsString)='' then
            begin
            mLinha:=mLinha+'|' // 06
                 +'|' // 07
                 +'|'  // 08
                 +'|' // 09
                 +'|'+Tb_GuiaSTMES_REF.AsString+Tb_GuiaSTANO_REF.AsString  // 010
                 +'|';
            end
         else
            begin
            mLinha:=mLinha+'|'+Tb_GuiaSTNUM_PROC.AsString  // 06
                 +'|'+Tb_GuiaSTIND_PROC.AsString  // 07
                 +'|'+Tb_GuiaSTPROC.AsString  // 08
                 +'|'+Tb_GuiaSTTXT_COMP.AsString  // 09
                 +'|'+Tb_GuiaSTMES_REF.AsString+Tb_GuiaSTANO_REF.AsString  // 010
                 +'|';
            end;
         Memo1.Lines.Add(mLinha);
         items_lista_BlocoE.Add(mLinha);
         Tb_GuiaST.Next;
         end;
      end;
   mem_e200.next;
   end;


if mQtdRegBlocoE<1 then
   begin
   mLinha:='|E001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoE.Add(mLinha);
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

// termino bloco E



//Inicio Bloco F
function TFrm_SPED_EFD_NOVO.fBlocoF(pOrigem: Integer): Boolean;
var
query_F010: tQuery;
query_F100: tQuery;
query_F111: tQuery;
query_F120: tQuery;
query_F129: tQuery;
query_F130: tQuery;
query_F139: tQuery;
query_F150: tQuery;
query_F200: tQuery;
query_F205: tQuery;
query_F210: tQuery;
query_F211: tQuery;
query_F600: tQuery;
query_F700: tQuery;
query_F800: tQuery;

mTabNivel_02: String;
begin

query_F100:=tQuery.Create(nil);
query_F100.DatabaseName:='SG_ASSOC';

query_F111:=tQuery.Create(nil);
query_F111.DatabaseName:='SG_ASSOC';


Query_F010:=tQuery.Create(nil);
Query_F010.DatabaseName:='SG_ASSOC';
Query_F010.Close;
Query_F010.Sql.Clear;
Query_F010.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ from CADNS WHERE NSNUMERO=-99999');
try
   Query_F010.Open;
except
   end;
mTabela:='tb_F010';
if (not query_F010.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|F010|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoF.Add(mLinha);
   mQtdRegBlocoF:=mQtdRegBlocoF+1;
   mQtdRegBloco_F001:=mQtdRegBloco_F001+1;
   mLinha:='';
   while not Query_F010.eof do
      begin
      mQtdRegBlocoF:=mQtdRegBlocoF+1;
      mQtdRegBloco_F010:=mQtdRegBloco_F010+1;
      mLinha:='|';
      mLinha:=mLinha+'F010|';
      fValVal('Cadastro de Empresa ',mTabela,Query_F010.fieldbyName('CNPJ').fieldName,Query_F010.fieldbyName('CNPJ').Asstring);
      mLinha:=mLinha+Query_F010.fieldbyName('CNPJ').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoF.Add(mLinha);
      Query_F010.next;
      end;
   Query_F010.Close;
   end;

query_F100.Close;
query_F100.SQL.Clear;
query_F100.SQL.Add('SELECT '+QuotedStr('1')+' AS IND_OPER ,RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_PART '
                  +' ,RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_ITEM '
                  +',SYSDATE AS DT_OPER '
                  +',NSTOTNOTA AS VL_OPER,'+QuotedStr('00')+' AS CST_PIS '
                  +',NSTOTNOTA AS VL_BC_PIS,NSTOTNOTA AS ALIQ_PIS '
                  +',NSTOTNOTA AS VL_PIS,'+QuotedStr('00')+' AS CST_COFINS '
                  +',NSTOTNOTA AS VL_BC_COFINS ,NSTOTNOTA AS ALIQ_COFINS '
                  +',NSTOTNOTA AS VL_COFINS ,'+QuotedStr('00')+' AS NAT_BC_CRED'
                  +','+QuotedStr('0')+' AS IND_ORIG_CRED,RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA'
                  +',RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CCUS '
                  +',RPAD('+QuotedStr(' ')+',1000,'+QuotedStr(' ')+') AS DESC_DOC_OPER '
                  +' from CADNS '
                  +' WHERE NSNUMERO=-9999999 ');
try
   query_F010.Open;
except
   end;

Query_F111:=tQuery.Create(nil);
Query_F111.DatabaseName:='SG_ASSOC';
Query_F120:=tQuery.Create(nil);
Query_F120.DatabaseName:='SG_ASSOC';
Query_F129:=tQuery.Create(nil);
Query_F129.DatabaseName:='SG_ASSOC';
Query_F130:=tQuery.Create(nil);
Query_F130.DatabaseName:='SG_ASSOC';
Query_F139:=tQuery.Create(nil);
Query_F139.DatabaseName:='SG_ASSOC';
Query_F150:=tQuery.Create(nil);
Query_F150.DatabaseName:='SG_ASSOC';
Query_F200:=tQuery.Create(nil);
Query_F200.DatabaseName:='SG_ASSOC';
Query_F205:=tQuery.Create(nil);
Query_F205.DatabaseName:='SG_ASSOC';
Query_F210:=tQuery.Create(nil);
Query_F210.DatabaseName:='SG_ASSOC';

Query_F211:=tQuery.Create(nil);
Query_F211.DatabaseName:='SG_ASSOC';
Query_F600:=tQuery.Create(nil);
Query_F600.DatabaseName:='SG_ASSOC';
Query_F700:=tQuery.Create(nil);
Query_F700.DatabaseName:='SG_ASSOC';
Query_F800:=tQuery.Create(nil);
Query_F800.DatabaseName:='SG_ASSOC';

mTabela:='TAB_F100';
if (not query_F100.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not query_F100.Eof do
      begin



      if query_F100.fieldbyName('VL_PIS').AsFloat>0 then
         begin
         fGerarM100('01' // pCod_Cred: String;
                   ,0 // pInd_Cred_Ori: Integer;
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat  // pVl_BC_Pis
                   ,query_F100.fieldbyName('ALIQ_PIS').AsFloat  //    pAliqPis
                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  //   pQuant_BC_Pis
                   ,query_F100.fieldbyName('ALIQ_PIS_QUANT').AsFloat  //  pAliq_Pis_Quant
                   ,query_F100.fieldbyName('VL_PIS').AsFloat  //  pVl_Cred
                   ,0  //  ,pVl_Ajus_Acres
                   ,0 //   pVl_Cred_Dif
                   ,0  // ,pVl_Cred_Disp
                   ,0 // ,pInd_Desc_Cred
                   ,0 //,pVl_Desc_Cred
                   ,0 // ,pVl_Cred_Desc
                   ,0 // ,pSld_Cred: Real): Boolean;
                   );

         fGerarM105('01' // pNAT_BC_CRED
                   ,query_F100.fieldbyName('CST_PIS').AsString //,pCST_PIS: string;
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat  // pVL_BC_PIS_TOT
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat  //  pVL_BC_PIS_CUM
                   ,0 // ,pVL_BC_PIS_NC
                   ,0 // ,pVL_BC_PIS
                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT
                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  // pQUANT_BC_PIS  : real;
                   ,'NAO DEFINIDO ' //   pDESC_CRED: String): Boolean;
                   );


         fGerarM200(query_F100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_F100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_F100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_NC_REC
                   ,query_F100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );

         fGerarM210('01' // pCOD_CONT: String;
                   ,query_F100.fieldbyName('VL_PIS').AsFloat //  pVL_REC_BRT
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_BC_CONT
                   ,query_F100.fieldbyName('ALIQ_PIS').AsFloat //  pALIQ_PIS

                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  //    ppQUANT_BC_PIS

                   ,query_F100.fieldbyName('ALIQ_PIS_QUANT').AsFloat //  pALIQ_PIS_QUANT
                   ,query_F100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_APUR
                   ,0 //    ,pVL_AJUS_ACRES
                   ,0 //,pVL_AJUS_REDUC
                   ,0  //,pVL_CONT_DIFER
                   ,0 //,pVL_CONT_DIFER_ANT
                   ,query_F100.fieldbyName('VL_PIS').AsFloat // pVL_CONT_PER: Real): Boolean;
                   );

         end;


      if query_F100.fieldbyName('VL_COFINS').AsFloat>0 then
         begin
         fGerarM500('101' // pCod_Cred: String;
                   ,0 // pInd_Cred_Ori: Integer;
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat  // pVl_BC_COFINS
                   ,query_F100.fieldbyName('ALIQ_COFINS').AsFloat  //    pAliqPis
                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  //   pQuant_BC_COFINS
                   ,query_F100.fieldbyName('ALIQ_COFINS_QUANT').AsFloat  //  pAliq_COFINS_Quant
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat  //  pVl_Cred
                   ,0  //  ,pVl_Ajus_Acres
                   ,0  // pVl_Ajus_Reduc
                   ,0 //   pVl_Cred_Dif
                   ,0  // ,pVl_Cred_Disp
                   ,0 // ,pInd_Desc_Cred
                   ,0 //,pVl_Desc_Cred
                   ,0 // ,pVl_Cred_Desc
                   ,0 // ,pSld_Cred: Real): Boolean;
                   );

         fGerarM505('01' // pNAT_BC_CRED
                   ,query_F100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string;
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat  //  pVL_BC_COFINS_CUM
                   ,0 // ,pVL_BC_COFINS_NC
                   ,0 // ,pVL_BC_COFINS
                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT
                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real;
                   ,'NAO DEFINIDO ' //   pDESC_CRED: String): Boolean;
                   );


         fGerarM600(query_F100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat //  pVL_CONT_NC_REC
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );

         fGerarM610('01' // pCOD_CONT: String;
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat //  pVL_REC_BRT
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT
                   ,query_F100.fieldbyName('ALIQ_COFINS').AsFloat //  pALIQ_COFINS

                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  //    ppQUANT_BC_COFINS

                   ,query_F100.fieldbyName('ALIQ_COFINS_QUANT').AsFloat //  pALIQ_COFINS_QUANT
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat //  pVL_CONT_APUR
                   ,0 //    ,pVL_AJUS_ACRES
                   ,0 //,pVL_AJUS_REDUC
                   ,0  //,pVL_CONT_DIFER
                   ,0 //,pVL_CONT_DIFER_ANT
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat // pVL_CONT_PER: Real): Boolean;
                   );

         end;



      fTestarR0200(query_F100.fieldbyName('COD_ITEM').AsString);

      mQtdRegBlocoF:=mQtdRegBlocoF+1;
      mQtdRegBloco_F100:=mQtdRegBloco_F100+1;

      fTestarCliFor(query_F100.fieldbyName('COD_PART').AsString);

      mLinha:='|';
      mLinha:=mLinha+'F100|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('IND_OPER').FieldName,query_F100.fieldbyName('IND_OPER').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('IND_OPER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('COD_PART').FieldName,query_F100.fieldbyName('COD_PART').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('COD_PART').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('COD_ITEM').FieldName,query_F100.fieldbyName('COD_ITEM').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('COD_ITEM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('DT_OPER').FieldName,query_F100.fieldbyName('DT_OPER').AsString);
      mLinha:=mLinha+FormatdateTime(fdt_efd, query_F100.fieldbyName('DT_OPER').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('VL_OPER').FieldName,query_F100.fieldbyName('VL_OPER').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_F100.fieldbyName('VL_OPER').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('CST_PIS').FieldName,query_F100.fieldbyName('CST_PIS').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('CST_PIS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('VL_BC_PIS').FieldName,query_F100.fieldbyName('VL_BC_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_F100.fieldbyName('VL_BC_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('ALIQ_PIS').FieldName,query_F100.fieldbyName('ALIQ_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_F100.fieldbyName('ALIQ_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('VL_PIS').FieldName,query_F100.fieldbyName('VL_PIS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_F100.fieldbyName('VL_PIS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('CST_COFINS').FieldName,query_F100.fieldbyName('CST_COFINS').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('CST_COFINS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('VL_BC_COFINS').FieldName,query_F100.fieldbyName('VL_BC_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_F100.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('ALIQ_COFINS').FieldName,query_F100.fieldbyName('ALIQ_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas4Dec, query_F100.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('VL_COFINS').FieldName,query_F100.fieldbyName('VL_COFINS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, query_F100.fieldbyName('VL_COFINS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('NAT_BC_CRED').FieldName,query_F100.fieldbyName('NAT_BC_CRED').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('NAT_BC_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('IND_ORIG_CRED').FieldName,query_F100.fieldbyName('IND_ORIG_CRED').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('IND_ORIG_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('COD_CTA').FieldName,query_F100.fieldbyName('COD_CTA').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('COD_CTA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('COD_CCUS').FieldName,query_F100.fieldbyName('COD_CCUS').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('COD_CCUS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,query_F100.fieldbyName('DESC_DOC_OPER').FieldName,query_F100.fieldbyName('DESC_DOC_OPER').AsString);
      mLinha:=mLinha+query_F100.fieldbyName('DESC_DOC_OPER').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoF.Add(mLinha);

      Query_F111.Close;
      Query_F111.Sql.Clear;
      Query_F111.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',20,'+QuotedStr('0') + ') AS NUM_PROC '
                        +'     ,'+QuotedStr('0') + ' AS IND_PROC       from CADNS '
                        +'  where NSNUMERO=-999999    ');
      try
         Query_F111.Open;
      except
         end;

      // INICIO adentação registro F111
      mTabNivel_02:='TAB_F111';
      if not Query_F111.isEmpty then
         begin
         while not Query_F111.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F111:=mQtdRegBloco_F111+1;
            mLinha:='|';
            mLinha:=mLinha+'F111|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F111.fieldbyName('NUM_PROC').fieldName,Query_F111.fieldbyName('NUM_PROC').Asstring);
            mLinha:=mLinha+Query_F111.fieldbyName('NUM_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F111.fieldbyName('IND_PROC').fieldName,Query_F111.fieldbyName('IND_PROC').Asstring);
            mLinha:=mLinha+Query_F111.fieldbyName('IND_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F111.next;
            end;
         Query_F111.Close;
         end;

      // TERMINO adentação registro F111


      // INICIO adentação registro F120

        Query_F120.Close;
        Query_F120.Sql.Clear;
        Query_F120.Sql.Add('SELECT '+QuotedStr('00') + ' AS NAT_BC_CRED '
                          +'        ,00 AS IDENT_BEM_IMOB ,'+QuotedStr('0') + ' AS IND_ORIG_CRED '
                          +'        ,0 AS IND_UTIL_BEM_IMOB        ,NSTOTNOTA AS VL_OPER_DEP '
                          +'        ,NSTOTNOTA AS PARC_OPER_NAO_BC_CRED        ,'+QuotedStr('00') + ' AS CST_PIS '
                          +'        ,NSTOTNOTA AS VL_BC_PIS        ,NSTOTNOTA AS ALIQ_PIS        ,NSTOTNOTA AS VL_PIS '
                          +'        ,'+QuotedStr('00') + ' AS CST_COFINS        ,NSTOTNOTA AS VL_BC_COFINS '
                          +'       ,NSTOTNOTA AS ALIQ_COFINS        ,NSTOTNOTA AS VL_COFINS'
                          +'        ,RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                          +'        ,RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CCUS '
                          +'        ,RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_BEM_IMOB '
                          +'         from CADNS  where NSNUMERO=-999999 ');
        try
           Query_F120.Open;
        except
           end;


      mTabNivel_02:='TAB_F120';



      if not Query_F120.isEmpty then
         begin
         while not Query_F120.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F120:=mQtdRegBloco_F120+1;
            mLinha:='|';
            mLinha:=mLinha+'F120|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('NAT_BC_CRED').fieldName,Query_F120.fieldbyName('NAT_BC_CRED').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('NAT_BC_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('IDENT_BEM_IMOB').fieldName,Query_F120.fieldbyName('IDENT_BEM_IMOB').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('IDENT_BEM_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('IND_ORIG_CRED').fieldName,Query_F120.fieldbyName('IND_ORIG_CRED').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('IND_ORIG_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('IND_UTIL_BEM_IMOB').fieldName,Query_F120.fieldbyName('IND_UTIL_BEM_IMOB').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('IND_UTIL_BEM_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('VL_OPER_DEP').fieldName,Query_F120.fieldbyName('VL_OPER_DEP').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('VL_OPER_DEP').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('PARC_OPER_NAO_BC_CRED').fieldName,Query_F120.fieldbyName('PARC_OPER_NAO_BC_CRED').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('PARC_OPER_NAO_BC_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('CST_PIS').fieldName,Query_F120.fieldbyName('CST_PIS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('CST_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('VL_BC_PIS').fieldName,Query_F120.fieldbyName('VL_BC_PIS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('VL_BC_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('ALIQ_PIS').fieldName,Query_F120.fieldbyName('ALIQ_PIS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('ALIQ_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('VL_PIS').fieldName,Query_F120.fieldbyName('VL_PIS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('VL_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('CST_COFINS').fieldName,Query_F120.fieldbyName('CST_COFINS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('CST_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('VL_BC_COFINS').fieldName,Query_F120.fieldbyName('VL_BC_COFINS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('VL_BC_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('ALIQ_COFINS').fieldName,Query_F120.fieldbyName('ALIQ_COFINS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('ALIQ_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('VL_COFINS').fieldName,Query_F120.fieldbyName('VL_COFINS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('VL_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('COD_CTA').fieldName,Query_F120.fieldbyName('COD_CTA').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('COD_CTA').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('COD_CCUS').fieldName,Query_F120.fieldbyName('COD_CCUS').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('COD_CCUS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F120.fieldbyName('DESC_BEM_IMOB').fieldName,Query_F120.fieldbyName('DESC_BEM_IMOB').Asstring);
            mLinha:=mLinha+Query_F120.fieldbyName('DESC_BEM_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F120.next;
            end;
         Query_F120.Close;
         end;
      // TERMINO adentação registro F120

      Query_F129.Close;
      Query_F129.Sql.Clear;
      Query_F129.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',20,'+QuotedStr('0') + ') AS NUM_PROC '
                        +','+QuotedStr('1') + ' AS IND_PROC from CADNS  where NSNUMERO=-999999 ');
      try
         Query_F129.Open;
      except
         end;

      // INICIO adentação registro F129
      mTabNivel_02:='TAB_F129';

      if not Query_F129.isEmpty then
         begin
         while not Query_F129.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F129:=mQtdRegBloco_F129+1;
            mLinha:='|';
            mLinha:=mLinha+'F129|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F129.fieldbyName('NUM_PROC').fieldName,Query_F129.fieldbyName('NUM_PROC').Asstring);
            mLinha:=mLinha+Query_F129.fieldbyName('NUM_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F129.fieldbyName('IND_PROC').fieldName,Query_F129.fieldbyName('IND_PROC').Asstring);
            mLinha:=mLinha+Query_F129.fieldbyName('IND_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F129.next;
            end;
         Query_F129.Close;
         end;




      // TERMINO adentação registro F129

      Query_F130.Close;
      Query_F130.Sql.Clear;
      Query_F130.Sql.Add('SELECT '+QuotedStr('00') + ' as NAT_BC_CRED '
                        +'      ,'+QuotedStr('00') + ' as IDENT_BEM_IMOB '
                        +'      ,'+QuotedStr('1') + ' as IND_ORIG_CRED '
                        +'      ,1 IND_UTIL_BEM_IMOB ,'+QuotedStr('122012') + ' as MES_OPER_AQUIS '
                        +'      ,NSTOTNOTA AS VL_OPER_AQUIS '
                        +'      ,NSTOTNOTA AS PARC_OPER_NAO_BC_CRED '
                        +'      ,NSTOTNOTA AS VL_BC_CRED      ,1 AS IND_NR_PARC '
                        +'      ,'+QuotedStr('00') + ' AS CST_PIS  ,NSTOTNOTA AS VL_BC_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS      ,NSTOTNOTA AS VL_PIS '
                        +'      ,'+QuotedStr('00') + ' AS CST_COFINS      ,NSTOTNOTA AS VL_BC_COFINS '
                        +'      ,NSTOTNOTA AS ALIQ_COFINS       ,NSTOTNOTA AS VL_COFINS '
                        +'      ,RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                        +'      ,RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CCUS '
                        +'      ,RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_BEM_IMOB '
                        +'       from CADNS  where NSNUMERO=-999999 ');
      try
         Query_F130.Open;
      except

         end;

      Query_F130.Close;
      Query_F130.Sql.Clear;
      Query_F130.Sql.Add('SELECT '+QuotedStr('00') + ' as NAT_BC_CRED '
                        +'      ,'+QuotedStr('00') + ' as IDENT_BEM_IMOB '
                        +'      ,'+QuotedStr('1') + ' as IND_ORIG_CRED '
                        +'      ,1 IND_UTIL_BEM_IMOB '
                        +'      ,'+QuotedStr('122012') + ' as MES_OPER_AQUIS '
                        +'      ,NSTOTNOTA AS VL_OPER_AQUIS '
                        +'      ,NSTOTNOTA AS PARC_OPER_NAO_BC_CRED '
                        +'      ,NSTOTNOTA AS VL_BC_CRED '
                        +'      ,1 AS IND_NR_PARC '
                        +'      ,'+QuotedStr('00') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS VL_BC_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS '
                        +'      ,NSTOTNOTA AS VL_PIS '
                        +'      ,'+QuotedStr('00') + ' AS CST_COFINS '
                        +'      ,NSTOTNOTA AS VL_BC_COFINS '
                        +'      ,NSTOTNOTA AS ALIQ_COFINS '
                        +'      ,NSTOTNOTA AS VL_COFINS '
                        +'      ,RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                        +'      ,RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CCUS '
                        +'      ,RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_BEM_IMOB '
                        +'       from CADNS   where NSNUMERO=-999999  ');
      try
         Query_F130.Open;
      except
         end;



      // INICIO adentação registro F130
      mTabNivel_02:='TAB_F130';


      if not Query_F130.isEmpty then
         begin
         while not Query_F130.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F130:=mQtdRegBloco_F130+1;
            mLinha:='|';
            mLinha:=mLinha+'F130|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('NAT_BC_CRED').fieldName,Query_F130.fieldbyName('NAT_BC_CRED').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('NAT_BC_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('IDENT_BEM_IMOB').fieldName,Query_F130.fieldbyName('IDENT_BEM_IMOB').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('IDENT_BEM_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('IND_ORIG_CRED').fieldName,Query_F130.fieldbyName('IND_ORIG_CRED').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('IND_ORIG_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('IND_UTIL_BEM_IMOB').fieldName,Query_F130.fieldbyName('IND_UTIL_BEM_IMOB').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('IND_UTIL_BEM_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('MES_OPER_AQUIS').fieldName,Query_F130.fieldbyName('MES_OPER_AQUIS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('MES_OPER_AQUIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('VL_OPER_AQUIS').fieldName,Query_F130.fieldbyName('VL_OPER_AQUIS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('VL_OPER_AQUIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('PARC_OPER_NAO_BC_CRED').fieldName,Query_F130.fieldbyName('PARC_OPER_NAO_BC_CRED').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('PARC_OPER_NAO_BC_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('VL_BC_CRED').fieldName,Query_F130.fieldbyName('VL_BC_CRED').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('VL_BC_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('IND_NR_PARC').fieldName,Query_F130.fieldbyName('IND_NR_PARC').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('IND_NR_PARC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('CST_PIS').fieldName,Query_F130.fieldbyName('CST_PIS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('CST_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('VL_BC_PIS').fieldName,Query_F130.fieldbyName('VL_BC_PIS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('VL_BC_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('ALIQ_PIS').fieldName,Query_F130.fieldbyName('ALIQ_PIS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('ALIQ_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('VL_PIS').fieldName,Query_F130.fieldbyName('VL_PIS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('VL_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('CST_COFINS').fieldName,Query_F130.fieldbyName('CST_COFINS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('CST_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('VL_BC_COFINS').fieldName,Query_F130.fieldbyName('VL_BC_COFINS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('VL_BC_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('ALIQ_COFINS').fieldName,Query_F130.fieldbyName('ALIQ_COFINS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('ALIQ_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('VL_COFINS').fieldName,Query_F130.fieldbyName('VL_COFINS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('VL_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('COD_CTA').fieldName,Query_F130.fieldbyName('COD_CTA').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('COD_CTA').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('COD_CCUS').fieldName,Query_F130.fieldbyName('COD_CCUS').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('COD_CCUS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F130.fieldbyName('DESC_BEM_IMOB').fieldName,Query_F130.fieldbyName('DESC_BEM_IMOB').Asstring);
            mLinha:=mLinha+Query_F130.fieldbyName('DESC_BEM_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F130.next;
            end;
         Query_F130.Close;
         end;
      // TERMINO adentação registro F130

      Query_F139.Close;
      Query_F139.Sql.Clear;
      Query_F139.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',20,'+QuotedStr('0') + ') AS NUM_PROC '
                        +' ,'+QuotedStr('1') + ' AS IND_PROC from CADNS  where NSNUMERO=-999999 ');
      try
         Query_F139.Open;
      except
         end;

      if not Query_F139.isEmpty then
         begin
         while not Query_F139.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F139:=mQtdRegBloco_F139+1;
            mLinha:='|';
            mLinha:=mLinha+'F139|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F139.fieldbyName('NUM_PROC').fieldName,Query_F139.fieldbyName('NUM_PROC').Asstring);
            mLinha:=mLinha+Query_F139.fieldbyName('NUM_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F139.fieldbyName('IND_PROC').fieldName,Query_F139.fieldbyName('IND_PROC').Asstring);
            mLinha:=mLinha+Query_F139.fieldbyName('IND_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F139.next;
            end;
         Query_F139.Close;
         end;


      // INICIO adentação registro F150



      Query_F150.Close;
      Query_F150.Sql.Clear;
      Query_F150.Sql.Add('SELECT '+QuotedStr('00') + ' as NAT_BC_CRED ,NSTOTNOTA AS VL_TOT_EST '
                        +',NSTOTNOTA AS EST_IMP,NSTOTNOTA AS VL_BC_EST,NSTOTNOTA AS VL_BC_MEN_EST '
                        +','+QuotedStr('00') + ' CST_PIS,NSTOTNOTA AS ALIQ_PIS,NSTOTNOTA AS VL_CRED_PIS '
                        +','+QuotedStr('00') + ' AS CST_COFINS,NSTOTNOTA AS ALIQ_COFINS,NSTOTNOTA AS VL_CRED_COFINS '
                        +',RPAD('+QuotedStr('0') + ',100,'+QuotedStr('0') + ') AS DESC_EST '
                        +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA from CADNS '
                        +'  where NSNUMERO=-999999 ');
      try
         Query_F150.Open;
      except
         end;

      mTabNivel_02:='TAB_F150';

      if not Query_F150.isEmpty then
         begin
         while not Query_F150.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F150:=mQtdRegBloco_F150+1;
            mLinha:='|';
            mLinha:=mLinha+'F150|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('NAT_BC_CRED').fieldName,Query_F150.fieldbyName('NAT_BC_CRED').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('NAT_BC_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('VL_TOT_EST').fieldName,Query_F150.fieldbyName('VL_TOT_EST').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('VL_TOT_EST').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('EST_IMP').fieldName,Query_F150.fieldbyName('EST_IMP').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('EST_IMP').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('VL_BC_EST').fieldName,Query_F150.fieldbyName('VL_BC_EST').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('VL_BC_EST').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('VL_BC_MEN_EST').fieldName,Query_F150.fieldbyName('VL_BC_MEN_EST').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('VL_BC_MEN_EST').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('CST_PIS').fieldName,Query_F150.fieldbyName('CST_PIS').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('CST_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('ALIQ_PIS').fieldName,Query_F150.fieldbyName('ALIQ_PIS').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('ALIQ_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('VL_CRED_PIS').fieldName,Query_F150.fieldbyName('VL_CRED_PIS').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('VL_CRED_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('CST_COFINS').fieldName,Query_F150.fieldbyName('CST_COFINS').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('CST_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('ALIQ_COFINS').fieldName,Query_F150.fieldbyName('ALIQ_COFINS').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('ALIQ_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('VL_CRED_COFINS').fieldName,Query_F150.fieldbyName('VL_CRED_COFINS').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('VL_CRED_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('DESC_EST').fieldName,Query_F150.fieldbyName('DESC_EST').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('DESC_EST').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F150.fieldbyName('COD_CTA').fieldName,Query_F150.fieldbyName('COD_CTA').Asstring);
            mLinha:=mLinha+Query_F150.fieldbyName('COD_CTA').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F150.next;
            end;
         Query_F150.Close;
         end;

      // TERMINO adentação registro F150

      Query_F200.Close;
      Query_F200.Sql.Clear;
      Query_F200.Sql.Add('select '+QuotedStr('00') + ' AS IND_OPER '
                        +','+QuotedStr('00') + ' AS UNID_IMOB '
                        +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS IDENT_EMP '
                        +'      ,RPAD('+QuotedStr('0') + ',90,'+QuotedStr('0') + ') AS DESC_UNID_IMOB '
                        +'      ,RPAD('+QuotedStr('0') + ',90,'+QuotedStr('0') + ') AS NUM_CONT '
                        +'      ,RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CPF_CNPJ_ADQU '
                        +'      ,SYSDATE AS DT_OPER      ,NSTOTNOTA AS VL_TOT_VEND '
                        +'      ,NSTOTNOTA AS VL_REC_ACUM      ,NSTOTNOTA AS VL_TOT_REC'
                        +'      ,'+QuotedStr('00') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS VL_BC_PIS      ,NSTOTNOTA AS ALIQ_PIS '
                        +'      ,NSTOTNOTA AS VL_PIS      ,'+QuotedStr('00') + ' AS CST_COFINS '
                        +'      ,NSTOTNOTA AS VL_BC_COFINS '
                        +'      ,NSTOTNOTA AS ALIQ_COFINS      ,NSTOTNOTA AS VL_COFINS '
                        +'     ,NSTOTNOTA AS PERC_REC_RECEB   ,0 AS IND_NAT_EMP '
                        +'      ,RPAD('+QuotedStr('0') + ',90,'+QuotedStr('0') + ') AS INF_COMP'
                        +'      FROM CADNS   where NSNUMERO=-999999 ');
      try
         Query_F200.Open;
      except
         end;
      // INICIO adentação registro F200
      mTabNivel_02:='TAB_F200';


      if not Query_F200.isEmpty then
         begin
         while not Query_F200.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F200:=mQtdRegBloco_F200+1;
            mLinha:='|';
            mLinha:=mLinha+'F200|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('IND_OPER').fieldName,Query_F200.fieldbyName('IND_OPER').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('IND_OPER').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('UNID_IMOB').fieldName,Query_F200.fieldbyName('UNID_IMOB').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('UNID_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('IDENT_EMP').fieldName,Query_F200.fieldbyName('IDENT_EMP').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('IDENT_EMP').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('DESC_UNID_IMOB').fieldName,Query_F200.fieldbyName('DESC_UNID_IMOB').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('DESC_UNID_IMOB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('NUM_CONT').fieldName,Query_F200.fieldbyName('NUM_CONT').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('NUM_CONT').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('CPF_CNPJ_ADQU').fieldName,Query_F200.fieldbyName('CPF_CNPJ_ADQU').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('CPF_CNPJ_ADQU').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('DT_OPER').fieldName,Query_F200.fieldbyName('DT_OPER').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('DT_OPER').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('VL_TOT_VEND').fieldName,Query_F200.fieldbyName('VL_TOT_VEND').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('VL_TOT_VEND').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('VL_REC_ACUM').fieldName,Query_F200.fieldbyName('VL_REC_ACUM').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('VL_REC_ACUM').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('VL_TOT_REC').fieldName,Query_F200.fieldbyName('VL_TOT_REC').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('VL_TOT_REC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('CST_PIS').fieldName,Query_F200.fieldbyName('CST_PIS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('CST_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('VL_BC_PIS').fieldName,Query_F200.fieldbyName('VL_BC_PIS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('VL_BC_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('ALIQ_PIS').fieldName,Query_F200.fieldbyName('ALIQ_PIS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('ALIQ_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('VL_PIS').fieldName,Query_F200.fieldbyName('VL_PIS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('VL_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('CST_COFINS').fieldName,Query_F200.fieldbyName('CST_COFINS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('CST_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('VL_BC_COFINS').fieldName,Query_F200.fieldbyName('VL_BC_COFINS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('VL_BC_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('ALIQ_COFINS').fieldName,Query_F200.fieldbyName('ALIQ_COFINS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('ALIQ_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('VL_COFINS').fieldName,Query_F200.fieldbyName('VL_COFINS').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('VL_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('PERC_REC_RECEB').fieldName,Query_F200.fieldbyName('PERC_REC_RECEB').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('PERC_REC_RECEB').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('IND_NAT_EMP').fieldName,Query_F200.fieldbyName('IND_NAT_EMP').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('IND_NAT_EMP').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F200.fieldbyName('INF_COMP').fieldName,Query_F200.fieldbyName('INF_COMP').Asstring);
            mLinha:=mLinha+Query_F200.fieldbyName('INF_COMP').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F200.next;
            end;
         Query_F200.Close;
         end;


      // TERMINO adentação registro F200

      Query_F205.Close;
      Query_F205.Sql.Clear;
      Query_F205.Sql.Add('select NSTOTNOTA AS VL_CUS_INC_ACUM_ANT  ,NSTOTNOTA AS VL_CUS_INC_PER_ESC'
                        +'      ,NSTOTNOTA AS VL_CUS_INC_ACUM      ,NSTOTNOTA AS VL_EXC_BC_CUS_INC_ACUM '
                        +'      ,NSTOTNOTA AS VL_BC_CUS_INC      ,'+QuotedStr('00') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS      ,NSTOTNOTA AS VL_CRED_PIS_ACUM '
                        +'      ,NSTOTNOTA AS VL_CRED_PIS_DESC_ANT      ,NSTOTNOTA AS VL_CRED_PIS_DESC '
                        +'      ,NSTOTNOTA AS VL_CRED_PIS_DESC_FUT      ,'+QuotedStr('00') + ' AS CST_COFINS '
                        +'      ,NSTOTNOTA AS ALIQ_COFINS      ,NSTOTNOTA AS VL_CRED_COFINS_ACUM '
                        +'      ,NSTOTNOTA AS VL_CRED_COFINS_DESC_ANT      ,NSTOTNOTA AS VL_CRED_COFINS_DESC '
                        +'      ,NSTOTNOTA AS VL_CRED_COFINS_DESC_FUT      FROM CADNS '
                        +'  where NSNUMERO=-999999 ');
      try
         Query_F205.Open;
      except
         end;


      // INICIO adentação registro F205
      mTabNivel_02:='TAB_F205';


      if not Query_F205.isEmpty then
         begin
         while not Query_F205.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F205:=mQtdRegBloco_F205+1;
            mLinha:='|';
            mLinha:=mLinha+'F205|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CUS_INC_ACUM_ANT').fieldName,Query_F205.fieldbyName('VL_CUS_INC_ACUM_ANT').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CUS_INC_ACUM_ANT').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CUS_INC_PER_ESC').fieldName,Query_F205.fieldbyName('VL_CUS_INC_PER_ESC').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CUS_INC_PER_ESC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CUS_INC_ACUM').fieldName,Query_F205.fieldbyName('VL_CUS_INC_ACUM').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CUS_INC_ACUM').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_EXC_BC_CUS_INC_ACUM').fieldName,Query_F205.fieldbyName('VL_EXC_BC_CUS_INC_ACUM').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_EXC_BC_CUS_INC_ACUM').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_BC_CUS_INC').fieldName,Query_F205.fieldbyName('VL_BC_CUS_INC').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_BC_CUS_INC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('CST_PIS').fieldName,Query_F205.fieldbyName('CST_PIS').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('CST_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('ALIQ_PIS').fieldName,Query_F205.fieldbyName('ALIQ_PIS').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('ALIQ_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_PIS_ACUM').fieldName,Query_F205.fieldbyName('VL_CRED_PIS_ACUM').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_PIS_ACUM').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_PIS_DESC_ANT').fieldName,Query_F205.fieldbyName('VL_CRED_PIS_DESC_ANT').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_PIS_DESC_ANT').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_PIS_DESC').fieldName,Query_F205.fieldbyName('VL_CRED_PIS_DESC').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_PIS_DESC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_PIS_DESC_FUT').fieldName,Query_F205.fieldbyName('VL_CRED_PIS_DESC_FUT').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_PIS_DESC_FUT').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('CST_COFINS').fieldName,Query_F205.fieldbyName('CST_COFINS').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('CST_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('ALIQ_COFINS').fieldName,Query_F205.fieldbyName('ALIQ_COFINS').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('ALIQ_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_COFINS_ACUM').fieldName,Query_F205.fieldbyName('VL_CRED_COFINS_ACUM').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_COFINS_ACUM').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_ANT').fieldName,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_ANT').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_COFINS_DESC_ANT').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_COFINS_DESC').fieldName,Query_F205.fieldbyName('VL_CRED_COFINS_DESC').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_COFINS_DESC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_FUT').fieldName,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_FUT').Asstring);
            mLinha:=mLinha+Query_F205.fieldbyName('VL_CRED_COFINS_DESC_FUT').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F205.next;
            end;
         Query_F205.Close;
         end;

      // TERMINO adentação registro F205


      Query_F210.Close;
      Query_F210.Sql.Clear;
      Query_F210.Sql.Add('select     NSTOTNOTA AS VL_CUS_ORC '
                        +'      ,NSTOTNOTA AS VL_EXC      ,NSTOTNOTA AS VL_CUS_ORC_AJU '
                        +'      ,NSTOTNOTA AS VL_BC_CRED      ,'+QuotedStr('00') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS      ,NSTOTNOTA AS VL_CRED_PIS_UTIL '
                        +'      ,'+QuotedStr('00') + ' AS CST_COFINS      ,NSTOTNOTA AS ALIQ_COFINS '
                        +'      ,NSTOTNOTA AS VL_CRED_COFINS_UTIL      FROM CADNS '
                        +'  where NSNUMERO=-999999 ');
      try
         Query_F210.Open;
      except
         end;

      // INICIO adentação registro F210
      mTabNivel_02:='TAB_F210';


      if not Query_F210.isEmpty then
         begin
         while not Query_F210.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F210:=mQtdRegBloco_F210+1;
            mLinha:='|';
            mLinha:=mLinha+'F210|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('VL_CUS_ORC').fieldName,Query_F210.fieldbyName('VL_CUS_ORC').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('VL_CUS_ORC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('VL_EXC').fieldName,Query_F210.fieldbyName('VL_EXC').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('VL_EXC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('VL_CUS_ORC_AJU').fieldName,Query_F210.fieldbyName('VL_CUS_ORC_AJU').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('VL_CUS_ORC_AJU').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('VL_BC_CRED').fieldName,Query_F210.fieldbyName('VL_BC_CRED').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('VL_BC_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('CST_PIS').fieldName,Query_F210.fieldbyName('CST_PIS').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('CST_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('ALIQ_PIS').fieldName,Query_F210.fieldbyName('ALIQ_PIS').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('ALIQ_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('VL_CRED_PIS_UTIL').fieldName,Query_F210.fieldbyName('VL_CRED_PIS_UTIL').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('VL_CRED_PIS_UTIL').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('CST_COFINS').fieldName,Query_F210.fieldbyName('CST_COFINS').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('CST_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('ALIQ_COFINS').fieldName,Query_F210.fieldbyName('ALIQ_COFINS').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('ALIQ_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('VL_CRED_COFINS_UTIL').fieldName,Query_F210.fieldbyName('VL_CRED_COFINS_UTIL').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('VL_CRED_COFINS_UTIL').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F210.next;
            end;
         Query_F210.Close;
         end;



     // TERMINO adentação registro F210



      // INICIO adentação registro F211


      Query_F211.Close;
      Query_F211.Sql.Clear;
      Query_F211.Sql.Add('SELECT       RPAD('+QuotedStr('0') + ',20,'+QuotedStr('0') + ') AS NUM_PROC '
                        +' ,'+QuotedStr('0') + ' AS IND_PROC  from CADNS '
                        +'  where NSNUMERO=-999999 ');
      try
         Query_F211.Open;
      except
         end;

      mTabNivel_02:='TAB_F211';


      if not Query_F211.isEmpty then
         begin
         while not Query_F211.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F211:=mQtdRegBloco_F211+1;
            mLinha:='|';
            mLinha:=mLinha+'F211|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F211.fieldbyName('NUM_PROC').fieldName,Query_F211.fieldbyName('NUM_PROC').Asstring);
            mLinha:=mLinha+Query_F211.fieldbyName('NUM_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F211.fieldbyName('IND_PROC').fieldName,Query_F211.fieldbyName('IND_PROC').Asstring);
            mLinha:=mLinha+Query_F211.fieldbyName('IND_PROC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F211.next;
            end;
         Query_F211.Close;
         end;



      // TERMINO adentação registro F211

      // INICIO adentação registro F600


      Query_F600.Close;
      Query_F600.Sql.Clear;
      Query_F600.Sql.Add('select '+QuotedStr('00') + ' as IND_NAT_RET   ,SYSDATE AS DT_RET '
                        +'    ,NSTOTNOTA AS VL_BC_RET      ,NSTOTNOTA AS VL_RET '
                        +'      ,'+QuotedStr('0000') + ' AS COD_REC ,'+QuotedStr('1') + ' AS IND_NAT_REC '
                        +'      ,RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ '
                        +'      ,NSTOTNOTA AS VL_RET_PIS      ,NSTOTNOTA AS VL_RET_COFINS '
                        +'      ,1 AS IND_DEC      FROM CADNS '
                        +'   where NSNUMERO=-999999   ');
      try
         Query_F600.Open;
      except
         end;

      mTabNivel_02:='TAB_F600';



      mTabela:='tb_F600';
      if not Query_F600.isEmpty then
         begin
         while not Query_F600.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F600:=mQtdRegBloco_F600+1;
            mLinha:='|';
            mLinha:=mLinha+'F600|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('IND_NAT_RET').fieldName,Query_F600.fieldbyName('IND_NAT_RET').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('IND_NAT_RET').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('DT_RET').fieldName,Query_F600.fieldbyName('DT_RET').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('DT_RET').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('VL_BC_RET').fieldName,Query_F600.fieldbyName('VL_BC_RET').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('VL_BC_RET').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('VL_RET').fieldName,Query_F600.fieldbyName('VL_RET').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('VL_RET').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('COD_REC').fieldName,Query_F600.fieldbyName('COD_REC').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('COD_REC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('IND_NAT_REC').fieldName,Query_F600.fieldbyName('IND_NAT_REC').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('IND_NAT_REC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('CNPJ').fieldName,Query_F600.fieldbyName('CNPJ').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('CNPJ').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('VL_RET_PIS').fieldName,Query_F600.fieldbyName('VL_RET_PIS').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('VL_RET_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('VL_RET_COFINS').fieldName,Query_F600.fieldbyName('VL_RET_COFINS').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('VL_RET_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F600.fieldbyName('IND_DEC').fieldName,Query_F600.fieldbyName('IND_DEC').Asstring);
            mLinha:=mLinha+Query_F600.fieldbyName('IND_DEC').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F600.next;
            end;
         Query_F600.Close;
         end;

      // TERMINO adentação registro F600

      // INICIO adentação registro F700

      Query_F700.Close;
      Query_F700.Sql.Clear;
      Query_F700.Sql.Add('select '+QuotedStr('00') + ' as IND_ORI_DED '
                        +'      ,1 as IND_NAT_DED  ,NSTOTNOTA AS VL_DED_PIS '
                        +'      ,NSTOTNOTA AS VL_DED_COFINS      ,NSTOTNOTA AS VL_BC_OPER '
                        +'      ,RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ '
                        +'      ,RPAD('+QuotedStr('0') + ',90,'+QuotedStr('0') + ') AS INF_COMP '
                        +'      FROM CADNS  where NSNUMERO=-999999 ');
      try
         Query_F700.Open;
      except
         end;

      mTabNivel_02:='TAB_F700';

      if not Query_F700.isEmpty then
         begin
         while not Query_F700.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F700:=mQtdRegBloco_F700+1;
            mLinha:='|';
            mLinha:=mLinha+'F700|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F700.fieldbyName('IND_ORI_DED').fieldName,Query_F700.fieldbyName('IND_ORI_DED').Asstring);
            mLinha:=mLinha+Query_F700.fieldbyName('IND_ORI_DED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F700.fieldbyName('IND_NAT_DED').fieldName,Query_F700.fieldbyName('IND_NAT_DED').Asstring);
            mLinha:=mLinha+Query_F700.fieldbyName('IND_NAT_DED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F700.fieldbyName('VL_DED_PIS').fieldName,Query_F700.fieldbyName('VL_DED_PIS').Asstring);
            mLinha:=mLinha+Query_F700.fieldbyName('VL_DED_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F700.fieldbyName('VL_DED_COFINS').fieldName,Query_F700.fieldbyName('VL_DED_COFINS').Asstring);
            mLinha:=mLinha+Query_F700.fieldbyName('VL_DED_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F700.fieldbyName('VL_BC_OPER').fieldName,Query_F700.fieldbyName('VL_BC_OPER').Asstring);
            mLinha:=mLinha+Query_F700.fieldbyName('VL_BC_OPER').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F700.fieldbyName('CNPJ').fieldName,Query_F700.fieldbyName('CNPJ').Asstring);
            mLinha:=mLinha+Query_F700.fieldbyName('CNPJ').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F700.fieldbyName('INF_COMP').fieldName,Query_F700.fieldbyName('INF_COMP').Asstring);
            mLinha:=mLinha+Query_F700.fieldbyName('INF_COMP').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F700.next;
            end;
         Query_F700.Close;
         end;


      // TERMINO adentação registro F700

      // INICIO adentação registro F800


      Query_F800.Close;
      Query_F800.Sql.Clear;
      Query_F800.Sql.Add('select '+QuotedStr('00') + ' as IND_NAT_EVEN '
                        +'      ,SYSDATE AS DT_EVEN  ,RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ_SUCED '
                        +'      ,'+QuotedStr('122012') + ' AS PA_CONT_CRED '
                        +'      ,'+QuotedStr('000') + ' AS COD_CRED '
                        +'      ,NSTOTNOTA AS VL_CRED_PIS '
                        +'      ,NSTOTNOTA AS VL_CRED_COFINS      ,NSTOTNOTA AS PER_CRED_CIS '
                        +'      FROM CADNS  where NSNUMERO=-999999 ');
      try
         Query_F800.Open;
      except
         end;
      mTabNivel_02:='TAB_F800';

      if not Query_F800.isEmpty then
         begin
         while not Query_F800.eof do
            begin
            mQtdRegBlocoF:=mQtdRegBlocoF+1;
            mQtdRegBloco_F800:=mQtdRegBloco_F800+1;
            mLinha:='|';
            mLinha:=mLinha+'F800|';
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('IND_NAT_EVEN').fieldName,Query_F800.fieldbyName('IND_NAT_EVEN').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('IND_NAT_EVEN').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('DT_EVEN').fieldName,Query_F800.fieldbyName('DT_EVEN').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('DT_EVEN').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('CNPJ_SUCED').fieldName,Query_F800.fieldbyName('CNPJ_SUCED').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('CNPJ_SUCED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('PA_CONT_CRED').fieldName,Query_F800.fieldbyName('PA_CONT_CRED').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('PA_CONT_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('COD_CRED').fieldName,Query_F800.fieldbyName('COD_CRED').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('COD_CRED').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('VL_CRED_PIS').fieldName,Query_F800.fieldbyName('VL_CRED_PIS').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('VL_CRED_PIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('VL_CRED_COFINS').fieldName,Query_F800.fieldbyName('VL_CRED_COFINS').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('VL_CRED_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('PER_CRED_CIS').fieldName,Query_F800.fieldbyName('PER_CRED_CIS').Asstring);
            mLinha:=mLinha+Query_F800.fieldbyName('PER_CRED_CIS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            Query_F800.next;
            end;
         Query_F800.Close;
         end;
      // TERMINO adentação registro F800
      query_F100.Next;
      end;
   query_F100.Close;
   query_F100.Close;
   end;

if mQtdRegBlocoF<1 then
   begin
   mLinha:='|F001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoF.Add(mLinha);
   mQtdRegBlocoF:=mQtdRegBlocoF+1;
   mQtdRegBloco_F001:=mQtdRegBloco_F001+1;
   end;
mQtdRegBlocoF:=mQtdRegBlocoF+1;
mQtdRegBloco_F990:=mQtdRegBloco_F990+1;
mLinha:='|F990|'+IntToStr(mQtdRegBlocoF)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoF.Add(mLinha);

result:=true;
end;
//Termino do bloco F


// INICIO BLOCO G
//Inicio Bloco F
function TFrm_SPED_EFD_NOVO.fBlocoG(pOrigem: Integer): Boolean;
begin
if mQtdRegBlocoG<1 then
   begin
   mLinha:='|G001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoG.Add(mLinha);
   mQtdRegBlocoG:=mQtdRegBlocoG+1;
   mQtdRegBloco_G001:=mQtdRegBloco_G001+1;
   end;
{
else
   begin
   mLinha:='|G001|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoG.Add(mLinha);
   mQtdRegBlocoG:=mQtdRegBlocoG+1;
   mQtdRegBloco_G001:=mQtdRegBloco_G001+1;
   mLinha:='';
   end;
}
if mQtdRegBlocoG>0 then
   begin
   mQtdRegBlocoG:=mQtdRegBlocoG+1;
   mQtdRegBloco_G990:=mQtdRegBloco_G990+1;
   mLinha:='|G990|'+IntToStr(mQtdRegBlocoG)+'|' ; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoG.Add(mLinha);
   end;

result:=true;
end;

// TERMNINO BLOCO G


// INICIO BLOCO H
function TFrm_SPED_EFD_NOVO.fBlocoH(pOrigem: Integer): Boolean;
var
query_inv: tQuery;
Qr_H010_Inventario: tQuery;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
if trim(CB_INVENTARIO.Text)='' then
   CB_INVENTARIO.Text:='-----1111-----';

query_inv:=tQuery.Create(nil);
query_inv.DatabaseName:='SG_ASSOC';
fInnerJoin(1,'CADPRO','PDCODEMP','IGCODEMP','PDCODPRO','IGCODPRO');

query_inv.Close;
query_inv.SQL.Clear;
query_inv.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT'
                  +'        ,sum(IGQTD*IGPRECO) AS VALOR '
                  +'        ,max(IGVALOR_TRANSP) AS VALOR_TRANSP '
                  +'        ,max(IGDATAEMI) as IGDATAEMI '
                  +'        ,count(*) as ITEM '
                  +' from INVGRA'               +iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                  +' IGCODEMP=0'+IntToStr(codemp)
                  +' and IGNOMEINV=:NOMEINV');
query_inv.ParamByName('NOMEINV').AsString:=CB_INVENTARIO.Text;
query_inv.SQL.Add(' group by IGNOMEINV ');
query_inv.Open;
{
if query_inv.IsEmpty then
   begin
   mLinha:='|H001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoH.Add(mLinha);
   mQtdRegBlocoH:=mQtdRegBlocoH+1;
   mQtdRegBloco_H001:=mQtdRegBloco_H001+1;
   end
else
   begin
}
   mLinha:='|H001|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoH.Add(mLinha);
   mQtdRegBlocoH:=mQtdRegBlocoH+1;
   mQtdRegBloco_H001:=mQtdRegBloco_H001+1;


   mQtdRegBlocoH:=mQtdRegBlocoH+1;
   mQtdRegBloco_H005:=mQtdRegBloco_H005+1;

   if query_inv.IsEmpty then
      mLinha:='|H005|'+FormatDatetime('ddmmyyyy', edt_datfin.Date)
          +'|'+FormatFloat('#0.00', 0)+'|'
          +FormatFloat('00', CB_MOTINV.ItemIndex+1)+'|'
   else
      mLinha:='|H005|'+FormatDatetime('ddmmyyyy', query_inv.fieldbyName('IGDATAEMI').asdatetime)
          +'|'+FormatFloat('#0.00', query_inv.fieldbyName('VALOR').AsFloat)+'|'
          +FormatFloat('00', CB_MOTINV.ItemIndex+1)+'|';

   Memo1.Lines.Add(mLinha);
   items_lista_BlocoH.Add(mLinha);

   Qr_H010_Inventario:=tQuery.Create(nil);
   Qr_H010_Inventario.DatabaseName:='SG_ASSOC';




   Qr_H010_Inventario.Close;
   Qr_H010_Inventario.SQL.Clear;
   Qr_H010_Inventario.SQL.Add('Select  IGCODPRO AS COD_ITEM,PDUND AS UNID, '
                             +' IGQTD AS QTD, IGPRECO AS VL_UNIT '
                             +' ,IGQTD*IGPRECO AS VL_ITEM '
                             +' ,0 AS IND_PROP '
                             +','+chr(39)+'  '+chr(39)+' AS COD_PART '
                             +','+chr(39)+' '+chr(39)+' AS TXT_COMPL '
                             +','+chr(39)+'000'+chr(39)+' AS COD_CTA '
                             +' from INVGRA'+iif(la_tabelas='','',',')+la_tabelas
                                    +'       '+la_Join
                                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                          +' IGCODEMP=0'+IntToStr(codemp)
                          +' and IGNOMEINV=:NOMEINV');
   Qr_H010_Inventario.ParamByName('NOMEINV').AsString:=CB_INVENTARIO.Text;
   Qr_H010_Inventario.Open;
   While not Qr_H010_Inventario.Eof do
      begin
      mQtdRegBlocoH:=mQtdRegBlocoH+1;
      mQtdRegBloco_H010:=mQtdRegBloco_H010+1;

      fTestarR0200(Qr_H010_Inventario.fieldbyName('COD_ITEM').AsString);

      mlinha:='|H010'
      +'|'+Qr_H010_Inventario.FieldbyName('COD_ITEM').AsString;
      if length(trim(Qr_H010_Inventario.FieldbyName('UNID').AsString))<2 then
          begin
          mlinha:=mlinha+'|UND'; //6
          fTestarR0190('UND');
          end
      else
          begin
          mlinha:=mlinha+'|'+trim(Qr_H010_Inventario.FieldbyName('UNID').AsString);
          fTestarR0190(Qr_H010_Inventario.fieldbyName('UNID').AsString);
          end;
       mlinha:=mlinha+'|'+FormatFloat('#0.000', Qr_H010_Inventario.FieldbyName('QTD').AsFloat)
      +'|'+FormatFloat('#0.000', Qr_H010_Inventario.FieldbyName('VL_UNIT').AsFloat)
      +'|'+FormatFloat('#0.00', Qr_H010_Inventario.FieldbyName('VL_ITEM').AsFloat)
      +'|'+Qr_H010_Inventario.FieldbyName('IND_PROP').AsString
      +'|'+Trim(Qr_H010_Inventario.FieldbyName('COD_PART').AsString)
      +'|'+Trim(Qr_H010_Inventario.FieldbyName('TXT_COMPL').AsString)
      +'|'+Trim(Qr_H010_Inventario.FieldbyName('COD_CTA').AsString)
      +'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoH.Add(mLinha);
      Qr_H010_Inventario.Next;
      end;
   freeandnil(Qr_H010_Inventario);
//   end;


mQtdRegBlocoH:=mQtdRegBlocoH+1;
mQtdRegBloco_H990:=mQtdRegBloco_H990+1;
mLinha:='|H990|'+IntToStr(mQtdRegBlocoH)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoH.Add(mLinha);
freeandnil(query_inv);
result:=true;
end;

// TERMNINO BLOCO H



// INICIO BLOCO K
function TFrm_SPED_EFD_NOVO.fBlocoK(pOrigem: Integer): Boolean;
var
query_k230: TQuery;
   procedure fblocoksemmovimento;
   begin
   mLinha:='|K001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoK.Add(mLinha);
   mQtdRegBlocoK:=mQtdRegBlocoK+1;
   mQtdRegBloco_K001:=mQtdRegBloco_K001+1;

   mQtdRegBlocoK:=mQtdRegBlocoK+1;
   mQtdRegBloco_K990:=mQtdRegBloco_K990+1;
   mLinha:='|K990|'+IntToStr(mQtdRegBlocoK)+'|' ; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoK.Add(mLinha);

   end;


   procedure fblocokAbrirMovimento;
   begin
   mLinha:='|K001|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoK.Add(mLinha);
   mQtdRegBlocoK:=mQtdRegBlocoK+1;
   mQtdRegBloco_K001:=mQtdRegBloco_K001+1;

   if CB_K100.Checked=true then
      begin
      mLinha:='|K100|'; // com dados
      mLinha:=mLinha+FormatDateTime(fdt_efd, edt_datini.date)+'|';
      mLinha:=mLinha+FormatDateTime(fdt_efd, edt_datfin.date)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoK.Add(mLinha);
      mQtdRegBlocoK:=mQtdRegBlocoK+1;
      mQtdRegBloco_K100:=mQtdRegBloco_K100+1;
      end;



   end;

   procedure fblocokFecharMovimento;
   begin
   mQtdRegBlocoK:=mQtdRegBlocoK+1;
   mQtdRegBloco_K990:=mQtdRegBloco_K990+1;
   mLinha:='|K990|'+IntToStr(mQtdRegBlocoK)+'|' ; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoK.Add(mLinha);
   end;


   procedure fblocokRegistroE235(pChave,pLotseq: Integer);
   var
   query_k235: TQuery;
   begin
   query_k235:=TQuery.create(nil);
   query_k235.databasename:=DM1.SG_ASSOC.DatabaseName;
   Query_k235.sql.clear;
   Query_k235.sql.Add('select max(OP1_DATA) AS DT_SAIDA ,OP3_CODMAT AS COD_ITEM '
                     +',SUM(OP3_QTDUTIL) AS QTD '
                     +','+QuotedStr('  ')+' AS COD_INS_SUBST '
                     +' from cadop01,cadop03 where '
                     +' op3_codigo=op1_codigo and op3_lotseq=op1_lotseq '
                     +'  and op1_codigo='+Inttostr(pChave)
                     +' and op1_lotseq='+inttostr(pLotseq)
                     +' GROUP BY op3_codmat ');
   try
      query_k235.open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_k235,7471,'SGE','CADOP01');
      end;
      end;
   While not query_k235.eof do
      begin
      fTestarR0200(query_k235.fieldbyname('COD_ITEM').Asstring);

      mQtdRegBlocoK:=mQtdRegBlocoK+1;
      mQtdRegBloco_K235:=mQtdRegBloco_K235+1;
      mLinha:='|K235|';
      mLinha:=mLinha+FormatDateTime(fdt_efd, query_k235.fieldbyname('DT_SAIDA').AsDateTime)+'|';
      mLinha:=mLinha+query_k235.fieldbyname('COD_ITEM').AsString+'|';
      mLinha:=mLinha+FormatFloat(mCasas3Dec, query_k235.fieldbyName('QTD').AsFloat)+'|';
      mLinha:=mLinha+query_k235.fieldbyname('COD_INS_SUBST').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoK.Add(mLinha);
      query_k235.next;
      end;
   query_k235.close;
   freeandnil(query_k235);
   end;


begin
if (CB_BLOCOK.Checked=false) and
    ( (cb_k100.Checked=false) and
     (cb_k200.Checked=false) and
     (cb_k220.Checked=false) and
     (cb_k230.Checked=false) and
     (cb_k235.Checked=false) and
     (cb_k250.Checked=false) and
     (cb_k255.Checked=false)
    )  then
   begin
   fblocoksemmovimento;
   result:=true;
   exit;
   end
else
   begin
   query_k230:=TQuery.create(nil);
   query_k230.databasename:=DM1.SG_ASSOC.DatabaseName;
   query_k230.sql.add('SELECT OP1_DATA AS DT_INI_OP '
                     +', OP1_DATA AS DT_FIN_OP '
                     +', OP1_CODIGO AS COD_DOC_OP '
                     +', OP2_CODPRO AS COD_ITEM '
                     +', OP2_QTDPROD AS QTD_ENC '
                     +', OP1_CODIGO, OP1_LOTSEQ '
                     +' FROM CADOP01,CADOP02 '
                     +' WHERE OP2_CODIGO=OP1_CODIGO '
                     +' AND OP1_LOTSEQ=OP1_LOTSEQ '
                     +' AND OP1_STATUS=2 ');
   query_k230.SQL.Add(fFormatdatetimeParaConsulta('OP1_DATA',true,edt_datini.date));
   query_k230.SQL.Add(fFormatdatetimeParaConsulta('OP1_DATA',false,edt_datfin.date));
   try
      query_k230.Open;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_k230,7332,'SGE','CADOP01');
      fblocoksemmovimento;
      result:=false;
      exit;
      end;
      end;
   if query_k230.IsEmpty then
      begin
      fblocoksemmovimento;
      result:=false;
      exit;
      end
   else
      begin

      fblocokAbrirMovimento;

      if CB_K230.Checked=true then
         begin
         While not query_k230.eof do
            begin
            fTestarR0200(query_k230.fieldbyName('COD_ITEM').Asstring);


            mLinha:='|';
            mLinha:=mLinha+'K230|';

            fValVal('Cadastro de Empresa ',mTabela,query_k230.fieldbyName('DT_INI_OP').fieldName,query_k230.fieldbyName('DT_INI_OP').Asstring);
            mLinha:=mLinha+FormatDateTime(fdt_efd, query_k230.fieldbyName('DT_INI_OP').AsDateTime)+'|';

            fValVal('Cadastro de Empresa ',mTabela,query_k230.fieldbyName('DT_FIN_OP').fieldName,query_k230.fieldbyName('DT_FIN_OP').Asstring);
            mLinha:=mLinha+FormatDateTime(fdt_efd, query_k230.fieldbyName('DT_FIN_OP').AsDateTime)+'|';

            fValVal('Cadastro de Empresa ',mTabela,query_k230.fieldbyName('COD_DOC_OP').fieldName,query_k230.fieldbyName('COD_DOC_OP').Asstring);
            mLinha:=mLinha+query_k230.fieldbyName('COD_DOC_OP').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabela,query_k230.fieldbyName('COD_ITEM').fieldName,query_k230.fieldbyName('COD_ITEM').Asstring);
            mLinha:=mLinha+query_k230.fieldbyName('COD_ITEM').AsString+'|';


            fValVal('Cadastro de Empresa ',mTabela,query_k230.fieldbyName('QTD_ENC').fieldName,query_k230.fieldbyName('QTD_ENC').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas3Dec, query_k230.fieldbyName('QTD_ENC').AsFloat)+'|';


            mQtdRegBlocoK:=mQtdRegBlocoK+1;
            mQtdRegBloco_K230:=mQtdRegBloco_K230+1;
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoK.Add(mLinha);
            fblocokRegistroE235(query_k230.fieldbyName('OP1_CODIGO').AsInteger,query_k230.fieldbyName('OP1_LOTSEQ').AsInteger);

            query_k230.Next;
            end;
         end;
      fblocokFecharMovimento;
      end;
  query_k230.close;
  freeandnil(query_k230);

  end;


result:=true;
end;

// TERMNINO BLOCO H



//Inicio Bloco M
function TFrm_SPED_EFD_NOVO.fBlocoM(pOrigem: Integer): Boolean;
var
Query_M110: tQuery;
Query_M211: tQuery;
Query_M220: tQuery;
Query_M230: tQuery;
Query_M300: tQuery;
Query_M350: tQuery;
Query_M400: tQuery;
Query_M410: tQuery;
Query_M510: tQuery;
Query_M611: tQuery;
Query_M620: tQuery;
Query_M630: tQuery;
Query_M700: tQuery;
Query_M800: tQuery;
Query_M810: tQuery;

begin
mem_m100.First;
mTabela:='tb_M100';

mLinha:='|M001|0|'; // com dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoM.Add(mLinha);
mQtdRegBlocoM:=mQtdRegBlocoM+1;
mQtdRegBloco_M001:=mQtdRegBloco_M001+1;
mLinha:='';

if (not mem_m100.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m100.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M100:=mQtdRegBloco_M100+1;
      mLinha:='|';
      mLinha:=mLinha+'M100|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('COD_CRED').fieldName,mem_m100.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('COD_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('IND_CRED_ORI').fieldName,mem_m100.fieldbyName('IND_CRED_ORI').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('IND_CRED_ORI').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_BC_PIS').fieldName,mem_m100.fieldbyName('VL_BC_PIS').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('VL_BC_PIS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('ALIQ_PIS').fieldName,mem_m100.fieldbyName('ALIQ_PIS').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('ALIQ_PIS').AsString+'|';
      if mem_m100.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('QUANT_BC_PIS').fieldName,mem_m100.fieldbyName('QUANT_BC_PIS').Asstring);
        mLinha:=mLinha+mem_m100.fieldbyName('QUANT_BC_PIS').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;

      if mem_m100.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('ALIQ_PIS_QUANT').fieldName,mem_m100.fieldbyName('ALIQ_PIS_QUANT').Asstring);
        mLinha:=mLinha+mem_m100.fieldbyName('ALIQ_PIS_QUANT').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED').fieldName,mem_m100.fieldbyName('VL_CRED').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('VL_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m100.fieldbyName('VL_AJUS_ACRES').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('VL_AJUS_ACRES').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_AJUS_REDUC').fieldName,mem_m100.fieldbyName('VL_AJUS_REDUC').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('VL_AJUS_REDUC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED_DIF').fieldName,mem_m100.fieldbyName('VL_CRED_DIF').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('VL_CRED_DIF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED_DISP').fieldName,mem_m100.fieldbyName('VL_CRED_DISP').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('VL_CRED_DISP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('IND_DESC_CRED').fieldName,mem_m100.fieldbyName('IND_DESC_CRED').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('IND_DESC_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED_DESC').fieldName,mem_m100.fieldbyName('VL_CRED_DESC').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('VL_CRED_DESC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('SLD_CRED').fieldName,mem_m100.fieldbyName('SLD_CRED').Asstring);
      mLinha:=mLinha+mem_m100.fieldbyName('SLD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m100.next;
      end;
   mem_m100.Close;
   end;

mem_m105.first;


mTabela:='tb_M105';
if (not mem_m105.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m105.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M105:=mQtdRegBloco_M105+1;
      mLinha:='|';
      mLinha:=mLinha+'M105|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('NAT_BC_CRED').fieldName,mem_m105.fieldbyName('NAT_BC_CRED').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('NAT_BC_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('CST_PIS').fieldName,mem_m105.fieldbyName('CST_PIS').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('CST_PIS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('VL_BC_PIS_TOT').fieldName,mem_m105.fieldbyName('VL_BC_PIS_TOT').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('VL_BC_PIS_TOT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('VL_BC_PIS_CUM').fieldName,mem_m105.fieldbyName('VL_BC_PIS_CUM').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('VL_BC_PIS_CUM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('VL_BC_PIS_NC').fieldName,mem_m105.fieldbyName('VL_BC_PIS_NC').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('VL_BC_PIS_NC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('VL_BC_PIS').fieldName,mem_m105.fieldbyName('VL_BC_PIS').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('VL_BC_PIS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('QUANT_BC_PIS_TOT').fieldName,mem_m105.fieldbyName('QUANT_BC_PIS_TOT').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('QUANT_BC_PIS_TOT').AsString+'|';
      if mem_m105.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('QUANT_BC_PIS').fieldName,mem_m105.fieldbyName('QUANT_BC_PIS').Asstring);
        mLinha:=mLinha+mem_m105.fieldbyName('QUANT_BC_PIS').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('DESC_CRED').fieldName,mem_m105.fieldbyName('DESC_CRED').Asstring);
      mLinha:=mLinha+mem_m105.fieldbyName('DESC_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m105.next;
      end;
   mem_m105.Close;
   end;


Query_M110:=tQuery.Create(nil);
Query_M110.DatabaseName:='SG_ASSOC';
Query_M110.Close;
Query_M110.Sql.Clear;
Query_M110.Sql.Add('select '+QuotedStr('0') + ' as IND_AJ ,NSTOTNOTA AS VL_AJ '
                  +','+QuotedStr('00') + ' as COD_AJ '
                  +',rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') as NUM_DOC '
                  +',rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') as DESCR_AJ '
                  +',SYSDATE AS DT_REF FROM CADNS '
                  +'  where NSNUMERO=-999999 ');
try
   Query_M110.Open;
except
   end;
mTabela:='tb_M110';
if (not query_m110.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M110.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M110:=mQtdRegBloco_M110+1;
      mLinha:='|';
      mLinha:=mLinha+'M110|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M110.fieldbyName('IND_AJ').fieldName,Query_M110.fieldbyName('IND_AJ').Asstring);
      mLinha:=mLinha+Query_M110.fieldbyName('IND_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M110.fieldbyName('VL_AJ').fieldName,Query_M110.fieldbyName('VL_AJ').Asstring);
      mLinha:=mLinha+Query_M110.fieldbyName('VL_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M110.fieldbyName('COD_AJ').fieldName,Query_M110.fieldbyName('COD_AJ').Asstring);
      mLinha:=mLinha+Query_M110.fieldbyName('COD_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M110.fieldbyName('NUM_DOC').fieldName,Query_M110.fieldbyName('NUM_DOC').Asstring);
      mLinha:=mLinha+Query_M110.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M110.fieldbyName('DESCR_AJ').fieldName,Query_M110.fieldbyName('DESCR_AJ').Asstring);
      mLinha:=mLinha+Query_M110.fieldbyName('DESCR_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M110.fieldbyName('DT_REF').fieldName,Query_M110.fieldbyName('DT_REF').Asstring);
      mLinha:=mLinha+Query_M110.fieldbyName('DT_REF').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M110.next;
      end;
   Query_M110.Close;
   end;
if (not mem_m200.IsEmpty) and (not CB_SOH.Checked)  then
   fGerarM200(0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0 //  pVL_CONT_NC_REC
                   ,0 // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );


mem_m200.First;
mTabela:='tb_M200';
if (not mem_m200.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m200.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M200:=mQtdRegBloco_M200+1;
      mLinha:='|';
      mLinha:=mLinha+'M200|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_NC_PER').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_NC_PER').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_TOT_CONT_NC_PER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CRED_DESC').fieldName,mem_m200.fieldbyName('VL_TOT_CRED_DESC').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_TOT_CRED_DESC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CRED_DESC_ANT').fieldName,mem_m200.fieldbyName('VL_TOT_CRED_DESC_ANT').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_TOT_CRED_DESC_ANT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_NC_DEV').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_NC_DEV').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_TOT_CONT_NC_DEV').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_RET_NC').fieldName,mem_m200.fieldbyName('VL_RET_NC').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_RET_NC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_OUT_DED_NC').fieldName,mem_m200.fieldbyName('VL_OUT_DED_NC').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_OUT_DED_NC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_CONT_NC_REC').fieldName,mem_m200.fieldbyName('VL_CONT_NC_REC').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_CONT_NC_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_RET_CUM').fieldName,mem_m200.fieldbyName('VL_RET_CUM').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_RET_CUM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_OUT_DED_CUM').fieldName,mem_m200.fieldbyName('VL_OUT_DED_CUM').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_OUT_DED_CUM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_CONT_CUM_REC').fieldName,mem_m200.fieldbyName('VL_CONT_CUM_REC').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_CONT_CUM_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_REC').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_REC').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_TOT_CONT_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_CUM_PER').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_CUM_PER').Asstring);
      mLinha:=mLinha+mem_m200.fieldbyName('VL_TOT_CONT_CUM_PER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m200.next;
      end;
   end;



mem_m210.First;
mTabela:='tb_M210';
if (not mem_m210.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m210.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M210:=mQtdRegBloco_M210+1;
      mLinha:='|';
      mLinha:=mLinha+'M210|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('COD_CONT').fieldName,mem_m210.fieldbyName('COD_CONT').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('COD_CONT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_REC_BRT').fieldName,mem_m210.fieldbyName('VL_REC_BRT').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_REC_BRT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_BC_CONT').fieldName,mem_m210.fieldbyName('VL_BC_CONT').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_BC_CONT').AsString+'|';
      ShowMessage(mem_m210.fieldbyName('ALIQ_PIS').AsString);
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('ALIQ_PIS').fieldName,mem_m210.fieldbyName('ALIQ_PIS').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('ALIQ_PIS').AsString+'|';
      if mem_m210.fieldbyName('QUANT_BC_PIS').Asfloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('QUANT_BC_PIS').fieldName,mem_m210.fieldbyName('QUANT_BC_PIS').Asstring);
        mLinha:=mLinha+mem_m210.fieldbyName('QUANT_BC_PIS').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;

      if mem_m210.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('ALIQ_PIS_QUANT').fieldName,mem_m210.fieldbyName('ALIQ_PIS_QUANT').Asstring);
        mLinha:=mLinha+mem_m210.fieldbyName('ALIQ_PIS_QUANT').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_APUR').fieldName,mem_m210.fieldbyName('VL_CONT_APUR').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_CONT_APUR').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m210.fieldbyName('VL_AJUS_ACRES').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_AJUS_ACRES').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_AJUS_REDUC').fieldName,mem_m210.fieldbyName('VL_AJUS_REDUC').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_AJUS_REDUC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_DIFER').fieldName,mem_m210.fieldbyName('VL_CONT_DIFER').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_CONT_DIFER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_DIFER_ANT').fieldName,mem_m210.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_CONT_DIFER_ANT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_PER').fieldName,mem_m210.fieldbyName('VL_CONT_PER').Asstring);
      mLinha:=mLinha+mem_m210.fieldbyName('VL_CONT_PER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m210.next;
      end;
   end;


Query_M211:=tQuery.Create(nil);
Query_M211.DatabaseName:='SG_ASSOC';
Query_M211.Close;
Query_M211.Sql.Clear;
Query_M211.Sql.Add('select '+QuotedStr('00') + ' as IND_TIP_COOP '
                  +',NSTOTNOTA AS VL_BC_CONT_ANT_EXC_COOP '
                  +',NSTOTNOTA AS VL_EXC_COOP_GER,NSTOTNOTA AS VL_EXC_ESP_COOP '
                  +',NSTOTNOTA AS VL_BC_CONT FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M211.Open;
except
   end;
mTabela:='tb_M211';
if (not query_m211.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M211.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M211:=mQtdRegBloco_M211+1;
      mLinha:='|';
      mLinha:=mLinha+'M211|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M211.fieldbyName('IND_TIP_COOP').fieldName,Query_M211.fieldbyName('IND_TIP_COOP').Asstring);
      mLinha:=mLinha+Query_M211.fieldbyName('IND_TIP_COOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M211.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').fieldName,Query_M211.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').Asstring);
      mLinha:=mLinha+Query_M211.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M211.fieldbyName('VL_EXC_COOP_GER').fieldName,Query_M211.fieldbyName('VL_EXC_COOP_GER').Asstring);
      mLinha:=mLinha+Query_M211.fieldbyName('VL_EXC_COOP_GER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M211.fieldbyName('VL_EXC_ESP_COOP').fieldName,Query_M211.fieldbyName('VL_EXC_ESP_COOP').Asstring);
      mLinha:=mLinha+Query_M211.fieldbyName('VL_EXC_ESP_COOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M211.fieldbyName('VL_BC_CONT').fieldName,Query_M211.fieldbyName('VL_BC_CONT').Asstring);
      mLinha:=mLinha+Query_M211.fieldbyName('VL_BC_CONT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M211.next;
      end;
   Query_M211.Close;
   end;

Query_M220:=tQuery.Create(nil);
Query_M220.DatabaseName:='SG_ASSOC';
Query_M220.Close;
Query_M220.Sql.Clear;
Query_M220.Sql.Add('select '+QuotedStr('1') + ' as IND_AJ  ,NSTOTNOTA AS VL_AJ '
                  +','+QuotedStr('00') + ' as COD_AJ, '
                  +'rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS NUM_DOC '
                  +',rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESCR_AJ '
                  +',SYSDATE AS DT_REF '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M220.Open;
except
   end;
mTabela:='tb_M220';
if (not query_m220.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M220.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M220:=mQtdRegBloco_M220+1;
      mLinha:='|';
      mLinha:=mLinha+'M220|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M220.fieldbyName('IND_AJ').fieldName,Query_M220.fieldbyName('IND_AJ').Asstring);
      mLinha:=mLinha+Query_M220.fieldbyName('IND_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M220.fieldbyName('VL_AJ').fieldName,Query_M220.fieldbyName('VL_AJ').Asstring);
      mLinha:=mLinha+Query_M220.fieldbyName('VL_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M220.fieldbyName('COD_AJ').fieldName,Query_M220.fieldbyName('COD_AJ').Asstring);
      mLinha:=mLinha+Query_M220.fieldbyName('COD_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M220.fieldbyName('NUM_DOC').fieldName,Query_M220.fieldbyName('NUM_DOC').Asstring);
      mLinha:=mLinha+Query_M220.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M220.fieldbyName('DESCR_AJ').fieldName,Query_M220.fieldbyName('DESCR_AJ').Asstring);
      mLinha:=mLinha+Query_M220.fieldbyName('DESCR_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M220.fieldbyName('DT_REF').fieldName,Query_M220.fieldbyName('DT_REF').Asstring);
      mLinha:=mLinha+Query_M220.fieldbyName('DT_REF').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M220.next;
      end;
   Query_M220.Close;
   end;


Query_M230:=tQuery.Create(nil);
Query_M230.DatabaseName:='SG_ASSOC';
Query_M230.Close;
Query_M230.Sql.Clear;
Query_M230.Sql.Add('SELECT rpad('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ '
                   +',NSTOTNOTA AS VL_VEND ,NSTOTNOTA AS VL_NAO_RECEB '
                   +',NSTOTNOTA AS VL_CONT_DIF,NSTOTNOTA AS VL_CRED_DIF '
                   +','+QuotedStr('000') + ' AS COD_CRED FROM CADNS '
                   +'  where NSNUMERO=-999999 ');
try
   Query_M230.Open;
except
   end;
mTabela:='tb_M230';
if (not query_m230.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M230.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M230:=mQtdRegBloco_M230+1;
      mLinha:='|';
      mLinha:=mLinha+'M230|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M230.fieldbyName('CNPJ').fieldName,Query_M230.fieldbyName('CNPJ').Asstring);
      mLinha:=mLinha+Query_M230.fieldbyName('CNPJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M230.fieldbyName('VL_VEND').fieldName,Query_M230.fieldbyName('VL_VEND').Asstring);
      mLinha:=mLinha+Query_M230.fieldbyName('VL_VEND').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M230.fieldbyName('VL_NAO_RECEB').fieldName,Query_M230.fieldbyName('VL_NAO_RECEB').Asstring);
      mLinha:=mLinha+Query_M230.fieldbyName('VL_NAO_RECEB').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M230.fieldbyName('VL_CONT_DIF').fieldName,Query_M230.fieldbyName('VL_CONT_DIF').Asstring);
      mLinha:=mLinha+Query_M230.fieldbyName('VL_CONT_DIF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M230.fieldbyName('VL_CRED_DIF').fieldName,Query_M230.fieldbyName('VL_CRED_DIF').Asstring);
      mLinha:=mLinha+Query_M230.fieldbyName('VL_CRED_DIF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M230.fieldbyName('COD_CRED').fieldName,Query_M230.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+Query_M230.fieldbyName('COD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M230.next;
      end;
   Query_M230.Close;
   end;



Query_M300:=tQuery.Create(nil);
Query_M300.DatabaseName:='SG_ASSOC';
Query_M300.Close;
Query_M300.Sql.Clear;
Query_M300.Sql.Add('SELECT '+QuotedStr('00') + ' as COD_CONT '
                  +',NSTOTNOTA AS VL_CONT_APUR_DIFER,'+QuotedStr('00') + ' as NAT_CRED_DESC '
                  +',NSTOTNOTA AS VL_CRED_DESC_DIFER,NSTOTNOTA AS VL_CONT_DIFER_ANT '
                  +','+QuotedStr('102001') + ' AS PER_APUR '
                  +',SYSDATE AS DT_RECEB FROM CADNS '
                  +'   where NSNUMERO=-999999 ');
try
   Query_M300.Open;
except
   end;
mTabela:='tb_M300';
if (not query_m300.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M300.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M300:=mQtdRegBloco_M300+1;
      mLinha:='|';
      mLinha:=mLinha+'M300|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('COD_CONT').fieldName,Query_M300.fieldbyName('COD_CONT').Asstring);
      mLinha:=mLinha+Query_M300.fieldbyName('COD_CONT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('VL_CONT_APUR_DIFER').fieldName,Query_M300.fieldbyName('VL_CONT_APUR_DIFER').Asstring);
      mLinha:=mLinha+Query_M300.fieldbyName('VL_CONT_APUR_DIFER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('NAT_CRED_DESC').fieldName,Query_M300.fieldbyName('NAT_CRED_DESC').Asstring);
      mLinha:=mLinha+Query_M300.fieldbyName('NAT_CRED_DESC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('VL_CRED_DESC_DIFER').fieldName,Query_M300.fieldbyName('VL_CRED_DESC_DIFER').Asstring);
      mLinha:=mLinha+Query_M300.fieldbyName('VL_CRED_DESC_DIFER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('VL_CONT_DIFER_ANT').fieldName,Query_M300.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
      mLinha:=mLinha+Query_M300.fieldbyName('VL_CONT_DIFER_ANT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('PER_APUR').fieldName,Query_M300.fieldbyName('PER_APUR').Asstring);
      mLinha:=mLinha+Query_M300.fieldbyName('PER_APUR').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('DT_RECEB').fieldName,Query_M300.fieldbyName('DT_RECEB').Asstring);
      mLinha:=mLinha+Query_M300.fieldbyName('DT_RECEB').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M300.next;
      end;
   Query_M300.Close;
   end;


Query_M350:=tQuery.Create(nil);
Query_M350.DatabaseName:='SG_ASSOC';
Query_M350.Close;
Query_M350.Sql.Clear;
Query_M350.Sql.Add('SELECT NSTOTNOTA AS VL_TOT_FOL,NSTOTNOTA AS VL_EXC_BC '
                  +',NSTOTNOTA AS VL_TOT_BC,NSTOTNOTA AS ALIQ_PIS_FOL,NSTOTNOTA AS VL_TOT_CONT_FOL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M350.Open;
except
   end;
mTabela:='tb_M350';
if (not query_m350.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M350.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M350:=mQtdRegBloco_M350+1;
      mLinha:='|';
      mLinha:=mLinha+'M350|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M350.fieldbyName('VL_TOT_FOL').fieldName,Query_M350.fieldbyName('VL_TOT_FOL').Asstring);
      mLinha:=mLinha+Query_M350.fieldbyName('VL_TOT_FOL').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M350.fieldbyName('VL_EXC_BC').fieldName,Query_M350.fieldbyName('VL_EXC_BC').Asstring);
      mLinha:=mLinha+Query_M350.fieldbyName('VL_EXC_BC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M350.fieldbyName('VL_TOT_BC').fieldName,Query_M350.fieldbyName('VL_TOT_BC').Asstring);
      mLinha:=mLinha+Query_M350.fieldbyName('VL_TOT_BC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M350.fieldbyName('ALIQ_PIS_FOL').fieldName,Query_M350.fieldbyName('ALIQ_PIS_FOL').Asstring);
      mLinha:=mLinha+Query_M350.fieldbyName('ALIQ_PIS_FOL').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M350.fieldbyName('VL_TOT_CONT_FOL').fieldName,Query_M350.fieldbyName('VL_TOT_CONT_FOL').Asstring);
      mLinha:=mLinha+Query_M350.fieldbyName('VL_TOT_CONT_FOL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M350.next;
      end;
   Query_M350.Close;
   end;






Query_M400:=tQuery.Create(nil);
Query_M400.DatabaseName:='SG_ASSOC';
Query_M400.Close;
Query_M400.Sql.Clear;
Query_M400.Sql.Add('SELECT '+QuotedStr('00') + ' as CST_PIS ,NSTOTNOTA AS VL_TOT_REC '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M400.Open;
except
   end;
mTabela:='tb_M400';
if (not query_m400.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M400.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M400:=mQtdRegBloco_M400+1;
      mLinha:='|';
      mLinha:=mLinha+'M400|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M400.fieldbyName('CST_PIS').fieldName,Query_M400.fieldbyName('CST_PIS').Asstring);
      mLinha:=mLinha+Query_M400.fieldbyName('CST_PIS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M400.fieldbyName('VL_TOT_REC').fieldName,Query_M400.fieldbyName('VL_TOT_REC').Asstring);
      mLinha:=mLinha+Query_M400.fieldbyName('VL_TOT_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M400.fieldbyName('COD_CTA').fieldName,Query_M400.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_M400.fieldbyName('COD_CTA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M400.fieldbyName('DESC_COMPL').fieldName,Query_M400.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_M400.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M400.next;
      end;
   Query_M400.Close;
   end;






Query_M410:=tQuery.Create(nil);
Query_M410.DatabaseName:='SG_ASSOC';
Query_M410.Close;
Query_M410.Sql.Clear;
Query_M410.Sql.Add('SELECT '+QuotedStr('000') + ' as NAT_REC,NSTOTNOTA AS VL_REC '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +' FROM CADNS   where NSNUMERO=-999999 ');
try
   Query_M410.Open;
except
   end;
mTabela:='tb_M410';
if (not query_m410.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M410.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M410:=mQtdRegBloco_M410+1;
      mLinha:='|';
      mLinha:=mLinha+'M410|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M410.fieldbyName('NAT_REC').fieldName,Query_M410.fieldbyName('NAT_REC').Asstring);
      mLinha:=mLinha+Query_M410.fieldbyName('NAT_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M410.fieldbyName('VL_REC').fieldName,Query_M410.fieldbyName('VL_REC').Asstring);
      mLinha:=mLinha+Query_M410.fieldbyName('VL_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M410.fieldbyName('COD_CTA').fieldName,Query_M410.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_M410.fieldbyName('COD_CTA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M410.fieldbyName('DESC_COMPL').fieldName,Query_M410.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_M410.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M410.next;
      end;
   Query_M410.Close;
   end;






mem_m500.First;
mTabela:='tb_M500';
if (not mem_m500.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m500.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M500:=mQtdRegBloco_M500+1;
      mLinha:='|';
      mLinha:=mLinha+'M500|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('COD_CRED').fieldName,mem_m500.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('COD_CRED').AsString+'|';
//      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('IND_CRED_ORI').fieldName,mem_m500.fieldbyName('IND_CRED_ORI').Asstring);
      fValVal('Cadastro de Empresa ',mTabela,mem_m500IND_CRED_ORI.fieldName,mem_m500IND_CRED_ORI.Asstring);
//      mLinha:=mLinha+mem_m500.fieldbyName('IND_CRED_ORI').AsString+'|';
      mLinha:=mLinha+mem_m500IND_CRED_ORI.AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_BC_COFINS').fieldName,mem_m500.fieldbyName('VL_BC_COFINS').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('VL_BC_COFINS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('ALIQ_COFINS').fieldName,mem_m500.fieldbyName('ALIQ_COFINS').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('ALIQ_COFINS').AsString+'|';
      if mem_m500.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('QUANT_BC_COFINS').fieldName,mem_m500.fieldbyName('QUANT_BC_COFINS').Asstring);
        mLinha:=mLinha+mem_m500.fieldbyName('QUANT_BC_COFINS').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      if mem_m500.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('ALIQ_COFINS_QUANT').fieldName,mem_m500.fieldbyName('ALIQ_COFINS_QUANT').Asstring);
        mLinha:=mLinha+mem_m500.fieldbyName('ALIQ_COFINS_QUANT').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_CRED').fieldName,mem_m500.fieldbyName('VL_CRED').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('VL_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m500.fieldbyName('VL_AJUS_ACRES').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('VL_AJUS_ACRES').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_AJUS_REDUC').fieldName,mem_m500.fieldbyName('VL_AJUS_REDUC').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('VL_AJUS_REDUC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_CRED_DIF').fieldName,mem_m500.fieldbyName('VL_CRED_DIF').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('VL_CRED_DIF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_CRED_DISP').fieldName,mem_m500.fieldbyName('VL_CRED_DISP').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('VL_CRED_DISP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('IND_DESC_CRED').fieldName,mem_m500.fieldbyName('IND_DESC_CRED').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('IND_DESC_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_CRED_DESC').fieldName,mem_m500.fieldbyName('VL_CRED_DESC').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('VL_CRED_DESC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('SLD_CRED').fieldName,mem_m500.fieldbyName('SLD_CRED').Asstring);
      mLinha:=mLinha+mem_m500.fieldbyName('SLD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m500.next;
      end;
   mem_m500.Close;
   end;






mem_m505.First;
mTabela:='tb_M505';
if (not mem_m505.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m505.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M505:=mQtdRegBloco_M505+1;
      mLinha:='|';
      mLinha:=mLinha+'M505|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('NAT_BC_CRED').fieldName,mem_m505.fieldbyName('NAT_BC_CRED').Asstring);
      mLinha:=mLinha+mem_m505.fieldbyName('NAT_BC_CRED').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('CST_COFINS').fieldName,mem_m505.fieldbyName('CST_COFINS').Asstring);
      mLinha:=mLinha+mem_m505.fieldbyName('CST_COFINS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('VL_BC_COFINS_TOT').fieldName,mem_m505.fieldbyName('VL_BC_COFINS_TOT').Asstring);
      mLinha:=mLinha+mem_m505.fieldbyName('VL_BC_COFINS_TOT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('VL_BC_COFINS_CUM').fieldName,mem_m505.fieldbyName('VL_BC_COFINS_CUM').Asstring);
      mLinha:=mLinha+mem_m505.fieldbyName('VL_BC_COFINS_CUM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('VL_BC_COFINS_NC').fieldName,mem_m505.fieldbyName('VL_BC_COFINS_NC').Asstring);
      mLinha:=mLinha+mem_m505.fieldbyName('VL_BC_COFINS_NC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('VL_BC_COFINS').fieldName,mem_m505.fieldbyName('VL_BC_COFINS').Asstring);
      mLinha:=mLinha+mem_m505.fieldbyName('VL_BC_COFINS').AsString+'|';
      if mem_m505.fieldbyName('QUANT_BC_COFINS_TOT').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('QUANT_BC_COFINS_TOT').fieldName,mem_m505.fieldbyName('QUANT_BC_COFINS_TOT').Asstring);
        mLinha:=mLinha+mem_m505.fieldbyName('QUANT_BC_COFINS_TOT').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      if mem_m505.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('QUANT_BC_COFINS').fieldName,mem_m505.fieldbyName('QUANT_BC_COFINS').Asstring);
        mLinha:=mLinha+mem_m505.fieldbyName('QUANT_BC_COFINS').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;

      fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('DESC_CRED').fieldName,mem_m505.fieldbyName('DESC_CRED').Asstring);
      mLinha:=mLinha+mem_m505.fieldbyName('DESC_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m505.next;
      end;
   mem_m505.Close;
   end;






Query_M510:=tQuery.Create(nil);
Query_M510.DatabaseName:='SG_ASSOC';
Query_M510.Close;
Query_M510.Sql.Clear;
Query_M510.Sql.Add('SELECT '+QuotedStr('0') + ' as IND_AJ ,NSTOTNOTA AS VL_AJ '
                  +','+QuotedStr('00') + ' as COD_AJ, '
                  +' RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS NUM_DOC '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESCR_AJ '
                  +',SYSDATE AS DT_REF FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M510.Open;
except
   end;
mTabela:='tb_M510';
if (not query_m510.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M510.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M510:=mQtdRegBloco_M510+1;
      mLinha:='|';
      mLinha:=mLinha+'M510|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M510.fieldbyName('IND_AJ').fieldName,Query_M510.fieldbyName('IND_AJ').Asstring);
      mLinha:=mLinha+Query_M510.fieldbyName('IND_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M510.fieldbyName('VL_AJ').fieldName,Query_M510.fieldbyName('VL_AJ').Asstring);
      mLinha:=mLinha+Query_M510.fieldbyName('VL_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M510.fieldbyName('COD_AJ').fieldName,Query_M510.fieldbyName('COD_AJ').Asstring);
      mLinha:=mLinha+Query_M510.fieldbyName('COD_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M510.fieldbyName('NUM_DOC').fieldName,Query_M510.fieldbyName('NUM_DOC').Asstring);
      mLinha:=mLinha+Query_M510.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M510.fieldbyName('DESCR_AJ').fieldName,Query_M510.fieldbyName('DESCR_AJ').Asstring);
      mLinha:=mLinha+Query_M510.fieldbyName('DESCR_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M510.fieldbyName('DT_REF').fieldName,Query_M510.fieldbyName('DT_REF').Asstring);
      mLinha:=mLinha+Query_M510.fieldbyName('DT_REF').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M510.next;
      end;
   Query_M510.Close;
   end;




if (not mem_m600.IsEmpty) and (not CB_SOH.Checked)  then
   fGerarM600(0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0 //  pVL_CONT_NC_REC
                   ,0 // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,0 // pVL_TOT_CONT_REC);
                   );




mem_m600.First;
mTabela:='tb_M600';
if (not mem_m600.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m600.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M600:=mQtdRegBloco_M600+1;
      mLinha:='|';
      mLinha:=mLinha+'M600|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_NC_PER').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_NC_PER').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_TOT_CONT_NC_PER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CRED_DESC').fieldName,mem_m600.fieldbyName('VL_TOT_CRED_DESC').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_TOT_CRED_DESC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CRED_DESC_ANT').fieldName,mem_m600.fieldbyName('VL_TOT_CRED_DESC_ANT').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_TOT_CRED_DESC_ANT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_NC_DEV').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_NC_DEV').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_TOT_CONT_NC_DEV').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_RET_NC').fieldName,mem_m600.fieldbyName('VL_RET_NC').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_RET_NC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_OUT_DED_NC').fieldName,mem_m600.fieldbyName('VL_OUT_DED_NC').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_OUT_DED_NC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_CONT_NC_REC').fieldName,mem_m600.fieldbyName('VL_CONT_NC_REC').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_CONT_NC_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_CUM_PER').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_CUM_PER').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_TOT_CONT_CUM_PER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_RET_CUM').fieldName,mem_m600.fieldbyName('VL_RET_CUM').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_RET_CUM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_OUT_DED_CUM').fieldName,mem_m600.fieldbyName('VL_OUT_DED_CUM').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_OUT_DED_CUM').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_CONT_CUM_REC').fieldName,mem_m600.fieldbyName('VL_CONT_CUM_REC').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_CONT_CUM_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_REC').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_REC').Asstring);
      mLinha:=mLinha+mem_m600.fieldbyName('VL_TOT_CONT_REC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m600.next;
      end;
   mem_m600.Close;
   end;






mem_m610.first;
mTabela:='tb_M610';
if (not mem_m610.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not mem_m610.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M610:=mQtdRegBloco_M610+1;
      mLinha:='|';
      mLinha:=mLinha+'M610|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('COD_CONT').fieldName,mem_m610.fieldbyName('COD_CONT').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('COD_CONT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_REC_BRT').fieldName,mem_m610.fieldbyName('VL_REC_BRT').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_REC_BRT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_BC_CONT').fieldName,mem_m610.fieldbyName('VL_BC_CONT').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_BC_CONT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('ALIQ_COFINS').fieldName,mem_m610.fieldbyName('ALIQ_COFINS').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('ALIQ_COFINS').AsString+'|';
      if mem_m610.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('QUANT_BC_COFINS').fieldName,mem_m610.fieldbyName('QUANT_BC_COFINS').Asstring);
        mLinha:=mLinha+mem_m610.fieldbyName('QUANT_BC_COFINS').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      if mem_m610.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
        begin
        fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('ALIQ_COFINS_QUANT').fieldName,mem_m610.fieldbyName('ALIQ_COFINS_QUANT').Asstring);
        mLinha:=mLinha+mem_m610.fieldbyName('ALIQ_COFINS_QUANT').AsString+'|';
        end
      else
        begin
        mLinha:=mLinha+'|';
        end;
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_APUR').fieldName,mem_m610.fieldbyName('VL_CONT_APUR').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_CONT_APUR').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m610.fieldbyName('VL_AJUS_ACRES').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_AJUS_ACRES').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_AJUS_REDUC').fieldName,mem_m610.fieldbyName('VL_AJUS_REDUC').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_AJUS_REDUC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_DIFER').fieldName,mem_m610.fieldbyName('VL_CONT_DIFER').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_CONT_DIFER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_DIFER_ANT').fieldName,mem_m610.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_CONT_DIFER_ANT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_PER').fieldName,mem_m610.fieldbyName('VL_CONT_PER').Asstring);
      mLinha:=mLinha+mem_m610.fieldbyName('VL_CONT_PER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m610.next;
      end;
   mem_m610.Close;
   end;






Query_M611:=tQuery.Create(nil);
Query_M611.DatabaseName:='SG_ASSOC';
Query_M611.Close;
Query_M611.Sql.Clear;
Query_M611.Sql.Add('SELECT '+QuotedStr('00') + ' as IND_TIP_COOP '
                  +',NSTOTNOTA AS VL_BC_CONT_ANT_EXC_COOP,NSTOTNOTA AS VL_EXC_COOP_GER '
                  +',NSTOTNOTA AS VL_EXC_ESP_COOP,NSTOTNOTA AS VL_BC_CONT '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M611.Open;
except
   end;
mTabela:='tb_M611';
if (not query_m611.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M611.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M611:=mQtdRegBloco_M611+1;
      mLinha:='|';
      mLinha:=mLinha+'M611|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('IND_TIP_COOP').fieldName,Query_M611.fieldbyName('IND_TIP_COOP').Asstring);
      mLinha:=mLinha+Query_M611.fieldbyName('IND_TIP_COOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').fieldName,Query_M611.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').Asstring);
      mLinha:=mLinha+Query_M611.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('VL_EXC_COOP_GER').fieldName,Query_M611.fieldbyName('VL_EXC_COOP_GER').Asstring);
      mLinha:=mLinha+Query_M611.fieldbyName('VL_EXC_COOP_GER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('VL_EXC_ESP_COOP').fieldName,Query_M611.fieldbyName('VL_EXC_ESP_COOP').Asstring);
      mLinha:=mLinha+Query_M611.fieldbyName('VL_EXC_ESP_COOP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('VL_BC_CONT').fieldName,Query_M611.fieldbyName('VL_BC_CONT').Asstring);
      mLinha:=mLinha+Query_M611.fieldbyName('VL_BC_CONT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M611.next;
      end;
   Query_M611.Close;
   end;






Query_M620:=tQuery.Create(nil);
Query_M620.DatabaseName:='SG_ASSOC';
Query_M620.Close;
Query_M620.Sql.Clear;
Query_M620.Sql.Add('SELECT '+QuotedStr('0') + ' as IND_AJ,NSTOTNOTA AS VL_AJ '
                  +','+QuotedStr('00') + ' as COD_AJ '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS NUM_DOC '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESCR_AJ '
                  +',SYSDATE AS DT_REF FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M620.Open;
except
   end;
mTabela:='tb_M620';
if (not query_m620.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M620.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M620:=mQtdRegBloco_M620+1;
      mLinha:='|';
      mLinha:=mLinha+'M620|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M620.fieldbyName('IND_AJ').fieldName,Query_M620.fieldbyName('IND_AJ').Asstring);
      mLinha:=mLinha+Query_M620.fieldbyName('IND_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M620.fieldbyName('VL_AJ').fieldName,Query_M620.fieldbyName('VL_AJ').Asstring);
      mLinha:=mLinha+Query_M620.fieldbyName('VL_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M620.fieldbyName('COD_AJ').fieldName,Query_M620.fieldbyName('COD_AJ').Asstring);
      mLinha:=mLinha+Query_M620.fieldbyName('COD_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M620.fieldbyName('NUM_DOC').fieldName,Query_M620.fieldbyName('NUM_DOC').Asstring);
      mLinha:=mLinha+Query_M620.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M620.fieldbyName('DESCR_AJ').fieldName,Query_M620.fieldbyName('DESCR_AJ').Asstring);
      mLinha:=mLinha+Query_M620.fieldbyName('DESCR_AJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M620.fieldbyName('DT_REF').fieldName,Query_M620.fieldbyName('DT_REF').Asstring);
      mLinha:=mLinha+Query_M620.fieldbyName('DT_REF').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M620.next;
      end;
   Query_M620.Close;
   end;






Query_M630:=tQuery.Create(nil);
Query_M630.DatabaseName:='SG_ASSOC';
Query_M630.Close;
Query_M630.Sql.Clear;
Query_M630.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') as CNPJ '
                  +' ,NSTOTNOTA AS VL_VEND,NSTOTNOTA AS VL_NAO_RECEB '
                  +',NSTOTNOTA AS VL_CONT_DIF,NSTOTNOTA AS VL_CRED_DIF '
                  +','+QuotedStr('000') + ' AS COD_CRED '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M630.Open;
except
   end;
mTabela:='tb_M630';
if (not query_m630.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M630.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M630:=mQtdRegBloco_M630+1;
      mLinha:='|';
      mLinha:=mLinha+'M630|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('CNPJ').fieldName,Query_M630.fieldbyName('CNPJ').Asstring);
      mLinha:=mLinha+Query_M630.fieldbyName('CNPJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('VL_VEND').fieldName,Query_M630.fieldbyName('VL_VEND').Asstring);
      mLinha:=mLinha+Query_M630.fieldbyName('VL_VEND').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('VL_NAO_RECEB').fieldName,Query_M630.fieldbyName('VL_NAO_RECEB').Asstring);
      mLinha:=mLinha+Query_M630.fieldbyName('VL_NAO_RECEB').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('VL_CONT_DIF').fieldName,Query_M630.fieldbyName('VL_CONT_DIF').Asstring);
      mLinha:=mLinha+Query_M630.fieldbyName('VL_CONT_DIF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('VL_CRED_DIF').fieldName,Query_M630.fieldbyName('VL_CRED_DIF').Asstring);
      mLinha:=mLinha+Query_M630.fieldbyName('VL_CRED_DIF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('COD_CRED').fieldName,Query_M630.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+Query_M630.fieldbyName('COD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M630.next;
      end;
   Query_M630.Close;
   end;






Query_M700:=tQuery.Create(nil);
Query_M700.DatabaseName:='SG_ASSOC';
Query_M700.Close;
Query_M700.Sql.Clear;
Query_M700.Sql.Add('SELECT '+QuotedStr('00') + ' as COD_CONT '
                  +',NSTOTNOTA AS VL_CONT_APUR_DIFER ,NSTOTNOTA AS NAT_CRED_DESC '
                  +',NSTOTNOTA AS VL_CRED_DESC_DIFER,NSTOTNOTA AS VL_CONT_DIFER_ANT '
                  +','+QuotedStr('122001') + ' as PER_APUR '
                  +',sysdate as DT_RECEB FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M700.Open;
except
   end;
mTabela:='tb_M700';
if (not query_m700.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M700.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M700:=mQtdRegBloco_M700+1;
      mLinha:='|';
      mLinha:=mLinha+'M700|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('COD_CONT').fieldName,Query_M700.fieldbyName('COD_CONT').Asstring);
      mLinha:=mLinha+Query_M700.fieldbyName('COD_CONT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('VL_CONT_APUR_DIFER').fieldName,Query_M700.fieldbyName('VL_CONT_APUR_DIFER').Asstring);
      mLinha:=mLinha+Query_M700.fieldbyName('VL_CONT_APUR_DIFER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('NAT_CRED_DESC').fieldName,Query_M700.fieldbyName('NAT_CRED_DESC').Asstring);
      mLinha:=mLinha+Query_M700.fieldbyName('NAT_CRED_DESC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('VL_CRED_DESC_DIFER').fieldName,Query_M700.fieldbyName('VL_CRED_DESC_DIFER').Asstring);
      mLinha:=mLinha+Query_M700.fieldbyName('VL_CRED_DESC_DIFER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('VL_CONT_DIFER_ANT').fieldName,Query_M700.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
      mLinha:=mLinha+Query_M700.fieldbyName('VL_CONT_DIFER_ANT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('PER_APUR').fieldName,Query_M700.fieldbyName('PER_APUR').Asstring);
      mLinha:=mLinha+Query_M700.fieldbyName('PER_APUR').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('DT_RECEB').fieldName,Query_M700.fieldbyName('DT_RECEB').Asstring);
      mLinha:=mLinha+Query_M700.fieldbyName('DT_RECEB').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M700.next;
      end;
   Query_M700.Close;
   end;






Query_M800:=tQuery.Create(nil);
Query_M800.DatabaseName:='SG_ASSOC';
Query_M800.Close;
Query_M800.Sql.Clear;
Query_M800.Sql.Add('SELECT '+QuotedStr('00') + ' as CST_COFINS '
                  +',NSTOTNOTA AS VL_TOT_REC '
                  +',rpad('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M800.Open;
except
   end;
mTabela:='tb_M800';
if (not query_m800.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M800.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M800:=mQtdRegBloco_M800+1;
      mLinha:='|';
      mLinha:=mLinha+'M800|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M800.fieldbyName('CST_COFINS').fieldName,Query_M800.fieldbyName('CST_COFINS').Asstring);
      mLinha:=mLinha+Query_M800.fieldbyName('CST_COFINS').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M800.fieldbyName('VL_TOT_REC').fieldName,Query_M800.fieldbyName('VL_TOT_REC').Asstring);
      mLinha:=mLinha+Query_M800.fieldbyName('VL_TOT_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M800.fieldbyName('COD_CTA').fieldName,Query_M800.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_M800.fieldbyName('COD_CTA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M800.fieldbyName('DESC_COMPL').fieldName,Query_M800.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_M800.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M800.next;
      end;
   Query_M800.Close;
   end;






Query_M810:=tQuery.Create(nil);
Query_M810.DatabaseName:='SG_ASSOC';
Query_M810.Close;
Query_M810.Sql.Clear;
Query_M810.Sql.Add('SELECT '+QuotedStr('000') + ' as NAT_REC ,NSTOTNOTA AS VL_REC '
                  +',rpad('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_M810.Open;
except
   end;
mTabela:='tb_M810';
if (not query_m810.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   while not Query_M810.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M810:=mQtdRegBloco_M810+1;
      mLinha:='|';
      mLinha:=mLinha+'M810|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M810.fieldbyName('NAT_REC').fieldName,Query_M810.fieldbyName('NAT_REC').Asstring);
      mLinha:=mLinha+Query_M810.fieldbyName('NAT_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M810.fieldbyName('VL_REC').fieldName,Query_M810.fieldbyName('VL_REC').Asstring);
      mLinha:=mLinha+Query_M810.fieldbyName('VL_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M810.fieldbyName('COD_CTA').fieldName,Query_M810.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_M810.fieldbyName('COD_CTA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_M810.fieldbyName('DESC_COMPL').fieldName,Query_M810.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_M810.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      Query_M810.next;
      end;
   Query_M810.Close;
   end;



if mQtdRegBlocoM<1 then
   begin
   mLinha:='|M001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoM.Add(mLinha);
   mQtdRegBlocoM:=mQtdRegBlocoM+1;
   mQtdRegBloco_M001:=mQtdRegBloco_M001+1;
   end;
mQtdRegBlocoM:=mQtdRegBlocoM+1;
mQtdRegBloco_M990:=mQtdRegBloco_M990+1;
mLinha:='|M990|'+IntToStr(mQtdRegBlocoM)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoM.Add(mLinha);

result:=true;




end;


function TFrm_SPED_EFD_NOVO.fBloco1(pOrigem: Integer): Boolean;
var
Query_1010: tQuery;
Query_1020: tQuery;
Query_1100: tQuery;
Query_1101: tQuery;
Query_1102: tQuery;
Query_1200: tQuery;
Query_1210: tQuery;
Query_1220: tQuery;
Query_1300: tQuery;
Query_1500: tQuery;
Query_1501: tQuery;
Query_1502: tQuery;
Query_1600: tQuery;
Query_1610: tQuery;
Query_1620: tQuery;
Query_1700: tQuery;
Query_1800: tQuery;
Query_1809: tQuery;

begin


Query_1010:=tQuery.Create(nil);
Query_1010.DatabaseName:='SG_ASSOC';
Query_1010.Close;
Query_1010.Sql.Clear;
Query_1010.Sql.Add('SELECT rpad('+QuotedStr('0') + ',20,'+QuotedStr('0') + ') AS NUM_PROC '
                  +',rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS ID_SEC_JUD '
                  +','+QuotedStr('00') + ' as ID_VARA ,NSTOTNOTA AS IND_NAT_ACAO '
                  +',rpad('+QuotedStr('0') + ',100,'+QuotedStr('0') + ') AS DESC_DEC_JUD '
                  +',SYSDATE AS DT_SENT_JUD '
                  +','+QuotedStr('N')+' as IND_GIAF1'
                  +','+QuotedStr('N')+' as IND_GIAF2'
                  +','+QuotedStr('N')+' as IND_GIAF3'
                  +'  FROM CADNS   where NSNUMERO=-999999 ');
try
   Query_1010.Open;
except
   end;
Qr_1010.Close;
Qr_1010.Open;

mTabela:='tb_1010';
if (not qr_1010.IsEmpty)   then
   begin
   mLinha:='|1001|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Qr_1010.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1010:=mQtdRegBloco_1010+1;


      mLInha:='|'+Qr_1010REG.AsString+'|';                // 01
      mLInha:=mlinha+Qr_1010IND_EXP.AsString+'|';         // 02
      mLInha:=mlinha+Qr_1010IND_CCRF.AsString+'|';        // 03
      mLInha:=mlinha+Qr_1010IND_COMB.AsString+'|';        // 04
      mLInha:=mlinha+Qr_1010IND_USINA.AsString+'|';       // 05
      mLInha:=mlinha+Qr_1010IND_VA.AsString+'|';          // 06
      mLInha:=mlinha+Qr_1010IND_EE.AsString+'|';          // 07
      mLInha:=mlinha+Qr_1010IND_CART.AsString+'|';        // 08
      mLInha:=mlinha+Qr_1010IND_FORM.AsString+'|';        // 09
      mLInha:=mlinha+Qr_1010IND_AER.AsString+'|';         // 10
      mLInha:=mlinha+Qr_1010IND_GIAF1.AsString+'|';       // 11
      mLInha:=mlinha+Qr_1010IND_GIAF2.AsString+'|';       // 12
      mLInha:=mlinha+Qr_1010IND_GIAF3.AsString+'|';       // 13 
      mLInha:=mlinha+'N'+'|';       // 14

      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Qr_1010.next;
      end;
   Qr_1010.Close;
   end;






Query_1020:=tQuery.Create(nil);
Query_1020.DatabaseName:='SG_ASSOC';
Query_1020.Close;
Query_1020.Sql.Clear;
Query_1020.Sql.Add('SELECT rpad('+QuotedStr('0') + ',20,'+QuotedStr('0') + ') AS NUM_PROC '
                  +','+QuotedStr('00') + ' AS IND_NAT_ACAO '
                  +',SYSDATE AS DT_DEC_ADM '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1020.Open;
except
   end;
mTabela:='tb_1020';
if (not query_1020.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1020|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1020.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1020:=mQtdRegBloco_1020+1;
      mLinha:='|';
      mLinha:=mLinha+'1020|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1020.fieldbyName('NUM_PROC').fieldName,Query_1020.fieldbyName('NUM_PROC').Asstring);
      mLinha:=mLinha+Query_1020.fieldbyName('NUM_PROC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1020.fieldbyName('IND_NAT_ACAO').fieldName,Query_1020.fieldbyName('IND_NAT_ACAO').Asstring);
      mLinha:=mLinha+Query_1020.fieldbyName('IND_NAT_ACAO').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1020.fieldbyName('DT_DEC_ADM').fieldName,Query_1020.fieldbyName('DT_DEC_ADM').Asstring);
      mLinha:=mLinha+Query_1020.fieldbyName('DT_DEC_ADM').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1020.next;
      end;
   Query_1020.Close;
   end;






Query_1100:=tQuery.Create(nil);
Query_1100.DatabaseName:='SG_ASSOC';
Query_1100.Close;
Query_1100.Sql.Clear;
Query_1100.Sql.Add('SELECT '+QuotedStr('122012') + ' AS PER_APU_CRED '
                  +','+QuotedStr('00') + ' as ORIG_CRED '
                  +',rpad('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ_SUC '
                  +','+QuotedStr('000') + ' as COD_CRED '
                  +',NSTOTNOTA AS VL_CRED_APU '
                  +',NSTOTNOTA AS VL_CRED_EXT_APU '
                  +',NSTOTNOTA AS VL_TOT_CRED_APU '
                  +',NSTOTNOTA AS VL_CRED_DESC_PA_ANT '
                  +',NSTOTNOTA AS VL_CRED_PER_PA_ANT '
                  +',NSTOTNOTA AS VL_CRED_DCOMP_PA_ANT '
                  +',NSTOTNOTA AS SD_CRED_DISP_EFD '
                  +',NSTOTNOTA AS VL_CRED_DESC_EFD '
                  +',NSTOTNOTA AS VL_CRED_PER_EFD'
                  +',NSTOTNOTA AS VL_CRED_DCOMP_EFD '
                  +',NSTOTNOTA AS VL_CRED_TRANS '
                  +',NSTOTNOTA AS VL_CRED_OUT '
                  +',NSTOTNOTA AS SLD_CRED_FIM '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1100.Open;
except
   end;
mTabela:='tb_1100';
if (not query_1100.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1100|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1100.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1100:=mQtdRegBloco_1100+1;
      mLinha:='|';
      mLinha:=mLinha+'1100|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('PER_APU_CRED').fieldName,Query_1100.fieldbyName('PER_APU_CRED').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('PER_APU_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('ORIG_CRED').fieldName,Query_1100.fieldbyName('ORIG_CRED').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('ORIG_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('CNPJ_SUC').fieldName,Query_1100.fieldbyName('CNPJ_SUC').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('CNPJ_SUC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('COD_CRED').fieldName,Query_1100.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('COD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_APU').fieldName,Query_1100.fieldbyName('VL_CRED_APU').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_EXT_APU').fieldName,Query_1100.fieldbyName('VL_CRED_EXT_APU').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_EXT_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_TOT_CRED_APU').fieldName,Query_1100.fieldbyName('VL_TOT_CRED_APU').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_TOT_CRED_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DESC_PA_ANT').fieldName,Query_1100.fieldbyName('VL_CRED_DESC_PA_ANT').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_DESC_PA_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_PER_PA_ANT').fieldName,Query_1100.fieldbyName('VL_CRED_PER_PA_ANT').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_PER_PA_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DCOMP_PA_ANT').fieldName,Query_1100.fieldbyName('VL_CRED_DCOMP_PA_ANT').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_DCOMP_PA_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('SD_CRED_DISP_EFD').fieldName,Query_1100.fieldbyName('SD_CRED_DISP_EFD').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('SD_CRED_DISP_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DESC_EFD').fieldName,Query_1100.fieldbyName('VL_CRED_DESC_EFD').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_DESC_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_PER_EFD').fieldName,Query_1100.fieldbyName('VL_CRED_PER_EFD').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_PER_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DCOMP_EFD').fieldName,Query_1100.fieldbyName('VL_CRED_DCOMP_EFD').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_DCOMP_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_TRANS').fieldName,Query_1100.fieldbyName('VL_CRED_TRANS').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_TRANS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_OUT').fieldName,Query_1100.fieldbyName('VL_CRED_OUT').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_CRED_OUT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('SLD_CRED_FIM').fieldName,Query_1100.fieldbyName('SLD_CRED_FIM').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('SLD_CRED_FIM').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1100.next;
      end;
   Query_1100.Close;
   end;






Query_1101:=tQuery.Create(nil);
Query_1101.DatabaseName:='SG_ASSOC';
Query_1101.Close;
Query_1101.Sql.Clear;
Query_1101.Sql.Add('SELECT  rpad('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_PART '
                  +',rpad('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_ITEM '
                  +','+QuotedStr('00') + ' as COD_MOD '
                  +','+QuotedStr('0000') + ' as SER '
                  +','+QuotedStr('000') + ' as SUB_SER '
                  +',000000000 AS NUM_DOC '
                  +',SYSDATE AS DT_OPER '
                  +',RPAD('+QuotedStr('0') + ',44,'+QuotedStr('0') + ') AS CHV_NFE '
                  +' ,NSTOTNOTA AS VL_OPER '
                  +',0000 AS CFOP '
                  +','+QuotedStr('00') + ' AS NAT_BC_CRED '
                  +','+QuotedStr('0') + ' AS IND_ORIG_CRED '
                  +','+QuotedStr('00') + ' AS CST_PIS '
                  +',NSTOTNOTA AS VL_BC_PIS '
                  +',NSTOTNOTA AS ALIQ_PIS '
                  +',NSTOTNOTA AS VL_PIS '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CCUS '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +','+QuotedStr('122012') + ' AS PER_ESCRIT'
                  +',RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ '
                  +'FROM CADNS  where NSNUMERO=-999999');
try
   Query_1101.Open;
except
   end;
mTabela:='tb_1101';
if (not query_1101.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1101|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1101.eof do
      begin
      fTestarR0200(query_1101.fieldbyName('COD_ITEM').AsString);

      fTestarCliFor(query_1101.fieldbyName('COD_PART').AsString);

      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1101:=mQtdRegBloco_1101+1;
      mLinha:='|';
      mLinha:=mLinha+'1101|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('COD_PART').fieldName,Query_1101.fieldbyName('COD_PART').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('COD_PART').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('COD_ITEM').fieldName,Query_1101.fieldbyName('COD_ITEM').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('COD_ITEM').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('COD_MOD').fieldName,Query_1101.fieldbyName('COD_MOD').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('COD_MOD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('SER').fieldName,Query_1101.fieldbyName('SER').Asstring);
      mLinha:=mLinha+trim(Query_1101.fieldbyName('SER').AsString)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('SUB_SER').fieldName,Query_1101.fieldbyName('SUB_SER').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('SUB_SER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('NUM_DOC').fieldName,Query_1101.fieldbyName('NUM_DOC').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('NUM_DOC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('DT_OPER').fieldName,Query_1101.fieldbyName('DT_OPER').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('DT_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('CHV_NFE').fieldName,Query_1101.fieldbyName('CHV_NFE').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('CHV_NFE').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('VL_OPER').fieldName,Query_1101.fieldbyName('VL_OPER').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('VL_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('CFOP').fieldName,Query_1101.fieldbyName('CFOP').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('CFOP').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('NAT_BC_CRED').fieldName,Query_1101.fieldbyName('NAT_BC_CRED').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('NAT_BC_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('IND_ORIG_CRED').fieldName,Query_1101.fieldbyName('IND_ORIG_CRED').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('IND_ORIG_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('CST_PIS').fieldName,Query_1101.fieldbyName('CST_PIS').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('CST_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('VL_BC_PIS').fieldName,Query_1101.fieldbyName('VL_BC_PIS').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('VL_BC_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('ALIQ_PIS').fieldName,Query_1101.fieldbyName('ALIQ_PIS').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('ALIQ_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('VL_PIS').fieldName,Query_1101.fieldbyName('VL_PIS').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('VL_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('COD_CTA').fieldName,Query_1101.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('COD_CTA').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('COD_CCUS').fieldName,Query_1101.fieldbyName('COD_CCUS').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('COD_CCUS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('DESC_COMPL').fieldName,Query_1101.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('PER_ESCRIT').fieldName,Query_1101.fieldbyName('PER_ESCRIT').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('PER_ESCRIT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1101.fieldbyName('CNPJ').fieldName,Query_1101.fieldbyName('CNPJ').Asstring);
      mLinha:=mLinha+Query_1101.fieldbyName('CNPJ').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1101.next;
      end;
   Query_1101.Close;
   end;

 

 

 
Query_1102:=tQuery.Create(nil);
Query_1102.DatabaseName:='SG_ASSOC';
Query_1102.Close;
Query_1102.Sql.Clear;
Query_1102.Sql.Add('SELECT NSTOTNOTA AS VL_CRED_PIS_TRIB_MI  ,NSTOTNOTA AS VL_CRED_PIS_NT_MI '
                  +',NSTOTNOTA AS VL_CRED_PIS_EXP  FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1102.Open;
except
   end;
mTabela:='tb_1102';
if (not query_1102.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1102|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1102.eof do 
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1102:=mQtdRegBloco_1102+1;
      mLinha:='|';
      mLinha:=mLinha+'1102|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1102.fieldbyName('VL_CRED_PIS_TRIB_MI').fieldName,Query_1102.fieldbyName('VL_CRED_PIS_TRIB_MI').Asstring);
      mLinha:=mLinha+Query_1102.fieldbyName('VL_CRED_PIS_TRIB_MI').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1102.fieldbyName('VL_CRED_PIS_NT_MI').fieldName,Query_1102.fieldbyName('VL_CRED_PIS_NT_MI').Asstring);
      mLinha:=mLinha+Query_1102.fieldbyName('VL_CRED_PIS_NT_MI').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1102.fieldbyName('VL_CRED_PIS_EXP').fieldName,Query_1102.fieldbyName('VL_CRED_PIS_EXP').Asstring);
      mLinha:=mLinha+Query_1102.fieldbyName('VL_CRED_PIS_EXP').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1102.next;
      end;
   Query_1102.Close;
   end;
 
 
 

 

Query_1200:=tQuery.Create(nil);
Query_1200.DatabaseName:='SG_ASSOC';
Query_1200.Close;
Query_1200.Sql.Clear;
Query_1200.Sql.Add('SELECT '+QuotedStr('122012') + ' as PER_APUR_ANT '
                  +','+QuotedStr('00') + ' as NAT_CONT_REC '
                  +',NSTOTNOTA AS VL_CONT_APUR,NSTOTNOTA AS VL_CRED_PIS_DESC '
                  +',NSTOTNOTA AS VL_CONT_DEV ,NSTOTNOTA AS VL_OUT_DED '
                  +',NSTOTNOTA AS VL_CONT_EXT ,NSTOTNOTA AS VL_MUL '
                  +',NSTOTNOTA AS VL_JUR ,SYSDATE AS DT_RECOL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1200.Open;
except
   end;
mTabela:='tb_1200';
if (not query_1200.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1200|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1200.eof do 
      begin 
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1200:=mQtdRegBloco_1200+1;
      mLinha:='|';
      mLinha:=mLinha+'1200|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('PER_APUR_ANT').fieldName,Query_1200.fieldbyName('PER_APUR_ANT').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('PER_APUR_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('NAT_CONT_REC').fieldName,Query_1200.fieldbyName('NAT_CONT_REC').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('NAT_CONT_REC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('VL_CONT_APUR').fieldName,Query_1200.fieldbyName('VL_CONT_APUR').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('VL_CONT_APUR').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('VL_CRED_PIS_DESC').fieldName,Query_1200.fieldbyName('VL_CRED_PIS_DESC').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('VL_CRED_PIS_DESC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('VL_CONT_DEV').fieldName,Query_1200.fieldbyName('VL_CONT_DEV').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('VL_CONT_DEV').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('VL_OUT_DED').fieldName,Query_1200.fieldbyName('VL_OUT_DED').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('VL_OUT_DED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('VL_CONT_EXT').fieldName,Query_1200.fieldbyName('VL_CONT_EXT').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('VL_CONT_EXT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('VL_MUL').fieldName,Query_1200.fieldbyName('VL_MUL').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('VL_MUL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('VL_JUR').fieldName,Query_1200.fieldbyName('VL_JUR').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('VL_JUR').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1200.fieldbyName('DT_RECOL').fieldName,Query_1200.fieldbyName('DT_RECOL').Asstring);
      mLinha:=mLinha+Query_1200.fieldbyName('DT_RECOL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1200.next;
      end;
   Query_1200.Close;
   end;
 
 
 
 
 

Query_1210:=tQuery.Create(nil);
Query_1210.DatabaseName:='SG_ASSOC';
Query_1210.Close;
Query_1210.Sql.Clear;
Query_1210.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ '
                  +','+QuotedStr('00') + ' AS CST_PIS '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_PART '
                  +',SYSDATE AS DT_OPER,NSTOTNOTA AS VL_OPER,NSTOTNOTA AS VL_BC_PIS '
                  +',NSTOTNOTA AS ALIQ_PIS,NSTOTNOTA AS VL_PIS '
                  +' ,RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1210.Open;
except
   end;
mTabela:='tb_1210';
if (not query_1210.IsEmpty) and (not CB_SOH.Checked)  then
   begin 
   mLinha:='|1210|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1210.eof do
      begin
      fTestarCliFor(query_1210.fieldbyName('COD_PART').AsString);
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1210:=mQtdRegBloco_1210+1;
      mLinha:='|';
      mLinha:=mLinha+'1210|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('CNPJ').fieldName,Query_1210.fieldbyName('CNPJ').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('CNPJ').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('CST_PIS').fieldName,Query_1210.fieldbyName('CST_PIS').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('CST_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('COD_PART').fieldName,Query_1210.fieldbyName('COD_PART').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('COD_PART').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('DT_OPER').fieldName,Query_1210.fieldbyName('DT_OPER').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('DT_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('VL_OPER').fieldName,Query_1210.fieldbyName('VL_OPER').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('VL_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('VL_BC_PIS').fieldName,Query_1210.fieldbyName('VL_BC_PIS').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('VL_BC_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('ALIQ_PIS').fieldName,Query_1210.fieldbyName('ALIQ_PIS').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('ALIQ_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('VL_PIS').fieldName,Query_1210.fieldbyName('VL_PIS').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('VL_PIS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('COD_CTA').fieldName,Query_1210.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('COD_CTA').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1210.fieldbyName('DESC_COMPL').fieldName,Query_1210.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_1210.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1210.next;
      end;
   Query_1210.Close;
   end;
 
 
 


 
Query_1220:=tQuery.Create(nil);
Query_1220.DatabaseName:='SG_ASSOC';
Query_1220.Close;
Query_1220.Sql.Clear;
Query_1220.Sql.Add('SELECT '+QuotedStr('122012') + ' as PER_APU_CRED '
                  +','+QuotedStr('00') + ' as ORIG_CRED,'+QuotedStr('000') + ' as COD_CRED '
                  +',NSTOTNOTA AS VL_CRED FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1220.Open;
except
   end;
mTabela:='tb_1220';
if (not query_1220.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1220|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1220.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1220:=mQtdRegBloco_1220+1;
      mLinha:='|';
      mLinha:=mLinha+'1220|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1220.fieldbyName('PER_APU_CRED').fieldName,Query_1220.fieldbyName('PER_APU_CRED').Asstring);
      mLinha:=mLinha+Query_1220.fieldbyName('PER_APU_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1220.fieldbyName('ORIG_CRED').fieldName,Query_1220.fieldbyName('ORIG_CRED').Asstring);
      mLinha:=mLinha+Query_1220.fieldbyName('ORIG_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1220.fieldbyName('COD_CRED').fieldName,Query_1220.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+Query_1220.fieldbyName('COD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1220.fieldbyName('VL_CRED').fieldName,Query_1220.fieldbyName('VL_CRED').Asstring);
      mLinha:=mLinha+Query_1220.fieldbyName('VL_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1220.next;
      end;
   Query_1220.Close;
   end;






Query_1300:=tQuery.Create(nil);
Query_1300.DatabaseName:='SG_ASSOC';
Query_1300.Close;
Query_1300.Sql.Clear;
Query_1300.Sql.Add('SELECT '+QuotedStr('12') + ' as IND_NAT_RET '
                  +','+QuotedStr('002012') + ' as PR_REC_RET ,NSTOTNOTA AS VL_RET_APU '
                  +',NSTOTNOTA AS VL_RET_DED,NSTOTNOTA AS VL_RET_PER '
                  +',NSTOTNOTA AS VL_RET_DCOMP,NSTOTNOTA AS SLD_RET '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1300.Open;
except
   end;
mTabela:='tb_1300';
if (not query_1300.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1300|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1300.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1300:=mQtdRegBloco_1300+1;
      mLinha:='|';
      mLinha:=mLinha+'1300|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1300.fieldbyName('IND_NAT_RET').fieldName,Query_1300.fieldbyName('IND_NAT_RET').Asstring);
      mLinha:=mLinha+Query_1300.fieldbyName('IND_NAT_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1300.fieldbyName('PR_REC_RET').fieldName,Query_1300.fieldbyName('PR_REC_RET').Asstring);
      mLinha:=mLinha+Query_1300.fieldbyName('PR_REC_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1300.fieldbyName('VL_RET_APU').fieldName,Query_1300.fieldbyName('VL_RET_APU').Asstring);
      mLinha:=mLinha+Query_1300.fieldbyName('VL_RET_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1300.fieldbyName('VL_RET_DED').fieldName,Query_1300.fieldbyName('VL_RET_DED').Asstring);
      mLinha:=mLinha+Query_1300.fieldbyName('VL_RET_DED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1300.fieldbyName('VL_RET_PER').fieldName,Query_1300.fieldbyName('VL_RET_PER').Asstring);
      mLinha:=mLinha+Query_1300.fieldbyName('VL_RET_PER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1300.fieldbyName('VL_RET_DCOMP').fieldName,Query_1300.fieldbyName('VL_RET_DCOMP').Asstring);
      mLinha:=mLinha+Query_1300.fieldbyName('VL_RET_DCOMP').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1300.fieldbyName('SLD_RET').fieldName,Query_1300.fieldbyName('SLD_RET').Asstring);
      mLinha:=mLinha+Query_1300.fieldbyName('SLD_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1300.next;
      end;
   Query_1300.Close;
   end;






Query_1500:=tQuery.Create(nil);
Query_1500.DatabaseName:='SG_ASSOC';
Query_1500.Close;
Query_1500.Sql.Clear;
Query_1500.Sql.Add('SELECT '+QuotedStr('002012') + ' as PER_APU_CRED '
                  +','+QuotedStr('00') + ' AS ORIG_CRED '
                  +',rpad('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ_SUC '
                  +','+QuotedStr('000') + ' AS COD_CRED '
                  +',NSTOTNOTA AS VL_CRED_APU,NSTOTNOTA AS VL_CRED_EXT_APU '
                  +',NSTOTNOTA AS VL_TOT_CRED_APU,NSTOTNOTA AS VL_CRED_DESC_PA_ANT '
                  +',NSTOTNOTA AS VL_CRED_PER_PA_ANT,NSTOTNOTA AS VL_CRED_DCOMP_PA_ANT '
                  +',NSTOTNOTA AS SD_CRED_DISP_EFD,NSTOTNOTA AS VL_CRED_DESC_EFD '
                  +',NSTOTNOTA AS VL_CRED_PER_EFD,NSTOTNOTA AS VL_CRED_DCOMP_EFD '
                  +',NSTOTNOTA AS VL_CRED_TRANS,NSTOTNOTA AS VL_CRED_OUT '
                  +',NSTOTNOTA AS SLD_CRED_FIM FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1500.Open;
except
   end;
mTabela:='tb_1500';
if (not query_1500.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1500|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1500.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1500:=mQtdRegBloco_1500+1;
      mLinha:='|';
      mLinha:=mLinha+'1500|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('PER_APU_CRED').fieldName,Query_1500.fieldbyName('PER_APU_CRED').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('PER_APU_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('ORIG_CRED').fieldName,Query_1500.fieldbyName('ORIG_CRED').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('ORIG_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('CNPJ_SUC').fieldName,Query_1500.fieldbyName('CNPJ_SUC').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('CNPJ_SUC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('COD_CRED').fieldName,Query_1500.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('COD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_APU').fieldName,Query_1500.fieldbyName('VL_CRED_APU').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_EXT_APU').fieldName,Query_1500.fieldbyName('VL_CRED_EXT_APU').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_EXT_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_TOT_CRED_APU').fieldName,Query_1500.fieldbyName('VL_TOT_CRED_APU').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_TOT_CRED_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_DESC_PA_ANT').fieldName,Query_1500.fieldbyName('VL_CRED_DESC_PA_ANT').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_DESC_PA_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_PER_PA_ANT').fieldName,Query_1500.fieldbyName('VL_CRED_PER_PA_ANT').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_PER_PA_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_DCOMP_PA_ANT').fieldName,Query_1500.fieldbyName('VL_CRED_DCOMP_PA_ANT').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_DCOMP_PA_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('SD_CRED_DISP_EFD').fieldName,Query_1500.fieldbyName('SD_CRED_DISP_EFD').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('SD_CRED_DISP_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_DESC_EFD').fieldName,Query_1500.fieldbyName('VL_CRED_DESC_EFD').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_DESC_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_PER_EFD').fieldName,Query_1500.fieldbyName('VL_CRED_PER_EFD').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_PER_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_DCOMP_EFD').fieldName,Query_1500.fieldbyName('VL_CRED_DCOMP_EFD').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_DCOMP_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_TRANS').fieldName,Query_1500.fieldbyName('VL_CRED_TRANS').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_TRANS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('VL_CRED_OUT').fieldName,Query_1500.fieldbyName('VL_CRED_OUT').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('VL_CRED_OUT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1500.fieldbyName('SLD_CRED_FIM').fieldName,Query_1500.fieldbyName('SLD_CRED_FIM').Asstring);
      mLinha:=mLinha+Query_1500.fieldbyName('SLD_CRED_FIM').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1500.next;
      end;
   Query_1500.Close;
   end;






Query_1501:=tQuery.Create(nil);
Query_1501.DatabaseName:='SG_ASSOC';
Query_1501.Close;
Query_1501.Sql.Clear;
Query_1501.Sql.Add('SELECT rpad('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_PART '
                  +',rpad('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_ITEM '
                  +','+QuotedStr('00') + ' AS COD_MOD,'+QuotedStr('0000') + ' as SER '
                  +','+QuotedStr('000') + ' as SUB_SER ,000000000 AS NUM_DOC '
                  +',SYSDATE AS DT_OPER, '
                  +' rpad('+QuotedStr('0') + ',44,'+QuotedStr('0') + ') AS CHV_NFE '
                  +' ,NSTOTNOTA AS VL_OPER,0000 AS CFOP '
                  +','+QuotedStr('00') + ' AS NAT_BC_CRED '
                  +','+QuotedStr('0') + ' AS IND_ORIG_CRED '
                  +','+QuotedStr('00') + ' AS CST_COFINS '
                  +',NSTOTNOTA AS VL_BC_COFINS '
                  +',NSTOTNOTA AS ALIQ_COFINS '
                  +',NSTOTNOTA AS VL_COFINS '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CCUS '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +','+QuotedStr('122002') + ' AS PER_ESCRIT '
                  +',RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1501.Open;
except
   end;
mTabela:='tb_1501';
if (not query_1501.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   fTestarR0200(query_1501.fieldbyName('COD_ITEM').AsString);

   mLinha:='|1501|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1501.eof do
      begin
      fTestarCliFor(query_1501.fieldbyName('COD_PART').AsString);

      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1501:=mQtdRegBloco_1501+1;
      mLinha:='|';
      mLinha:=mLinha+'1501|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('COD_PART').fieldName,Query_1501.fieldbyName('COD_PART').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('COD_PART').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('COD_ITEM').fieldName,Query_1501.fieldbyName('COD_ITEM').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('COD_ITEM').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('COD_MOD').fieldName,Query_1501.fieldbyName('COD_MOD').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('COD_MOD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('SER').fieldName,Query_1501.fieldbyName('SER').Asstring);
      mLinha:=mLinha+trim(Query_1501.fieldbyName('SER').AsString)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('SUB_SER').fieldName,Query_1501.fieldbyName('SUB_SER').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('SUB_SER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('NUM_DOC').fieldName,Query_1501.fieldbyName('NUM_DOC').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('NUM_DOC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('DT_OPER').fieldName,Query_1501.fieldbyName('DT_OPER').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('DT_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('CHV_NFE').fieldName,Query_1501.fieldbyName('CHV_NFE').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('CHV_NFE').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('VL_OPER').fieldName,Query_1501.fieldbyName('VL_OPER').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('VL_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('CFOP').fieldName,Query_1501.fieldbyName('CFOP').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('CFOP').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('NAT_BC_CRED').fieldName,Query_1501.fieldbyName('NAT_BC_CRED').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('NAT_BC_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('IND_ORIG_CRED').fieldName,Query_1501.fieldbyName('IND_ORIG_CRED').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('IND_ORIG_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('CST_COFINS').fieldName,Query_1501.fieldbyName('CST_COFINS').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('CST_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('VL_BC_COFINS').fieldName,Query_1501.fieldbyName('VL_BC_COFINS').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('VL_BC_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('ALIQ_COFINS').fieldName,Query_1501.fieldbyName('ALIQ_COFINS').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('ALIQ_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('VL_COFINS').fieldName,Query_1501.fieldbyName('VL_COFINS').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('VL_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('COD_CTA').fieldName,Query_1501.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('COD_CTA').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('COD_CCUS').fieldName,Query_1501.fieldbyName('COD_CCUS').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('COD_CCUS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('DESC_COMPL').fieldName,Query_1501.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('PER_ESCRIT').fieldName,Query_1501.fieldbyName('PER_ESCRIT').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('PER_ESCRIT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1501.fieldbyName('CNPJ').fieldName,Query_1501.fieldbyName('CNPJ').Asstring);
      mLinha:=mLinha+Query_1501.fieldbyName('CNPJ').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1501.next;
      end;
   Query_1501.Close;
   end;






Query_1502:=tQuery.Create(nil);
Query_1502.DatabaseName:='SG_ASSOC';
Query_1502.Close;
Query_1502.Sql.Clear;
Query_1502.Sql.Add('SELECT NSTOTNOTA AS VL_CRED_COFINS_TRIB_MI,'
                  +' NSTOTNOTA AS VL_CRED_COFINS_NT_MI '
                  +',NSTOTNOTA AS VL_CRED_COFINS_EXP '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1502.Open;
except
   end;
mTabela:='tb_1502';
if (not query_1502.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1502|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1502.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1502:=mQtdRegBloco_1502+1;
      mLinha:='|';
      mLinha:=mLinha+'1502|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1502.fieldbyName('VL_CRED_COFINS_TRIB_MI').fieldName,Query_1502.fieldbyName('VL_CRED_COFINS_TRIB_MI').Asstring);
      mLinha:=mLinha+Query_1502.fieldbyName('VL_CRED_COFINS_TRIB_MI').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1502.fieldbyName('VL_CRED_COFINS_NT_MI').fieldName,Query_1502.fieldbyName('VL_CRED_COFINS_NT_MI').Asstring);
      mLinha:=mLinha+Query_1502.fieldbyName('VL_CRED_COFINS_NT_MI').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1502.fieldbyName('VL_CRED_COFINS_EXP').fieldName,Query_1502.fieldbyName('VL_CRED_COFINS_EXP').Asstring);
      mLinha:=mLinha+Query_1502.fieldbyName('VL_CRED_COFINS_EXP').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1502.next;
      end;
   Query_1502.Close;
   end;






Query_1600:=tQuery.Create(nil);
Query_1600.DatabaseName:='SG_ASSOC';
Query_1600.Close;
Query_1600.Sql.Clear;
Query_1600.Sql.Add('SELECT '+QuotedStr('122001') + ' as PER_APUR_ANT '
                  +','+QuotedStr('00') + ' as NAT_CONT_REC '
                  +',NSTOTNOTA AS VL_CONT_APUR,NSTOTNOTA AS VL_CRED_COFINS_DESC '
                  +',NSTOTNOTA AS VL_CONT_DEV,NSTOTNOTA AS VL_OUT_DED,'
                  +' NSTOTNOTA AS VL_CONT_EXT,NSTOTNOTA AS VL_MUL,'
                  +' NSTOTNOTA AS VL_JUR,SYSDATE AS DT_RECOL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1600.Open;
except
   end;
mTabela:='tb_1600';
if (not query_1600.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1600|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1600.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1600:=mQtdRegBloco_1600+1;
      mLinha:='|';
      mLinha:=mLinha+'1600|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('PER_APUR_ANT').fieldName,Query_1600.fieldbyName('PER_APUR_ANT').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('PER_APUR_ANT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('NAT_CONT_REC').fieldName,Query_1600.fieldbyName('NAT_CONT_REC').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('NAT_CONT_REC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('VL_CONT_APUR').fieldName,Query_1600.fieldbyName('VL_CONT_APUR').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('VL_CONT_APUR').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('VL_CRED_COFINS_DESC').fieldName,Query_1600.fieldbyName('VL_CRED_COFINS_DESC').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('VL_CRED_COFINS_DESC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('VL_CONT_DEV').fieldName,Query_1600.fieldbyName('VL_CONT_DEV').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('VL_CONT_DEV').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('VL_OUT_DED').fieldName,Query_1600.fieldbyName('VL_OUT_DED').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('VL_OUT_DED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('VL_CONT_EXT').fieldName,Query_1600.fieldbyName('VL_CONT_EXT').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('VL_CONT_EXT').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('VL_MUL').fieldName,Query_1600.fieldbyName('VL_MUL').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('VL_MUL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('VL_JUR').fieldName,Query_1600.fieldbyName('VL_JUR').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('VL_JUR').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1600.fieldbyName('DT_RECOL').fieldName,Query_1600.fieldbyName('DT_RECOL').Asstring);
      mLinha:=mLinha+Query_1600.fieldbyName('DT_RECOL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1600.next;
      end;
   Query_1600.Close;
   end;






Query_1610:=tQuery.Create(nil);
Query_1610.DatabaseName:='SG_ASSOC';
Query_1610.Close;
Query_1610.Sql.Clear;
Query_1610.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',14,'+QuotedStr('0') + ') AS CNPJ '
                  +','+QuotedStr('00') + ' as CST_COFINS '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_PART '
                  +',SYSDATE AS DT_OPER,NSTOTNOTA AS VL_OPER,NSTOTNOTA AS VL_BC_COFINS '
                  +',NSTOTNOTA AS ALIQ_COFINS,NSTOTNOTA AS VL_COFINS '
                  +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                  +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                  +' FROM CADNS  where NSNUMERO=-999999 ');
try
   Query_1610.Open;
except
   end;
mTabela:='tb_1610';
if (not query_1610.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1610|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1610.eof do
      begin
      fTestarCliFor(query_1610.fieldbyName('COD_PART').AsString);

      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1610:=mQtdRegBloco_1610+1;
      mLinha:='|';
      mLinha:=mLinha+'1610|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('CNPJ').fieldName,Query_1610.fieldbyName('CNPJ').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('CNPJ').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('CST_COFINS').fieldName,Query_1610.fieldbyName('CST_COFINS').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('CST_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('COD_PART').fieldName,Query_1610.fieldbyName('COD_PART').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('COD_PART').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('DT_OPER').fieldName,Query_1610.fieldbyName('DT_OPER').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('DT_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('VL_OPER').fieldName,Query_1610.fieldbyName('VL_OPER').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('VL_OPER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('VL_BC_COFINS').fieldName,Query_1610.fieldbyName('VL_BC_COFINS').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('VL_BC_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('ALIQ_COFINS').fieldName,Query_1610.fieldbyName('ALIQ_COFINS').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('ALIQ_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('VL_COFINS').fieldName,Query_1610.fieldbyName('VL_COFINS').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('VL_COFINS').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('COD_CTA').fieldName,Query_1610.fieldbyName('COD_CTA').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('COD_CTA').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1610.fieldbyName('DESC_COMPL').fieldName,Query_1610.fieldbyName('DESC_COMPL').Asstring);
      mLinha:=mLinha+Query_1610.fieldbyName('DESC_COMPL').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1610.next;
      end;
   Query_1610.Close;
   end;






Query_1620:=tQuery.Create(nil);
Query_1620.DatabaseName:='SG_ASSOC';
Query_1620.Close;
Query_1620.Sql.Clear;
Query_1620.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',06,'+QuotedStr('0') + ') AS PER_APU_CRED '
                  +','+QuotedStr('00') + ' as ORIG_CRED ,RPAD('+QuotedStr('0') + ',03,'+QuotedStr('0') + ') AS COD_CRED '
                  +',NSTOTNOTA AS VL_CRED FROM CADNS  where NSNUMERO=-999999 ');

try
   Query_1620.Open;
except
   end;
mTabela:='tb_1620';
if (not query_1620.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1620|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1620.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1620:=mQtdRegBloco_1620+1;
      mLinha:='|';
      mLinha:=mLinha+'1620|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1620.fieldbyName('PER_APU_CRED').fieldName,Query_1620.fieldbyName('PER_APU_CRED').Asstring);
      mLinha:=mLinha+Query_1620.fieldbyName('PER_APU_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1620.fieldbyName('ORIG_CRED').fieldName,Query_1620.fieldbyName('ORIG_CRED').Asstring);
      mLinha:=mLinha+Query_1620.fieldbyName('ORIG_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1620.fieldbyName('COD_CRED').fieldName,Query_1620.fieldbyName('COD_CRED').Asstring);
      mLinha:=mLinha+Query_1620.fieldbyName('COD_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1620.fieldbyName('VL_CRED').fieldName,Query_1620.fieldbyName('VL_CRED').Asstring);
      mLinha:=mLinha+Query_1620.fieldbyName('VL_CRED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1620.next;
      end;
   Query_1620.Close;
   end;






Query_1700:=tQuery.Create(nil);
Query_1700.DatabaseName:='SG_ASSOC';
Query_1700.Close;
Query_1700.Sql.Clear;
Query_1700.Sql.Add('SELECT '+QuotedStr('00') + ' as IND_NAT_RET '
                  +','+QuotedStr('122005') + ' AS PR_REC_RET '
                  +',NSTOTNOTA AS VL_RET_APU,NSTOTNOTA AS VL_RET_DED '
                  +',NSTOTNOTA AS VL_RET_PER,NSTOTNOTA AS VL_RET_DCOMP '
                  +',NSTOTNOTA AS SLD_RET FROM CADNS  where NSNUMERO=-999999');
try
   Query_1700.Open;
except
   end;
mTabela:='tb_1700';
if (not query_1700.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1700|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1700.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1700:=mQtdRegBloco_1700+1;
      mLinha:='|';
      mLinha:=mLinha+'1700|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1700.fieldbyName('IND_NAT_RET').fieldName,Query_1700.fieldbyName('IND_NAT_RET').Asstring);
      mLinha:=mLinha+Query_1700.fieldbyName('IND_NAT_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1700.fieldbyName('PR_REC_RET').fieldName,Query_1700.fieldbyName('PR_REC_RET').Asstring);
      mLinha:=mLinha+Query_1700.fieldbyName('PR_REC_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1700.fieldbyName('VL_RET_APU').fieldName,Query_1700.fieldbyName('VL_RET_APU').Asstring);
      mLinha:=mLinha+Query_1700.fieldbyName('VL_RET_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1700.fieldbyName('VL_RET_DED').fieldName,Query_1700.fieldbyName('VL_RET_DED').Asstring);
      mLinha:=mLinha+Query_1700.fieldbyName('VL_RET_DED').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1700.fieldbyName('VL_RET_PER').fieldName,Query_1700.fieldbyName('VL_RET_PER').Asstring);
      mLinha:=mLinha+Query_1700.fieldbyName('VL_RET_PER').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1700.fieldbyName('VL_RET_DCOMP').fieldName,Query_1700.fieldbyName('VL_RET_DCOMP').Asstring);
      mLinha:=mLinha+Query_1700.fieldbyName('VL_RET_DCOMP').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1700.fieldbyName('SLD_RET').fieldName,Query_1700.fieldbyName('SLD_RET').Asstring);
      mLinha:=mLinha+Query_1700.fieldbyName('SLD_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1700.next;
      end;
   Query_1700.Close;
   end;






Query_1800:=tQuery.Create(nil);
Query_1800.DatabaseName:='SG_ASSOC';
Query_1800.Close;
Query_1800.Sql.Clear;
Query_1800.Sql.Add('SELECT RPAD('+QuotedStr('0') + ',90,'+QuotedStr('0') + ') AS INC_IMOB '
                  +' ,NSTOTNOTA AS REC_RECEB_RET ,NSTOTNOTA AS REC_FIN_RET ,NSTOTNOTA AS BC_RET '
                  +',NSTOTNOTA AS ALIQ_RET,NSTOTNOTA AS VL_REC_UNI '
                  +',SYSDATE AS DT_REC_UNI ,'+QuotedStr('0000') + ' AS COD_REC '
                  +' FROM CADNS  where NSNUMERO=-999999  ');
try
   Query_1800.Open;
except
   end;
mTabela:='tb_1800';
if (not query_1800.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1800|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1800.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1800:=mQtdRegBloco_1800+1;
      mLinha:='|';
      mLinha:=mLinha+'1800|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('INC_IMOB').fieldName,Query_1800.fieldbyName('INC_IMOB').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('INC_IMOB').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('REC_RECEB_RET').fieldName,Query_1800.fieldbyName('REC_RECEB_RET').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('REC_RECEB_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('REC_FIN_RET').fieldName,Query_1800.fieldbyName('REC_FIN_RET').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('REC_FIN_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('BC_RET').fieldName,Query_1800.fieldbyName('BC_RET').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('BC_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('ALIQ_RET').fieldName,Query_1800.fieldbyName('ALIQ_RET').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('ALIQ_RET').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('VL_REC_UNI').fieldName,Query_1800.fieldbyName('VL_REC_UNI').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('VL_REC_UNI').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('DT_REC_UNI').fieldName,Query_1800.fieldbyName('DT_REC_UNI').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('DT_REC_UNI').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1800.fieldbyName('COD_REC').fieldName,Query_1800.fieldbyName('COD_REC').Asstring);
      mLinha:=mLinha+Query_1800.fieldbyName('COD_REC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1800.next;
      end;
   Query_1800.Close;
   end;






Query_1809:=tQuery.Create(nil);
Query_1809.DatabaseName:='SG_ASSOC';
Query_1809.Close;
Query_1809.Sql.Clear;
Query_1809.Sql.Add('SELECT rpad('+QuotedStr('0') + ',20,'+QuotedStr('0') + ') AS NUM_PROC '
                  +' ,0 as IND_PROC FROM CADNS   where NSNUMERO=-999999 ');
try
   Query_1809.Open;
except
   end;
mTabela:='tb_1809';
if (not query_1809.IsEmpty) and (not CB_SOH.Checked)  then
   begin
   mLinha:='|1809|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1809.eof do
      begin
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1809:=mQtdRegBloco_1809+1;
      mLinha:='|';
      mLinha:=mLinha+'1809|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1809.fieldbyName('NUM_PROC').fieldName,Query_1809.fieldbyName('NUM_PROC').Asstring);
      mLinha:=mLinha+Query_1809.fieldbyName('NUM_PROC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1809.fieldbyName('IND_PROC').fieldName,Query_1809.fieldbyName('IND_PROC').Asstring);
      mLinha:=mLinha+Query_1809.fieldbyName('IND_PROC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1809.next;
      end;
   Query_1809.Close;
   end;




if mQtdRegBloco1<1 then
   begin
   mLinha:='|1001|1|'; // sem dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   end;

mQtdRegBloco1:=mQtdRegBloco1+1;
mQtdRegBloco_1990:=mQtdRegBloco_1990+1;
mLinha:='|1990|'+IntToStr(mQtdRegBloco1)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_Bloco1.Add(mLinha);

result:=true;




end;

procedure TFrm_SPED_EFD_NOVO.FormCreate(Sender: TObject);
var
dia,mes,ano : Word;

begin
fAtualizarHistoricos;

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

procedure TFrm_SPED_EFD_NOVO.FormShow(Sender: TObject);
var
query_inv: TQuery;
begin

if DM1.Tb_PargerPINDUSTRIA.Value>0 then
   begin
   CB_BLOCOK.Visible:=true;
   CB_BLOCOK.Checked:=true;
   gb_reg_blocoK.Visible:=false;
   end
else
   begin
   CB_BLOCOK.Visible:=false;
   CB_BLOCOK.Checked:=false;
   gb_reg_blocoK.Visible:=false;
   end;


CB_K100.Checked := true;
CB_K230.Checked := true;

query_inv:=TQuery.Create(nil);
query_inv.DatabaseName:='SG_ASSOC';

query_inv.close;
query_inv.SQL.Clear;
query_inv.SQL.Add('Select  IGNOMEINV,sum(IGQTD) AS QUANT'
                  +'        ,sum(IGQTD*IGPRECO) AS VALOR '
                  +'         ,max(IGVALOR_TRANSP) AS VALOR_TRANSP '
                  +'        ,max(IGDATAEMI) as IGDATAEMI '
                  +'        ,count(*) as ITEM '
                  +'         from INVGRA where IGCODEMP=0'+InttoStr(codemp)
                  +'group by IGNOMEINV ');
query_inv.Open;
CB_INVENTARIO.Items.Clear;
CB_INVENTARIO.Items.Add('      ');

While not query_inv.Eof do
   begin
   CB_INVENTARIO.Items.Add(query_inv.fieldbyName('IGNOMEINV').asstring);
   query_inv.Next;
   end;
CB_INVENTARIO.ItemIndex:=0;


fBloqueiaCampos(true);


Tb_AjusE115VALORAJUST.DisplayFormat:=mcasas;
Tb_AjusE111VALORAJUST.DisplayFormat:=mcasas;


Tb_GuiaSTVL_OR.DisplayFormat  :=mcasas;
Tb_GuiaSTDT_VCTO.DisplayFormat:=fdt2;
RxDB_valor.DisplayFormat      :=mcasas;




items_lista_blocoR:=TStringlist.create;
items_lista_blocoB:=TStringlist.create;
items_lista_blocoA:=TStringlist.create;
items_lista_blocoC:=TStringlist.create;
items_lista_blocoD:=TStringlist.create;
items_lista_blocoE:=TStringlist.create;
items_lista_blocoF:=TStringlist.create;
items_lista_blocoG:=TStringlist.create;
items_lista_blocoH:=TStringlist.create;
items_lista_blocoK:=TStringlist.create;

items_lista_blocoM:=TStringlist.create;
items_lista_bloco1:=TStringlist.create;

edt_datfinExit(self);

PageControl1.ActivePage:=tsGeral;
end;

procedure TFrm_SPED_EFD_NOVO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query_c100<>nil then
   begin
   query_c100.Close;
   FreeAndNil(query_c100);
   end;


if query_c170<>nil then
   begin
   query_c170.Close;
   FreeAndNil(query_c170);
   end;

if query_c190<>nil then
   begin
   query_c190.Close;
   FreeAndNil(query_c190);
   end;


if query_c300<>nil then
   begin
   query_c300.Close;
   FreeAndNil(query_c300);
   end;


if query_c310<>nil then
   begin
   query_c310.Close;
   FreeAndNil(query_c310);
   end;

if query_c320<>nil then
   begin
   query_c320.Close;
   FreeAndNil(query_c320);
   end;

if query_c321<>nil then
   begin
   query_c321.Close;
   FreeAndNil(query_c321);
   end;

if query_c350<>nil then
   begin
   query_c350.Close;
   FreeAndNil(query_c350);
   end;


if query_c370<>nil then
   begin
   query_c370.Close;
   FreeAndNil(query_c370);
   end;

if query_c390<>nil then
   begin
   query_c390.Close;
   FreeAndNil(query_c390);
   end;

if query_c400<>nil then
   begin
   query_c400.Close;
   FreeAndNil(query_c400);
   end;





if query_c405<>nil then
   begin
   query_c405.Close;
   FreeAndNil(query_c405);
   end;

if query_c481<>nil then
   begin
   query_c481.Close;
   FreeAndNil(query_c481);
   end;
if query_c485<>nil then
   begin
   query_c485.Close;
   FreeAndNil(query_c485);
   end;


if query_c489<>nil then
   begin
   query_c489.Close;
   FreeAndNil(query_c489);
   end;

if query_c490<>nil then
   begin
   query_c490.Close;
   FreeAndNil(query_c490);
   end;

if query_c491<>nil then
   begin
   query_c491.Close;
   FreeAndNil(query_c491);
   end;

if query_c495<>nil then
   begin
   query_c495.Close;
   FreeAndNil(query_c495);
   end;

if query_c499<>nil then
   begin
   query_c499.Close;
   FreeAndNil(query_c499);
   end;

if query_c500<>nil then
   begin
   query_c500.Close;
   FreeAndNil(query_c500);
   end;
if query_c501<>nil then
   begin
   query_c501.Close;
   FreeAndNil(query_c501);
   end;
if query_c505<>nil then
   begin
   query_c505.Close;
   FreeAndNil(query_c505);
   end;

if query_c509<>nil then
   begin
   query_c509.Close;
   FreeAndNil(query_c509);
   end;

if query_c600<>nil then
   begin
   query_c600.Close;
   FreeAndNil(query_c600);
   end;

if query_c601<>nil then
   begin
   query_c601.Close;
   FreeAndNil(query_c601);
   end;
if query_c605<>nil then
   begin
   query_c605.Close;
   FreeAndNil(query_c605);
   end;

if query_c609<>nil then
   begin
   query_c609.Close;
   FreeAndNil(query_c609);
   end;

Freeandnil(items_lista_blocoR);
Freeandnil(items_lista_blocoA);
Freeandnil(items_lista_blocoB);
Freeandnil(items_lista_blocoC);
Freeandnil(items_lista_blocoD);
Freeandnil(items_lista_blocoF);
Freeandnil(items_lista_blocoG);
Freeandnil(items_lista_blocoH);
Freeandnil(items_lista_blocoK);
Freeandnil(items_lista_blocoM);
Freeandnil(items_lista_bloco1);


if (FormState<>[fsModal]) then
   Action := caFree;


end;

procedure TFrm_SPED_EFD_NOVO.bbSairClick(Sender: TObject);
begin
close;
end;


function TFrm_SPED_EFD_NOVO.fGerarReg9900(pTipo: String;pQtdReg: Integer): Boolean;
begin
if pQtdReg>0 then
   begin
   mQtdRegBloco_9900:=mQtdRegBloco_9900+1;
   mLinha:='|9900|'+pTipo+'|'+IntToStr(pQtdReg)+'|';
   Memo1.Lines.Add(mLinha);
   items_lista_blocoR.Add(mLinha);
   end;
result:=true;
end;


function TFrm_SPED_EFD_NOVO.fTestarR0190(pCodigo: String): Boolean;
var
mforCli: String;
mCodigo: String;
begin
if not mem_R0190.Locate('UNID',pCodigo,[]) then
   begin
   mem_R0190.Append;
   mem_R0190UNID.Value:=pCodigo;
   mem_R0190DESCR.Value:='Unidade '+pCodigo;
   end;
result:=true;
end;


function TFrm_SPED_EFD_NOVO.fTestarR0200(pCodigo: String): Boolean;
var
query_temp: tQuery;
begin
if not mem_R0200.Locate('COD_ITEM',pCodigo,[]) then
   begin
   query_temp:=tQuery.Create(nil);
   query_temp.DatabaseName:='SG_ASSOC';
   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.add('Select PDCODPRO  AS CODPRO,PDNOME AS NOMPRO,PDCODBAR AS CODBAR, '
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
                     +' , PDCEST AS CEST '
                     +' FROM CADPRO,CADUF '
                     +' WHERE PUF=:UF '
                     +' and PDCODPRO=:CODPRO ');
   query_temp.ParamByName('UF').Value:=DM1.Tb_EmpUF.AsString;
   query_temp.ParamByName('CODPRO').Value:=pCodigo;
   query_temp.Open;
   if not query_temp.IsEmpty then
      begin
      fTestarR0190(query_temp.fieldbyName('UNID').AsString);

      mem_R0200.Append;
      mem_R0200COD_ITEM.Value    :=pCodigo;
      mem_R0200DESCR_ITEM.Value  :=trim(query_temp.fieldbyName('NOMPRO').AsString);
      mem_R0200COD_BARRA.Value   :=query_temp.fieldbyName('CODBAR').AsString;
      mem_R0200COD_ANT_ITEM.Value:='';
      mem_R0200UNID_INV.Value    :=TRIM(query_temp.fieldbyName('UNID').AsString);
      mem_R0200TIPO_ITEM.Value   :=Formatfloat('00', valint( query_temp.fieldbyName('NIVEL').AsString));
      mem_R0200COD_NCM.Value     :=query_temp.fieldbyName('COD_NCM').AsString;
      mem_R0200ALIQ_ICMS.Value   :=query_temp.fieldbyName('ALIQ_ICM').AsFloat;
      mem_R0200CEST.Value        :=query_temp.fieldbyName('CEST').AsString;

      mem_R0200.Post;
      end;
   end;
FreeandNil(query_temp);
result:=true;
end;



function TFrm_SPED_EFD_NOVO.fTestarR0400(pCodigo: String): Boolean;
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
function TFrm_SPED_EFD_NOVO.fGerarM100(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Pis,pAliqPis,pQuant_BC_Pis,pAliq_Pis_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;

begin
if mem_m100.Locate('COD_CRED;ALIQ_PIS',VarArrayOf([pCod_Cred,pAliqPis]),[] ) then
   mem_m100.Edit
else
   begin
   mem_m100.Append;
   mem_m100COD_CRED.Value      :=pCod_Cred;
   mem_m100IND_CRED_ORI.Value  :=pInd_Cred_Ori;
   mem_m100VL_BC_PIS.Value     :=0;
   mem_m100ALIQ_PIS.Value      :=pAliqPis;
   mem_m100QUANT_BC_PIS.Value  :=0;
   mem_m100ALIQ_PIS_QUANT.Value:=pAliq_Pis_Quant;
   mem_m100VL_CRED.Value       :=0;
   mem_m100VL_AJUS_ACRES.Value :=0;
   mem_m100VL_CRED_DIF.Value   :=0;
   mem_m100VL_CRED_DISP.Value  :=0;
   mem_m100IND_DESC_CRED.Value :=pInd_Desc_Cred;
   mem_m100VL_CRED_DESC.Value  :=0;
   mem_m100SLD_CRED.Value      :=0;
   end;

mem_m100VL_BC_PIS.Value     :=mem_m100VL_BC_PIS.Value+pVl_BC_Pis;
mem_m100QUANT_BC_PIS.Value  :=mem_m100QUANT_BC_PIS.Value+pQuant_BC_Pis;
mem_m100VL_CRED.Value       :=mem_m100VL_CRED.Value+pVl_Cred;
mem_m100VL_AJUS_ACRES.Value :=mem_m100VL_AJUS_ACRES.Value+pVl_Ajus_Acres;
mem_m100VL_CRED_DIF.Value   :=mem_m100VL_CRED_DIF.Value+pVl_Cred_Dif;
mem_m100VL_CRED_DISP.Value  :=mem_m100VL_CRED_DISP.Value+pVl_Cred_Disp;
mem_m100VL_CRED_DESC.Value  :=mem_m100VL_CRED_DESC.Value+pVl_Cred_Desc;
mem_m100SLD_CRED.Value      :=mem_m100SLD_CRED.Value+pSld_Cred;
mem_m100.Post;
end;

function TFrm_SPED_EFD_NOVO.fGerarM105(pNAT_BC_CRED,pCST_PIS: string; pVL_BC_PIS_TOT, pVL_BC_PIS_CUM,pVL_BC_PIS_NC,pVL_BC_PIS,pQUANT_BC_PIS_TOT
       ,pQUANT_BC_PIS  : real; pDESC_CRED: String): Boolean;
begin
if mem_m105.Locate('NAT_BC_CRED;CST_PIS',VarArrayOf([pNAT_BC_CRED,pCST_PIS]),[] ) then
   mem_m105.Edit
else
   begin
   mem_m105.Append;
   mem_m105NAT_BC_CRED.Value     :=pNAT_BC_CRED;
   mem_m105CST_PIS.Value         :=pCST_PIS;
   mem_m105VL_BC_PIS_TOT.Value   :=0;
   mem_m105VL_BC_PIS_CUM.Value   :=0;
   mem_m105VL_BC_PIS_NC.Value    :=0;
   mem_m105VL_BC_PIS_CUM.Value   :=0;
   mem_m105VL_BC_PIS.Value       :=0;
   mem_m105QUANT_BC_PIS_TOT.Value:=0;
   mem_m105QUANT_BC_PIS.Value    :=0;
   mem_m105DESC_CRED.Value       :=pDESC_CRED;
   end;
mem_m105VL_BC_PIS_TOT.Value   :=mem_m105VL_BC_PIS_TOT.Value+pVL_BC_PIS_TOT;
mem_m105VL_BC_PIS_CUM.Value   :=mem_m105VL_BC_PIS_CUM.Value+pVL_BC_PIS_CUM;
mem_m105VL_BC_PIS_NC.Value    :=mem_m105VL_BC_PIS_NC.Value+pVL_BC_PIS_NC;
mem_m105VL_BC_PIS_CUM.Value   :=mem_m105VL_BC_PIS_CUM.Value+pVL_BC_PIS_CUM;
mem_m105VL_BC_PIS.Value       :=mem_m105VL_BC_PIS.Value+pVL_BC_PIS;
mem_m105QUANT_BC_PIS_TOT.Value:=mem_m105QUANT_BC_PIS_TOT.Value+pQUANT_BC_PIS_TOT;
mem_m105QUANT_BC_PIS.Value    :=mem_m105QUANT_BC_PIS.Value+pQUANT_BC_PIS;
mem_m105.Post;

end;


function TFrm_SPED_EFD_NOVO.fGerarM200(pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;
begin
if mem_m200.IsEmpty then
   begin
   mem_m200.Append;
   mem_m200VL_TOT_CONT_NC_PER.Value  :=0;
   mem_m200VL_TOT_CRED_DESC.Value    :=0;
   mem_m200VL_TOT_CRED_DESC_ANT.Value:=0;
   mem_m200VL_TOT_CONT_NC_DEV.Value  :=0;
   mem_m200VL_RET_NC.Value           :=0;
   mem_m200VL_OUT_DED_NC.Value       :=0;
   mem_m200VL_CONT_NC_REC.Value      :=0;
   mem_m200VL_TOT_CONT_CUM_PER.Value :=0;
   mem_m200VL_RET_CUM.Value          :=0;
   mem_m200VL_OUT_DED_CUM.Value      :=0;
   mem_m200VL_CONT_CUM_REC.Value     :=0;
   mem_m200VL_TOT_CONT_REC.Value     :=0;
   end
else
  mem_m200.Edit;

mem_m200VL_TOT_CONT_NC_PER.Value  :=mem_m200VL_TOT_CONT_NC_PER.Value+pVL_TOT_CONT_NC_PER;
mem_m200VL_TOT_CRED_DESC.Value    :=mem_m200VL_TOT_CRED_DESC.Value+pVL_TOT_CRED_DESC;
mem_m200VL_TOT_CRED_DESC_ANT.Value:=mem_m200VL_TOT_CRED_DESC_ANT.Value+pVL_TOT_CRED_DESC_ANT;
mem_m200VL_TOT_CONT_NC_DEV.Value  :=mem_m200VL_TOT_CONT_NC_DEV.Value+pVL_TOT_CONT_NC_DEV;
mem_m200VL_RET_NC.Value           :=mem_m200VL_RET_NC.Value+pVL_RET_NC;
mem_m200VL_OUT_DED_NC.Value       :=mem_m200VL_OUT_DED_NC.Value+pVL_OUT_DED_NC;
mem_m200VL_CONT_NC_REC.Value      :=mem_m200VL_CONT_NC_REC.Value+pVL_CONT_NC_REC;
mem_m200VL_TOT_CONT_CUM_PER.Value :=mem_m200VL_TOT_CONT_CUM_PER.Value+pVL_TOT_CONT_CUM_PER;
mem_m200VL_RET_CUM.Value          :=mem_m200VL_RET_CUM.Value+pVL_RET_CUM;
mem_m200VL_OUT_DED_CUM.Value      :=mem_m200VL_OUT_DED_CUM.Value+pVL_OUT_DED_CUM;
mem_m200VL_CONT_CUM_REC.Value     :=mem_m200VL_CONT_CUM_REC.Value+pVL_CONT_CUM_REC;
mem_m200VL_TOT_CONT_REC.Value     :=mem_m200VL_TOT_CONT_REC.Value+pVL_TOT_CONT_REC;
mem_m200.Post;

end;


function TFrm_SPED_EFD_NOVO.fGerarM210(pCOD_CONT: String;
pVL_REC_BRT,pVL_BC_CONT,pALIQ_PIS,pQUANT_BC_PIS,pALIQ_PIS_QUANT,pVL_CONT_APUR
,pVL_AJUS_ACRES,pVL_AJUS_REDUC,pVL_CONT_DIFER,pVL_CONT_DIFER_ANT,pVL_CONT_PER: Real): Boolean;
begin
if mem_m210.Locate('COD_CONT;ALIQ_PIS;ALIQ_PIS_QUANT',VarArrayOf([pCOD_CONT,pALIQ_PIS,pALIQ_PIS_QUANT]),[] ) then
   mem_m210.Edit
else
   begin
   mem_m210.append;
   mem_m210COD_CONT.Value         :=pCOD_CONT;
   mem_m210VL_REC_BRT.Value       :=0;
   mem_m210VL_BC_CONT.Value       :=0;
   mem_m210ALIQ_PIS.Value         :=pALIQ_PIS;
   mem_m210QUANT_BC_PIS.Value     :=0;
   mem_m210ALIQ_PIS_QUANT.Value   :=pALIQ_PIS_QUANT;
   mem_m210VL_CONT_APUR.Value     :=0;
   mem_m210VL_AJUS_ACRES.Value    :=0;
   mem_m210VL_AJUS_REDUC.Value    :=0;
   mem_m210VL_CONT_DIFER.Value    :=0;
   mem_m210VL_CONT_DIFER_ANT.Value:=0;
   mem_m210VL_CONT_PER.Value      :=0;
   end;

mem_m210VL_REC_BRT.Value       :=mem_m210VL_REC_BRT.Value+pVL_REC_BRT;
mem_m210VL_BC_CONT.Value       :=mem_m210VL_BC_CONT.Value+pVL_BC_CONT;
mem_m210QUANT_BC_PIS.Value     :=mem_m210QUANT_BC_PIS.Value+pQUANT_BC_PIS;
mem_m210VL_CONT_APUR.Value     :=mem_m210VL_CONT_APUR.Value+pVL_CONT_APUR;
mem_m210VL_AJUS_ACRES.Value    :=mem_m210VL_AJUS_ACRES.Value+pVL_AJUS_ACRES;
mem_m210VL_AJUS_REDUC.Value    :=mem_m210VL_AJUS_REDUC.Value+pVL_AJUS_REDUC;
mem_m210VL_CONT_DIFER.Value    :=mem_m210VL_CONT_DIFER.Value+pVL_CONT_DIFER;
mem_m210VL_CONT_DIFER_ANT.Value:=mem_m210VL_CONT_DIFER_ANT.Value+pVL_CONT_DIFER_ANT;
mem_m210VL_CONT_PER.Value      :=mem_m210VL_CONT_PER.Value+pVL_CONT_PER;
mem_m210.Post;


end;






function TFrm_SPED_EFD_NOVO.fGerarM500(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Cofins,pAliqCofins,pQuant_BC_Cofins,pAliq_Cofins_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Ajus_Reduc,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;

begin
if mem_m500.Locate('COD_CRED;ALIQ_Cofins',VarArrayOf([pCod_Cred,pAliqCofins]),[] ) then
   mem_m500.Edit
else
   begin
   mem_m500.Append;
   mem_m500COD_CRED.Value      :=pCod_Cred;
   mem_m500IND_CRED_ORI.Value  :=pInd_Cred_Ori;
   mem_m500VL_BC_Cofins.Value     :=0;
   mem_m500ALIQ_Cofins.Value      :=pAliqCofins;
   mem_m500QUANT_BC_Cofins.Value  :=0;
   mem_m500ALIQ_Cofins_QUANT.Value:=pAliq_Cofins_Quant;
   mem_m500VL_CRED.Value       :=0;
   mem_m500VL_AJUS_ACRES.Value :=0;
   mem_m500VL_CRED_DIF.Value   :=0;
   mem_m500VL_CRED_DISP.Value  :=0;
   mem_m500IND_DESC_CRED.Value :=pInd_Desc_Cred;
   mem_m500VL_CRED_DESC.Value  :=0;
   mem_m500SLD_CRED.Value      :=0;
   mem_m500VL_AJUS_REDUC.Value :=pVl_Ajus_Acres;
   end;

mem_m500VL_BC_Cofins.Value     :=mem_m500VL_BC_Cofins.Value+pVl_BC_Cofins;
mem_m500QUANT_BC_Cofins.Value  :=mem_m500QUANT_BC_Cofins.Value+pQuant_BC_Cofins;
mem_m500VL_CRED.Value       :=mem_m500VL_CRED.Value+pVl_Cred;
mem_m500VL_AJUS_ACRES.Value :=mem_m500VL_AJUS_ACRES.Value+pVl_Ajus_Acres;
mem_m500VL_CRED_DIF.Value   :=mem_m500VL_CRED_DIF.Value+pVl_Cred_Dif;
mem_m500VL_CRED_DISP.Value  :=mem_m500VL_CRED_DISP.Value+pVl_Cred_Disp;
mem_m500VL_CRED_DESC.Value  :=mem_m500VL_CRED_DESC.Value+pVl_Cred_Desc;
mem_m500SLD_CRED.Value      :=mem_m500SLD_CRED.Value+pSld_Cred;
mem_m500.Post;
end;

function TFrm_SPED_EFD_NOVO.fGerarM505(pNAT_BC_CRED,pCST_Cofins: string; pVL_BC_Cofins_TOT, pVL_BC_Cofins_CUM,pVL_BC_Cofins_NC,pVL_BC_Cofins,pQUANT_BC_Cofins_TOT
       ,pQUANT_BC_Cofins  : real; pDESC_CRED: String): Boolean;
begin
if mem_m505.Locate('NAT_BC_CRED;CST_Cofins',VarArrayOf([pNAT_BC_CRED,pCST_Cofins]),[] ) then
   mem_m505.Edit
else
   begin
   mem_m505.Append;   
   mem_m505NAT_BC_CRED.Value     :=pNAT_BC_CRED;
   mem_m505CST_Cofins.Value         :=pCST_Cofins;
   mem_m505VL_BC_Cofins_TOT.Value   :=0;
   mem_m505VL_BC_Cofins_CUM.Value   :=0;
   mem_m505VL_BC_Cofins_NC.Value    :=0;
   mem_m505VL_BC_Cofins_CUM.Value   :=0;
   mem_m505VL_BC_Cofins.Value       :=0;
   mem_m505QUANT_BC_Cofins_TOT.Value:=0;
   mem_m505QUANT_BC_Cofins.Value    :=0;
   mem_m505DESC_CRED.Value       :=pDESC_CRED;
   end;
mem_m505VL_BC_Cofins_TOT.Value   :=mem_m505VL_BC_Cofins_TOT.Value+pVL_BC_Cofins_TOT;
mem_m505VL_BC_Cofins_CUM.Value   :=mem_m505VL_BC_Cofins_CUM.Value+pVL_BC_Cofins_CUM;
mem_m505VL_BC_Cofins_NC.Value    :=mem_m505VL_BC_Cofins_NC.Value+pVL_BC_Cofins_NC;
mem_m505VL_BC_Cofins_CUM.Value   :=mem_m505VL_BC_Cofins_CUM.Value+pVL_BC_Cofins_CUM;
mem_m505VL_BC_Cofins.Value       :=mem_m505VL_BC_Cofins.Value+pVL_BC_Cofins;
mem_m505QUANT_BC_Cofins_TOT.Value:=mem_m505QUANT_BC_Cofins_TOT.Value+pQUANT_BC_Cofins_TOT;
mem_m505QUANT_BC_Cofins.Value    :=mem_m505QUANT_BC_Cofins.Value+pQUANT_BC_Cofins;
mem_m505.Post;

end;


function TFrm_SPED_EFD_NOVO.fGerarM600(pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;
begin
if mem_m600.IsEmpty then
   begin
   mem_m600.Append;
   mem_m600VL_TOT_CONT_NC_PER.Value  :=0;
   mem_m600VL_TOT_CRED_DESC.Value    :=0;
   mem_m600VL_TOT_CRED_DESC_ANT.Value:=0;
   mem_m600VL_TOT_CONT_NC_DEV.Value  :=0;
   mem_m600VL_RET_NC.Value           :=0;
   mem_m600VL_OUT_DED_NC.Value       :=0;
   mem_m600VL_CONT_NC_REC.Value      :=0;
   mem_m600VL_TOT_CONT_CUM_PER.Value :=0;
   mem_m600VL_RET_CUM.Value          :=0;
   mem_m600VL_OUT_DED_CUM.Value      :=0;
   mem_m600VL_CONT_CUM_REC.Value     :=0;
   mem_m600VL_TOT_CONT_REC.Value     :=0;
   end
else
  mem_m600.Edit;

mem_m600VL_TOT_CONT_NC_PER.Value  :=mem_m600VL_TOT_CONT_NC_PER.Value+pVL_TOT_CONT_NC_PER;
mem_m600VL_TOT_CRED_DESC.Value    :=mem_m600VL_TOT_CRED_DESC.Value+pVL_TOT_CRED_DESC;
mem_m600VL_TOT_CRED_DESC_ANT.Value:=mem_m600VL_TOT_CRED_DESC_ANT.Value+pVL_TOT_CRED_DESC_ANT;
mem_m600VL_TOT_CONT_NC_DEV.Value  :=mem_m600VL_TOT_CONT_NC_DEV.Value+pVL_TOT_CONT_NC_DEV;
mem_m600VL_RET_NC.Value           :=mem_m600VL_RET_NC.Value+pVL_RET_NC;
mem_m600VL_OUT_DED_NC.Value       :=mem_m600VL_OUT_DED_NC.Value+pVL_OUT_DED_NC;
mem_m600VL_CONT_NC_REC.Value      :=mem_m600VL_CONT_NC_REC.Value+pVL_CONT_NC_REC;
mem_m600VL_TOT_CONT_CUM_PER.Value :=mem_m600VL_TOT_CONT_CUM_PER.Value+pVL_TOT_CONT_CUM_PER;
mem_m600VL_RET_CUM.Value          :=mem_m600VL_RET_CUM.Value+pVL_RET_CUM;
mem_m600VL_OUT_DED_CUM.Value      :=mem_m600VL_OUT_DED_CUM.Value+pVL_OUT_DED_CUM;
mem_m600VL_CONT_CUM_REC.Value     :=mem_m600VL_CONT_CUM_REC.Value+pVL_CONT_CUM_REC;
mem_m600VL_TOT_CONT_REC.Value     :=mem_m600VL_TOT_CONT_REC.Value+pVL_TOT_CONT_REC;
mem_m600.Post;

end;


function TFrm_SPED_EFD_NOVO.fGerarM610(pCOD_CONT: String;
pVL_REC_BRT,pVL_BC_CONT,pALIQ_Cofins,pQUANT_BC_Cofins,pALIQ_Cofins_QUANT,pVL_CONT_APUR
,pVL_AJUS_ACRES,pVL_AJUS_REDUC,pVL_CONT_DIFER,pVL_CONT_DIFER_ANT,pVL_CONT_PER: Real): Boolean;
begin
if mem_m610.Locate('COD_CONT;ALIQ_Cofins;ALIQ_Cofins_QUANT',VarArrayOf([pCOD_CONT,pALIQ_Cofins,pALIQ_Cofins_QUANT]),[] ) then
   mem_m610.Edit
else
   begin
   mem_m610.append;
   mem_m610COD_CONT.Value         :=pCOD_CONT;
   mem_m610VL_REC_BRT.Value       :=0;
   mem_m610VL_BC_CONT.Value       :=0;
   mem_m610ALIQ_Cofins.Value         :=pALIQ_Cofins;
   mem_m610QUANT_BC_Cofins.Value     :=0;
   mem_m610ALIQ_Cofins_QUANT.Value   :=pALIQ_Cofins_QUANT;
   mem_m610VL_CONT_APUR.Value     :=0;
   mem_m610VL_AJUS_ACRES.Value    :=0;
   mem_m610VL_AJUS_REDUC.Value    :=0;
   mem_m610VL_CONT_DIFER.Value    :=0;
   mem_m610VL_CONT_DIFER_ANT.Value:=0;
   mem_m610VL_CONT_PER.Value      :=0;
   end;

mem_m610VL_REC_BRT.Value       :=mem_m610VL_REC_BRT.Value+pVL_REC_BRT;
mem_m610VL_BC_CONT.Value       :=mem_m610VL_BC_CONT.Value+pVL_BC_CONT;
mem_m610QUANT_BC_Cofins.Value     :=mem_m610QUANT_BC_Cofins.Value+pQUANT_BC_Cofins;
mem_m610VL_CONT_APUR.Value     :=mem_m610VL_CONT_APUR.Value+pVL_CONT_APUR;
mem_m610VL_AJUS_ACRES.Value    :=mem_m610VL_AJUS_ACRES.Value+pVL_AJUS_ACRES;
mem_m610VL_AJUS_REDUC.Value    :=mem_m610VL_AJUS_REDUC.Value+pVL_AJUS_REDUC;
mem_m610VL_CONT_DIFER.Value    :=mem_m610VL_CONT_DIFER.Value+pVL_CONT_DIFER;
mem_m610VL_CONT_DIFER_ANT.Value:=mem_m610VL_CONT_DIFER_ANT.Value+pVL_CONT_DIFER_ANT;
mem_m610VL_CONT_PER.Value      :=mem_m610VL_CONT_PER.Value+pVL_CONT_PER;
mem_m610.Post;

result:=true;
end;

procedure TFrm_SPED_EFD_NOVO.edt_datfinExit(Sender: TObject);
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
      DM1.query1.SQL.SaveToFile('c:\sql.txt');;
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

function tFrm_SPED_EFD_NOVO.fTotalizarST(pTipo: Integer): Boolean;
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
                                     +'       and NECODEMP='+IntToStr(codemp)
                                                         +' and NEMODELO<>'+QuotedStr('56')
                                    );

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
   FRM_SPED_EFD_NotasST.Qr_Notas.SQL.SaveToFile('c:\sql.txt');
   MessageDlg('Erro ao Abrir notas com ICMSST',mtWarning,[mbOk],0);
   end;
//FRM_SPED_EFD_NotasST.Qr_Notas.SQL.SaveToFile('c:\sql.txt');

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


procedure TFrm_SPED_EFD_NOVO.bbe111_INCLUIRClick(Sender: TObject);
begin
Tb_AjusE111.Append;

end;

procedure TFrm_SPED_EFD_NOVO.bbe111_ALTERARClick(Sender: TObject);
begin
if Tb_AjusE111CODIGOAJUST.IsNull then
   exit;
Tb_AjusE111.Edit;

end;

procedure TFrm_SPED_EFD_NOVO.bbe111_EXCLUIRClick(Sender: TObject);
begin
if Tb_AjusE111CODIGOAJUST.IsNull then
   exit;
if Application.MessageBox('Quer Realmente Excluir o Ajuste selecionado?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_AjusE111.delete;

end;

procedure TFrm_SPED_EFD_NOVO.bbe111_GRAVARClick(Sender: TObject);
begin
Tb_AjusE111.Post;

end;

procedure TFrm_SPED_EFD_NOVO.bbe111_CANCELARClick(Sender: TObject);
begin
Tb_AjusE111.Cancel;
end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE111AfterCancel(DataSet: TDataSet);
begin

bbe111_INCLUIR.Enabled     :=true;
bbe111_ALTERAR.Enabled     :=true;
bbe111_GRAVAR.Enabled      :=false;
bbe111_EXCLUIR.Enabled     :=true;
bbe111_CANCELAR.Enabled    :=True;
bbe111_DBNavigator1.Enabled:=True;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE111AfterDelete(DataSet: TDataSet);
begin

bbe111_INCLUIR.Enabled     :=true;
bbe111_ALTERAR.Enabled     :=true;
bbe111_GRAVAR.Enabled      :=False;
bbe111_EXCLUIR.Enabled     :=true;
bbe111_CANCELAR.Enabled    :=True;
bbe111_DBNavigator1.Enabled:=True;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE111AfterEdit(DataSet: TDataSet);
begin
bbe111_INCLUIR.Enabled     :=False;
bbe111_ALTERAR.Enabled     :=False;
bbe111_GRAVAR.Enabled      :=True;
bbe111_EXCLUIR.Enabled     :=False;
bbe111_CANCELAR.Enabled    :=True;
bbe111_DBNavigator1.Enabled:=False;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE111AfterInsert(DataSet: TDataSet);
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

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE111AfterPost(DataSet: TDataSet);
begin
bbe111_CANCELARClick(self);

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE111BeforePost(DataSet: TDataSet);
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

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE115AfterCancel(DataSet: TDataSet);
begin
bbe115_INCLUIR.Enabled     :=true;
bbe115_ALTERAR.Enabled     :=true;
bbe115_GRAVAR.Enabled      :=false;
bbe115_EXCLUIR.Enabled     :=true;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=True;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE115AfterDelete(DataSet: TDataSet);
begin

bbe115_INCLUIR.Enabled     :=true;
bbe115_ALTERAR.Enabled     :=true;
bbe115_GRAVAR.Enabled      :=False;
bbe115_EXCLUIR.Enabled     :=true;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=True;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE115AfterInsert(DataSet: TDataSet);
begin

bbe115_ALTERAR.Enabled     :=False;
bbe115_INCLUIR.Enabled     :=False;
bbe115_GRAVAR.Enabled      :=True;
bbe115_EXCLUIR.Enabled     :=False;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=False;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE115AfterEdit(DataSet: TDataSet);
begin
bbe115_INCLUIR.Enabled     :=False;
bbe115_ALTERAR.Enabled     :=False;
bbe115_GRAVAR.Enabled      :=True;
bbe115_EXCLUIR.Enabled     :=False;
bbe115_CANCELAR.Enabled    :=True;
bbe115_DBNavigator1.Enabled:=False;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE115AfterPost(DataSet: TDataSet);
begin
bbe115_CANCELARClick(self);

end;

procedure TFrm_SPED_EFD_NOVO.Tb_AjusE115BeforePost(DataSet: TDataSet);
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

procedure TFrm_SPED_EFD_NOVO.bbe115_INCLUIRClick(Sender: TObject);
begin
Tb_AjusE115.Append;

end;

procedure TFrm_SPED_EFD_NOVO.bbe115_ALTERARClick(Sender: TObject);
begin
if Tb_AjusE115CODIGOAJUST.IsNull then
   exit;
Tb_AjusE115.Edit;

end;

procedure TFrm_SPED_EFD_NOVO.bbe115_EXCLUIRClick(Sender: TObject);
begin
if Tb_AjusE115CODIGOAJUST.IsNull then
   exit;
if Application.MessageBox('Quer Realmente Excluir o Ajuste selecionado?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_AjusE115.delete;

end;

procedure TFrm_SPED_EFD_NOVO.bbe115_GRAVARClick(Sender: TObject);
begin
Tb_AjusE115.Post;

end;

procedure TFrm_SPED_EFD_NOVO.bbe115_CANCELARClick(Sender: TObject);
begin
Tb_AjusE115.Cancel;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_GuiaSTAfterCancel(DataSet: TDataSet);
begin
bbGuiaST_Incluir.Enabled     :=true;
bbGuiaST_ALTERAR.Enabled     :=true;
bbGuiaST_GRAVAR.Enabled      :=false;
bbGuiaST_EXCLUIR.Enabled     :=true;
bbGuiaST_CANCELAR.Enabled    :=True;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_GuiaSTAfterDelete(DataSet: TDataSet);
begin
bbGuiaST_Incluir.Enabled     :=true;
bbGuiaST_ALTERAR.Enabled     :=true;
bbGuiaST_GRAVAR.Enabled      :=false;
bbGuiaST_EXCLUIR.Enabled     :=true;
bbGuiaST_CANCELAR.Enabled    :=True;

mAlterouGuia:=true;
end;

procedure TFrm_SPED_EFD_NOVO.Tb_GuiaSTAfterEdit(DataSet: TDataSet);
begin

bbGuiaST_Incluir.Enabled     :=False;
bbGuiaST_ALTERAR.Enabled     :=False;
bbGuiaST_GRAVAR.Enabled      :=True;
bbGuiaST_EXCLUIR.Enabled     :=False;
bbGuiaST_CANCELAR.Enabled    :=True;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_GuiaSTAfterInsert(DataSet: TDataSet);
begin
bbGuiaST_GRAVAR.Enabled      :=True;
bbGuiaST_CANCELAR.Enabled    :=True;
bbGuiaST_ALTERAR.Enabled     :=False;
bbGuiaST_INCLUIR.Enabled     :=False;
bbGuiaST_EXCLUIR.Enabled     :=False;

end;

procedure TFrm_SPED_EFD_NOVO.Tb_GuiaSTAfterPost(DataSet: TDataSet);
begin
bbGuiaST_Incluir.Enabled     :=true;
bbGuiaST_ALTERAR.Enabled     :=true;
bbGuiaST_GRAVAR.Enabled      :=false;
bbGuiaST_EXCLUIR.Enabled     :=true;
bbGuiaST_CANCELAR.Enabled    :=True;
mAlterouGuia:=true;

end;
function TFrm_SPED_EFD_NOVO.fBloqueiaCampos(pBloqueia: Boolean): Boolean;
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

procedure TFrm_SPED_EFD_NOVO.Tb_GuiaSTBeforePost(DataSet: TDataSet);
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

procedure TFrm_SPED_EFD_NOVO.bbGuiaST_IncluirClick(Sender: TObject);
begin
fBloqueiaCampos(false);
Tb_GuiaST.Append;
dbCB_GUIAST_COD_OR.SetFocus;
end;

procedure TFrm_SPED_EFD_NOVO.bbGuiaST_AlterarClick(Sender: TObject);
begin
if Tb_GuiaSTCOD_OR.IsNull then
   exit;
fBloqueiaCampos(false);

Tb_GuiaST.Edit;

end;

procedure TFrm_SPED_EFD_NOVO.bbGuiaST_ExcluirClick(Sender: TObject);
begin
if Tb_GuiaSTCOD_OR.IsNull then
   exit;
if Application.MessageBox('Quer Realmente Excluir o Ajuste selecionado?','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_GuiaST.delete;
fBloqueiaCampos(false);

end;

procedure TFrm_SPED_EFD_NOVO.bbGuiaST_GRAVARClick(Sender: TObject);
begin
Tb_GuiaST.Post;
fBloqueiaCampos(true);
end;

procedure TFrm_SPED_EFD_NOVO.bbGuiaST_CancelarClick(Sender: TObject);
begin
fBloqueiaCampos(false);

Tb_GuiaST.Cancel;

end;

procedure TFrm_SPED_EFD_NOVO.sbnNotasClick(Sender: TObject);
begin
Frm_SPED_EFD_NotasST.Show;

end;

procedure TFrm_SPED_EFD_NOVO.edt_numnf_entExit(Sender: TObject);
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

procedure TFrm_SPED_EFD_NOVO.edt_numnf_saiExit(Sender: TObject);
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

procedure TFrm_SPED_EFD_NOVO.edt_num_ecfExit(Sender: TObject);
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

procedure TFrm_SPED_EFD_NOVO.lbx_numnf_entKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_ent.ItemIndex>=0 then
      lbx_numnf_ent.Items.Delete(lbx_numnf_ent.ItemIndex);

end;

procedure TFrm_SPED_EFD_NOVO.lbx_numnf_saiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_sai.ItemIndex>=0 then
      lbx_numnf_sai.Items.Delete(lbx_numnf_sai.ItemIndex);

end;

procedure TFrm_SPED_EFD_NOVO.lbx_numcfKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numcf.ItemIndex>=0 then
      lbx_numcf.Items.Delete(lbx_numcf.ItemIndex);


end;

function tFrm_SPED_EFD_NOVO.fGravarGuiaST: Boolean;
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
         query_guiast.SQL.SaveToFile('c:\sql.txt');

         end;
      Tb_GuiaST.Next;
      end;
   end;
freeandnil(query_guiast);
result:=true;
end;

procedure TFrm_SPED_EFD_NOVO.BitBtn1Click(Sender: TObject);
var
mtabsai: TStringList;
mDefinicao: TStringList;

    function fCriartemporarios(pNomeTab: string; pTabela:tRxMemoryData): boolean;
    var
    x_tab: Integer;
    begin
    result:=true;
    mtabsai.add(pnometab+':=tclientdataset.create(nil);');
    mdefinicao.add(pnometab+': tclientdataset; ');

    for x_tab:=0 to pTabela.FieldCount-1 do
       begin
       if pTabela.Fields[x_tab].DataType=ftinteger then
          mtabsai.add(pnometab+'.fieldDefs.Add('+quotedstr(pTabela.Fields[x_tab].FieldName)+',ftinteger,0);')
       else if pTabela.Fields[x_tab].DataType=ftfloat then
          mtabsai.add(pnometab+'.fieldDefs.Add('+quotedstr(pTabela.Fields[x_tab].FieldName)+',ftfloat,0);')
       else if pTabela.Fields[x_tab].DataType=ftdatetime then
          mtabsai.add(pnometab+'.fieldDefs.Add('+quotedstr(pTabela.Fields[x_tab].FieldName)+',ftDateTime,0);')
       else if pTabela.Fields[x_tab].DataType=ftdate then
          mtabsai.add(pnometab+'.fieldDefs.Add('+quotedstr(pTabela.Fields[x_tab].FieldName)+',ftDate,0);')
       else if pTabela.Fields[x_tab].DataType=ftMemo then
          mtabsai.add(pnometab+'.fieldDefs.Add('+quotedstr(pTabela.Fields[x_tab].FieldName)+',ftMemo,0);')
       else if pTabela.Fields[x_tab].DataType=ftString then
          mtabsai.add(pnometab+'.fieldDefs.Add('+quotedstr(pTabela.Fields[x_tab].FieldName)+',ftString,'+inttostr(pTabela.Fields[x_tab].size)+');')
       else
          begin
          ShowMessage('Desconhecido '+mem_e200.Fields[x_tab].FieldName);
          result:=false;
          exit;
          end;
       end;
    mtabsai.add(pNomeTab+'.createdataset;');
    mtabsai.add(pNomeTab+'.open;');


    end;


begin
mtabsai:=TStringList.Create;
mdefinicao:=TStringList.Create;
fCriartemporarios('cds_e200',mem_e200);
fCriartemporarios('cds_e210',mem_e210);
fCriartemporarios('cds_m100',mem_m100);
fCriartemporarios('cds_m105',mem_m105);
fCriartemporarios('cds_m200',mem_m200);
fCriartemporarios('cds_m210',mem_m210);
fCriartemporarios('cds_r0150',mem_R0150);
fCriartemporarios('cds_r0190',mem_R0190);
fCriartemporarios('cds_r0200',mem_R0200);
fCriartemporarios('cds_r0400',mem_R0400);
fCriartemporarios('cds_e110',mem_E110);
fCriartemporarios('cds_e116',mem_E116);
fCriartemporarios('cds_m500',mem_m500);
fCriartemporarios('cds_m505',mem_m505);
fCriartemporarios('cds_m600',mem_m600);
fCriartemporarios('cds_m610',mem_m610);


mtabsai.Add(mDefinicao.Text);
mtabsai.SaveToFile('c:\sge\layout_efd.txt');

freeandnil(mtabsai);
freeandnil(mdefinicao);





end;


procedure TFrm_SPED_EFD_NOVO.fAtualizarHistoricos;
var
x_lin: integer;

const
linhadados :array[0..11] of string = (
 '002|1.01|01012009|31122009'
,'003|1.02|01012010|31122010'
,'004|1.03|01012011|31122011'
,'005|1.04|01012012|30062012'
,'006|1.05|01072012|31122012'
,'007|1.06|01012013|31122013'
,'008|1.07|01012014|31122014'
,'009|1.08|01012015|31122015'
,'010|1.09|01012016|31122016'
,'011|1.10|01012017|31122017'
,'012|1.11|01012018|31122018'
,'013|1.12|01012019|31122019'
);

    function fIncluir(pTextoDelimitado: String): boolean;
    begin
    cds_HistoricoVersao.append;
    cds_HistoricoVersaoVERSAO_LAYOUT.Value := fBuscarValor_paipo(1,pTextoDelimitado);
    cds_HistoricoVersaoCODIGO_LAYOUT.Value := fBuscarValor_paipo(2,pTextoDelimitado);
    cds_HistoricoVersaoDATA_INICIO.Value   := fStringtodatetime(fBuscarValor_paipo(3,pTextoDelimitado));
    cds_HistoricoVersaoDATA_FINAL.Value   := fStringtodatetime(fBuscarValor_paipo(4,pTextoDelimitado));
    cds_HistoricoVersao.Post;
    end;

begin

cds_HistoricoVersao.CreateDataSet;
cds_HistoricoVersao.Open;
for x_lin:=0 to high(linhadados) do
   begin
   fIncluir(linhadados[x_lin]);
   end;
end;



procedure TFrm_SPED_EFD_NOVO.CB_BLOCOKClick(Sender: TObject);
begin
//gb_reg_blocoK.Visible:=CB_BLOCOK.Checked;
CB_K100.Checked := true;
CB_K230.Checked := true;



end;

end.


