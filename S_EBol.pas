unit S_EBol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, S_DM1, db, dbtables, S_BCO, Buttons,
  func, lerarq,S_Impres, RDprint, Gauges,printers, Grids, DBGrids,
  ExtDlgs, ComCtrls, RLReport, RLBarcode,RlPrinters, RLPDFFilter,
  RLXLSFilter, RLRichFilter, RLFilters, RLHTMLFilter, S_SelEmp, RxMemDS,
  Spin, ToolEdit, CurrEdit;

type
  TDadosBoleto = record
  pTipo: Integer;
  pCodEmp: Integer;
  pCodBco: Integer;

  pNumIni: Integer;
  pNumFin: Integer;
  pDtIni: Tdatetime;
  pDtFin: TDatetime;
  pParc: String;
  pPend: boolean;

  pChavePed: Integer;
  pLotSeqPed: Integer;
  end;


type
  TFrm_EBol = class(TForm)
    Tb_Dup: TQuery;
    Src_dup: TDataSource;
    Tb_DupCRDTVCTO: TDateTimeField;
    Tb_DupCRDTEMIS: TDateTimeField;
    Tb_DupCRNUMERO: TFloatField;
    Tb_DupCRDESD: TStringField;
    Tb_DupCRNOSNUM: TStringField;
    Tb_DupCRVALOR: TFloatField;
    Tb_DupCRDESCF: TFloatField;
    Tb_DupCRDTDESCF: TDateTimeField;
    Tb_DupCRJURD: TFloatField;
    Tb_DupCRCODCLI: TFloatField;
    Tb_DupCRCODVEN: TFloatField;
    Tb_Dupnomcli: TStringField;
    Tb_Dupendereco: TStringField;
    Tb_Dupbairro: TStringField;
    Tb_Dupcidade: TStringField;
    Tb_Dupuf: TStringField;
    Tb_Dupcnpj: TStringField;
    Tb_Dupcep: TStringField;
    Tb_Dupcodagced: TStringField;
    Tb_Dupnndig: TStringField;
    Tb_Dupnumdoc: TStringField;
    Tb_Dupaceite: TStringField;
    Tb_Dupespecie: TStringField;
    Tb_Dupmoeda: TStringField;
    U_Dup: TUpdateSQL;
    Tb_Dupdignn: TStringField;
    Tb_Dupagendig: TStringField;
    Tb_Duplocpag: TStringField;
    Tb_Dupcodbco: TStringField;
    Tb_DupCRDUP: TFloatField;
    Tb_Dupdatven: TStringField;
    Tb_Dupjurdia: TStringField;
    Tb_DupCRDNOSNUM: TStringField;
    Tb_DupCRCODDIG: TStringField;
    Tb_DupCRCODBAR: TStringField;
    Tb_DupCRACEITE: TStringField;
    Tb_DupCRESPECIE: TStringField;
    Tb_Dupnombco: TStringField;
    Tb_Duprazao_ced: TStringField;
    Tb_Dupcodcar: TStringField;
    Tb_DupCRINST01: TStringField;
    Tb_DupCRINST02: TStringField;
    Tb_DupCRINST03: TStringField;
    Tb_DupCRINST04: TStringField;
    Tb_DupCRCODEMP: TFloatField;
    Tb_DupCRTABPV: TStringField;
    Tb_DupCRCODPV: TFloatField;
    Tb_Dupdescfin: TStringField;
    Tb_Dupoutras_instruc: TStringField;
    Tb_DupCRDESCD: TFloatField;
    Tb_DupCRNFACUM: TStringField;
    SavePictureDialog1: TSavePictureDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TsRelatorio: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dupemi: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    NUMI: TEdit;
    NUMF: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    CB_TPBOL: TCheckBox;
    CB_TPEMI: TCheckBox;
    PARC: TEdit;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    cb_modelo: TCheckBox;
    NUMBOL: TEdit;
    NOSNUM: TEdit;
    DIGNOSNUM: TEdit;
    CB_GRAVNOSNUM: TCheckBox;
    gb_instrucoes: TGroupBox;
    INST01: TEdit;
    INST02: TEdit;
    INST03: TEdit;
    INST04: TEdit;
    CB_SUBST: TCheckBox;
    cb_subsNosNum: TCheckBox;
    CODDIG: TEdit;
    CODBAR: TEdit;
    MDTVCTO: TMaskEdit;
    VALOR: TEdit;
    Panel2: TPanel;
    bbImprimir: TBitBtn;
    bbPadrao: TBitBtn;
    bbSair: TBitBtn;
    bbAtualizar: TBitBtn;
    bbSalvar: TBitBtn;
    RL_BOLETAS: TRLReport;
    detrod01: TRLBand;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDraw20: TRLDraw;
    detRod03: TRLBand;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    RLBand1: TRLBand;
    rlLogo02: TRLImage;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLLabel31: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDraw26: TRLDraw;
    RLLabel33: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel34: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLLabel35: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText36: TRLDBText;
    RLDraw31: TRLDraw;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLDraw32: TRLDraw;
    RLDBText37: TRLDBText;
    RLLabel41: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLLabel45: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel46: TRLLabel;
    RLDraw35: TRLDraw;
    RLLabel47: TRLLabel;
    RLDraw36: TRLDraw;
    RLLabel48: TRLLabel;
    RLDraw37: TRLDraw;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDraw38: TRLDraw;
    RLLabel51: TRLLabel;
    RLDBText40: TRLDBText;
    RLDBT_Jurdia2: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDraw39: TRLDraw;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLDBText50: TRLDBText;
    RLBand3: TRLBand;
    rlLogo03: TRLImage;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLLabel59: TRLLabel;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDraw46: TRLDraw;
    RLLabel61: TRLLabel;
    RLDraw47: TRLDraw;
    RLLabel62: TRLLabel;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDraw48: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLLabel63: TRLLabel;
    RLDBText58: TRLDBText;
    RLLabel64: TRLLabel;
    RLDBText59: TRLDBText;
    RLLabel65: TRLLabel;
    RLDBText60: TRLDBText;
    RLLabel66: TRLLabel;
    RLDBText61: TRLDBText;
    RLDraw51: TRLDraw;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLDraw52: TRLDraw;
    RLDBText62: TRLDBText;
    RLLabel69: TRLLabel;
    RLDBText63: TRLDBText;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLLabel73: TRLLabel;
    RLDBText64: TRLDBText;
    RLLabel74: TRLLabel;
    RLDraw55: TRLDraw;
    RLLabel75: TRLLabel;
    RLDraw56: TRLDraw;
    RLLabel76: TRLLabel;
    RLDraw57: TRLDraw;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLDraw58: TRLDraw;
    RLLabel79: TRLLabel;
    RLDBText65: TRLDBText;
    RLDBT_Jurdia0: TRLDBText;
    RLDBText67: TRLDBText;
    RLDBText68: TRLDBText;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLDBText71: TRLDBText;
    RLLabel80: TRLLabel;
    RLDBText72: TRLDBText;
    RLDBText73: TRLDBText;
    RLDBText74: TRLDBText;
    RLLabel82: TRLLabel;
    RLDraw59: TRLDraw;
    RLLabel83: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLLabel84: TRLLabel;
    rlDtvctoB01: TRLDBText;
    RLBand2: TRLBand;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLDraw40: TRLDraw;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    Tb_DupCRMULTA: TFloatField;
    Tb_DupCRQTDDM: TFloatField;
    Tb_Dupmulta_mora: TStringField;
    RLDBText75: TRLDBText;
    RLDBText77: TRLDBText;
    Tb_DupCRCODFPGTO: TFloatField;
    cb_boleto: TCheckBox;
    CB_JURDIA: TCheckBox;
    Memo1: TMemo;
    RLDBText17: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLLabel85: TRLLabel;
    rldb_cnpj: TRLDBText;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLDBText41: TRLDBText;
    det01: TRLBand;
    rlLogo01: TRLImage;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw7: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLLabel6: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText12: TRLDBText;
    RLDraw12: TRLDraw;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw13: TRLDraw;
    RLDBText13: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLLabel17: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel18: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel19: TRLLabel;
    RLDraw17: TRLDraw;
    RLLabel20: TRLLabel;
    RLDraw18: TRLDraw;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDraw19: TRLDraw;
    RLLabel23: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBT_Jurdia: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText76: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLLabel24: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText66: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText79: TRLDBText;
    RLLabel89: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel52: TRLLabel;
    RLDBText47: TRLDBText;
    RLLabel53: TRLLabel;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText80: TRLDBText;
    RLLabel54: TRLLabel;
    RLDBText82: TRLDBText;
    RLLabel93: TRLLabel;
    RLLabel96: TRLLabel;
    tsMod02Peguena: TTabSheet;
    rlModelo02_pegueno: TRLReport;
    RLBand4: TRLBand;
    RLLabel97: TRLLabel;
    RLDraw60: TRLDraw;
    RLBand8: TRLBand;
    RLLabel161: TRLLabel;
    RLBand9: TRLBand;
    RLImage3: TRLImage;
    RLDBText141: TRLDBText;
    RLDBText142: TRLDBText;
    RLDraw100: TRLDraw;
    RLDraw101: TRLDraw;
    RLDraw102: TRLDraw;
    RLDraw103: TRLDraw;
    RLDraw104: TRLDraw;
    RLLabel163: TRLLabel;
    RLDBText143: TRLDBText;
    RLDBText144: TRLDBText;
    RLDraw105: TRLDraw;
    RLLabel165: TRLLabel;
    RLDraw106: TRLDraw;
    RLLabel166: TRLLabel;
    RLDBText145: TRLDBText;
    RLDBText146: TRLDBText;
    RLDraw107: TRLDraw;
    RLDraw108: TRLDraw;
    RLDraw109: TRLDraw;
    RLLabel167: TRLLabel;
    RLDBText147: TRLDBText;
    RLLabel168: TRLLabel;
    RLDBText148: TRLDBText;
    RLLabel169: TRLLabel;
    RLDBText149: TRLDBText;
    RLLabel170: TRLLabel;
    RLDBText150: TRLDBText;
    RLDraw110: TRLDraw;
    RLLabel171: TRLLabel;
    RLLabel172: TRLLabel;
    RLDraw111: TRLDraw;
    RLDBText151: TRLDBText;
    RLLabel173: TRLLabel;
    RLDBText152: TRLDBText;
    RLLabel174: TRLLabel;
    RLLabel176: TRLLabel;
    RLDraw113: TRLDraw;
    RLLabel177: TRLLabel;
    RLDBText153: TRLDBText;
    RLLabel178: TRLLabel;
    RLDraw114: TRLDraw;
    RLDraw115: TRLDraw;
    RLLabel180: TRLLabel;
    RLDraw116: TRLDraw;
    RLLabel182: TRLLabel;
    RLDraw117: TRLDraw;
    RLLabel183: TRLLabel;
    RLDBText154: TRLDBText;
    RLDBText155: TRLDBText;
    RLDBText156: TRLDBText;
    RLDBText157: TRLDBText;
    RLDBText158: TRLDBText;
    RLDBText159: TRLDBText;
    RLDBText160: TRLDBText;
    RLDraw118: TRLDraw;
    RLLabel184: TRLLabel;
    RLLabel185: TRLLabel;
    RLDBText161: TRLDBText;
    RLDBText162: TRLDBText;
    RLDBText163: TRLDBText;
    RLDBMemo6: TRLDBMemo;
    RLLabel186: TRLLabel;
    RLDBText164: TRLDBText;
    RLLabel187: TRLLabel;
    RLDBText165: TRLDBText;
    RLDBText166: TRLDBText;
    RLDBText167: TRLDBText;
    RLLabel188: TRLLabel;
    RLDBText168: TRLDBText;
    RLDBText169: TRLDBText;
    RLLabel189: TRLLabel;
    RLLabel191: TRLLabel;
    RLLabel192: TRLLabel;
    RLBand7: TRLBand;
    RLImage2: TRLImage;
    RLDBText112: TRLDBText;
    RLDBText113: TRLDBText;
    RLDBText114: TRLDBText;
    RLDraw80: TRLDraw;
    RLDraw81: TRLDraw;
    RLDraw83: TRLDraw;
    RLDraw84: TRLDraw;
    RLLabel131: TRLLabel;
    RLDBText115: TRLDBText;
    RLLabel132: TRLLabel;
    RLDBText116: TRLDBText;
    RLDraw85: TRLDraw;
    RLLabel133: TRLLabel;
    RLDraw86: TRLDraw;
    rldb_ender_emitente: TRLDBText;
    RLDraw87: TRLDraw;
    RLDraw90: TRLDraw;
    RLLabel139: TRLLabel;
    RLLabel140: TRLLabel;
    RLDraw91: TRLDraw;
    RLDBText123: TRLDBText;
    RLLabel141: TRLLabel;
    RLDBText124: TRLDBText;
    RLLabel142: TRLLabel;
    RLLabel144: TRLLabel;
    RLDraw92: TRLDraw;
    RLLabel193: TRLLabel;
    RLLabel155: TRLLabel;
    rldb_cnpj_emitente: TRLDBText;
    RLLabel156: TRLLabel;
    RLDraw98: TRLDraw;
    RLDraw119: TRLDraw;
    RLDBText117: TRLDBText;
    RLDBText118: TRLDBText;
    RLDraw88: TRLDraw;
    RLLabel135: TRLLabel;
    RLDBText119: TRLDBText;
    RLLabel136: TRLLabel;
    RLDBT_numdoc: TRLDBText;
    RLLabel137: TRLLabel;
    RLDraw89: TRLDraw;
    RLDBText120: TRLDBText;
    RLLabel138: TRLLabel;
    rldb_aceite: TRLDBText;
    RLDraw93: TRLDraw;
    RLLabel143: TRLLabel;
    rldb_CRDTEMIS: TRLDBText;
    RLDraw120: TRLDraw;
    RLDraw121: TRLDraw;
    RLLabel145: TRLLabel;
    RLDB_CRVALOR: TRLDBText;
    RLLabel98: TRLLabel;
    RLDBText121: TRLDBText;
    RLDBBarcode2: TRLDBBarcode;
    Tb_Dupcnpj_emitente: TStringField;
    Tb_Dupender_emitente: TStringField;
    Tb_Dupcoddig: TStringField;
    RLDraw61: TRLDraw;
    mem_bol: TRxMemoryData;
    mem_bolCRDTEMIS: TDateTimeField;
    mem_bolCRVALOR: TFloatField;
    src_bol: TDataSource;
    mem_bollocpag: TStringField;
    mem_boldatven: TStringField;
    mem_bolrazao_ced: TStringField;
    mem_bolcodagced: TStringField;
    mem_bolnumdoc: TStringField;
    mem_bolespecie: TStringField;
    mem_bolaceite: TStringField;
    mem_bolnndig: TStringField;
    mem_bolcodcar: TStringField;
    mem_bolmoeda: TStringField;
    mem_boldescfin: TStringField;
    mem_boljurdia: TStringField;
    mem_boloutras_instruc: TStringField;
    mem_bolCRINST01: TStringField;
    mem_bolCRINST02: TStringField;
    mem_bolCRINST03: TStringField;
    mem_bolCRINST04: TStringField;
    mem_bolmulta_mora: TStringField;
    mem_bolnomcli: TStringField;
    mem_bolcnpj: TStringField;
    mem_bolendereco: TStringField;
    mem_bolcep: TStringField;
    mem_bolbairro: TStringField;
    mem_bolcidade: TStringField;
    mem_bolnombco: TStringField;
    mem_bolcodbco: TStringField;
    mem_bolcoddig: TStringField;
    mem_bolcnpj_emitente: TStringField;
    mem_bolender_emitente: TStringField;
    lbl_qtdvias: TLabel;
    edt_qtdvias: TSpinEdit;
    mem_bolCRCODBAR: TStringField;
    Tb_DupCRQTDPARC: TFloatField;
    Tb_DupCRNUMPARC: TFloatField;
    Tb_DupCRCOMPETENCIA_DTINICIO: TDateTimeField;
    GroupBox1: TGroupBox;
    Memo2: TMemo;
    mem_bolcodagced_label: TStringField;
    RLDBText83: TRLDBText;
    RLDBText84: TRLDBText;
    RLDBText85: TRLDBText;
    RLDBText86: TRLDBText;
    RLDBText87: TRLDBText;
    RLDBText88: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText89: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText90: TRLDBText;
    Tb_Dupnndig_semcarteira: TStringField;
    mem_bolnndig_semcart: TStringField;
    tsConfiguracao: TTabSheet;
    lbl_modpeq_sacador: TRLLabel;
    cb_sacadomodpeq: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    TabSheet2: TTabSheet;
    RLReport1: TRLReport;
    RLBand5: TRLBand;
    RLlogo_carne1: TRLImage;
    RLMemo_RECIBO: TRLMemo;
    RLDraw62: TRLDraw;
    RLlogo_carne2: TRLImage;
    RLDraw63: TRLDraw;
    RLDBText28: TRLDBText;
    RLDraw64: TRLDraw;
    RLDBText78: TRLDBText;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    rldbtext_nomcli: TRLDBText;
    rldbtext_cnpj: TRLDBText;
    RLDraw67: TRLDraw;
    RLLabel88: TRLLabel;
    RLDraw68: TRLDraw;
    RLLabel90: TRLLabel;
    RLDBText81: TRLDBText;
    mem_bolcrnumparc: TFloatField;
    mem_bolcrqtdparc: TFloatField;
    RLDBText91: TRLDBText;
    RLDBText92: TRLDBText;
    RLDBText93: TRLDBText;
    RLDraw69: TRLDraw;
    RLLabel95: TRLLabel;
    RLDraw70: TRLDraw;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLDBText94: TRLDBText;
    RLDraw71: TRLDraw;
    RLDBText95: TRLDBText;
    RLDraw72: TRLDraw;
    RLLabel101: TRLLabel;
    Tb_DupCRCODBCO: TFloatField;
    Tb_Duptipodoc_emitente: TStringField;
    gb_anexos: TGroupBox;
    Panel3: TPanel;
    bbInserirAnexo: TBitBtn;
    bbRemoverAnexo: TBitBtn;
    Src_CaddarOutAnexos: TDataSource;
    DBGrid2: TDBGrid;
    qr_CaddarOutAnexos: TQuery;
    qr_CaddarOutAnexosCROA_ID: TFloatField;
    qr_CaddarOutAnexosCROA_ID_CADDAR: TFloatField;
    SaveDialog1: TSaveDialog;
    Tb_DupCRID_NEW: TFloatField;
    qr_CaddarOutAnexosCROA_ENDERECO: TStringField;
    mem_bolsacador_avalista: TStringField;
    Tb_Dupsacador_avalista: TStringField;
    RLDBText96: TRLDBText;
    RLDBText97: TRLDBText;
    RLDBText98: TRLDBText;
    RLDBText99: TRLDBText;
    TabSheet3: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    edt_tipo: TSpinEdit;
    edt_codemp: TSpinEdit;
    Label14: TLabel;
    edt_codbco: TSpinEdit;
    Label15: TLabel;
    edt_numbco: TSpinEdit;
    Label16: TLabel;
    edt_codmoe: TSpinEdit;
    Label17: TLabel;
    edt_numcon: TEdit;
    Label18: TLabel;
    edt_codage: TEdit;
    Label19: TLabel;
    edt_codced: TEdit;
    Label20: TLabel;
    edt_codced_dig: TEdit;
    Label21: TLabel;
    edt_codcar: TEdit;
    edt_dtemis: TDateEdit;
    Label22: TLabel;
    Label23: TLabel;
    edt_dtvcto: TDateEdit;
    Label24: TLabel;
    edt_nosnum: TSpinEdit;
    edt_valordup: TCurrencyEdit;
    Label25: TLabel;
    Label26: TLabel;
    edt_parcela: TSpinEdit;
    Label27: TLabel;
    edt_qtdparc: TSpinEdit;
    bbValidar: TBitBtn;
    Label28: TLabel;
    edt_linha_digitavel: TEdit;
    Label29: TLabel;
    edt_codbar: TEdit;
    Label30: TLabel;
    edt_numdup: TSpinEdit;
    GroupBox3: TGroupBox;
    Label31: TLabel;
    edt_linha_dig_esp: TEdit;
    Label32: TLabel;
    edt_linha_dig_gerado: TEdit;
    Label33: TLabel;
    edt_linha_dig_resultados: TEdit;
    GroupBox4: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edt_valor01: TEdit;
    edt_valor02: TEdit;
    edt_resultado: TEdit;
    bbComparar: TBitBtn;
    cb_sacador_avalista: TCheckBox;
    procedure NUMIKeyPress(Sender: TObject; var Key: Char);
    procedure NUMFExit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure Tb_DupCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure INST01Exit(Sender: TObject);
    procedure INST02Exit(Sender: TObject);
    procedure INST03Exit(Sender: TObject);
    procedure INST04Exit(Sender: TObject);
    procedure INST03KeyPress(Sender: TObject; var Key: Char);
    procedure INST01KeyPress(Sender: TObject; var Key: Char);
    procedure INST02KeyPress(Sender: TObject; var Key: Char);
    procedure INST04KeyPress(Sender: TObject; var Key: Char);
    procedure NUMBOLExit(Sender: TObject);
    procedure bbPadraoClick(Sender: TObject);
    procedure CB_TPBOLClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MDTVCTOExit(Sender: TObject);
    procedure VALORExit(Sender: TObject);
    procedure bbSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_sacadomodpeq222Click(Sender: TObject);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cb_sacadomodpeqClick(Sender: TObject);
    procedure bbInserirAnexoClick(Sender: TObject);
    procedure Src_dupDataChange(Sender: TObject; Field: TField);
    procedure bbRemoverAnexoClick(Sender: TObject);
    procedure cb_fator_vcto_novoClick(Sender: TObject);
    procedure bbValidarClick(Sender: TObject);
    procedure bbCompararClick(Sender: TObject);
    procedure cb_sacador_avalistaClick(Sender: TObject);
  private
    { Private declarations }
    mdoc_emitente: string;
    mcnpj_emitente: string;
    function fAtualizaPadrao(pTipo: Integer): Boolean;

    function fBuscarSequenciaBanco(pCodEmp,pCodBco: Integer): Integer;


    function fValidarTitulos: Boolean;


    function fAnexoExiste(pNomeArquivo: String; pIdDar: real): boolean;

    function fDeletarAnexo(pIdAnexoDar: real): boolean;


    function fAdicionaranexo(pNomeArquivo: String; pIdDar: real): boolean;

    function fLerCaddarAnexo(pIdDar: real): boolean;




  public
    { Public declarations }

    mDadosBoleto: TDadosBoleto;

    form_impres_ebol: tFrm_Impres;
    function femibol(pDadosBoleto: TDadosBoleto): Boolean;
    function fAtualizaNosNum(pTipo,pSubsNosNum,pPvRep:Integer; pInst01,pInst02,pInst03,pInst04: String;pNosNum:Real): Boolean;


   function fCodigoBarras(pTipo,pCodemp,pCodBco,pNumBco,pCodMoe: Integer; pNumCon,pCodAge,pCodCed,pDigCed,pCodCar: String; pDtEmis, pDtVcto: TDateTime; pNosNum,pValor: Real; pParcela,pQtdParc: Integer;
   pNumDup: Integer): Boolean;// ptipo = 0-Calcula tudo


    function fAtualizaInstrucao(pTipo:Integer; pInst01,pInst02,pInst03,pInst04: String): Boolean;
    procedure fCarregardadosboletos(pqtdvias: Integer);


  end;

  function fdar01gant(ptipo: Integer): Boolean;

