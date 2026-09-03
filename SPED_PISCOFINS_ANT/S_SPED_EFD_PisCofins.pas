unit S_SPED_EFD_PisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,db,dbtables,
  RxMemDS, CheckLst, Grids, DBGrids;

type
  TFrm_SPED_EFD_PisCofins = class(TForm)
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
    edt_versao: TEdit;
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
    Label9: TLabel;
    CB_IND_REG_CUM: TComboBox;
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
    gb_aliquotas_cst: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    edt_pis_entrada: TEdit;
    edt_pis_saida: TEdit;
    edt_pis_cst_entrada_prod: TEdit;
    edt_cofins_entrada: TEdit;
    edt_cofins_saida: TEdit;
    edt_cofins_cst_entrada_prod: TEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    edt_pis_cst_saida_prod: TEdit;
    edt_cofins_cst_saida_prod: TEdit;
    StaticText9: TStaticText;
    tsFiltros: TTabSheet;
    GroupBox2: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edt_numnf_ent: TEdit;
    edt_numnf_sai: TEdit;
    edt_num_ecf: TEdit;
    lbx_numnf_ent: TListBox;
    lbx_numnf_sai: TListBox;
    lbx_numcf: TListBox;
    OMITIR_VEN: TCheckBox;
    edt_datini_filtro: TDateEdit;
    edt_datfin_filtro: TDateEdit;
    bbSalvarPadrao: TBitBtn;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    edt_pis_cst_M105_entrada: TEdit;
    edt_pis_cst_M105_saida: TEdit;
    edt_cofins_cst_M105_entrada: TEdit;
    edt_cofins_cst_M105_saida: TEdit;
    Label13: TLabel;
    cb_IND_ESCRI: TComboBox;
    Label14: TLabel;
    edt_DESC_CRED: TEdit;
    Label16: TLabel;
    CB_COD_REC_PIS: TComboBox;
    Label17: TLabel;
    CB_COD_REC_COFINS: TComboBox;
    mem_m205: TRxMemoryData;
    mem_m205COD_REC: TStringField;
    mem_m205VL_DEBITO: TFloatField;
    mem_m205NUM_CAMPO: TStringField;
    mem_m605: TRxMemoryData;
    mem_m605COD_REC: TStringField;
    mem_m605NUM_CAMPO: TStringField;
    mem_m605VL_DEBITO: TFloatField;
    Label18: TLabel;
    Label19: TLabel;
    CB_NUM_CAMPO: TComboBox;
    Label20: TLabel;
    clb_tiponotas: TCheckListBox;
    edt_COD_CONT: TComboBox;
    GroupBox1: TGroupBox;
    CB_MANTERCST_PROPRIO: TCheckBox;
    CB_MANTERCST_TERCEIRO: TCheckBox;
    TabSheet2: TTabSheet;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    CB_NAT_BC_CRED_DC: TComboBox;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    CB_NAT_BC_CRED_CPR: TComboBox;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    CB_COD_CRED_M100: TComboBox;
    mem_m210VL_AJUS_ACRES_BC_PIS: TFloatField;
    mem_m210VL_AJUS_REDUC_BC_PIS: TFloatField;
    mem_m210VL_BC_CONT_AJUS: TFloatField;
    mem_m610VL_AJUS_ACRES_BC_COFINS: TFloatField;
    mem_m610VL_AJUS_REDUC_BC_COFINS: TFloatField;
    mem_m610VL_BC_CONT_AJUS: TFloatField;
    mem_cfop_validos: TRxMemoryData;
    mem_cfop_validoscfop_valido: TStringField;
    GroupBox6: TGroupBox;
    DBGrid1: TDBGrid;
    src_cfop_validos: TDataSource;
    mem_0500: TRxMemoryData;
    mem_0500PC_DATHOR_UEVE: TDateTimeField;
    mem_0500PC_COD_NAT_CC: TStringField;
    mem_0500PC_IND_CTA: TStringField;
    mem_0500PC_NIVEL: TIntegerField;
    mem_0500PC_COD_CTA: TStringField;
    mem_0500PC_NOME_CTA: TStringField;
    mem_0500PC_COD_CTA_REF: TStringField;
    cb_gerar_bloco_m: TCheckBox;
    cb_bloco_m_zerado: TCheckBox;
    BitBtn1: TBitBtn;
    mem_m400: TRxMemoryData;
    mem_m410: TRxMemoryData;
    mem_m800: TRxMemoryData;
    mem_m810: TRxMemoryData;
    mem_m400M400_CST_PIS: TStringField;
    mem_m400M400_VL_TOT_REC: TFloatField;
    mem_m400M400_COD_CTA: TStringField;
    mem_m400M400_DESC_COMPL: TStringField;
    mem_m410M410_NAT_REC: TStringField;
    mem_m410M410_VL_REC: TFloatField;
    mem_m410M410_COD_CTA: TStringField;
    mem_m410M410_DESC_COMPL: TStringField;
    mem_m800M800_CST_COFINS: TStringField;
    mem_m800M800_VL_TOT_REC: TFloatField;
    mem_m800M800_COD_CTA: TStringField;
    mem_m800M800_DESC_COMPL: TStringField;
    mem_m810M810_NAT_REC: TStringField;
    mem_m810M810_VL_REC: TFloatField;
    mem_m810M810_COD_CTA: TStringField;
    mem_m810M810_DESC_COMPL: TStringField;
    Panel1: TPanel;
    Label24: TLabel;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    edt_tab4_3_10_pis: TEdit;
    edt_tab4_3_10_cofins: TEdit;
    procedure bbGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure cb_COD_INC_TRIBExit(Sender: TObject);
    procedure CB_COD_TIPO_CONTExit(Sender: TObject);
    procedure CB_IND_REG_CUMExit(Sender: TObject);
    procedure CB_COD_CRED_M100Exit(Sender: TObject);
    procedure edt_numnf_entExit(Sender: TObject);
    procedure lbx_numnf_entKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_numnf_saiExit(Sender: TObject);
    procedure lbx_numnf_saiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_num_ecfExit(Sender: TObject);
    procedure lbx_numcfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure cb_IND_ESCRIExit(Sender: TObject);
    procedure edt_DESC_CREDExit(Sender: TObject);
    procedure CB_COD_REC_PISExit(Sender: TObject);
    procedure CB_COD_REC_COFINSExit(Sender: TObject);
    procedure cb_IND_ESCRIClick(Sender: TObject);
    procedure CB_NUM_CAMPOExit(Sender: TObject);
    procedure clb_tiponotasClick(Sender: TObject);
    procedure CB_NAT_BC_CRED_DCExit(Sender: TObject);
    procedure CB_NAT_BC_CRED_CPRExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }


    mFinalCFOP_Frete: String;
    mfone_temp: String;
    mLinha: String;
    mTabela: String;
    mComplInstruc: string;
    items_lista_blocoR: TStrings;
    items_lista_blocoA: TStrings;
    items_lista_blocoC: TStrings;
    items_lista_blocoD: TStrings;
    items_lista_blocoF: TStrings;
    items_lista_blocoI: TStrings;
    items_lista_blocoM: TStrings;
    items_lista_bloco1: TStrings;



    mQtdRegBloco0 : Integer;
    mQtdRegBlocoA : Integer;
    mQtdRegBlocoC : Integer;
    mQtdRegBlocoD : Integer;
    mQtdRegBlocoF : Integer;
    mQtdRegBlocoI : Integer;
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

    mQtdRegBloco_C001: Integer;
    mQtdRegBloco_C010: Integer;
    mQtdRegBloco_C100: Integer;
    mQtdRegBloco_C110: Integer;
    mQtdRegBloco_C111: Integer;
    mQtdRegBloco_C120: Integer;
    mQtdRegBloco_C170: Integer;
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
    mQtdRegBloco_C600: Integer;
    mQtdRegBloco_C601: Integer;
    mQtdRegBloco_C605: Integer;
    mQtdRegBloco_C609: Integer;
    mQtdRegBloco_C990: Integer;

    mQtdRegBloco_D001: Integer;
    mQtdRegBloco_D010: Integer;
    mQtdRegBloco_D100: Integer;
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
    mQtdRegBloco_D600: Integer;
    mQtdRegBloco_D601: Integer;
    mQtdRegBloco_D605: Integer;
    mQtdRegBloco_D609: Integer;
    mQtdRegBloco_D990: Integer;

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

    mQtdRegBloco_I001: Integer;
    mQtdRegBloco_I990: Integer;

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
    mQtdRegBloco_M205: Integer;
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
    mQtdRegBloco_M605: Integer;
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


    mQtdRegBloco_0990: Integer;

    function fBlocoR(pOrigem: Integer): Boolean;

    function fBlocoA(pOrigem: Integer): Boolean;

    function fBlocoC(pOrigem: Integer): Boolean;

    function fBlocoD(pOrigem: Integer): Boolean;


    function fBlocoF(pOrigem: Integer): Boolean;

    function fBlocoI(pOrigem: Integer): Boolean;

    function fBlocoM(pOrigem: Integer): Boolean;

    function fBloco1(pOrigem: Integer): Boolean;

    function fValVal(pObs,pNomeTab,pCampo,pValorCampo: String): Boolean;


    function fGerarReg9900(pTipo: String;pQtdReg: Integer): Boolean;

    function fTestarCliFor(pCodigo: String): Boolean;
    function fTestarR0190(pCodigo: String): Boolean;
    function fTestarR0200(pCodigo: String): Boolean;

    function fTestarR0400(pCodigo: String): Boolean;


    function fGerarM100(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Pis,pAliqPis,pQuant_BC_Pis,pAliq_Pis_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;


    function fGerarM105(pNAT_BC_CRED,pCST_PIS: string; pVL_BC_PIS_TOT, pVL_BC_PIS_CUM,pVL_BC_PIS_NC,pVL_BC_PIS,pQUANT_BC_PIS_TOT
       ,pQUANT_BC_PIS  : real; pDESC_CRED: String): Boolean;


    function fGerarM200(pForcarGeracao: Boolean;pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;



    function fGerarM205(pForcarGeracao: Boolean;pVl_Debito,pVlDoc: Real;pCst,pCodCst104,pCodCta,pDescCompl: String): Boolean;

    function fGerarM210(
    pCOD_CONT: String;
     pVL_REC_BRT
    ,pVL_BC_CONT: real;
     pVL_AJUS_ACRES_BC_PIS
     ,pVL_AJUS_REDUC_BC_PIS
     ,pVL_BC_CONT_AJUS
    ,pALIQ_PIS
    ,pQUANT_BC_PIS
    ,pALIQ_PIS_QUANT
    ,pVL_CONT_APUR
    ,pVL_AJUS_ACRES
    ,pVL_AJUS_REDUC
    ,pVL_CONT_DIFER
    ,pVL_CONT_DIFER_ANT
    ,pVL_CONT_PER: Real): boolean;




    function fGerarM500(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Cofins,pAliqCofins,pQuant_BC_Cofins,pAliq_Cofins_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Ajus_Reduc,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;


    function fGerarM505(pNAT_BC_CRED,pCST_Cofins: string; pVL_BC_Cofins_TOT, pVL_BC_Cofins_CUM,pVL_BC_Cofins_NC,pVL_BC_Cofins,pQUANT_BC_Cofins_TOT
       ,pQUANT_BC_Cofins  : real; pDESC_CRED: String): Boolean;


    function fGerarM600(pForcarGeracao: Boolean;pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;



    function fGerarM605(pForcarGeracao: Boolean;pVl_Debito,pVlDoc: Real;pCst,pCodCst104
                                       ,pCodCta,pDescCompl: String): Boolean;


    function fGerarM610(pCOD_CONT: String;
    pVL_REC_BRT,pVL_BC_CONT

    ,pVL_AJUS_ACRES_BC_COFINS
    ,pVL_AJUS_REDUC_BC_COFINS
   , pVL_BC_CONT_AJUS

    ,pALIQ_Cofins,pQUANT_BC_Cofins,pALIQ_Cofins_QUANT,pVL_CONT_APUR
    ,pVL_AJUS_ACRES,pVL_AJUS_REDUC,pVL_CONT_DIFER,pVL_CONT_DIFER_ANT,pVL_CONT_PER: Real): Boolean;


    procedure fPreecherCfopValido;


    function fListaCfop(pNomeCampo: String): String;


    function fGerar0500(PC_COD_CTA: String): boolean ;



  public
    { Public declarations }
  end;

var
  Frm_SPED_EFD_PisCofins: TFrm_SPED_EFD_PisCofins;

{
    mpis_aliq_entrada: string='0.65';
    mpis_aliq_saida: string='0.65';
    mcst_pis_entrada_prod: string='99';
    mcst_pis_saida_prod: string='99';

    mcst_ipi_entrada: string='99';

    mcofins_aliq_entrada: string='3';
    mcofins_aliq_saida: string='3';
    mcst_cofins_entrada_prod: string='99';
    mcst_cofins_saida_prod: string='99';

    mcst_cofins_M105_entrada: string='99';
    mcst_cofins_M105_saida: string='99';
    mcst_pis_M105_entrada: string='99';
    mcst_pis_M105_saida: string='99';
 }
    const
    fdt_efd='ddmmyyyy';
    fdt_efd2='mmyyyy';
    mCasas2Dec='##0.00';
    mCasas3Dec='##0.000';
    mCasas4Dec='##0.0000';
    mCasas5Dec='##0.00000';



//    mcst_ipi_saida: string='99';
    mcst_icms_icms: string='000';
    mMenos1: integer=-1;
implementation

uses Func, S_DM1, lerarq, S_DM4, s_VisualizadorArqPaipo;

{$R *.dfm}

procedure TFrm_SPED_EFD_PisCofins.bbGerarClick(Sender: TObject);
var
mNomeArq: String;
mSeqTeste: Integer;
query_temp: tQuery;

begin

{
if CB_MANTERCST_PROPRIO.Checked=true then
   begin
   mpis_aliq_saida       :='P2ALPIS';
   mcst_pis_saida_prod   :='P2CST_PIS';
   mcofins_aliq_saida    :='P2ALCOFINS';
   mcst_cofins_saida_prod:='P2CST_COFINS';
   mcst_cofins_M105_saida:='P2CST_COFINS';
   mcst_pis_M105_saida   :='P2CST_PIS';
   end
else
   begin

   mcst_pis_saida_prod      :=edt_pis_cst_saida_prod.text;
   mpis_aliq_saida          :=mudavp(edt_pis_saida.Text);
   mcst_pis_M105_saida      :=edt_pis_cst_M105_saida.text;
   mcst_cofins_M105_saida   :=edt_cofins_cst_M105_saida.Text;
   mcofins_aliq_saida       :=mudavp(edt_cofins_saida.Text);
   mcst_cofins_saida_prod   :=edt_pis_cst_saida_prod.Text;

   end;

if CB_MANTERCST_TERCEIRO.Checked=true then
   begin
   mcst_ipi_entrada             :='PF2CST_IPI';
   mcst_pis_entrada_prod        :='99';
   mpis_aliq_entrada            :='PF2CST_PIS';
   mcofins_aliq_entrada         :='PF2COFINS_PERC';
   mcst_cofins_entrada_prod     :='PF2CST_COFINS';
   mcst_cofins_M105_entrada     :='PF2CST_COFINS';
   mcst_pis_M105_entrada        :='PF2CST_PIS';
   end
else
   begin
   mcst_pis_M105_entrada    :=edt_pis_cst_M105_entrada.Text;
   mcst_cofins_M105_entrada :=edt_cofins_cst_M105_entrada.Text;
   mcofins_aliq_entrada     :=mudavp(edt_cofins_entrada.Text);
   mcst_cofins_entrada_prod :=edt_pis_cst_entrada_prod.Text;
   mpis_aliq_entrada        :=mudavp(edt_pis_entrada.Text);
   mcst_pis_entrada_prod    :=edt_pis_cst_entrada_prod.Text;
   end;
}


{
lbx_numnf_ent.Items.Clear;
lbx_numnf_ent.Items.Add('16061 - 16061');
//lbx_numnf_ent.Items.Add('137305 - 137305');
//lbx_numnf_ent.Items.Add('14374 - 14374');

lbx_numnf_sai.Items.Clear;
//lbx_numnf_sai.Items.Add('14350999 - 14350999');
//lbx_numnf_sai.Items.Add('14374 - 14374');
}


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

if not mem_0500.Active then
   mem_0500.Open;
mem_0500.EmptyTable;



if not mem_m400.Active then
   mem_m400.Open;
mem_m400.EmptyTable;

if not mem_m410.Active then
   mem_m410.Open;
mem_m410.EmptyTable;


if not mem_m800.Active then
   mem_m800.Open;
mem_m800.EmptyTable;

if not mem_m810.Active then
   mem_m810.Open;
mem_m810.EmptyTable;

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

if not mem_m205.Active then
   mem_m205.Open;
mem_m205.EmptyTable;


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

if not mem_m605.Active then
   mem_m605.Open;
mem_m605.EmptyTable;


if not mem_m610.Active then
   mem_m610.Open;
mem_m610.EmptyTable;




memo_erros.Lines.Clear;

items_lista_blocoR.Clear;
items_lista_blocoA.Clear;
items_lista_blocoC.Clear;
items_lista_blocoD.Clear;
items_lista_blocoF.Clear;
items_lista_blocoI.Clear;
items_lista_blocoM.Clear;
items_lista_bloco1.Clear;


mFinalCFOP_Frete:='102';

mQtdRegBloco0:=0;
mQtdRegBlocoA:=0;
mQtdRegBlocoC:=0;
mQtdRegBlocoD:=0;
mQtdRegBlocoF:=0;
mQtdRegBlocoI:=0;

mQtdRegBlocoM:=0;
mQtdRegBloco1:=0;







mQtdRegBloco_A001:=0;
mQtdRegBloco_A100:=0;
mQtdRegBloco_A110:=0;
mQtdRegBloco_A111:=0;
mQtdRegBloco_A120:=0;
mQtdRegBloco_A170:=0;
mQtdRegBloco_A990:=0;

mQtdRegBloco_C001:=0;
mQtdRegBloco_C010:=0;
mQtdRegBloco_C100:=0;
mQtdRegBloco_C110:=0;
mQtdRegBloco_C111:=0;
mQtdRegBloco_C120:=0;
mQtdRegBloco_C170:=0;
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
mQtdRegBloco_C600:=0;
mQtdRegBloco_C601:=0;
mQtdRegBloco_C605:=0;
mQtdRegBloco_C609:=0;
mQtdRegBloco_C990:=0;


mQtdRegBloco_D001:=0;
mQtdRegBloco_D010:=0;
mQtdRegBloco_D100:=0;
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

mQtdRegBloco_I001:=0;
mQtdRegBloco_I990:=0;


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
mQtdRegBloco_M205:=0;

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
mQtdRegBloco_M605:=0;
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


fBlocoA(0);
fBlocoC(0);

fBlocoD(0);
fBlocoF(0);
fBlocoI(0);
fBlocoM(0);
fBloco1(0);
fBlocoR(0);

items_lista_blocoR.Add(trim(items_lista_blocoA.Text));
items_lista_blocoR.Add(trim(items_lista_blocoC.Text));
items_lista_blocoR.Add(trim(items_lista_blocoD.Text));
items_lista_blocoR.Add(trim(items_lista_blocoF.Text));
items_lista_blocoR.Add(trim(items_lista_blocoI.Text));
items_lista_blocoR.Add(trim(items_lista_blocoM.Text));
items_lista_blocoR.Add(trim(items_lista_bloco1.Text));

mQtdRegBloco_9001:=mQtdRegBloco_9001+1;
mLinha:='|9001|0|'; // com dados
Memo1.Lines.Add(mLinha);
items_lista_blocoR.Add(mLinha);
mQtdRegBloco_9900:=mQtdRegBloco_9900+1;

fGerarReg9900('0000',mQtdRegBloco_0000);
fGerarReg9900('0001',mQtdRegBloco_0001);

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
fGerarReg9900('C001',mQtdRegBloco_C001);
fGerarReg9900('C010',mQtdRegBloco_C010);
fGerarReg9900('C100',mQtdRegBloco_C100);
fGerarReg9900('C110',mQtdRegBloco_C110);
fGerarReg9900('C120',mQtdRegBloco_C120);
fGerarReg9900('C170',mQtdRegBloco_C170);
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
fGerarReg9900('I001',mQtdRegBloco_I001);
fGerarReg9900('I990',mQtdRegBloco_I990);


fGerarReg9900('M001',mQtdRegBloco_M001);
fGerarReg9900('M100',mQtdRegBloco_M100);
fGerarReg9900('M105',mQtdRegBloco_M105);
fGerarReg9900('M110',mQtdRegBloco_M110);
fGerarReg9900('M200',mQtdRegBloco_M200);
fGerarReg9900('M205',mQtdRegBloco_M205);

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
fGerarReg9900('M605',mQtdRegBloco_M605);
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




mQtdRegBloco_9999:=mQtdRegBloco0+mQtdRegBlocoA+mQtdRegBlocoC+mQtdRegBlocoD+mQtdRegBlocoF+mQtdRegBlocoI+mQtdRegBlocoM+mQtdRegBloco1+mQtdRegBloco_9900;

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
MessageDlg('Arquivo Salvo: '+edt_nomarq.Text,mtInformation,[mbOk],0 );



end;


function TFrm_SPED_EFD_PisCofins.fBlocoR(pOrigem: Integer): Boolean;
var
mValorCampo: String;
Query_R0000: tQuery;
Query_R0100: tQuery;
Query_R0110: tQuery;
Query_R0111: tQuery;
Query_R0140: tQuery;
Query_R0205: tQuery;
Query_R0206: tQuery;
Query_R0208: tQuery;
Query_R0400: tQuery;
Query_R0450: tQuery;
Query_R0500: tQuery;
Query_R0600: tQuery;
begin
Query_R0000:=TQuery.Create(nil);
Query_R0000.DatabaseName:='SG_ASSOC';

Query_R0100:=TQuery.Create(nil);
Query_R0100.DatabaseName:='SG_ASSOC';

Query_R0110:=TQuery.Create(nil);
Query_R0110.DatabaseName:='SG_ASSOC';

Query_R0111:=TQuery.Create(nil);
Query_R0111.DatabaseName:='SG_ASSOC';

Query_R0140:=TQuery.Create(nil);
Query_R0140.DatabaseName:='SG_ASSOC';




Query_R0205:=TQuery.Create(nil);
Query_R0205.DatabaseName:='SG_ASSOC';

Query_R0206:=TQuery.Create(nil);
Query_R0206.DatabaseName:='SG_ASSOC';

Query_R0208:=TQuery.Create(nil);
Query_R0208.DatabaseName:='SG_ASSOC';

Query_R0400:=TQuery.Create(nil);
Query_R0400.DatabaseName:='SG_ASSOC';

Query_R0450:=TQuery.Create(nil);
Query_R0450.DatabaseName:='SG_ASSOC';


Query_R0500:=TQuery.Create(nil);
Query_R0500.DatabaseName:='SG_ASSOC';

Query_R0600:=TQuery.Create(nil);
Query_R0600.DatabaseName:='SG_ASSOC';


mTabela:='TAB_R0000';

Query_R0000.close;
Query_R0000.SQL.Clear;
Query_R0000.SQL.Add('Select :edt_versao as COD_VER,:cb_tipo_escritura as TIPO_ESCRIT,'
                  +' :cb_ind_sit_ESP as IND_SIT_ESP,:edt_numrec_esc_ant as NUM_REC_ANTERIOR, '
                  +' :edt_datini as DT_INI,:edt_datfin as DT_FIN,CADEMP.RAZAO as NOME,LPAD(CADEMP.CGC,14,'+QuotedStr('0')+') as CNPJ'
                  +',CADEMP.UF as UF,CADLOC.LCODMUN_IBGE as COD_MUN,CADEMP.EMP_SUFRAMA as SUFRAMA, '
                  +QuotedStr('00')+' as IND_NAT_PJ,'+QuotedStr('2')+' as IND_ATIV from CADEMP,CADLOC where CODLOC=LCODLOC AND '
                  +' CODEMP=:CODEMP ');
Query_R0000.ParamByName('edt_versao').Value        :=edt_versao.Text;
Query_R0000.ParamByName('cb_tipo_escritura').Value :=cb_tipo_escritura.ItemIndex;
Query_R0000.ParamByName('cb_ind_sit_ESP').Value    :=cb_ind_sit_ESP.ItemIndex;
Query_R0000.ParamByName('edt_numrec_esc_ant').Value:=edt_numrec_esc_ant.Text;
Query_R0000.ParamByName('edt_datini').Value        :=StrToDatetime(edt_datini.Text);
Query_R0000.ParamByName('edt_datfin').Value        :=StrToDatetime(edt_datfin.Text);
Query_R0000.ParamByName('CODEMP').Value            :=codemp;
try
   Query_R0000.Open;
except
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
      fValVal('Cadastro de Empresa ',mTabela,'IND_SIT_ESP',Query_R0000.fieldbyName('IND_SIT_ESP').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('IND_SIT_ESP').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'NUM_REC_ANTERIOR',Query_R0000.fieldbyName('NUM_REC_ANTERIOR').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('NUM_REC_ANTERIOR').AsString+'|';
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0000.fieldbyName('DT_INI').AsDateTime)+'|';
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0000.fieldbyName('DT_FIN').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabela,'NOME',Query_R0000.fieldbyName('NOME').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('NOME').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0000.fieldbyName('CNPJ').FieldName,Query_R0000.fieldbyName('CNPJ').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('CNPJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'UF',Query_R0000.fieldbyName('UF').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('UF').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'CODMUN',Query_R0000.fieldbyName('COD_MUN').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('COD_MUN').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'SUFRAMA',Query_R0000.fieldbyName('SUFRAMA').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('SUFRAMA').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'IND_NAT_PJ',Query_R0000.fieldbyName('IND_NAT_PJ').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('IND_NAT_PJ').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,'IND_ATIV',Query_R0000.fieldbyName('IND_ATIV').AsString);
      mLinha:=mLinha+Query_R0000.fieldbyName('IND_ATIV').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      Query_R0000.Next;
      end;
   Query_R0000.Close;
   end;

Query_R0100.close;
Query_R0100.SQL.Clear;
Query_R0100.SQL.Add('Select CADEMP.CONTADOR as NOME,LPAD(CADEMP.EMP_CONT_CPF,11,'+QuotedStr('0')+') as CPF,'
                   +'CADEMP.CRC_CONTADOR as CRC,LPAD(CADEMP.EMP_CONT_CNPJ,14,'+QuotedStr('0')+') as CNPJ,'
                   +'CADEMP.EMP_CONT_CEP as CEP,CADEMP.EMP_CONT_ENDER as END,'
                   +'CADEMP.EMP_CONT_NUM_END as NUM,CADEMP.EMP_CONT_COMP_END as COMPL,'
                   +'CADEMP.EMP_CONT_BAIRRO as BAIRRO,'
                   +'LPAD( NVL( LTRIM(translate(CADEMP.EMP_CONT_FONE, '
                   +' translate(CADEMP.EMP_CONT_FONE, '+QuotedStr('1234567890')+', '+QuotedStr(' ')+') , '+QuotedStr(' ')+')),0),10,'+QuotedStr('0')+') as FONE,'
                   +'CADEMP.EMP_CONT_FAX as FAX,CADEMP.E_MAIL as EMAIL,CADLOC.LCODMUN_IBGE as COD_MUN '
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
   mQtdRegBloco0:=mQtdRegBloco0+1;
   mLinha:='|0001|0|'; // com dados
   mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
   Memo1.Lines.Add(mLinha);
   items_lista_blocoR.Add(mLinha);

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
// REGISTRO 110

Query_R0110.Close;
Query_R0110.SQL.Clear;
Query_R0110.SQL.Add(' Select '+QuotedStr(insere(copy(cb_COD_INC_TRIB.Text,1,1),' ',1))+' as COD_INC_TRIB,'+QuotedStr(insere(copy(CB_IND_APRO_CRED.Text,1,1),' ',1))
                   +' as IND_APRO_CRED,'+QuotedStr(insere(copy(CB_COD_TIPO_CONT.Text,1,1),' ',1))+' as COD_TIPO_CONT '
                   +','+QuotedStr(insere(copy(CB_IND_REG_CUM.Text,1,1),' ',1))+' as IND_REG_CUM  '
                   +' from CADEMP where CODEMP=:EMPRESA ');
Query_R0110.ParamByName('EMPRESA').Value:=codemp;
try
   Query_R0110.Open;
except
   end;
// Query_R0110.sql.savetofile('c:\sql.txt');

mTabela:='TAB_R0110';
if not Query_R0110.IsEmpty then
   begin
   Query_R0110.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;
   mLinha:='';
   while not Query_R0110.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0110:=mQtdRegBloco_0110+1;
      mLinha:='|';
      mLinha:=mLinha+'0110|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0110.fieldbyName('COD_INC_TRIB').FieldName,Query_R0110.fieldbyName('COD_INC_TRIB').AsString);
      mLinha:=mLinha+Query_R0110.fieldbyName('COD_INC_TRIB').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0110.fieldbyName('IND_APRO_CRED').FieldName,Query_R0110.fieldbyName('IND_APRO_CRED').AsString);
      mLinha:=mLinha+Query_R0110.fieldbyName('IND_APRO_CRED').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0110.fieldbyName('COD_TIPO_CONT').FieldName,Query_R0110.fieldbyName('COD_TIPO_CONT').AsString);
      mLinha:=mLinha+Query_R0110.fieldbyName('COD_TIPO_CONT').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0110.fieldbyName('IND_REG_CUM').FieldName,Query_R0110.fieldbyName('IND_REG_CUM').AsString);
      mLinha:=mLinha+Query_R0110.fieldbyName('IND_REG_CUM').AsString+'|';



      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      Query_R0110.Next;
      end;
   Query_R0110.Close;
   end;

// TERMINO REGISTRO 110

// REGISTRO 111
Query_R0111.Close;
Query_R0111.SQL.Clear;
Query_R0111.SQL.Add('SELECT NSTOTNOTA AS REC_BRU_NCUM_TRIB_MI '
                   +',NSTOTNOTA AS REC_BRU_NCUM_NT_MI '
                   +',NSTOTNOTA AS REC_BRU_NCUM_EXP '
                   +',NSTOTNOTA AS REC_BRU_CUM '
                   +',NSTOTNOTA AS REC_BRU_TOTAL '
                   +' FROM CADNS '
                   +' where NSCODEMP=-999');
try
   Query_R0111.Open;
except
   end;


mTabela:='TAB_R0111';
if not Query_R0111.IsEmpty then
   begin
   Query_R0111.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;
   mLinha:='';
   while not Query_R0111.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0111:=mQtdRegBloco_0111+1;

      mLinha:='|';
      mLinha:=mLinha+'0111|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0111.fieldbyName('REC_BRU_NCUM_TRIB_MI').FieldName
                   ,Query_R0111.fieldbyName('REC_BRU_NCUM_TRIB_MI').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_R0111.fieldbyName('REC_BRU_NCUM_TRIB_MI').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0111.fieldbyName('REC_BRU_NCUM_NT_MI').FieldName
                 ,Query_R0111.fieldbyName('REC_BRU_NCUM_NT_MI').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_R0111.fieldbyName('REC_BRU_NCUM_NT_MI').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0111.fieldbyName('REC_BRU_NCUM_EXP').FieldName,Query_R0111.fieldbyName('REC_BRU_NCUM_EXP').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_R0111.fieldbyName('REC_BRU_NCUM_EXP').AsFloat)+'|';


      fValVal('Cadastro de Empresa ',mTabela,Query_R0111.fieldbyName('REC_BRU_CUM').FieldName,Query_R0111.fieldbyName('REC_BRU_CUM').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_R0111.fieldbyName('REC_BRU_CUM').AsFloat)+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0111.fieldbyName('REC_BRU_TOTAL').FieldName,Query_R0111.fieldbyName('REC_BRU_TOTAL').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_R0111.fieldbyName('REC_BRU_TOTAL').AsFloat)+'|';


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      Query_R0111.Next;
      end;
   Query_R0111.Close;
   end;

// TERMINO REGISTRO 111

Query_R0140.Close;
Query_R0140.SQL.Clear;
Query_R0140.SQL.Add(' Select CADLOC.LCODMUN_IBGE as COD_EST,CADEMP.RAZAO as NOME,Lpad(CGC,14,'+QuotedStr('0')+') as CNPJ,'
                   +' CADEMP.UF as UF,CADEMP.INSCRICAO as IE,CADLOC.LCODMUN_IBGE as COD_MUN,'
                   +' CADEMP.INSCMUNIC as IM,CADEMP.EMP_SUFRAMA as SUFRAMA '
                   +' from CADEMP,CADLOC where CODEMP=:CODEMP '
                   +' AND LCODLOC=CODLOC ');
Query_R0140.ParamByName('CODEMP').Value:=codemp;
try
   Query_R0140.Open;
except
   end;





// REGISTRO 140

mTabela:='TAB_R0140';
if not Query_R0140.IsEmpty then
   begin
   Query_R0140.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not Query_R0140.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0140:=mQtdRegBloco_0140+1;

      mLinha:='|';
      mLinha:=mLinha+'0140|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('COD_EST').FieldName,Query_R0140.fieldbyName('COD_EST').AsString);
      mLinha:=mLinha+Query_R0140.fieldbyName('COD_EST').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('NOME').FieldName,Query_R0140.fieldbyName('NOME').AsString);
      mLinha:=mLinha+Query_R0140.fieldbyName('NOME').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('CNPJ').FieldName,Query_R0140.fieldbyName('CNPJ').AsString);
      mLinha:=mLinha+Query_R0140.fieldbyName('CNPJ').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('UF').FieldName,Query_R0140.fieldbyName('UF').AsString);
      mLinha:=mLinha+Query_R0140.fieldbyName('UF').AsString+'|';


      if copy(uppercase( trim(Query_R0140.FieldbyName('IE').AsString)),1,5)='ISENT' then
         mfone_temp:=''