var
  Frm_EBol: TFrm_EBol;
  ebol_ori: String;
  mUltCaddarOutAnexoLido: real;
// variaveis de retorno do codigo de barras
//  mret_nosnum: Real;
  mret_nosnum: String;
  mret_dignn : String;
  mret_codbar: String;
  mret_numimp: String;
  mNomeJpeg: String;


//function fCalcBarras(pCodemp,pBanco: Integer; pCodBco,pValor,pnumero,pdup: Real; pdesd, pinst01,pinst02,pinst03,pinst04: String; Pdtemis,PdtVcto: TDateTime ): Boolean;
  Form_SelEmp: TFrm_SelEmp;
const
  mDataFatorNova = '22/02/2025';
  mDataFatorAnt = '07/10/1997';

implementation

uses S_Tab05, S_SQL, S_DM2, func_excecoes,  S_Per2, S_DM4,
  S_Justif, S_EnviarEmail, S_Ocorrencias;

{$R *.dfm}
const mBancoSafra = 422;

function fdar01gant(ptipo: Integer): Boolean;
var
  x,mcod: Integer;
  minstru: String;
  v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(CRCODNOV) from OLD_CADDAR');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADDAR (';
v:='';
for x:=0 to DM1.Tb_Dar.FieldCount-1 do
   begin
   if (DM1.Tb_Dar.Fields[x].FieldKind=fkCalculated) or (DM1.Tb_Dar.Fields[x].FieldKind = fkLookup) or
      (DM1.Tb_Dar.Fields[x].FieldName='IDDAR') then
      Continue;

   minstru:=minstru+v+DM1.Tb_Dar.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',CRCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Dar.FieldCount-1 do
   begin
   if (DM1.Tb_Dar.Fields[x].FieldKind=fkCalculated) or (DM1.Tb_Dar.Fields[x].FieldKind = fkLookup) or
      (DM1.Tb_Dar.Fields[x].FieldName='IDDAR') then
      Continue;
   if DM1.Tb_Dar.Fields[x].FieldName='CRSTATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as CRSTATUS '
   else if DM1.Tb_Dar.Fields[x].FieldName='CRCODUSR' then
      minstru:=minstru+v+FormatFloat('00000',codusr)+' as CRCODUSR '
   else if DM1.Tb_Dar.Fields[x].FieldName='CRDTALT' then
      minstru:=minstru+v+' SYSDATE as CRDTALT '
   else if DM1.Tb_Dar.Fields[x].FieldName='CRHRALT' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as CRHRALT '
   else
      minstru:=minstru+v+DM1.Tb_Dar.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as CRCODNOV ';
minstru:=minstru+' from CADDAR where CRCODEMP=0'+DM1.Tb_DarCRCODEMP.AsString
                +' and CRNUMERO=0'+DM1.Tb_DarCRNUMERO.AsString
                +' and CRDESD='+chr(39)+DM1.Tb_DarCRDESD.Value+chr(39)
                +' and CRDUP=0'+DM1.Tb_DarCRDUP.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
//   fmensagem('Erro ao Fazer o Backup da Alteracao DAR391. Contactar Suporte',0,['0'],0);
   end;
result:=True;
end;



procedure TFrm_EBol.NUMIKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_EBol.NUMFExit(Sender: TObject);
begin
if ValFloat(NUMF.Text)<=0 then
   NUMF.Text:=NUMI.Text;
if ValFloat(NUMI.Text)>ValFloat(NUMF.Text) then
   begin
   fMensagem('Número inicial maior que final. Invalido!',0,['0'],0);
   NUMI.SetFocus;
   end;
end;

procedure TFrm_EBol.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_EBol.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_EBol.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_EBol',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(self);
   key:=#0;
   end;

end;



procedure TFrm_EBol.CODBCOExit(Sender: TObject);


     function fAtualizarTag(pInstrucao: String): String;
     { tag

     %MES_EXT%
     %ANO%

     }

     begin
     result := StringReplace(pInstrucao, '%MES_EXT%', NMes(date()), [rfReplaceAll, rfIgnoreCase]);
     result := StringReplace(result, '%ANO%', formatDatetime('yyyy', date()), [rfReplaceAll, rfIgnoreCase]);




     
     end;

begin

if (trim(CODBCO.Text)='') then
   begin
   fMensagem('Campo de preenchimento obrigatório!',0,['0'],0);
   CODBCO.SetFocus;
   exit;
   end;
if not flcadbco(1,0,0,CODBCO.Text) then
   begin
   fMensagem('Banco não Cadastrado!',0,['0'],0);
   CODBCO.SetFocus;
   end
else
   begin
   if fsonumero(DM1.Tb_BcoBCDOCBOL.AsString)>0 then
      begin
      mdoc_emitente :=DM1.Tb_BcoBCDOCEMIBOL.AsString;
      mcnpj_emitente:=DM1.Tb_BcoBCDOCBOL.AsString;

      if DM1.Tb_bcoBCDOCEMIBOL.AsInteger=1 then
         mcnpj_emitente:=FormatFloat('000"."000"."000"-"00',fsonumero(mcnpj_emitente))
      else
         mcnpj_emitente:=FormatFloat('00"."000"."000"/"0000"-"00',fsonumero(mcnpj_emitente));

      end
   else
      begin
      mdoc_emitente :='0';
      mcnpj_emitente:=FormatFloat('00"."000"."000"/"0000"-"00',fsonumero(mcnpj_emitente));
      end;
   NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
   if (trim(INST01.Text)='') and
      (trim(INST02.Text)='') and
      (trim(INST03.Text)='') and
      (trim(INST04.Text)='') then
      begin
      INST01.Text:=fAtualizarTag(DM1.Tb_BcoBCINST01.Value);
      INST02.Text:=fAtualizarTag(DM1.Tb_BcoBCINST02.Value);
      INST03.Text:=fAtualizarTag(DM1.Tb_BcoBCINST03.Value);
      INST04.Text:=fAtualizarTag(DM1.Tb_BcoBCINST04.Value);
      end;
//   if ValInt(numbol.Text)=0 then
//      begin
      NUMBOL.Text:=DM1.Tb_BcoBCNUMBOL.AsString;
//      end;

   end;

//cb_fator_vcto_novo.Visible:=DM1.Tb_BcoBCNUMBCO.Value=756;

end;

procedure TFrm_EBol.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EBol.bbImprimirClick(Sender: TObject);
var
mdignn,minc: String;
mnosnum: Real;
x: Integer;
mcodcli: Integer;
mCliente: Boolean;

    procedure fAdicionarAnexos(pNomeAnexo: String);
    begin
    if FileExists(pNomeAnexo) then
        Frm_EnviarEmail.lbxAnexos.Items.Add(pNomeAnexo);

    end;

    procedure fAdicionarAnexosOutros;
    begin
    if not qr_CaddarOutAnexos.IsEmpty then
       begin
       qr_CaddarOutAnexos.First;
       while not qr_CaddarOutAnexos.Eof do
          begin
          fAdicionarAnexos(qr_CaddarOutAnexosCROA_ENDERECO.AsString);
          qr_CaddarOutAnexos.Next;
          end;
       end;
    end;



begin



bbAtualizar.Click;

if Tb_Dup.Eof then
   begin
   fMensagem('Nada há ser impresso!',0,['0'],0);
   exit;
   end;
if not fValidarTitulos then
   exit;


if not CB_TPBOL.Checked then
   begin
   if (DM1.Tb_BcoBCNUMBCO.AsInteger=1) and (fsonumero(DM1.Tb_BcoBCNUMCON.Value)<=0) then
      begin
      fmensagem('Cadastro do Banco Imcompleto Falta Número do convênio (pre-fixo do nosso Numero)!',0,['0'],0);
      exit;
      end;


   if DM1.Tb_BcoBCNUMBCO.Value>998 then
      begin
      fMensagem('Código do Banco não pode ser maior 998!',0,['0'],0);
      exit;
      end;

   if (DM1.Tb_BcoBCNUMBCO.Value=1) and (length(trim(DM1.Tb_BcoBCNUMBCO.AsString))>6) then
      begin
      fmensagem('O Sistema nao esta habilitado para gerar codigo de barras '
               +'para o Banco do Brasil com Convenio com '+IntToStr(length(trim(DM1.Tb_BcoBCNUMBCO.AsString)))
               +' digitos!',0,['0'],0);
      exit;
      end;

   if fsonumero(DM1.Tb_BcoBCCODCED.Value)<=0 then
      begin
      fMensagem('Cadastro do banco incompleto falta código do Beneficiario!',0,['0'],0);
      exit;
      end;
   if FileExists('\SGE\LOGBAN.JPG') then
      DeleteFile('\SGE\LOGBAN.JPG');
   end;

IF CB_JURDIA.Checked then
   begin
   RLDBT_Jurdia0.visible:=false;
   RLDBT_Jurdia.Visible:=false;
   RLDBT_Jurdia2.Visible:=false;
   end
else
   RLDBT_Jurdia0.visible:=true;
   RLDBT_Jurdia.Visible :=true;
   RLDBT_Jurdia2.Visible:=true;

if CB_TPBOL.Checked then
   begin
   CODBCOExit(Self);
//   if fsonumero(NUMBOL.Text)=DM1.Tb_BcoBCNUMBOL.Value then
//      NUMBOL.Text:='';

   fAtualizaNosNum(1,
                  iif(cb_subsNosNum.Checked,1,0),
                  DM1.Tb_BcoBCIMPPVREP.AsInteger,
                  INST01.Text,
                  INST02.Text,
                  INST03.Text,
                  INST04.Text,
                  0);
//                  ValFloat(NUMBOL.Text));
   if CB_SUBST.Checked then
      fAtualizaInstrucao(0,INST01.Text,INST02.Text,INST03.Text,INST04.Text);
   Tb_Dup.First;
   mDadosBoleto.pTipo  :=1;
   mDadosBoleto.pCodEmp:=codemp;
   mDadosBoleto.pTipo:=1;
   mDadosBoleto.pCodBco:=valint(CODBCO.Text);
   mDadosBoleto.pNumIni:=valint(NUMI.Text);
   mDadosBoleto.pNumFin:=valint(NUMF.Text);
   mDadosBoleto.pDtIni :=StrToDateTime(MDT1.Text);
   mDadosBoleto.pDtFin :=StrToDateTime(MDT2.Text);
   mDadosBoleto.pParc  :=trim(PARC.Text);
   mDadosBoleto.pPend  :=CB_TPEMI.Checked;
   mDadosBoleto.pChavePed  :=0;
   mDadosBoleto.pLotSeqPed :=0;








   femibol(mDadosBoleto);
   end
else
   begin
   CODBCOExit(Self);
//   if fsonumero(NUMBOL.Text)=DM1.Tb_BcoBCNUMBOL.Value then
//      NUMBOL.Text:='';
   fAtualizaNosNum(0,
                  iif(cb_subsNosNum.Checked,1,0),
                  DM1.Tb_BcoBCIMPPVREP.AsInteger,
                  INST01.Text,
                  INST02.Text,
                  INST03.Text,
                  INST04.Text,
                  0);
//                  ValFloat(NUMBOL.Text));
   if CB_SUBST.Checked then
      fAtualizaInstrucao(0,INST01.Text,INST02.Text,INST03.Text,INST04.Text);
   Tb_Dup.First;
   fCarregardadosboletos(edt_qtdvias.Value);