//         mfone_temp:='ISENTO'
      else if fsonumero(Query_R0140.fieldbyName('IE').AsString)=0 then
         mfone_temp:=''
      else
         mfone_temp:=fDeixanum(Query_R0140.fieldbyName('IE').AsString);

      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('IE').FieldName,mfone_temp);
      mLinha:=mLinha+mfone_temp+'|';



      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('COD_MUN').FieldName,Query_R0140.fieldbyName('COD_MUN').AsString);
      mLinha:=mLinha+Query_R0140.fieldbyName('COD_MUN').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('IM').FieldName,Query_R0140.fieldbyName('IM').AsString);
      mLinha:=mLinha+Query_R0140.fieldbyName('IM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0140.fieldbyName('SUFRAMA').FieldName,Query_R0140.fieldbyName('SUFRAMA').AsString);
      mLinha:=mLinha+Query_R0140.fieldbyName('SUFRAMA').AsString+'|';


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      Query_R0140.Next;
      end;
   Query_R0140.Close;
   end;

// TERMINO REGISTRO 140

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
   if mQtdRegBloco0<2 then
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
      mLinha:=mLinha+mem_R0150.fieldbyName('NOME').AsString+'|';

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
         mfone_temp:=''
//         mfone_temp:='ISENTO'
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

      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('END').FieldName,mem_R0150.fieldbyName('END').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('END').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('NUM').FieldName,mem_R0150.fieldbyName('NUM').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('NUM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('COMPL').FieldName,mem_R0150.fieldbyName('COMPL').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('COMPL').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_R0150.fieldbyName('BAIRRO').FieldName,mem_R0150.fieldbyName('BAIRRO').AsString);
      mLinha:=mLinha+mem_R0150.fieldbyName('BAIRRO').AsString+'|';

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
   if mQtdRegBloco0<2 then
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
   if mQtdRegBloco0<2 then
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

      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      mem_R0200.Next;
      end;
   mem_R0200.Close;
   end;

// TERMINO REGISTRO 200

Query_R0205.Close;
Query_R0205.SQL.Clear;
Query_R0205.SQL.Add('select PDNOME AS DESCR_ANT_ITEM ,SYSDATE AS DT_INI '
                   +',SYSDATE AS DT_FIM ,TO_CHAR(PDCODPRO) AS COD_ANT_ITEM '
                   +' FROM CADPRO where PDCODPRO=-9999 ');
try
   Query_R0205.Open;
except
   Query_R0205.sql.savetofile('c:\sql.txt');
   end;




// REGISTRO 205

mTabela:='TAB_R0205';
if not Query_R0205.IsEmpty then
   begin
   Query_R0205.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not Query_R0205.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0205:=mQtdRegBloco_0205+1;

      mLinha:='|';
      mLinha:=mLinha+'0205|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0205.FieldByName('DESCR_ANT_ITEM').FieldName,Query_R0205.FieldByName('DESCR_ANT_ITEM').AsString);
      mLinha:=mLinha+Query_R0205.FieldByName('DESCR_ANT_ITEM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0205.FieldByName('DT_INI').FieldName,Query_R0205.FieldByName('DT_INI').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0205.FieldByName('DT_INI').AsDateTime)+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0205.FieldByName('DT_FIM').FieldName,Query_R0205.FieldByName('DT_FIM').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd, Query_R0205.FieldByName('DT_FIM').AsDateTime)+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0205.FieldByName('DESCR_ANT_ITEM').FieldName,Query_R0205.FieldByName('DESCR_ANT_ITEM').AsString);
      mLinha:=mLinha+Query_R0205.FieldByName('DESCR_ANT_ITEM').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0205.FieldByName('COD_ANT_ITEM').FieldName,Query_R0205.FieldByName('COD_ANT_ITEM').AsString);
      mLinha:=mLinha+Query_R0205.FieldByName('COD_ANT_ITEM').AsString+'|';


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      Query_R0205.Next;
      end;
   Query_R0205.Close;
   end;

// TERMINO REGISTRO 205


Query_R0206.Close;
Query_R0206.SQL.Clear;
Query_R0206.SQL.Add('select TO_CHAR(PDCODPRO) AS COD_COMB '
                   +' FROM CADPRO where PDCODPRO=-99999');
Query_R0206.Open;



// REGISTRO 206

mTabela:='TAB_R0206';
if not Query_R0206.IsEmpty then
   begin
   Query_R0206.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not Query_R0206.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0206:=mQtdRegBloco_0206+1;

      mLinha:='|';
      mLinha:=mLinha+'0206|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0206.fieldbyName('COD_COMB').FieldName,Query_R0206.fieldbyName('COD_COMB').AsString);
      mLinha:=mLinha+Query_R0206.fieldbyName('COD_COMB').AsString+'|';


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      Query_R0206.Next;
      end;
   Query_R0206.Close;
   end;

// TERMINO REGISTRO 206


Query_R0208.Close;
Query_R0208.SQL.Clear;
Query_R0208.SQL.Add('select '+QuotedStr('00')+' as COD_TAB ,'+QuotedStr('00')+' as COD_GRU '
                   +',PDMARCA AS MARCA_COM FROM CADPRO where PDCODPRO=-99999');
try
   Query_R0208.open;
except
   end;




// REGISTRO 208

mTabela:='TAB_R0208';
if not Query_R0208.IsEmpty then
   begin
   Query_R0208.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not Query_R0208.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0208:=mQtdRegBloco_0208+1;

      mLinha:='|';
      mLinha:=mLinha+'0208|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0208.fieldbyName('COD_TAB').FieldName,Query_R0208.fieldbyName('COD_TAB').AsString);
      mLinha:=mLinha+Query_R0208.fieldbyName('COD_TAB').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0208.fieldbyName('COD_GRU').FieldName,Query_R0208.fieldbyName('COD_GRU').AsString);
      mLinha:=mLinha+Query_R0208.fieldbyName('COD_GRU').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0208.fieldbyName('MARCA_COM').FieldName,Query_R0208.fieldbyName('MARCA_COM').AsString);
      mLinha:=mLinha+Query_R0208.fieldbyName('MARCA_COM').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      Query_R0208.Next;
      end;
   Query_R0208.Close;
   end;

// TERMINO REGISTRO 208




// REGISTRO 0400

mTabela:='TAB_R0400';
if not mem_R0400.IsEmpty then
   begin
   mem_R0400.First;
   if mQtdRegBloco0<2 then
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

// TERMINO REGISTRO 450

Query_R0450.close;
Query_R0450.SQL.Clear;
Query_R0450.SQL.Add('SELECT TO_CHAR(CFCODCFO,'+QuotedStr('000000')+') AS COD_INF,CFNOME AS TXT '
                   +' FROM CADCFO where CFCODCFO=-999');
try
   Query_R0450.Open;
except
   end;


// REGISTRO 450

mTabela:='TAB_R0450';
if not Query_R0450.IsEmpty then
   begin
   Query_R0450.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not Query_R0450.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0450:=mQtdRegBloco_0450+1;

      mLinha:='|';
      mLinha:=mLinha+'0450|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0450.fieldbyName('COD_INF').FieldName,Query_R0450.fieldbyName('COD_INF').AsString);
      mLinha:=mLinha+Query_R0450.fieldbyName('COD_INF').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0450.fieldbyName('TXT').FieldName,Query_R0450.fieldbyName('TXT').AsString);
      mLinha:=mLinha+Query_R0450.fieldbyName('TXT').AsString+'|';


      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      Query_R0450.Next;
      end;
   Query_R0450.Close;
   end;

// TERMINO REGISTRO 450


{
Query_R0500.Close;
Query_R0500.SQL.Clear;
Query_R0500.SQL.Add('SELECT SYSDATE AS DT_ALT '
                   +','+QuotedStr('00')+' AS COD_NAT_CC '
                   +','+QuotedStr('A')+' AS IND_CTA '
                   +',0 AS NIVEL '
                   +',CFNOME AS COD_CTA '
                   +',CFNOME AS NOME_CTA '
                   +',CFNOME AS COD_CTA_REF '
                   +',LPAD(CFCODCFO,14,'+QuotedStr('0')+') AS CNPJ_EST '
                   +' FROM CADCFO WHERE CFCODCFO=-99999');
try
   Query_R0500.open;
except
   end;
  }

// REGISTRO 500

mTabela:='TAB_R0500';
mem_0500.First;
if not mem_0500.IsEmpty  then
   begin
   mem_0500.First;
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not mem_0500.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0500:=mQtdRegBloco_0500+1;

      mLinha:='|';
      mLinha:=mLinha+'0500|';
      fValVal('Cadastro de Empresa ',mTabela,mem_0500PC_DATHOR_UEVE.FieldName,mem_0500.fieldbyName('PC_DATHOR_UEVE').AsString);
      mLinha:=mLinha+FormatDatetime(fdt_efd, mem_0500.fieldbyName('PC_DATHOR_UEVE').AsDatetime)+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_0500.fieldbyName('PC_COD_NAT_CC').FieldName,mem_0500.fieldbyName('PC_COD_NAT_CC').AsString);
      mLinha:=mLinha+mem_0500.fieldbyName('PC_COD_NAT_CC').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_0500.fieldbyName('PC_IND_CTA').FieldName,mem_0500.fieldbyName('PC_IND_CTA').AsString);
      mLinha:=mLinha+mem_0500.fieldbyName('PC_IND_CTA').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_0500.fieldbyName('PC_NIVEL').FieldName,mem_0500.fieldbyName('PC_NIVEL').AsString);
      mLinha:=mLinha+mem_0500.fieldbyName('PC_NIVEL').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_0500.fieldbyName('PC_COD_CTA').FieldName,mem_0500.fieldbyName('PC_COD_CTA').AsString);
      mLinha:=mLinha+mem_0500.fieldbyName('PC_COD_CTA').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_0500.fieldbyName('PC_NOME_CTA').FieldName,mem_0500.fieldbyName('PC_NOME_CTA').AsString);
      mLinha:=mLinha+mem_0500.fieldbyName('PC_NOME_CTA').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,mem_0500.fieldbyName('PC_COD_CTA_REF').FieldName,mem_0500.fieldbyName('PC_COD_CTA_REF').AsString);
      mLinha:=mLinha+mem_0500.fieldbyName('PC_COD_CTA_REF').AsString+'|';

//      fValVal('Cadastro de Empresa ',mTabela,mem_0500.fieldbyName('CNPJ_EST').FieldName,mem_0500.fieldbyName('CNPJ_EST').AsString);

      mLinha:=mLinha+insere(DM1.Tb_EmpCGC.AsString,'0',14)+'|';
//LINDOMAR
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      mem_0500.Next;
      end;
   mem_0500.Close;
   end;

// TERMINO REGISTRO 500


Query_R0600.close;
Query_R0600.SQL.clear;
Query_R0600.SQL.Add('SELECT SYSDATE AS DT_ALT ,CFNOME AS COD_CCUS '
                   +' ,CFNOME AS CCUS FROM CADCFO where CFCODCFO=-99999');
try
   Query_R0600.open;
except
   end;


// REGISTRO 600

mTabela:='TAB_R0600';
if not Query_R0600.IsEmpty then
   begin
   if mQtdRegBloco0<2 then
      begin
      mQtdRegBloco_0001:=mQtdRegBloco_0001+1;
      mLinha:='|0001|0|'; // com dados
      mQtdRegBloco0:=mQtdRegBloco0+1;
      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);
      end;

   mLinha:='';
   while not Query_R0600.Eof do
      begin
      mQtdRegBloco0:=mQtdRegBloco0+1;
      mQtdRegBloco_0600:=mQtdRegBloco_0600+1;

      mLinha:='|';
      mLinha:=mLinha+'0600|';
      fValVal('Cadastro de Empresa ',mTabela,Query_R0600.fieldbyName('DT_ALT').FieldName,Query_R0600.fieldbyName('DT_ALT').AsString);
      mLinha:=mLinha+FormatDatetime(fdt_efd, Query_R0600.fieldbyName('DT_ALT').AsDatetime)+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0600.fieldbyName('COD_CCUS').FieldName,Query_R0600.fieldbyName('COD_CCUS').AsString);
      mLinha:=mLinha+Query_R0600.fieldbyName('COD_CCUS').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,Query_R0600.fieldbyName('CCUS').FieldName,Query_R0600.fieldbyName('CCUS').AsString);
      mLinha:=mLinha+Query_R0600.fieldbyName('CCUS').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_blocoR.Add(mLinha);

      Query_R0600.Next;
      end;
   Query_R0600.Close;
   end;

// TERMINO REGISTRO 600



// REGISTRO 990


if mqtdRegBloco0<2 then
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
Query_R0110.Close;
FreeAndNil(Query_R0110);
Query_R0111.Close;
FreeAndNil(Query_R0111);
Query_R0140.Close;
FreeAndNil(Query_R0140);
Query_R0205.Close;
FreeAndNil(Query_R0205);
Query_R0206.Close;
FreeAndNil(Query_R0206);
Query_R0208.Close;
FreeAndNil(Query_R0208);
Query_R0500.Close;
FreeAndNil(Query_R0500);
Query_R0600.Close;
FreeAndNil(Query_R0600);

// TERMINO REGISTRO 990


//fMontarInstrucao_Parametros_Geral(0);

end;

function TFrm_Sped_EFD_PisCofins.fValVal(pObs,pNomeTab,pCampo,pValorCampo: String): Boolean;
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

function TFrm_SPED_EFD_PisCofins.fTestarCliFor(pCodigo: String): Boolean;
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
                        +' WHERE PUF(+)=FUF AND '
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
                        +',CSUFRAMA AS SUFRAMA '
                        +',CLOG AS END '
                        +',CNUM AS NUM'
                        +',CRAZAO AS NOME '
                        +',CCOMPL AS COMPL '
                        +',CBAIRRO AS BAIRRO '
                        +' FROM CADCLI,CADUF,CADLOC,NFE_CADREG '
                        +' WHERE PUF(+)=CUF AND '
                        +' LCODLOC(+)=CCODLOC AND '
                        +' CRCODREG(+)=PCODREG_IBGE '
                        +' and CCODCLI=:CODIGO ');
      end;
   query_temp.ParamByName('CODIGO').Value:=fsonumero(pCodigo);
   try
      query_temp.Open;
   except
      query_temp.sql.savetofile('c:\SQL.TXT');
      MessageDlg('Erro ao ler registro de cliente /fornecedor',mtError,[mbOk],0);
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





      if copy(uppercase( trim(Query_temp.FieldbyName('IE').AsString)),1,5)='ISENT' then
         mem_R0150IE.Value     :=query_temp.fieldbyName('IE').AsString
      else
         mem_R0150IE.Value     :=fDeixanum(query_temp.fieldbyName('IE').AsString);
      mem_R0150COD_MUN.Value   :=query_temp.fieldbyName('COD_MUN').AsInteger;
      mem_R0150NOME.Value      :=query_temp.fieldbyName('NOME').AsString;
      mem_R0150SUFRAMA.Value   :=query_temp.fieldbyName('SUFRAMA').AsString;
      mem_R0150END.Value       :=query_temp.fieldbyName('END').AsString;
      mem_R0150NUM.Value       :=query_temp.fieldbyName('NUM').AsString;
      mem_R0150COMPL.Value     :=query_temp.fieldbyName('COMPL').AsString;
      mem_R0150BAIRRO.Value    :=query_temp.fieldbyName('BAIRRO').AsString;

      if valint(mem_R0150COD_MUN.AsString)=0 then
         memo_erros.Lines.add(iif(mforCli='F','O Fornecedor ',' O cliente ')+mem_R0150NOME.AsString+' '+fdeixanum(pCodigo)
                             +' Não Possui o codigo da Cidade junto ao IBGE no Cadastro de Cidade ')
      else if valint(mem_R0150COD_PAIS.AsString)=0 then
         memo_erros.Lines.add(iif(mforCli='F','O Fornecedor ',' O cliente ')+mem_R0150NOME.AsString+' '+fdeixanum(pCodigo)
                             +' Não Possui o codigo do Pais no Cadastro de Cidade ');
      if (fSonumero(mem_R0150CNPJ.AsString)=0) and ((fSonumero(mem_R0150CPF.AsString)=0)) then
         memo_erros.Lines.add(iif(mforCli='F','O Fornecedor ',' O cliente ')+mem_R0150NOME.AsString+' '+fdeixanum(pCodigo)
                             +' Não Possui CNPJ nem CPF! ');


      mem_R0150.Post;
      end;
   end;
FreeandNil(query_temp);
result:=true;
end;


function TFrm_SPED_EFD_PisCofins.fBlocoA(pOrigem: Integer): Boolean;
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
                  +' WHERE NSNUMERO=-999999 '

                  );


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

//      if query_A100.fieldbyName('VL_PIS').AsFloat>0 then
         begin
         fGerarM100(copy(CB_COD_CRED_M100.Text,1,3) // pCod_Cred: String;   01
                   ,0 // pInd_Cred_Ori: Integer;
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat  // pVl_BC_Pis 02
                   ,query_A100.fieldbyName('ALIQ_PIS').AsFloat  //    pAliqPis   03
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  //   pQuant_BC_Pis 04
                   ,query_A100.fieldbyName('ALIQ_PIS_QUANT').AsFloat  //  pAliq_Pis_Quant 05
                   ,query_A100.fieldbyName('VL_PIS').AsFloat  //  pVl_Cred                  06
                   ,0  //  ,pVl_Ajus_Acres                                                    07
                   ,0 //   pVl_Cred_Dif 08
                   ,0  // ,pVl_Cred_Disp 09
                   ,0 // ,pInd_Desc_Cred  10
                   ,0 //,pVl_Desc_Cred     11
                   ,0 //       ,query_A100.fieldbyName('VL_PIS').AsFloat  //  ,pVl_Cred_Desc    12

                   ,0 // ,pSld_Cred: Real): Boolean; 13
                   );

         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
            begin
            fGerarM105('01' // pNAT_BC_CRED          02 NAT_BC_CRED
                   ,query_A100.fieldbyName('CST_PIS').AsString //03 CST_PIS
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat  // 04 VL_BC_PIS_TOT
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat  // 05  VL_BC_PIS_CUM
                   ,0 // ,06 VL_BC_PIS_NC
                   ,0 // ,pVL_BC_PIS nc 07 VL_BC_PIS
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  // 08 QUANT_BC_PIS
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  // 09 QUANT_BC_PIS
                   ,edt_DESC_CRED.Text //  10 DESC_CRED: String): Boolean;
                   );

            fGerarM200(false,0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0 //  pVL_CONT_NC_REC
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,query_A100.fieldbyName('VL_PIS').AsFloat //12 pVL_CONT_CUM_REC
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // 13 pVL_TOT_CONT_REC);
                   );
            fGerarM205(false,query_A100.fieldbyName('VL_PIS').AsFloat
            ,query_A100.fieldbyName('VL_DOC').asfloat
            ,query_A100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text,
            query_A100.fieldbyName('COD_CTA').AsString,'');
            end
         else // nao acumulativo
            begin
            fGerarM105('01' // pNAT_BC_CRED       02 NAT_BC_CRED
                   ,query_A100.fieldbyName('CST_PIS').AsString //,pCST_PIS: string; 03 CST_PIS
                   ,0  // pVL_BC_PIS_TOT   04 VL_BC_PIS_TOT
                   ,0  //  pVL_BC_PIS_CUM     05 VL_BC_PIS_CUM
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat // ,pVL_BC_PIS_NC     06 VL_BC_PIS_NC
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat // ,pVL_BC_PIS         07 VL_BC_PIS
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT      08 QUANT_BC_PIS_TOT
                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  // pQUANT_BC_PIS  : real;   09 QUANT_BC_PIS
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;   10 DESC_CRED
                   );

            fGerarM200(false,query_A100.fieldbyName('VL_BC_PIS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_A100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_NC_REC
                   ,0 // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_REC);
                   );
            fGerarM205(false,query_A100.fieldbyName('VL_PIS').AsFloat,query_A100.fieldbyName('VL_DOC').asfloat,
            query_A100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text,query_A100.fieldbyName('COD_CTA').AsString,'');

            end;



         fGerarM210(copy(edt_COD_CONT.text,1,2) // pCOD_CONT: String;
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_REC_BRT
                   ,query_A100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_BC_CONT

                   , 0  // pVL_AJUS_ACRES_BC_PIS 05
                   , 0  // pVL_AJUS_REDUC_BC_PIS 06
                   , query_A100.fieldbyName('VL_BC_PIS').AsFloat // pVL_BC_CONT_AJUS 07



                   ,query_A100.fieldbyName('ALIQ_PIS').AsFloat //  pALIQ_PIS



                   ,query_A100.fieldbyName('QUANT_BC_PIS').AsFloat  //    ppQUANT_BC_PIS   06


                   ,query_A100.fieldbyName('ALIQ_PIS_QUANT').AsFloat //  pALIQ_PIS_QUANT  07

                   ,query_A100.fieldbyName('VL_PIS').AsFloat //  pVL_CONT_APUR            08
                   ,0 //    ,pVL_AJUS_ACRES 09
                   ,0 //,pVL_AJUS_REDUC  10
                   ,0  //,pVL_CONT_DIFER   11
                   ,0 //,pVL_CONT_DIFER_ANT  12
                   ,query_A100.fieldbyName('VL_PIS').AsFloat // pVL_CONT_PER: Real): Boolean; 13


                   );

         end;


//      if query_A100.fieldbyName('VL_COFINS').AsFloat>0 then
         begin
         fGerarM500('101' // pCod_Cred: String; 01
                   ,0 // pInd_Cred_Ori: Integer;  02
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  // pVl_BC_COFINS 03
                   ,query_A100.fieldbyName('ALIQ_COFINS').AsFloat  //    pAliqPis       04
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  //   pQuant_BC_COFINS 05
                   ,query_A100.fieldbyName('ALIQ_COFINS_QUANT').AsFloat  //  pAliq_COFINS_Quant 06
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat  //  pVl_Cred             07
                   ,0  //  ,pVl_Ajus_Acres  08
                   ,0  // pVl_Ajus_Reduc    09
                   ,0 //   pVl_Cred_Dif     10
                   ,0  // ,pVl_Cred_Disp    11
                   ,0 // ,pInd_Desc_Cred    12
                   ,0 //,pVl_Desc_Cred      13
                   ,0 // ,pVl_Cred_Desc     14
                   ,0 // ,pSld_Cred: Real): Boolean; 15
                   );

         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
             begin
             fGerarM505('01' // pNAT_BC_CRED
                   ,query_A100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string;
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  //  pVL_BC_COFINS_CUM
                   ,0 // ,pVL_BC_COFINS_NC
                   ,0 // ,pVL_BC_COFINS
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real;
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;
                   );

             fGerarM600(false,0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0//  08 pVL_CONT_NC_REC
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat //09  pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM  10
                   ,0 // pVL_OUT_DED_CUM 11
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat // 12 pVL_CONT_CUM_REC
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat // 13 pVL_TOT_CONT_REC);
                   );
             end
          else
             begin
             fGerarM505('01' // pNAT_BC_CRED
                   ,query_A100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string;
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat  //  pVL_BC_COFINS_CUM
                   ,0 // ,pVL_BC_COFINS_NC
                   ,0 // ,pVL_BC_COFINS
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT
                   ,query_A100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real;
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;
                   );

             fGerarM600(false,query_A100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat //  08 pVL_CONT_NC_REC
                   ,0 // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // 12 pVL_CONT_CUM_REC
                   ,query_A100.fieldbyName('VL_COFINS').AsFloat // 13 pVL_TOT_CONT_REC);
                   );
             end;



            fGerarM605(false,query_A100.fieldbyName('VL_COFINS').AsFloat,query_A100.fieldbyName('VL_DOC').asfloat
                 ,query_A100.fieldbyName('CST_COFINS').AsString, edt_tab4_3_10_cofins.text,'','');


         fGerarM610('01' // pCOD_CONT: String;
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_REC_BRT
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT

                   , 0  // pVL_AJUS_ACRES_BC_PIS 05
                   , 0  // pVL_AJUS_REDUC_BC_PIS 06
                   ,query_A100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT_AJUS 07

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
//                        +','+QuotedStr(mcst_pis_saida_prod)+' AS CST_PIS '
                        +',0 AS VL_BC_PIS '
                        +',0 AS ALIQ_PIS '
                        +',0 AS VL_PIS '
//                        +','+QuotedStr(mcst_cofins_saida_prod)+' AS CST_COFINS '
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


// inicio do bloco C

function TFrm_SPED_EFD_PisCofins.fBlocoC(pOrigem: Integer): Boolean;
var
mTabNivel_02: String;
query_c010: tQuery;
query_c100: tQuery;
query_c110: tQuery;
query_c111: tQuery;
query_c120: tQuery;
query_c170: tQuery;
query_c180: tQuery;
query_c181: tQuery;
query_c185: tQuery;
query_c188: tQuery;
query_c190: tQuery;
query_c191: tQuery;
query_c195: tQuery;
query_c198: tQuery;
query_c199: tQuery;
query_c380: tQuery;
query_c381: tQuery;
query_c385: tQuery;
query_c395: tQuery;
query_c396: tQuery;
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
mTemServicos: boolean;
{
mns_cst_cofins: string;

mns_cst_pis: string;

mns_aliq_cofins: string;

mns_aliq_pis: string;
}
mns_origem: string;


mns_totliq: string;
mns_qtdxpreco: string;
mns_totmenosdesc: string;

mNAT_BC_CRED: string;
begin


{
mns_cst_cofins := 'CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN '+QuotedStr(mcst_cofins_saida_prod)
                     +' ELSE '+QuotedStr(mcst_cofins_entrada_prod)+' END  ';

mns_cst_pis   := 'CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN '+QuotedStr(mcst_pis_saida_prod)
                     +' ELSE '+QuotedStr(mcst_pis_entrada_prod)+' END  ';

mns_aliq_cofins := 'CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN '+mudavp(mcofins_aliq_saida)
                     +' ELSE '+mudavp(mcofins_aliq_entrada)+' END  ';

mns_aliq_pis := ' CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN '+mudavp(mpis_aliq_saida)
                     +' ELSE '+mudavp(mpis_aliq_entrada)+' END  ';



}
mns_origem := 'CASE WHEN NSCFO1>'+QuotedStr('4999')+' THEN '+QuotedStr('VN')
                     +' ELSE '+QuotedStr('DC')+' END  ';


mns_totliq       :='round( (((P2QTD*P2PRECO)+P2VALIPI+P2ICMSR)-P2TOTDES),2)';
mns_qtdxpreco    :='round(( P2QTD*P2PRECO),2)';
mns_totmenosdesc :='round( (P2QTD*P2PRECO)-P2TOTDES,2)';

query_c010:=tQuery.create(nil);
query_c010.DatabaseName:='SG_ASSOC';
query_c100:=tQuery.create(nil);
query_c100.DatabaseName:='SG_ASSOC';
query_c110:=tQuery.create(nil);
query_c110.DatabaseName:='SG_ASSOC';
query_c111:=tQuery.create(nil);
query_c111.DatabaseName:='SG_ASSOC';
query_c120:=tQuery.create(nil);
query_c120.DatabaseName:='SG_ASSOC';
query_c170:=tQuery.create(nil);
query_c170.DatabaseName:='SG_ASSOC';


query_c180:=tQuery.create(nil);
query_c180.DatabaseName:='SG_ASSOC';

query_c181:=tQuery.create(nil);
query_c181.DatabaseName:='SG_ASSOC';

query_c185:=tQuery.create(nil);
query_c185.DatabaseName:='SG_ASSOC';

query_c188:=tQuery.create(nil);
query_c188.DatabaseName:='SG_ASSOC';

query_c190:=tQuery.create(nil);
query_c190.DatabaseName:='SG_ASSOC';

query_c191:=tQuery.create(nil);
query_c191.DatabaseName:='SG_ASSOC';

query_c195:=tQuery.create(nil);
query_c195.DatabaseName:='SG_ASSOC';

query_c198:=tQuery.create(nil);
query_c198.DatabaseName:='SG_ASSOC';

query_c199:=tQuery.create(nil);
query_c199.DatabaseName:='SG_ASSOC';

query_c380:=tQuery.create(nil);
query_c380.DatabaseName:='SG_ASSOC';

query_c381:=tQuery.create(nil);
query_c381.DatabaseName:='SG_ASSOC';

query_c385:=tQuery.create(nil);
query_c385.DatabaseName:='SG_ASSOC';

query_c395:=tQuery.create(nil);
query_c395.DatabaseName:='SG_ASSOC';

query_c396:=tQuery.create(nil);
query_c396.DatabaseName:='SG_ASSOC';

query_c400:=tQuery.create(nil);
query_c400.DatabaseName:='SG_ASSOC';

query_c405:=tQuery.create(nil);
query_c405.DatabaseName:='SG_ASSOC';
query_c481:=tQuery.create(nil);
query_c481.DatabaseName:='SG_ASSOC';


query_c485:=tQuery.create(nil);
query_c485.DatabaseName:='SG_ASSOC';

query_c489:=tQuery.create(nil);
query_c489.DatabaseName:='SG_ASSOC';

query_c490:=tQuery.create(nil);
query_c490.DatabaseName:='SG_ASSOC';

query_c491:=tQuery.create(nil);
query_c491.DatabaseName:='SG_ASSOC';

query_c495:=tQuery.create(nil);
query_c495.DatabaseName:='SG_ASSOC';

query_c499:=tQuery.create(nil);
query_c499.DatabaseName:='SG_ASSOC';
query_c500:=tQuery.create(nil);
query_c500.DatabaseName:='SG_ASSOC';
query_c501:=tQuery.create(nil);
query_c501.DatabaseName:='SG_ASSOC';
query_c505:=tQuery.create(nil);
query_c505.DatabaseName:='SG_ASSOC';
query_c509:=tQuery.create(nil);
query_c509.DatabaseName:='SG_ASSOC';
query_c600:=tQuery.create(nil);
query_c600.DatabaseName:='SG_ASSOC';
query_c601:=tQuery.create(nil);
query_c601.DatabaseName:='SG_ASSOC';
query_c605:=tQuery.create(nil);
query_c605.DatabaseName:='SG_ASSOC';
query_c609:=tQuery.create(nil);
query_c609.DatabaseName:='SG_ASSOC';

query_c010.Close;
query_c010.SQL.Clear;
query_c010.SQL.Add(' Select LPAD(CADEMP.CGC,14, '+QuotedStr('0')+') as CNPJ,'+inttostr(cb_IND_ESCRI.itemindex+1)+' as IND_ESCRI from CADEMP where CODEMP=:CODEMP');
query_c010.ParamByName('CODEMP').Value:=codemp;
try
   query_c010.Open;
except
   end;




mTabela:='TAB_C010';
if not query_c010.IsEmpty then
   begin
   mLinha:='|C001|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_BlocoC.Add(mLinha);
   mQtdRegBlocoC:=mQtdRegBlocoC+1;
   mQtdRegBloco_C001 :=mQtdRegBloco_C001+1;
   mLinha:='';
   while not query_c010.Eof do
      begin
      mQtdRegBlocoC:=mQtdRegBlocoC+1;
      mQtdRegBloco_C010:=mQtdRegBloco_C010+1;
      mLinha:='|';
      mLinha:=mLinha+'C010|';
      fValVal('Cadastro de Empresa ',mTabela,query_c010.FieldByName('CNPJ').FieldName,query_c010.FieldByName('CNPJ').AsString);
      mLinha:=mLinha+query_c010.FieldByName('CNPJ').AsString+'|';

      fValVal('Cadastro de Empresa ',mTabela,query_c010.FieldByName('IND_ESCRI').FieldName,query_c010.FieldByName('IND_ESCRI').AsString);
      mLinha:=mLinha+query_c010.FieldByName('IND_ESCRI').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoC.Add(mLinha);
      query_c010.Next;
      end;
   query_c010.Close;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
//la_instrucao:=la_instrucao+' and ';
//fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

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
                     +'      ,sum('+mns_totliq+') as VL_DOC '
                     +'      ,NSAVAP AS IND_PGTO '
                     +'      , sum(P2TOTDES) as VL_DESC '
                     +'      , 0 as VL_ABAT_NT '
                     +'      , sum('+mns_qtdxpreco+') as VL_MERC '
                     +'      ,DECODE(NSFRETE,0,9,NSFRETEPC) AS IND_FRT '
                     +'      ,NSFRETE AS VL_FRT '
                     +'      ,0 AS VL_SEG '
                     +'      ,0 AS VL_OUT_DA '
                     +'      ,sum(P2BASEN+decode(P2BCINR,NULL,0,P2BCINR)) AS VL_BC_ICMS '
                     +'      ,sum(P2ICMSN+decode(P2ICMSNR,NULL,0,P2ICMSNR)) AS VL_ICMS '
                     +'      ,sum(P2BASER) AS VL_BC_ICMS_ST '
                     +'      ,sum(p2ICMSR) AS VL_ICMS_ST '
                     +'      ,sum(P2VALIPI) AS VL_IPI '

                     +',  P2CST_PIS AS CST_PIS '
                     +'      ,sum('+mns_totmenosdesc+') AS VL_BC_PIS '
                     +'      ,P2ALPIS AS ALIQ_PIS '
                     +'      ,sum(  ROUND(P2VALPIS ,2)) AS VL_PIS '
                     +'      ,sum( ROUND(P2COFINS ,2)) AS VL_COFINS '
                     +'      ,sum( '+mns_totmenosdesc+') AS VL_BC_COFINS '
                     +'      ,P2ALCOFINS AS ALIQ_COFINS '
                     +',P2CST_COFINS AS CST_COFINS '
                     +',P2CST_COFINS AS CST_PIS_COFINS_M105 '


                     +'      ,0 AS QUANT_BC_COFINS '
                     +'      ,0 AS ALIQ_PIS_QUANT '
                     +'      ,0 AS QUANT_BC_PIS '

                     +'      ,0 AS VL_PIS_ST '
                     +'      ,0 AS VL_COFINS_ST '
                     +'      ,0 AS ALIQ_COFINS_QUANT '



                     +'      ,NSCODEMP AS CODEMP '
                     +'      ,NSLOTSEQ_CP AS LOTSEQ '
                     +'      ,NSCHAVEP AS CHAVE '
                     +'      ,NSORDEMP AS ORDEM '
                     +'      ,max(NSICMS_BCFRE) AS ICMS_BCFRE '
                     +'      ,max(NSICMS_ALFRE) AS ICMS_ALFRE '
                     +'      ,max(NSICMS_VLFRE) AS ICMS_VLFRE '

                     +'      ,max(NSNUMCUP) AS NUM_CUP '
                     +'      ,max(NSCFO1) AS CFOP '
                     +','+mns_origem+' as ORIGEM '
                        +','+quotedStr(' ')+' as COD_CTA '
                     


                     +'      FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                     +'       '+la_Join
                     +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                     +' NSCODEMP=0'+IntToStr(codemp)+' and '
                     +' NSSTATUS<>-9 and NSSTATUS<>2 and NSTIPO<2 and (NSNUMERO>0)');
if fsonumero(edt_datini.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));

if fsonumero(edt_datini_filtro.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_c100.SQL.Add('and NSDTEMIS<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));

mComplInstruc:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NSNUMERO '+mComplInstruc);

query_c100.SQL.Add(' AND NOT (NSSTATUS>=8 AND LENGTH(NSNFE_CHAVEACESSO)<40) ');
mComplInstruc:=fItensListBox(0,lbx_numnf_sai,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NSNUMERO '+mComplInstruc);

 query_c100.SQL.Add(fListaCfop('NSCFO1'));

//query_c100.SQL.Add(' and  NSCFO1>'+QuotedStr('4999'));

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
                     +'      ,NSORDEMP  '
                     +', P2CST_COFINS '
                     +', P2CST_PIS'
                     +', P2ALCOFINS'
                     +', P2ALPIS'
                     +','+mns_origem

                     );

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
                     +'      ,max(NETOTNOT) AS VL_DOC '
                     +'      ,max(NEAVAP) AS IND_PGTO '
                     +'      ,sum(PF2TOTDES) as VL_DESC '
                     +'      , 0 as VL_ABAT_NT '
                     +'      ,max(netotmer) as VL_MERC '
                     +'      ,DECODE(max(NEFRETE),0,9,max(NEFRETEPC)) AS IND_FRT '
                     +'      ,max(NEFRETE) AS VL_FRT '
                     +'      ,0 AS VL_SEG '

                     +'      ,sum(NEOUTRAS+NEOUTDESP) AS VL_OUT_DA '
                     +'      ,max(NEBASEN+NEOUTRAS+DECODE(NEICMS_FRETE,0,0,NEFRETE)) AS VL_BC_ICMS '
                     +'      ,max(NEICMSN+NEOUTRAS_IMP+NEICMS_FRETE) AS VL_ICMS '
                     +'      ,max(NEBASER) AS VL_BC_ICMS_ST '
                     +'      ,max(NEICMSR) AS VL_ICMS_ST '
                     +'      ,max(NEIPI) AS VL_IPI '


                     +',PF2CST_PIS AS CST_PIS '
                     +'      ,sum( ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) AS VL_BC_PIS '
                     +'      , 0  AS ALIQ_PIS '
                     +'      ,sum( ROUND( ((ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) * ( 1)/100) ,2)) AS VL_PIS '
                     +'      ,sum( ROUND( ((ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) * (1)/100) ,2)) AS VL_COFINS '
                     +'      ,sum( ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) AS VL_BC_COFINS '
                     +'      ,PF2COFINS_PERC AS ALIQ_COFINS '
                     +',PF2CST_COFINS AS CST_COFINS '
                     +',PF2CST_COFINS AS CST_PIS_COFINS_M105 '





                     +'      ,0 AS QUANT_BC_COFINS '
                     +'      ,0 AS ALIQ_PIS_QUANT '
                     +'      ,0 AS QUANT_BC_PIS '

                     +'      ,0 AS VL_PIS_ST '
                     +'      ,0 AS VL_COFINS_ST '
                     +'      ,0 AS ALIQ_COFINS_QUANT '

                     +'      ,NECODEMP AS CODEMP '
                     +'      ,NELOTSEQ_CP AS LOTSEQ '
                     +'      ,NECHAVEP AS CHAVE '
                     +'      ,0 AS ORDEM '
                     +'      ,0 as ICMS_BCFRE '
                     +'      ,0 AS ICMS_ALFRE '
                     +'      ,0 AS ICMS_VLFRE '
                     +'      ,0  AS NUM_CUP '
                     +'      ,MAX(TO_CHAR(NECFO)) AS CFOP '
                     +','+quotedstr('EN')+' as ORIGEM '
                                             +','+quotedStr(' ')+' as COD_CTA '

                     +'      FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +' NECODEMP=0'+IntToStr(codemp)+' and '
                    +' NESTATUS<>-9 '
                    +' and NEMODELO<>'+QuotedStr('56'));

if fsonumero(edt_datini.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin.Date)+chr(39));
query_c100.SQL.Add('and NOT NECFO in (1353,2353,1303,2303)');
mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NENUMERO '+mComplInstruc);

if fsonumero(edt_datini_filtro.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_c100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));