// INICIO PARA FORTES REPORT

      if not (DM1.Tb_BcoBCLOGO.IsNull) and (DM1.Tb_BcoBCLOGO.Value<>'') then
         begin
         DM1.Tb_BcoBCLOGO.SaveToFile('C:\SGE\LOGBAN.JPG');
         rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
         rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
         rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
         RLImage3.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
         RLImage2.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
         end;
      if flcadimp_sys(1,Tb_DupCRCODEMP.AsInteger,0,'BOLETAS_LA') then
         begin
         for x:=0 to Printer.printers.Count-1 do
            begin
            if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
               begin

               RLPrinter.PrinterIndex:=x;
{                Name := 'sua impressora';   //ou RLPrinter.PrinterIndex
               RLReport1.PrinterSettings.PrinterIndex := x;
}               break;
               end;
            end;
         end;

   if mNomeJpeg<>'' then
      begin
      mNomeJpeg:=fRetiraExtensao(mNomeJpeg)+'.PDF';
      if cb_modelo.Checked=true then
         RL_BOLETAS.SaveToFile(mNomeJPeg)
      else
         rlModelo02_pegueno.SaveToFile(mNomeJPeg);

      end
   else
      begin
      if cb_modelo.Checked=true then
         RL_BOLETAS.PreviewModal
      else
         rlModelo02_pegueno.PreviewModal;
      end;
  if fmensagem('Deseja enviar o boleto por email?',0,['1','2'],2)=mrYES then
    begin
    Tb_Dup.First;
    mcodcli:=Tb_DupCRCODCLI.AsInteger;
    mCliente:=True ;
    while (not (Tb_Dup.Eof) and (mCliente=True)) do
      begin
      if mcodcli<>Tb_DupCRCODCLI.AsInteger then
        mCliente:=False;
      Tb_Dup.Next;
      end;

    if mCliente=True then
      begin
      if not DirectoryExists('C:\SGE\BOLETO') then
        CreateDir('C:\SGE\BOLETO');
      if cb_modelo.Checked=true then
         RL_BOLETAS.SaveToFile('c:\sge\BOLETO\'+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString+'.pdf')
      else
         rlModelo02_pegueno.SaveToFile('c:\sge\BOLETO\'+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString+'.pdf');
      Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
      Frm_EnviarEmail.EdtAssunto.Text:='BOLETO '+DM1.Tb_EmpRAZAO_CAB.AsString+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString;
      Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO BOLETO ');
      Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Tb_DupCRNUMERO.AsString+' '+Tb_DupCRDESD.AsString);
      Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+Tb_DupCRDTEMIS.AsString);
      Frm_EnviarEmail.mmMensagem.Lines.Add(' COM VENCIMENTO EM..:'+Tb_DupCRDTVCTO.AsString);
      Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
      flcademp(1,0,'');
      Frm_EnviarEmail.mmMensagem.Lines.Add(' '+DM1.Tb_EmpRAZAO.AsString);
      Frm_EnviarEmail.mmMensagem.Lines.Add(' em caso de duvidas ligue (62)'+DM1.Tb_EmpFONE.AsString);
      fAdicionarAnexos('c:\sge\BOLETO\'+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString+'.pdf');
      fAdicionarAnexosOutros;

      Frm_EnviarEmail.Tipo:=0;
      Frm_EnviarEmail.CliFor:=Tb_DupCRCODCLI.AsString;
      Frm_EnviarEmail.ShowModal;
      FreeandNil(Frm_EnviarEmail);
      end
    else
      begin
      if not DirectoryExists('C:\SGE\BOLETO') then
        CreateDir('C:\SGE\BOLETO');
      Tb_Dup.First;
      if cb_modelo.Checked=true then
         begin
         for mcodcli:=1 to RL_BOLETAS.Pages.PageCount do
           begin
           RLPDFFilter1.FileName:='c:\sge\BOLETO\'+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString+'.pdf';
           RLPDFFilter1.FilterPages(RL_BOLETAS.Pages,mcodcli,mcodcli,false);
           Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
           Frm_EnviarEmail.EdtAssunto.Text:='BOLETO '+DM1.Tb_EmpRAZAO_CAB.AsString+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString;
           Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO BOLETO ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Tb_DupCRNUMERO.AsString+' '+Tb_DupCRDESD.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+Tb_DupCRDTEMIS.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' COM VENCIMENTO EM..:'+Tb_DupCRDTVCTO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
           flcademp(1,0,'');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' '+DM1.Tb_EmpRAZAO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' em caso de duvidas ligue (62)'+DM1.Tb_EmpFONE.AsString);
           fAdicionarAnexos('c:\sge\BOLETO\'+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString+'.pdf');
           fAdicionarAnexosOutros;

           Frm_EnviarEmail.Tipo:=0;
           Frm_EnviarEmail.CliFor:=Tb_DupCRCODCLI.AsString;
           Frm_EnviarEmail.ShowModal;
           FreeandNil(Frm_EnviarEmail);
           Tb_Dup.Next;
           end;
         end
       else
         begin
         for mcodcli:=1 to rlModelo02_pegueno.Pages.PageCount do
           begin
           RLPDFFilter1.FileName:='c:\sge\BOLETO\'+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString+'.pdf';
           RLPDFFilter1.FilterPages(rlModelo02_pegueno.Pages,mcodcli,mcodcli,false);
           Application.CreateForm(TFrm_EnviarEmail,Frm_EnviarEmail);
           Frm_EnviarEmail.EdtAssunto.Text:='BOLETO '+DM1.Tb_EmpRAZAO_CAB.AsString+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString;
           Frm_EnviarEmail.mmMensagem.Lines.Add(' SEGUE EM ANEXO A COPIA DO BOLETO ');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' NUMERO..:'+Tb_DupCRNUMERO.AsString+' '+Tb_DupCRDESD.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' EMITIDA EM ..:'+Tb_DupCRDTEMIS.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' COM VENCIMENTO EM..:'+Tb_DupCRDTVCTO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' ');
           flcademp(1,0,'');
           Frm_EnviarEmail.mmMensagem.Lines.Add(' '+DM1.Tb_EmpRAZAO.AsString);
           Frm_EnviarEmail.mmMensagem.Lines.Add(' em caso de duvidas ligue (62)'+DM1.Tb_EmpFONE.AsString);
           fAdicionarAnexos('c:\sge\BOLETO\'+Tb_DupCRNUMERO.AsString+Tb_DupCRDESD.AsString+'.pdf');
           fAdicionarAnexosOutros;
           Frm_EnviarEmail.Tipo:=0;
           Frm_EnviarEmail.CliFor:=Tb_DupCRCODCLI.AsString;
           Frm_EnviarEmail.ShowModal;
           FreeandNil(Frm_EnviarEmail);
           Tb_Dup.Next;
           end;
         end;
      end;
    end;
  end;
if fmensagem('a impressão foi bem sucedida?',0,['1','2'],1)<>mrYes then
   exit;



DM1.Query5.close;
DM1.Query5.sql.clear;
DM1.Query5.Params.CreateParam(ftString,'CRNUMERO',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDESD',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDUP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDTEMIS',ptInput);
DM1.Query5.SQL.Add('Update CADDAR set ');
DM1.Query5.SQL.Add(' CREMIBLQ=1 ');
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query5.Params.CreateParam(ftString,'CRCODEMP',ptInput);
   DM1.Query5.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ');
   end
else
   DM1.Query5.SQL.Add(' where CRNUMERO=:CRNUMERO ');
DM1.Query5.SQL.Add(' and CRDESD=:CRDESD ');
DM1.Query5.SQL.Add(' and CRDUP =:CRDUP ');
DM1.Query5.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');
DM1.Query5.SQL.Add(' and NVL(CREMIBLQ,0)<>1');

Tb_Dup.First;
While not Tb_Dup.Eof do
   begin
   if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      DM1.Query5.ParamByName('CRCODEMP').AsFloat:=Tb_DupCRCODEMP.AsFloat;
   DM1.Query5.ParamByName('CRNUMERO').AsFloat   :=Tb_DupCRNUMERO.AsFloat;
   DM1.Query5.ParamByName('CRDESD').AsString    :=Tb_DupCRDESD.AsString;
   DM1.Query5.ParamByName('CRDUP').AsFloat      :=Tb_DupCRDUP.AsFloat;
   DM1.Query5.ParamByName('CRDTEMIS').AsDateTime:=Tb_DupCRDTEMIS.AsDateTime;
   try
      DM1.Query5.ExecSQL;
      fdm1StartCommit;
   except
      end;
   Tb_Dup.Next;
   end;

end;


procedure TFrm_EBol.fCarregardadosboletos(pqtdvias: Integer);
var
x_vias: Integer;
begin
if pqtdvias<1 then
   pqtdvias:=1;
if mem_bol.Active=false then
   mem_bol.Open;
mem_bol.EmptyTable;
Tb_Dup.First;
While not Tb_Dup.Eof do
   begin
   for x_vias:=1 to pqtdvias do
      begin
      fgerarevento('1107 criando boletos temporarios');

      mem_bol.Append;
      mem_bolCRDTEMIS.Value  := Tb_DupCRDTEMIS.AsDateTime;
      mem_bolCRVALOR.Value   := Tb_DupCRVALOR.AsFloat;
      mem_bollocpag.Value    := Tb_Duplocpag.AsString;
      mem_bolsacador_avalista.value := Tb_Dupsacador_avalista.AsString;


      mem_boldatven.Value    := Tb_Dupdatven.AsString;
      mem_bolrazao_ced.Value       := Tb_Duprazao_ced.AsString;


      if (DM1.Tb_BcoBCNUMBCO.AsInteger=756) or (DM1.Tb_BcoBCNUMBCO.AsInteger=033) then
          mem_bolcodagced_label.Value  := 'Agência/Código Convenio'
      else
          mem_bolcodagced_label.Value  := 'Agência/Código Beneficiario';

      mem_bolcodagced.Value  := Tb_Dupcodagced.AsString;
      mem_bolnumdoc.Value    := Tb_Dupnumdoc.AsString;
      mem_bolespecie.Value   := Tb_Dupespecie.AsString;
      mem_bolaceite.Value    := Tb_Dupaceite.AsString;
      mem_bolnndig.Value     := Tb_Dupnndig.AsString;
      mem_bolnndig_semcart.Value     := Tb_Dupnndig_semcarteira.AsString;
      mem_bolcodcar.Value    := Tb_Dupcodcar.AsString;
      mem_bolmoeda.Value     := Tb_Dupmoeda.AsString;
      mem_boldescfin.Value   := Tb_Dupdescfin.AsString;
      mem_boljurdia.Value            := Tb_Dupjurdia.AsString;
      mem_boloutras_instruc.Value    := Tb_Dupoutras_instruc.AsString;
      mem_bolCRINST01.Value          := Tb_DupCRINST01.AsString;
      mem_bolCRINST02.Value          := Tb_DupCRINST02.AsString;
      mem_bolCRINST03.Value          := Tb_DupCRINST03.AsString;
      mem_bolCRINST04.Value          := Tb_DupCRINST04.AsString;
      mem_bolmulta_mora.Value        := Tb_Dupmulta_mora.AsString;
      mem_bolnomcli.Value            := Tb_Dupnomcli.AsString;
      mem_bolcnpj.Value              := Tb_Dupcnpj.AsString;
      mem_bolendereco.Value          := Tb_Dupendereco.AsString;
      mem_bolcep.Value               := Tb_Dupcep.AsString;
      mem_bolbairro.Value            := Tb_Dupbairro.AsString;
      mem_bolcidade.Value            := Tb_Dupcidade.AsString;
      mem_bolnombco.Value            := Tb_Dupnombco.AsString;
      mem_bolcodbco.Value            := Tb_Dupcodbco.AsString;
      mem_bolcoddig.Value            := Tb_Dupcoddig.AsString;
      mem_bolcnpj_emitente.Value     := Tb_Dupcnpj_emitente.AsString;
      mem_bolender_emitente.Value    := Tb_Dupender_emitente.AsString;
      mem_bolCRCODBAR.Value          := Tb_DupCRCODBAR.AsString;


      mem_bol.Post;
      end;
   Tb_Dup.Next;

   end;


end;



procedure TFrm_EBol.tb_DupCalcFields(DataSet: TDataSet);
var
mdignn,mcampo,mnumimp, mcodbar: String;
mnosnum, mvalor: Real;
begin
Tb_Dupdescfin.Value       :='';
Tb_Dupoutras_instruc.Value:='';
if ebol_ori='frm_justif' then
   begin
   Tb_Dupnombco.Value   :=Frm_Justif.Qr_Tempor.fieldbyName('TPTIPOCOB').AsString;
   Tb_Dupcodcar.Value   :=Frm_Justif.Qr_Tempor.fieldbyName('TPCODCAR').AsString;
   Tb_Duprazao_ced.Value:=Frm_Justif.Qr_Tempor.fieldbyName('TPRAZAO_CED').AsString;
   Tb_DupEndereco.Value :=Trim(Frm_Justif.Qr_Tempor.fieldbyName('TPENDER_CLI').AsString);
   Tb_DupBairro.Value   :=Trim(Frm_Justif.Qr_Tempor.fieldbyName('TPBAIRRO_CLI').AsString);
   Tb_DupCep.Value      :='';

   mcampo:=Frm_Justif.Qr_Tempor.fieldbyName('TPCNPJ_CNPF').AsString;

   Tb_Dupcodbco.Value:=FormatFloat('000',Frm_Justif.Qr_Tempor.fieldbyName('TPNUMBCO').AsFloat)
                     +'-'+Frm_Justif.Qr_Tempor.fieldbyName('TPDIGNUMBCO').AsString;
   Tb_Dupnomcli.Value:=Frm_Justif.Qr_Tempor.fieldbyName('TPRAZAO_CLI').AsString+' - '+mcampo;
   Tb_Dupcidade.Value:=Frm_Justif.Qr_Tempor.fieldbyName('TPCEP_CLI').AsString
                      +' - '+Frm_Justif.Qr_Tempor.fieldbyName('TPCIDADE_CLI').AsString
                      +' '+Frm_Justif.Qr_Tempor.fieldbyName('TPUF_CLI').AsString;

   if DM1.Tb_BcoBCNUMBCO.AsInteger=399 then
     begin
//     Tb_Dupcodagced.Value:=FormatFloat('0000',
     Tb_Dupcodagced.Value:=FormatFloat('0',
                           FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODAGE').AsString+Frm_Justif.Qr_Tempor.fieldbyName('TPDIGAGE').AsString))
                           +' '
                           +FormatFloat('0000000',FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODCED').AsString
                           +Frm_Justif.Qr_Tempor.fieldbyName('TPDIGCED').AsString));

     end
   else if DM1.Tb_BcoBCNUMBCO.AsInteger=756 then
     begin
     Tb_Dupcodagced.Value:=FormatFloat('0',
                           FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODAGE').AsString))
                           +' / '+FloatToStr(FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODCED').AsString))
     end
   else if (DM1.Tb_BcoBCNUMBCO.AsInteger=353) or (DM1.Tb_BcoBCNUMBCO.AsInteger=008) or (DM1.Tb_BcoBCNUMBCO.AsInteger=033) then
     begin
//     Tb_Dupcodagced.Value:=FormatFloat('00000',
     Tb_Dupcodagced.Value:=FormatFloat('',
                           FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODAGE').AsString))
                           +'-'+Trim(Frm_Justif.Qr_Tempor.fieldbyName('TPDIGAGE').AsString)
                           +'/'+FormatFloat('000000000',
                             FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODCED').AsString))
                           +'-'+Trim(Frm_Justif.Qr_Tempor.fieldbyName('TPDIGCED').AsString);

     end
   else
     begin
     Tb_Dupcodagced.Value:=FormatFloat('0',
                           FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODAGE').AsString))
                           +'-'+Trim(Frm_Justif.Qr_Tempor.fieldbyName('TPDIGAGE').AsString)
                           +'/'+FormatFloat('000000000000',
                             FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODCED').AsString))
                           +'-'+Trim(Frm_Justif.Qr_Tempor.fieldbyName('TPDIGCED').AsString);

     end;

   Tb_Dupmoeda.Value  :=Frm_Justif.Qr_Tempor.fieldbyName('TPMOEDA_CLI').AsString;
   Tb_Duplocpag.Value:=Frm_Justif.Qr_Tempor.fieldbyName('TPLOCPAG_CLI').AsString;
   Tb_Dupagendig.Value:=FormatFloat('000',
                        FSonumero(Frm_Justif.Qr_Tempor.fieldbyName('TPCODAGE').AsString)
                        )
                       +'-'+Frm_Justif.Qr_Tempor.fieldbyName('TPDIGAGE').AsString;


   end
else
   begin
   Tb_Dupnombco.Value   :=DM1.Tb_BcoBCBANCO.Value;
   Tb_Dupcodcar.Value   :=DM1.Tb_BcoBCCODCAR.Value;
//   Tb_Duprazao_ced.Value:=DM1.Tb_EmpRAZAO_CAB.Value;
   if length(trim(DM1.Tb_BcoBCNOMTIT.Value))>2 then
     Tb_Duprazao_ced.Value:=DM1.Tb_BcoBCNOMTIT.Value
   else
     Tb_Duprazao_ced.Value:=DM1.Tb_EmpRAZAO_CAB.Value;


   if cb_sacador_avalista.checked=true then
      begin
      Tb_Duprazao_ced.Value:=Tb_Duprazao_ced.Value+'. CNPJ: '+ mcnpj_emitente;
      end;


   flcadcli(1,0,Tb_DupCRCODCLI.AsString);
//   Tb_DupEndereco.Value:=DM1.Tb_CliCLOG.Value+iif(Trim(DM1.Tb_CliCNUM.Value)<>'',' No.'+DM1.Tb_CliCNUM.Value,' ')
//                        +' '+DM1.Tb_CliCCOMPL.Value+' '+DM1.Tb_CliCBAIRRO.Value;

   Tb_DupEndereco.Value:=DM1.Tb_CliCLOG.Value;
   Tb_Dupbairro.Value  :=DM1.Tb_CliCBAIRRO.Value;


   if DM1.Tb_CliCCNPJ.Value>0 then
      Begin
      mcampo:=FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_CliCCNPJ.Value);
      end
   else
      begin
      mcampo:=FormatFloat('000"."000"."000"."000"-"00',DM1.Tb_CliCCPF.Value);
      end;
   Tb_Dupcnpj.Value    :=mcampo;


   Tb_Dupcodbco.Value:=FormatFloat('000',DM1.Tb_BcoBCNUMBCO.Value)+'-'+DM1.Tb_BcoBCDIGNCO.Value;
//   Tb_Dupnomcli.Value:=DM1.Tb_CliCRAZAO.Value+' '+DM1.Tb_CliCCODCLI.AsString;   // +' - '+mcampo;
   Tb_Dupnomcli.Value:=DM1.Tb_CliCRAZAO.Value;   // +' - '+mcampo;
   Tb_Dupcep.Value   :=DM1.Tb_CliCCEP.Value;
   Tb_Dupcidade.Value:=DM1.Tb_CliCCIDADE.Value+' '+DM1.Tb_CliCUF.Value;

 if DM1.Tb_BcoBCNUMBCO.AsInteger=422 then
     begin
{
     Tb_Dupcodagced.Value:=FormatFloat('0',FSonumero(DM1.Tb_BcoBCCODAGE.Value))+Trim(DM1.Tb_BcoBCDIGAGE.Value)
                         +'/'+FormatFloat('000000000',FSonumero(DM1.Tb_BcoBCCODCED.Value))
                         +'-'+Trim(DM1.Tb_BcoBCDIGCED.Value);
 }
     Tb_Dupcodagced.Value:=FormatFloat('0',FSonumero(DM1.Tb_BcoBCCODAGE.Value))+Trim(DM1.Tb_BcoBCDIGAGE.Value)
                         +'/'+FormatFloat('000000000',FSonumero(DM1.Tb_BcoBCCODCED.Value+Trim(DM1.Tb_BcoBCDIGCED.Value)));
//                         +'-'+Trim(DM1.Tb_BcoBCDIGCED.Value);

{
000000000
123456789
}
     end
else if DM1.Tb_BcoBCNUMBCO.AsInteger=399 then
     begin
     Tb_Dupcodagced.Value:=FormatFloat('0',
                           FSonumero(DM1.Tb_BcoBCCODAGE.AsString+Trim(DM1.Tb_BcoBCDIGAGE.AsString)))
                           +' '
                           +FormatFloat('0000000',FSonumero(DM1.Tb_BcoBCCODCED.AsString
                           +Trim(DM1.Tb_BcoBCDIGCED.AsString)));
     end
   else if (DM1.Tb_BcoBCNUMBCO.AsInteger=756) or (DM1.Tb_BcoBCNUMBCO.AsInteger=033)  or (DM1.Tb_BcoBCNUMBCO.AsInteger=104) then
     begin
     Tb_Dupcodagced.Value:=FormatFloat('0',
                           FSonumero(DM1.Tb_BcoBCCODAGE.AsString))
                           +' / '
                           +FloatToStr(FSonumero(DM1.Tb_BcoBCNUMCON.AsString
                           +Trim(DM1.Tb_BcoBCDIGCON.AsString)));
     end
   else if (DM1.Tb_BcoBCNUMBCO.AsInteger=353) or (DM1.Tb_BcoBCNUMBCO.AsInteger=008) then
     begin
     Tb_Dupcodagced.Value:=FormatFloat('0',
                           FSonumero(DM1.Tb_BcoBCCODAGE.AsString))
                           +'-'+Trim(DM1.Tb_BcoBCDIGAGE.Value)
                           +'/'+FormatFloat('000000000',
                             FSonumero(DM1.Tb_BcoBCCODCED.Value))
                         +'-'+Trim(DM1.Tb_BcoBCDIGCED.Value);

     end
   else if (DM1.Tb_BcoBCNUMBCO.AsInteger=341) then
     begin
     Tb_Dupcodagced.Value:=FormatFloat('0',FSonumero(DM1.Tb_BcoBCCODAGE.Value))
                         +'/'+FormatFloat('00000',FSonumero(DM1.Tb_BcoBCCODCED.Value))
                         +'-'+Trim(DM1.Tb_BcoBCDIGCED.Value);
     end
  else
     begin
          Tb_Dupcodagced.Value:=FormatFloat('0',FSonumero(DM1.Tb_BcoBCCODAGE.Value))+Trim(DM1.Tb_BcoBCDIGAGE.Value)
                         +'/'+FormatFloat('000000000',FSonumero(DM1.Tb_BcoBCCODCED.Value))
                         +'-'+Trim(DM1.Tb_BcoBCDIGCED.Value);

     end;


    Tb_Dupmoeda.Value  :=DM1.Tb_PargerPMOEDA.Value;
{
   if DM1.Tb_BcoBCNUMBCO.AsInteger<>399 then
     begin
     if Trim(DM1.Tb_PargerPMOEDA.Value)='' then
        Tb_Dupmoeda.Value  :='R$'
     else
        Tb_Dupmoeda.Value  :=DM1.Tb_PargerPMOEDA.Value;
     end
   else
     begin
     Tb_Dupmoeda.Value  :='R$';
     end;
     }
   if Trim(DM1.Tb_BcoBCB_LOCP.Value)='' then
      Tb_Duplocpag.Value:='QUALQUER BANCO ATÉ O VENCIMENTO'
   else
      Tb_Duplocpag.Value:=DM1.Tb_BcoBCB_LOCP.Value;


   if (DM1.Tb_BcoBCNUMBCO.AsInteger=mBancoSafra) then
      Tb_Dupsacador_avalista.Value:='Beneficiário final:'
   else if Trim(DM1.Tb_BcoBCSACADOR_AVALISTA_OBS.Value)='' then
         Tb_Dupsacador_avalista.Value:='Sacador/Avalista:'
   else
      Tb_Dupsacador_avalista.Value:=DM1.Tb_BcoBCSACADOR_AVALISTA_OBS.Value;

   if Trim(DM1.Tb_BcoBCB_LOCP02.Value)<>'' then
      Tb_Duplocpag.Value:=DM1.Tb_BcoBCB_LOCP.Value+#13+DM1.Tb_BcoBCB_LOCP02.Value;


   Tb_Dupagendig.Value:=FormatFloat('000',FSonumero(DM1.Tb_BcoBCCODAGE.Value))+'-'+DM1.Tb_BcoBCDIGAGE.Value;
   end;
//if DM1.Tb_BcoBCNUMBCO.Value=341 then
  if DM1.Tb_BcoBCNUMBCO.AsInteger=399 then
     begin
     Tb_Dupnndig.Value:=Copy(Tb_DupCRNOSNUM.Value,1,2)+' '
                       +Copy(Tb_DupCRNOSNUM.Value,3,3)+' '
                       +Copy(Tb_DupCRNOSNUM.Value,6,3)+' '
                       +Copy(Tb_DupCRNOSNUM.Value,9,2)+' '
                       +Tb_DupCRDNOSNUM.Value;

     Tb_Dupnndig_semcarteira.Value     := Tb_Dupnndig.AsString;
     end
  else if DM1.Tb_BcoBCNUMBCO.AsInteger=756 then
     begin
//     Tb_Dupnndig.Value:=FloatToStr(ValFloat(Copy(Tb_DupCRNOSNUM.Value,length(Tb_DupCRNOSNUM.Value)-6,7)));
     Tb_Dupnndig.Value:=fdeixanum(Tb_DupCRNOSNUM.AsString)+'-'+Tb_DupCRDNOSNUM.Value ;
      Tb_Dupnndig_semcarteira.Value     := Tb_Dupnndig.AsString;
     end
   else
     begin
     if trim(Tb_DupCRDNOSNUM.AsString)='' then
        begin
        Tb_Dupnndig.Value   :=Tb_Dupcodcar.Value+'/'+Tb_DupCRNOSNUM.Value;
        Tb_Dupnndig_semcarteira.Value   :=Tb_DupCRNOSNUM.Value
        end
     else
        begin
        Tb_Dupnndig.Value   :=Tb_Dupcodcar.Value+'/'+Tb_DupCRNOSNUM.Value+'-'+Tb_DupCRDNOSNUM.Value;
        Tb_Dupnndig_semcarteira.Value   :=Tb_DupCRNOSNUM.Value+'-'+Tb_DupCRDNOSNUM.Value;


        end;
     if DM1.Tb_BcoBCNUMBCO.AsInteger=422 then
        Tb_Dupnndig.Value   :=Tb_Dupnndig_semcarteira.Value;

     end;


   //else
//   Tb_Dupnndig.Value   :=Tb_DupCRNOSNUM.Value+Tb_DupCRDNOSNUM.Value;

{
if (Tb_DupCRDTVCTO.Value=Tb_DupCRDTEMIS.Value) and (Copy(Tb_DupCRCODBAR.AsString,1,3)<>'399') then
   Tb_Dupdatven.Value:='C/APRESENT'
else
}
   Tb_Dupdatven.Value:=FormatDateTime(fdt2, Tb_DupCRDTVCTO.Value);

//Tb_Dupcnpj_emitente.Value :=FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_EmpCGC.AsFloat);

Tb_Dupcnpj_emitente.Value :=mcnpj_emitente;

Tb_Dupender_emitente.Value:=DM1.Tb_Empender.AsString+' '+DM1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString+' '+DM1.Tb_EmpCEP.AsString;


if Tb_DupCRJURD.Value>0 then
   Tb_Dupjurdia.Value:='Cobrar juros de '+DM1.Tb_PargerPMOEDA.Value+FormatFloat(mcasas, Tb_DupCRJURD.Value)+' por dia de atraso.';
if Tb_DupCRDESCD.AsFloat>0 then
   Tb_Dupdescfin.Value:='Desconto de '+DM1.Tb_PargerPMOEDA.AsString+FormatFloat(mcasas, Tb_DupCRDESCD.Value)+' por dia de Antecipacao '
else if Tb_DupCRDESCF.AsFloat>0 then
   Tb_Dupdescfin.Value:='Desconto de '+DM1.Tb_PargerPMOEDA.AsString+FormatFloat(mcasas, Tb_DupCRDESCF.Value)+' para pagamento ate '+Formatdatetime(fdt2, Tb_DupCRDTDESCF.Value);
if trim(Tb_DupCRNFACUM.Value)<>'' then
   Tb_Dupoutras_instruc.Value:='Ref. Doc(s): '+Tb_DupCRNFACUM.Value;
if Tb_DupCRMULTA.AsFloat>0 then
   Tb_Dupmulta_mora.Value:='Cobrar Multa de '+DM1.Tb_PargerPMOEDA.Value+FormatFloat(mcasas, Tb_DupCRMULTA.Value)+' para pagamento apos o dia : '+FormatDateTime(fdt2, Tb_DupCRDTVCTO.AsDateTime+Tb_DupCRQTDDM.AsFloat);

if not (Tb_DupCRNOSNUM.IsNull) and (Tb_DupCRNOSNUM.Value<>'') then
   begin
   Tb_Dupnumdoc.Value:=Formatfloat('000000',Tb_DupCRNUMERO.Value)+'-'+Tb_DupCRDESD.Value
                      +iif(Tb_DupCRCODEMP.AsInteger>100,'/1','');

   if DM1.Tb_BcoBCNUMBCO.AsInteger<>399 then
     begin
     if Trim(Tb_DupCRACEITE.Value)='' then
       Tb_Dupaceite.Value:='N'
     else
       Tb_Dupaceite.Value:=Tb_DupCRACEITE.Value;
     end
   else
     begin
     Tb_Dupaceite.Value:='NAO';
     end;

   if DM1.Tb_BcoBCNUMBCO.AsInteger<>399 then
     begin
     if Trim(Tb_DupCRESPECIE.Value)='' then
       Tb_Dupespecie.Value:='DM'
     else
       Tb_Dupespecie.Value:=Tb_DupCRESPECIE.Value;
     end
   else
     begin
     Tb_Dupespecie.Value:='PD';
     end;
   end;
Tb_Dupcoddig.Value:=StringReplace(Tb_DupCRCODDIG.AsString, ' ', '   ', [rfReplaceAll, rfIgnoreCase]);
Memo1.Lines.clear;
Memo1.Lines.Add(Tb_DupCRCODDIG.AsString);
Memo1.Lines.Add(Tb_Dupcoddig.AsString);





end;
function tFrm_EBol.femibol(pDadosBoleto: TDadosBoleto): Boolean;

var
mlin,mcol: Integer;
x: Integer;
begin
fGerarEvento('1422 tentativa de emitir pre impressa');

if DM1.Qr_Tid.Locate('TINOME','CADTAB',[]) then
   fltdvca(0,0,'CADDAR','BOLETA_'+FormatFloat('0000', pDadosBoleto.pCodBco),'CADTAB')
else
   fltdvca(0,pDadosBoleto.pCodEmp,'CADDAR','BOLETA_'+FormatFloat('0000', pDadosBoleto.pCodBco),'CADTAB');
if DM1.Tb_TDVCA.IsEmpty then
   begin
   fmensagem('Não Ha Tabulação Adequada!',0,['0'],0);
   result:=false;
   exit;
   end;

if not DM1.Tb_TDVCA.Eof then
   begin

   mreltab:='CADDAR';
   mnomrel:='BOLETA_'+FormatFloat('0000', pDadosBoleto.pCodBco);
   mpaggr:=false;
   mpagsg:=false;
   rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
   fnumcol:=DM1.Tb_TDVCATCNUMCOL.AsInteger;
   fintcol:=DM1.Tb_TDVCATCINTCOL.AsInteger;
   ftpcol :=DM1.Tb_TDVCATCTPCOL.AsInteger;
   Frm_SQL.STG_COND.RowCount:=1;
   Frm_SQl.STG_COND.rows[0].Clear;


   if (pDadosBoleto.pDtIni>pdatanula) then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:='CRCODBCO';
      Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:=Inttostr(pDadosBoleto.pCodBco);
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;
   if (pDadosBoleto.pChavePed>0) then
      begin
      if (pDadosBoleto.pChavePed>0) then
         begin
         x:=Frm_SQL.STG_COND.RowCount;
         Frm_SQL.STG_COND.RowCount:=x+1;
         Frm_SQL.STG_COND.Rows[x].Clear;
         Frm_SQL.STG_COND.Cells[00,x-1]:='';
         Frm_SQL.STG_COND.Cells[01,x-1]:='CRNPED';
         Frm_SQl.STG_COND.Cells[02,x-1]:='=';
         Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
         Frm_SQL.STG_COND.Cells[04,x-1]:=Inttostr(pDadosBoleto.pChavePed);
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         Frm_SQL.STG_COND.Cells[06,x-1]:='';
         end;

      if (pDadosBoleto.pLotSeqPed>0) then
         begin
         x:=Frm_SQL.STG_COND.RowCount;
         Frm_SQL.STG_COND.RowCount:=x+1;
         Frm_SQL.STG_COND.Rows[x].Clear;
         Frm_SQL.STG_COND.Cells[00,x-1]:='';
         Frm_SQL.STG_COND.Cells[01,x-1]:='CRLOTSEQ_CP';
         Frm_SQl.STG_COND.Cells[02,x-1]:='=';
         Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
         Frm_SQL.STG_COND.Cells[04,x-1]:=Inttostr(pDadosBoleto.pLotSeqPed);
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         Frm_SQL.STG_COND.Cells[06,x-1]:='';
         end;

      end
   else
      begin
      if (pDadosBoleto.pDtIni>pdatanula) then
         begin
         x:=Frm_SQL.STG_COND.RowCount;
         Frm_SQL.STG_COND.RowCount:=x+1;
         Frm_SQL.STG_COND.Rows[x].Clear;
         Frm_SQL.STG_COND.Cells[00,x-1]:='';
         Frm_SQL.STG_COND.Cells[01,x-1]:='CRDTEMIS';
         Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
         Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
         Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, pDadosBoleto.pDtIni);
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         Frm_SQL.STG_COND.Cells[06,x-1]:='';
         end;


      if (pDadosBoleto.pDtFin>pdatanula) then
         begin
         x:=Frm_SQL.STG_COND.RowCount;
         Frm_SQL.STG_COND.RowCount:=x+1;
         Frm_SQL.STG_COND.Rows[x].Clear;
         Frm_SQL.STG_COND.Cells[00,x-1]:='';
         Frm_SQL.STG_COND.Cells[01,x-1]:='CRDTEMIS';
         Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
         Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
         Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, pDadosBoleto.pDtFin);
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         Frm_SQL.STG_COND.Cells[06,x-1]:='';
         end;
      if pDadosBoleto.pNumIni>0 then
         begin
         x:=Frm_SQL.STG_COND.RowCount;
         Frm_SQL.STG_COND.RowCount:=x+1;
         Frm_SQL.STG_COND.Rows[x].Clear;
         Frm_SQL.STG_COND.Cells[00,x-1]:='';
         Frm_SQL.STG_COND.Cells[01,x-1]:='CRNUMERO';
         Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
         Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
         Frm_SQL.STG_COND.Cells[04,x-1]:=IntToStr(pDadosBoleto.pNumIni);
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         Frm_SQL.STG_COND.Cells[06,x-1]:='';
         end;
      if pDadosBoleto.pNumFin>0 then
         begin
         x:=Frm_SQL.STG_COND.RowCount;
         Frm_SQL.STG_COND.RowCount:=x+1;
         Frm_SQL.STG_COND.Rows[x].Clear;
         Frm_SQL.STG_COND.Cells[00,x-1]:='';
         Frm_SQL.STG_COND.Cells[01,x-1]:='CRNUMERO';
         Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
         Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
         Frm_SQL.STG_COND.Cells[04,x-1]:=IntToStr(pDadosBoleto.pNumFin);
         Frm_SQl.STG_COND.Cells[05,x-1]:='S';
         Frm_SQL.STG_COND.Cells[06,x-1]:='';
         end;
      end;


   if Trim(pDadosBoleto.pParc)<>'' then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:='CRDESD';
      Frm_SQl.STG_COND.Cells[02,x-1]:='=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
      Frm_SQL.STG_COND.Cells[04,x-1]:=Trim(pDadosBoleto.pParc);
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;

   if pDadosBoleto.pCodBco>0 then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:='CRCODBCO';
      Frm_SQl.STG_COND.Cells[02,x-1]:='=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:=IntTosTr(pDadosBoleto.pCodBco);
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;

   if not pDadosBoleto.pPend  then
      begin
      x:=Frm_SQL.STG_COND.RowCount;
      Frm_SQL.STG_COND.RowCount:=x+1;
      Frm_SQL.STG_COND.Rows[x].Clear;
      Frm_SQL.STG_COND.Cells[00,x-1]:='';
      Frm_SQL.STG_COND.Cells[01,x-1]:='NVL(CREMIBLQ,0)';
      Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
      Frm_SQL.STG_COND.Cells[03,x-1]:='VARNUM';
      Frm_SQL.STG_COND.Cells[04,x-1]:='0';
      Frm_SQl.STG_COND.Cells[05,x-1]:='S';
      Frm_SQL.STG_COND.Cells[06,x-1]:='';
      end;

   x:=1;
   DM2.Qr_ImpRel.Close;
   DM2.Qr_ImpRel.SQl.Clear;
   DM2.Qr_ImpRel.SQL.Add(frpersql('CADTAB',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x));
//   DM2.Qr_ImpRel.Sql.SavetoFile(mpastatemp + 'SQL.txt');


   DM2.Qr_ImpRel.Open;
   if DM2.Qr_ImpRel.Eof then
      begin
      fMensagem('Nada a ser impresso na condição Solicitada!',0,['0'],0);
      exit;
      end;
   pimpg :=false;
   pimpsg:=False;
   pavptpi:=False;
   pavpipf:=False;
   if ((pDadosBoleto.pDtIni>pdatanula) and (pDadosBoleto.pDtFin>pdatanula)) then
      begin
      pperiodo:=fperiodo(0,formatdatetime(fdt2, pDadosBoleto.pDtIni), formatdatetime(fdt2, pDadosBoleto.pDtFin));
      end
   else
      pperiodo:='';
   plocori:='FRM_EBOL';
   GroupBox2.Visible:=True;
   ftab05irel('CADTAB','',1,0);
   GroupBox2.Visible:=False;
   result:=true;
   exit;
   end;

testeform := TFrm_Ebol(FindGlobalComponent('form_impres_ebol'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_ebol);
   end;


dupemi.Visible:=True;
form_impres_ebol.Rdprint1.TamanhoQteLinhas:=DM1.Tb_BcoBCB_QTDL.AsInteger;
form_impres_ebol.RDprint1.FonteTamanhoPadrao:=S10cpp;
if DM1.Tb_BcoBCB_QTDLP.Value=0 then
   form_impres_ebol.RDprint1.TamanhoQteLPP:=oito
else
   form_impres_ebol.RDprint1.TamanhoQteLPP:=seis;
form_impres_ebol.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP

Tb_Dup.First;
While not Tb_Dup.Eof do
   begin
   dupemi.Caption:='Emitindo Duplicata: '+Tb_DupCRNUMERO.AsString+'/'
                  +Tb_DupCRDESD.AsString+' Emissão: '+FormatDateTime(fdt2, Tb_DupCRDTEMIS.Value);
   dupemi.Update;
   if DM1.Tb_BcoBCB_ILP.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_LPL.AsInteger,DM1.Tb_BcoBCB_LPC.AsInteger,DM1.Tb_BcoBCB_LOCP.Value,mreduz);
   if DM1.Tb_BcoBCB_IVC.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_VCL.AsInteger,DM1.Tb_BcoBCB_VCC.AsInteger,Tb_Dupdatven.Value,mreduz);
   if DM1.Tb_BcoBCB_IDE.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_DEL.AsInteger,DM1.Tb_BcoBCB_DEC.AsInteger,FormatDateTime(fdt2,Tb_DupCRDTEMIS.Value),mreduz);
   if DM1.Tb_BcoBCB_IND.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_NDL.AsInteger,DM1.Tb_BcoBCB_NDC.AsInteger,FormatFloat('000000',Tb_DupCRNUMERO.Value)+'-'+Tb_DupCRDESD.Value,mreduz);
   if DM1.Tb_BcoBCB_IED.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_EDL.AsInteger,DM1.Tb_BcoBCB_EDC.AsInteger,DM1.Tb_BcoBCB_ESPD.Value,mreduz);
   if DM1.Tb_BcoBCB_IAC.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_ACL.AsInteger,DM1.Tb_BcoBCB_ACC.AsInteger,DM1.Tb_BcoBCB_ACEITE.Value,mreduz);
   if DM1.Tb_BcoBCB_IDP.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_DPL.AsInteger,DM1.Tb_BcoBCB_DPC.AsInteger,FormatDateTime('dd/mm/yyyy',Tb_DupCRDTEMIS.Value),mreduz);
   if DM1.Tb_BcoBCB_IEM.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_EML.AsInteger,DM1.Tb_BcoBCB_EMC.AsInteger,DM1.Tb_PargerPMOEDA.Value,mreduz);
   if DM1.Tb_BcoBCB_IQM.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_QML.AsInteger,DM1.Tb_BcoBCB_QMC.AsInteger,'1',mreduz);
   if DM1.Tb_BcoBCB_IVM.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_VML.AsInteger,DM1.Tb_BcoBCB_VMC.AsInteger,FormatFloat(mcasas, Tb_DupCRVALOR.Value),mreduz);
   if DM1.Tb_BcoBCB_IVM.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_VML.AsInteger,DM1.Tb_BcoBCB_VMC.AsInteger,FormatFloat(mcasas, Tb_DupCRVALOR.Value),mreduz);
   if DM1.Tb_BcoBCB_IVD.Value=0 then
      form_impres_ebol.RDprint1.ImpF(DM1.Tb_BcoBCB_VDL.AsInteger,DM1.Tb_BcoBCB_VDC.AsInteger,FormatFloat(mcasas, Tb_DupCRVALOR.Value),mreduz);
   if (DM1.Tb_BcoBCB_ITI.Value=0)  then
      begin
      mlin:=DM1.Tb_BcoBCB_TIL.AsInteger;
      mcol:=DM1.Tb_BcoBCB_TIC.AsInteger;
      if Trim(INST01.Text)<>'' then
         begin
         form_impres_ebol.RDprint1.ImpF(mlin,mcol,INST01.Text,mreduz);
         mlin:=mlin+1;
         end;
      if Trim(INST02.Text)<>'' then
         begin
         form_impres_ebol.RDprint1.ImpF(mlin,mcol,INST02.Text,mreduz);
         mlin:=mlin+1;
         end;
      if Trim(INST03.Text)<>'' then
         begin
         form_impres_ebol.RDprint1.ImpF(mlin,mcol,INST03.Text,mreduz);
         mlin:=mlin+1;
         end;
      if Trim(INST04.Text)<>'' then
         begin
         form_impres_ebol.RDprint1.ImpF(mlin,mcol,INST04.Text,mreduz);
         mlin:=mlin+1;
         end;
      end;
   if DM1.Tb_BcoBCB_IDS.Value=0 then
      begin
      mlin:=DM1.Tb_BcoBCB_DSL.AsInteger;
      mcol:=DM1.Tb_BcoBCB_DSC.AsInteger;
//      form_impres_ebol.RDprint1.ImpF(mlin,mcol,FormatFloat('00000',Tb_DupCRCODCLI.Value)+' - '+Tb_Dupnomcli.Value+' CNPJ '+Tb_Dupcnpj.Value,mreduz);
      form_impres_ebol.RDprint1.ImpF(mlin,mcol,FormatFloat('00000',Tb_DupCRCODCLI.Value)+' - '+Tb_Dupnomcli.Value,mreduz);
      mlin:=mlin+1;
      form_impres_ebol.RDprint1.ImpF(mlin,mcol,Tb_Dupendereco.Value+' '+Tb_Dupbairro.Value,mreduz);
      mlin:=mlin+1;
      form_impres_ebol.Rdprint1.Impf(mlin,mcol,Tb_Dupcidade.Value+'-'+Tb_Dupuf.Value,mreduz);
      end;
   form_impres_ebol.RDprint1.Novapagina;
   Tb_Dup.Next;
   end;
if pDadosBoleto.ptipo=1 then
   begin
   try
      if form_impres_ebol.RDprint1.Setup then form_impres_ebol.RDprint1.Fechar;
      form_impres_ebol.free;
      form_impres_ebol:=nil;
   except
      fMensagem('Erro 757 ao Imprimir Relatorio!',0,['0'],0);
      end;
   end
else
   begin
   try
      fTravaTeclado(0); // trava o teclado
      form_impres_ebol.RDprint1.Fechar;
      fTravaTeclado(1); // trava o teclado
   except
      fMensagem('Erro 765 ao imprimir relatorio!',0,['0'],0);
      end;
   end;
result:=True;
end;

{
function fCalcBarras(pCodemp,pBanco: Integer; pCodBco,pValor,pnumero,pdup: Real; pdesd, pinst01,pinst02,pinst03,pinst04: String; Pdtemis,PdtVcto: TDateTime ): Boolean;



// pBanco é o codigo Real do Banco onde: 001-Banco do Brasil, 237-Bradesco, 104-Caixa, etc...
// pCodBco é o Codigo do Banco no Sistema
var
mfatven,mvalor,mnosnum: Real;
mdigcodbar,mdigagccnn,mcampo,mnumimp,mcodbar,mdignn: String;

begin

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.Params.CreateParam(ftString,'CRNOSNUM',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDNOSNUM',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRCODBAR',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRCODDIG',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CREMIBLQ',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRINST01',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRINST02',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRINST03',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRINST04',ptInput);
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   DM1.Query5.Params.CreateParam(ftString,'CRCODEMP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRNUMERO',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDESD',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDUP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDTEMIS',ptInput);

DM1.Query5.SQL.Add('Update CADDAR set ');
DM1.Query5.SQL.Add(' CRNOSNUM=:CRNOSNUM ');
DM1.Query5.SQL.Add(',CRDNOSNUM=:CRDNOSNUM ');
DM1.Query5.SQL.Add(',CRCODBAR=:CRCODBAR ');
DM1.Query5.SQL.Add(',CRCODDIG=:CRCODDIG ');
DM1.Query5.SQL.Add(',CREMIBLQ=:CREMIBLQ ');
DM1.Query5.SQL.Add(',CRINST01=:CRINST01 ');
DM1.Query5.SQL.Add(',CRINST02=:CRINST02 ');
DM1.Query5.SQL.Add(',CRINST03=:CRINST03 ');
DM1.Query5.SQL.Add(',CRINST04=:CRINST04 ');
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   DM1.Query5.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ')
else
   DM1.Query5.SQL.Add(' where CRNUMERO=:CRNUMERO ');
DM1.Query5.SQL.Add(' and CRDESD=:CRDESD ');
DM1.Query5.SQL.Add(' and CRDUP =:CRDUP ');
DM1.Query5.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');


if pbanco=001 then // banco do Brasil
   begin
   if mnumbolaut then
      begin
      mnosnum:=0;
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQl.add('Select BCNUMBOL from cadbco where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADBCO',[]),' ',' BCCODEMP=0'+IntTostr(pcodemp)+' and ')
                     +' BCCODBCO=0'+FloatToStr(pCodBco));
      DM1.Query1.Open;
      mnosnum:=DM1.Query1.Fields[0].AsFloat;
      end
   else
      begin
      mnosnum:=fsonumero(NUMBOL.Text);
      Frm_Ebol.Text:=FloatToStr(mnosnum+1);
      end;

   if mnosnum<1 then
      mnosnum:=1;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQl.add('UPDATE CADBCO SET BCNUMBOL=0'+FloatToStr(mnosnum+1)+' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADBCO',[]),' ',' BCCODEMP=0'+IntTostr(pcodemp)+' and ')
                     +' BCCODBCO=0'+FloattoStr(pCodBco));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,730,'Frm_Ebol','CADBCO');
      end;
   mnosnum:=StrToFloat(Formatfloat('000000', ValFloat(DM1.Tb_BcoBCNUMCON.Value))
                    +FormatFloat('00000',mnosnum));

   mdignn:= NumeroDV(Formatfloat('00000000000',mnosnum),11,2);


// manual do banco do brasil campos fixos
//   mcodbar:='001'; // campo 01 3 posicoes valor fixo
   mcodbar:=FormatFloat('000',pBanco);
   if (DM1.Tb_PargerPCODMOE.Value>9) then
      mcodbar:=mcodbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
      mcodbar:=mcodbar+FormatFloat('0',DM1.Tb_PargerPCODMOE.Value);   // campo 02 tipo de moeda 1 posicao valor 9 para real
   mcodbar:=mcodbar+Formatfloat('0000',PdtVcto-StrToDate('07/10/1997'));   // campo 04 data de vencimento
   mvalor :=StrToFloat(FormatFloat('0.00',pValor));
   mcodbar:=mcodbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
   mcodbar:=mcodbar+FormatFloat('00000000000',mnosnum); // nosso numero sem digito
   mcodbar:=mcodbar+FormatFloat('0000',FSonumero(DM1.Tb_BcoBCCODAGE.Value)); // numero do agencia sem o digito
   mcodbar:=mcodbar+FormatFloat('00000000',FSonumero(DM1.Tb_BcoBCCODCED.Value)); // codigo do Beneficiario sem o digito
   mcodbar:=mcodbar+FormatFloat('00',FSonumero(DM1.Tb_BcoBCCODCAR.Value)); // codigo da carteira
   mnumimp:=copy(mcodbar,1,4)+copy(mcodbar,5,39);
   mnumimp:=NumeroDV(mnumimp,11,3);
   mcodbar:=copy(mcodbar,1,4)+mnumimp+copy(mcodbar,5,39);

//   mnumimp:='001'; // campo 01 3 posicoes valor fixo

//   mnumimp:= '001'; // campo 01 3 posicoes valor fixo
   mnumimp:=FormatFloat('000',pBanco);

   if (DM1.Tb_PargerPCODMOE.Value>9) then
      mnumimp:=mnumimp+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
      mnumimp:=mnumimp+FormatFloat('0',DM1.Tb_PargerPCODMOE.Value);   // campo 02 tipo de moeda 1 posicao valor 9 para real

//   mnumimp:=mnumimp+'9';   // campo 02 tipo de moeda 1 posicao valor 9 para real
   mvalor:=StrToFloat('0'+copy(mcodbar,20,5));
   mcampo:=mnumimp+formatFloat('00000',mvalor);
   mnumimp:=mnumimp+copy(formatFloat('00000',mvalor),1,1)+'.';
   mnumimp:=mnumimp+copy(FormatFloat('00000',mvalor),2,4);
   mnumimp:=mnumimp+NumeroDV(mcampo,10,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre
   // segunda posicao
   mnumimp:=mnumimp+' ';
   mvalor:=StrToFloat('0'+copy(mcodbar,25,10));
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),6,5);
   mnumimp:=mnumimp+NumeroDV(FloatTostr(mvalor),10,1); // digito no modulo 10 da 6 a 15  posicoes do campo livre
   //Terceira posicao
   mnumimp:=mnumimp+' ';
   mvalor:=ValFloat(copy(mcodbar,35,10));
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),6,5);
   mnumimp:=mnumimp+NumeroDV(FloatTostr(mvalor),10,1); // digito no modulo 10 da 16 a 25  posicoes do campo livre
   // Quarta posicao
   mnumimp:=mnumimp+' ';
   mnumimp:=mnumimp+copy(mcodbar,5,1);
   // Quinta posicao
   mnumimp:=mnumimp+' ';
   mnumimp:=mnumimp+copy(mcodbar,6,4)+copy(mcodbar,10,10);


   DM1.Query5.ParamByName('CRNOSNUM').AsFloat   :=mnosnum;
   DM1.Query5.ParamByName('CRDNOSNUM').AsString :=mdignn;
   DM1.Query5.ParamByName('CRCODBAR').AsString  :=mcodbar;
   DM1.Query5.ParamByName('CRCODDIG').AsString  :=mnumimp;
   DM1.Query5.ParamByName('CREMIBLQ').AsInteger :=1;
   DM1.Query5.ParamByName('CRINST01').AsString  :=pinst01;
   DM1.Query5.ParamByName('CRINST02').AsString  :=pinst02;
   DM1.Query5.ParamByName('CRINST03').AsString  :=pinst03;
   DM1.Query5.ParamByName('CRINST04').AsString  :=pinst04;
   if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      DM1.Query5.ParamByName('CRCODEMP').AsFloat:=pcodemp;
   DM1.Query5.ParamByName('CRNUMERO').AsFloat   :=pnumero;
   DM1.Query5.ParamByName('CRDESD').AsString    :=pdesd;
   DM1.Query5.ParamByName('CRDUP').AsFloat      :=pdup;
   DM1.Query5.ParamByName('CRDTEMIS').AsDateTime:=Pdtemis;
   Try
      DM1.Query5.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro: 878 ao Calcular codigo de Barras!',mtError,[mbOk],0);
      end;
   end
else if pbanco=104 then // caixa
   begin
   if mnumbolaut then
      begin
      mnosnum:=0;
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQl.add('Select BCNUMBOL from cadbco where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADBCO',[]),' ',' BCCODEMP=0'+IntTostr(pcodemp)+' and ')
                     +' BCCODBCO=0'+FloatToStr(pCodBco));
      DM1.Query1.Open;
      mnosnum:=DM1.Query1.Fields[0].AsFloat;
      end
   else
      begin
      mnosnum:=fsonumero(Frm_EBol.NUMBOL.Text);
      Frm_Ebol.Text:=FloatToStr(mnosnum+1);
      end;
   if mnosnum<1 then
      mnosnum:=1;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQl.add('UPDATE CADBCO SET BCNUMBOL=0'+FloatToStr(mnosnum+1)+' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADBCO',[]),' ',' BCCODEMP=0'+IntTostr(pcodemp)+' and ')
                     +' BCCODBCO=0'+FloattoStr(pCodBco));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,730,'Frm_Ebol','CADBCO');
      end;

   // para cobrança simples sem registro