query_c100.SQL.Add(' group by NECODEMP '
                     +'      ,NELOTSEQ_CP '
                     +'      ,NECHAVEP '
                     +' , PF2CST_PIS,PF2COFINS_PERC,PF2CST_COFINS ');
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
                        +'      ,0as VL_DESC '
                        +'      , 0 as VL_ABAT_NT '
                        +'      ,max(netotmer) as VL_MERC '
                        +'      ,DECODE(max(NEFRETE),0,9,max(NEFRETEPC)) AS IND_FRT '
                        +'      ,max(NEFRETE) AS VL_FRT '
                        +'      ,0 AS VL_SEG '
                        +'      ,sum(NEOUTRAS+NEOUTDESP) AS VL_OUT_DA '
                        +'      ,max(NEBASEN+NEOUTRAS+DECODE(NEICMS_FRETE,0,0,NEFRETE)) AS VL_BC_ICMS '
                        +'      ,max(NEICMSN+NEOUTRAS_IMP+NEICMS_FRETE) AS VL_ICMS '
                        +'      ,max(NEBASER) AS VL_BC_ICMS_ST '
                        +'      ,max(NEICMSR) AS VL_ICMS_ST '
                        +'      ,max(NEIPI) AS VL_IPI '

                     +',   '+quotedstr('99')+' AS CST_PIS '
                     +'      ,0 AS VL_BC_PIS '
                     +'      ,0 AS ALIQ_PIS '
                     +'      ,0 AS VL_PIS '
                     +'      ,0 AS VL_COFINS '
                     +'      ,0 AS VL_BC_COFINS '
                     +'      ,0 AS ALIQ_COFINS '
                     +', '+quotedstr('99')+' AS CST_COFINS '


                     +','+quotedstr('99')+' AS CST_PIS_COFINS_M105 '

                        +'      ,0 AS QUANT_BC_COFINS '
                        +'      ,0 AS ALIQ_PIS_QUANT '
                        +'      ,0 AS QUANT_BC_PIS '

                        +'      ,0 AS VL_PIS_ST '
                        +'      ,0 AS VL_COFINS_ST '
                        +'      ,0 AS ALIQ_COFINS_QUANT '




                        +'      ,NECODEMP AS CODEMP '
                        +'      ,NELOTSEQ_CP AS LOTSEQ '
                        +'      ,NECHAVEP AS CHAVE '
                        +'      ,0 AS ORDEM '
                        +'      ,0 as ICMS_BCFRE '
                        +'      ,0 AS ICMS_ALFRE '
                        +'      ,0 AS ICMS_VLFRE '
                        +'      ,0  AS NUM_CUP '
                        +'      ,MAX(TO_CHAR(NECFO)) AS CFOP '
                        +','+Quotedstr('SE')+' as ORIGEM '
                        +','+quotedStr(' ')+' as COD_CTA '
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
   query_c100.SQL.Add('and NECHAVEP=0');
   query_c100.SQL.Add('and NETIPO=56');

   mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
   if trim(mComplInstruc)<>'' then query_c100.sql.Add(' and NENUMERO '+mComplInstruc);

   if fsonumero(edt_datini_filtro.Text)<>0 then
      query_c100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
   if fsonumero(edt_datfin_filtro.Text)<>0 then
      query_c100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));

    query_c100.SQL.Add(fListaCfop('NECFO'));


//   query_c100.SQL.Add('and NOT NECFO in (1252,1253,2252,2253)');

//   query_c100.SQL.Add('and NOT NECFO in (1252,1253,2252,2253)');
   query_c100.SQL.Add(' group by NECODEMP '
                        +'      ,NELOTSEQ_CP '
                        +'      ,NECHAVEP '
                        +'      ,NENUMERO,NEDTEMIS ' );

   end;
//query_c100.SQL.SaveToFile('c:\sqlefd.txt');

try
   query_c100.Open;
except
   query_c100.SQL.SaveToFile('c:\sqlc100.txt');
   MessageDlg('Erro ao Abrir Qr0150',mtError,[mbOk],0);
   exit;
   end;




mTabela:='TAB_C100';
if not query_c100.IsEmpty then
   begin
   while not query_c100.Eof do
      begin
      if query_c100.fieldbyname('COD_SIT').AsString='02' then
         begin
         query_c100.next;
         continue;
         end;
      if (query_C100.fieldbyName('CFOP').AsInteger<5000) then
         begin
         fGerarM100(copy(CB_COD_CRED_M100.Text,1,3) // pCod_Cred: String; 02 COD_CRED
               ,0 // pInd_Cred_Ori: Integer;         03 IND_CRED_ORI
               ,query_C100.fieldbyName('VL_BC_PIS').AsFloat  // pVl_BC_Pis     04 VL_BC_PIS
               ,query_C100.fieldbyName('ALIQ_PIS').AsFloat  //    pAliqPis   05 ALIQ_PIS
               ,query_C100.fieldbyName('QUANT_BC_PIS').AsFloat  //   pQuant_BC_Pis   06 QUANT_BC_PIS
               ,query_C100.fieldbyName('ALIQ_PIS_QUANT').AsFloat  //  pAliq_Pis_Quant  07 ALIQ_PIS_QUANT
               ,query_C100.fieldbyName('VL_PIS').AsFloat  //  pVl_Cred        08 VL_CRED
               ,0  //  ,pVl_Ajus_Acres     09 VL_AJUS_ACRES
               ,0 //   pVl_Cred_Dif   10 VL_AJUS_REDUC
               ,0  // ,pVl_Cred_Disp 11 VL_CRED_DIF
               ,0 // ,pInd_Desc_Cred  12 VL_CRED_DISP
               ,0 //,pVl_Desc_Cred  13 IND_DESC_CRED
               ,0 // ,pVl_Cred_Desc   14 VL_CRED_DESC
               ,0 // ,pSld_Cred: Real): Boolean; // 15 SLD_CRED
               );
         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
            begin
            if query_c100.fieldbyname('ORIGEM').asstring='DC' then
               mNAT_BC_CRED:=copy(CB_NAT_BC_CRED_DC.text,1,2)
            else
               mNAT_BC_CRED:=copy(CB_NAT_BC_CRED_CPR.text,1,2);

            fGerarM105(mNAT_BC_CRED // pNAT_BC_CRED  02 NAT_BC_CRED
              ,query_C100.fieldbyName('CST_PIS_COFINS_M105').AsString //,pCST_PIS: string;   03 CST_PIS
              ,query_C100.fieldbyName('VL_BC_PIS').AsFloat  // pVL_BC_PIS_TOT      04 VL_BC_PIS_TOT
              ,query_C100.fieldbyName('VL_BC_PIS').AsFloat  //  pVL_BC_PIS_CUM    05 VL_BC_PIS_CUM
              ,0 // ,pVL_BC_PIS_NC        06 VL_BC_PIS_NC
              ,0 // ,pVL_BC_PIS    07 VL_BC_PIS
              ,query_C100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT     08 QUANT_BC_PIS_TOT
              ,query_C100.fieldbyName('ALIQ_PIS').AsFloat  // pQUANT_BC_PIS  : real;   09 QUANT_BC_PIS
              ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;   10 DESC_CRED
              );

            fGerarM200(false,0 // pVL_TOT_CONT_NC_PER      02 VL_TOT_CONT_NC_PER
                   ,query_C100.fieldbyName('VL_PIS').AsFloat //pVL_TOT_CRED_DESC 03
                   ,0 //pVL_TOT_CRED_DESC_ANT 04
                   ,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1 // 05 pVL_TOT_CONT_NC_DEV  05
                   ,0 // pVL_RET_NC 06
                   ,0 //,pVL_OUT_DED_NC  07
                   ,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1  //08
                   ,0 // pVL_TOT_CONT_CUM_PER 09
                   ,0 // pVL_RET_CUM                                                  10
                   ,0 // pVL_OUT_DED_CUM                                                11
                   ,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1 // pVL_CONT_CUM_REC          12
                   ,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1 // pVL_TOT_CONT_REC);        13
                    );
            fGerarM205(false,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1
            ,query_C100.fieldbyName('VL_DOC').asfloat*mMenos1,query_C100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text
            ,query_C100.fieldbyName('COD_CTA').AsString,'');
            end
         else   // nao cumulativa
            begin
            if query_c100.fieldbyname('ORIGEM').asstring='DC' then
               mNAT_BC_CRED:=copy(CB_NAT_BC_CRED_DC.text,1,2)
            else
               mNAT_BC_CRED:=copy(CB_NAT_BC_CRED_CPR.text,1,2);

            fGerarM105(mNAT_BC_CRED // pNAT_BC_CRED  02 NAT_BC_CRED
                   ,query_C100.fieldbyName('CST_PIS_COFINS_M105').AsString //,pCST_PIS: string;   03 CST_PIS
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat  // pVL_BC_PIS_TOT      04 VL_BC_PIS_TOT
                   ,0  //  pVL_BC_PIS_CUM    05 VL_BC_PIS_CUM
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat // ,pVL_BC_PIS_NC        06 VL_BC_PIS_NC
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat // ,pVL_BC_PIS    07 VL_BC_PIS
                   ,query_C100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT     08 QUANT_BC_PIS_TOT
                   ,query_C100.fieldbyName('ALIQ_PIS').AsFloat  // pQUANT_BC_PIS  : real;   09 QUANT_BC_PIS
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;   10 DESC_CRED
                   );



            fGerarM200(false,0 // pVL_TOT_CONT_NC_PER      02 VL_TOT_CONT_NC_PER
                   ,query_C100.fieldbyName('VL_PIS').AsFloat //pVL_TOT_CRED_DESC 03
                   ,0 //pVL_TOT_CRED_DESC_ANT 04
                   ,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1 // 05 pVL_TOT_CONT_NC_DEV  05
                   ,0 // pVL_RET_NC 06
                   ,0 //,pVL_OUT_DED_NC  07
                   ,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1      //08
                   ,0 // pVL_TOT_CONT_CUM_PER 09
                   ,0 // pVL_RET_CUM                                                  10
                   ,0 // pVL_OUT_DED_CUM                                                11
                   ,0 // pVL_CONT_CUM_REC          12
                   ,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1 // pVL_TOT_CONT_REC);        13
                    );
            fGerarM205(false,query_C100.fieldbyName('VL_PIS').AsFloat*mMenos1
              ,query_C100.fieldbyName('VL_DOC').asfloat*mMenos1,query_C100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text
              ,query_C100.fieldbyName('COD_CTA').AsString,'');

            end;
         end;
      if (query_C100.fieldbyName('CFOP').AsInteger>=5000) then
         begin
         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
            begin
            fGerarM200(false,0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0
                   ,query_C100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,query_C100.fieldbyName('VL_PIS').AsFloat // pVL_CONT_CUM_REC
                   ,query_C100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_REC);
                   );
            fGerarM205(false,query_C100.fieldbyName('VL_PIS').AsFloat
            ,query_C100.fieldbyName('VL_DOC').asfloat,query_C100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text
            ,query_C100.fieldbyName('COD_CTA').AsString,'');



            fGerarM210(copy(edt_COD_CONT.text,1,2) // pCOD_CONT: String;
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_REC_BRT
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_BC_CONT

                   , 0  // pVL_AJUS_ACRES_BC_PIS 05
                   , 0  // pVL_AJUS_REDUC_BC_PIS 06
                   , query_C100.fieldbyName('VL_BC_PIS').AsFloat // pVL_BC_CONT_AJUS 07
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
            end
         else
            begin
            fGerarM200(false,query_C100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_C100.fieldbyName('VL_PIS').AsFloat // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_C100.fieldbyName('VL_PIS').AsFloat //  08 pVL_CONT_NC_REC
                   ,0
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,query_C100.fieldbyName('VL_PIS').AsFloat  // 13 pVL_TOT_CONT_REC);
                   );
            fGerarM205(false,query_C100.fieldbyName('VL_PIS').AsFloat
            ,query_C100.fieldbyName('VL_DOC').asfloat,query_C100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text
            ,query_C100.fieldbyName('COD_CTA').AsString,'');


            fGerarM210(copy(edt_COD_CONT.text,1,2) // pCOD_CONT: String;
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_REC_BRT
                   ,query_C100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_BC_CONT

                   , 0  // pVL_AJUS_ACRES_BC_PIS 05
                   , 0  // pVL_AJUS_REDUC_BC_PIS 06
                   , query_C100.fieldbyName('VL_BC_PIS').AsFloat // pVL_BC_CONT_AJUS 07
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
            end
         end;
      if (query_C100.fieldbyName('CFOP').AsInteger<5000) then
         begin
         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
            begin
            fGerarM500(copy(CB_COD_CRED_M100.Text,1,3) // pCod_Cred: String; 02
                       ,0 // pInd_Cred_Ori: Integer;                      03
                       ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  // pVl_BC_COFINS 04
                       ,query_C100.fieldbyName('ALIQ_COFINS').AsFloat  //    pAliqPis    05
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

            if query_c100.fieldbyname('ORIGEM').asstring='DC' then
               mNAT_BC_CRED:=copy(CB_NAT_BC_CRED_DC.text,1,2)
            else
               mNAT_BC_CRED:=copy(CB_NAT_BC_CRED_CPR.text,1,2);

            fGerarM505(mNAT_BC_CRED // pNAT_BC_CRED        02
                       ,query_C100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string; 03
                       ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT 04
                       ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  //  pVL_BC_COFINS_CUM 05
                       ,0 // ,pVL_BC_COFINS_NC     06
                       ,0 // ,pVL_BC_COFINS       07
                       ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT
                       ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat // pQUANT_BC_COFINS  : real;
                       ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;
                       );
             end
          else    // nao cumulativo
             begin
             fGerarM500(copy(CB_COD_CRED_M100.Text,1,3) // pCod_Cred: String;
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


             fGerarM505(mNAT_BC_CRED // pNAT_BC_CRED 02
                       ,query_C100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string; 03
                       ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT  04
                       ,0  //  pVL_BC_COFINS_CUM 05
                       ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat  // ,pVL_BC_COFINS_NC                        06
                       ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat // ,pVL_BC_COFINS                           07
                       ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT 08
                       ,query_C100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real; 09
                       ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;   10
                       );
             end;

         end;
      if (query_C100.fieldbyName('CFOP').AsInteger<5000) then
         begin
         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
            begin
            fGerarM600(false,0 // pVL_TOT_CONT_NC_PER 02
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat //pVL_TOT_CRED_DESC 03
                       ,0 //pVL_TOT_CRED_DESC_ANT //04
                       ,0 // pVL_TOT_CONT_NC_DEV  //05
                       ,0 // pVL_RET_NC         //06
                       ,0 //,pVL_OUT_DED_NC      //07
                       ,0 //  pVL_CONT_NC_REC     080
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_CUM_PER 090
                       ,0 // pVL_RET_CUM  10
                       ,0 // pVL_OUT_DED_CUM  11
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat // 12 pVL_CONT_CUM_REC
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat //  13 pVL_TOT_CONT_REC);
                       );

             end
          else
             begin
             fGerarM600(false,0 // pVL_TOT_CONT_NC_PER 02
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat //pVL_TOT_CRED_DESC 03
                       ,0 //pVL_TOT_CRED_DESC_ANT                         04
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat*mMenos1 // 05 pVL_TOT_CONT_NC_DEV
                       ,0 // pVL_RET_NC                                     06
                       ,0 //,pVL_OUT_DED_NC                                 07
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat*mMenos1 // 08 pVL_CONT_NC_REC
                       ,0 // pVL_TOT_CONT_CUM_PER                        09
                       ,0 // pVL_RET_CUM                                 10
                       ,0 // pVL_OUT_DED_CUM                            11
                       ,0 // pVL_CONT_CUM_REC                          12
                       ,query_C100.fieldbyName('VL_COFINS').AsFloat*mMenos1 // 13 pVL_TOT_CONT_REC);
                       );

             end;

         fGerarM605(false,query_C100.fieldbyName('VL_COFINS').AsFloat*mMenos1,query_C100.fieldbyName('VL_DOC').asfloat
                 ,query_C100.fieldbyName('CST_COFINS').AsString, edt_tab4_3_10_cofins.text,'','');

         end;
      if (query_C100.fieldbyName('CFOP').AsInteger>=5000) then
         begin
         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
            begin
            fGerarM600(false,0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0 //  pVL_CONT_NC_REC
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_CONT_CUM_REC
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat //  13 pVL_TOT_CONT_REC);
                   );
            end
         else
            begin
            fGerarM600(false,query_C100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_PER 02
                   ,0 //pVL_TOT_CRED_DESC 03
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat //  08 pVL_CONT_NC_REC
                   ,0 // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,query_C100.fieldbyName('VL_COFINS').AsFloat // 13 pVL_TOT_CONT_REC);
                   );

            fGerarM605(false,query_c100.fieldbyName('VL_COFINS').AsFloat,query_C100.fieldbyName('VL_DOC').asfloat
                 ,query_C100.fieldbyName('CST_COFINS').AsString, edt_tab4_3_10_cofins.text,'','');

            end;

         fGerarM605(false,query_C100.fieldbyName('VL_COFINS').AsFloat,query_C100.fieldbyName('VL_DOC').asfloat
                 ,query_C100.fieldbyName('CST_COFINS').AsString, edt_tab4_3_10_cofins.text,'','');
         fGerarM610(copy(edt_COD_CONT.text,1,2) // pCOD_CONT: String;
                   ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_REC_BRT
                   ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT
                   , 0  // pVL_AJUS_ACRES_BC_PIS 05
                   , 0  // pVL_AJUS_REDUC_BC_PIS 06
                   ,query_C100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT_AJUS 07


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


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('COD_SIT').FieldName,query_c100.fieldbyname('COD_SIT').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('COD_SIT').AsString+'|'; // 06

      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('SER').FieldName,query_c100.fieldbyname('SER').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',query_c100.fieldbyname('SER').AsString)+'|'; //7


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('NUM_DOC').FieldName,query_c100.fieldbyname('NUM_DOC').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('NUM_DOC').AsString+'|'; // 08

      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('CHV_NFE').FieldName,query_c100.fieldbyname('CHV_NFE').AsString);
      mLinha:=mLinha+query_c100.fieldbyname('CHV_NFE').AsString+'|'; //9



      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('DT_DOC').FieldName,query_c100.fieldbyname('DT_DOC').AsString);
      mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatdateTime(fdt_efd, query_c100.fieldbyname('DT_DOC').AsDateTime))+'|'; //10


      fValVal('Cadastro de Empresa ',mTabela,query_c100.fieldbyname('DT_E_S').FieldName,query_c100.fieldbyname('DT_E_S').AsString);

      if query_c100.fieldbyname('DT_E_S').AsDateTime<query_c100.fieldbyname('DT_DOC').AsDateTime then
         mLinha:=mLinha+iif(query_c100.FieldByName('COD_SIT').AsInteger=2,'',FormatdateTime(fdt_efd, query_c100.fieldbyname('DT_DOC').AsDateTime))+'|' //11
      else
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
      query_c110.Close;
      query_c110.SQL.Clear;
      query_c110.SQL.Add('SELECT TO_CHAR(NSCODCLI,'+QuotedStr('000000')+') AS COD_INF '
                        +',RPAD(NSNFE_CHAVEACESSO,3000,'+QuotedStr(' ')+')  AS TXT_COMPL '
                        +' FROM CADNS WHERE NSNUMERO=-999999');
      try
         query_c110.open;
      except
         end;




      // INICIO adentação registro C110
      mTabNivel_02:='TAB_C110';
      if not query_c110.IsEmpty then
         begin
         while not query_c110.Eof do
            begin
            mQtdRegBlocoC:=mQtdRegBlocoC+1;
            mQtdRegBloco_C110:=mQtdRegBloco_C110+1;
            mLinha:='|';
            mLinha:=mLinha+'C110|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c110.fieldbyName('COD_INF').FieldName,query_c110.fieldbyName('COD_INF').AsString);
            mLinha:=mLinha+query_c110.fieldbyName('COD_INF').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c110.fieldbyName('TXT_COMPL').FieldName,query_c110.fieldbyName('TXT_COMPL').AsString);
            mLinha:=mLinha+query_c110.fieldbyName('TXT_COMPL').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoC.Add(mLinha);

            query_c110.Next;
            end;
         query_c110.Close;
         end;
      // TERMINO adentação registro C110

      query_c111.Close;
      query_c111.SQL.Clear;
      query_c111.SQL.Add('SELECT RPAD('+QuotedStr('0')+',15,'+QuotedStr('  ')+') AS NUM_PROC '
                        +' ,'+QuotedStr('1')+' AS IND_PROC '
                        +' FROM CADNS where NSNUMERO=-999999');
      try
         query_c111.Open;
      except
         end;



      // INICIO adentação registro C111
      mTabNivel_02:='TAB_C111';
      if not query_c111.IsEmpty then
         begin
         while not query_c111.Eof do
            begin
            mQtdRegBlocoC:=mQtdRegBlocoC+1;
            mQtdRegBloco_C111:=mQtdRegBloco_C111+1;
            mLinha:='|';
            mLinha:=mLinha+'C111|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c111.fieldbyName('NUM_PROC').FieldName,query_c111.fieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+query_c111.fieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c111.fieldbyName('IND_PROC').FieldName,query_c111.fieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+query_c111.fieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoC.Add(mLinha);

            query_c111.Next;
            end;
         query_c111.Close;
         end;
      // TERMINO adentação registro C111

      query_c120.Close;
      query_c120.SQL.Clear;
      query_c120.SQL.Add('select '+QuotedStr('1')+' as COD_DOC_IMP '
                        +',RPAD('+QuotedStr(' ')+',10) AS NUM_DOC_IMP '
                        +',0 AS VL_PIS_IMP '
                        +',0 AS VL_COFINS_IMP '
                        +' FROM CADNS WHERE NSNUMERO=-99999');
      try
         query_c120.open;
      except
         end;
      // INICIO adentação registro C120
      mTabNivel_02:='TAB_C120';
      if not query_c120.IsEmpty then
         begin
         while not query_c120.Eof do
            begin
            mQtdRegBlocoC:=mQtdRegBlocoC+1;
            mQtdRegBloco_C120:=mQtdRegBloco_C120+1;
            mLinha:='|';
            mLinha:=mLinha+'C120|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c120.fieldbyName('COD_DOC_IMP').FieldName,query_c120.fieldbyName('COD_DOC_IMP').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c120.fieldbyName('COD_DOC_IMP').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c120.fieldbyName('NUM_DOC_IMP').FieldName,query_c120.fieldbyName('NUM_DOC_IMP').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c120.fieldbyName('NUM_DOC_IMP').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c120.fieldbyName('VL_PIS_IMP').FieldName,query_c120.fieldbyName('VL_PIS_IMP').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c120.fieldbyName('VL_PIS_IMP').AsFloat)+'|';



            fValVal('Cadastro de Empresa ',mTabNivel_02,query_c120.fieldbyName('VL_COFINS_IMP').FieldName,query_c120.fieldbyName('VL_COFINS_IMP').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c120.fieldbyName('VL_COFINS_IMP').AsFloat)+'|';


            Memo1.Lines.Add(mLinha);
            items_lista_BlocoC.Add(mLinha);

            query_c120.Next;
            end;
         query_c120.Close;
         end;
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
            la_instrucao:=la_instrucao+' and ';
            fInnerJoin(1,'CADCFO','CFCODEMP','PF2CODEMP','CFCODCFO','PF2CFO');

            query_c170.SQL.Add('SELECT PF2ITEM AS NUM_ITEM,TO_CHAR(PDCODPRO) AS COD_ITEM, '
                                    +' '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL, PF2QTDP AS QTD '
                                    +',upper(NVL(PDUND,'+QuotedStr('UND')+')) AS UNID, (PF2PU*PF2QTDP) AS VL_ITEM '
                                    +' ,PF2TOTDES AS VL_DESC '
                                    +',0 AS IND_MOV '
                                    +',PF2SIT AS CST_ICMS '
                                    +',PF2CFO AS CFOP '
                                    +',PF2CFO AS COD_NAT '
                                    +',PF2BASEN AS VL_BC_ICMS '
                                    +',PF2ICMSN AS VL_ICMS '
                                    +',PF2BASER AS VL_BC_ICMS_ST '
                                    +',PF2ICMSR AS VL_ICMS_ST '
                                    +' ,PF2ALIQ AS ALIQ_ICMS '
                                    +' ,PF2ALIQ AS ALIQ_ST '
                                    +' , 0 AS IND_APUR '
                                    +' ,PF2CST_IPI AS CST_IPI '
                                    +' ,'+chr(39)+' '+chr(39)+' AS COD_ENQ '
                                    +' ,DECODE(PF2IPI,0,0,PF2IPI) AS VL_BC_IPI '
                                    +' ,PF2ALIPI AS ALIQ_IPI '
                                    +' ,PF2IPI as VL_IPI '



                     +',PF2CST_PIS AS CST_PIS '
                     +'      ,( ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) AS VL_BC_PIS '
                     +'      ,PF2PIS_PERC AS ALIQ_PIS '
                     +'      ,( ROUND( ((ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) * (PF2PIS_PERC)/100) ,2)) AS VL_PIS '
                     +'      ,( ROUND( ((ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) * (PF2CST_COFINS)/100) ,2)) AS VL_COFINS '
                     +'      ,( ROUND( (PF2QTDP*PF2PU),2)-PF2TOTDES) AS VL_BC_COFINS '
                     +'      ,PF2COFINS_PERC AS ALIQ_COFINS '
                     +',PF2CST_COFINS AS CST_COFINS '


                                    +'  ,0 AS QUANT_BC_PIS '
                                    +'  ,0 AS ALIQ_PIS_QUANT '
                                    +'  ,0 ALIQ_PIS_REAIS '

                                    +' ,0 AS QUANT_BC_COFINS '
                                    +' ,0 AS ALIQ_COFINS_QUANT '
                                     +',PF2COFINS_VALOR AS VL_COFINS '
                                    +' ,'+chr(39)+' '+chr(39)+' CFOP '

                                    +' , CFCODCTA_EFD AS COD_CTA '
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
//         else if query_c100.fieldbyname('COD_MOD').AsString<>'55' then
         else
            begin
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin4(1,'CADP02','P2CODEMP','NSCODEMP','P2LOTSEQ','NSLOTSEQ_CP','P2CHAVE','NSCHAVEP','P2ORDEM','NSORDEMP');
            la_instrucao:=la_instrucao+' and ';
            fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
            la_instrucao:=la_instrucao+' and ';
            fInnerJoin(1,'CADCFO','CFCODEMP','P2CODEMP','CFCODCFO','P2CFO');

            query_c170.SQL.Add('SELECT P2ITEM AS NUM_ITEM,TO_CHAR(PDCODPRO) AS COD_ITEM, '
                                    +' '+chr(39)+'    '+chr(39)+' AS DESCR_COMPL, P2QTD AS QTD '
                                    +',upper(NVL(PDUND,'+QuotedStr('UND')+')) AS UNID, ('+mns_qtdxpreco+') AS VL_ITEM '
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
                                    +' ,P2CST_IPI AS CST_IPI '
                                    +' ,'+chr(39)+' '+chr(39)+' AS COD_ENQ '
                                    +' ,DECODE(P2VALIPI,0,0,P2VALIPI) AS VL_BC_IPI '
                                    +' ,P2ALIPI AS ALIQ_IPI '
                                     +',P2VALIPI as VL_IPI '

                     +',P2CST_COFINS AS CST_PIS '

                     +'      , '+mns_totmenosdesc+' AS VL_BC_PIS '
                     +'      ,P2ALPIS AS ALIQ_PIS '
                     +'      ,( ROUND(('+mns_totmenosdesc+' * (P2ALPIS)/100) ,2)) AS VL_PIS '
                     +'      ,( ROUND(('+mns_totmenosdesc+' * (P2ALCOFINS)/100) ,2)) AS VL_COFINS '
                     +'      , '+mns_totmenosdesc+' AS VL_BC_COFINS '
                     +'      ,P2ALCOFINS AS ALIQ_COFINS '
                     +',P2CST_COFINS AS CST_COFINS '





                                    +' ,0 AS QUANT_BC_PIS '
                                    +' ,0 AS ALIQ_PIS_QUANT '
                                    +' ,0 ALIQ_PIS_REAIS '


                                    +' ,0 AS QUANT_BC_COFINS '
                                    +' ,0 AS ALIQ_COFINS_QUANT '

                                    +' ,P2COFINS AS VL_COFINS '
                                    +' ,CFCODCTA_EFD as COD_CTA '
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
//               mLinha:=mLinha+query_c170.fieldbyName('CST_PIS').AsString+'|';
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
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_PIS').FieldName,query_c170.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('CST_COFINS').FieldName,query_c170.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c170.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_BC_COFINS').FieldName,query_c170.fieldbyName('VL_BC_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('ALIQ_COFINS').FieldName,query_c170.fieldbyName('ALIQ_COFINS').AsString);
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
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('VL_COFINS').FieldName,query_c170.fieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c170.fieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c170.fieldbyName('COD_CTA').FieldName,query_c170.fieldbyName('COD_CTA').AsString);

               fGerar0500(query_c170.fieldbyName('COD_CTA').AsString);

               mLinha:=mLinha+query_c170.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c170.Next;
               end;
            query_c170.Close;
            end;
         // TERMINO adentação registro C170
         query_c180.Close;
         query_c180.SQL.clear;
         query_c180.SQL.Add('select '+QuotedStr('00')+' as COD_MOD,SYSDATE AS DT_DOC_INI '
                           +',SYSDATE AS DT_DOC_FIN '
                           +',RPAD('+QuotedStr('  ')+',60) AS COD_ITEM '
                           +',RPAD('+QuotedStr('  ')+',8) AS COD_NCM '
                           +','+QuotedStr('000')+' AS EX_IPI '
                           +',0 AS VL_TOT_ITEM '
                           +' FROM CADNS WHERE NSNUMERO=-99999');
          try
             query_c180.Open;
          except
             end;

         // INICIO adentação registro C180
         mTabNivel_02:='TAB_C180';
         if not query_c180.IsEmpty then
            begin
            while not query_c180.Eof do
               begin
               fTestarR0200(query_c180.fieldbyName('COD_ITEM').AsString);

               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C180:=mQtdRegBloco_C180+1;
               mLinha:='|';
               mLinha:=mLinha+'C180|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c180.fieldbyName('COD_MOD').FieldName,query_c180.fieldbyName('COD_MOD').AsString);
               mLinha:=mLinha+query_c180.fieldbyName('COD_MOD').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c180.fieldbyName('DT_DOC_INI').FieldName,query_c180.fieldbyName('DT_DOC_INI').AsString);
               mLinha:=mLinha+FormatdateTime(fdt_efd,query_c180.fieldbyName('DT_DOC_INI').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c180.fieldbyName('DT_DOC_FIN').FieldName,query_c180.fieldbyName('DT_DOC_FIN').AsString);
               mLinha:=mLinha+FormatDateTime(fdt_efd,query_c180.fieldbyName('DT_DOC_FIN').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c180.fieldbyName('COD_ITEM').FieldName,query_c180.fieldbyName('COD_ITEM').AsString);
               mLinha:=mLinha+query_c180.fieldbyName('COD_ITEM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c180.fieldbyName('COD_NCM').FieldName,query_c180.fieldbyName('COD_NCM').AsString);
               mLinha:=mLinha+query_c180.fieldbyName('COD_NCM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c180.fieldbyName('EX_IPI').FieldName,query_c180.fieldbyName('EX_IPI').AsString);
               mLinha:=mLinha+query_c180.fieldbyName('EX_IPI').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c180.fieldbyName('VL_TOT_ITEM').FieldName,query_c180.fieldbyName('VL_TOT_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c180.fieldbyName('VL_TOT_ITEM').AsFloat)+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c180.Next;
               end;
            query_c180.Close;
            end;
         // TERMINO adentação registro C180
         query_c181.Close;
         query_c181.SQL.clear;
         query_c181.SQL.Add('select '+QuotedStr(' ')+' as CST_PIS ,0 AS CFOP,0 AS VL_ITEM '
                           +',0 AS VL_DESC ,0 AS VL_BC_PIS,0 AS ALIQ_PIS '
                           +',0 AS QUANT_BC_PIS,0 AS ALIQ_PIS_QUANT,0 AS VL_PIS '
                           +',RPAD('+QuotedStr('00')+',60) AS COD_CTA '
                           +' from CADNS WHERE NSNUMERO=-999999');
         try
            query_c181.open;
         except
            end;

         // INICIO adentação registro C181
         mTabNivel_02:='TAB_C181';
         if not query_c181.Eof  then
            begin
            while not query_c181.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C181:=mQtdRegBloco_C181+1;
               mLinha:='|';
               mLinha:=mLinha+'C181|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('CST_PIS').FieldName,query_c181.fieldbyName('CST_PIS').AsString);
               mLinha:=mLinha+query_c181.fieldbyName('CST_PIS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('CFOP').FieldName,query_c181.fieldbyName('CFOP').AsString);
               mLinha:=mLinha+query_c181.fieldbyName('CFOP').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('VL_ITEM').FieldName,query_c181.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c181.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('VL_DESC').FieldName,query_c181.fieldbyName('VL_DESC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c181.fieldbyName('VL_DESC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('VL_BC_PIS').FieldName,query_c181.fieldbyName('VL_BC_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c181.fieldbyName('VL_BC_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('ALIQ_PIS').FieldName,query_c181.fieldbyName('ALIQ_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c181.fieldbyName('ALIQ_PIS').AsFloat)+'|';
               if query_c181.fieldbyName('QUANT_BC_PIS').AsFloat> 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('QUANT_BC_PIS').FieldName,query_c181.fieldbyName('QUANT_BC_PIS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c181.fieldbyName('QUANT_BC_PIS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if query_c181.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('ALIQ_PIS_QUANT').FieldName,query_c181.fieldbyName('ALIQ_PIS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c181.fieldbyName('ALIQ_PIS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('VL_PIS').FieldName,query_c181.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c181.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c181.fieldbyName('COD_CTA').FieldName,query_c181.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c181.fieldbyName('COD_CTA').AsString+'|';


               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c181.Next;
               end;
            query_c181.Close;
            end;
         // TERMINO adentação registro C181

         query_c185.Close;
         query_c185.SQL.clear;
         query_c185.SQL.Add('select '+QuotedStr(' ')+' as CST_COFINS '
                           +',0 AS CFOP,0 AS VL_ITEM,0 AS VL_DESC,0 AS VL_BC_COFINS '
                           +',0 AS ALIQ_COFINS,0 AS QUANT_BC_COFINS '
                           +',0 AS ALIQ_COFINS_QUANT,0 AS VL_COFINS '
                           +',RPAD('+QuotedStr('  ')+',60) AS COD_CTA FROM CADNS WHERE NSNUMERO=-999999 ');
         try
            query_c185.Open;
         except
            end;


         // INICIO adentação registro C185
         mTabNivel_02:='TAB_C185';
         if not query_c185.Eof then
            begin
            while not query_c185.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C185:=mQtdRegBloco_C185+1;
               mLinha:='|';
               mLinha:=mLinha+'C185|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('CST_COFINS').FieldName,query_c185.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c185.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('CST_COFINS').FieldName,query_c185.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c185.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('VL_ITEM').FieldName,query_c185.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c185.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('VL_DESC').FieldName,query_c185.fieldbyName('VL_DESC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c185.fieldbyName('VL_DESC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('VL_BC_COFINS').FieldName,query_c185.fieldbyName('VL_BC_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c185.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('ALIQ_COFINS').FieldName,query_c185.fieldbyName('ALIQ_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c185.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
               if query_c185.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('QUANT_BC_COFINS').FieldName,query_c185.fieldbyName('QUANT_BC_COFINS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c185.fieldbyName('QUANT_BC_COFINS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if query_c185.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('ALIQ_COFINS_QUANT').FieldName,query_c185.fieldbyName('ALIQ_COFINS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c185.fieldbyName('ALIQ_COFINS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('VL_COFINS').FieldName,query_c185.fieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c185.fieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c185.fieldbyName('COD_CTA').FieldName,query_c185.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c185.fieldbyName('COD_CTA').AsString+'|';


               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c185.Next;
               end;
            query_c185.Close;
            end;
         // TERMINO adentação registro C185
         query_c188.Close;
         query_c188.SQL.clear;
         query_c188.SQL.Add('select RPAD('+QuotedStr(' ')+',20) AS NUM_PROC ,'+QuotedStr('1')+' AS IND_PROC '
                           +' FROM CADNS WHERE NSNUMERO=-999999 ');
         try
            query_c188.Open;
         except
            end;


         // INICIO adentação registro C188
         mTabNivel_02:='TAB_C188';
         if not query_c188.Eof then
            begin
            while not query_c188.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C188:=mQtdRegBloco_C188+1;
               mLinha:='|';
               mLinha:=mLinha+'C188|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c188.fieldbyName('NUM_PROC').FieldName,query_c188.fieldbyName('NUM_PROC').AsString);
               mLinha:=mLinha+query_c188.fieldbyName('NUM_PROC').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c188.fieldbyName('IND_PROC').FieldName,query_c188.fieldbyName('IND_PROC').AsString);
               mLinha:=mLinha+query_c188.fieldbyName('IND_PROC').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c188.Next;
               end;
            query_c188.Close;
            end;
         // TERMINO adentação registro C188
         query_c190.Close;
         query_c190.SQL.clear;
         query_c190.SQL.Add('select '+QuotedStr('00')+' AS COD_MOD,SYSDATE AS DT_REF_INI '
                           +',SYSDATE AS DT_REF_FIN,RPAD('+QuotedStr(' ')+',60) AS COD_ITEM '
                           +',RPAD('+QuotedStr('  ')+',08) AS COD_NCM ,'+QuotedStr('000')+' EX_IPI '
                           +',0 AS VL_TOT_ITEM FROM CADNS WHERE NSNUMERO=-999999');

         try
            query_c190.Open;
         except
            end;


         // INICIO adentação registro C190
         mTabNivel_02:='TAB_C190';
         if not query_c190.Eof then
            begin
            while not query_c190.Eof do

               begin
               fTestarR0200(query_C190.fieldbyName('COD_ITEM').AsString);

               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C190:=mQtdRegBloco_C190+1;
               mLinha:='|';
               mLinha:=mLinha+'C190|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c190.fieldbyName('COD_MOD').FieldName,query_c190.fieldbyName('COD_MOD').AsString);
               mLinha:=mLinha+query_c190.fieldbyName('COD_MOD').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c190.fieldbyName('DT_REF_INI').FieldName,query_c190.fieldbyName('DT_REF_INI').AsString);
               mLinha:=mLinha+FormatDateTime(fdt_efd,query_c190.fieldbyName('DT_REF_INI').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c190.fieldbyName('DT_REF_FIN').FieldName,query_c190.fieldbyName('DT_REF_FIN').AsString);
               mLinha:=mLinha+FormatdateTime(fdt_efd,query_c190.fieldbyName('DT_REF_FIN').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c190.fieldbyName('COD_ITEM').FieldName,query_c190.fieldbyName('COD_ITEM').AsString);
               mLinha:=mLinha+query_c190.fieldbyName('COD_ITEM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c190.fieldbyName('COD_NCM').FieldName,query_c190.fieldbyName('COD_NCM').AsString);
               mLinha:=mLinha+query_c190.fieldbyName('COD_NCM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c190.fieldbyName('EX_IPI').FieldName,query_c190.fieldbyName('EX_IPI').AsString);
               mLinha:=mLinha+query_c190.fieldbyName('EX_IPI').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c190.fieldbyName('VL_TOT_ITEM').FieldName,query_c190.fieldbyName('VL_TOT_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c190.fieldbyName('VL_TOT_ITEM').AsFloat)+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c190.Next;
               end;

            query_c190.Close;
            end;
         // TERMINO adentação registro C190


         query_c191.Close;
         query_c191.SQL.clear;
         query_c191.SQL.Add('select LPAD('+QuotedStr('0')+',14,'+QuotedStr('0')+') AS CNPJ_CPF_PART '
                           +','+QuotedStr(' ')+' AS CST_PIS,0 AS CFOP,0 AS VL_ITEM '
                           +',0 AS VL_DESC,0 AS VL_BC_PIS,0 AS ALIQ_PIS '
                           +',0 AS QUANT_BC_PIS,0 AS ALIQ_PIS_QUANT,0 AS VL_PIS '
                           +',RPAD('+QuotedStr(' ')+',60) AS COD_CTA FROM CADNS WHERE NSNUMERO=-999999');


         try
            query_c191.Open;
         except
            end;

         // INICIO adentação registro C191
         mTabNivel_02:='TAB_C191';
         if not query_c191.Eof  then
            begin
            while not query_c191.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C191:=mQtdRegBloco_C191+1;
               mLinha:='|';
               mLinha:=mLinha+'C191|';
               if fsonumero(query_c191.fieldbyName('CNPJ_CPF_PART').AsString)=0 then
                  mLinha:=mLinha+'|'
               else
                  begin
                  fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('CNPJ_CPF_PART').FieldName,query_c191.fieldbyName('CNPJ_CPF_PART').AsString);
                  mLinha:=mLinha+query_c191.fieldbyName('CNPJ_CPF_PART').AsString+'|';
                  end;
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('CST_PIS').FieldName,query_c191.fieldbyName('CST_PIS').AsString);
               mLinha:=mLinha+query_c191.fieldbyName('CST_PIS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('CFOP').FieldName,query_c191.fieldbyName('CFOP').AsString);
               mLinha:=mLinha+query_c191.fieldbyName('CFOP').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('VL_ITEM').FieldName,query_c191.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c191.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('VL_DESC').FieldName,query_c191.fieldbyName('VL_DESC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c191.fieldbyName('VL_DESC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('VL_BC_PIS').FieldName,query_c191.fieldbyName('VL_BC_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c191.fieldbyName('VL_BC_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('ALIQ_PIS').FieldName,query_c191.fieldbyName('ALIQ_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c191.fieldbyName('ALIQ_PIS').AsFloat)+'|';
               if query_c191.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('QUANT_BC_PIS').FieldName,query_c191.fieldbyName('QUANT_BC_PIS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c191.fieldbyName('QUANT_BC_PIS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if query_c191.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('ALIQ_PIS_QUANT').FieldName,query_c191.fieldbyName('ALIQ_PIS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c191.fieldbyName('ALIQ_PIS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;               
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('VL_PIS').FieldName,query_c191.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c191.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c191.fieldbyName('COD_CTA').FieldName,query_c191.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c191.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c191.Next;
               end;

            query_c191.Close;
            end;
         // TERMINO adentação registro C191

         query_c195.Close;
         query_c195.SQL.clear;
         query_c195.SQL.Add('select LPAD('+QuotedStr('0')+',14,'+QuotedStr('0')+') AS CNPJ_CPF_PART '
                           +','+QuotedStr(' ')+' AS CST_COFINS,0 AS CFOP,0 AS VL_ITEM '
                           +',0 AS VL_DESC,0 AS VL_BC_COFINS,0 AS ALIQ_COFINS '
                           +',0 AS QUANT_BC_COFINS,0 AS ALIQ_COFINS_QUANT '
                           +',0 AS VL_COFINS,RPAD('+QuotedStr(' ')+',60) AS COD_CTA '
                           +' FROM CADNS WHERE NSNUMERO=-99999');
         try
            query_c195.Open;
         except
            end;

         // INICIO adentação registro C195
         mTabNivel_02:='TAB_C195';
         if not query_c195.Eof then
            begin
            while not query_c195.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C195:=mQtdRegBloco_C195+1;
               mLinha:='|';
               mLinha:=mLinha+'C195|';
               if fsonumero(query_c195.FieldbyName('CNPJ_CPF_PART').AsString)=0 then
                  mLinha:=mLinha+'|'
               else
                  begin
                  fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('CNPJ_CPF_PART').FieldName,query_c195.FieldbyName('CNPJ_CPF_PART').AsString);
                  mLinha:=mLinha+query_c195.FieldbyName('CNPJ_CPF_PART').AsString+'|';
                  end;
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('CST_COFINS').FieldName,query_c195.FieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c195.FieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('CFOP').FieldName,query_c195.FieldbyName('CFOP').AsString);
               mLinha:=mLinha+query_c195.FieldbyName('CFOP').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('VL_ITEM').FieldName,query_c195.FieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c195.FieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('VL_DESC').FieldName,query_c195.FieldbyName('VL_DESC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c195.FieldbyName('VL_DESC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('VL_BC_COFINS').FieldName,query_c195.FieldbyName('VL_BC_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c195.FieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('ALIQ_COFINS').FieldName,query_c195.FieldbyName('ALIQ_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c195.FieldbyName('ALIQ_COFINS').AsFloat)+'|';
               if query_c195.FieldbyName('QUANT_BC_COFINS').AsFloat>0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('QUANT_BC_COFINS').FieldName,query_c195.FieldbyName('QUANT_BC_COFINS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c195.FieldbyName('QUANT_BC_COFINS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;

               if query_c195.FieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('ALIQ_COFINS_QUANT').FieldName,query_c195.FieldbyName('ALIQ_COFINS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c195.FieldbyName('ALIQ_COFINS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;

               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('VL_COFINS').FieldName,query_c195.FieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c195.FieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c195.FieldbyName('COD_CTA').FieldName,query_c195.FieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c195.FieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c195.Next;
               end;
            query_c195.Close;
            end;
         // TERMINO adentação registro C195

         query_c198.Close;
         query_c198.SQL.clear;
         query_c198.SQL.Add('select RPAD('+QuotedStr('.')+',20,'+QuotedStr('0')+') AS NUM_PROC '
                           +' ,'+QuotedStr('10')+' AS IND_PROC '
                           +' FROM CADNS WHERE NSNUMERO=-999999 ');
        try
           query_c198.open;
        except
           end;



         // INICIO adentação registro C198
         mTabNivel_02:='TAB_C198';
         if not query_c198.Eof then
            begin
            while not query_c198.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C198:=mQtdRegBloco_C198+1;
               mLinha:='|';
               mLinha:=mLinha+'C198|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c198.fieldbyName('NUM_PROC').FieldName,query_c198.fieldbyName('NUM_PROC').AsString);
               mLinha:=mLinha+query_c198.fieldbyName('NUM_PROC').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c198.fieldbyName('IND_PROC').FieldName,query_c198.fieldbyName('IND_PROC').AsString);
               mLinha:=mLinha+query_c198.fieldbyName('IND_PROC').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c198.Next;
               end;
            query_c198.Close;
            end;
         // TERMINO adentação registro C198

         query_c199.Close;
         query_c199.SQL.clear;
         query_c199.SQL.Add('select '+QuotedStr('0')+' AS COD_DOC_IMP,RPAD('+QuotedStr('.')+',10,'+QuotedStr('0')+') AS NUM_DOC_IMP '
                           +',0 AS VL_PIS_IMP,0 AS VL_COFINS_IMP,RPAD('+QuotedStr('.')+',20,'+QuotedStr('0')+') AS NUM_ACDRAW '
                           +' FROM CADNS WHERE NSNUMERO=-999999');

        try
           query_c199.open;
        except
           end;

         // INICIO adentação registro C199
         mTabNivel_02:='TAB_C199';

         if not query_c199.Eof then
            begin
            while not query_c199.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C199:=mQtdRegBloco_C199+1;
               mLinha:='|';
               mLinha:=mLinha+'C199|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c199.fieldbyName('COD_DOC_IMP').FieldName,query_c199.fieldbyName('COD_DOC_IMP').AsString);
               mLinha:=mLinha+query_c199.fieldbyName('COD_DOC_IMP').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c199.fieldbyName('NUM_DOC_IMP').FieldName,query_c199.fieldbyName('NUM_DOC_IMP').AsString);
               mLinha:=mLinha+query_c199.fieldbyName('NUM_DOC_IMP').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c199.fieldbyName('VL_PIS_IMP').FieldName,query_c199.fieldbyName('VL_PIS_IMP').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c199.fieldbyName('VL_PIS_IMP').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c199.fieldbyName('VL_COFINS_IMP').FieldName,query_c199.fieldbyName('VL_COFINS_IMP').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c199.fieldbyName('VL_COFINS_IMP').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c199.fieldbyName('NUM_ACDRAW').FieldName,query_c199.fieldbyName('NUM_ACDRAW').AsString);
               mLinha:=mLinha+query_c199.fieldbyName('NUM_ACDRAW').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c199.Next;
               end;
            query_c199.Close;
            end;
         // TERMINO adentação registro C199

         query_c380.Close;
         query_c380.SQL.clear;
         query_c380.SQL.Add('select '+QuotedStr('00')+' AS COD_MOD ,SYSDATE AS DT_DOC_INI,SYSDATE AS DT_DOC_FIN '
                           +',0 AS NUM_DOC_INI,0 AS NUM_DOC_FIN,0 AS VL_DOC,0 AS VL_DOC_CANC '
                           +' from CADNS WHERE NSNUMERO=-999999 ');

        try
           query_c380.open;
        except
           end;


         // INICIO adentação registro C380
         mTabNivel_02:='TAB_C380';
         if not query_c380.isempty then
            begin
            while not query_c380.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C380:=mQtdRegBloco_C380+1;
               mLinha:='|';
               mLinha:=mLinha+'C380|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c380.fieldbyName('COD_MOD').FieldName,query_c380.fieldbyName('COD_MOD').AsString);
               mLinha:=mLinha+query_c380.fieldbyName('COD_MOD').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c380.fieldbyName('DT_DOC_INI').FieldName,query_c380.fieldbyName('DT_DOC_INI').AsString);
               mLinha:=mLinha+FormatDateTime(fdt_efd,query_c380.fieldbyName('DT_DOC_INI').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c380.fieldbyName('DT_DOC_FIN').FieldName,query_c380.fieldbyName('DT_DOC_FIN').AsString);
               mLinha:=mLinha+FormatdateTime(fdt_efd,query_c380.fieldbyName('DT_DOC_FIN').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c380.fieldbyName('NUM_DOC_INI').FieldName,query_c380.fieldbyName('NUM_DOC_INI').AsString);
               mLinha:=mLinha+query_c380.fieldbyName('NUM_DOC_INI').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c380.fieldbyName('NUM_DOC_FIN').FieldName,query_c380.fieldbyName('NUM_DOC_FIN').AsString);
               mLinha:=mLinha+query_c380.fieldbyName('NUM_DOC_FIN').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c380.fieldbyName('VL_DOC').FieldName,query_c380.fieldbyName('VL_DOC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c380.fieldbyName('VL_DOC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c380.fieldbyName('VL_DOC_CANC').FieldName,query_c380.fieldbyName('VL_DOC_CANC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c380.fieldbyName('VL_DOC_CANC').AsFloat)+'|';


               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c380.Next;
               end;
            query_c380.Close;
            end;
         // TERMINO adentação registro C380

         query_c381.close;
         query_c381.SQL.Clear;
         query_c381.SQL.Add('select '+QuotedStr(' ')+' AS CST_PIS ,RPAD('+QuotedStr('.')+',60,'+QuotedStr(' ')+') AS COD_ITEM '
                           +',0 AS VL_ITEM,0 AS VL_BC_PIS,0 AS ALIQ_PIS,'
                           +'0 AS QUANT_BC_PIS,0 AS ALIQ_PIS_QUANT,0 AS VL_PIS '
                           +',RPAD('+QuotedStr('.')+',60,'+QuotedStr(' ')+') AS COD_CTA FROM CADNS WHERE NSNUMERO=-999999');
         try
            query_c381.Open;
         except
            end;


         // INICIO adentação registro C381
         mTabNivel_02:='TAB_C381';
         if not query_c381.Eof then
            begin
            while not query_c381.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C381:=mQtdRegBloco_C381+1;
               fTestarR0200(query_C381.fieldbyName('COD_ITEM').AsString);

               mLinha:='|';
               mLinha:=mLinha+'C381|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('CST_PIS').FieldName,query_c381.fieldbyName('CST_PIS').AsString);
               mLinha:=mLinha+query_c381.fieldbyName('CST_PIS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('COD_ITEM').FieldName,query_c381.fieldbyName('COD_ITEM').AsString);
               mLinha:=mLinha+query_c381.fieldbyName('COD_ITEM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('VL_ITEM').FieldName,query_c381.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c381.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('VL_BC_PIS').FieldName,query_c381.fieldbyName('VL_BC_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c381.fieldbyName('VL_BC_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('ALIQ_PIS').FieldName,query_c381.fieldbyName('ALIQ_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c381.fieldbyName('ALIQ_PIS').AsFloat)+'|';
               if query_c381.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('QUANT_BC_PIS').FieldName,query_c381.fieldbyName('QUANT_BC_PIS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c381.fieldbyName('QUANT_BC_PIS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;

               if query_c381.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('ALIQ_PIS_QUANT').FieldName,query_c381.fieldbyName('ALIQ_PIS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c381.fieldbyName('ALIQ_PIS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('VL_PIS').FieldName,query_c381.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c381.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c381.fieldbyName('COD_CTA').FieldName,query_c381.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c381.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c381.Next;
               end;
            query_c381.Close;
            end;
         // TERMINO adentação registro C381

         query_c385.close;
         query_c385.SQL.Clear;
         query_c385.SQL.Add('select '+QuotedStr(' ')+' AS CST_COFINS ,RPAD('+QuotedStr('.')+',60,'+QuotedStr(' ')+') AS COD_ITEM '
                           +',0 AS VL_ITEM,0 AS VL_BC_COFINS,0 AS ALIQ_COFINS '
                           +',0 AS QUANT_BC_COFINS,0 AS ALIQ_COFINS_QUANT'
                           +',0 AS VL_COFINS,RPAD('+QuotedStr('.')+',60,'+QuotedStr(' ')+') AS COD_CTA FROM CADNS '
                           +' WHERE NSNUMERO=-999999');


         try
            query_c385.Open;
         except
            end;

         // INICIO adentação registro C385
         mTabNivel_02:='TAB_C385';
         if not query_c385.IsEmpty then
            begin
            while not query_c385.Eof do
               begin
               fTestarR0200(query_C385.fieldbyName('COD_ITEM').AsString);
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C385:=mQtdRegBloco_C385+1;
               mLinha:='|';
               mLinha:=mLinha+'C385|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('CST_COFINS').FieldName,query_c385.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c385.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('COD_ITEM').FieldName,query_c385.fieldbyName('COD_ITEM').AsString);
               mLinha:=mLinha+query_c385.fieldbyName('COD_ITEM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('VL_ITEM').FieldName,query_c385.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c385.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('VL_BC_COFINS').FieldName,query_c385.fieldbyName('VL_BC_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c385.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('ALIQ_COFINS').FieldName,query_c385.fieldbyName('ALIQ_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c385.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
               if query_c385.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('QUANT_BC_COFINS').FieldName,query_c385.fieldbyName('QUANT_BC_COFINS').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas3Dec, query_c385.fieldbyName('QUANT_BC_COFINS').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               if query_c385.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
                 begin
                 fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('ALIQ_COFINS_QUANT').FieldName,query_c385.fieldbyName('ALIQ_COFINS_QUANT').AsString);
                 mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c385.fieldbyName('ALIQ_COFINS_QUANT').AsFloat)+'|';
                 end
               else
                 begin
                 mLinha:=mLinha+'|';
                 end;
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('VL_COFINS').FieldName,query_c385.fieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c385.fieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c385.fieldbyName('COD_CTA').FieldName,query_c385.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c385.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c385.Next;
               end;
            query_c385.Close;
            end;
         // TERMINO adentação registro C385
         query_c395.close;
         query_c395.SQL.Clear;
         query_c395.SQL.Add('select '+QuotedStr('00')+' AS COD_MOD,RPAD('+QuotedStr('.')+',60,'+QuotedStr(' ')+') AS COD_PART '
                           +','+QuotedStr('   ')+','+QuotedStr('   ')+' AS SUB_SER,0 AS NUM_DOC '
                           +',SYSDATE AS DT_DOC,0 AS VL_DOC FROM CADNS '
                           +' WHERE NSNUMERO=-999999');


         try
            query_c395.Open;
         except
            end;


         // INICIO adentação registro C395
         mTabNivel_02:='TAB_C395';
         if not query_c395.Eof then
            begin
            while not query_c395.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C395:=mQtdRegBloco_C395+1;
               mLinha:='|';
               mLinha:=mLinha+'C395|';
               fTestarCliFor(query_C395.fieldbyName('COD_PART').AsString);
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c395.fieldbyname('COD_MOD').FieldName,query_c395.fieldbyname('COD_MOD').AsString);
               mLinha:=mLinha+query_c395.fieldbyname('COD_MOD').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c395.fieldbyname('COD_PART').FieldName,query_c395.fieldbyname('COD_PART').AsString);
               mLinha:=mLinha+query_c395.fieldbyname('COD_PART').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c395.fieldbyname('SER').FieldName,query_c395.fieldbyname('SER').AsString);
               mLinha:=mLinha+query_c395.fieldbyname('SER').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c395.fieldbyname('SUB_SER').FieldName,query_c395.fieldbyname('SUB_SER').AsString);
               mLinha:=mLinha+query_c395.fieldbyname('SUB_SER').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c395.fieldbyname('NUM_DOC').FieldName,query_c395.fieldbyname('NUM_DOC').AsString);
               mLinha:=mLinha+query_c395.fieldbyname('NUM_DOC').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c395.fieldbyname('DT_DOC').FieldName,query_c395.fieldbyname('DT_DOC').AsString);
               mLinha:=mLinha+FormatdateTime(fdt_efd,query_c395.fieldbyname('DT_DOC').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c395.fieldbyname('VL_DOC').FieldName,query_c395.fieldbyname('VL_DOC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c395.fieldbyname('VL_DOC').AsFloat)+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c395.Next;
               end;
            query_c395.Close;
            end;
         // TERMINO adentação registro C395

         query_c396.close;
         query_c396.SQL.Clear;
         query_c396.SQL.Add('select RPAD('+QuotedStr('.')+',60,'+QuotedStr(' ')+') AS COD_ITEM,0 AS VL_ITEM '
                           +',0 AS VL_DESC,'+QuotedStr('00')+' AS NAT_BC_CRED,'+QuotedStr(' ')+' AS CST_PIS '
                           +',0 AS VL_BC_PIS,0 AS ALIQ_PIS,0 AS VL_PIS '
                           +' , '+ QuotedStr(' ')+' AS CST_COFINS '

                           +',0 AS VL_BC_COFINS,0 AS ALIQ_COFINS '
                           +',0 AS VL_COFINS,RPAD('+QuotedStr('.')+',60,'+QuotedStr(' ')+') AS COD_CTA '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c396.Open;
         except
            end;


         // INICIO adentação registro C396
         mTabNivel_02:='TAB_C396';
         if  not query_c396.IsEmpty then
            begin
            while not query_c396.Eof do
               begin
               fTestarR0200(query_C396.fieldbyName('COD_ITEM').AsString);

               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C396:=mQtdRegBloco_C396+1;
               mLinha:='|';
               mLinha:=mLinha+'C396|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('COD_ITEM').FieldName,query_c396.fieldbyName('COD_ITEM').AsString);
               mLinha:=mLinha+query_c396.fieldbyName('COD_ITEM').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('VL_ITEM').FieldName,query_c396.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c396.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('VL_DESC').FieldName,query_c396.fieldbyName('VL_DESC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c396.fieldbyName('VL_DESC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('NAT_BC_CRED').FieldName,query_c396.fieldbyName('NAT_BC_CRED').AsString);
               mLinha:=mLinha+query_c396.fieldbyName('NAT_BC_CRED').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('CST_PIS').FieldName,query_c396.fieldbyName('CST_PIS').AsString);
               mLinha:=mLinha+query_c396.fieldbyName('CST_PIS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('VL_BC_PIS').FieldName,query_c396.fieldbyName('VL_BC_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c396.fieldbyName('VL_BC_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('ALIQ_PIS').FieldName,query_c396.fieldbyName('ALIQ_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c396.fieldbyName('ALIQ_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('VL_PIS').FieldName,query_c396.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c396.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('CST_COFINS').FieldName,query_c396.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c396.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('VL_BC_COFINS').FieldName,query_c396.fieldbyName('VL_BC_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c396.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('ALIQ_COFINS').FieldName,query_c396.fieldbyName('ALIQ_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c396.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('VL_COFINS').FieldName,query_c396.fieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c396.fieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c396.fieldbyName('COD_CTA').FieldName,query_c396.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c396.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c396.Next;
               end;
            query_c396.Close;
            end;
         // TERMINO adentação registro C396

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
         query_c481.SQL.Add('select '+QuotedStr(' ')+' AS CST_PIS,0 AS VL_ITEM ,0 AS VL_BC_PIS '
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
         query_c485.SQL.Add('select '+QuotedStr(' ')+' AS CST_COFINS ,0 AS VL_ITEM,0 AS VL_BC_COFINS '
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
         query_c491.SQL.Add('select RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_ITEM,'+QuotedStr(' ')+' AS CST_PIS '
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
         query_c495.SQL.Add('select RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_ITEM,'+QuotedStr(' ')+' AS CST_COFINS '
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

         query_c500.close;
         query_c500.SQL.Clear;
         query_c500.SQL.Add('select RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_PART ,'+QuotedStr('00')+' AS COD_MOD '
                           +','+QuotedStr('00')+' AS COD_SIT,RPAD('+QuotedStr('.')+',3,'+QuotedStr('.')+') AS SER '
                           +',RPAD('+QuotedStr('.')+',3,'+QuotedStr('.')+') AS SUB,0 AS NUM_DOC '
                           +',SYSDATE AS DT_DOC,SYSDATE AS DT_ENT,0 AS VL_DOC '
                           +',0 AS VL_ICMS,RPAD('+QuotedStr('.')+',6,'+QuotedStr('.')+') AS COD_INF '
                           +',0 AS VL_PIS,0 AS VL_COFINS '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c500.Open;
         except
            end;

         // INICIO adentação registro C500
         mTabNivel_02:='TAB_C500';
         if not query_c500.Eof then
            begin
            while not query_c500.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C500:=mQtdRegBloco_C500+1;
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
               mLinha:=mLinha+query_c500.fieldbyName('SER').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('SUB').FieldName,query_c500.fieldbyName('SUB').AsString);
               mLinha:=mLinha+query_c500.fieldbyName('SUB').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('NUM_DOC').FieldName,query_c500.fieldbyName('NUM_DOC').AsString);
               mLinha:=mLinha+query_c500.fieldbyName('NUM_DOC').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('DT_DOC').FieldName,query_c500.fieldbyName('DT_DOC').AsString);
               mLinha:=mLinha+FormatDateTime(fdt_efd, query_c500.fieldbyName('DT_DOC').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c500.fieldbyName('DT_ENT').FieldName,query_c500.fieldbyName('DT_ENT').AsString);
               mLinha:=mLinha+FormatDateTime(fdt_efd, query_c500.fieldbyName('DT_ENT').AsDateTime)+'|';
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

               query_c500.Next;
               end;
            query_c500.Close;
            end;
         // TERMINO adentação registro C500
         query_c501.close;
         query_c501.SQL.Clear;
         query_c501.SQL.Add('select '+QuotedStr(' ')+' AS CST_PIS,0 AS VL_ITEM,0 AS NAT_BC_CRED '
                           +',0 AS VL_BC_PIS,0 AS ALIQ_PIS,0 AS VL_PIS '
                           +',RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c501.Open;
         except
            end;


         // INICIO adentação registro C501
         mTabNivel_02:='TAB_C501';
         if not query_c501.Eof then
            begin
            while not query_c501.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C501:=mQtdRegBloco_C501+1;
               mLinha:='|';
               mLinha:=mLinha+'C501|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c501.fieldbyName('CST_PIS').FieldName,query_c501.fieldbyName('CST_PIS').AsString);
               mLinha:=mLinha+query_c501.fieldbyName('CST_PIS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c501.fieldbyName('VL_ITEM').FieldName,query_c501.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c501.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c501.fieldbyName('NAT_BC_CRED').FieldName,query_c501.fieldbyName('NAT_BC_CRED').AsString);
               mLinha:=mLinha+query_c501.fieldbyName('NAT_BC_CRED').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c501.fieldbyName('VL_BC_PIS').FieldName,query_c501.fieldbyName('VL_BC_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c501.fieldbyName('VL_BC_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c501.fieldbyName('ALIQ_PIS').FieldName,query_c501.fieldbyName('ALIQ_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c501.fieldbyName('ALIQ_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c501.fieldbyName('VL_PIS').FieldName,query_c501.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c501.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c501.fieldbyName('COD_CTA').FieldName,query_c501.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c501.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c501.Next;
               end;
            query_c501.Close;
            end;
         // TERMINO adentação registro C501

         query_c505.close;
         query_c505.SQL.Clear;
         query_c505.SQL.Add('select '+QuotedStr(' ')+' AS CST_COFINS,0 AS VL_ITEM,0 AS NAT_BC_CRED '
                           +',0 AS VL_BC_COFINS,0 AS ALIQ_COFINS,0 AS VL_COFINS '
                           +',RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c505.Open;
         except
            end;


         // INICIO adentação registro C505
         mTabNivel_02:='TAB_C505';
         if not query_c505.Eof then
            begin
            while not query_c505.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C505:=mQtdRegBloco_C505+1;
               mLinha:='|';
               mLinha:=mLinha+'C505|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c505.fieldbyName('CST_COFINS').FieldName,query_c505.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c505.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c505.fieldbyName('VL_ITEM').FieldName,query_c505.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c505.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c505.fieldbyName('NAT_BC_CRED').FieldName,query_c505.fieldbyName('NAT_BC_CRED').AsString);
               mLinha:=mLinha+query_c505.fieldbyName('NAT_BC_CRED').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c505.fieldbyName('VL_BC_COFINS').FieldName,query_c505.fieldbyName('VL_BC_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c505.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c505.fieldbyName('ALIQ_COFINS').FieldName,query_c505.fieldbyName('ALIQ_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c505.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c505.fieldbyName('VL_COFINS').FieldName,query_c505.fieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c505.fieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c505.fieldbyName('COD_CTA').FieldName,query_c505.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c505.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c505.Next;
               end;
            query_c505.Close;
            end;
         // TERMINO adentação registro C505

         query_c509.close;
         query_c509.SQL.Clear;
         query_c509.SQL.Add('select RPAD('+QuotedStr('.')+',20,'+QuotedStr('.')+') AS NUM_PROC ,'+QuotedStr('1')+' AS IND_PROC '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c509.Open;
         except
            end;


         // INICIO adentação registro C509
         mTabNivel_02:='TAB_C509';
         if not query_c509.Eof then
            begin
            while not query_c509.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C509:=mQtdRegBloco_C509+1;
               mLinha:='|';
               mLinha:=mLinha+'C509|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c509.fieldbyName('NUM_PROC').FieldName,query_c509.fieldbyName('NUM_PROC').AsString);
               mLinha:=mLinha+query_c509.fieldbyName('NUM_PROC').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c509.fieldbyName('IND_PROC').FieldName,query_c509.fieldbyName('IND_PROC').AsString);
               mLinha:=mLinha+query_c509.fieldbyName('IND_PROC').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c509.Next;
               end;
            query_c509.Close;
            end;
         // TERMINO adentação registro C509

         query_c600.close;
         query_c600.SQL.Clear;
         query_c600.SQL.Add('select RPAD('+QuotedStr('.')+',2,'+QuotedStr('.')+') AS COD_MOD ,0 AS COD_MUN '
                           +',RPAD('+QuotedStr('.')+',3,'+QuotedStr('.')+') AS SER,RPAD('+QuotedStr('.')+',3,'+QuotedStr('.')+') AS SUB '
                           +',RPAD('+QuotedStr('.')+',2,'+QuotedStr('.')+') AS COD_CONS,0 AS QTD_CONS '
                           +',0 AS QTD_CANC,SYSDATE AS DT_DOC,0 AS VL_DOC '
                           +',0 AS VL_DESC,0 AS CONS,0 AS VL_FORN,0 AS VL_SERV_NT '
                           +',0 AS VL_TERC,0 AS VL_DA,0 AS VL_BC_ICMS,0 AS VL_ICMS '
                           +',0 AS VL_BC_ICMS_ST,0 AS VL_ICMS_ST,0 AS VL_PIS '
                           +',0 AS VL_COFINS '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c600.Open;
         except
            end;

         // INICIO adentação registro C600
         mTabNivel_02:='TAB_C600';
         if not query_c600.Eof then
            begin
            while not query_c600.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C600:=mQtdRegBloco_C600+1;
               mLinha:='|';
               mLinha:=mLinha+'C600|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('COD_MOD').FieldName,query_c600.fieldbyname('COD_MOD').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('COD_MOD').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('COD_MUN').FieldName,query_c600.fieldbyname('COD_MUN').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('COD_MUN').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('SER').FieldName,query_c600.fieldbyname('SER').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('SER').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('SUB').FieldName,query_c600.fieldbyname('SUB').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('SUB').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('COD_CONS').FieldName,query_c600.fieldbyname('COD_CONS').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('COD_CONS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('QTD_CONS').FieldName,query_c600.fieldbyname('QTD_CONS').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('QTD_CONS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('QTD_CANC').FieldName,query_c600.fieldbyname('QTD_CANC').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('QTD_CANC').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('DT_DOC').FieldName,query_c600.fieldbyname('DT_DOC').AsString);
               mLinha:=mLinha+FormatDateTime(fdt_efd, query_c600.fieldbyname('DT_DOC').AsDateTime)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_DOC').FieldName,query_c600.fieldbyname('VL_DOC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_DOC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_DESC').FieldName,query_c600.fieldbyname('VL_DESC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_DESC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('CONS').FieldName,query_c600.fieldbyname('CONS').AsString);
               mLinha:=mLinha+query_c600.fieldbyname('CONS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_FORN').FieldName,query_c600.fieldbyname('VL_FORN').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_FORN').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_SERV_NT').FieldName,query_c600.fieldbyname('VL_SERV_NT').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_SERV_NT').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_TERC').FieldName,query_c600.fieldbyname('VL_TERC').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_TERC').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_DA').FieldName,query_c600.fieldbyname('VL_DA').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_DA').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_BC_ICMS').FieldName,query_c600.fieldbyname('VL_BC_ICMS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_BC_ICMS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_ICMS').FieldName,query_c600.fieldbyname('VL_ICMS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_ICMS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_BC_ICMS_ST').FieldName,query_c600.fieldbyname('VL_BC_ICMS_ST').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_BC_ICMS_ST').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_ICMS_ST').FieldName,query_c600.fieldbyname('VL_ICMS_ST').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_ICMS_ST').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_PIS').FieldName,query_c600.fieldbyname('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c600.fieldbyname('VL_COFINS').FieldName,query_c600.fieldbyname('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c600.fieldbyname('VL_COFINS').AsFloat)+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c600.Next;
               end;
            query_c600.Close;
            end;
         // TERMINO adentação registro C600



         query_c601.close;
         query_c601.SQL.Clear;
         query_c601.SQL.Add('select RPAD('+QuotedStr('.')+',2,'+QuotedStr(' ')+') AS CST_PIS ,0 AS VL_ITEM ,0 AS VL_BC_PIS '
                           +',0 AS ALIQ_PIS ,0 AS VL_PIS,RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c601.Open;
         except
            end;


         // INICIO adentação registro C601
         mTabNivel_02:='TAB_C601';
         if not query_c601.Eof then
            begin
            while not query_c601.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C601:=mQtdRegBloco_C601+1;
               mLinha:='|';
               mLinha:=mLinha+'C601|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c601.fieldbyName('CST_PIS').FieldName,query_c601.fieldbyName('CST_PIS').AsString);
               mLinha:=mLinha+query_c601.fieldbyName('CST_PIS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c601.fieldbyName('VL_ITEM').FieldName,query_c601.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c601.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c601.fieldbyName('VL_BC_PIS').FieldName,query_c601.fieldbyName('VL_BC_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c601.fieldbyName('VL_BC_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c601.fieldbyName('ALIQ_PIS').FieldName,query_c601.fieldbyName('ALIQ_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c601.fieldbyName('ALIQ_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c601.fieldbyName('VL_PIS').FieldName,query_c601.fieldbyName('VL_PIS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c601.fieldbyName('VL_PIS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c601.fieldbyName('COD_CTA').FieldName,query_c601.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c601.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c601.Next;
               end;
            query_c601.Close;
            end;
         // TERMINO adentação registro C601

         query_c605.close;
         query_c605.SQL.Clear;
         query_c605.SQL.Add('select RPAD('+QuotedStr('.')+',2,'+QuotedStr(' ')+') AS CST_COFINS ,0 AS VL_ITEM '
                           +',0 AS VL_BC_COFINS,0 AS ALIQ_COFINS,0 AS VL_COFINS '
                           +',RPAD('+QuotedStr('.')+',60,'+QuotedStr('.')+') AS COD_CTA '
                           +' FROM CADNS '
                           +' WHERE NSNUMERO=-999999');

         try
            query_c605.Open;
         except
            end;

         // INICIO adentação registro C605
         mTabNivel_02:='TAB_C605';
         if not query_c605.Eof  then
            begin
            while not query_c605.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_C605:=mQtdRegBloco_C605+1;
               mLinha:='|';
               mLinha:=mLinha+'C605|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c605.fieldbyName('CST_COFINS').FieldName,query_c605.fieldbyName('CST_COFINS').AsString);
               mLinha:=mLinha+query_c605.fieldbyName('CST_COFINS').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c605.fieldbyName('VL_ITEM').FieldName,query_c605.fieldbyName('VL_ITEM').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c605.fieldbyName('VL_ITEM').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c605.fieldbyName('VL_BC_COFINS').FieldName,query_c605.fieldbyName('VL_BC_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c605.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c605.fieldbyName('ALIQ_COFINS').FieldName,query_c605.fieldbyName('ALIQ_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas4Dec, query_c605.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c605.fieldbyName('VL_COFINS').FieldName,query_c605.fieldbyName('VL_COFINS').AsString);
               mLinha:=mLinha+FormatFloat(mCasas2Dec, query_c605.fieldbyName('VL_COFINS').AsFloat)+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c605.fieldbyName('COD_CTA').FieldName,query_c605.fieldbyName('COD_CTA').AsString);
               mLinha:=mLinha+query_c605.fieldbyName('COD_CTA').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c605.Next;
               end;
            query_c605.Close;
            end;
         // TERMINO adentação registro C605

         query_c609.close;
         query_c609.SQL.Clear;
         query_c609.SQL.Add('select RPAD('+QuotedStr('.')+',20,'+QuotedStr('.')+') AS NUM_PROC ,'+QuotedStr('1')+' AS IND_PROC FROM CADNS WHERE NSNUMERO=-999999');
         try
            query_c609.Open;
         except
            end;



         // INICIO adentação registro c609
         mTabNivel_02:='TAB_c609';
         if not query_c609.Eof then
            begin
            while not query_c609.Eof do
               begin
               mQtdRegBlocoC:=mQtdRegBlocoC+1;
               mQtdRegBloco_c609:=mQtdRegBloco_c609+1;
               mLinha:='|';
               mLinha:=mLinha+'c609|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c609.fieldbyName('NUM_PROC').FieldName,query_c609.fieldbyName('NUM_PROC').AsString);
               mLinha:=mLinha+query_c609.fieldbyName('NUM_PROC').AsString+'|';
               fValVal('Cadastro de Empresa ',mTabNivel_02,query_c609.fieldbyName('IND_PROC').FieldName,query_c609.fieldbyName('IND_PROC').AsString);
               mLinha:=mLinha+query_c609.fieldbyName('IND_PROC').AsString+'|';

               Memo1.Lines.Add(mLinha);
               items_lista_BlocoC.Add(mLinha);

               query_c609.Next;
               end;
            query_c609.Close;
            end;
         // TERMINO adentação registro c609
         end;
      query_c100.Next;

      end;
   query_c100.Close;
   end;



query_c010.Close;
FreeAndNil(query_c010);
query_c100.Close;
FreeAndNil(query_c100);
query_c110.Close;
FreeAndNil(query_c110);
query_c111.Close;
FreeAndNil(query_c111);
query_c120.Close;
FreeAndNil(query_c120);
query_c170.Close;
FreeAndNil(query_c170);


query_c180.Close;
FreeAndNil(query_c180);

query_c181.Close;
FreeAndNil(query_c181);

query_c185.Close;
FreeAndNil(query_c185);

query_c190.Close;
FreeAndNil(query_c190);

query_c191.Close;
FreeAndNil(query_c191);

query_c195.Close;
FreeAndNil(query_c195);

query_c198.Close;
FreeAndNil(query_c198);

query_c199.Close;
FreeAndNil(query_c199);

query_c380.Close;
FreeAndNil(query_c380);

query_c385.Close;
FreeAndNil(query_c385);

query_c395.Close;
FreeAndNil(query_c395);

query_c396.Close;
FreeAndNil(query_c396);

query_c400.Close;
FreeAndNil(query_c400);

query_c405.Close;
FreeAndNil(query_c405);
query_c481.Close;
FreeAndNil(query_c481);


query_c485.Close;
FreeAndNil(query_c485);

query_c489.Close;
FreeAndNil(query_c489);

query_c490.Close;
FreeAndNil(query_c490);

query_c491.Close;
FreeAndNil(query_c491);

query_c495.Close;
FreeAndNil(query_c495);

query_c499.Close;
FreeAndNil(query_c499);
query_c500.Close;
FreeAndNil(query_c500);
query_c501.Close;
FreeAndNil(query_c501);
query_c505.Close;
FreeAndNil(query_c505);
query_c509.Close;
FreeAndNil(query_c509);
query_c600.Close;
FreeAndNil(query_c600);
query_c601.Close;
FreeAndNil(query_c601);
query_c605.Close;
FreeAndNil(query_c605);
query_c609.Close;
FreeAndNil(query_c609);

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


function TFrm_SPED_EFD_PisCofins.fBlocoD(pOrigem: Integer): Boolean;
var
mTabNivel_02: String;
Query_D010: tQuery;
Query_D100: tQuery;
Query_D101: tQuery;
Query_D105: tQuery;
Query_D111: tQuery;
Query_D200: tQuery;
Query_D201: tQuery;
Query_D205: tQuery;
Query_D209: tQuery;
Query_D300: tQuery;
Query_D309: tQuery;
Query_D350: tQuery;
Query_D359: tQuery;
Query_D500: tQuery;
Query_D501: tQuery;
Query_D505: tQuery;
Query_D509: tQuery;
Query_D600: tQuery;
Query_D601: tQuery;
Query_D605: tQuery;
Query_D609: tQuery;

begin
Query_D010:=tQuery.Create(nil);
Query_D010.DatabaseName:='SG_ASSOC';


Query_D100:=tQuery.Create(nil);
Query_D100.DatabaseName:='SG_ASSOC';

Query_D101:=tQuery.Create(nil);
Query_D101.DatabaseName:='SG_ASSOC';

Query_D105:=tQuery.Create(nil);
Query_D105.DatabaseName:='SG_ASSOC';

Query_D111:=tQuery.Create(nil);
Query_D111.DatabaseName:='SG_ASSOC';

Query_D200:=tQuery.Create(nil);
Query_D200.DatabaseName:='SG_ASSOC';

Query_D201:=tQuery.Create(nil);
Query_D201.DatabaseName:='SG_ASSOC';

Query_D205:=tQuery.Create(nil);
Query_D205.DatabaseName:='SG_ASSOC';

Query_D209:=tQuery.Create(nil);
Query_D209.DatabaseName:='SG_ASSOC';

Query_D300:=tQuery.Create(nil);
Query_D300.DatabaseName:='SG_ASSOC';

Query_D309:=tQuery.Create(nil);
Query_D309.DatabaseName:='SG_ASSOC';

Query_D350:=tQuery.Create(nil);
Query_D350.DatabaseName:='SG_ASSOC';

Query_D359:=tQuery.Create(nil);
Query_D359.DatabaseName:='SG_ASSOC';

Query_D500:=tQuery.Create(nil);
Query_D500.DatabaseName:='SG_ASSOC';

Query_D501:=tQuery.Create(nil);
Query_D501.DatabaseName:='SG_ASSOC';

Query_D505:=tQuery.Create(nil);
Query_D505.DatabaseName:='SG_ASSOC';

Query_D509:=tQuery.Create(nil);
Query_D509.DatabaseName:='SG_ASSOC';


Query_D600:=tQuery.Create(nil);
Query_D600.DatabaseName:='SG_ASSOC';

Query_D601:=tQuery.Create(nil);
Query_D601.DatabaseName:='SG_ASSOC';

Query_D605:=tQuery.Create(nil);
Query_D605.DatabaseName:='SG_ASSOC';

Query_D609:=tQuery.Create(nil);
Query_D609.DatabaseName:='SG_ASSOC';


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
                   +'  ,NENFE_CHAVE AS  CHV_CTE '
                   +'  ,NETOTNOT AS VL_DOC '
                   +'  , 0 as VL_DESC '
                   +' ,DECODE(NEFRETE,0,9,NEFRETEPC) AS IND_FRT '
                   +'  ,NEFRETE AS VL_SERV '
                   +'  ,NEBASEN AS VL_BC_ICMS '
                   +'  ,NEICMSN AS VL_ICMS '
                   +'  ,0 AS VL_NT '
                   +'  ,'+chr(39)+'     '+chr(39)+' AS COD_INF '
                   +'  ,'+chr(39)+'     '+chr(39)+' AS COD_CTA '
                   +','+chr(39)+mcst_icms_icms+ '000'+chr(39)+' AS D190_CST_ICMS '
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
                   +'  FROM CADNE where NECODEMP=0'+IntToStr(codemp));
if fsonumero(edt_datini.Text)<>0 then
   Query_D100.SQL.add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, edt_datini.Date)+chr(39));
if fsonumero(edt_datfin.Text)<>0 then
   Query_D100.SQL.add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, edt_datfin.Date)+chr(39));
Query_D100.SQL.Add(' and (NECFO=1353 OR NECFO=2353  ) ');


if fsonumero(edt_datini_filtro.Text)<>0 then
   query_D100.SQL.Add('and NEDTENT>='+chr(39)+FormatDatetime(fdt, edt_datini_filtro.Date)+chr(39));
if fsonumero(edt_datfin_filtro.Text)<>0 then
   query_D100.SQL.Add('and NEDTENT<='+chr(39)+FormatDatetime(fdt, edt_datfin_filtro.Date)+chr(39));






mComplInstruc:=fItensListBox(0,lbx_numnf_ent,OMITIR_VEN);
if trim(mComplInstruc)<>'' then query_D100.sql.Add(' and NENUMERO '+mComplInstruc);

query_d100.SQL.Add(fListaCfop('NECFO'));

try
   Query_D100.Open;
except
   end;



mTabela:='TAB_D100';
if not Query_D100.Eof  then
   begin


   query_D010.Close;
   query_D010.SQL.Clear;
   query_D010.SQL.Add(' Select LPAD(CADEMP.CGC,14, '+QuotedStr('0')+') as CNPJ,'+QuotedStr('1')+' as IND_ESCRI from CADEMP where CODEMP=:CODEMP');
   query_D010.ParamByName('CODEMP').Value:=codemp;
   try
      query_D010.Open;
   except
      end;
   mTabela:='TAB_D010';
   if not Query_D010.Eof  then
      begin
      mLinha:='|D001|0|'; // com dados
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoD.Add(mLinha);
      mQtdRegBlocoD:=mQtdRegBlocoD+1;
      mQtdRegBloco_D001 :=mQtdRegBloco_D001+1;
      mLinha:='';
      while not Query_D010.Eof do
         begin
         mQtdRegBlocoD:=mQtdRegBlocoD+1;
         mQtdRegBloco_D010:=mQtdRegBloco_D010+1;
         mLinha:='|';
         mLinha:=mLinha+'D010|';
         fValVal('Cadastro de Empresa ',mTabela,Query_D010.fieldbyName('CNPJ').FieldName,Query_D010.fieldbyName('CNPJ').AsString);
         mLinha:=mLinha+Query_D010.fieldbyName('CNPJ').AsString+'|';

         Memo1.Lines.Add(mLinha);
         items_lista_BlocoD.Add(mLinha);

         Query_D010.Next;
         end;
      Query_D010.Close;
      end;





   while not Query_D100.Eof do
      begin
      mQtdRegBlocoD:=mQtdRegBlocoD+1;
      mQtdRegBloco_D100:=mQtdRegBloco_D100+1;
      mLinha:='|';
      mLinha:=mLinha+'D100|';
      fTestarCliFor(query_D100.fieldbyName('COD_PART').AsString);
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('IND_OPER').FieldName,Query_D100.fieldbyName('IND_OPER').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('IND_OPER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('IND_EMIT').FieldName,Query_D100.fieldbyName('IND_EMIT').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('IND_EMIT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_PART').FieldName,Query_D100.fieldbyName('COD_PART').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_PART').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_MOD').FieldName,Query_D100.fieldbyName('COD_MOD').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_MOD').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_SIT').FieldName,Query_D100.fieldbyName('COD_SIT').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_SIT').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('SER').FieldName,Query_D100.fieldbyName('SER').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('SER').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('SUB').FieldName,Query_D100.fieldbyName('SUB').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('SUB').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('NUM_DOC').FieldName,Query_D100.fieldbyName('NUM_DOC').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('NUM_DOC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('CHV_CTE').FieldName,Query_D100.fieldbyName('CHV_CTE').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('CHV_CTE').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('DT_DOC').FieldName,Query_D100.fieldbyName('DT_DOC').AsString);
      mLinha:=mLinha+FormatdateTime(fdt_efd, Query_D100.fieldbyName('DT_DOC').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('DT_A_P').FieldName,Query_D100.fieldbyName('DT_A_P').AsString);
      mLinha:=mLinha+FormatDateTime(fdt_efd,Query_D100.fieldbyName('DT_A_P').AsDateTime)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('TP_CT_E').FieldName,Query_D100.fieldbyName('TP_CT_E').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('TP_CT_E').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('CHV_CTE').FieldName,Query_D100.fieldbyName('CHV_CTE').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('CHV_CTE').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_DOC').FieldName,Query_D100.fieldbyName('VL_DOC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_DOC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_DESC').FieldName,Query_D100.fieldbyName('VL_DESC').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_DESC').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('IND_FRT').FieldName,Query_D100.fieldbyName('IND_FRT').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('IND_FRT').Asstring+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_SERV').FieldName,Query_D100.fieldbyName('VL_SERV').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_SERV').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_BC_ICMS').FieldName,Query_D100.fieldbyName('VL_BC_ICMS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_BC_ICMS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_ICMS').FieldName,Query_D100.fieldbyName('VL_ICMS').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D100.fieldbyName('VL_ICMS').AsFloat)+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('VL_NT').FieldName,Query_D100.fieldbyName('VL_NT').AsString);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, valfloat(Query_D100.fieldbyName('VL_NT').Asstring))+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_INF').FieldName,Query_D100.fieldbyName('COD_INF').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_INF').AsString+'|';

//      mLinha:=mLinha+FormatFloat(mCasas2Dec, valfloat(Query_D100.fieldbyName('COD_INF').Astring))+'|';
      fValVal('Cadastro de Empresa ',mTabela,Query_D100.fieldbyName('COD_CTA').FieldName,Query_D100.fieldbyName('COD_CTA').AsString);
      mLinha:=mLinha+Query_D100.fieldbyName('COD_CTA').AsString+'|';

      Memo1.Lines.Add(mLinha);
      items_lista_BlocoD.Add(mLinha);

      Query_D101.Close;
      Query_D101.SQL.Clear;
      Query_D101.SQL.Add('SELECT '+QuotedStr('1')+' AS IND_NAT_FRT '
                        +',NSTOTNOTA AS VL_ITEM '
                        +','+QuotedStr(' ')+' AS CST_PIS '
                        +','+QuotedStr('00')+' AS NAT_BC_CRED '
                        +',NSTOTNOTA AS VL_BC_PIS '
                        +',NSTOTNOTA AS ALIQ_PIS '
                        +',NSTOTNOTA AS VL_PIS '
                        +',RPAD('+QuotedStr('  ')+',60,'+QuotedStr('  ')+') AS COD_CTA from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D101.Open;
       except
          end;



      // INICIO adentação registro d101
      mTabNivel_02:='TAB_d101';
      if not Query_D101.Eof then
         begin
         while not Query_D101.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_d101:=mQtdRegBloco_d101+1;
            mLinha:='|';
            mLinha:=mLinha+'d101|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('IND_NAT_FRT').FieldName,Query_D101.FieldbyName('IND_NAT_FRT').AsString);
            mLinha:=mLinha+Query_D101.FieldbyName('IND_NAT_FRT').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('VL_ITEM').FieldName,Query_D101.FieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D101.FieldbyName('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('CST_PIS').FieldName,Query_D101.FieldbyName('CST_PIS').AsString);
            mLinha:=mLinha+Query_D101.FieldbyName('CST_PIS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('NAT_BC_CRED').FieldName,Query_D101.FieldbyName('NAT_BC_CRED').AsString);
            mLinha:=mLinha+Query_D101.FieldbyName('NAT_BC_CRED').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('VL_BC_PIS').FieldName,Query_D101.FieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D101.FieldbyName('VL_BC_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('ALIQ_PIS').FieldName,Query_D101.FieldbyName('ALIQ_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D101.FieldbyName('ALIQ_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('VL_PIS').FieldName,Query_D101.FieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D101.FieldbyName('VL_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('COD_CTA').FieldName,Query_D101.FieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D101.FieldbyName('COD_CTA').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D101.Next;
            end;
         Query_D101.Close;
         end;
      // TERMINO adentação registro d101

      Query_D105.Close;
      Query_D105.SQL.Clear;
      Query_D105.SQL.Add('SELECT '+QuotedStr('1')+' AS IND_NAT_FRT,NSTOTNOTA AS VL_ITEM '
                        +','+QuotedStr(' ')+' AS CST_COFINS,'+QuotedStr('00')+' AS NAT_BC_CRED '
                        +',NSTOTNOTA AS VL_BC_COFINS,NSTOTNOTA AS ALIQ_COFINS '
                        +',NSTOTNOTA AS VL_COFINS,RPAD('+QuotedStr('  ')+',60,'+QuotedStr('  ')+') AS COD_CTA  '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D105.Open;
       except
          Query_D105.SQL.savetofile('c:\sql.txt');

          end;

      // INICIO adentação registro D105
      mTabNivel_02:='TAB_D105';
      if not Query_D105.Eof then
         begin
         while not Query_D105.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D105:=mQtdRegBloco_D105+1;
            mLinha:='|';
            mLinha:=mLinha+'D105|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D105.fieldbyName('IND_NAT_FRT').FieldName,Query_D105.fieldbyName('IND_NAT_FRT').AsString);
            mLinha:=mLinha+Query_D105.fieldbyName('IND_NAT_FRT').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D101.FieldbyName('VL_ITEM').FieldName,Query_D101.FieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D101.FieldbyName('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D105.fieldbyName('CST_COFINS').FieldName,Query_D105.fieldbyName('CST_COFINS').AsString);
            mLinha:=mLinha+Query_D105.fieldbyName('CST_COFINS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D105.fieldbyName('NAT_BC_CRED').FieldName,Query_D105.fieldbyName('NAT_BC_CRED').AsString);
            mLinha:=mLinha+Query_D105.fieldbyName('NAT_BC_CRED').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D105.fieldbyName('VL_BC_COFINS').FieldName,Query_D105.fieldbyName('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D105.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D105.fieldbyName('ALIQ_COFINS').FieldName,Query_D105.fieldbyName('ALIQ_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D105.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D105.fieldbyName('VL_COFINS').FieldName,Query_D105.fieldbyName('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D105.fieldbyName('VL_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D105.fieldbyName('COD_CTA').FieldName,Query_D105.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D105.fieldbyName('COD_CTA').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);
            Query_D105.Next;
            end;
         Query_D105.Close;
         end;
      // TERMINO adentação registro D105

      Query_D111.Close;
      Query_D111.SQL.Clear;
      Query_D111.SQL.Add('SELECT RPAD('+QuotedStr(' ')+',60,'+QuotedStr(' ')+') AS NUM_PROC ,'+QuotedStr('1')+' AS IND_PROC from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D111.Open;
       except
          end;

      // INICIO adentação registro D111
      mTabNivel_02:='TAB_D111';
      if NOT Query_D111.IsEmpty then
         begin
         while not Query_D111.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D111:=mQtdRegBloco_D111+1;
            mLinha:='|';
            mLinha:=mLinha+'D111|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D111.FieldbyName('NUM_PROC').FieldName,Query_D111.FieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+Query_D111.FieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D111.FieldbyName('IND_PROC').FieldName,Query_D111.FieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+Query_D111.FieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D111.Next;
            end;
         Query_D111.Close;
         end;
      // TERMINO adentação registro D111

      Query_D200.Close;
      Query_D200.SQL.Clear;
      Query_D200.SQL.Add('SELECT '+QuotedStr('00')+' as COD_MOD,'+QuotedStr('00')+' AS COD_SIT,'+QuotedStr('0000')+' AS SER '
                        +','+QuotedStr('000')+' AS SUB,000000000 AS NUM_DOC_INI,000000000 AS NUM_DOC_FIN '
                        +',0000 AS CFOP,SYSDATE AS DT_REF,NSTOTNOTA AS VL_DOC '
                        +',NSTOTNOTA AS VL_DESC from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D200.Open;
       except
          end;

      // INICIO adentação registro D200
      mTabNivel_02:='TAB_D200';
      if not query_d200.Eof then
         begin
         while not query_d200.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D200:=mQtdRegBloco_D200+1;
            mLinha:='|';
            mLinha:=mLinha+'D200|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('COD_MOD').FieldName,query_d200.fieldbyName('COD_MOD').AsString);
            mLinha:=mLinha+query_d200.fieldbyName('COD_MOD').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('COD_SIT').FieldName,query_d200.fieldbyName('COD_SIT').AsString);
            mLinha:=mLinha+query_d200.fieldbyName('COD_SIT').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('SER').FieldName,query_d200.fieldbyName('SER').AsString);
            mLinha:=mLinha+query_d200.fieldbyName('SER').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('SUB').FieldName,query_d200.fieldbyName('SUB').AsString);
            mLinha:=mLinha+query_d200.fieldbyName('SUB').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('NUM_DOC_INI').FieldName,query_d200.fieldbyName('NUM_DOC_INI').AsString);
            mLinha:=mLinha+query_d200.fieldbyName('NUM_DOC_INI').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('NUM_DOC_FIN').FieldName,query_d200.fieldbyName('NUM_DOC_FIN').AsString);
            mLinha:=mLinha+query_d200.fieldbyName('NUM_DOC_FIN').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('CFOP').FieldName,query_d200.fieldbyName('CFOP').AsString);
            mLinha:=mLinha+query_d200.fieldbyName('CFOP').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('DT_REF').FieldName,query_d200.fieldbyName('DT_REF').AsString);
            mLinha:=mLinha+FormatDateTime(fdt_efd, query_d200.fieldbyName('DT_REF').AsDateTime)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('VL_DOC').FieldName,query_d200.fieldbyName('VL_DOC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_d200.fieldbyName('VL_DOC').AsFloat)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_d200.fieldbyName('VL_DESC').FieldName,query_d200.fieldbyName('VL_DESC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_d200.fieldbyName('VL_DESC').AsFloat)+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            query_d200.Next;
            end;
         query_d200.Close;
         end;
      // TERMINO adentação registro D200


      Query_D201.Close;
      Query_D201.SQL.Clear;
      Query_D201.SQL.Add('SELECT '+QuotedStr(' ')+' as CST_PIS,NSTOTNOTA AS VL_ITEM '
                        +',NSTOTNOTA AS VL_BC_PIS '
                        +',NSTOTNOTA AS ALIQ_PIS,NSTOTNOTA AS VL_PIS '
                        +',RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D201.Open;
       except
          end;
      // INICIO adentação registro D201
      mTabNivel_02:='TAB_D201';

      if not Query_D201.IsEmpty then
         begin
         while not Query_D201.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D201:=mQtdRegBloco_D201+1;
            mLinha:='|';
            mLinha:=mLinha+'D201|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D201.fieldbyName('CST_PIS').FieldName,Query_D201.fieldbyName('CST_PIS').AsString);
            mLinha:=mLinha+Query_D201.fieldbyName('CST_PIS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D201.fieldbyName('VL_ITEM').FieldName,Query_D201.fieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D201.fieldbyName('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D201.fieldbyName('VL_BC_PIS').FieldName,Query_D201.fieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D201.fieldbyName('VL_BC_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D201.fieldbyName('ALIQ_PIS').FieldName,Query_D201.fieldbyName('ALIQ_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D201.fieldbyName('ALIQ_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D201.fieldbyName('VL_PIS').FieldName,Query_D201.fieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D201.fieldbyName('VL_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D201.fieldbyName('COD_CTA').FieldName,Query_D201.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D201.fieldbyName('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D201.Next;
            end;
         Query_D201.Close;
         end;
      // TERMINO adentação registro D201

      Query_D205.Close;
      Query_D205.SQL.Clear;
      Query_D205.SQL.Add('SELECT '+QuotedStr(' ')+' as CST_COFINS ,NSTOTNOTA AS VL_ITEM '
                        +',NSTOTNOTA AS VL_BC_COFINS,NSTOTNOTA AS ALIQ_COFINS '
                        +',NSTOTNOTA AS VL_COFINS '
                        +',RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D205.Open;
       except
          end;

      // INICIO adentação registro D205
      mTabNivel_02:='TAB_D205';
      if not Query_D205.Eof  then
         begin
         while not Query_D205.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D205:=mQtdRegBloco_D205+1;
            mLinha:='|';
            mLinha:=mLinha+'D205|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D205.fieldbyName('CST_COFINS').FieldName,Query_D205.fieldbyName('CST_COFINS').AsString);
            mLinha:=mLinha+Query_D205.fieldbyName('CST_COFINS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D205.fieldbyName('VL_ITEM').FieldName,Query_D205.fieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D205.fieldbyName('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D205.fieldbyName('VL_BC_COFINS').FieldName,Query_D205.fieldbyName('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D205.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D205.fieldbyName('ALIQ_COFINS').FieldName,Query_D205.fieldbyName('ALIQ_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec, Query_D205.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D205.fieldbyName('VL_COFINS').FieldName,Query_D205.fieldbyName('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D205.fieldbyName('VL_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D205.fieldbyName('COD_CTA').FieldName,Query_D205.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D205.fieldbyName('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D205.Next;
            end;
         Query_D205.Close;
         end;
      // TERMINO adentação registro D205


      Query_D209.Close;
      Query_D209.SQL.Clear;
      Query_D209.SQL.Add('SELECT RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS NUM_PROC,'+QuotedStr('1')+' AS IND_PROC '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D209.Open;
       except
          end;
      // INICIO adentação registro D209
      mTabNivel_02:='TAB_D209';
      if not Query_D209.Eof  then
         begin
         while not Query_D209.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D209:=mQtdRegBloco_D209+1;
            mLinha:='|';
            mLinha:=mLinha+'D209|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D209.fieldbyName('NUM_PROC').FieldName,Query_D209.fieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+Query_D209.fieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D209.fieldbyName('IND_PROC').FieldName,Query_D209.fieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+Query_D209.fieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D209.Next;
            end;
         Query_D209.Close;
         end;
      // TERMINO adentação registro D209

      Query_D300.Close;
      Query_D300.SQL.Clear;
      Query_D300.SQL.Add('SELECT '+QuotedStr('00')+' as COD_MOD,'+QuotedStr('0000')+' AS SER '
                        +','+QuotedStr('000')+' AS SUB ,000000 AS NUM_DOC_INI '
                        +',000000 AS NUM_DOC_FIN,0000 AS CFOP '
                        +',SYSDATE AS DT_REF,NSTOTNOTA AS VL_DOC '
                        +',NSTOTNOTA AS VL_DESC,'+QuotedStr(' ')+' AS CST_PIS '
                        +',NSTOTNOTA AS VL_BC_PIS,NSTOTNOTA AS ALIQ_PIS '
                        +',NSTOTNOTA AS VL_PIS,'+QuotedStr('99')+' AS CST_COFINS '
                        +',NSTOTNOTA AS VL_BC_COFINS,NSTOTNOTA AS ALIQ_COFINS '
                        +',NSTOTNOTA AS VL_COFINS,RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D300.Open;
       except
          end;


      // INICIO adentação registro D300
      mTabNivel_02:='TAB_D300';
      if not Query_D300.IsEmpty then
         begin
         while not Query_D300.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D300:=mQtdRegBloco_D300+1;
            mLinha:='|';
            mLinha:=mLinha+'D300|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('COD_MOD').FieldName,Query_D300.FieldbyName('COD_MOD').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('COD_MOD').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('SER').FieldName,Query_D300.FieldbyName('SER').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('SER').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('SUB').FieldName,Query_D300.FieldbyName('SUB').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('SUB').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('NUM_DOC_INI').FieldName,Query_D300.FieldbyName('NUM_DOC_INI').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('NUM_DOC_INI').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('NUM_DOC_FIN').FieldName,Query_D300.FieldbyName('NUM_DOC_FIN').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('NUM_DOC_FIN').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('CFOP').FieldName,Query_D300.FieldbyName('CFOP').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('CFOP').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('DT_REF').FieldName,Query_D300.FieldbyName('DT_REF').AsString);
            mLinha:=mLinha+FormatdateTime(fdt_efd,Query_D300.FieldbyName('DT_REF').AsDateTime)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('VL_DOC').FieldName,Query_D300.FieldbyName('VL_DOC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D300.FieldbyName('VL_DOC').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('VL_DESC').FieldName,Query_D300.FieldbyName('VL_DESC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D300.FieldbyName('VL_DESC').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('CST_PIS').FieldName,Query_D300.FieldbyName('CST_PIS').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('CST_PIS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('VL_BC_PIS').FieldName,Query_D300.FieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D300.FieldbyName('VL_BC_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('ALIQ_PIS').FieldName,Query_D300.FieldbyName('ALIQ_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D300.FieldbyName('ALIQ_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('VL_PIS').FieldName,Query_D300.FieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D300.FieldbyName('VL_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('CST_COFINS').FieldName,Query_D300.FieldbyName('CST_COFINS').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('CST_COFINS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('VL_BC_COFINS').FieldName,Query_D300.FieldbyName('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D300.FieldbyName('VL_BC_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('ALIQ_COFINS').FieldName,Query_D300.FieldbyName('ALIQ_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D300.FieldbyName('ALIQ_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('VL_COFINS').FieldName,Query_D300.FieldbyName('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D300.FieldbyName('VL_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D300.FieldbyName('COD_CTA').FieldName,Query_D300.FieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D300.FieldbyName('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D300.Next;
            end;
         Query_D300.Close;
         end;
      // TERMINO adentação registro D300

      Query_D309.Close;
      Query_D309.SQL.Clear;
      Query_D309.SQL.Add('SELECT RPAD('+QuotedStr('0')+',20,'+QuotedStr('0')+') AS NUM_PROC '
                        +','+QuotedStr('1')+' AS IND_PROC '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D309.Open;
       except
          end;

      // INICIO adentação registro D309
      mTabNivel_02:='TAB_D309';

      if not Query_D309.IsEmpty then
         begin
         while not Query_D309.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D309:=mQtdRegBloco_D309+1;
            mLinha:='|';
            mLinha:=mLinha+'D309|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D309.fieldbyName('NUM_PROC').FieldName,Query_D309.fieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+Query_D309.fieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D309.fieldbyName('IND_PROC').FieldName,Query_D309.fieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+Query_D309.fieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D309.Next;
            end;
         Query_D309.Close;
         end;
      // TERMINO adentação registro D309

      Query_D350.Close;
      Query_D350.SQL.Clear;
      Query_D350.SQL.Add('SELECT '+QuotedStr('00')+' as COD_MOD,RPAD('+QuotedStr('0')+',20,'+QuotedStr('0')+') AS ECF_MOD '
                        +',RPAD('+QuotedStr('0')+',20,'+QuotedStr('0')+') AS ECF_FAB,SYSDATE AS DT_DOC '
                        +','+QuotedStr('000')+' AS CRO,000000 AS CRZ,000000 AS NUM_COO_FIN '
                        +',NSTOTNOTA AS GT_FIN,NSTOTNOTA AS VL_BRT,'+QuotedStr(' ')+' AS CST_PIS '
                        +',NSTOTNOTA AS VL_BC_PIS,NSTOTNOTA AS ALIQ_PIS '
                        +',NSTOTNOTA AS QUANT_BC_PIS,NSTOTNOTA AS ALIQ_PIS_QUANT '
                        +',NSTOTNOTA AS VL_PIS,'+QuotedStr('99')+' AS CST_COFINS '
                        +',NSTOTNOTA AS VL_BC_COFINS ,NSTOTNOTA AS ALIQ_COFINS '
                        +',NSTOTNOTA AS QUANT_BC_COFINS,NSTOTNOTA AS ALIQ_COFINS_QUANT '
                        +',NSTOTNOTA AS VL_COFINS,RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D350.Open;
       except
          end;

      // INICIO adentação registro D350
      mTabNivel_02:='TAB_D350';
      if NOT Query_D350.IsEmpty then
         begin
         while not Query_D350.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D350:=mQtdRegBloco_D350+1;
            mLinha:='|';
            mLinha:=mLinha+'D350|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('COD_MOD').FieldName,Query_D350.fieldbyName('COD_MOD').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('COD_MOD').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('ECF_MOD').FieldName,Query_D350.fieldbyName('ECF_MOD').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('ECF_MOD').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('ECF_FAB').FieldName,Query_D350.fieldbyName('ECF_FAB').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('ECF_FAB').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('DT_DOC').FieldName,Query_D350.fieldbyName('DT_DOC').AsString);
            mLinha:=mLinha+FormatDateTime(fdt_efd,Query_D350.fieldbyName('DT_DOC').AsDateTime)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('CRO').FieldName,Query_D350.fieldbyName('CRO').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('CRO').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('CRZ').FieldName,Query_D350.fieldbyName('CRZ').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('CRZ').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('NUM_COO_FIN').FieldName,Query_D350.fieldbyName('NUM_COO_FIN').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('NUM_COO_FIN').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('GT_FIN').FieldName,Query_D350.fieldbyName('GT_FIN').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D350.fieldbyName('GT_FIN').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('VL_BRT').FieldName,Query_D350.fieldbyName('VL_BRT').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D350.fieldbyName('VL_BRT').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('CST_PIS').FieldName,Query_D350.fieldbyName('CST_PIS').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('CST_PIS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('VL_BC_PIS').FieldName,Query_D350.fieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D350.fieldbyName('VL_BC_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('ALIQ_PIS').FieldName,Query_D350.fieldbyName('ALIQ_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec, Query_D350.fieldbyName('ALIQ_PIS').AsFloat)+'|';
            if Query_D350.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
              begin
              fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('QUANT_BC_PIS').FieldName,Query_D350.fieldbyName('QUANT_BC_PIS').AsString);
              mLinha:=mLinha+FormatFloat(mCasas3Dec, Query_D350.fieldbyName('QUANT_BC_PIS').AsFloat)+'|';
              end
            else
              begin
              mLinha:=mLinha+'|';
              end;

            if Query_D350.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
              begin
              fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('ALIQ_PIS_QUANT').FieldName,Query_D350.fieldbyName('ALIQ_PIS_QUANT').AsString);
              mLinha:=mLinha+FormatFloat(mCasas4Dec, Query_D350.fieldbyName('ALIQ_PIS_QUANT').AsFloat)+'|';
              end
            else
              begin
              mLinha:=mLinha+'|';
              end;
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('VL_PIS').FieldName,Query_D350.fieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D350.fieldbyName('VL_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('CST_COFINS').FieldName,Query_D350.fieldbyName('CST_COFINS').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('CST_COFINS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('VL_BC_COFINS').FieldName,Query_D350.fieldbyName('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D350.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('ALIQ_COFINS').FieldName,Query_D350.fieldbyName('ALIQ_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D350.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
            if Query_D350.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
              begin
              fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('QUANT_BC_COFINS').FieldName,Query_D350.fieldbyName('QUANT_BC_COFINS').AsString);
              mLinha:=mLinha+FormatFloat(mCasas3Dec,Query_D350.fieldbyName('QUANT_BC_COFINS').AsFloat)+'|';
              end
            else
              begin
              mLinha:=mLinha+'|';
              end;
            if Query_D350.fieldbyName('ALIQ_COFINS_QUANT').AsFloat  > 0 then
              begin
              fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('ALIQ_COFINS_QUANT').FieldName,Query_D350.fieldbyName('ALIQ_COFINS_QUANT').AsString);
              mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D350.fieldbyName('ALIQ_COFINS_QUANT').AsFloat)+'|';
              end
            else
              begin
              mLinha:=mLinha+'|';
              end;
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('VL_COFINS').FieldName,Query_D350.fieldbyName('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D350.fieldbyName('VL_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D350.fieldbyName('COD_CTA').FieldName,Query_D350.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D350.fieldbyName('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D350.Next;
            end;
         Query_D350.Close;
         end;
      // TERMINO adentação registro D350


      Query_D359.Close;
      Query_D359.SQL.Clear;
      Query_D359.SQL.Add('SELECT RPAD('+QuotedStr('0')+',20,'+QuotedStr('0')+') AS NUM_PROC ,'+QuotedStr('1')+' AS IND_PROC '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D359.Open;
       except
          end;


      // INICIO adentação registro D359
      mTabNivel_02:='TAB_D359';
      if not Query_D359.IsEmpty then
         begin
         while not Query_D359.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D359:=mQtdRegBloco_D359+1;
            mLinha:='|';
            mLinha:=mLinha+'D359|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D359.fieldbyName('NUM_PROC').FieldName,Query_D359.fieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+Query_D359.fieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D359.fieldbyName('IND_PROC').FieldName,Query_D359.fieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+Query_D359.fieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D359.Next;
            end;
         Query_D359.Close;
         end;
      // TERMINO adentação registro D359

      Query_D500.Close;
      Query_D500.SQL.Clear;
      Query_D500.SQL.Add('SELECT '+QuotedStr('1')+' AS IND_OPER,'+QuotedStr('1')+' AS IND_EMIT ,'
                        +' RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_PART,'+QuotedStr('00')+' AS COD_MOD '
                        +','+QuotedStr('00')+' AS COD_SIT,'+QuotedStr('0000')+' AS SER,'+QuotedStr('000')+' AS SUB '
                        +',000000000 AS NUM_DOC,SYSDATE AS DT_DOC'
                        +',SYSDATE AS DT_A_P,NSTOTNOTA AS VL_DOC '
                        +',NSTOTNOTA AS VL_DESC,NSTOTNOTA AS VL_SERV '
                        +',NSTOTNOTA AS VL_SERV_NT,NSTOTNOTA AS VL_TERC '
                        +',NSTOTNOTA AS VL_DA,NSTOTNOTA AS VL_BC_ICMS '
                        +',NSTOTNOTA AS VL_ICMS,'+QuotedStr('000000')+' AS COD_INF '
                        +',NSTOTNOTA AS VL_PIS,NSTOTNOTA AS VL_COFINS '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D500.Open;
       except
          end;

      // INICIO adentação registro D500

      mTabNivel_02:='TAB_D500';
      if not Query_D500.IsEmpty then
         begin
         while not Query_D500.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D500:=mQtdRegBloco_D500+1;
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
            mLinha:=mLinha+Query_D500.fieldbyName('SER').AsString+'|';
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

            Query_D500.Next;
            end;
         Query_D500.Close;
         end;
      // TERMINO adentação registro D500

      Query_D501.Close;
      Query_D501.SQL.Clear;
      Query_D501.SQL.Add('SELECT '+QuotedStr(' ')+' AS CST_PIS ,NSTOTNOTA AS VL_ITEM '
                        +','+QuotedStr('CC')+' AS NAT_BC_CRED,NSTOTNOTA AS VL_BC_PIS '
                        +',NSTOTNOTA AS ALIQ_PIS,NSTOTNOTA AS VL_PIS '
                        +',RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D501.Open;
       except
          end;


      // INICIO adentação registro D501
      mTabNivel_02:='TAB_D501';
      if not Query_D501.Eof  then
         begin
         while not Query_D501.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D501:=mQtdRegBloco_D501+1;
            mLinha:='|';
            mLinha:=mLinha+'D501|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D501.fieldbyName('CST_PIS').FieldName,Query_D501.fieldbyName('CST_PIS').AsString);
            mLinha:=mLinha+Query_D501.fieldbyName('CST_PIS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D501.fieldbyName('VL_ITEM').FieldName,Query_D501.fieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D501.fieldbyName('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D501.fieldbyName('NAT_BC_CRED').FieldName,Query_D501.fieldbyName('NAT_BC_CRED').AsString);
            mLinha:=mLinha+Query_D501.fieldbyName('NAT_BC_CRED').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D501.fieldbyName('VL_BC_PIS').FieldName,Query_D501.fieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D501.fieldbyName('VL_BC_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D501.fieldbyName('ALIQ_PIS').FieldName,Query_D501.fieldbyName('ALIQ_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec,Query_D501.fieldbyName('ALIQ_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D501.fieldbyName('VL_PIS').FieldName,Query_D501.fieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_D501.fieldbyName('VL_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D501.fieldbyName('COD_CTA').FieldName,Query_D501.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D501.fieldbyName('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D501.Next;
            end;
         Query_D501.Close;
         end;
      // TERMINO adentação registro D501

      Query_D505.Close;
      Query_D505.SQL.Clear;
      Query_D505.SQL.Add('SELECT '+QuotedStr(' ')+' AS CST_COFINS,NSTOTNOTA AS VL_ITEM '
                        +','+QuotedStr('CC')+' AS NAT_BC_CRED,NSTOTNOTA AS VL_BC_COFINS '
                        +',NSTOTNOTA AS ALIQ_COFINS,NSTOTNOTA AS VL_COFINS '
                        +',RPAD('+QuotedStr('1')+',60,'+QuotedStr('0')+') AS COD_CTA from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D505.Open;
       except
          end;


      // INICIO adentação registro D505
      mTabNivel_02:='TAB_D505';
      if not query_D505.IsEmpty then
         begin
         while not query_D505.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D505:=mQtdRegBloco_D505+1;
            mLinha:='|';
            mLinha:=mLinha+'D505|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D505.fieldbyName('CST_COFINS').FieldName,query_D505.fieldbyName('CST_COFINS').AsString);
            mLinha:=mLinha+query_D505.fieldbyName('CST_COFINS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D505.fieldbyName('VL_ITEM').FieldName,query_D505.fieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D505.fieldbyName('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D505.fieldbyName('NAT_BC_CRED').FieldName,query_D505.fieldbyName('NAT_BC_CRED').AsString);
            mLinha:=mLinha+query_D505.fieldbyName('NAT_BC_CRED').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D505.fieldbyName('VL_BC_COFINS').FieldName,query_D505.fieldbyName('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D505.fieldbyName('VL_BC_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D505.fieldbyName('ALIQ_COFINS').FieldName,query_D505.fieldbyName('ALIQ_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec, query_D505.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D505.fieldbyName('VL_COFINS').FieldName,query_D505.fieldbyName('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D505.fieldbyName('VL_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D505.fieldbyName('COD_CTA').FieldName,query_D505.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+query_D505.fieldbyName('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            query_D505.Next;
            end;
         query_D505.Close;
         end;
      // TERMINO adentação registro D505

      Query_D509.Close;
      Query_D509.SQL.Clear;
      Query_D509.SQL.Add('SELECT RPAD('+QuotedStr('0')+',20,'+QuotedStr('0')+') AS NUM_PROC ,'+QuotedStr('1')+' AS IND_PROC '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D509.Open;
       except
          end;

      // INICIO adentação registro D509
      mTabNivel_02:='TAB_D509';
      if not Query_D509.Eof then
         begin
         while not Query_D509.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D509:=mQtdRegBloco_D509+1;
            mLinha:='|';
            mLinha:=mLinha+'D509|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D509.fieldbyName('NUM_PROC').FieldName,Query_D509.fieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+Query_D509.fieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D509.fieldbyName('IND_PROC').FieldName,Query_D509.fieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+Query_D509.fieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D509.Next;
            end;
         Query_D509.Close;
         end;
      // TERMINO adentação registro D509

      Query_D600.Close;
      Query_D600.SQL.Clear;
      Query_D600.SQL.Add('SELECT '+QuotedStr('01')+' AS COD_MOD,0000000 AS COD_MUN,'+QuotedStr('0OCC')+' AS SER '
                        +','+QuotedStr('000')+' AS SUB,'+QuotedStr('0')+' AS IND_REC,0000000000000 AS QTD_CONS '
                        +',SYSDATE AS DT_DOC_INI,SYSDATE AS DT_DOC_FIN '
                        +',NSTOTNOTA AS VL_DOC,NSTOTNOTA AS VL_DESC'
                        +',NSTOTNOTA AS VL_SERV,NSTOTNOTA AS VL_SERV_NT '
                        +',NSTOTNOTA AS VL_TERC,NSTOTNOTA AS VL_DA'
                        +',NSTOTNOTA AS VL_BC_ICMS,NSTOTNOTA AS VL_ICMS '
                        +',NSTOTNOTA AS VL_PIS,NSTOTNOTA AS VL_COFINS '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D600.Open;
       except
          end;

      // INICIO adentação registro D600

      mTabNivel_02:='TAB_D600';
      if not query_D600.isEmpty then
         begin
         while not query_D600.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D600:=mQtdRegBloco_D600+1;
            mLinha:='|';
            mLinha:=mLinha+'D600|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('COD_MOD').FieldName,query_D600.FieldbyName('COD_MOD').AsString);
            mLinha:=mLinha+query_D600.FieldbyName('COD_MOD').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('COD_MUN').FieldName,query_D600.FieldbyName('COD_MUN').AsString);
            mLinha:=mLinha+query_D600.FieldbyName('COD_MUN').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('SER').FieldName,query_D600.FieldbyName('SER').AsString);
            mLinha:=mLinha+query_D600.FieldbyName('SER').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('SUB').FieldName,query_D600.FieldbyName('SUB').AsString);
            mLinha:=mLinha+query_D600.FieldbyName('SUB').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('IND_REC').FieldName,query_D600.FieldbyName('IND_REC').AsString);
            mLinha:=mLinha+query_D600.FieldbyName('IND_REC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('QTD_CONS').FieldName,query_D600.FieldbyName('QTD_CONS').AsString);
            mLinha:=mLinha+query_D600.FieldbyName('QTD_CONS').AsString+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('DT_DOC_INI').FieldName,query_D600.FieldbyName('DT_DOC_INI').AsString);
            mLinha:=mLinha+FormatDateTime(fdt_efd, query_D600.FieldbyName('DT_DOC_INI').AsDateTime)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('DT_DOC_FIN').FieldName,query_D600.FieldbyName('DT_DOC_FIN').AsString);
            mLinha:=mLinha+FormatDateTime(fdt_efd, query_D600.FieldbyName('DT_DOC_FIN').AsDateTime)+'|';

            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_DOC').FieldName,query_D600.FieldbyName('VL_DOC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_DOC').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_DESC').FieldName,query_D600.FieldbyName('VL_DESC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_DESC').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_SERV').FieldName,query_D600.FieldbyName('VL_SERV').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_SERV').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_SERV_NT').FieldName,query_D600.FieldbyName('VL_SERV_NT').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_SERV_NT').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_TERC').FieldName,query_D600.FieldbyName('VL_TERC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_TERC').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_DA').FieldName,query_D600.FieldbyName('VL_DA').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_DA').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_BC_ICMS').FieldName,query_D600.FieldbyName('VL_BC_ICMS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_BC_ICMS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_ICMS').FieldName,query_D600.FieldbyName('VL_ICMS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_ICMS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_PIS').FieldName,query_D600.FieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,query_D600.FieldbyName('VL_COFINS').FieldName,query_D600.FieldbyName('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, query_D600.FieldbyName('VL_COFINS').AsFloat)+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            query_D600.Next;
            end;
         query_D600.Close;
         end;
      // TERMINO adentação registro D600

      Query_D601.Close;
      Query_D601.SQL.Clear;
      Query_D601.SQL.Add('SELECT '+QuotedStr('0001')+' AS COD_CLASS,NSTOTNOTA AS VL_ITEM '
                        +',NSTOTNOTA AS VL_DESC,'+QuotedStr(' ')+' AS CST_PIS '
                        +',NSTOTNOTA AS VL_BC_PIS,NSTOTNOTA AS ALIQ_PIS '
                        +',NSTOTNOTA AS VL_PIS ,RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D601.Open;
       except
          end;


      // INICIO adentação registro D601
      mTabNivel_02:='TAB_D601';
      if not Query_D601.IsEmpty then
         begin
         while not Query_D601.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D601:=mQtdRegBloco_D601+1;
            mLinha:='|';
            mLinha:=mLinha+'D601|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('COD_CLASS').FieldName,Query_D601.fieldbyName('COD_CLASS').AsString);
            mLinha:=mLinha+Query_D601.fieldbyName('COD_CLASS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('VL_ITEM').FieldName,Query_D601.fieldbyName('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D601.fieldbyName('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('VL_DESC').FieldName,Query_D601.fieldbyName('VL_DESC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D601.fieldbyName('VL_DESC').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('CST_PIS').FieldName,Query_D601.fieldbyName('CST_PIS').AsString);
            mLinha:=mLinha+Query_D601.fieldbyName('CST_PIS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('VL_BC_PIS').FieldName,Query_D601.fieldbyName('VL_BC_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D601.fieldbyName('VL_BC_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('ALIQ_PIS').FieldName,Query_D601.fieldbyName('ALIQ_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec, Query_D601.fieldbyName('ALIQ_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('VL_PIS').FieldName,Query_D601.fieldbyName('VL_PIS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D601.fieldbyName('VL_PIS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D601.fieldbyName('COD_CTA').FieldName,Query_D601.fieldbyName('COD_CTA').AsString);
            mLinha:=mLinha+Query_D601.fieldbyName('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D601.Next;
            end;
         Query_D601.Close;
         end;
      // TERMINO adentação registro D601

      Query_D605.Close;
      Query_D605.SQL.Clear;
      Query_D605.SQL.Add('SELECT '+QuotedStr('0001')+' AS COD_CLASS ,NSTOTNOTA AS VL_ITEM '
                        +',NSTOTNOTA AS VL_DESC,'+QuotedStr(' ')+' AS CST_COFINS '
                        +',NSTOTNOTA AS VL_BC_COFINS,NSTOTNOTA AS ALIQ_COFINS '
                        +',NSTOTNOTA AS VL_COFINS,RPAD('+QuotedStr('0')+',60,'+QuotedStr('0')+') AS COD_CTA '
                        +' from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D605.Open;
       except
          end;


      // INICIO adentação registro D605

      mTabNivel_02:='TAB_D605';
      if not Query_D605.IsEmpty then
         begin
         while not Query_D605.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D605:=mQtdRegBloco_D605+1;
            mLinha:='|';
            mLinha:=mLinha+'D605|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('COD_CLASS').FieldName,Query_D605.fieldbyname('COD_CLASS').AsString);
            mLinha:=mLinha+Query_D605.fieldbyname('COD_CLASS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('VL_ITEM').FieldName,Query_D605.fieldbyname('VL_ITEM').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D605.fieldbyname('VL_ITEM').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('VL_DESC').FieldName,Query_D605.fieldbyname('VL_DESC').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D605.fieldbyname('VL_DESC').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('VL_COFINS').FieldName,Query_D605.fieldbyname('VL_COFINS').AsString);
            mLinha:=mLinha+Query_D605.fieldbyname('VL_COFINS').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('VL_BC_COFINS').FieldName,Query_D605.fieldbyname('VL_BC_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D605.fieldbyname('VL_BC_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('ALIQ_COFINS').FieldName,Query_D605.fieldbyname('ALIQ_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas4Dec, Query_D605.fieldbyname('ALIQ_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('VL_COFINS').FieldName,Query_D605.fieldbyname('VL_COFINS').AsString);
            mLinha:=mLinha+FormatFloat(mCasas2Dec, Query_D605.fieldbyname('VL_COFINS').AsFloat)+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D605.fieldbyname('COD_CTA').FieldName,Query_D605.fieldbyname('COD_CTA').AsString);
            mLinha:=mLinha+Query_D605.fieldbyname('COD_CTA').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D605.Next;
            end;
         Query_D605.Close;
         end;
      // TERMINO adentação registro D605

      Query_D609.Close;
      Query_D609.SQL.Clear;
      Query_D609.SQL.Add('SELECT RPAD('+QuotedStr('0')+',20,'+QuotedStr('0')+') AS NUM_PROC '
                        +','+QuotedStr('1')+' AS IND_PROC  from CADNS '
                        +' where NSNUMERO=-9999999 ');
       try
          Query_D609.Open;
       except
          end;


      // INICIO adentação registro D609
      mTabNivel_02:='TAB_D609';
      if not Query_D609.Eof then
         begin
         while not Query_D609.Eof do
            begin
            mQtdRegBlocoD:=mQtdRegBlocoD+1;
            mQtdRegBloco_D609:=mQtdRegBloco_D609+1;
            mLinha:='|';
            mLinha:=mLinha+'D609|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D609.fieldbyName('NUM_PROC').FieldName,Query_D609.fieldbyName('NUM_PROC').AsString);
            mLinha:=mLinha+Query_D609.fieldbyName('NUM_PROC').AsString+'|';
            fValVal('Cadastro de Empresa ',mTabNivel_02,Query_D609.fieldbyName('IND_PROC').FieldName,Query_D609.fieldbyName('IND_PROC').AsString);
            mLinha:=mLinha+Query_D609.fieldbyName('IND_PROC').AsString+'|';

            Memo1.Lines.Add(mLinha);
            items_lista_BlocoD.Add(mLinha);

            Query_D609.Next;
            end;
         Query_D609.Close;
         end;
      // TERMINO adentação registro D609
      Query_D100.Next;
      end;
   Query_D100.Close;
   end;

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


Query_D010.Close;
FreeandNil(Query_D010);


Query_D100.Close;
FreeandNil(Query_D100);

Query_D101.Close;
FreeandNil(Query_D101);

Query_D105.Close;
FreeandNil(Query_D105);

Query_D111.Close;
FreeandNil(Query_D111);

Query_D200.Close;
FreeandNil(Query_D200);

Query_D201.Close;
FreeandNil(Query_D201);

Query_D205.Close;
FreeandNil(Query_D205);

Query_D209.Close;
FreeandNil(Query_D209);

Query_D300.Close;
FreeandNil(Query_D300);

Query_D309.Close;
FreeandNil(Query_D309);

Query_D350.Close;
FreeandNil(Query_D350);

Query_D359.Close;
FreeandNil(Query_D359);

Query_D500.Close;
FreeandNil(Query_D500);

Query_D501.Close;
FreeandNil(Query_D501);

Query_D505.Close;
FreeandNil(Query_D505);

Query_D509.Close;
FreeandNil(Query_D509);


Query_D600.Close;
FreeandNil(Query_D600);

Query_D601.Close;
FreeandNil(Query_D601);

Query_D605.Close;
FreeandNil(Query_D605);

Query_D609.Close;
FreeandNil(Query_D609);

result:=true;
end;
//Termino do bloco D



//Inicio Bloco F
function TFrm_SPED_EFD_PisCofins.fBlocoF(pOrigem: Integer): Boolean;
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
if not Query_F010.isEmpty then
   begin
   mLinha:='|F001|0|'; // com dados
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
                  +',NSTOTNOTA AS VL_OPER'
                  +' , '+ QuotedStr(' ')+' AS CST_PIS '
                  +',NSTOTNOTA AS VL_BC_PIS,NSTOTNOTA AS ALIQ_PIS '
                  +',NSTOTNOTA AS VL_PIS,'+QuotedStr('99')+' AS CST_COFINS '
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
if not query_F100.IsEmpty then
   begin
   while not query_F100.Eof do
      begin
//      if query_F100.fieldbyName('VL_PIS').AsFloat>0 then
         begin
         fGerarM100(copy(CB_COD_CRED_M100.Text,1,3) // pCod_Cred: String;
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


         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo

            begin

            fGerarM105('01' // pNAT_BC_CRED  02
                   ,query_F100.fieldbyName('CST_PIS').AsString //,pCST_PIS: string; 03
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat  // pVL_BC_PIS_TOT  04
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat  //  pVL_BC_PIS_CUM   05
                   ,0 // ,pVL_BC_PIS_NC
                   ,0 // ,pVL_BC_PIS
                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT
                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  // pQUANT_BC_PIS  : real;
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;
                   );

            fGerarM200(false,0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0 //  pVL_CONT_NC_REC
                   ,query_F100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,query_F100.fieldbyName('VL_PIS').AsFloat  // 12 pVL_CONT_CUM_REC
                   ,query_F100.fieldbyName('VL_PIS').AsFloat // 13 pVL_TOT_CONT_REC);
                   );
            end
         else
            begin
            fGerarM105('01' // pNAT_BC_CRED  02
                   ,query_F100.fieldbyName('CST_PIS').AsString //,pCST_PIS: string; 03
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat  // pVL_BC_PIS_TOT  04
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat  //  pVL_BC_PIS_CUM   05
                   ,0 // ,pVL_BC_PIS_NC
                   ,0 // ,pVL_BC_PIS
                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  //  pQUANT_BC_PIS_TOT
                   ,query_F100.fieldbyName('QUANT_BC_PIS').AsFloat  // pQUANT_BC_PIS  : real;
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;
                   );

            fGerarM200(false,query_F100.fieldbyName('VL_PIS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_F100.fieldbyName('VL_PIS').AsFloat*-1 // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_F100.fieldbyName('VL_PIS').AsFloat*-1 //  08 pVL_CONT_NC_REC
                   ,0 // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,query_F100.fieldbyName('VL_PIS').AsFloat*-1  // 13 pVL_TOT_CONT_REC);
                   );
            end;

         fGerarM205(false,query_F100.fieldbyName('VL_PIS').AsFloat
         ,query_F100.fieldbyName('VL_DOC').asfloat,query_F100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text
         ,query_f100.fieldbyName('COD_CTA').AsString,'' );


         fGerarM210(copy(edt_COD_CONT.text,1,2) // pCOD_CONT: String;
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_REC_BRT
                   ,query_F100.fieldbyName('VL_BC_PIS').AsFloat //  pVL_BC_CONT

                   , 0  // pVL_AJUS_ACRES_BC_PIS 05
                   , 0  // pVL_AJUS_REDUC_BC_PIS 06
                   , query_F100.fieldbyName('VL_BC_PIS').AsFloat // pVL_BC_CONT_AJUS 07
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


//      if query_F100.fieldbyName('VL_COFINS').AsFloat>0 then
         begin
         fGerarM500(copy(CB_COD_CRED_M100.Text,1,3) // pCod_Cred: String;
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

         if valint(copy(cb_COD_INC_TRIB.text,1,1))=2 then // acumulativo
            begin
           fGerarM505('01' // pNAT_BC_CRED 02
                   ,query_F100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string; 03
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT    04
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat  //  pVL_BC_COFINS_CUM    05
                   ,0 // ,pVL_BC_COFINS_NC 06
                   ,0 // ,pVL_BC_COFINS
                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT 07
                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real; 08
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;                              09
                   );

            fGerarM600(false,0 // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,0 // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,0 //  pVL_CONT_NC_REC
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat // 12 pVL_CONT_CUM_REC
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat // 13 pVL_TOT_CONT_REC);
                   );
            end
         else
            begin
            fGerarM505('01' // pNAT_BC_CRED 02
                   ,query_F100.fieldbyName('CST_COFINS').AsString //,pCST_COFINS: string; 03
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat  // pVL_BC_COFINS_TOT    04
                   ,9  //  pVL_BC_COFINS_CUM    05
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat // ,pVL_BC_COFINS_NC 06
                   ,0 // ,pVL_BC_COFINS
                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  //  pQUANT_BC_COFINS_TOT 07
                   ,query_F100.fieldbyName('QUANT_BC_COFINS').AsFloat  // pQUANT_BC_COFINS  : real; 08
                   ,edt_DESC_CRED.Text //   pDESC_CRED: String): Boolean;                              09
                   );

            fGerarM600(false,query_F100.fieldbyName('VL_COFINS').AsFloat // pVL_TOT_CONT_NC_PER
                   ,0 //pVL_TOT_CRED_DESC
                   ,0 //pVL_TOT_CRED_DESC_ANT
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat*-1 // 05 pVL_TOT_CONT_NC_DEV
                   ,0 // pVL_RET_NC
                   ,0 //,pVL_OUT_DED_NC
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat*-1 //  08 pVL_CONT_NC_REC
                   ,0 // pVL_TOT_CONT_CUM_PER
                   ,0 // pVL_RET_CUM
                   ,0 // pVL_OUT_DED_CUM
                   ,0 // pVL_CONT_CUM_REC
                   ,query_F100.fieldbyName('VL_COFINS').AsFloat*-1 // 13pVL_TOT_CONT_REC);
                   );
            end;

         fGerarM205(false,query_F100.fieldbyName('VL_COFINS').AsFloat
         ,query_F100.fieldbyName('VL_DOC').asfloat,query_F100.fieldbyName('CST_PIS').AsString, edt_tab4_3_10_pis.text
         ,query_f100.fieldbyName('COD_CTA').AsString,'');

         fGerarM610('01' // pCOD_CONT: String;
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_REC_BRT
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT
                   , 0  // pVL_AJUS_ACRES_BC_PIS 05
                   , 0  // pVL_AJUS_REDUC_BC_PIS 06
                   ,query_F100.fieldbyName('VL_BC_COFINS').AsFloat //  pVL_BC_CONT_AJUS 07

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
                          +'        ,NSTOTNOTA AS PARC_OPER_NAO_BC_CRED       '
                            +' , '+ QuotedStr(' ')+' AS CST_PIS '
                          +'        ,NSTOTNOTA AS VL_BC_PIS        ,NSTOTNOTA AS ALIQ_PIS        ,NSTOTNOTA AS VL_PIS '
                          +'        ,'+QuotedStr('99') + ' AS CST_COFINS        ,NSTOTNOTA AS VL_BC_COFINS '
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

                        +'      ,'+QuotedStr(' ') + ' AS CST_PIS '
                        +' ,NSTOTNOTA AS VL_BC_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS      ,NSTOTNOTA AS VL_PIS '
                        +'      ,'+QuotedStr('99') + ' AS CST_COFINS      ,NSTOTNOTA AS VL_BC_COFINS '
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
                        +'      ,'+QuotedStr(' ') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS VL_BC_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS '
                        +'      ,NSTOTNOTA AS VL_PIS '
                        +'      ,'+QuotedStr(' ') + ' AS CST_COFINS '
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
                        +','+QuotedStr(' ') + ' CST_PIS,NSTOTNOTA AS ALIQ_PIS,NSTOTNOTA AS VL_CRED_PIS '
                        +','+QuotedStr(' ') + ' AS CST_COFINS,NSTOTNOTA AS ALIQ_COFINS,NSTOTNOTA AS VL_CRED_COFINS '
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
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F150.fieldbyName('VL_CRED_PIS').AsFloat)+'|';
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
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F150.fieldbyName('VL_CRED_COFINS').Asfloat)+'|';
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
                        +'      ,'+QuotedStr(' ') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS VL_BC_PIS      ,NSTOTNOTA AS ALIQ_PIS '
                        +'      ,NSTOTNOTA AS VL_PIS      ,'+QuotedStr(' ') + ' AS CST_COFINS '
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
                        +'      ,NSTOTNOTA AS VL_BC_CUS_INC      ,'+QuotedStr(' ') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS      ,NSTOTNOTA AS VL_CRED_PIS_ACUM '
                        +'      ,NSTOTNOTA AS VL_CRED_PIS_DESC_ANT      ,NSTOTNOTA AS VL_CRED_PIS_DESC '
                        +'      ,NSTOTNOTA AS VL_CRED_PIS_DESC_FUT      ,'+QuotedStr(' ') + ' AS CST_COFINS '
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
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_PIS_ACUM').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_PIS_DESC_ANT').fieldName,Query_F205.fieldbyName('VL_CRED_PIS_DESC_ANT').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_PIS_DESC_ANT').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_PIS_DESC').fieldName,Query_F205.fieldbyName('VL_CRED_PIS_DESC').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_PIS_DESC').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_PIS_DESC_FUT').fieldName,Query_F205.fieldbyName('VL_CRED_PIS_DESC_FUT').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_PIS_DESC_FUT').AsFloat)+'|';
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
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_COFINS_ACUM').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_ANT').fieldName,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_ANT').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_COFINS_DESC_ANT').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_COFINS_DESC').fieldName,Query_F205.fieldbyName('VL_CRED_COFINS_DESC').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_COFINS_DESC').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_FUT').fieldName,Query_F205.fieldbyName('VL_CRED_COFINS_DESC_FUT').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F205.fieldbyName('VL_CRED_COFINS_DESC_FUT').AsFloat)+'|';
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
                        +'      ,NSTOTNOTA AS VL_BC_CRED      ,'+QuotedStr(' ') + ' AS CST_PIS '
                        +'      ,NSTOTNOTA AS ALIQ_PIS      ,NSTOTNOTA AS VL_CRED_PIS_UTIL '
                        +'      ,'+QuotedStr('99') + ' AS CST_COFINS      ,NSTOTNOTA AS ALIQ_COFINS '
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
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F210.fieldbyName('VL_CRED_PIS_UTIL').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('CST_COFINS').fieldName,Query_F210.fieldbyName('CST_COFINS').Asstring);
            mLinha:=mLinha+Query_F210.fieldbyName('CST_COFINS').AsString+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('ALIQ_COFINS').fieldName,Query_F210.fieldbyName('ALIQ_COFINS').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F210.fieldbyName('ALIQ_COFINS').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F210.fieldbyName('VL_CRED_COFINS_UTIL').fieldName,Query_F210.fieldbyName('VL_CRED_COFINS_UTIL').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F210.fieldbyName('VL_CRED_COFINS_UTIL').AsFloat)+'|';
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
                        +'      ,'+ QuotedStr(copy(CB_COD_CRED_M100.Text,1,3)) + ' AS COD_CRED '
//                        +'      ,'+ QuotedStr('000') + ' AS COD_CRED '

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
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F800.fieldbyName('VL_CRED_PIS').AsFloat)+'|';
            Memo1.Lines.Add(mLinha);
            items_lista_BlocoF.Add(mLinha);
            fValVal('Cadastro de Empresa ',mTabela,Query_F800.fieldbyName('VL_CRED_COFINS').fieldName,Query_F800.fieldbyName('VL_CRED_COFINS').Asstring);
            mLinha:=mLinha+formatfloat(mCasas2Dec, Query_F800.fieldbyName('VL_CRED_COFINS').AsFloat)+'|';
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


// INICIO BLOCO I

function TFrm_SPED_EFD_PisCofins.fBlocoI(pOrigem: Integer): Boolean;
begin

mLinha:='|I001|1|'; // com dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoI.Add(mLinha);
mQtdRegBlocoI:=mQtdRegBlocoI+1;
mQtdRegBloco_I001:=mQtdRegBloco_I001+1;

mQtdRegBlocoI:=mQtdRegBlocoI+1;
mQtdRegBloco_I990:=mQtdRegBloco_I990+1;
mLinha:='|I990|'+IntToStr(mQtdRegBlocoI)+'|' ; // sem dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoI.Add(mLinha);
result:= true;
end;


// ERMINO BLOCO I





//Inicio Bloco M
function TFrm_SPED_EFD_PisCofins.fBlocoM(pOrigem: Integer): Boolean;
var
Query_M110: tQuery;
Query_M211: tQuery;
Query_M220: tQuery;
Query_M230: tQuery;
Query_M300: tQuery;
Query_M350: tQuery;
Query_M410: tQuery;
Query_M510: tQuery;
Query_M611: tQuery;
Query_M620: tQuery;
Query_M630: tQuery;
Query_M700: tQuery;
Query_M800: tQuery;
Query_M810: tQuery;

begin
mLinha:='|M001|0|'; // com dados
Memo1.Lines.Add(mLinha);
items_lista_BlocoM.Add(mLinha);
mQtdRegBlocoM:=mQtdRegBlocoM+1;
mQtdRegBloco_M001:=mQtdRegBloco_M001+1;
mLinha:='';

//if cb_COD_INC_TRIB.ItemIndex<>1 then
   begin
    mem_m100.First;
    mTabela:='tb_M100';

    if not mem_m100.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_m100.fieldbyName('VL_BC_PIS').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('ALIQ_PIS').fieldName,mem_m100.fieldbyName('ALIQ_PIS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('ALIQ_PIS').AsFloat)+'|';
          if mem_m100.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
            begin
            fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('QUANT_BC_PIS').fieldName,mem_m100.fieldbyName('QUANT_BC_PIS').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('QUANT_BC_PIS').Asfloat)+'|';
            end
          else
            begin
            mLinha:=mLinha+'|';
            end;

          if mem_m100.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
            begin
            fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('ALIQ_PIS_QUANT').fieldName,mem_m100.fieldbyName('ALIQ_PIS_QUANT').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('ALIQ_PIS_QUANT').Asfloat)+'|';
            end
          else
            begin
            mLinha:=mLinha+'|';
            end;
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED').fieldName,mem_m100.fieldbyName('VL_CRED').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('VL_CRED').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m100.fieldbyName('VL_AJUS_ACRES').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('VL_AJUS_ACRES').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m100.fieldbyName('VL_AJUS_ACRES').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('VL_AJUS_ACRES').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED_DIF').fieldName,mem_m100.fieldbyName('VL_CRED_DIF').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('VL_CRED_DIF').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED_DISP').fieldName,mem_m100.fieldbyName('VL_CRED_DISP').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('VL_CRED_DISP').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('IND_DESC_CRED').fieldName,mem_m100.fieldbyName('IND_DESC_CRED').Asstring);
          mLinha:=mLinha+mem_m100.fieldbyName('IND_DESC_CRED').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('VL_CRED_DESC').fieldName,mem_m100.fieldbyName('VL_CRED_DESC').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('VL_CRED_DESC').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m100.fieldbyName('SLD_CRED').fieldName,mem_m100.fieldbyName('SLD_CRED').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m100.fieldbyName('SLD_CRED').Asfloat)+'|';
          Memo1.Lines.Add(mLinha);
          items_lista_BlocoM.Add(mLinha);
          mem_m100.next;
          end;
       mem_m100.Close;
       end;

    mem_m105.first;


    mTabela:='tb_M105';
    if not mem_m105.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m105.fieldbyName('VL_BC_PIS_TOT').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('VL_BC_PIS_CUM').fieldName,mem_m105.fieldbyName('VL_BC_PIS_CUM').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m105.fieldbyName('VL_BC_PIS_CUM').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('VL_BC_PIS_NC').fieldName,mem_m105.fieldbyName('VL_BC_PIS_NC').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m105.fieldbyName('VL_BC_PIS_NC').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('VL_BC_PIS').fieldName,mem_m105.fieldbyName('VL_BC_PIS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m105.fieldbyName('VL_BC_PIS').Asfloat)+'|';
          if mem_m105.fieldbyName('QUANT_BC_PIS_TOT').Asfloat>0 then
             begin
             fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('QUANT_BC_PIS_TOT').fieldName,mem_m105.fieldbyName('QUANT_BC_PIS_TOT').Asstring);
             mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m105.fieldbyName('QUANT_BC_PIS_TOT').Asfloat)+'|';
             end
          else
            begin
            mLinha:=mLinha+'|';
            end;

          if mem_m105.fieldbyName('QUANT_BC_PIS').AsFloat > 0 then
            begin
            fValVal('Cadastro de Empresa ',mTabela,mem_m105.fieldbyName('QUANT_BC_PIS').fieldName,mem_m105.fieldbyName('QUANT_BC_PIS').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m105.fieldbyName('QUANT_BC_PIS').Asfloat)+'|';
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
    if not Query_M110.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M110.fieldbyName('VL_AJ').Asfloat)+'|';
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
    end;


 if mem_m200.IsEmpty then
   fGerarM200(true,0 // pVL_TOT_CONT_NC_PER
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
if not mem_m200.isEmpty then
   begin
   while not mem_m200.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M200:=mQtdRegBloco_M200+1;
      mLinha:='|';
      mLinha:=mLinha+'M200|';             //01
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_NC_PER').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_NC_PER').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_TOT_CONT_NC_PER').Asfloat)+'|'; //02
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CRED_DESC').fieldName,mem_m200.fieldbyName('VL_TOT_CRED_DESC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_TOT_CRED_DESC').Asfloat)+'|';       // 03
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CRED_DESC_ANT').fieldName,mem_m200.fieldbyName('VL_TOT_CRED_DESC_ANT').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_TOT_CRED_DESC_ANT').Asfloat)+'|';      //04
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_NC_DEV').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_NC_DEV').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_m200.fieldbyName('VL_TOT_CONT_NC_DEV').AsFloat)+'|';       //05
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_RET_NC').fieldName,mem_m200.fieldbyName('VL_RET_NC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_RET_NC').Asfloat)+'|';           //06
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_OUT_DED_NC').fieldName,mem_m200.fieldbyName('VL_OUT_DED_NC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_OUT_DED_NC').Asfloat)+'|';      // 07
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_CONT_NC_REC').fieldName,mem_m200.fieldbyName('VL_CONT_NC_REC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_CONT_NC_REC').Asfloat)+'|';   // 08
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_CUM_PER').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_CUM_PER').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_TOT_CONT_CUM_PER').Asfloat)+'|';  //09

      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_RET_CUM').fieldName,mem_m200.fieldbyName('VL_RET_CUM').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_RET_CUM').Asfloat)+'|';      // 10
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_OUT_DED_CUM').fieldName,mem_m200.fieldbyName('VL_OUT_DED_CUM').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_OUT_DED_CUM').Asfloat)+'|';    //11
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_CONT_CUM_REC').fieldName,mem_m200.fieldbyName('VL_CONT_CUM_REC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_CONT_CUM_REC').Asfloat)+'|';    //12
      fValVal('Cadastro de Empresa ',mTabela,mem_m200.fieldbyName('VL_TOT_CONT_REC').fieldName,mem_m200.fieldbyName('VL_TOT_CONT_REC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m200.fieldbyName('VL_TOT_CONT_REC').Asfloat)+'|';     //13
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m200.next;
      end;
   mem_m200.Close;
   end;
// INICIO 205

 if mem_m205.IsEmpty then
   fGerarM205(true,0,0,'99', edt_tab4_3_10_pis.text,'','');


mem_m205.First;
mTabela:='tb_M205';
if not mem_m205.isEmpty then
   begin
   while not mem_m205.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M205:=mQtdRegBloco_M205+1;
      mLinha:='|';
      mLinha:=mLinha+'M205|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m205.fieldbyName('NUM_CAMPO').fieldName,mem_m205.fieldbyName('NUM_CAMPO').Asstring);
      mLinha:=mLinha+mem_m205.fieldbyName('NUM_CAMPO').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m205.fieldbyName('COD_REC').fieldName,mem_m205.fieldbyName('COD_REC').Asstring);
      mLinha:=mLinha+mem_m205.fieldbyName('COD_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m205.fieldbyName('VL_DEBITO').fieldName,mem_m205.fieldbyName('VL_DEBITO').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m205.fieldbyName('VL_DEBITO').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m205.next;
      end;
   mem_m205.Close;
   end;

// TERM INO 205

//if cb_COD_INC_TRIB.ItemIndex<>1 then
   begin
    mem_m210.First;
    mTabela:='tb_M210';
    if not mem_m210.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_REC_BRT').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_BC_CONT').fieldName,mem_m210.fieldbyName('VL_BC_CONT').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_BC_CONT').Asfloat)+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_AJUS_ACRES_BC_PIS').fieldName,mem_m210.fieldbyName('VL_AJUS_ACRES_BC_PIS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_AJUS_ACRES_BC_PIS').Asfloat)+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_AJUS_REDUC_BC_PIS').fieldName,mem_m210.fieldbyName('VL_AJUS_REDUC_BC_PIS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_AJUS_REDUC_BC_PIS').Asfloat)+'|';


          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_BC_CONT_AJUS').fieldName,mem_m210.fieldbyName('VL_BC_CONT_AJUS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_BC_CONT_AJUS').Asfloat)+'|';


          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('ALIQ_PIS').fieldName,mem_m210.fieldbyName('ALIQ_PIS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('ALIQ_PIS').Asfloat)+'|';
          if mem_m210.fieldbyName('QUANT_BC_PIS').Asfloat > 0 then
            begin
            fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('QUANT_BC_PIS').fieldName,mem_m210.fieldbyName('QUANT_BC_PIS').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('QUANT_BC_PIS').Asfloat)+'|';
            end
          else
            begin
            mLinha:=mLinha+'|';
            end;

          if mem_m210.fieldbyName('ALIQ_PIS_QUANT').AsFloat>0 then
            begin
            fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('ALIQ_PIS_QUANT').fieldName,mem_m210.fieldbyName('ALIQ_PIS_QUANT').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('ALIQ_PIS_QUANT').Asfloat)+'|';
            end
          else
            begin
            mLinha:=mLinha+'|';
            end;

          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_APUR').fieldName,mem_m210.fieldbyName('VL_CONT_APUR').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_CONT_APUR').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m210.fieldbyName('VL_AJUS_ACRES').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_AJUS_ACRES').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_AJUS_REDUC').fieldName,mem_m210.fieldbyName('VL_AJUS_REDUC').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_AJUS_REDUC').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_DIFER').fieldName,mem_m210.fieldbyName('VL_CONT_DIFER').Asstring);


          if  mem_m210.fieldbyName('VL_CONT_DIFER').Asfloat>0 then
             mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_CONT_DIFER').Asfloat)+'|'
          else
             mLinha:=mLinha+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_DIFER_ANT').fieldName,mem_m210.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
          if  mem_m210.fieldbyName('VL_CONT_DIFER_ANT').Asfloat>0 then
             mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_CONT_DIFER_ANT').Asfloat)+'|'
          else
             mLinha:=mLinha+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m210.fieldbyName('VL_CONT_PER').fieldName,mem_m210.fieldbyName('VL_CONT_PER').Asstring);
          if  mem_m210.fieldbyName('VL_CONT_PER').Asfloat>0 then
             mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m210.fieldbyName('VL_CONT_PER').Asfloat)+'|'
          else
             mLinha:=mLinha+'|';

          Memo1.Lines.Add(mLinha);
          items_lista_BlocoM.Add(mLinha);
          mem_m210.next;
          end;
       mem_m210.Close;
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
    if not Query_M211.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M211.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').Asfloat)+'|';
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
    if not Query_M220.isEmpty then
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
    if not Query_M230.isEmpty then
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
          mLinha:=mLinha+formatfloat(mCasas2Dec, Query_M230.fieldbyName('VL_CRED_DIF').AsFloat)+'|';
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
    if not Query_M300.isEmpty then
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
          mLinha:=mLinha+formatfloat(mCasas2Dec, Query_M300.fieldbyName('VL_CRED_DESC_DIFER').AsFloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('VL_CONT_DIFER_ANT').fieldName,Query_M300.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
          mLinha:=mLinha+Query_M300.fieldbyName('VL_CONT_DIFER_ANT').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M300.fieldbyName('PER_APUR').fieldName,Query_M300.fieldbyName('PER_APUR').Asstring);
          mLinha:=mLinha+formatfloat(mCasas2Dec, Query_M300.fieldbyName('PER_APUR').AsFloat)+'|';
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
    if not Query_M350.isEmpty then
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






{    Query_M400:=tQuery.Create(nil);
    Query_M400.DatabaseName:='SG_ASSOC';
    Query_M400.Close;
    Query_M400.Sql.Clear;
    Query_M400.Sql.Add('SELECT '+QuotedStr(' ') + ' as CST_PIS ,NSTOTNOTA AS VL_TOT_REC '
                      +',RPAD('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                      +',RPAD('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                      +' FROM CADNS  where NSNUMERO=-999999 ');
    try
       Query_M400.Open;
    except
       end;
}
    mem_m400.First;
    mTabela:='tb_M400';
    if not mem_m400.IsEmpty then
       begin
       while not mem_m400.eof do
          begin
          mQtdRegBlocoM:=mQtdRegBlocoM+1;
          mQtdRegBloco_M400:=mQtdRegBloco_M400+1;
          mLinha:='|';
          mLinha:=mLinha+'M400|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m400M400_CST_PIS.fieldName,mem_m400.fieldbyName('M400_CST_PIS').Asstring);
          mLinha:=mLinha+mem_m400.fieldbyName('M400_CST_PIS').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m400M400_VL_TOT_REC.fieldName,mem_m400.fieldbyName('M400_VL_TOT_REC').Asstring);
          mLinha:=mLinha+mem_m400.fieldbyName('M400_VL_TOT_REC').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m400M400_COD_CTA.fieldName,mem_m400.fieldbyName('M400_COD_CTA').Asstring);
          mLinha:=mLinha+mem_m400.fieldbyName('M400_COD_CTA').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m400M400_DESC_COMPL.fieldName,mem_m400.fieldbyName('M400_DESC_COMPL').Asstring);
          mLinha:=mLinha+mem_m400.fieldbyName('M400_DESC_COMPL').AsString+'|';
          Memo1.Lines.Add(mLinha);
          items_lista_BlocoM.Add(mLinha);
          mem_m400.next;
          end;
       mem_m400.Close;
       end;




{

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
}
    mem_m410.First;
    mTabela:='tb_M410';
    if not mem_m410.isEmpty then
       begin
       while not mem_m410.eof do
          begin
          mQtdRegBlocoM:=mQtdRegBlocoM+1;
          mQtdRegBloco_M410:=mQtdRegBloco_M410+1;
          mLinha:='|';
          mLinha:=mLinha+'M410|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m410M410_NAT_REC.fieldName,mem_m410.fieldbyName('M410_NAT_REC').Asstring);
          mLinha:=mLinha+mem_m410.fieldbyName('M410_NAT_REC').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m410M410_VL_REC.fieldName,mem_m410.fieldbyName('M410_VL_REC').Asstring);
          mLinha:=mLinha+mem_m410.fieldbyName('M410_VL_REC').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m410M410_COD_CTA.fieldName,mem_m410.fieldbyName('M410_COD_CTA').Asstring);
          mLinha:=mLinha+mem_m410.fieldbyName('M410_COD_CTA').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m410M410_DESC_COMPL.fieldName,mem_m410.fieldbyName('M410_DESC_COMPL').Asstring);
          mLinha:=mLinha+mem_m410.fieldbyName('M410_DESC_COMPL').AsString+'|';
          Memo1.Lines.Add(mLinha);
          items_lista_BlocoM.Add(mLinha);
          mem_m410.next;
          end;
       mem_m410.Close;
       end;
    mem_m500.First;
    mTabela:='tb_M500';
    if not mem_m500.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m500.fieldbyName('VL_BC_COFINS').Asfloat)+'|';
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
          mLinha:=mLinha+formatfloat(mCasas2Dec, mem_m500.fieldbyName('VL_CRED').AsFloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m500.fieldbyName('VL_AJUS_ACRES').Asstring);
          mLinha:=mLinha+mem_m500.fieldbyName('VL_AJUS_ACRES').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_AJUS_REDUC').fieldName,mem_m500.fieldbyName('VL_AJUS_REDUC').Asstring);
          mLinha:=mLinha+mem_m500.fieldbyName('VL_AJUS_REDUC').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_CRED_DIF').fieldName,mem_m500.fieldbyName('VL_CRED_DIF').Asstring);
          mLinha:=mLinha+formatfloat(mCasas2Dec, mem_m500.fieldbyName('VL_CRED_DIF').AsFloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_CRED_DISP').fieldName,mem_m500.fieldbyName('VL_CRED_DISP').Asstring);
          mLinha:=mLinha+formatfloat(mCasas2Dec, mem_m500.fieldbyName('VL_CRED_DISP').AsFloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('IND_DESC_CRED').fieldName,mem_m500.fieldbyName('IND_DESC_CRED').Asstring);
          mLinha:=mLinha+mem_m500.fieldbyName('IND_DESC_CRED').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m500.fieldbyName('VL_CRED_DESC').fieldName,mem_m500.fieldbyName('VL_CRED_DESC').Asstring);
          mLinha:=mLinha+formatfloat(mCasas2Dec, mem_m500.fieldbyName('VL_CRED_DESC').Asfloat)+'|';
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
    if not mem_m505.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_m505.fieldbyName('VL_BC_COFINS_TOT').AsFloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('VL_BC_COFINS_CUM').fieldName,mem_m505.fieldbyName('VL_BC_COFINS_CUM').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m505.fieldbyName('VL_BC_COFINS_CUM').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('VL_BC_COFINS_NC').fieldName,mem_m505.fieldbyName('VL_BC_COFINS_NC').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_m505.fieldbyName('VL_BC_COFINS_NC').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m505.fieldbyName('VL_BC_COFINS').fieldName,mem_m505.fieldbyName('VL_BC_COFINS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m505.fieldbyName('VL_BC_COFINS').Asfloat)+'|';
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
    if not Query_M510.isEmpty then
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
    end;

if mem_m600.IsEmpty then
   fGerarM600(true,0 // pVL_TOT_CONT_NC_PER
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
if not mem_m600.isEmpty then
   begin
   while not mem_m600.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M600:=mQtdRegBloco_M600+1;
      mLinha:='|';
      mLinha:=mLinha+'M600|';                       //01
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_NC_PER').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_NC_PER').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_TOT_CONT_NC_PER').Asfloat)+'|';         //02
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CRED_DESC').fieldName,mem_m600.fieldbyName('VL_TOT_CRED_DESC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_TOT_CRED_DESC').Asfloat)+'|';            //03
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CRED_DESC_ANT').fieldName,mem_m600.fieldbyName('VL_TOT_CRED_DESC_ANT').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_TOT_CRED_DESC_ANT').Asfloat)+'|';        //04
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_NC_DEV').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_NC_DEV').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_m600.fieldbyName('VL_TOT_CONT_NC_DEV').Asfloat)+'|';     //05
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_RET_NC').fieldName,mem_m600.fieldbyName('VL_RET_NC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_RET_NC').Asfloat)+'|';                //06
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_OUT_DED_NC').fieldName,mem_m600.fieldbyName('VL_OUT_DED_NC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_OUT_DED_NC').Asfloat)+'|';   //            07
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_CONT_NC_REC').fieldName,mem_m600.fieldbyName('VL_CONT_NC_REC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec, mem_m600.fieldbyName('VL_CONT_NC_REC').AsFloat)+'|';            //08
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_CUM_PER').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_CUM_PER').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_TOT_CONT_CUM_PER').Asfloat)+'|';       //     09
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_RET_CUM').fieldName,mem_m600.fieldbyName('VL_RET_CUM').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_RET_CUM').Asfloat)+'|';               //10
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_OUT_DED_CUM').fieldName,mem_m600.fieldbyName('VL_OUT_DED_CUM').Asstring);

      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_OUT_DED_CUM').Asfloat)+'|';    //11
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_CONT_CUM_REC').fieldName,mem_m600.fieldbyName('VL_CONT_CUM_REC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_CONT_CUM_REC').Asfloat)+'|';       //12
      fValVal('Cadastro de Empresa ',mTabela,mem_m600.fieldbyName('VL_TOT_CONT_REC').fieldName,mem_m600.fieldbyName('VL_TOT_CONT_REC').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m600.fieldbyName('VL_TOT_CONT_REC').Asfloat)+'|';         //13
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m600.next;
      end;
   mem_m600.Close;
   end;


// INICIO 205

 if mem_m605.IsEmpty then
   fGerarM605(true,0,0,'','','','' );


mem_m605.First;
mTabela:='tb_M605';
if not mem_m605.isEmpty then
   begin
   while not mem_m605.eof do
      begin
      mQtdRegBlocoM:=mQtdRegBlocoM+1;
      mQtdRegBloco_M605:=mQtdRegBloco_M605+1;
      mLinha:='|';
      mLinha:=mLinha+'M605|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m605.fieldbyName('NUM_CAMPO').fieldName,mem_m605.fieldbyName('NUM_CAMPO').Asstring);
      mLinha:=mLinha+mem_m605.fieldbyName('NUM_CAMPO').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m605.fieldbyName('COD_REC').fieldName,mem_m605.fieldbyName('COD_REC').Asstring);
      mLinha:=mLinha+mem_m605.fieldbyName('COD_REC').AsString+'|';
      fValVal('Cadastro de Empresa ',mTabela,mem_m605.fieldbyName('VL_DEBITO').fieldName,mem_m605.fieldbyName('VL_DEBITO').Asstring);
      mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m605.fieldbyName('VL_DEBITO').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_BlocoM.Add(mLinha);
      mem_m605.next;
      end;
   mem_m605.Close;
   end;



//if cb_COD_INC_TRIB.ItemIndex<>1 then
   begin
    mem_m610.first;
    mTabela:='tb_M610';
    if not mem_m610.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_REC_BRT').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_BC_CONT').fieldName,mem_m610.fieldbyName('VL_BC_CONT').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_BC_CONT').Asfloat)+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_AJUS_ACRES_BC_COFINS').fieldName,mem_m610.fieldbyName('VL_AJUS_ACRES_BC_COFINS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_AJUS_ACRES_BC_COFINS').Asfloat)+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_AJUS_REDUC_BC_COFINS').fieldName,mem_m610.fieldbyName('VL_AJUS_REDUC_BC_COFINS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_AJUS_REDUC_BC_COFINS').Asfloat)+'|';


          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_BC_CONT_AJUS').fieldName,mem_m610.fieldbyName('VL_BC_CONT_AJUS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_BC_CONT_AJUS').Asfloat)+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('ALIQ_COFINS').fieldName,mem_m610.fieldbyName('ALIQ_COFINS').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('ALIQ_COFINS').Asfloat)+'|';
          if mem_m610.fieldbyName('QUANT_BC_COFINS').AsFloat > 0 then
            begin
            fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('QUANT_BC_COFINS').fieldName,mem_m610.fieldbyName('QUANT_BC_COFINS').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('QUANT_BC_COFINS').Asfloat)+'|';
            end
          else
            begin
            mLinha:=mLinha+'|';
            end;
          if mem_m610.fieldbyName('ALIQ_COFINS_QUANT').AsFloat > 0 then
            begin
            fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('ALIQ_COFINS_QUANT').fieldName,mem_m610.fieldbyName('ALIQ_COFINS_QUANT').Asstring);
            mLinha:=mLinha+FormatFloat(mCasas3Dec,mem_m610.fieldbyName('ALIQ_COFINS_QUANT').Asfloat)+'|';
            end
          else
            begin
            mLinha:=mLinha+'|';
            end;
          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_APUR').fieldName,mem_m610.fieldbyName('VL_CONT_APUR').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_CONT_APUR').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_AJUS_ACRES').fieldName,mem_m610.fieldbyName('VL_AJUS_ACRES').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_AJUS_ACRES').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_AJUS_REDUC').fieldName,mem_m610.fieldbyName('VL_AJUS_REDUC').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_AJUS_REDUC').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_DIFER').fieldName,mem_m610.fieldbyName('VL_CONT_DIFER').Asstring);

          if mem_m610.fieldbyName('VL_CONT_DIFER').Asfloat>0 then
             mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_CONT_DIFER').AsFloat)+'|'
          else
             mLinha:=mLinha+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_DIFER_ANT').fieldName,mem_m610.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
          if mem_m610.fieldbyName('VL_CONT_DIFER_ANT').Asfloat>0 then
             mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_CONT_DIFER_ANT').Asfloat)+'|'
          else
             mLinha:=mLinha+'|';

          fValVal('Cadastro de Empresa ',mTabela,mem_m610.fieldbyName('VL_CONT_PER').fieldName,mem_m610.fieldbyName('VL_CONT_PER').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m610.fieldbyName('VL_CONT_PER').Asfloat)+'|';
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
    if not Query_M611.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M611.fieldbyName('VL_BC_CONT_ANT_EXC_COOP').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('VL_EXC_COOP_GER').fieldName,Query_M611.fieldbyName('VL_EXC_COOP_GER').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M611.fieldbyName('VL_EXC_COOP_GER').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('VL_EXC_ESP_COOP').fieldName,Query_M611.fieldbyName('VL_EXC_ESP_COOP').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M611.fieldbyName('VL_EXC_ESP_COOP').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M611.fieldbyName('VL_BC_CONT').fieldName,Query_M611.fieldbyName('VL_BC_CONT').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M611.fieldbyName('VL_BC_CONT').Asfloat)+'|';
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
    if not Query_M620.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M620.fieldbyName('VL_AJ').Asfloat)+'|';
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
    if not Query_M630.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M630.fieldbyName('VL_VEND').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('VL_NAO_RECEB').fieldName,Query_M630.fieldbyName('VL_NAO_RECEB').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M630.fieldbyName('VL_NAO_RECEB').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('VL_CONT_DIF').fieldName,Query_M630.fieldbyName('VL_CONT_DIF').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M630.fieldbyName('VL_CONT_DIF').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M630.fieldbyName('VL_CRED_DIF').fieldName,Query_M630.fieldbyName('VL_CRED_DIF').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M630.fieldbyName('VL_CRED_DIF').Asfloat)+'|';
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
    if not Query_M700.isEmpty then
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
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M700.fieldbyName('VL_CONT_APUR_DIFER').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('NAT_CRED_DESC').fieldName,Query_M700.fieldbyName('NAT_CRED_DESC').Asstring);
          mLinha:=mLinha+Query_M700.fieldbyName('NAT_CRED_DESC').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('VL_CRED_DESC_DIFER').fieldName,Query_M700.fieldbyName('VL_CRED_DESC_DIFER').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M700.fieldbyName('VL_CRED_DESC_DIFER').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,Query_M700.fieldbyName('VL_CONT_DIFER_ANT').fieldName,Query_M700.fieldbyName('VL_CONT_DIFER_ANT').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,Query_M700.fieldbyName('VL_CONT_DIFER_ANT').Asfloat)+'|';
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





{
    Query_M800:=tQuery.Create(nil);
    Query_M800.DatabaseName:='SG_ASSOC';
    Query_M800.Close;
    Query_M800.Sql.Clear;
    Query_M800.Sql.Add('SELECT '+QuotedStr(' ') + ' as CST_COFINS '
                      +',NSTOTNOTA AS VL_TOT_REC '
                      +',rpad('+QuotedStr('0') + ',60,'+QuotedStr('0') + ') AS COD_CTA '
                      +',rpad('+QuotedStr('0') + ',1000,'+QuotedStr('0') + ') AS DESC_COMPL '
                      +' FROM CADNS  where NSNUMERO=-999999 ');
    try
       Query_M800.Open;
    except
       end;
}

    mem_m800.First;
    mTabela:='tb_M800';
    if not mem_m800.isEmpty then
       begin
       while not mem_m800.eof do
          begin
          mQtdRegBlocoM:=mQtdRegBlocoM+1;
          mQtdRegBloco_M800:=mQtdRegBloco_M800+1;
          mLinha:='|';
          mLinha:=mLinha+'M800|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m800M800_CST_COFINS.fieldName,mem_m800.fieldbyName('M800_CST_COFINS').Asstring);
          mLinha:=mLinha+mem_m800.fieldbyName('M800_CST_COFINS').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m800M800_VL_TOT_REC.fieldName,mem_m800.fieldbyName('M800_VL_TOT_REC').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m800.fieldbyName('M800_VL_TOT_REC').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m800M800_COD_CTA.fieldName,mem_m800.fieldbyName('M800_COD_CTA').Asstring);
          mLinha:=mLinha+mem_m800.fieldbyName('M800_COD_CTA').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m800M800_DESC_COMPL.fieldName,mem_m800.fieldbyName('M800_DESC_COMPL').Asstring);
          mLinha:=mLinha+mem_m800.fieldbyName('M800_DESC_COMPL').AsString+'|';
          Memo1.Lines.Add(mLinha);
          items_lista_BlocoM.Add(mLinha);
          mem_m800.next;
          end;
       mem_m800.Close;
       end;