//   mnosnum:=StrtoFloat('81'+insere(FloatToStr(mnosnum),'0',08));

   mnosnum:=StrToFloat(Formatfloat('00000',DM1.Tb_BcoBCNUMCON.AsFloat)
                      +FormatFloat('00000',mnosnum));

   mdignn:= NumeroDV(Formatfloat('00000000000',mnosnum),11,0);
//   mdignn:= NumeroDV(Formatfloat('00000000000',mnosnum),11,2);


// manual do banco do brasil campos fixos
//   mcodbar:='001'; // campo 01 3 posicoes valor fixo
   mcodbar:=FormatFloat('000',pBanco);
   if (DM1.Tb_PargerPCODMOE.Value>9) then
      mcodbar:=mcodbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
      mcodbar:=mcodbar+FormatFloat('0',DM1.Tb_PargerPCODMOE.Value);   // campo 02 tipo de moeda 1 posicao valor 9 para real
   mcodbar:=mcodbar+Formatfloat('0000',PdtVcto-StrToDate('07/10/1997'));   // campo 04 data de vencimento
   mvalor :=StrToFloat(FormatFloat('0.00',pValor));
   mcodbar:=mcodbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
   mcodbar:=mcodbar+FormatFloat('00000000000',mnosnum); // nosso numero sem digito
   mcodbar:=mcodbar+FormatFloat('0000',FSonumero(DM1.Tb_BcoBCCODAGE.Value)); // numero do agencia sem o digito
   mcodbar:=mcodbar+FormatFloat('00000000',FSonumero(DM1.Tb_BcoBCCODCED.Value)); // codigo do Beneficiario sem o digito
   mcodbar:=mcodbar+FormatFloat('00',FSonumero(DM1.Tb_BcoBCCODCAR.Value)); // codigo da carteira
   mnumimp:=copy(mcodbar,1,4)+copy(mcodbar,5,39);
   mnumimp:=NumeroDV(mnumimp,11,3);
   mcodbar:=copy(mcodbar,1,4)+mnumimp+copy(mcodbar,5,39);

//   mnumimp:='001'; // campo 01 3 posicoes valor fixo

//   mnumimp:= '001'; // campo 01 3 posicoes valor fixo
   mnumimp:=FormatFloat('000',pBanco);

   if (DM1.Tb_PargerPCODMOE.Value>9) then
      mnumimp:=mnumimp+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
      mnumimp:=mnumimp+FormatFloat('0',DM1.Tb_PargerPCODMOE.Value);   // campo 02 tipo de moeda 1 posicao valor 9 para real

//   mnumimp:=mnumimp+'9';   // campo 02 tipo de moeda 1 posicao valor 9 para real
   mvalor:=StrToFloat('0'+copy(mcodbar,20,5));
   mcampo:=mnumimp+formatFloat('00000',mvalor);
   mnumimp:=mnumimp+copy(formatFloat('00000',mvalor),1,1)+'.';
   mnumimp:=mnumimp+copy(FormatFloat('00000',mvalor),2,4);
   mnumimp:=mnumimp+NumeroDV(mcampo,10,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre
   // segunda posicao
   mnumimp:=mnumimp+' ';
   mvalor:=StrToFloat('0'+copy(mcodbar,25,10));
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),6,5);
   mnumimp:=mnumimp+NumeroDV(FloatTostr(mvalor),10,1); // digito no modulo 10 da 6 a 15  posicoes do campo livre
   //Terceira posicao
   mnumimp:=mnumimp+' ';
   mvalor:=ValFloat(copy(mcodbar,35,10));
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
   mnumimp:=mnumimp+copy(formatFloat('0000000000',mvalor),6,5);
   mnumimp:=mnumimp+NumeroDV(FloatTostr(mvalor),10,1); // digito no modulo 10 da 16 a 25  posicoes do campo livre
   // Quarta posicao
   mnumimp:=mnumimp+' ';
   mnumimp:=mnumimp+copy(mcodbar,5,1);
   // Quinta posicao
   mnumimp:=mnumimp+' ';
   mnumimp:=mnumimp+copy(mcodbar,6,4)+copy(mcodbar,10,10);


   DM1.Query5.ParamByName('CRNOSNUM').AsFloat   :=mnosnum;
   DM1.Query5.ParamByName('CRDNOSNUM').AsString :=mdignn;
   DM1.Query5.ParamByName('CRCODBAR').AsString  :=mcodbar;
   DM1.Query5.ParamByName('CRCODDIG').AsString  :=mnumimp;
   DM1.Query5.ParamByName('CREMIBLQ').AsInteger :=1;
   DM1.Query5.ParamByName('CRINST01').AsString  :=pinst01;
   DM1.Query5.ParamByName('CRINST02').AsString  :=pinst02;
   DM1.Query5.ParamByName('CRINST03').AsString  :=pinst03;
   DM1.Query5.ParamByName('CRINST04').AsString  :=pinst04;
   if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      DM1.Query5.ParamByName('CRCODEMP').AsFloat:=pcodemp;
   DM1.Query5.ParamByName('CRNUMERO').AsFloat   :=pnumero;
   DM1.Query5.ParamByName('CRDESD').AsString    :=pdesd;
   DM1.Query5.ParamByName('CRDUP').AsFloat      :=pdup;
   DM1.Query5.ParamByName('CRDTEMIS').AsDateTime:=Pdtemis;
   Try
      DM1.Query5.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro: 878 ao Calcular codigo de Barras!',mtError,[mbOk],0);
      end;
   end
else if pBanco=341 then // itau
   begin
   mnosnum:=0;
   // no caso do banco itau nao foi encontrado uma nova sequencia, portanto
   // o número esta sendo o mesmo da duplicata
   mnosnum:=pNumero;

//   mnosnum:=StrToFloat(Formatfloat('000 000',DM1.Tb_BcoBCNUMCON.AsFloat)
//                    +FormatFloat('00000',mnosnum));

   mdignn:= NumeroDV(Formatfloat('00000000000',mnosnum),11,2);


// manual do banco do brasil campos fixos
//   mcodbar:='001'; // campo 01 3 posicoes valor fixo
   mcodbar:=FormatFloat('000',pBanco);
   if (DM1.Tb_PargerPCODMOE.Value>9) then
      mcodbar:=mcodbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
      mcodbar:=mcodbar+FormatFloat('0',DM1.Tb_PargerPCODMOE.Value);   // campo 02 tipo de moeda 1 posicao valor 9 para real
   mcodbar:=mcodbar+'X';
   mfatven:=PdtVcto-StrToDate('07/10/1997');   // campo 04 data de vencimento
   mcodbar:=mcodbar+Formatfloat('0000',mfatven);   // campo 04 data de vencimento

   mvalor :=StrToFloat(FormatFloat('0.00',pValor));
   mcodbar:=mcodbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
   mcodbar:=mcodbar+FormatFloat('000',FSonumero(DM1.Tb_BcoBCCODCAR.Value)); // codigo da carteira
   mcodbar:=mcodbar+FormatFloat('00000000',mnosnum); // nosso numero sem digito
   if (fsonumero(DM1.Tb_BcoBCCODCAR.Value)=126) or
      (fsonumero(DM1.Tb_BcoBCCODCAR.Value)=131) or
      (fsonumero(DM1.Tb_BcoBCCODCAR.Value)=146) or
      (fsonumero(DM1.Tb_BcoBCCODCAR.Value)=150) or
      (fsonumero(DM1.Tb_BcoBCCODCAR.Value)=168) then
      begin
      mnumimp:=FormatFloat('000', fsonumero(DM1.Tb_BcoBCCODCAR.Value));
      mnumimp:=mnumimp+FormatFloat('00000000',  mnosnum);
      end
   else
      begin
      mnumimp:=FormatFloat('0000', fsonumero(DM1.Tb_BcoBCCODAGE.Value));
      mnumimp:=mnumimp+FormatFloat('00000',fsonumero(DM1.Tb_BcoBCCONTA.Value));
      mnumimp:=mnumimp+FormatFloat('000', fsonumero(DM1.Tb_BcoBCCODCAR.Value));
      mnumimp:=mnumimp+FormatFloat('00000000',  mnosnum);
      end;
   mdigagccnn:=NumeroDV(mnumimp,10,1);
//   mnumimp:=NumeroDV(mnumimp,10,1);
   mcodbar:=mcodbar+FormatFloat('0',FSonumero(mdigagccnn));
   mcodbar:=mcodbar+FormatFloat('0000',FSonumero(DM1.Tb_BcoBCCODAGE.Value)); // numero do agencia sem o digito
   mcodbar:=mcodbar+FormatFloat('00000',FSonumero(DM1.Tb_BcoBCCONTA.Value)); // codigo do Beneficiario sem o digito
   mcodbar:=mcodbar+insere(FormatFloat('0',FSonumero(DM1.Tb_BcoBCDCONTA.Value)),'0',1); // codigo do Beneficiario sem o digito

   mcodbar:=mcodbar+'000';
   mnumimp:=copy(mcodbar,1,4)+copy(mcodbar,6,39);
   mdigcodbar:=NumeroDV(mnumimp,11,3);
   mcodbar:=copy(mcodbar,1,4)+mdigcodbar+copy(mcodbar,6,39);