{
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
}

    mem_m810.First;
    mTabela:='tb_M810';
    if not mem_m810.isEmpty then
       begin
       while not mem_m810.eof do
          begin
          mQtdRegBlocoM:=mQtdRegBlocoM+1;
          mQtdRegBloco_M810:=mQtdRegBloco_M810+1;
          mLinha:='|';
          mLinha:=mLinha+'M810|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m810M810_NAT_REC.fieldName,mem_m810.fieldbyName('M810_NAT_REC').Asstring);
          mLinha:=mLinha+mem_m810.fieldbyName('M810_NAT_REC').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m810M810_VL_REC.fieldName,mem_m810.fieldbyName('M810_VL_REC').Asstring);
          mLinha:=mLinha+FormatFloat(mCasas2Dec,mem_m810.fieldbyName('M810_VL_REC').Asfloat)+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m810M810_COD_CTA.fieldName,mem_m810.fieldbyName('M810_COD_CTA').Asstring);
          mLinha:=mLinha+mem_m810.fieldbyName('M810_COD_CTA').AsString+'|';
          fValVal('Cadastro de Empresa ',mTabela,mem_m810M810_DESC_COMPL.fieldName,mem_m810.fieldbyName('M810_DESC_COMPL').Asstring);
          mLinha:=mLinha+mem_m810.fieldbyName('M810_DESC_COMPL').AsString+'|';
          Memo1.Lines.Add(mLinha);
          items_lista_BlocoM.Add(mLinha);
          mem_m810.next;
          end;
       mem_m810.Close;
       end;
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


function TFrm_SPED_EFD_PisCofins.fBloco1(pOrigem: Integer): Boolean;
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
                  +',SYSDATE AS DT_SENT_JUD FROM CADNS   where NSNUMERO=-999999 ');
try
   Query_1010.Open;
except
   end;
mTabela:='tb_1010';
if not Query_1010.isEmpty then 
   begin 
   mLinha:='|1010|0|'; // com dados
   Memo1.Lines.Add(mLinha);
   items_lista_Bloco1.Add(mLinha);
   mQtdRegBloco1:=mQtdRegBloco1+1;
   mQtdRegBloco_1001:=mQtdRegBloco_1001+1;
   mLinha:='';
   while not Query_1010.eof do 
      begin 
      mQtdRegBloco1:=mQtdRegBloco1+1;
      mQtdRegBloco_1010:=mQtdRegBloco_1010+1;
      mLinha:='|';
      mLinha:=mLinha+'1010|';
      fValVal('Cadastro de Empresa ',mTabela,Query_1010.fieldbyName('NUM_PROC').fieldName,Query_1010.fieldbyName('NUM_PROC').Asstring);
      mLinha:=mLinha+Query_1010.fieldbyName('NUM_PROC').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1010.fieldbyName('ID_SEC_JUD').fieldName,Query_1010.fieldbyName('ID_SEC_JUD').Asstring);
      mLinha:=mLinha+Query_1010.fieldbyName('ID_SEC_JUD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1010.fieldbyName('ID_VARA').fieldName,Query_1010.fieldbyName('ID_VARA').Asstring);
      mLinha:=mLinha+Query_1010.fieldbyName('ID_VARA').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1010.fieldbyName('IND_NAT_ACAO').fieldName,Query_1010.fieldbyName('IND_NAT_ACAO').Asstring);
      mLinha:=mLinha+Query_1010.fieldbyName('IND_NAT_ACAO').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1010.fieldbyName('DESC_DEC_JUD').fieldName,Query_1010.fieldbyName('DESC_DEC_JUD').Asstring);
      mLinha:=mLinha+Query_1010.fieldbyName('DESC_DEC_JUD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1010.fieldbyName('DT_SENT_JUD').fieldName,Query_1010.fieldbyName('DT_SENT_JUD').Asstring);
      mLinha:=mLinha+Query_1010.fieldbyName('DT_SENT_JUD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      Query_1010.next;
      end;
   Query_1010.Close;
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
if not Query_1020.isEmpty then 
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
if not Query_1100.isEmpty then 
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
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_EXT_APU').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_TOT_CRED_APU').fieldName,Query_1100.fieldbyName('VL_TOT_CRED_APU').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('VL_TOT_CRED_APU').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DESC_PA_ANT').fieldName,Query_1100.fieldbyName('VL_CRED_DESC_PA_ANT').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_DESC_PA_ANT').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_PER_PA_ANT').fieldName,Query_1100.fieldbyName('VL_CRED_PER_PA_ANT').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_PER_PA_ANT').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DCOMP_PA_ANT').fieldName,Query_1100.fieldbyName('VL_CRED_DCOMP_PA_ANT').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_DCOMP_PA_ANT').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('SD_CRED_DISP_EFD').fieldName,Query_1100.fieldbyName('SD_CRED_DISP_EFD').Asstring);
      mLinha:=mLinha+Query_1100.fieldbyName('SD_CRED_DISP_EFD').AsString+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DESC_EFD').fieldName,Query_1100.fieldbyName('VL_CRED_DESC_EFD').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_DESC_EFD').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_PER_EFD').fieldName,Query_1100.fieldbyName('VL_CRED_PER_EFD').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_PER_EFD').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_DCOMP_EFD').fieldName,Query_1100.fieldbyName('VL_CRED_DCOMP_EFD').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_DCOMP_EFD').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_TRANS').fieldName,Query_1100.fieldbyName('VL_CRED_TRANS').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_TRANS').Asfloat)+'|';
      Memo1.Lines.Add(mLinha);
      items_lista_Bloco1.Add(mLinha);
      fValVal('Cadastro de Empresa ',mTabela,Query_1100.fieldbyName('VL_CRED_OUT').fieldName,Query_1100.fieldbyName('VL_CRED_OUT').Asstring);
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1100.fieldbyName('VL_CRED_OUT').Asfloat)+'|';
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
                  +','+QuotedStr(' ') + ' AS CST_PIS '
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
if not Query_1101.isEmpty then 
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
      mLinha:=mLinha+Query_1101.fieldbyName('SER').AsString+'|';
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
if not Query_1102.isEmpty then
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
if not Query_1200.isEmpty then 
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
                  +','+QuotedStr(' ') + ' AS CST_PIS '
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
if not Query_1210.isEmpty then
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
if not Query_1220.isEmpty then
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
if not Query_1300.isEmpty then
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
if not Query_1500.isEmpty then
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
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1500.fieldbyName('VL_CRED_DESC_PA_ANT').Asfloat)+'|';
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
      mLinha:=mLinha+formatfloat(mCasas2Dec, Query_1500.fieldbyName('VL_CRED_DESC_EFD').Asfloat)+'|';
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
                  +','+QuotedStr(' ') + ' AS CST_COFINS '
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
if not Query_1501.isEmpty then
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
      mLinha:=mLinha+Query_1501.fieldbyName('SER').AsString+'|';
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
if not Query_1502.isEmpty then
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
if not Query_1600.isEmpty then
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
                  +','+QuotedStr(' ') + ' as CST_COFINS '
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
if not Query_1610.isEmpty then
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
if not Query_1620.isEmpty then
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
if not Query_1700.isEmpty then
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
if not Query_1800.isEmpty then
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
if not Query_1809.isEmpty then
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