// inicio da linha digitavel
   // campo 01

   mcampo:=FormatFloat('000',pBanco);
   if (DM1.Tb_PargerPCODMOE.Value>9) then
      mcampo:=mcampo+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
      mcampo:=mcampo+FormatFloat('0',DM1.Tb_PargerPCODMOE.Value);   // campo 02 tipo de moeda 1 posicao valor 9 para real
   mcampo:=mcampo+FormatFloat('000', fsonumero(DM1.Tb_BcoBCCODCAR.Value)); // nosso numero sem digito
   mcampo:=mcampo+copy(FormatFloat('00000000',mnosnum),1,2); // nosso numero sem digito

   mcampo:=mcampo+NumeroDV(mcampo,10,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre
   mnumimp:=copy(mcampo,1,5)+'.'+copy(mcampo,6,5);
   mnumimp:=mnumimp+' ';
   // campo 02

   mcampo:=copy(FormatFloat('00000000',mnosnum),3,6); // nosso numero sem digito
   mcampo:=mcampo+mdigagccnn;
   mcampo:=mcampo+copy(FormatFloat('0000',FSonumero(DM1.Tb_BcoBCCODAGE.Value)),1,3); // numero do agencia sem o digito
   mcampo:=mcampo+NumeroDV(mcampo,10,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre
   mnumimp:=mnumimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
   mnumimp:=mnumimp+' ';
   // campo 03
   mcampo:=copy(FormatFloat('0000',FSonumero(DM1.Tb_BcoBCCODAGE.Value)),4,1); // numero do agencia sem o digito
   mcampo:=mcampo+insere(Formatfloat('00000',fsonumero(DM1.Tb_BcoBCCONTA.Text)),'0',5);
   mcampo:=mcampo+insere(Formatfloat('0',fsonumero(DM1.Tb_BcoBCDIGCON.Text)),'0',1);
   mcampo:=mcampo+insere('0','0',3);
   mcampo:=mcampo+NumeroDV(mcampo,10,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre
   mnumimp:=mnumimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
   mnumimp:=mnumimp+' ';


   // campo 04

   mnumimp:=mnumimp+mdigcodbar;
   mnumimp:=mnumimp+' ';
   // campo 05

   mcampo:=FormatFloat('0000', mfatven);
   mvalor :=StrToFloat(FormatFloat('0.00',pValor));
   mcampo:=mcampo+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
   mnumimp:=mnumimp+mcampo;


// fim da linha digitavel



   DM1.Query5.ParamByName('CRNOSNUM').AsFloat   :=mnosnum;
   DM1.Query5.ParamByName('CRDNOSNUM').AsString :=mdignn;
   DM1.Query5.ParamByName('CRCODBAR').AsString  :=mcodbar;
   DM1.Query5.ParamByName('CRCODDIG').AsString  :=mnumimp;
   DM1.Query5.ParamByName('CREMIBLQ').AsInteger :=1;
   DM1.Query5.ParamByName('CRINST01').AsString  :=pinst01;
   DM1.Query5.ParamByName('CRINST02').AsString  :=pinst02;
   DM1.Query5.ParamByName('CRINST03').AsString  :=pinst03;
   DM1.Query5.ParamByName('CRINST04').AsString  :=pinst04;
   if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      DM1.Query5.ParamByName('CRCODEMP').AsFloat:=pcodemp;
   DM1.Query5.ParamByName('CRNUMERO').AsFloat   :=pnumero;
   DM1.Query5.ParamByName('CRDESD').AsString    :=pdesd;
   DM1.Query5.ParamByName('CRDUP').AsFloat      :=pdup;
   DM1.Query5.ParamByName('CRDTEMIS').AsDateTime:=Pdtemis;
   Try
      DM1.Query5.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro: 878 ao Calcular codigo de Barras!',mtError,[mbOk],0);
      end;

   end;

result:=True;
end;
}
procedure TFrm_EBol.FormCreate(Sender: TObject);
begin
if flfilpad(-1,'_EBOL','CB_SACADOMODPEQ') then
   cb_sacadomodpeq.ItemIndex := valint(DM4.Tb_FilPad2FPVALOR.AsString);

if flfilpad(-1,'_EBOL','CB_SACADORAVALISTA') then
   cb_sacador_avalista.checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';




mcnpj_emitente :=FormatFloat('00"."000"."000"/"0000"-"00', DM1.Tb_EmpCGC.AsFloat);




mem_bolCRVALOR.DisplayFormat:=mcasas;


Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
ebol_ori:='';
fAtualizaPadrao(0);
MDT1.Text:=FormatDatetime(fdt2, Date);

TsRelatorio.TabVisible:=false;
tsMod02Peguena.TabVisible:=false;
PageControl1.ActivePageIndex:=0;

//Panel1.Height:=209;
end;

procedure TFrm_EBol.INST01Exit(Sender: TObject);
begin
if length(INST01.Text)>60 then
   INST01.Text:=copy(INST01.Text,1,60);

end;

procedure TFrm_EBol.INST02Exit(Sender: TObject);
begin
if length(INST02.Text)>60 then
   INST02.Text:=copy(INST02.Text,1,60);

end;

procedure TFrm_EBol.INST03Exit(Sender: TObject);
begin
if length(INST03.Text)>60 then
   INST03.Text:=copy(INST03.Text,1,60);

end;

procedure TFrm_EBol.INST04Exit(Sender: TObject);
begin
if length(INST04.Text)>60 then
   INST04.Text:=copy(INST04.Text,1,60);

end;

procedure TFrm_EBol.INST03KeyPress(Sender: TObject; var Key: Char);
begin
if (key<>#8) and (length(INST03.Text)>59) then
   key:=#0;

end;

procedure TFrm_EBol.INST01KeyPress(Sender: TObject; var Key: Char);
begin
if (key<>#8) and (length(INST01.Text)>59) then
   key:=#0;

end;

procedure TFrm_EBol.INST02KeyPress(Sender: TObject; var Key: Char);
begin
if (key<>#8) and (length(INST02.Text)>59) then
   key:=#0;

end;

procedure TFrm_EBol.INST04KeyPress(Sender: TObject; var Key: Char);
begin
if (key<>#8) and (length(INST04.Text)>59) then
   key:=#0;

end;

procedure TFrm_EBol.NUMBOLExit(Sender: TObject);
begin
{
NUMBOL.Text:=fdeixanum2(NUMBOL.Text);
if Tb_DupCRDTVCTO.IsNull then
   exit
else
   begin
   MDTVCTO.Text:=FormatDatetime(fdt2, Tb_DupCRDTVCTO.Value);
   VALOR.Text  :=FormatFloat(mcasas, Tb_DupCRVALOR.Value);
   end;

if (valfloat(NUMBOL.Text)<>0) and (ValFloat(CODBCO.Text)<>0) then
   begin
{
   fCodigoBarras(1,codemp,valint(CODBCO.Text),DM1.Tb_BcoBCNUMBCO.AsInteger,
                 DM1.Tb_PargerPCODMOE.AsInteger,DM1.Tb_BcoBCNUMCON.AsString,
                 DM1.Tb_BcoBCCODAGE.AsString,
                 DM1.Tb_BcoBCCODCED.AsString,
                 DM1.Tb_BcoBCDIGCED.AsString,
                 DM1.Tb_BcoBCCODCAR.AsString,
                 pdatanula,
                 fsonumero(NUMBOL.Text),0);
}
{

   fCodigoBarras(0,codemp,valint(CODBCO.Text),DM1.Tb_BcoBCNUMBCO.AsInteger,
                 DM1.Tb_PargerPCODMOE.AsInteger,DM1.Tb_BcoBCNUMCON.AsString,
                 DM1.Tb_BcoBCCODAGE.AsString,
                 DM1.Tb_BcoBCCODCED.AsString,
                 DM1.Tb_BcoBCDIGCED.AsString,
                 DM1.Tb_BcoBCCODCAR.AsString,
                 StrToDate(MDTVCTO.Text),
                 fsonumero(NUMBOL.Text),ValFloat(VALOR.Text));



   NOSNUM.Text   :=mret_nosnum;
   DIGNOSNUM.Text:=mret_dignn;
   CODDIG.Text   :=mret_numimp;
   CODBAR.Text   :=mret_codbar;
   end;}
end;

procedure TFrm_EBol.bbPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_EBOL','');
if Trim(CODBCO.Text)<>'' then
   fGravaPadroes(0,'CODBCO'     ,'text'       ,'_EBOL',CODBCO.Text);
fGravaPadroes(0,'CB_TPBOL'      ,'checked'    ,'_EBOL',iif(CB_TPBOL.Checked,'true','false'));

fGravaPadroes(0,'CB_JURDIA'     ,'checked'    ,'_EBOL',iif(CB_JURDIA.Checked,'true','false'));
fGravaPadroes(0,'CB_MODELO'     ,'checked'    ,'_EBOL',iif(cb_modelo.Checked,'true','false'));
fGravaPadroes(0,'CB_TPEMI'      ,'checked'    ,'_EBOL',iif(CB_TPEMI.Checked,'true','false'));
fGravaPadroes(0,'CB_GRAVNOSNUM' ,'checked'    ,'_EBOL',iif(CB_GRAVNOSNUM.Checked,'true','false'));
fGravaPadroes(0,'CB_BOLETO'     ,'checked'    ,'_EBOL',iif(cb_boleto.Checked,'true','false'));
fGravaPadroes(0,'EDT_QTDVIAS'   ,'text'       ,'_EBOL',inttostr(EDT_QTDVIAS.Value));

fMensagem('Gravado!',0,['0'],0);

end;

function TFrm_Ebol.fAtualizaPadrao(pTipo: Integer): Boolean;
var
mform: String;
begin




mform:='_EBOL';
if flfilpad(0,mform,'') then

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCOMP','CODBCO',[]) then
   CODBCO.Text:=DM4.Tb_FilPadFPVALOR.Value;
if DM4.Tb_FilPad.Locate('FPCOMP','CB_TPBOL',[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_TPBOL.Checked:=true
   else
      CB_TPBOL.Checked:=false;
   end
else
   CB_TPBOL.Checked:=false;




if DM4.Tb_FilPad.Locate('FPCOMP','CB_JURDIA',[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_JURDIA.Checked:=true
   else
      CB_JURDIA.Checked:=false;
   end
else
   CB_JURDIA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCOMP','EDT_QTDVIAS',[]) then
   edt_qtdvias.value:=valint(DM4.Tb_FilPadFPVALOR.Value);


if DM4.Tb_FilPad.Locate('FPCOMP','CB_MODELO',[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_MODELO.Checked:=true
   else
      CB_MODELO.Checked:=false;
   end
else
   CB_MODELO.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCOMP','CB_BOLETO',[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      cb_boleto.Checked:=true
   else
      cb_boleto.Checked:=false;
   end
else
   cb_boleto.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCOMP','CB_TPEMI',[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_TPEMI.Checked:=true
   else
      CB_TPEMI.Checked:=false;
   end
else
   CB_TPEMI.Checked:=false;
if DM4.Tb_FilPad.Locate('FPCOMP','CB_GRAVNOSNUM',[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_GRAVNOSNUM.Checked:=true
   else
      CB_GRAVNOSNUM.Checked:=false;
   end
else
   CB_GRAVNOSNUM.Checked:=false;

// preencher os campos
if ValFloat(CODBCO.Text)=0 then
   NOMBCO.Text:='Todos...'
else
   begin
   CODBCOExit(Self);
//   if flcadbco(1,0,0,CODBCO.Text) then
//      NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value
//   else
//      NOMBCO.Text:='Não Cadastrado!';
   end;
result:=True;
end;


procedure TFrm_EBol.CB_TPBOLClick(Sender: TObject);
begin
if CB_TPBOL.Checked then
   begin
   lbl_qtdvias.Visible:=false;
   lbl_qtdvias.Visible:=false;
   end
else
   begin
   lbl_qtdvias.Visible:=true;
   lbl_qtdvias.Visible:=true;
   end


{
if CB_TPBOL.Checked then
   begin
   Panel1.Height:=209;
   gb_instrucoes.Visible:=false;
   end
else
   begin
   gb_instrucoes.Visible:=true;
   Panel1.Height:=209;

   end;
}
end;

procedure TFrm_EBol.bbAtualizarClick(Sender: TObject);
begin
if (Trim(mdt1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT1.Text)>StrToDate(MDT2.Text) then
      begin
      fMensagem('Data inicial maior que data final. Inválido!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

if Trim(CODBCO.Text)='' then
   begin
   fMensagem('Favor digitar o código do banco!',0,['0'],0);
   CODBCO.SetFocus;
   exit;
   end;
if not flcadbco(1,0,0,CODBCO.Text) then
   begin
   fMensagem('Favor digitar um código de banco valido!',0,['0'],0);
   CODBCO.SetFocus;
   exit;
   end;
//if not CB_TPBOL.Checked then
//   begin
   if (DM1.Tb_BcoBCNUMBCO.IsNull) or (DM1.Tb_BcoBCNUMBCO.Value<=0) then
      begin
      fMensagem('Número do Banco Tem Quer ser Preenchido.'+#13
                 +'Exemplo: 001-Bco.Brasil, 104-Caixa, 237-Bradesco, etc...'+#13
                 +'Para Preenche-lo entre em CADASTRO->CAIXA->BANCOS'
                 ,0,['0'],0);
      exit;
      end;
//   end;


Tb_Dup.Close;
Tb_Dup.Sql.Clear;
Tb_Dup.SQl.Add('Select CRCODEMP,CRDTVCTO,CRDTEMIS,CRNUMERO,CRDESD,CRDUP,CRNOSNUM, '
              +'       CRDNOSNUM,CRCODDIG,CRCODBAR,CRACEITE,CRESPECIE, '
              +'       CRINST01,CRINST02,CRINST03,CRINST04, '
              +'       CRVALOR,CRDESCF,CRDTDESCF,CRDESCD,CRNFACUM,'
              +'        CRJURD,CRCODCLI,CRCODVEN,CRTABPV,CRCODPV '

              +' ,CRMULTA,CRQTDDM, CRCODFPGTO '
              +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO,CRCODBCO '
              +' ,CRID_NEW '
              +' from caddar '+IIF(cb_boleto.Checked,',cadfp','')
              +' where CRSTATUS<>9 '+IIF(cb_boleto.Checked,'and fpcodigo=crcodfpgto and fpvinculo=16 ',''));

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

if la_Empresas<>'' then
   Tb_Dup.SQl.add(' and '+la_Empresas);
if Trim(MDT1.Text)<>'/  /' then
   Tb_Dup.SQL.add(' and  CRDTEMIS>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Tb_Dup.SQL.add(' and  CRDTEMIS<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
if Trim(NUMI.Text)<>'' then
   Tb_Dup.SQL.add(' and CRNUMERO>=0'+Trim(NUMI.Text));
if Trim(NUMF.Text)<>'' then
   Tb_Dup.SQL.add(' and  CRNUMERO<=0'+Trim(NUMF.Text));
if Trim(PARC.Text)<>'' then
   Tb_Dup.SQL.add(' and CRDESD='+chr(39)+Trim(PARC.Text)+chr(39));
if Trim(CODBCO.Text)<>'' then
   Tb_Dup.SQL.add(' and CRCODBCO='+Trim(CODBCO.Text));

if not CB_TPEMI.Checked then
   Tb_Dup.SQL.add(' and NVL(CREMIBLQ,0)=0 ');
Tb_Dup.sql.Add(' Order by CRNUMERO,CRDESD');
//Tb_Dup.sql.savetofile(mpastatemp + 'SQL00.txt');

Tb_Dup.Open;

if Tb_Dup.Eof then
   begin
   fMensagem('Nada há ser impresso!',0,['0'],0);
   exit;
   end;

end;

procedure TFrm_EBol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := CaFree;
end;


//function fCodigoBarras(pTipo,pCodemp,pCodBco,pNumBco,pCodMoe: Integer; pNumCon,pCodAge,pCodCed,pDigCed,pCodCar,pPrefNosNum: String; pDtVcto: TDateTime; pNosNum,pValor: Real): Boolean;

function tFrm_Ebol.fBuscarSequenciaBanco(pCodEmp,pCodBco: Integer): Integer;
begin
if not fLerGenerico_query('CADBCO','BCNUMBOL,BCCODEMP,BCCODBCO','BCCODBCO=0'+inttostr(pcodbco) +' and BCCODEMP='+Inttostr(pcodemp),query_consulta) then
   begin
   if not fLerGenerico_query('CADBCO','BCNUMBOL,BCCODEMP,BCCODBCO','BCCODBCO=0'+inttostr(pcodbco) ,query_consulta) then
      begin
      MessageDlg('Erro ao buscar o numero de sequencia do banco(BCNUMBOL)!',mtError,[mbok],0);
      result:=-1;
      exit;
      end;
   end;
result:=query_consulta.fieldbyname('BCNUMBOL').asinteger;
if not fExecutarSql('Update CADBCO set BCNUMBOL=BCNUMBOL+1 where BCCODBCO='+query_consulta.fieldbyname('BCCODBCO').AsString
               +' and BCCODEMP='+query_consulta.fieldbyname('BCCODEMP').AsString) then
   begin
   result:=-1;
   exit;
   end;

end;


function tFrm_EBol.fCodigoBarras(pTipo,pCodemp,pCodBco,pNumBco,pCodMoe: Integer; pNumCon,pCodAge,pCodCed,pDigCed,pCodCar: String; pDtEmis, pDtVcto: TDateTime; pNosNum,pValor: Real; pParcela,pQtdParc: Integer;
pNumDup: Integer): Boolean;// ptipo = 0-Calcula tudo
//         1-Somente Nosso Número
var
mfatven,mvalor: Real;
mdigcodbar,mdigagccnn,mcampo: String;
mcampo_livre: String;
mBaseCalcDigNosNumero756: string;
pTipoCob: integer; //  1-registrado 2-sem registro
mCodBarCalc: String;
mCodBarCalc_Dig: String;

mCampo01, mCampo02, mCampo03, mCampo04, mCampo05: String;

mnosnum_codbar: string;
mnosnum_codbar_dig: string;
mcalcDigCodBar  : string;

{

  mret_nosnum: Real;
  mret_dignn : String;
  mret_codbar: String;
  mret_numimp: String;
}

const
   pTipoCobSafra = '2'; // 2-registrado
begin

mret_nosnum:='';
mret_dignn :='';
mret_codbar:='';
mret_numimp:='';

if length(pNumCon)>7 then
   pnumcon:=copy(pNumCon,1,7);

if pNosNum=0 then
   begin

   mret_nosnum:='';
   mret_nosnum:=inttostr(fbuscarsequenciabanco(pcodemp,pcodbco));
   end
else
   begin
   mret_nosnum:=FloatToStr(pNosNum);
   end;
if fsonumero(mret_nosnum)<1 then
   begin
   MessageDlg('Erro ao Buscar o Proximo numero de Boleto!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end;


if pNumBco=001 then // banco do Brasil
   begin
   if length(pNumCon)>6 then
      begin
      mret_nosnum:=Formatfloat('0000000',  fSonumero(pNumCon))
                    +insere(FormatFloat('000',fSonumero(mret_nosnum)),'0',10);
      end
   else  if length(pNumCon)<5 then
      begin
      mret_nosnum:=Formatfloat('0000',  fSonumero(pNumCon))
                    +insere(FormatFloat('000',fSonumero(mret_nosnum)),'0',07);
      end
   else
      begin
      mret_nosnum:=Formatfloat('000000',  fSonumero(pNumCon))
                    +insere(FormatFloat('000',fSonumero(mret_nosnum)),'0',05);

      end;
   if length(pNumCon)<7 then
      begin
      mcinst4:=mret_nosnum;
      if length(mcinst4)>11 then
         begin
         mcinst4:=copy(mcinst4,length(mcinst4)-10,11);
         mret_nosnum:=mcinst4;
         end;
      try
         mret_dignn:= NumeroDV_BBMod11(mret_nosnum);
      except
         mret_dignn:='1';
         end;
      end
   else
      mret_dignn:='';



// manual do banco do brasil campos fixos
//   mcodbar:='001'; // campo 01 3 posicoes valor fixo
   if ptipo<>1 then
      begin
      mret_codbar:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real

{
 
}




      if pDtvcto>=StrToDate('22/02/2025') then
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate(mDataFatorNova))   // campo 04 data de vencimento
      else
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate('07/10/1997'));   // campo 04 data de vencimento



      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mret_codbar:=mret_codbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10);

      if length(pNumCon)>6 then
         begin
         mret_codbar:=mret_codbar+insere('0','0',6); // brancos
         mret_codbar:=mret_codbar+mret_nosnum; // nosso numero sem digito
         end
      else if length(pNumCon)<5 then
         begin
         mret_codbar:=mret_codbar+FormatFloat('00000000000',fSonumero(mret_nosnum)); // nosso numero sem digito
         mret_codbar:=mret_codbar+FormatFloat('0000',FSonumero(pCodAge)); // numero do agencia sem o digito
         mret_codbar:=mret_codbar+FormatFloat('00000000',FSonumero(pCodCed)); // codigo do Beneficiario sem o digito
         end
      else
         begin
         mret_codbar:=mret_codbar+FormatFloat('00000000000',fSonumero(mret_nosnum)); // nosso numero sem digito
         mret_codbar:=mret_codbar+FormatFloat('0000',FSonumero(pCodAge)); // numero do agencia sem o digito
         mret_codbar:=mret_codbar+FormatFloat('00000000',FSonumero(pCodCed)); // codigo do Beneficiario sem o digito
         end;

      mret_codbar:=mret_codbar+FormatFloat('00',FSonumero(pCodCar)); // codigo da carteira


      mret_numimp:=copy(mret_codbar,1,4)+copy(mret_codbar,5,39);
      mret_numimp:=NumeroDV_BBMod11(mret_numimp);
      // NumeroDV(mret_numimp,11,3,0);
      mret_codbar:=copy(mret_codbar,1,4)+mret_numimp+copy(mret_codbar,5,39);
//      mret_codbar:='00193373700000001000500940144816060680935031';

      mret_numimp:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_numimp:=mret_numimp+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_numimp:=mret_numimp+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real

      mvalor:=StrToFloat('0'+copy(mret_codbar,20,5));

      mcampo:=mret_numimp+formatFloat('00000',mvalor);

      mret_numimp:=mret_numimp+copy(formatFloat('00000',mvalor),1,1)+'.';

      mret_numimp:=mret_numimp+copy(FormatFloat('00000',mvalor),2,4);

      mret_numimp:=mret_numimp+NumeroDV_BBMod10(mcampo);      // 01 digito no modulo 10 das 5 primeiras posicoes do campo livre
//      mret_numimp:=mret_numimp+NumeroDV_BBMod11   NumeroDV(mcampo,10,1,0); // digito no modulo 10 das 5 primeiras posicoes do campo livre
   // segunda posicao
      mret_numimp:=mret_numimp+' ';
      mvalor:=StrToFloat('0'+copy(mret_codbar,25,10));
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),6,5);
      mret_numimp:=mret_numimp+NumeroDV_BBMod10(FloatToStr(mvalor)); //02
//      FloatTostr(mvalor),10,1,0); // digito no modulo 10 da 6 a 15  posicoes do campo livre
   //Terceira posicao
      mret_numimp:=mret_numimp+' ';
      mvalor:=ValFloat(copy(mret_codbar,35,10));
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),6,5);
      mret_numimp:=mret_numimp+NumeroDV_BBMod10(FloatToStr(mvalor));  //03

//      NumeroDV(FloatTostr(mvalor),10,1,0); // digito no modulo 10 da 16 a 25  posicoes do campo livre
   // Quarta posicao
      mret_numimp:=mret_numimp+' ';
      mret_numimp:=mret_numimp+copy(mret_codbar,5,1);
   // Quinta posicao
      mret_numimp:=mret_numimp+' ';
      mret_numimp:=mret_numimp+copy(mret_codbar,6,4)+copy(mret_codbar,10,10);
      end;
   end
else if pNumbco=104 then // caixa
   begin
   pTipoCob:=1; // registrado

   mnosnum_codbar:=insere(inttostr(pParcela),'0',3);  // nosso numero sequencia 01 preenchido com o numero da parcela
   mnosnum_codbar:=mnosnum_codbar+formatfloat('0', pTipoCob); // constante 01 tipo de cobranca 1-registrada 2-sem registro
   mnosnum_codbar:=mnosnum_codbar+formatfloat('000', pQtdParc); // nossonumero sequencia 02 preenchido com a quantidade de parcelas
   mnosnum_codbar:=mnosnum_codbar+formatfloat('0', 4); // constante 2 // emissao do boleto 4-benfeficiario
   mnosnum_codbar:=mnosnum_codbar+insere(formatfloat('0', pNumDup),'0',09); // nosso numero sequencia 3 numero do titulo;

   mnosnum_codbar_dig := NumeroDV_Caixa104_Comdig0(mnosnum_codbar);

// nosso numero do boleto

   mret_nosnum:=formatfloat('0', pTipoCob); // constante 01 tipo de cobranca 1-registrada 2-sem registro
   mret_nosnum:=mret_nosnum+formatfloat('0', 4); // constante 2 // emissao do boleto 4-benfeficiario

   mret_nosnum:=mret_nosnum+insere(inttostr(pParcela),'0',3);  // nosso numero sequencia 01 preenchido com o numero da parcela
   mret_nosnum:=mret_nosnum+formatfloat('000', pQtdParc); // nossonumero sequencia 02 preenchido com a quantidade de parcelas
   mret_nosnum:=mret_nosnum+insere(formatfloat('0', pNumDup),'0',09); // nosso numero sequencia 3 numero do titulo;

   mret_dignn := NumeroDV_Caixa104_Comdig0(mret_nosnum);

// termino nosso numero do boleto



   if ptipo<>1 then
      begin
      pTipoCob:=1;
      mret_codbar:=FormatFloat('000',pNumBco);   // 01 -  001 - 003
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real   // 02 - 004-004
      mret_codbar:=mret_codbar+'D';   // 03 - 005-005 digito ver calculo nota 2 / anexo I

      if pDtvcto>=StrToDate('22/02/2025') then
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate(mDataFatorNova))   // campo 04 data de vencimento 04 -009-009 4 fator vencimeno
      else
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate('07/10/1997'));   // campo 04 data de vencimento 04 -009-009 4 fator vencimeno


      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mret_codbar:=mret_codbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10); // campo 05 010-019 tamanho 10 valor do documento com 2 decimais


      mret_codbar:=mret_codbar+ insere(pCodCed,'0',06); // 020-025 tam 06 codigo do beneficiario
      mret_codbar:=mret_codbar+ insere(pDigCed,'0',01); // 026-026 tam 01 digito codigo do beneficiario nota 3 anexo VI
      mret_codbar:=mret_codbar+ mnosnum_codbar; // 027-043 tam 17 nosso numero completo

      mCodBarCalc:=copy(mret_codbar,20,43); // codigo beneficiaio 20-25 dv beneficiario
                                            // 26-26 nosnum seq 1 27-29 nosnum con 130-30 nosnum seq 2 31-33 cont 2 34-34 nosnum seq 35-43

      mCodBarCalc_dig:=NumeroDV_Caixa104_Comdig0(mCodBarCalc);

      mret_codbar:=mret_codbar+ mCodBarCalc_Dig; //  digito do calculo acima

      mCodBarCalc:=copy(mret_codbar,1,4)+copy(mret_codbar,6,39);
      mCodBarCalc_dig:=NumeroDV_Caixa104_semdig0(mCodBarCalc);

//      mRet_codbar:=mCodBarCalc;
//      mdigcodbar:=mCodBarCalc_dig;


      mret_codbar:=copy(mret_codbar,1,4)+mCodBarCalc_dig+copy(mret_codbar,6,39);
// calcul


// concluido o codigo de barras

      mCampo01:='';
      mCampo02:='';
      mCampo03:='';
      mCampo04:='';
      mCampo05:='';


      mCampo01:=copy(mret_codbar,1,4); // campo 01 1 -  4
      mCampo01:=mCampo01+copy(mret_nosnum,1,5); // posicao 20 -24 do codigo de barras ou de 1 a 4 do nosso numero

      mCampo02:=copy(mret_nosnum,06,10); // posicao 20 -24 do codigo de barras ou de 1 a 4 do nosso numero

      mCampo03:=copy(mret_codbar,35,10);

      mCampo04:=copy(mret_codbar,05,01);

      mCampo05:=copy(mret_codbar,06,04);
      mCampo05:=mCampo05+copy(mret_codbar,10,10);

      mCampo01 := mCampo01 + NumeroDV_104caixaMod10(mCampo01);
      mCampo02 := mCampo02 + NumeroDV_104caixaMod10(mCampo02);
      mCampo03 := mCampo03 + NumeroDV_104caixaMod10(mCampo03);

      mcampo01 := copy(mcampo01,1,5)+'.'+copy(mcampo01,6,05);
      mcampo02 := copy(mcampo01,1,5)+'.'+copy(mcampo02,6,05);
      mcampo01 := copy(mcampo03,1,5)+'.'+copy(mcampo03,6,05);


      mret_numimp := mCampo01+' '+mCampo02+' '+mCampo03+' '+mCampo04+' '+mCampo05;

      end;
   end
else if pNumbco=341 then // itau
   begin
   mret_nosnum:=insere(fdeixanum(mret_nosnum),'0',8);
   mcampo:=pCodAge+pCodCed+pCodCar+insere(fdeixanum(mret_nosnum),'0',8);
//   if length(mcampo)>11 then
//      mcampo:=copy(mcampo,length(mcampo)-10,11);
//   mret_dignn:= NumeroDV(mcampo,10,4,1);
   mret_dignn:= NumeroDV_ItauMod10(mcampo);
   if ptipo<>1 then
      begin
      mret_codbar:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real
      mret_codbar:=mret_codbar+'X';
      if pDtEmis=pDtVcto then
        pDtVcto:=pDtVcto+15;
      if pDtvcto>=StrToDate('22/02/2025') then
         mfatven:=PdtVcto-StrToDate('22/02/2025')   // campo 04 data de vencimento
      else
         mfatven:=PdtVcto-StrToDate('07/10/1997');   // campo 04 data de vencimento
      mret_codbar:=mret_codbar+Formatfloat('0000',mfatven);   // campo 04 data de vencimento
      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mret_codbar:=mret_codbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
      mret_codbar:=mret_codbar+FormatFloat('000',FSonumero(pCodCar)); // codigo da carteira
      mret_codbar:=mret_codbar+mret_nosnum; // nosso numero sem digito
      mret_codbar:=mret_codbar+FormatFloat('0', FSonumero(mret_dignn));
      mret_codbar:=mret_codbar+FormatFloat('0000',FSonumero(pCodAge)); // numero do agencia sem o digito
      mret_codbar:=mret_codbar+FormatFloat('00000',FSonumero(pCodCed)); // codigo do Beneficiario sem o digito
      mret_codbar:=mret_codbar+insere(FormatFloat('0',FSonumero(pDigCed)),'0',1); // codigo do Beneficiario sem o digito
      mret_codbar:=mret_codbar+'000';

//      mret_codbar:='34190166700000123451101234567880057123457000';
      mret_numimp:=copy(mret_codbar,1,4)+copy(mret_codbar,6,39);
//      mdigcodbar:=NumeroDV(mret_numimp,11,3,0);
      mdigcodbar:=NumeroDV_ItauMod11(mret_numimp);

      mret_codbar:=copy(mret_codbar,1,4)+mdigcodbar+copy(mret_codbar,6,39);

// inicio da linha digitavel
   // campo 01

      mcampo:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0)  then
         mcampo:=mcampo+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mcampo:=mcampo+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real

      mcampo:=mcampo+FormatFloat('000', fsonumero(pCodCar)); // nosso numero sem digito
      mcampo:=mcampo+copy(FormatFloat('00000000',fsonumero(mret_nosnum)),1,2); // nosso numero sem digito

//      mcampo:=mcampo+NumeroDV(mcampo,10,4,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre

      mcampo:=mcampo+NumeroDV_ItauMod10(mcampo); // digito no modulo 10 das 5 primeiras posicoes do campo livre


      mret_numimp:=copy(mcampo,1,5)+'.'+copy(mcampo,6,5);
      mret_numimp:=mret_numimp+' ';
   // campo 02
      mcampo:=copy(FormatFloat('00000000',fsonumero(mret_nosnum)),3,6); // nosso numero sem digito
//      mcampo:=mcampo+mdigagccnn;
      mcampo:=mcampo+mret_dignn;
      mcampo:=mcampo+copy(FormatFloat('0000',FSonumero(pCodAge)),1,3); // numero do agencia sem o digito
//      mcampo:=mcampo+NumeroDV(mcampo,10,4,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre
      mcampo:=mcampo+NumeroDV_ItauMod10(mcampo); // digito no modulo 10 das 5 primeiras posicoes do campo livre

      mret_numimp:=mret_numimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
      mret_numimp:=mret_numimp+' ';
   // campo 03
      mcampo:=copy(FormatFloat('0000',FSonumero(pCodAge)),4,1); // numero do agencia sem o digito
      mcampo:=mcampo+insere(Formatfloat('00000',fsonumero(pCodCed)),'0',5);
      mcampo:=mcampo+insere(Formatfloat('0',fsonumero(pDigCed)),'0',1);
      mcampo:=mcampo+insere('0','0',3);
//      mcampo:=mcampo+NumeroDV(mcampo,10,4,1); // digito no modulo 10 das 5 primeiras posicoes do campo livre
      mcampo:=mcampo+NumeroDV_ItauMod10(mcampo); // digito no modulo 10 das 5 primeiras posicoes do campo livre
      mret_numimp:=mret_numimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
      mret_numimp:=mret_numimp+' ';
   // campo 04
      mret_numimp:=mret_numimp+mdigcodbar;
      mret_numimp:=mret_numimp+' ';
   // campo 05
      mcampo:=FormatFloat('0000', mfatven);
      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mcampo:=mcampo+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
      mret_numimp:=mret_numimp+mcampo;
// fim da linha digitavel
      end;
   end
else if pNumbco=237 then // bradesco
   begin


//   mret_nosnum:=Formatfloat('000000',  ValFloat(pNumCon));
   mret_nosnum:=pNumCon+insere(mret_nosnum,'0',11-length(pNumCon));
//   +FormatFloat('00000', fSonumero(mret_nosnum));

//                    +fdeixanum(mret_nosnum);



   mcinst4:=mret_nosnum;
   if length(mcinst4)>11 then
      begin
      mcinst4:=copy(mcinst4,length(mcinst4)-10,11);
      mret_nosnum:=mcinst4;
      end;
   try
      mret_dignn:=NumeroDV_NosNumMod11237(pCodCar+Formatfloat('00000000000',fsonumero( mret_nosnum)));
   except
      mret_dignn:='0';
      end;


   mcampo_livre:=insere(fdeixanum(pCodAge),'0',04)
                +insere(pcodcar,'0',2)
                +insere(FormatFloat('0000',fSonumero(mret_nosnum)),'0',11)
                +insere(FormatFloat('0000',fsonumero(pcodCed)),'0',07)
                +'0';
   if ptipo<>1 then
      begin
      mret_codbar:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real
      mret_codbar:=mret_codbar+'X';

      if pDtvcto>=StrToDate('22/02/2025') then
         mfatven:=PdtVcto-StrToDate('22/02/2025')   // campo 04 data de vencimento
      else
         mfatven:=PdtVcto-StrToDate('07/10/1997');   // campo 04 data de vencimento


      mret_codbar:=mret_codbar+Formatfloat('0000',mfatven);   // campo 04 data de vencimento
      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mret_codbar:=mret_codbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10);

      mret_codbar:=mret_codbar+insere( FormatFloat('000',FSonumero(pCodAge)),'0',4); // codigo da AGENCIA

      mret_codbar:=mret_codbar+insere(pCodCar,'0',2); // Código da Carteira

      mret_codbar:=mret_codbar+insere(FormatFloat('0',fSonumero(mret_nosnum)),'0',11); // nosso numero sem o digito
      mret_codbar:=mret_codbar+insere(FormatFloat('0000',FSonumero(pCodCed)),'0',07); // numero do da contaa sem o digito

      mret_codbar:=mret_codbar+'0';



      mret_numimp:=copy(mret_codbar,1,4)+copy(mret_codbar,6,39);
      mdigcodbar:=NumeroDV_CodBarMod11237(mret_numimp);
//      mdigcodbar:=NumeroDV(mret_numimp,11,3,0);

      mret_codbar:=copy(mret_codbar,1,4)+mdigcodbar+copy(mret_codbar,6,39);

// inicio da linha digitavel
   // campo 01

      mcampo:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0)  then
         mcampo:=mcampo+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mcampo:=mcampo+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real
      mcampo:=mcampo+copy(mcampo_livre,1,5);

      mcampo:=mcampo+NumeroDV_CodBarMod10237(mcampo); // BRADESCO



      mret_numimp:=copy(mcampo,1,5)+'.'+copy(mcampo,6,5);
      mret_numimp:=mret_numimp+' ';

   // campo 02
      mcampo:=copy(mcampo_livre,6,10);

      mcampo:=mcampo+NumeroDV_CodBarMod10237(mcampo); // BRADESCO

      mret_numimp:=mret_numimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
      mret_numimp:=mret_numimp+' ';

   // campo 03

      mcampo:=copy(mcampo_livre,16,10);

      mcampo:=mcampo+NumeroDV_CodBarMod10237(mcampo); // BRADESCO

      mret_numimp:=mret_numimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
      mret_numimp:=mret_numimp+' ';

   // campo 04
      mret_numimp:=mret_numimp+mdigcodbar;
      mret_numimp:=mret_numimp+' ';
   // campo 05
      mcampo:=FormatFloat('0000', mfatven);
      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mcampo:=mcampo+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
      mret_numimp:=mret_numimp+mcampo;
// fim da linha digitavel
      end;
   end
else if  pNumbco=399 then // HSBC
  begin
  mret_nosnum:=Formatfloat('00000',  ValFloat(pNumCon))+Formatfloat('00000',pNosNum);
  mcinst4:=mret_nosnum;
  if length(mcinst4)>10 then
    begin
    mcinst4:=copy(mcinst4,1,10);
    mret_nosnum:=mcinst4;
    end;
  try
    mret_dignn:=NumeroDV_CodBarMod399NN(mcinst4);
  except
    mret_dignn:='0';
    end;

   mret_codbar:=FormatFloat('000',pNumBco);
   if (pCodMoe>9) or (pCodMoe=0) then
     mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
     mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real
      if pDtvcto>=StrToDate('22/02/2025') then
         mfatven:=PdtVcto-StrToDate('22/02/2025')   // campo 04 data de vencimento
      else
         mfatven:=PdtVcto-StrToDate('07/10/1997');   // campo 04 data de vencimento


   mret_codbar:=mret_codbar+Formatfloat('0000',mfatven);   // campo 04 data de vencimento
   mvalor :=StrToFloat(FormatFloat('0.00',pValor));
   mret_codbar:=mret_codbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
   mret_codbar:=mret_codbar+mret_nosnum+mret_dignn;
   mret_codbar:=mret_codbar+insere(pCodAge,'0',4)+insere(pCodCed+pDigCed,'0',7); // codigo da AGENCIA + codigo da CONTA
   mret_codbar:=mret_codbar+insere(pCodCar,'0',2); //CODIGO DA CARTEIRA
   mret_codbar:=mret_codbar+'1'; //CODIGO DO APLICATIVO

   mdigcodbar:=NumeroDV_CodBarMod399BB(mret_codbar);
//   mdigcodbar:=NumeroDV(mret_numimp,11,3,0);

   mret_codbar:=copy(mret_codbar,1,4)+mdigcodbar+copy(mret_codbar,5,39);


   mcampo:=FormatFloat('000',pNumBco);
   if (pCodMoe>9) or (pCodMoe=0)  then
     mcampo:=mcampo+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
   else
     mcampo:=mcampo+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real
   mcampo:=mcampo+copy(mret_nosnum,1,5);

   mcampo:=mcampo+NumeroDV_CodBarMod399DC(mcampo); // HSBC

   mret_numimp:=copy(mcampo,1,5)+'.'+copy(mcampo,6,5);
   mret_numimp:=mret_numimp+' ';

  //campo 02
   mcampo:=copy(mret_nosnum,6,5)+mret_dignn+insere(pCodAge,'0',4);

   mcampo:=mcampo+NumeroDV_CodBarMod399DC(mcampo); // HSBC

   mret_numimp:=mret_numimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
   mret_numimp:=mret_numimp+' ';

  //campo 03

   mcampo:=insere(pCodCed+pDigCed,'0',7)+insere(pCodCar,'0',2)+'1';
   mcampo:=mcampo+NumeroDV_CodBarMod399DC(mcampo); // HSBC

   mret_numimp:=mret_numimp+copy(mcampo,1,5)+'.'+copy(mcampo,6,6);
   mret_numimp:=mret_numimp+' ';

  //campo 04
   mret_numimp:=mret_numimp+mdigcodbar;
   mret_numimp:=mret_numimp+' ';
  //campo 05
   mcampo:=FormatFloat('0000', mfatven);
   mvalor :=StrToFloat(FormatFloat('0.00',pValor));
   mcampo:=mcampo+insere((Formatfloat('0000000000',mvalor*100)),'0',10);
   mret_numimp:=mret_numimp+mcampo;
 //fim da linha digitavel
  end
else if pNumBco=756 then // banco SICOOB
   begin
   pNumcon:=fdeixanum(pnumcon);



   mret_nosnum:=insere(ValReal(mret_nosnum),'0',07);

//   mret_nosnum:=fdeixanum(mret_nosnum);

{   if pQtdParc<2 then
      mret_nosnum:=mRet_NosNum+insere('01','0',02)
   else
      mret_nosnum:=mRet_NosNum+insere(Inttostr(pParcela),'0',02);
   mret_nosnum:=mRet_NosNum+insere(pCodCar,'0',02);
   mret_nosnum:=mRet_NosNum+'4';
//   mret_nosnum:=mRet_NosNum+insere(' ',' ',05);

   mret_dignn:='';
}

//   mBaseCalcDigNosNumero756:= insere(ValReal(pCodAge),'0',4)

//   mret_dignn :=NumeroDV_NosNumMod3197(mret_nosnum);
//   mret_dignn :='';

 //  lindomar
   mret_dignn :=NumeroDV_NosNumMod3197(insere(ValReal(pCodAge),'0',4)
                                      +insere(ValReal(pNumCon),'0',10)
                                      +insere(ValReal(mret_nosnum),'0',7));

   if ptipo<>1 then
      begin

//
// linha digitavel

      mret_numimp:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_numimp:=mret_numimp+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_numimp:=mret_numimp+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real

      mret_numimp:=mret_numimp+insere(inttostr(valint(pCodCar)),'0',1);   // campo DA Carteira







      mret_numimp:=mret_numimp+insere(pCodAge,'0',4);


      mret_numimp:=mret_numimp+'D';


//      CAMPO 02 INICIO
      mret_numimp:=mret_numimp+'01'; // codigo da modalidade

      mret_numimp:=mret_numimp+insere(pNumCon,'0',07); // codigo do Beneficiario


//      mret_numimp:=mret_numimp+insere(pCodCed,'0',07); // codigo do Beneficiario

//        mret_nosnum:=insere(FloatToStr(fsonumero(mret_nosnum)),'0',7);
      mret_numimp:=mret_numimp+mret_nosnum[1]+'D';

      // CAMPO 03 INICIO


//      mret_numimp:=mret_numimp+copy(mret_nosnum,2,7)+mret_dignn;
      mret_numimp:=mret_numimp+insere(copy(mret_nosnum,2,7),'0',6)+mret_dignn;
      mret_numimp:=mret_numimp+formatfloat('000', pParcela); // numero da parcela


      mret_numimp:=mret_numimp+'D'; // outro digito
      mret_numimp:=mret_numimp+'D'; // outro digito geral
      if pDtvcto>=StrToDate('22/02/2025') then
         mret_numimp:=mret_numimp+Formatfloat('0000',PdtVcto-StrToDate('22/02/2025')+1000)   // campo 04 data de vencimento
      else
         mret_numimp:=mret_numimp+Formatfloat('0000',PdtVcto-StrToDate('03/07/2000')+1000);   // campo 04 data de vencimento

      mvalor :=StrToFloat(FormatFloat('0.00',pValor));

      mret_numimp:=mret_numimp+insere(FormatFloat('00000',mvalor*100),'0',10);


      mret_numimp[10]:=NumeroDV_BBMod10(copy(mret_numimp,01,09))[1];
      mret_numimp[21]:=NumeroDV_BBMod10(copy(mret_numimp,11,10))[1];

      mret_numimp[32]:=NumeroDV_BBMod10(copy(mret_numimp,22,10))[1];

//      mret_numimp[33]:=NumeroDV_Sicob756Mod11(copy(mret_numimp,01,32))[1];
//      mret_numimp[33]:=NumeroDV_BBMod10(copy(mret_numimp,01,32))[1];

      mret_codbar := FormatFloat('000',pNumBco);

      if (pCodMoe>9) or (pCodMoe=0) then
         mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real
      mret_codbar:=mret_codbar+'D';

      if pDtvcto>=StrToDate('22/02/2025') then
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate('22/02/2025')+1000)   // campo 04 data de vencimento
      else
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate('03/07/2000')+1000);   // campo 04 data de vencimento


//      mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate('03/07/2000')+1000);   // campo 04 data de vencimento
      mret_codbar:=mret_codbar+insere(FormatFloat('00000',mvalor*100),'0',10);
      mret_codbar:=mret_codbar+insere(inttostr(valint(pCodCar)),'0',1);   // campo DA Carteira
      mret_codbar:=mret_codbar+insere(pCodAge,'0',4);
      mret_codbar:=mret_codbar+'01'; // codigo da modalidade
      mret_codbar:=mret_codbar+insere(pNumCon,'0',07); // codigo do Beneficiario
      mret_codbar:=mret_codbar+insere(mret_nosnum,'0',7)+mret_dignn;
      mret_codbar:=mret_codbar+formatfloat('000', pparcela); // numero da parcela
//      showmessage('tamanho '+ inttostr(length(mret_codbar)));

       mret_codbar := NumeroDV_Sicob756Mod11(mret_codbar);

       mdigcodbar:=mret_codbar[5];


//      mdigcodbar:=NumeroDV_BBMod11(copy(mret_codbar,01,04)+copy(mret_codbar,6,39));

//      mret_codbar[05]:=mdigcodbar[1];

//      mret_codbar[05]:=NumeroDV_BBMod11(copy(mret_codbar,01,04)+copy(mret_codbar,6,39))[1];


//      mret_codbar[21]:=NumeroDV_BBMod11(copy(mret_codbar,11,10))[1];
//      mret_codbar[32]:=NumeroDV_BBMod11(copy(mret_codbar,22,10))[1];
//      mret_codbar[33]:=NumeroDV_BBMod11(copy(mret_codbar,01,32))[1];



//      mret_numimp[33]:=NumeroDV_BBMod11(copy(mret_codbar,01,32))[1];
      mret_numimp[33]:=mdigcodbar[1];


      mcampo_livre:=mret_numimp;

      mret_numimp:=copy(mcampo_livre,1,5)+'.';
      mret_numimp:=mret_numimp+copy(mcampo_livre,6,5)+' ';

      mret_numimp:=mret_numimp+copy(mcampo_livre,11,5)+'.';
      mret_numimp:=mret_numimp+copy(mcampo_livre,16,6)+' ';

      mret_numimp:=mret_numimp+copy(mcampo_livre,22,5)+'.';
      mret_numimp:=mret_numimp+copy(mcampo_livre,27,6)+' ';

      mret_numimp:=mret_numimp+copy(mcampo_livre,33,1)+' ';

      mret_numimp:=mret_numimp+copy(mcampo_livre,34,14);

{
MMMMNNNNNNNNNN
	AAABC.DDDDE		FFGGG.GGGGHI	HHHHH.HHJJJK	L	MMMMNNNNNNNNNN

AAABCDDDDEFFGGGGGGGHIHHHHHHHJJJKLMMMMNNNNNNNNNN

}
//      mdigcodbar

//      MCINST:=NumeroDV_BBMod11(copy(mret_codbar,01,32))[1];
//      mcinst2:=NumeroDV_ItauMod11(copy(mret_codbar,01,32))[1];
//      mcinst3:= mdigcodbar+'|'+ mcinst+'|'+mcinst2;

//      mret_numimp[33]:=NumeroDV_BBMod11(copy(mret_numimp,01,32))[1];

      end;
{
12345678901234567890123456789012345567890123456
aAABCDDDDEFFGGGGGGGHIHHHHHHHJJJKLMMMMNNNNNNNNNN
          11
          1234567890 1234567890dd
	AAABC.DDDDE		FFGGG.GGGGHI	HHHHH.HHJJJK	L	MMMMNNNNNNNNNN
}
   end
else if (pNumBco=353) or (pNumBco=033) or (pNumBco=008) then // banco SICOOB
  begin
  mret_nosnum:=insere(ValReal(mret_nosnum),'0',12);
  mret_dignn :=NumeroDV_BBMod11(mret_nosnum);
   //   mret_dignn :=NumeroDV_NosNumMod3197(insere(ValReal(pCodAge),'0',4)
  //                                      +insere(ValReal(pNumCon),'0',10)
  //                                      +insere(ValReal(mret_nosnum),'0',7));

   if ptipo<>1 then
      begin
      mret_codbar:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real

      if pDtvcto>=StrToDate('22/02/2025') then
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate(mDataFatorNova))   // campo 04 data de vencimento
      else
         mret_codbar:=mret_codbar+Formatfloat('0000',PdtVcto-StrToDate('07/10/1997'));   // campo 04 data de vencimento

      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mret_codbar:=mret_codbar+insere(Formatfloat('0000000000',mvalor*100),'0',10);
      mret_codbar:=mret_codbar+'9';
      mret_codbar:=mret_codbar+insere(pNumCon,'0',7);
      mret_codbar:=mret_codbar+insere(mret_nosnum,'0',12);
      mret_codbar:=mret_codbar+insere(mret_dignn,'0',1);
      mret_codbar:=mret_codbar+'0';
      mret_codbar:=mret_codbar+insere(pCodCar,'0',3);
      mret_numimp:=copy(mret_codbar,1,4)+copy(mret_codbar,5,39);
      mret_numimp:=NumeroDV_BBMod11(mret_numimp);
      mret_codbar:=copy(mret_codbar,1,4)+mret_numimp+copy(mret_codbar,5,39);
//
// linha digitavel

      mret_numimp:=FormatFloat('000',pNumBco);
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_numimp:=mret_numimp+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real
      else
         mret_numimp:=mret_numimp+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real



      mvalor:=StrToFloat(copy(mret_codbar,20,5));
      mcampo:=mret_numimp+formatFloat('00000',mvalor);
      mret_numimp:=mret_numimp+copy(formatFloat('00000',mvalor),1,1)+'.';
      mret_numimp:=mret_numimp+copy(FormatFloat('00000',mvalor),2,4);
      mret_numimp:=mret_numimp+NumeroDV_BBMod10(mcampo);      // 01 digito no modulo 10 das 5 primeiras posicoes do campo livre
//      mret_numimp:=mret_numimp+NumeroDV_BBMod11   NumeroDV(mcampo,10,1,0); // digito no modulo 10 das 5 primeiras posicoes do campo livre
   // segunda posicao
      mret_numimp:=mret_numimp+' ';
      mvalor:=StrToFloat('0'+copy(mret_codbar,25,10));
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),6,5);
      mret_numimp:=mret_numimp+NumeroDV_BBMod10(FloatToStr(mvalor)); //02
//      FloatTostr(mvalor),10,1,0); // digito no modulo 10 da 6 a 15  posicoes do campo livre
   //Terceira posicao
      mret_numimp:=mret_numimp+' ';
      mvalor:=ValFloat(copy(mret_codbar,35,10));
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),1,5)+'.';
      mret_numimp:=mret_numimp+copy(formatFloat('0000000000',mvalor),6,5);
      mret_numimp:=mret_numimp+NumeroDV_BBMod10(FloatToStr(mvalor));  //03