procedure TFrm_SPED_EFD_PisCofins.FormCreate(Sender: TObject);
var
dia,mes,ano : Word;

begin
fPreecherCfopValido;

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
PageControl1.ActivePageIndex:=0;
edt_datini.Text:='01/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano);
edt_datfin.Text:=FormatDateTime(fdt2, fdatafinal(1,StrToDate(edt_datini.Text)));
edt_nomarq.Text:='C:\SGE\EFD_PISCOFINS_'+FormatDateTime('mmyyyy',StrToDate(edt_datini.Text))+'.TXT';

if flfilpad(0,'_SPED_EFD_PISCOFINS','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_COD_INC_TRIB']),[]) then
      CB_COD_INC_TRIB.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_IND_ESCRI']),[]) then
      CB_IND_ESCRI.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_IND_APRO_CRED']),[]) then
      CB_IND_APRO_CRED.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_COD_TIPO_CONT']),[]) then
      CB_COD_TIPO_CONT.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_IND_REG_CUM']),[]) then
      CB_IND_REG_CUM.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_COD_CRED_M100']),[]) then
      begin
      CB_COD_CRED_M100.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);
      end;
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_NUM_CAMPO']),[]) then
      CB_NUM_CAMPO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);


   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_PIS_ENTRADA']),[]) then
      EDT_PIS_ENTRADA.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_PIS_SAIDA']),[]) then
      EDT_PIS_SAIDA.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_ENTRADA_PROD']),[]) then
      edt_pis_cst_entrada_prod.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_SAIDA_PROD']),[]) then
      edt_pis_cst_saida_prod.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_COFINS_ENTRADA']),[]) then
      EDT_COFINS_ENTRADA.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_COFINS_SAIDA']),[]) then
      EDT_COFINS_SAIDA.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_ENTRADA_PROD']),[]) then
      edt_cofins_cst_entrada_PROD.Text:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_SAIDA_PROD']),[]) then
      edt_cofins_cst_saida_prod.Text:=DM4.Tb_FilPad2FPVALOR.AsString;


   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_M105_ENTRADA']),[]) then
      edt_cofins_cst_M105_entrada.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_M105_SAIDA']),[]) then
      edt_cofins_cst_M105_saida.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_M105_ENTRADA']),[]) then
      edt_pis_cst_M105_entrada.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_M105_SAIDA']),[]) then
      edt_pis_cst_M105_saida.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','EDT_DESC_CRED']),[]) then
      EDT_DESC_CRED.Text:=DM4.Tb_FilPad2FPVALOR.AsString;


   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_COD_REC_PIS']),[]) then
      CB_COD_REC_PIS.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_COD_REC_COFINS']),[]) then
      CB_COD_REC_COFINS.Text:=DM4.Tb_FilPad2FPVALOR.AsString;

   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_NAT_BC_CRED_DC']),[]) then
      CB_NAT_BC_CRED_DC.Itemindex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([0,'_SPED_EFD_PISCOFINS','CB_NAT_BC_CRED_CPR']),[]) then
      CB_NAT_BC_CRED_CPR.Itemindex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);


   end;

{
mpis_aliq_entrada   :=edt_pis_entrada.Text;
mpis_aliq_saida     :=edt_pis_saida.Text;
mcst_pis_entrada_prod   :=edt_pis_cst_entrada_prod.Text;
mcst_pis_saida_prod      :=edt_pis_cst_saida_prod.text;


mcofins_aliq_entrada:=edt_cofins_entrada.Text;
mcofins_aliq_saida  :=edt_cofins_saida.Text;
mcst_cofins_entrada_prod :=edt_cofins_cst_entrada_prod.Text;
mcst_cofins_saida_prod   :=edt_cofins_cst_saida_prod.Text;


mcst_pis_M105_entrada    :=edt_pis_cst_M105_entrada.Text;
mcst_pis_M105_saida      :=edt_pis_cst_M105_saida.text;

mcst_cofins_M105_entrada  :=edt_pis_cst_M105_entrada.Text;
mcst_cofins_M105_saida  :=edt_pis_cst_M105_saida.Text;
}
fRealcalcularPedfor;


clb_tiponotas.Checked[3]:=true;
clb_tiponotas.ItemIndex:=3;
clb_tiponotas:=Valida_CheckList(clb_tiponotas);

cb_IND_ESCRIClick(self);

end;

procedure TFrm_SPED_EFD_PisCofins.FormShow(Sender: TObject);
begin



//items_lista_blocoR:=TStringlist.create;
items_lista_blocoR:=TStringlist.create;
items_lista_blocoA:=TStringlist.create;
items_lista_blocoC:=TStringlist.create;
items_lista_blocoD:=TStringlist.create;
items_lista_blocoF:=TStringlist.create;
items_lista_blocoI:=TStringlist.create;
items_lista_blocoM:=TStringlist.create;
items_lista_bloco1:=TStringlist.create;

PageControl1.ActivePage:=tsGeral;
end;

procedure TFrm_SPED_EFD_PisCofins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
Freeandnil(items_lista_blocoR);
Freeandnil(items_lista_blocoA);
Freeandnil(items_lista_blocoC);
Freeandnil(items_lista_blocoD);
Freeandnil(items_lista_blocoF);
Freeandnil(items_lista_blocoM);
Freeandnil(items_lista_bloco1);


end;

procedure TFrm_SPED_EFD_PisCofins.bbSairClick(Sender: TObject);
begin
close;
end;


function TFrm_SPED_EFD_PisCofins.fGerarReg9900(pTipo: String;pQtdReg: Integer): Boolean;
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


function TFrm_SPED_EFD_PisCofins.fTestarR0190(pCodigo: String): Boolean;
var
mforCli: String;
mCodigo: String;
begin
if not mem_R0190.Locate('UNID',pCodigo,[]) then
   begin
   mem_R0190.Append;
   mem_R0190UNID.Value:=pCodigo;
   mem_R0190DESCR.Value:=pCodigo;
   end;
result:=true;
end;


function TFrm_SPED_EFD_PisCofins.fTestarR0200(pCodigo: String): Boolean;
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
      mem_R0200DESCR_ITEM.Value  :=query_temp.fieldbyName('NOMPRO').AsString;
      mem_R0200COD_BARRA.Value   :=query_temp.fieldbyName('CODBAR').AsString;
      mem_R0200COD_ANT_ITEM.Value:='';
      mem_R0200UNID_INV.Value    :=query_temp.fieldbyName('UNID').AsString;
      mem_R0200TIPO_ITEM.Value   :=Formatfloat('00', valint( query_temp.fieldbyName('NIVEL').AsString));
      mem_R0200COD_NCM.Value     :=query_temp.fieldbyName('COD_NCM').AsString;
      mem_R0200ALIQ_ICMS.Value   :=query_temp.fieldbyName('ALIQ_ICM').AsFloat;
      mem_R0200.Post;
      end;
   end;
FreeandNil(query_temp);
result:=true;
end;