//      NumeroDV(FloatTostr(mvalor),10,1,0); // digito no modulo 10 da 16 a 25  posicoes do campo livre
   // Quarta posicao
      mret_numimp:=mret_numimp+' ';
      mret_numimp:=mret_numimp+copy(mret_codbar,5,1);
   // Quinta posicao
      mret_numimp:=mret_numimp+' ';
      mret_numimp:=mret_numimp+copy(mret_codbar,6,4)+copy(mret_codbar,10,10);
      end;
   end
else if pNumbco=mBancoSafra then // banco safra
   begin

   mret_nosnum:=insere(fdeixanum(mret_nosnum),'0',9);


//   mret_nosnum:='261730011'; // mudado apenas para validar o sistema

   if ptipo<>1 then
      begin
      mret_codbar:=FormatFloat('000',pNumBco);             // 001-003
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_codbar:=mret_codbar+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real // 004-004
      else
         mret_codbar:=mret_codbar+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real 004-004
      mret_codbar:=mret_codbar+'X'; // 005-005
      if pDtEmis=pDtVcto then
        pDtVcto:=pDtVcto+15;

      if pDtvcto>=StrToDate('29/05/2022') then
         mfatven:=PdtVcto-StrToDate('29/05/2022')   // campo 04 data de vencimento
      else
         mfatven:=PdtVcto-StrToDate('29/05/2022');   // campo 04 data de vencimento
      mret_codbar:=mret_codbar+Formatfloat('0000',mfatven);   // campo 04 data de vencimento 006-009
      mvalor :=StrToFloat(FormatFloat('0.00',pValor));
      mret_codbar:=mret_codbar+insere((Formatfloat('0000000000',mvalor*100)),'0',10); // 010-019

      mret_codbar:=mret_codbar+'7'; // 020-020

      mret_codbar:=mret_codbar+FormatFloat('00000',FSonumero(pCodAge+ DM1.Tb_BcoBCDIGAGE.AsString )); // 021-025 numero do agencia sem o digito
//digito da agencia RETIRADO  +pDigCed
      mret_codbar:=mret_codbar+insere(FormatFloat('00000',FSonumero(pCodCed+pDigCed )),'0',9); // 026-034 codigo do Beneficiario sem o digito

      mret_codbar:=mret_codbar+mret_nosnum;        //035-043 COBRANÇA REGISTRADA
      mret_codbar:=mret_codbar+insere(pTipoCobSafra,'0',1);        //044-044 COBRANÇA REGISTRADA

//      mret_codbar:='34190166700000123451101234567880057123457000';

// inicio

      mret_numimp:=FormatFloat('000',pNumBco);             // 001-003
      if (pCodMoe>9) or (pCodMoe=0) then
         mret_numimp:=mret_numimp+'9'   // campo 02 tipo de moeda 1 posicao valor 9 para real // 004-004
      else
         mret_numimp:=mret_numimp+FormatFloat('0',pCodMoe);   // campo 02 tipo de moeda 1 posicao valor 9 para real 004-004
      mret_numimp:=mret_numimp+'7';   // campo 02 tipo de moeda 1 posicao valor 9 para real // 005-005

      mret_numimp:=mret_numimp+FormatFloat('0000',FSonumero(pCodAge)); // 006-009 4 digitos da agencianumero do agencia sem o digito
      mret_numimp:=mret_numimp+'D'; // 010-010 digito da posicao 1 ate a 9

      mret_numimp:=mret_numimp+copy(pCodAge,length(pCodAge),1); // 011-011 ultimo digito da agencia
      mret_numimp:=mret_numimp+insere(FormatFloat('00000',FSonumero(pCodCed+pDigCed)),'0',9); // 012-020 codigo do Beneficiario sem o digito
//      mret_numimp:=mret_numimp+insere(pDigCed,'0',1); // 021-021 codigo do Beneficiario sem o digito

      mret_numimp:=mret_numimp+'D'; // 021-021 codigo
      mret_numimp:=mret_numimp+insere(mret_nosnum,'0',9); // 022-030 nosso numero

      mret_numimp:=mret_numimp+insere(pTipoCobSafra,'0',1); // 031-031 tipo cobranca
      mret_numimp:=mret_numimp+'D'; // 032-032 digito verificador
      mret_numimp:=mret_numimp+'D'; // 033-033 digito verificador (dac)


      mret_numimp:=mret_numimp+Formatfloat('0000',mfatven);   // campo 04 data de vencimento 034-037
      mret_numimp:=mret_numimp+insere((Formatfloat('0000000000',mvalor*100)),'0',10); // 038-047

      mret_numimp[10]:=NumeroDV_SafraMod10(copy(mret_numimp,01,09))[1];
      mret_numimp[21]:=NumeroDV_SafraMod10(copy(mret_numimp,11,10))[1];

      //copy(mret_numimp,22,10)

      mret_numimp[32]:=NumeroDV_SafraMod10(copy(mret_numimp,22,10))[1];
//      showmessage(copy(mret_numimp,22,10));

// final aqui
{
      mdigcodbar:=NumeroDV_SafraMod11(mret_numimp);
      mret_codbar:=copy(mret_codbar,1,4)+mdigcodbar+copy(mret_codbar,6,39);
 }

       mcalcDigCodBar:=copy(mret_codbar,1,4)+copy(mret_codbar,6,39);
      mdigcodbar:=NumeroDV_SafraMod11(mcalcDigCodBar);
//      mdigcodbar:=NumeroDV(mret_numimp,11,3,0);

      mret_codbar:=copy(mret_codbar,1,4)+mdigcodbar+copy(mret_codbar,6,39);




      mret_numimp[33]:=mdigcodbar[1];

      fGerarEvento('numero linhadigitavel  '+mret_numimp);
      fGerarEvento('numero codigo de barras  '+mret_codbar);


      end;
   end;

result:=true;
end;


function tFrm_EBol.fAtualizaNosNum(pTipo,pSubsNosNum,pPvRep:Integer; pInst01,pInst02,pInst03,pInst04: String;pNosNum:Real): Boolean;

// ptipo = 0 atualiza tudo
//       = 1 Atualiza somente o nosso número
// pSubsNosNum = 0 Nao
//             = 1 Sim
//  pPvrep =0 Nao imprime plano de vendas e representante junto com as instruções
//          1 Imprime
{
   procudure fGerarOld;
   var
   mCondicao_old: String;
   mChave_Old: Integer;

   begin
   if Tb_DupCRNOSNUM.AsString<>'' then
      begin
      mCondicao_old:=' where CRCODEMP='+Tb_DarCRCODEMP.AsString
               +' and CRNUMERO='+Tb_DarCRNUMERO.AsString
               +' and CRDESD='+QuotedStr(Tb_DarCRDESD.AsString)
               +' and CRDUP='+Tb_DarCRDUP.AsString
               +' and CRNPED='+Tb_DarCRNPED.AsString;

      mChave_Old:=fGerarTabelas_Old(mOper //status
               ,0 //codigo novo valor chave
               ,'CRCODNOV' //nome do campo do novo valor (chave)
               ,'CRDATHOR_EVE' // nome do campo data e hora do evento
               ,'CRCODUSR_EVE' // nome do campo do usuario
               ,'CRTIPEVE' // nome do campo de status
               ,'CADDAR' // nome da tabela
               ,mCondicao_old);
      end;
   end;
}

var
  mInst04: String;
  query_exe: tQuery;
begin



Query_exe:=tQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';


Query_Exe.Close;
Query_Exe.SQL.Clear;

Query_Exe.SQL.Add('Update CADDAR set ');
Query_Exe.SQL.Add(' CRNOSNUM=:CRNOSNUM ');
Query_Exe.SQL.Add(',CRDNOSNUM=:CRDNOSNUM ');
Query_Exe.SQL.Add(',CRINST01=:CRINST01 ');
Query_Exe.SQL.Add(',CRINST02=:CRINST02 ');
Query_Exe.SQL.Add(',CRINST03=:CRINST03 ');
Query_Exe.SQL.Add(',CRINST04=:CRINST04 ');
if ptipo<>1 then
   begin
   Query_Exe.SQL.Add(',CRCODBAR=:CRCODBAR ');
   Query_Exe.SQL.Add(',CRCODDIG=:CRCODDIG ');
   end;
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   Query_Exe.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ')
else
   Query_Exe.SQL.Add(' where CRNUMERO=:CRNUMERO ');
Query_Exe.SQL.Add(' and CRDESD=:CRDESD ');
Query_Exe.SQL.Add(' and CRDUP =:CRDUP ');
Query_Exe.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');




Tb_Dup.First;
While not Tb_Dup.Eof do
  begin
  if flcadcli(1,0,Tb_DupCRCODCLI.AsString) then
    begin
    if (Trim(DM1.Tb_CliCENDERC.AsString)='') or (Trim(DM1.Tb_CliCBAIRROC.AsString)='')
        or (Trim(DM1.Tb_CliCCIDADEC.AsString)='') or (Trim(DM1.Tb_CliCUFC.AsString)='')
        or (Trim(DM1.Tb_CliCCEPC.AsString)='') then
      begin
      fmensagem('Dados Endereço de Cobrança do Cliente '+DM1.Tb_CliCRAZAO.AsString
               +#13+' incompletos!',0,['0'],0);
      Tb_Dup.Next;
      Continue;
      end;
    end;


   DM1.Tb_Dar.Close;
   DM1.Tb_Dar.SQL.Clear;
   DM1.Tb_Dar.SQL.Add('Select CADDAR.*,CADDAR.ROWID AS IDDAR from CADDAR ');
   if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      DM1.Tb_Dar.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ')
   else
      DM1.Tb_Dar.SQL.Add(' where CRNUMERO=:CRNUMERO ');
   DM1.Tb_Dar.SQL.Add(' and CRDESD=:CRDESD ');
   DM1.Tb_Dar.SQL.Add(' and CRDUP =:CRDUP ');
   DM1.Tb_Dar.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');
   DM1.Tb_Dar.ParamByName('CRCODEMP').AsFloat:=Tb_DupCRCODEMP.AsFloat;
   DM1.Tb_Dar.ParamByName('CRNUMERO').AsFloat   :=Tb_DupCRNUMERO.AsFloat;
   DM1.Tb_Dar.ParamByName('CRDESD').AsString    :=Tb_DupCRDESD.AsString;
   DM1.Tb_Dar.ParamByName('CRDUP').AsFloat      :=Tb_DupCRDUP.AsFloat;
   DM1.Tb_Dar.ParamByName('CRDTEMIS').AsDateTime:=Tb_DupCRDTEMIS.AsDateTime;
   DM1.Tb_Dar.Open;
   fdar01gant(8);



   if pSubsNosNum<>1 then
      begin
      if (fsonumero(Tb_DupCRNOSNUM.AsString)<>0)  and
         (fsonumero(Tb_DupCRCODBAR.AsString)<>0)  then
         begin
         Tb_Dup.Next;
         Continue;
         end;
      end;
   if pPvRep=1 then
      begin
      if trim(pInst04)<>'' then
         minst04:=pInst04+' '
      else
         mInst04:='';
      mInst04:=mInst04+'PV: '+Tb_DupCRTABPV.Value+'/'+Tb_DupCRCODPV.AsString
                      +' Rep.: '+Tb_DupCRCODVEN.AsString;
      if length(minst04)>60 then
         minst04:=copy(minst04,1,60)
      end;
   fCodigoBarras(pTipo,Tb_DupCRCODEMP.AsInteger,DM1.Tb_BcoBCCODBCO.AsInteger,
                 DM1.Tb_BcoBCNUMBCO.AsInteger,
                 DM1.Tb_PargerPCODMOE.AsInteger
                 ,trim(DM1.Tb_BcoBCNUMCON.AsString),
                 trim(DM1.Tb_BcoBCCODAGE.AsString),
                 trim(DM1.Tb_BcoBCCODCED.AsString),
                 trim(DM1.Tb_BcoBCDIGCED.AsString),
                 trim(DM1.Tb_BcoBCCODCAR.AsString),
                 Tb_DupCRDTEMIS.AsDateTime,
                 Tb_DupCRDTVCTO.AsDateTime,
                 pNosNum,
                 Tb_DupCRVALOR.Value,Tb_DupCRNUMPARC.asinteger,Tb_DupCRQTDpARC.asinteger,Tb_DupCRNUMERO.AsInteger);
   Query_Exe.Close;
   Query_Exe.ParamByName('CRNOSNUM').AsString :=mret_nosnum;
   Query_Exe.ParamByName('CRDNOSNUM').AsString:=mret_dignn;
   Query_Exe.ParamByName('CRINST01').AsString :=pInst01;
   Query_Exe.ParamByName('CRINST02').AsString :=pInst02;
   Query_Exe.ParamByName('CRINST03').AsString :=pInst03;
   Query_Exe.ParamByName('CRINST04').AsString :=mInst04;
   if ptipo<>1 then
      begin
      Query_Exe.ParamByName('CRCODBAR').AsString:=mret_codbar;
      Query_Exe.ParamByName('CRCODDIG').AsString:=mret_numimp;
      end;
   if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      Query_Exe.ParamByName('CRCODEMP').AsFloat:=Tb_DupCRCODEMP.AsFloat;
   Query_Exe.ParamByName('CRNUMERO').AsFloat   :=Tb_DupCRNUMERO.AsFloat;
   Query_Exe.ParamByName('CRDESD').AsString    :=Tb_DupCRDESD.AsString;
   Query_Exe.ParamByName('CRDUP').AsFloat      :=Tb_DupCRDUP.AsFloat;
   Query_Exe.ParamByName('CRDTEMIS').AsDateTime:=Tb_DupCRDTEMIS.AsDateTime;
   try
      Query_Exe.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro 1798 ao Ajustar o nosso número das Duplicatas!',0,['0'],0);
      end;
   if pNosNum<>0 then
      pNosNum:=pNosNum+1;
   Tb_Dup.Next;
   end;
Tb_Dup.Close;
//Tb_Dup.sql.savetofile(mpastatemp + 'SQL01.txt');
Tb_Dup.Open;

freeandnil(query_exe);
result:=True;

end;
procedure TFrm_EBol.MDTVCTOExit(Sender: TObject);
begin
if Trim(MDTVCTO.Text)<>'/  /' then
   begin
   Try
      MDTVCTO.Text:=FormatDateTime(fdt2, StrToDate(MDTVCTO.Text));
   except
      fMensagem('Data inválida!',0,['0'],0);
      MDTVCTO.SetFocus;
      exit;
      end;
   end;

end;
function tFrm_EBol.fAtualizaInstrucao(pTipo:Integer; pInst01,pInst02,pInst03,pInst04: String): Boolean;
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.Params.CreateParam(ftString,'CRINST01',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRINST02',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRINST03',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRINST04',ptInput);

if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   DM1.Query5.Params.CreateParam(ftString,'CRCODEMP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRNUMERO',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDESD',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDUP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CRDTEMIS',ptInput);

DM1.Query5.SQL.Add('Update CADDAR set ');
DM1.Query5.SQL.Add(' CRINST01=:CRINST01 ');
DM1.Query5.SQL.Add(',CRINST02=:CRINST02 ');
DM1.Query5.SQL.Add(',CRINST03=:CRINST03 ');
DM1.Query5.SQL.Add(',CRINST04=:CRINST04 ');
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   DM1.Query5.SQL.Add(' where CRCODEMP=:CRCODEMP and CRNUMERO=:CRNUMERO  ')
else
   DM1.Query5.SQL.Add(' where CRNUMERO=:CRNUMERO ');
DM1.Query5.SQL.Add(' and CRDESD=:CRDESD ');
DM1.Query5.SQL.Add(' and CRDUP =:CRDUP ');
DM1.Query5.SQL.Add(' and CRDTEMIS=:CRDTEMIS ');
Tb_Dup.First;
While not Tb_Dup.Eof do
   begin
   DM1.Query5.Close;
   DM1.Query5.ParamByName('CRINST01').AsString :=pInst01;
   DM1.Query5.ParamByName('CRINST02').AsString :=pInst02;
   DM1.Query5.ParamByName('CRINST03').AsString :=pInst03;
   DM1.Query5.ParamByName('CRINST04').AsString :=pInst04;
   if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
      DM1.Query5.ParamByName('CRCODEMP').AsFloat:=Tb_DupCRCODEMP.AsFloat;
   DM1.Query5.ParamByName('CRNUMERO').AsFloat   :=Tb_DupCRNUMERO.AsFloat;
   DM1.Query5.ParamByName('CRDESD').AsString    :=Tb_DupCRDESD.AsString;
   DM1.Query5.ParamByName('CRDUP').AsFloat      :=Tb_DupCRDUP.AsFloat;
   DM1.Query5.ParamByName('CRDTEMIS').AsDateTime:=Tb_DupCRDTEMIS.AsDateTime;
   try
      DM1.Query5.ExecSQL;
      fdm1StartCommit;
   except
      fMensagem('Erro 1798 ao Ajustar o nosso número das Duplicatas!',0,['0'],0);
      end;
   Tb_Dup.Next;
   end;
Tb_Dup.Close;
//Tb_Dup.sql.savetofile(mpastatemp + 'SQL02.txt');

Tb_Dup.Open;


result:=true;
end;

procedure TFrm_EBol.VALORExit(Sender: TObject);
begin
VALOR.Text:=FormatFloat(mcasas, ValFloat(VALOR.Text));

end;

procedure TFrm_EBol.bbSalvarClick(Sender: TObject);
begin
bbAtualizar.Click;
if Tb_Dup.Eof then
   begin
   fMensagem('Nada há ser impresso!',0,['0'],0);
   exit;
   end;

mNomeJpeg:='';

if SavePictureDialog1.Execute then
   begin
   mNomeJpeg:=SavePictureDialog1.FileName;
   bbImprimirClick(Self);
   mNomeJpeg:='';
   end;
end;

procedure TFrm_EBol.FormKeyDown(Sender: TObject; var Key: Word;
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



function TFrm_EBol.fValidarTitulos: Boolean;
var
pdataref: TDateTime;
form_ocorrencias: TFrm_Ocorrencias;

begin
pdataref:=strtodate('01/01/2010');
pdataref:=strtodate('01/01/2000');
tb_dup.first;
Application.CreateForm(TFrm_Ocorrencias, form_ocorrencias);
Form_Ocorrencias.mErros:=false;
form_ocorrencias.ListView1.Clear;

While not tb_dup.eof do
   begin
   if Tb_DupCRDTVCTO.asdatetime<=pdataref then
      begin
      Form_Ocorrencias.adicionaItemListView('Titulo '+Tb_DupCRNUMERO.AsString+'/'+Tb_DupCRDESD.AsString+' cliente '+Tb_Dupnomcli.AsString+' Vencto: '+FormatDateTime(fdt2, Tb_DupCRDTVCTO.AsDateTime)+'! ');
      end;
   Tb_Dup.Next;
   end;
result:=true;
if form_ocorrencias.ListView1.Items.Count>0 then
   begin
   form_ocorrencias.showmodal;
   result:=false;
   end;
freeandnil(form_ocorrencias);
end;
procedure TFrm_EBol.cb_sacadomodpeq222Click(Sender: TObject);
begin
fDeletaPadroes(-1,'_EBOL','CB_SACADOMODPEQ');
fGravaPadroes(-1,'CB_SACADOMODPEQ'    ,'checked'   ,'_EBOL',inttostr(cb_sacadomodpeq.ItemIndex));

end;

procedure TFrm_EBol.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
if cb_sacadomodpeq.itemindex=2 then
   lbl_modpeq_sacador.Caption:=DM1.Tb_EmpRAZAO.AsString
else if cb_sacadomodpeq.itemindex=3 then
   lbl_modpeq_sacador.Caption:=mem_bolnomcli.AsString
else
   lbl_modpeq_sacador.Visible:=false;



end;

procedure TFrm_EBol.cb_sacadomodpeqClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_EBOL','CB_SACADOMODPEQ');
fGravaPadroes(-1,'CB_SACADOMODPEQ'    ,'checked'   ,'_EBOL',inttostr(cb_sacadomodpeq.ItemIndex));

end;

function TFrm_EBol.fDeletarAnexo(pIdAnexoDar: real): boolean;
var
query_anexo: tQuery;

begin
result:=false;
query_anexo := tQuery.create(nil);
query_anexo.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_anexo.sql.add('delete from CADDAR_OUT_ANEXOS WHERE CROA_ID='+FloatToStr(pIdAnexoDar));

try
   query_anexo.ExecSQL;
   fdm1StartCommit;
   result:=true;
   fLerCaddarAnexo(Tb_DupCRID_NEW.AsFloat);
except on e : exception do
   begin
   ex_erroSql_Novo(query_anexo,3919,'SGE','CADDAR_OUT_ANEXOS');
   end;
   end;
query_anexo.close;
freeandnil(query_anexo);


end;


function TFrm_EBol.fAnexoExiste(pNomeArquivo: String; pIdDar: real): boolean;
var
query_anexo: tQuery;

begin
result:=false;
query_anexo := tQuery.create(nil);
query_anexo.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_anexo.sql.add('select *from CADDAR_OUT_ANEXOS WHERE CROA_ID_CADDAR='+FloatToStr(pIdDar)
                   +' and CROA_ENDERECO='+QuotedStr(pNomeArquivo));

try
   query_anexo.Open;
   result:=query_anexo.IsEmpty=false;
except on e : exception do
   begin
   ex_erroSql_Novo(query_anexo,3902,'SGE','CADDAR_OUT_ANEXOS');
   end;
   end;
query_anexo.close;
freeandnil(query_anexo);



end;

procedure TFrm_EBol.bbInserirAnexoClick(Sender: TObject);
begin
if SaveDialog1.Execute then
   begin
   if fAnexoExiste(SaveDialog1.FileName,Tb_DupCRID_NEW.AsFloat) then
      begin
      MessageDlg('Arquivo ja Adicionado anteriomente',mtWarning,[mbOk],0);
      end
   else
      fAdicionaranexo(SaveDialog1.FileName,Tb_DupCRID_NEW.AsFloat);
   end;

end;


function TFrm_EBol.fAdicionaranexo(pNomeArquivo: String; pIdDar: real): boolean;
var
query_anexo: tQuery;

begin
result:=false;
query_anexo := tQuery.create(nil);
query_anexo.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_anexo.sql.add('insert into CADDAR_OUT_ANEXOS (CROA_ID,CROA_ID_CADDAR,CROA_ENDERECO) '
                   +' values (CADDAR_OUT_ANEXOS_SEQ.NEXTVAL '
                   +',' + floattosTr(pIdDar)
                   +',' +quotedstr(pNomeArquivo)
                   +')');
try
   query_anexo.ExecSQL;
   fdm1StartCommit;
   fLerCaddarAnexo(Tb_DupCRID_NEW.AsFloat);

   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(query_anexo,3905,'SGE','CADDAR_OUT_ANEXOS');
   end;
   end;
query_anexo.close;
freeandnil(query_anexo);


end;
function TFrm_EBol.fLerCaddarAnexo(pIdDar: real): boolean;
begin
result:=false;
qr_CaddarOutAnexos.Close;
qr_CaddarOutAnexos.sql.clear;
qr_CaddarOutAnexos.sql.add('select CROA_ID,CROA_ID_CADDAR,CROA_ENDERECO from  CADDAR_OUT_ANEXOS '
               +' WHERE CROA_ID_CADDAR='+FloatToStr(pIdDar));
try
   qr_CaddarOutAnexos.Open;
   mUltCaddarOutAnexoLido:=pIdDar;
   result:=true;
except on e : exception do
   begin
   ex_erroSql_Novo(qr_CaddarOutAnexos,4013,'SGE','CADDAR_OUT_ANEXOS');
   end;
   end;


end;



procedure TFrm_EBol.Src_dupDataChange(Sender: TObject; Field: TField);
begin
if mUltCaddarOutAnexoLido<>Tb_DupCRID_NEW.AsFloat then
   fLerCaddarAnexo(Tb_DupCRID_NEW.AsFloat);

end;

procedure TFrm_EBol.bbRemoverAnexoClick(Sender: TObject);
begin
if (qr_CaddarOutAnexos.Active=false) then
   exit;
if (not qr_CaddarOutAnexosCROA_ENDERECO.IsNull) then
   begin
   if application.MessageBox(pchar('Quer Realmente Excluir o endereço '+ qr_CaddarOutAnexosCROA_ENDERECO.asstring),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
    fDeletarAnexo(qr_CaddarOutAnexosCROA_ID.AsInteger);
   end;
end;

procedure TFrm_EBol.cb_fator_vcto_novoClick(Sender: TObject);
begin
fDeletaPadroes(-3,'_EBOL','cb_fator_vcto_novo');

end;



procedure TFrm_EBol.bbValidarClick(Sender: TObject);
    procedure fAnotarErros;
    var
    x: integer;
    begin
    edt_linha_dig_resultados.Text:='';
    if (length(edt_linha_dig_gerado.text)<length(edt_linha_dig_esp.text)) then
       edt_linha_dig_gerado.Text:=Insere2(edt_linha_dig_gerado.Text,' ',length(edt_linha_dig_esp.text));
    for x:=0 to length(edt_linha_dig_esp.Text) do
       begin
       edt_linha_dig_resultados.Text := edt_linha_dig_resultados.Text + iif(edt_linha_dig_esp.Text[x+1]=edt_linha_dig_gerado.Text[x+1],' ','E');
       end;
    end;
begin
fCodigoBarras(edt_tipo.Value,edt_codemp.Value,edt_codbco.Value,edt_numbco.Value,edt_codmoe.value
,edt_numcon.Text,edt_codage.Text,edt_codced.Text,edt_codced_dig.Text
,edt_codcar.text,edt_dtemis.Date,edt_dtvcto.Date,
edt_nosnum.Value
,edt_valordup.Value
,edt_parcela.Value
,edt_qtdparc.Value
,edt_numdup.Value);


edt_linha_digitavel.Text := mret_numimp;
edt_codbar.Text          := mret_codbar;

edt_linha_dig_gerado.Text := fdeixanum(edt_linha_digitavel.Text);
fAnotarErros;


end;

procedure TFrm_EBol.bbCompararClick(Sender: TObject);
var
x: integer;
begin
edt_resultado.Text:='';
if (length(edt_valor02.text)<length(edt_valor01.text)) then
   edt_valor02.Text:=Insere2(edt_valor02.Text,' ',length(edt_valor01.text));
for x:=0 to length(edt_valor01.Text) do
   begin
   edt_resultado.Text := edt_resultado.Text + iif(edt_valor01.Text[x+1]=edt_valor02.Text[x+1],' ','E');
   end;
end;


procedure TFrm_EBol.cb_sacador_avalistaClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_EBOL','CB_SACADORAVALISTA');
fGravaPadroes(-1,'CB_SACADORAVALISTA'    ,'checked'   ,'_EBOL',iif(cb_sacador_avalista.Checked=true,'true','false'));

end;



end.