function TFrm_SPED_EFD_PisCofins.fTestarR0400(pCodigo: String): Boolean;
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
function TFrm_SPED_EFD_PisCofins.fGerarM100(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Pis,pAliqPis,pQuant_BC_Pis,pAliq_Pis_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;

begin

if cb_gerar_bloco_m.Checked=false then
   exit;

pVl_BC_Pis:=Arredonda(pVl_BC_Pis,2);
pAliqPis:=Arredonda(pAliqPis,2);
pQuant_BC_Pis:=Arredonda(pQuant_BC_Pis,3);
pVl_Cred:=Arredonda(pVl_Cred,3);
pVl_Ajus_Acres:=Arredonda(pVl_Ajus_Acres,3);
pVl_Cred_Dif:=Arredonda(pVl_Cred_Dif,2);
pVl_Cred_Disp:=Arredonda(pVl_Cred_Disp,2);
pInd_Desc_Cred:=Arredonda(pInd_Desc_Cred,2);
pVl_Desc_Cred:=Arredonda(pVl_Desc_Cred,2);
pVl_Cred_Desc:=Arredonda(pVl_Cred_Desc,2);
pSld_Cred:=Arredonda(pSld_Cred,2);




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

if cb_bloco_m_zerado.Checked = false then
   begin
   mem_m100VL_BC_PIS.Value     :=mem_m100VL_BC_PIS.Value+pVl_BC_Pis;
   mem_m100QUANT_BC_PIS.Value  :=mem_m100QUANT_BC_PIS.Value+pQuant_BC_Pis;
   mem_m100VL_CRED.Value       :=mem_m100VL_CRED.Value+pVl_Cred;
   mem_m100VL_AJUS_ACRES.Value :=mem_m100VL_AJUS_ACRES.Value+pVl_Ajus_Acres;
   mem_m100VL_CRED_DIF.Value   :=mem_m100VL_CRED_DIF.Value+pVl_Cred_Dif;
   mem_m100VL_CRED_DISP.Value  :=mem_m100VL_CRED_DISP.Value+pVl_Cred;
   mem_m100VL_CRED_DESC.Value  :=mem_m100VL_CRED_DESC.Value+pVl_Cred;
   mem_m100SLD_CRED.Value      :=mem_m100SLD_CRED.Value+pSld_Cred;
   end;

mem_m100.Post;
end;

function TFrm_SPED_EFD_PisCofins.fGerarM105(pNAT_BC_CRED,pCST_PIS: string; pVL_BC_PIS_TOT, pVL_BC_PIS_CUM,pVL_BC_PIS_NC,pVL_BC_PIS,pQUANT_BC_PIS_TOT
       ,pQUANT_BC_PIS  : real; pDESC_CRED: String): Boolean;
begin

if cb_gerar_bloco_m.Checked=false then
   exit;

pVL_BC_PIS_TOT:=Arredonda(pVL_BC_PIS_TOT,2);
pVL_BC_PIS_CUM:=Arredonda(pVL_BC_PIS_CUM,2);
pVL_BC_PIS_NC:=Arredonda(pVL_BC_PIS_NC,2);
pVL_BC_PIS:=Arredonda(pVL_BC_PIS,2);
pQUANT_BC_PIS_TOT:=Arredonda(pQUANT_BC_PIS_TOT,3);
pQUANT_BC_PIS:=Arredonda(pQUANT_BC_PIS,3);

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

if cb_bloco_m_zerado.Checked = false then
   begin
   mem_m105VL_BC_PIS_TOT.Value   :=mem_m105VL_BC_PIS_TOT.Value+pVL_BC_PIS_TOT;
   mem_m105VL_BC_PIS_CUM.Value   :=0;
   mem_m105VL_BC_PIS_NC.Value    :=mem_m105VL_BC_PIS_NC.Value+pVL_BC_PIS_NC;
   mem_m105VL_BC_PIS.Value       :=mem_m105VL_BC_PIS.Value+pVL_BC_PIS;
   mem_m105QUANT_BC_PIS_TOT.Value:=mem_m105QUANT_BC_PIS_TOT.Value+pQUANT_BC_PIS_TOT;

   mem_m105QUANT_BC_PIS.Value    :=mem_m105QUANT_BC_PIS.Value+pQUANT_BC_PIS;
   end;

mem_m105.Post;

end;


function TFrm_SPED_EFD_PisCofins.fGerarM200(pForcarGeracao: Boolean;pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;
begin
{
if (cb_COD_INC_TRIB.ItemIndex=1) and (not pForcarGeracao) then
   result:=true
else
}
if (cb_gerar_bloco_m.Checked=false)  then
   exit;

pVL_TOT_CONT_NC_PER:=Arredonda(pVL_TOT_CONT_NC_PER,2);
pVL_TOT_CRED_DESC:=Arredonda(pVL_TOT_CRED_DESC,2);
pVL_TOT_CRED_DESC_ANT:=Arredonda(pVL_TOT_CRED_DESC_ANT,2);
pVL_TOT_CONT_NC_DEV:=Arredonda(pVL_TOT_CONT_NC_DEV,2);
pVL_RET_NC:=Arredonda(pVL_RET_NC,2);
pVL_OUT_DED_NC:=Arredonda(pVL_OUT_DED_NC,2);
pVL_CONT_NC_REC:=Arredonda(pVL_CONT_NC_REC,2);
pVL_TOT_CONT_CUM_PER:=Arredonda(pVL_TOT_CONT_CUM_PER,2);
pVL_RET_CUM:=Arredonda(pVL_RET_CUM,2);
pVL_OUT_DED_CUM:=Arredonda(pVL_OUT_DED_CUM,2);
pVL_CONT_CUM_REC:=Arredonda(pVL_CONT_CUM_REC,2);
pVL_TOT_CONT_REC:=Arredonda(pVL_TOT_CONT_REC,2);

result:=true;
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

   if cb_bloco_m_zerado.Checked = false then
      begin
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
      end;
   mem_m200.Post;
   end;

end;



function TFrm_SPED_EFD_PisCofins.fGerarM205(pForcarGeracao: Boolean;pVl_Debito,pVlDoc: Real;pCst,pCodCst104
                                       ,pCodCta,pDescCompl: String): Boolean;
begin
result:=true;
if cb_gerar_bloco_m.Checked=false then
   exit;

pvl_Debito:=Arredonda(pvl_Debito,2);
{if (cb_COD_INC_TRIB.ItemIndex=1) and (not pForcarGeracao) then
   result:=true
else
}
if pVl_Debito=0 then
   begin
   if pVlDoc<>0 then
      begin
       if not mem_m400.Locate('M400_CST_PIS',pCst,[]) then
          begin
          mem_m400.Append;
          mem_m400M400_CST_PIS.Value   := pCst;
          mem_m400M400_VL_TOT_REC.Value:=0;
          mem_m400M400_COD_CTA.Value   :=pCodCta;
          mem_m400M400_DESC_COMPL.Value:=pDescCompl;
          end
       else
          mem_m400.Edit;
       mem_m400M400_VL_TOT_REC.Value:=mem_m400M400_VL_TOT_REC.Value+pVlDoc;
       mem_m400.post;


       if not mem_m410.Locate('M410_NAT_REC',pCodCst104,[]) then
          begin
          mem_m410.Append;
          mem_m410M410_NAT_REC.Value   := pCodCst104;
          mem_m410M410_VL_REC.Value:=0;
          mem_m410M410_COD_CTA.Value   :=pCodCta;
          mem_m410M410_DESC_COMPL.Value:=pDescCompl;
          end
       else
          mem_m410.Edit;
       mem_m410M410_VL_REC.Value:=mem_m410M410_VL_REC.Value+pVlDoc;
       mem_m410.post;
       end;

   end
else

   begin

   if mem_m205.IsEmpty then
      begin
      mem_m205.Append;
      mem_m205VL_DEBITO.Value  :=0;
      mem_m205COD_REC.Value    :=CB_COD_REC_PIS.Text;
      if CB_NUM_CAMPO.ItemIndex=0 then
         mem_m205NUM_CAMPO.Value  :='08'
      else
         mem_m205NUM_CAMPO.Value  :='12';
      end
   else
     mem_m205.Edit;

   if cb_bloco_m_zerado.Checked = false then
      begin
      mem_m205VL_DEBITO.Value  :=mem_m205VL_DEBITO.Value+pVl_Debito;
      end;
   mem_m205.Post;
   end;

end;


function TFrm_SPED_EFD_PisCofins.fGerarM210(pCOD_CONT: String;
pVL_REC_BRT,pVL_BC_CONT
,pVL_AJUS_ACRES_BC_PIS
,pVL_AJUS_REDUC_BC_PIS
, pVL_BC_CONT_AJUS

,pALIQ_PIS,pQUANT_BC_PIS,pALIQ_PIS_QUANT,pVL_CONT_APUR
,pVL_AJUS_ACRES,pVL_AJUS_REDUC,pVL_CONT_DIFER,pVL_CONT_DIFER_ANT,pVL_CONT_PER: Real): Boolean;
begin

if (cb_gerar_bloco_m.Checked=false) or (pVL_CONT_PER=0)   then
   exit;

pVL_REC_BRT:=Arredonda(pVL_REC_BRT,2);
pVL_BC_CONT:=Arredonda(pVL_BC_CONT,2);
pALIQ_PIS:=Arredonda(pALIQ_PIS,2);
pQUANT_BC_PIS:=Arredonda(pQUANT_BC_PIS,3);
pALIQ_PIS_QUANT:=Arredonda(pALIQ_PIS_QUANT,3);
pVL_CONT_APUR:=Arredonda(pVL_CONT_APUR,2);
pVL_AJUS_ACRES:=Arredonda(pVL_AJUS_ACRES,2);
pVL_AJUS_REDUC:=Arredonda(pVL_AJUS_REDUC,2);
pVL_CONT_DIFER:=Arredonda(pVL_CONT_DIFER,2);
pVL_CONT_DIFER_ANT:=Arredonda(pVL_CONT_DIFER_ANT,2);
pVL_CONT_PER:=Arredonda(pVL_CONT_PER,2);


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

   mem_m210VL_AJUS_ACRES_BC_PIS.Value :=0;
   mem_m210VL_AJUS_REDUC_BC_PIS.Value :=0;
   mem_m210VL_BC_CONT_AJUS.Value      :=0;



   end;

if cb_bloco_m_zerado.Checked = false then
   begin
   mem_m210VL_REC_BRT.Value       :=mem_m210VL_REC_BRT.Value+pVL_REC_BRT;
   mem_m210VL_BC_CONT.Value       :=mem_m210VL_BC_CONT.Value+pVL_BC_CONT;
   mem_m210QUANT_BC_PIS.Value     :=mem_m210QUANT_BC_PIS.Value+pQUANT_BC_PIS;
   mem_m210VL_CONT_APUR.Value     :=mem_m210VL_CONT_APUR.Value+pVL_CONT_APUR;
   mem_m210VL_AJUS_ACRES.Value    :=mem_m210VL_AJUS_ACRES.Value+pVL_AJUS_ACRES;
   mem_m210VL_AJUS_REDUC.Value    :=mem_m210VL_AJUS_REDUC.Value+pVL_AJUS_REDUC;
   mem_m210VL_CONT_DIFER.Value    :=mem_m210VL_CONT_DIFER.Value+pVL_CONT_DIFER;
   mem_m210VL_CONT_DIFER_ANT.Value:=mem_m210VL_CONT_DIFER_ANT.Value+pVL_CONT_DIFER_ANT;
   mem_m210VL_CONT_PER.Value      :=mem_m210VL_CONT_PER.Value+pVL_CONT_PER;
   mem_m210VL_AJUS_ACRES_BC_PIS.Value :=mem_m210VL_AJUS_ACRES_BC_PIS.Value + pVL_AJUS_ACRES_BC_PIS;
   mem_m210VL_AJUS_REDUC_BC_PIS.Value :=mem_m210VL_AJUS_REDUC_BC_PIS.Value + pVL_AJUS_REDUC_BC_PIS;
   mem_m210VL_BC_CONT_AJUS.Value      :=mem_m210VL_BC_CONT_AJUS.Value  + pVL_BC_CONT_AJUS;
   end;

mem_m210.Post;


end;






function TFrm_SPED_EFD_PisCofins.fGerarM500(pCod_Cred: String; pInd_Cred_Ori: Integer; pVl_BC_Cofins,pAliqCofins,pQuant_BC_Cofins,pAliq_Cofins_Quant,pVl_Cred,pVl_Ajus_Acres
         ,pVl_Ajus_Reduc,pVl_Cred_Dif,pVl_Cred_Disp,pInd_Desc_Cred,pVl_Desc_Cred,pVl_Cred_Desc,pSld_Cred: Real): Boolean;

begin
if cb_gerar_bloco_m.Checked=false then
   exit;

pVl_BC_Cofins:=Arredonda(pVl_BC_Cofins,2);
pAliqCofins:=Arredonda(pAliqCofins,2);
pQuant_BC_Cofins:=Arredonda(pQuant_BC_Cofins,2);
pAliq_Cofins_Quant:=Arredonda(pAliq_Cofins_Quant,2);
pVl_Cred:=Arredonda(pVl_Cred,2);
pVl_Ajus_Acres:=Arredonda(pVl_Ajus_Acres,2);
pVl_Ajus_Reduc:=Arredonda(pVl_Ajus_Reduc,2);
pVl_Cred_Dif:=Arredonda(pVl_Cred_Dif,2);
pVl_Cred_Disp:=Arredonda(pVl_Cred_Disp,2);
pInd_Desc_Cred:=Arredonda(pInd_Desc_Cred,2);
pVl_Desc_Cred:=Arredonda(pVl_Desc_Cred,2);
pVl_Cred_Desc:=Arredonda(pVl_Cred_Desc,2);
pSld_Cred:=Arredonda(pSld_Cred,2);
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

if cb_bloco_m_zerado.Checked = false then
   begin
   mem_m500VL_BC_Cofins.Value     :=mem_m500VL_BC_Cofins.Value+pVl_BC_Cofins;
   mem_m500QUANT_BC_Cofins.Value  :=mem_m500QUANT_BC_Cofins.Value+pQuant_BC_Cofins;
   mem_m500VL_CRED.Value       :=mem_m500VL_CRED.Value+pVl_Cred;
   mem_m500VL_AJUS_ACRES.Value :=mem_m500VL_AJUS_ACRES.Value+pVl_Ajus_Acres;
   mem_m500VL_CRED_DIF.Value   :=mem_m500VL_CRED_DIF.Value+pVl_Cred_Dif;
   mem_m500VL_CRED_DISP.Value  :=mem_m500VL_CRED_DISP.Value+pVl_Cred;
   mem_m500VL_CRED_DESC.Value  :=mem_m500VL_CRED_DESC.Value+pVl_Cred;
   mem_m500SLD_CRED.Value      :=mem_m500SLD_CRED.Value+pSld_Cred;
   end;
   
mem_m500.Post;
end;

function TFrm_SPED_EFD_PisCofins.fGerarM505(pNAT_BC_CRED,pCST_Cofins: string; pVL_BC_Cofins_TOT, pVL_BC_Cofins_CUM,pVL_BC_Cofins_NC,pVL_BC_Cofins,pQUANT_BC_Cofins_TOT
       ,pQUANT_BC_Cofins  : real; pDESC_CRED: String): Boolean;
begin

if cb_gerar_bloco_m.Checked=false then
   exit;

pVL_BC_Cofins_TOT:=Arredonda( pVL_BC_Cofins_TOT,2);
pVL_BC_Cofins_CUM:=Arredonda( pVL_BC_Cofins_CUM,2);
pVL_BC_Cofins_NC:=Arredonda( pVL_BC_Cofins_NC,2);
pVL_BC_Cofins:=Arredonda( pVL_BC_Cofins,2);
pQUANT_BC_Cofins_TOT:=Arredonda( pQUANT_BC_Cofins_TOT,2);
pQUANT_BC_Cofins:=Arredonda( pQUANT_BC_Cofins,2);
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


if cb_bloco_m_zerado.Checked = false then
   begin
   mem_m505VL_BC_Cofins_TOT.Value   :=mem_m505VL_BC_Cofins_TOT.Value+pVL_BC_Cofins_TOT;
   mem_m505VL_BC_Cofins_CUM.Value   :=mem_m505VL_BC_Cofins_CUM.Value+pVL_BC_Cofins_CUM;
   mem_m505VL_BC_Cofins_NC.Value    :=mem_m505VL_BC_Cofins_NC.Value+pVL_BC_Cofins_CUM;
   mem_m505VL_BC_Cofins_NC.Value    :=mem_m505VL_BC_Cofins_NC.Value+pVL_BC_Cofins_NC;
   mem_m505VL_BC_Cofins_CUM.Value   :=mem_m505VL_BC_Cofins_CUM.Value+pVL_BC_Cofins_CUM;
   mem_m505VL_BC_Cofins.Value       :=mem_m505VL_BC_Cofins.Value+pVL_BC_Cofins;
   mem_m505QUANT_BC_Cofins.Value    :=mem_m505QUANT_BC_Cofins.Value+pQUANT_BC_Cofins;
   end;
mem_m505.Post;

end;


function TFrm_SPED_EFD_PisCofins.fGerarM600(pForcarGeracao: Boolean;pVL_TOT_CONT_NC_PER,pVL_TOT_CRED_DESC,pVL_TOT_CRED_DESC_ANT,pVL_TOT_CONT_NC_DEV,pVL_RET_NC
                                ,pVL_OUT_DED_NC,pVL_CONT_NC_REC,pVL_TOT_CONT_CUM_PER,pVL_RET_CUM,pVL_OUT_DED_CUM,pVL_CONT_CUM_REC,pVL_TOT_CONT_REC: Real): Boolean;
begin
result:=true;
//if (cb_gerar_bloco_m.Checked=false) OR (pVL_TOT_CONT_REC=0) then
if (cb_gerar_bloco_m.Checked=false)  then
   exit;

pVL_TOT_CONT_NC_PER:=Arredonda(pVL_TOT_CONT_NC_PER,2);
pVL_TOT_CRED_DESC:=Arredonda(pVL_TOT_CRED_DESC,2);
pVL_TOT_CRED_DESC_ANT:=Arredonda(pVL_TOT_CRED_DESC_ANT,2);
pVL_TOT_CONT_NC_DEV:=Arredonda(pVL_TOT_CONT_NC_DEV,2);
pVL_RET_NC:=Arredonda(pVL_RET_NC,2);
pVL_OUT_DED_NC:=Arredonda(pVL_OUT_DED_NC,2);
pVL_CONT_NC_REC:=Arredonda(pVL_CONT_NC_REC,2);
pVL_TOT_CONT_CUM_PER:=Arredonda(pVL_TOT_CONT_CUM_PER,2);
pVL_RET_CUM:=Arredonda(pVL_RET_CUM,2);
pVL_OUT_DED_CUM:=Arredonda(pVL_OUT_DED_CUM,2);
pVL_CONT_CUM_REC:=Arredonda(pVL_CONT_CUM_REC,2);
pVL_TOT_CONT_REC:=Arredonda(pVL_TOT_CONT_REC,2);

{
if (cb_COD_INC_TRIB.ItemIndex=1) and (not pForcarGeracao) then
   result:=true
else
}
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
     if cb_bloco_m_zerado.Checked = false then
        begin
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
        end;
   mem_m600.Post;
  end;

end;

function TFrm_SPED_EFD_PisCofins.fGerarM605(pForcarGeracao: Boolean;pVl_Debito,pVlDoc: Real;pCst,pCodCst104
                                       ,pCodCta,pDescCompl: String): Boolean;






begin
 result:=true;
 if cb_gerar_bloco_m.Checked=false then
   exit;

pVl_Debito:=Arredonda(pVl_Debito,2);
{
if (cb_COD_INC_TRIB.ItemIndex=1) and (not pForcarGeracao) then
   result:=true
else}


if (pVl_debito=0) then
   begin
   if pVlDoc<>0 then
      begin
       if not mem_m800.Locate('M800_CST_COFINS',pCst,[]) then
          begin
          mem_m800.Append;
          mem_m800M800_CST_COFINS.Value   := pCst;
          mem_m800M800_VL_TOT_REC.Value:=0;
          mem_m800M800_COD_CTA.Value   :=pCodCta;
          mem_m800M800_DESC_COMPL.Value:=pDescCompl;
          end
       else
          mem_m800.Edit;
       mem_m800M800_VL_TOT_REC.Value:=mem_m800M800_VL_TOT_REC.Value+pVlDoc;
       mem_m800.post;


       if not mem_m810.Locate('M810_NAT_REC',pCodCst104,[]) then
          begin
          mem_m810.Append;
          mem_m810M810_NAT_REC.Value   := pCodCst104;
          mem_m810M810_VL_REC.Value:=0;
          mem_m810M810_COD_CTA.Value   :=pCodCta;
          mem_m810M810_DESC_COMPL.Value:=pDescCompl;
          end
       else
          mem_m810.Edit;
       mem_m810M810_VL_REC.Value:=mem_m810M810_VL_REC.Value+pVlDoc;
       mem_m810.post;
       end
    end
else
   begin

   if mem_m605.IsEmpty then
      begin
      mem_m605.Append;
      mem_m605VL_DEBITO.Value  :=0;
      mem_m605COD_REC.Value    :=CB_COD_REC_COFINS.Text;
      if CB_NUM_CAMPO.ItemIndex=0 then
         mem_m605NUM_CAMPO.Value  :='08'
      else
         mem_m605NUM_CAMPO.Value  :='12';
      end
   else
     mem_m605.Edit;

   if cb_bloco_m_zerado.Checked = false then
      begin
      mem_m605VL_DEBITO.Value  :=mem_m605VL_DEBITO.Value+pVl_Debito;
      end;
   mem_m605.Post;
   end;

end;


function TFrm_SPED_EFD_PisCofins.fGerarM610(pCOD_CONT: String;
pVL_REC_BRT
,pVL_BC_CONT
,pVL_AJUS_ACRES_BC_COFINS
,pVL_AJUS_REDUC_BC_COFINS
,pVL_BC_CONT_AJUS
,pALIQ_Cofins
,pQUANT_BC_Cofins,pALIQ_Cofins_QUANT,pVL_CONT_APUR
,pVL_AJUS_ACRES,pVL_AJUS_REDUC,pVL_CONT_DIFER,pVL_CONT_DIFER_ANT,pVL_CONT_PER: Real): Boolean;
begin
if (cb_gerar_bloco_m.Checked=false) or (pVL_CONT_PER=0)   then
   exit;



pVL_REC_BRT        :=Arredonda(pVL_REC_BRT,2);
pVL_BC_CONT        :=Arredonda(pVL_BC_CONT,2);
pALIQ_Cofins       :=Arredonda(pALIQ_Cofins,2);
pQUANT_BC_Cofins   :=Arredonda(pQUANT_BC_Cofins,2);
pALIQ_Cofins_QUANT :=Arredonda(pALIQ_Cofins_QUANT,2);
pVL_CONT_APUR      :=Arredonda(pVL_CONT_APUR,2);
pVL_AJUS_ACRES     :=Arredonda(pVL_AJUS_ACRES,2);
pVL_AJUS_REDUC     :=Arredonda(pVL_AJUS_REDUC,2);
pVL_CONT_DIFER     :=Arredonda(pVL_CONT_DIFER,2);
pVL_CONT_DIFER_ANT :=Arredonda(pVL_CONT_DIFER_ANT,2);
pVL_CONT_PER       :=Arredonda(pVL_CONT_PER,2);

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
   mem_m610VL_AJUS_ACRES_BC_COFINS.Value :=0;
   mem_m610VL_AJUS_REDUC_BC_COFINS.Value :=0;
   mem_m610VL_BC_CONT_AJUS.Value      :=0;

   end;
if cb_bloco_m_zerado.Checked = false then
   begin
   mem_m610VL_REC_BRT.Value       :=mem_m610VL_REC_BRT.Value+pVL_REC_BRT;
   mem_m610VL_BC_CONT.Value       :=mem_m610VL_BC_CONT.Value+pVL_BC_CONT;
   mem_m610QUANT_BC_Cofins.Value  :=mem_m610QUANT_BC_Cofins.Value+pQUANT_BC_Cofins;
   mem_m610VL_CONT_APUR.Value     :=mem_m610VL_CONT_APUR.Value+pVL_CONT_APUR;
   mem_m610VL_AJUS_ACRES.Value    :=mem_m610VL_AJUS_ACRES.Value+pVL_AJUS_ACRES;
   mem_m610VL_AJUS_REDUC.Value    :=mem_m610VL_AJUS_REDUC.Value+pVL_AJUS_REDUC;
   mem_m610VL_CONT_DIFER.Value    :=mem_m610VL_CONT_DIFER.Value+pVL_CONT_DIFER;
   mem_m610VL_CONT_DIFER_ANT.Value:=mem_m610VL_CONT_DIFER_ANT.Value+pVL_CONT_DIFER_ANT;
   mem_m610VL_CONT_PER.Value      :=mem_m610VL_CONT_PER.Value+pVL_CONT_PER;
   mem_m610VL_AJUS_ACRES_BC_COFINS.Value :=mem_m610VL_AJUS_ACRES_BC_COFINS.Value + pVL_AJUS_ACRES_BC_COFINS;
   mem_m610VL_AJUS_REDUC_BC_COFINS.Value :=mem_m610VL_AJUS_REDUC_BC_COFINS.Value + pVL_AJUS_REDUC_BC_COFINS;
   mem_m610VL_BC_CONT_AJUS.Value      :=mem_m610VL_BC_CONT_AJUS.Value  + pVL_BC_CONT_AJUS;
   end;
mem_m610.Post;

result:=true;
end;

// INICIO



function TFrm_SPED_EFD_PisCofins.fGerar0500(PC_COD_CTA: string): boolean ;


begin


if not mem_0500.Locate('PC_COD_CTA',pc_cod_CTA,[] ) then
   begin
   mem_0500.append;
   mem_0500PC_COD_CTA.Value     :=PC_COD_CTA;
   if fLerGenerico_query('CADPLANOCTAEFD','PC_DATHOR_UEVE,PC_COD_NAT_CC,PC_IND_CTA,PC_COD_CTA_REF,PC_NOME_CTA,PC_NIVEL','PC_COD_CTA='+Quotedstr(PC_COD_CTA),query_consulta) then
      begin
      mem_0500PC_DATHOR_UEVE.Value     :=query_consulta.fieldbyName('PC_DATHOR_UEVE').AsDateTime;
      mem_0500PC_COD_NAT_CC.Value      :=query_consulta.fieldbyName('PC_COD_NAT_CC').AsString;
      mem_0500PC_IND_CTA.Value         :=query_consulta.fieldbyName('PC_IND_CTA').AsString;
      mem_0500PC_COD_CTA_REF.Value     :=query_consulta.fieldbyName('PC_COD_CTA_REF').AsString;
      mem_0500PC_NOME_CTA.Value        :=query_consulta.fieldbyName('PC_NOME_CTA').AsString;
      mem_0500PC_NIVEL.Value           :=query_consulta.fieldbyName('PC_NIVEL').AsInteger;
      end;

   mem_0500.post;
   end;

result:=true;
end;


// TERMINO


procedure TFrm_SPED_EFD_PisCofins.cb_COD_INC_TRIBExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_COD_INC_TRIB');
   fGravaPadroes(0,'CB_COD_INC_TRIB'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_COD_INC_TRIB.ItemIndex));


end;

procedure TFrm_SPED_EFD_PisCofins.CB_COD_TIPO_CONTExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_COD_TIPO_CONT');
   fGravaPadroes(0,'CB_COD_TIPO_CONT'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_COD_TIPO_CONT.ItemIndex));

end;

procedure TFrm_SPED_EFD_PisCofins.CB_IND_REG_CUMExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_IND_REG_CUM');
   fGravaPadroes(0,'CB_IND_REG_CUM'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_IND_REG_CUM.ItemIndex));

end;

procedure TFrm_SPED_EFD_PisCofins.CB_COD_CRED_M100Exit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_COD_CRED_M100');
   fGravaPadroes(0,'CB_COD_CRED_M100'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_COD_CRED_M100.ItemIndex));

end;

procedure TFrm_SPED_EFD_PisCofins.edt_numnf_entExit(Sender: TObject);
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

procedure TFrm_SPED_EFD_PisCofins.lbx_numnf_entKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_ent.ItemIndex>=0 then
      lbx_numnf_ent.Items.Delete(lbx_numnf_ent.ItemIndex);

end;

procedure TFrm_SPED_EFD_PisCofins.edt_numnf_saiExit(Sender: TObject);
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

procedure TFrm_SPED_EFD_PisCofins.lbx_numnf_saiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numnf_sai.ItemIndex>=0 then
      lbx_numnf_sai.Items.Delete(lbx_numnf_sai.ItemIndex);

end;

procedure TFrm_SPED_EFD_PisCofins.edt_num_ecfExit(Sender: TObject);
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

procedure TFrm_SPED_EFD_PisCofins.lbx_numcfKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_numcf.ItemIndex>=0 then
      lbx_numcf.Items.Delete(lbx_numcf.ItemIndex);

end;

procedure TFrm_SPED_EFD_PisCofins.bbSalvarPadraoClick(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_PIS_ENTRADA');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_PIS_SAIDA');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_ENTRADA_PROD');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_SAIDA_PROD');


   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_COFINS_ENTRADA');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_COFINS_SAIDA');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_ENTRADA_PROD');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_SAIDA_PROD');

   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_M105_ENTRADA');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_PIS_CST_M105_SAIDA');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_M105_ENTRADA');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_COFINS_CST_M105_SAIDA');

   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_COFINS_SAIDA');

   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_MANTERCST_PROPRIO');
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_MANTERCST_TERCEIRO');

   fGravaPadroes(0,'CB_MANTERCST_PROPRIO' ,'checked'   ,'_SPED_EFD_PISCOFINS',iif(CB_MANTERCST_PROPRIO.Checked=true,'true','false'));
   fGravaPadroes(0,'CB_MANTERCST_TERCEIRO','checked'   ,'_SPED_EFD_PISCOFINS',iif(CB_MANTERCST_TERCEIRO.Checked=true,'true','false'));


   fGravaPadroes(0,'EDT_PIS_ENTRADA'    ,'string'   ,'_SPED_EFD_PISCOFINS',edt_pis_entrada.Text);
   fGravaPadroes(0,'EDT_PIS_SAIDA'      ,'string'   ,'_SPED_EFD_PISCOFINS',edt_pis_saida.Text);
   fGravaPadroes(0,'EDT_PIS_CST_ENTRADA_PROD','string'   ,'_SPED_EFD_PISCOFINS',edt_pis_cst_entrada_prod.Text);
   fGravaPadroes(0,'EDT_PIS_CST_SAIDA_PROD'  ,'string'   ,'_SPED_EFD_PISCOFINS',edt_pis_cst_saida_prod.Text);

   fGravaPadroes(0,'EDT_COFINS_ENTRADA'    ,'string'   ,'_SPED_EFD_PISCOFINS',edt_Cofins_entrada.Text);
   fGravaPadroes(0,'EDT_COFINS_SAIDA'      ,'string'   ,'_SPED_EFD_PISCOFINS',edt_Cofins_saida.Text);
   fGravaPadroes(0,'EDT_COFINS_CST_ENTRADA_PROD','string'   ,'_SPED_EFD_PISCOFINS',edt_cofins_cst_entrada_prod.Text);
   fGravaPadroes(0,'EDT_COFINS_CST_SAIDA_PROD','string'   ,'_SPED_EFD_PISCOFINS',edt_cofins_cst_saida_prod.Text);


   fGravaPadroes(0,'EDT_COFINS_CST_M105_ENTRADA','string'   ,'_SPED_EFD_PISCOFINS',edt_cofins_cst_M105_entrada.Text);
   fGravaPadroes(0,'EDT_COFINS_CST_M105_SAIDA','string'   ,'_SPED_EFD_PISCOFINS',edt_cofins_cst_M105_saida.Text);

   fGravaPadroes(0,'EDT_PIS_CST_M105_ENTRADA','string'   ,'_SPED_EFD_PISCOFINS',edt_PIS_cst_M105_entrada.Text);
   fGravaPadroes(0,'EDT_PIS_CST_M105_SAIDA','string'   ,'_SPED_EFD_PISCOFINS',edt_PIS_cst_M105_saida.Text);


{   mpis_aliq_entrada        :=edt_pis_entrada.Text;
   mpis_aliq_saida          :=edt_pis_saida.Text;
   mcst_pis_entrada_prod    :=edt_pis_cst_entrada_prod.Text;
   mcst_pis_saida_prod      :=edt_pis_cst_saida_prod.text;

   mcst_pis_M105_entrada    :=edt_pis_cst_M105_entrada.Text;
   mcst_pis_M105_saida      :=edt_pis_cst_M105_saida.text;

   mcst_cofins_M105_entrada :=edt_cofins_cst_M105_entrada.Text;
   mcst_cofins_M105_saida   :=edt_cofins_cst_M105_saida.Text;

   mcofins_aliq_entrada     :=edt_cofins_entrada.Text;
   mcofins_aliq_saida       :=edt_cofins_saida.Text;
   mcst_cofins_entrada_prod :=edt_pis_cst_entrada_prod.Text;
   mcst_cofins_saida_prod   :=edt_pis_cst_saida_prod.Text;

 }
end;

procedure TFrm_SPED_EFD_PisCofins.cb_IND_ESCRIExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_IND_ESCRI');
   fGravaPadroes(0,'CB_IND_ESCRI'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_IND_ESCRI.ItemIndex));

end;

procedure TFrm_SPED_EFD_PisCofins.edt_DESC_CREDExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','EDT_DESC_CRED');
   fGravaPadroes(0,'EDT_DESC_CRED'   ,'text'   ,'_SPED_EFD_PISCOFINS',EDT_DESC_CRED.text);

end;

procedure TFrm_SPED_EFD_PisCofins.CB_COD_REC_PISExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_COD_REC_PIS');
   fGravaPadroes(0,'CB_COD_REC_PIS'   ,'text'   ,'_SPED_EFD_PISCOFINS',CB_COD_REC_PIS.text);

end;

procedure TFrm_SPED_EFD_PisCofins.CB_COD_REC_COFINSExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_COD_REC_COFINS');
   fGravaPadroes(0,'CB_COD_REC_COFINS'   ,'text'   ,'_SPED_EFD_PISCOFINS',CB_COD_REC_COFINS.text);

end;

procedure TFrm_SPED_EFD_PisCofins.cb_IND_ESCRIClick(Sender: TObject);
begin
if cb_IND_ESCRI.itemindex=0 then
   edt_COD_CONT.text:='51	Contribuição cumulativa apurada a alíquota básica'
else
   edt_COD_CONT.text:='01	Contribuição não-cumulativa apurada a alíquota básica';


end;

procedure TFrm_SPED_EFD_PisCofins.CB_NUM_CAMPOExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_NUM_CAMPO');
   fGravaPadroes(0,'CB_NUM_CAMPO'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_NUM_CAMPO.ItemIndex));

end;

procedure TFrm_SPED_EFD_PisCofins.clb_tiponotasClick(Sender: TObject);
begin
clb_tiponotas:=Valida_CheckList(clb_tiponotas);

end;

procedure TFrm_SPED_EFD_PisCofins.CB_NAT_BC_CRED_DCExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_NAT_BC_CRED_DC');
   fGravaPadroes(0,'CB_NAT_BC_CRED_DC'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_NAT_BC_CRED_DC.ItemIndex));

end;

procedure TFrm_SPED_EFD_PisCofins.CB_NAT_BC_CRED_CPRExit(Sender: TObject);
begin
   fDeletaPadroes(0,'_SPED_EFD_PISCOFINS','CB_NAT_BC_CRED_CPR');
   fGravaPadroes(0,'CB_NAT_BC_CRED_CPR'   ,'integer'   ,'_SPED_EFD_PISCOFINS',inttostr(CB_NAT_BC_CRED_CPR.ItemIndex));

end;

procedure TFrm_SPED_EFD_PisCofins.fPreecherCfopValido;
var
mOk: boolean;
    function fAdicionar(pCfop: string): boolean;
    begin
    mem_cfop_validos.append;
    mem_cfop_validoscfop_valido.value := pCfop;
    try
       mem_cfop_validos.post;
       result :=true;
    except
       result:=false;
       end;

    end;
begin
if mem_cfop_validos.active=false then
   begin
   mem_cfop_validos.Open;
   end
else
   mem_cfop_validos.EmptyTable;
mOk:=true;
if mOk then fAdicionar('1102');
if mOk then fAdicionar('1202');
if mOk then fAdicionar('2101');
if mOk then fAdicionar('2102');
if mOk then fAdicionar('2202');
if mOk then fAdicionar('5102');
if mOk then fAdicionar('5202');
if mOk then fAdicionar('5949');
if mOk then fAdicionar('6102');
if mOk then fAdicionar('6949');



end;

function TFrm_SPED_EFD_PisCofins.fListaCfop(pNomeCampo: String): String;
var
mResult: String;
mVirg: String;
begin
mem_cfop_validos.First;
mResult:='';
mVirg:='';
While not mem_cfop_validos.Eof do
   begin
   mResult:=mResult+mVirg+QuotedStr(mem_cfop_validoscfop_valido.AsString);
   mVirg:=',';
   mem_cfop_validos.Next;
   end;
if trim(mResult)<>'' then
   result:=' and '+pNomeCampo+' IN ('+mResult+')'
else
   result:='';
end;
procedure TFrm_SPED_EFD_PisCofins.BitBtn1Click(Sender: TObject);
begin
Application.CreateForm(TFrm_VisualizadorArqPaipo, Frm_VisualizadorArqPaipo);
Frm_VisualizadorArqPaipo.showmodal;
freeandnil(Frm_VisualizadorArqPaipo);

end;

end.


