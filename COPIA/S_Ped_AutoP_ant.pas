unit S_Ped_AutoP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ImgList, ExtCtrls, StdCtrls, Buttons, Mask,
  Grids, DBGrids,S_Cli,S_DM1,S_DM2, DB, DBTables,func,lerarq,func_excecoes,
  func2,S_Ven,S_Pv, DBCtrls,S_TipPro,S_GPro,S_Con,S_Bco,S_Tra;

type
  TFrm_Ped_AutoP = class(TForm)
    ImageList1: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    Tool_Incluir: TToolButton;
    tool_localizar: TToolButton;
    Tool_Alterar: TToolButton;
    Tool_Gravar: TToolButton;
    Tool_Limpar: TToolButton;
    Tool_LSep: TToolButton;
    Tool_EmiteNF: TToolButton;
    Tool_Calcular: TToolButton;
    Tool_Faturar: TToolButton;
    Tool_Excluir: TToolButton;
    Tool_Arredondar: TToolButton;
    Tool_Email: TToolButton;
    Tool_Sair: TToolButton;
    Panel1: TPanel;
    pc_Cabecalho: TPageControl;
    ts_principais: TTabSheet;
    ts_outros: TTabSheet;
    StaticText2: TStaticText;
    CHAVE: TEdit;
    ORDEM: TEdit;
    StaticText7: TStaticText;
    DATAP: TMaskEdit;
    StaticText12: TStaticText;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    StaticText13: TStaticText;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    StaticText14: TStaticText;
    CB_TABPV: TComboBox;
    CODPV: TEdit;
    NOMPV: TEdit;
    CB_ORCAMENTO: TCheckBox;
    RG_TPPCO: TRadioGroup;
    gb_totais: TGroupBox;
    gb_itens: TGroupBox;
    Tb_Pro: TQuery;
    Tb_ProPDNOME: TStringField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDCODFAB: TStringField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_Proestoque: TFloatField;
    Tb_Proestoquer: TFloatField;
    Tb_Proestoquec: TFloatField;
    Tb_Prodtuent: TDateField;
    Tb_Prodtusai: TDateField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDSALDO: TFloatField;
    Tb_ProPDSALDOC: TFloatField;
    Tb_ProPDSALDOR: TFloatField;
    Tb_ProPDDTULTSAI: TDateTimeField;
    Tb_ProPDDTULTENT: TDateTimeField;
    Tb_ProPDSTATUS: TFloatField;
    Tb_ProPDNIVEL: TFloatField;
    Tb_Proestoquet: TFloatField;
    Tb_ProPDSALDOT: TFloatField;
    Src_Pro: TDataSource;
    Src_Ped02: TDataSource;
    Tb_Ped02: TQuery;
    Tb_Ped02P2CODEMP: TFloatField;
    Tb_Ped02P2LOTSEQ: TFloatField;
    Tb_Ped02P2CHAVE: TFloatField;
    Tb_Ped02P2ORDEM: TFloatField;
    Tb_Ped02P2ITEM: TFloatField;
    Tb_Ped02P2CODPRO: TFloatField;
    Tb_Ped02P2CODANT: TFloatField;
    Tb_Ped02P2QTD: TFloatField;
    Tb_Ped02P2QTDDEV: TFloatField;
    Tb_Ped02P2LOTE: TStringField;
    Tb_Ped02P2PROMOCAO: TStringField;
    Tb_Ped02P2DTVCTO: TDateTimeField;
    Tb_Ped02P2DESC1: TFloatField;
    Tb_Ped02P2DESC2: TFloatField;
    Tb_Ped02P2VALDES: TFloatField;
    Tb_Ped02P2PRECO: TFloatField;
    Tb_Ped02P2SIT: TStringField;
    Tb_Ped02P2CODFAB: TFloatField;
    Tb_Ped02P2BASEN: TFloatField;
    Tb_Ped02P2ICMSN: TFloatField;
    Tb_Ped02P2REPAS: TFloatField;
    Tb_Ped02P2BASER: TFloatField;
    Tb_Ped02P2ICMSR: TFloatField;
    Tb_Ped02P2LISTA: TFloatField;
    Tb_Ped02P2STATUS: TFloatField;
    Tb_Ped02P2PCOTAB: TFloatField;
    Tb_Ped02P2UCPR: TFloatField;
    Tb_Ped02P2PCOCUS: TFloatField;
    Tb_Ped02P2PCOMAX: TFloatField;
    Tb_Ped02P2TOTDES: TFloatField;
    Tb_Ped02P2DESCRAT: TFloatField;
    Tb_Ped02P2TABELA: TStringField;
    Tb_Ped02P2ALIPI: TFloatField;
    Tb_Ped02P2VALIPI: TFloatField;
    Tb_Ped02P2BCINR: TFloatField;
    Tb_Ped02P2ICMSNR: TFloatField;
    Tb_Ped02P2ISENTAS: TFloatField;
    Tb_Ped02P2TOTOUT: TFloatField;
    Tb_Ped02P2ALIQ: TFloatField;
    Tb_Ped02P2ALIQNR: TFloatField;
    Tb_Ped02P2PCOMIS: TFloatField;
    Tb_Ped02P2VCOMIS: TFloatField;
    Tb_Ped02P2VCOM02: TFloatField;
    Tb_Ped02P2VCOM03: TFloatField;
    Tb_Ped02P2DESCM: TFloatField;
    Tb_Ped02P2CFO: TFloatField;
    Tb_Ped02P2SEMCOM: TFloatField;
    Tb_Ped02P2TOTLIQ: TFloatField;
    Tb_Ped02P2PDESCF: TFloatField;
    Tb_Ped02P2VDESCF: TFloatField;
    Tb_Ped02P2ACRECONV: TFloatField;
    Tb_Ped02P2ACREGER: TFloatField;
    Tb_Ped02P2DESC3: TFloatField;
    Tb_Ped02P2CODGRU: TFloatField;
    Tb_Ped02P2VCOM04: TFloatField;
    Tb_Ped02P2ACRERAT: TFloatField;
    DBG_Mercad: TDBGrid;
    Tb_Ped02vlr_total: TFloatField;
    StaticText19: TStaticText;
    QTDITEM: TStaticText;
    StaticText21: TStaticText;
    TOTITEM: TStaticText;
    StaticText23: TStaticText;
    TARBAN: TStaticText;
    StaticText24: TStaticText;
    VALFRE: TEdit;
    StaticText26: TStaticText;
    TOTAL: TStaticText;
    StaticText20: TStaticText;
    TOTDES: TStaticText;
    StaticText22: TStaticText;
    ICMSR: TStaticText;
    StaticText28: TStaticText;
    VALIPI: TStaticText;
    StaticText25: TStaticText;
    VALACRE: TStaticText;
    StaticText27: TStaticText;
    TOTLIQ: TStaticText;
    CB_TIPO: TComboBox;
    CB_TIPO2: TComboBox;
    StaticText11: TStaticText;
    ts_situacao: TTabSheet;
    StaticText53: TStaticText;
    NUMNF: TEdit;
    StaticText54: TStaticText;
    DATANF: TMaskEdit;
    StaticText55: TStaticText;
    SERIENF: TEdit;
    StaticText56: TStaticText;
    SUBSER: TEdit;
    StaticText57: TStaticText;
    MODELO: TEdit;
    st_submod: TStaticText;
    SUBMOD: TEdit;
    StaticText60: TStaticText;
    NUMCF: TEdit;
    StaticText59: TStaticText;
    DATACF: TMaskEdit;
    Panel2: TPanel;
    ITEM_EDITAR: TBitBtn;
    bbExcItem: TBitBtn;
    DBNavigator1: TDBNavigator;
    spb_conspro: TSpeedButton;
    CB_LEITOR: TCheckBox;
    Tb_Ped02P2QTD_101: TFloatField;
    Tb_Ped02P2QTDDEV_101: TFloatField;
    Tb_Ped02P2LOTE_101: TStringField;
    Tb_Ped02P2PROMOCAO_101: TStringField;
    Tb_Ped02P2DTVCTO_101: TDateTimeField;
    Tb_Ped02P2VALDES_101: TFloatField;
    Tb_Ped02P2BASEN_101: TFloatField;
    Tb_Ped02P2ICMSN_101: TFloatField;
    Tb_Ped02P2REPAS_101: TFloatField;
    Tb_Ped02P2BASER_101: TFloatField;
    Tb_Ped02P2ICMSR_101: TFloatField;
    Tb_Ped02P2TOTDES_101: TFloatField;
    Tb_Ped02P2DESCRAT_101: TFloatField;
    Tb_Ped02P2VALIPI_101: TFloatField;
    Tb_Ped02P2BCINR_101: TFloatField;
    Tb_Ped02P2ICMSNR_101: TFloatField;
    Tb_Ped02P2ISENTAS_101: TFloatField;
    Tb_Ped02P2TOTOUT_101: TFloatField;
    Tb_Ped02P2ALIQ_101: TFloatField;
    Tb_Ped02P2ALIQNR_101: TFloatField;
    Tb_Ped02P2VCOMIS_101: TFloatField;
    Tb_Ped02P2VCOM02_101: TFloatField;
    Tb_Ped02P2VCOM03_101: TFloatField;
    Tb_Ped02P2DESCM_101: TFloatField;
    Tb_Ped02P2SEMCOM_101: TFloatField;
    Tb_Ped02P2TOTLIQ_101: TFloatField;
    Tb_Ped02P2PDESCF_101: TFloatField;
    Tb_Ped02P2VDESCF_101: TFloatField;
    Tb_Ped02P2ACRECONV_101: TFloatField;
    Tb_Ped02P2ACREGER_101: TFloatField;
    Tb_Ped02P2VCOM04_101: TFloatField;
    Tb_Ped02P2ACRERAT_101: TFloatField;
    Tb_Ped02P2PRECO_101: TFloatField;
    Tb_Ped02NOMEPRO: TStringField;
    Tb_Ped02NOMEPRO2: TStringField;
    Tb_Ped02MARCAPRO: TStringField;
    Tb_Ped02SECAOPRO: TStringField;
    Tb_Aplicacao: TQuery;
    Tb_AplicacaoSGPCODEMP: TFloatField;
    Tb_AplicacaoSGPCODPRO: TFloatField;
    Tb_AplicacaoSGPCODGRU: TFloatField;
    Tb_AplicacaoTNOME: TStringField;
    Tb_AplicacaoSGPAANO: TFloatField;
    panel_conspro: TPanel;
    StaticText1: TStaticText;
    StaticText4: TStaticText;
    ANO: TEdit;
    NOMTIP: TEdit;
    CODTIP: TEdit;
    StaticText8: TStaticText;
    CONTEUDO: TEdit;
    Spb_Cadpro: TSpeedButton;
    gb_aplicacao: TGroupBox;
    DBGrid2: TDBGrid;
    RE_APLICACAO: TRichEdit;
    Ts_EntregaCob: TTabSheet;
    StaticText38: TStaticText;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    RGFRETEPC: TRadioGroup;
    StaticText39: TStaticText;
    PLACAV: TEdit;
    StaticText46: TStaticText;
    UFPV: TEdit;
    StaticText40: TStaticText;
    QTDVOL: TEdit;
    StaticText47: TStaticText;
    ESPECIE: TEdit;
    StaticText48: TStaticText;
    PESOB: TEdit;
    StaticText49: TStaticText;
    PESOL: TEdit;
    StaticText9: TStaticText;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    st_Desc01: TStaticText;
    DESC01: TEdit;
    st_descvlr: TStaticText;
    VALDES: TEdit;
    Ts_ObsVcto: TTabSheet;
    gb_vcto: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    OBS1: TEdit;
    OBS2: TEdit;
    OBS3: TEdit;
    Tb_ProPDSIT: TStringField;
    Tb_ProPDPRAT: TStringField;
    Tb_ProPDLADO: TStringField;
    Tb_ProPDRUA: TStringField;
    st_desc02: TStaticText;
    DESC02: TEdit;
    Ts_OrigemDev: TTabSheet;
    STG_DEV: TStringGrid;
    Panel10: TPanel;
    DCHAVE: TEdit;
    DORDEM: TEdit;
    DDATAP: TMaskEdit;
    DEXCLUIR: TBitBtn;
    DCANCELAR: TBitBtn;
    DEDITAR: TBitBtn;
    DGRAVAR: TBitBtn;
    SAIR: TBitBtn;
    DLOTSEQ: TEdit;
    DCODEMP: TEdit;
    StaticText3: TStaticText;
    obs_dls: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText10: TStaticText;
    CB_PEDORI: TCheckBox;
    STGM: TStringGrid;
    Tb_Ped02S: TQuery;
    Src_Ped02s: TDataSource;
    Tb_Ped02SP2SCODEMP: TFloatField;
    Tb_Ped02SP2SCHAVE: TFloatField;
    Tb_Ped02SP2SORDEM: TFloatField;
    Tb_Ped02SP2SITEM: TFloatField;
    Tb_Ped02SP2SCODPRO: TFloatField;
    Tb_Ped02SP2SQTD: TFloatField;
    Tb_Ped02SP2SDESC1: TFloatField;
    Tb_Ped02SP2SDESC2: TFloatField;
    Tb_Ped02SP2SVALDES: TFloatField;
    Tb_Ped02SP2SPRECO: TFloatField;
    Tb_Ped02SP2SSIT: TStringField;
    Tb_Ped02SP2SCODFAB: TFloatField;
    Tb_Ped02SP2SBCISSQN: TFloatField;
    Tb_Ped02SP2SVISSQN: TFloatField;
    Tb_Ped02SP2SLISTA: TFloatField;
    Tb_Ped02SP2SSTATUS: TFloatField;
    Tb_Ped02SP2SPCOTAB: TFloatField;
    Tb_Ped02SP2STOTDES: TFloatField;
    Tb_Ped02SP2STABELA: TStringField;
    Tb_Ped02SP2SISENTAS: TFloatField;
    Tb_Ped02SP2SALIQ: TFloatField;
    Tb_Ped02SP2SPCOMIS: TFloatField;
    Tb_Ped02SP2SVCOMIS: TFloatField;
    Tb_Ped02SP2SDESCM: TFloatField;
    Tb_Ped02SP2SCFO: TFloatField;
    Tb_Ped02SP2SSEMCOM: TFloatField;
    Tb_Ped02SP2SPDESCF: TFloatField;
    Tb_Ped02SP2SVDESCF: TFloatField;
    Tb_Ped02SP2SDESCRAT: TFloatField;
    Tb_Ped02SP2SLOTSEQ: TFloatField;
    Tb_Ped02SP2SPCOCUS: TFloatField;
    Tb_Ped02SP2SVCOM02: TFloatField;
    Tb_Ped02SP2SVCOM03: TFloatField;
    Tb_Ped02SP2SQTDDEV: TFloatField;
    Tb_Ped02SP2SDESC3: TFloatField;
    Tb_Ped02SP2SACRECRAT: TFloatField;
    Tb_Ped02SP2SVALDES_101: TFloatField;
    Tb_Ped02SP2SBCISSQN_101: TFloatField;
    Tb_Ped02SP2SVISSQN_101: TFloatField;
    Tb_Ped02SP2STOTDES_101: TFloatField;
    Tb_Ped02SP2SISENTAS_101: TFloatField;
    Tb_Ped02SP2SALIQ_101: TFloatField;
    Tb_Ped02SP2SPCOMIS_101: TFloatField;
    Tb_Ped02SP2SVCOMIS_101: TFloatField;
    Tb_Ped02SP2SDESCM_101: TFloatField;
    Tb_Ped02SP2SCFO_101: TFloatField;
    Tb_Ped02SP2SSEMCOM_101: TFloatField;
    Tb_Ped02SP2SPDESCF_101: TFloatField;
    Tb_Ped02SP2SVDESCF_101: TFloatField;
    Tb_Ped02SP2SDESCRAT_101: TFloatField;
    Tb_Ped02SP2SVCOM02_101: TFloatField;
    Tb_Ped02SP2SVCOM03_101: TFloatField;
    Tb_Ped02SP2SQTDDEV_101: TFloatField;
    Tb_Ped02SP2SACRECRAT_101: TFloatField;
    Tb_Ped02SP2SQTD_101: TFloatField;
    Tb_Ped02SP2SPRECO_101: TFloatField;
    STG_MER: TStringGrid;
    Tb_Ped02DESCALTER: TMemoField;
    Tb_Ped02SDESCALTER: TMemoField;
    STG_PEN: TStringGrid;
    Tb_Ped02Snompro: TStringField;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Tb_Ped02BAIXADO: TIntegerField;
    VALSEG: TEdit;
    StaticText72: TStaticText;
    StaticText15: TStaticText;
    NOMVEN2: TEdit;
    CODVEN2: TEdit;
    StaticText16: TStaticText;
    CODVEN3: TEdit;
    NOMVEN3: TEdit;
    StaticText17: TStaticText;
    CODASSE: TEdit;
    NOMASSE: TEdit;
    ts_Processos: TTabSheet;
    StaticText41: TStaticText;
    CODENT: TEdit;
    NOMENT: TEdit;
    DATENT: TMaskEdit;
    HORENT: TMaskEdit;
    StaticText42: TStaticText;
    CODDIG: TEdit;
    NOMDIG: TEdit;
    DATDIG: TMaskEdit;
    HORDIG: TMaskEdit;
    StaticText18: TStaticText;
    DATACHEG: TMaskEdit;
    HORACHEG: TMaskEdit;
    StaticText43: TStaticText;
    CODSEP: TEdit;
    NOMSEP: TEdit;
    DATSEP: TMaskEdit;
    HORSEP: TMaskEdit;
    StaticText44: TStaticText;
    CODCON: TEdit;
    NOMCON: TEdit;
    DATCON: TMaskEdit;
    HORCON: TMaskEdit;
    StaticText45: TStaticText;
    CODEMB: TEdit;
    NOMEMB: TEdit;
    DATEMB: TMaskEdit;
    HOREMB: TMaskEdit;
    StaticText68: TStaticText;
    NOMUSRM: TEdit;
    DTMOD: TMaskEdit;
    HRMOD: TEdit;
    USRMOD: TEdit;
    NOMCV: TEdit;
    CODCV: TEdit;
    StaticText63: TStaticText;
    StaticText29: TStaticText;
    NAUT: TEdit;
    GB_VISTO: TGroupBox;
    DATVIS: TMaskEdit;
    NUMVIS: TEdit;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    StaticText66: TStaticText;
    LOTEDM: TEdit;
    StaticText67: TStaticText;
    NPEDORI: TEdit;
    CB_CONF: TCheckBox;
    CB_CANHOTO: TCheckBox;
    StaticText37: TStaticText;
    PCOMIS: TEdit;
    CB_ORIGEM: TComboBox;
    StaticText30: TStaticText;
    ST_CODTLV: TStaticText;
    CODTLV: TEdit;
    NOMTLV: TEdit;
    CB_ETIVOL: TCheckBox;
    PEDORI1: TEdit;
    PEDORI2: TEdit;
    RG_TIPENT: TRadioGroup;
    StaticText33: TStaticText;
    PREVENT: TMaskEdit;
    HPREVENT: TMaskEdit;
    StaticText31: TStaticText;
    MINUTA: TEdit;
    CB_BLQPRM: TCheckBox;
    st_prompad: TStaticText;
    PROMOCAO: TEdit;
    TabSheet1: TTabSheet;
    DBG_Servicos: TDBGrid;
    StaticText32: TStaticText;
    StaticText34: TStaticText;
    Tb_Ped02UNDPRO: TStringField;
    procedure Tool_GravarClick(Sender: TObject);
    procedure Tool_LimparClick(Sender: TObject);
    procedure DATAPExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure CB_TABPVExit(Sender: TObject);
    procedure CB_TABPVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPVExit(Sender: TObject);
    procedure Tool_SairClick(Sender: TObject);
    procedure DESC01Exit(Sender: TObject);
    procedure VALDESExit(Sender: TObject);
    procedure spb_consproClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPExit(Sender: TObject);
    procedure ANOKeyPress(Sender: TObject; var Key: Char);
    procedure CONTEUDOChange(Sender: TObject);
    procedure Tool_IncluirClick(Sender: TObject);
    procedure Tb_Ped02CalcFields(DataSet: TDataSet);
    procedure DBG_MercadColExit(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBG_MercadKeyPress(Sender: TObject; var Key: Char);
    procedure Tb_Ped02BeforePost(DataSet: TDataSet);
    procedure DBG_MercadExit(Sender: TObject);
    procedure Tb_Ped02BeforeEdit(DataSet: TDataSet);
    procedure Tb_Ped02BeforeInsert(DataSet: TDataSet);
    procedure Tb_Ped02AfterPost(DataSet: TDataSet);
    procedure bbExcItemClick(Sender: TObject);
    procedure ITEM_EDITARClick(Sender: TObject);
    procedure Spb_CadproClick(Sender: TObject);
    procedure Tb_Ped02AfterDelete(DataSet: TDataSet);
    procedure PLACAVExit(Sender: TObject);
    procedure UFPVExit(Sender: TObject);
    procedure QTDVOLExit(Sender: TObject);
    procedure ESPECIEExit(Sender: TObject);
    procedure PESOBExit(Sender: TObject);
    procedure PESOLExit(Sender: TObject);
    procedure SUBMODExit(Sender: TObject);
    procedure Tb_Ped02AfterInsert(DataSet: TDataSet);
    procedure CB_ORCAMENTOClick(Sender: TObject);
    procedure Tool_AlterarClick(Sender: TObject);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure tool_localizarClick(Sender: TObject);
    procedure ANOExit(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure OBS2Exit(Sender: TObject);
    procedure OBS3Exit(Sender: TObject);
    procedure DESC02Exit(Sender: TObject);
    procedure VALDESKeyPress(Sender: TObject; var Key: Char);
    procedure DESC01Enter(Sender: TObject);
    procedure DESC02Enter(Sender: TObject);
    procedure VALDESEnter(Sender: TObject);
    procedure Tb_Ped02AfterEdit(DataSet: TDataSet);
    procedure Tb_ProCalcFields(DataSet: TDataSet);
    procedure CODVEN2KeyPress(Sender: TObject; var Key: Char);
    procedure CODVEN2Exit(Sender: TObject);
    procedure CODVEN3Exit(Sender: TObject);
    procedure CODVEN3KeyPress(Sender: TObject; var Key: Char);
    procedure CODASSEExit(Sender: TObject);
    procedure CODASSEKeyPress(Sender: TObject; var Key: Char);
    procedure CB_TIPOExit(Sender: TObject);
    procedure CB_TIPOEnter(Sender: TObject);
    procedure CB_ORIGEMExit(Sender: TObject);
    procedure CODTLVExit(Sender: TObject);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure CB_BLQPRMEnter(Sender: TObject);
    procedure CB_BLQPRMExit(Sender: TObject);
    procedure CB_BLQPRMClick(Sender: TObject);
    procedure CODCLIEnter(Sender: TObject);
    procedure CODVENEnter(Sender: TObject);
    procedure CB_TABPVEnter(Sender: TObject);
    procedure CODPVEnter(Sender: TObject);
    procedure RG_TPPCOEnter(Sender: TObject);
    procedure RG_TPPCOExit(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVExit(Sender: TObject);
    procedure NAUTExit(Sender: TObject);
    procedure DATVISExit(Sender: TObject);
    procedure NUMVISExit(Sender: TObject);
    procedure PCOMISExit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAEnter(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure MINUTAExit(Sender: TObject);
    procedure VALSEGExit(Sender: TObject);
    procedure PREVENTExit(Sender: TObject);
    procedure HPREVENTExit(Sender: TObject);
    procedure PEDORI1Exit(Sender: TObject);
    procedure PEDORI2Exit(Sender: TObject);
    procedure DGRAVARClick(Sender: TObject);
    procedure DEDITARClick(Sender: TObject);
    procedure DCANCELARClick(Sender: TObject);
    procedure DEXCLUIRClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure DCODEMPExit(Sender: TObject);
    procedure DLOTSEQExit(Sender: TObject);
    procedure DCHAVEExit(Sender: TObject);
    procedure DORDEMEnter(Sender: TObject);
    procedure DATACHEGExit(Sender: TObject);
    procedure HORACHEGExit(Sender: TObject);
    procedure CODSEPExit(Sender: TObject);
    procedure CODSEPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODEMBExit(Sender: TObject);
    procedure CODEMBKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function fped01reatribuir(ptipo: Integer): Boolean;

    function fpedtestacfop(ptipo: Integer;PUnd: Real): Boolean;
    function fCalcularItem(ptipo: Integer;pACreGer,pAcreConv: Real): Boolean;
    function fCalcular(ptipo: Integer): Boolean;
    function FLimparTudo(pTipo: Integer): Boolean;
    function fverificaund(ptipo: Integer):Boolean;
    function fped01compsql(ptipo: Integer): Boolean;
    function fCarregarTabTemp(ptipo: Integer): Boolean;
    function fPed01lerant(ptipo: Integer):Boolean;
    function fexcluir(ptipo: Integer):Boolean;
    function fajustaest(ptipo: Integer):Boolean;
    function fPed01CSF(pCodEmp, pLotSeq, pChave: Real): Boolean;
    function ftestardev(ptipo,phist:Integer; pcodpro,pqtd: Real; plote,pdatven: String ):Real;
    function fPed01AtribuirPv(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;
function fPed01tarban(ptipo: Integer): Boolean;
function flcadpro_ConsPro_AP(pTipo,pPre,pCodEmp:Integer;pCampo,pCodtip,pAno,pCodGru: String):Boolean;
function fPed01Div_Qtd(pRest,pfracao: Integer; pqtd,pund: Real):Real;
function fPed01Div_ValDesc(pRest,pfracao: Integer; pValor,pund: Real):Real;
function fCE01LerPed(ptipo: Integer):Boolean;
function fped01gant(ptipo: Integer): Boolean;
function fgravarped(ptipo: Integer): Boolean;
function fPed01EmiteOnLine(pTipo: Integer): Boolean;
function fPed01Div(pRest,pfracao: Integer; pqtd,pund: Real):Real;
function fbaixarlote(pLado,pCodemp:Integer) : Boolean;
function fbaixarGrade(pLado,pCodEmp: Integer): Boolean;
function fbaixarNormal(pTipo,pLado,pcodemp: Integer) : Boolean;
function fgravap1(ptipo,pcodemp:Integer):Boolean;
function fgvencto(ptipo,pcodemp,plotseq,pchave,pordem,pprazo,pcodpv,pddescf,pdiasdescf: Integer;
                  ptotdup, pcomisv, pcomisv02, pcomisv03,pcomisv04,pcomiss,pcomist,psemcom,pcomasse,picmsr,
                  pfrete,pvalseg,pdescf,ptotdi01,ptotdi02,ptotdi03,ptotivlr,pvaldes01,pvaldes02,
                  pvlrdes,ptarban,ptotipi,ptotcgru,ptotsgru: Real; pdatae: tDateTime; ptabpv: String): Boolean;

function fInserirPed02(pLado,pCodEmp,pItem,pBaixado: Integer; pCodpro,pQtd,pPu,pDesc01,pDesc02,pDesc03,pValDes: Real; pLote:String;pDtVcto: TDateTime): Boolean;
function fprocpen(ptipo: Integer; pcodpro,pqtdped,pqtdest,pdesc01,pdesc02,pdesc03,pvlrdes,ppu:Real):Boolean;
function fDadosPro(pTipo,pLeitor: Integer;pCodPro,pLote:String;pDatav:TDateTime): Boolean;
function fbuscarPreco(ptipo: Integer): Real;
function fpcoliq(ptipo: Integer; pPreco, pDesc01, pDesc02,pDesc03: Real): Real;

var
  Frm_Ped_AutoP: TFrm_Ped_AutoP;
  mdtv: String;
  BlqEventoPed02: Boolean=False;
  BlqCalcula_101: Boolean=False;
  mdocs: array[1..4] of string;
  mqtdin  :Integer=0;
  mqtdis  :Integer=0;
  mprazo  : Integer=0;

  mStatus :Real=0;
  bbpalt_true : Boolean=True;
  bbpinc_true : Boolean=True;
  bbpexc_true : Boolean=True;
  bbprel_true : Boolean=True;
  mtemrom     : Boolean=false;
  ped_lotseq: Integer;
  mchave    : Integer=0;
  mchave_ant: Real=0;
  mColPU_Serv: Integer=10;
  mColPU    : Integer=10;
  mColLote  : Integer=2;
  mColDtVcto: Integer=3;
  mColComis : Integer=11;
  mColCom_Serv  : Integer=11;
  mColDesc01: Integer=6;
  mColDesc02: Integer=7;
  mColDesc03: Integer=8;
  mColDescVL: Integer=9;
  mdocOnLine:Boolean=false;


  mtipop       :Integer=0;
  mlib_limcred : Boolean=True;
  mlcred       :Real=0;
  mFormace     :Integer=0;
  mItem        :Integer=0;
  moper_ped    :Integer=0;
  moper_item   :Integer=0;
  mpvddescf,mpvtc,mpvtdc,mpvtpd1,mpvtpd2,mpvtpd3,mpvtpdesf,mtpp, mpvdiasdescf: Integer;
  mpvcom, mpvcom02,mpvcom03,mpvcom04,mpvactd, mpvact00, mpvact01, mpvact99: Real;
  mpvdes, mpvdes1, mpvdes2, mpvdes3: Real;
  mpvdescf: Real;
  mpacreconv,mpacreger: Real;
  mpcomasse, mcomasse,mcomiss,mcomist,mcomis,mpund,submod_ant   :Real;
  mvlracre, mvaldes,mpavdes,mbcissqn, missqn: Real;
  mdtreaj: TDateTime;
  mpreco: Real=0;
  mlib_mPDescLib: Real;
  mlib_mPDescLib_Usr: Integer;
  mdescant:Real=0;
  mpdesc  :Real=0;
  mTabTmp01 :String;
  mTabTmp02 :String;

  mOrdem     :Integer=0;
  mtotund    :Real=0;
  mtotbru    :Real=0;
  mtotdes    :Real=0;
  mtotbru_101:Real=0;
  mtotdes_101:Real=0;
  mValdes_101:Real=0;
  mValAcre_101:Real=0;

  mtotacrecv :Real=0;
  mtotacreger:Real=0;
  mtoticmr   :Real=0;
  mtotipi    :Real=0;
  mtotrepas  :Real=0;
  mAnt_totbru_101:Real=0;
  mAnt_Totdes_101:Real=0;
  mAnt_totund    :Real=0;
  mAnt_totbru    :Real=0;
  mAnt_totdes    :Real=0;
  mAnt_totacrecv :Real=0;
  mAnt_totacreger:Real=0;
  mAnt_toticmr   :Real=0;
  mAnt_totipi    :Real=0;
  mAnt_totrepas  :Real=0;

  // parametros para calculos de impostos
  mAliqIssqn    : Real=0;
  mAliqRepas    : Real=0;
  mCalcImp      : Boolean=True;
  mIvaNeg       : Real=0;
  mIvaPos       : Real=0;
  mIvaIna       : Real=0;
  mRedutRA      : Real=0;
  mRedutRB      : Real=0;
  mAliqDeb      : Real=0;
  mIcmsC        : Real=0;
  mRedutNA      : Real=0;
  mRedutNB      : Real=0;
  mCfo_Nor      : Real=0;
  mCfo_Ret      : Real=0;
  mTipCal       : String='N';
  mCalcRet      : Real=0;



  mAliqIssqn_101: Real=0;
  mAliqRepas_101: Real=0;
  mCalcImp_101  : Boolean=True;
  mIvaNeg_101   : Real=0;
  mIvaPos_101   : Real=0;
  mIvaIna_101   : Real=0;
  mRedutRA_101  : Real=0;
  mRedutRB_101  : Real=0;
  mAliqDeb_101  : Real=0;
  mIcmsC_101    : Real=0;
  mRedutNA_101  : Real=0;
  mRedutNB_101  : Real=0;
  mCfo_Nor_101  : Real=0;
  mCfo_Ret_101  : Real=0;
  mTipCal_101   : String='N';
  mCalcRet_101  : Real=0;


  // termino dos parametros para calculo de impostos

  msql_ped01:  String;
  msql_ped01d: String;
  msql_ped01v: String;
  msql_ped02:  String;
  msql_ped02d:  String;
  msql_ped02s:  String;
  msql_pedfp:  String;
  mcupom  : Integer=0;
// retirar se possivel
   mitemad: Integer;
   ant_integer: Integer=0;
  mPromocao: String;
  ant_codpv: String;
  mop_origemd: Integer=0;
implementation

uses S_SitCre, S_PVO, S_DM4, S_DM5, S_BloqueioVenda_Motivo, S_PedLoc,
  S_Agde, S_ManNF, S_Ped_DescAlter, S_PromVal, S_Assessor, S_Usr, S_DtReaj;

{$R *.dfm}

procedure TFrm_Ped_AutoP.Tool_GravarClick(Sender: TObject);
var
diaaju,mesaju, anoaju: Word;
diaatu,mesatu, anoatu: Word;
pcodemp: Integer;
x: Integer;
mhorai, mhoraf: String;
mTotformas: Real;

begin

DATAP.Enabled    := true;

if Trim(DATAP.Text)='/  /' then
   Begin
   verteclado(0);
   MessageDlg('Favor informar a data do Pedido!',mtWarning,[mbOk],0);
   pc_Cabecalho.ActivePage:=ts_principais;
   DATAP.SetFocus;
   exit;
   end;
if Valint(CODCLI.Text)<=0 then
   begin
   verteclado(0);
   MessageDlg('Favor digitar Código do Cliente!',mtWarning,[mbOk],0);
   pc_Cabecalho.ActivePage:=ts_principais;
   CODCLI.SetFocus;
   exit;
   end;
if ValInt(CODVEN.Text)<=0 then
   begin
   verteclado(0);
   MessageDlg('Favor digitar Código do Vendedor!',mtWarning,[mbOk],0);
   pc_Cabecalho.ActivePage:=ts_principais;
   CODVEN.SetFocus;
   exit;
   end;
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'PO') and
   (CB_TABPV.Text<>'CV') then
   begin
   verteclado(0);
   MessageDlg('Tabelas Válidas "AV","AP","PP","PO","CV"',mtWarning,[mbok],0);
   pc_Cabecalho.ActivePage:=ts_principais;
   CB_TABPV.SetFocus;
   exit;
   end;
if Tb_Ped02.State in [dsInsert,dsEdit] then
   begin
   if (Tb_Ped02P2CODPRO.AsFloat<>0) and
      (Tb_Ped02P2QTD.asfloat<>0) then
      Tb_Ped02.Post
   else
      Tb_Ped02.Cancel;
   end;

if Valint(CODPV.Text)<=0 then
   begin
   verteclado(0);
   MessageDlg('Favor digitar Código do Plano de Vendas!',mtWarning,[mbOk],0);
   pc_Cabecalho.ActivePage:=ts_principais;
   CODPV.SetFocus;
   exit;
   end;
if ValFloat(VALDES.Text)>0 then
   begin
   if ValFloat(VALDES.Text)>=ValFloat(TOTLIQ.Caption) then
      begin
      verteclado(0);
      MessageDlg('O Valor do desconto tem que ser menor que o total do Pedido!',mtWarning,[mbOk],0);
      pc_Cabecalho.ActivePage:=ts_outros;
      VALDES.SetFocus;
      exit;
      end;
   end;
if ValFloat(totliq.Caption)<0 then
   begin
   verteclado(0);
   MessageDlg('O Valor do Pedido não pode ser negativo!',mtWarning,[mbOk],0);
   exit;
   end;


if (DM4.Tb_Par01PDESCMP0.Value>0) and (ValFloat(TOTDES.Caption)>0)  then
   begin
   if (ValFloat(TOTDES.Caption)>0) then
      mpdesc:=(ValFloat(TOTDES.Caption)*100)/ValFloat(TOTAL.Caption)
   else
      begin
      mpdesc:=valFloat(DESC01.Text)+ValFloat(DESC02.Text);
      end;
   mpdesc:=Arredonda(mpdesc,3);
   if (mpdesc>DM4.Tb_Par01PDESCMP0.Value) and (mpdesc>mlib_mPDescLib) then
      begin
      if fValidaSenha(codusr,2,0,DM1.Tb_CliCCODCLI.Value,0,0,0,'% Desconto maior que o permitido. Para continuar digite a senha','') then
         mlib_mPDescLib:=mpdesc
      else
         exit;
      end;
   end;



if (mtipop=2) and (DM1.Tb_PargerPCALCISR.Value=1) and (Trim(OBS1.Text)='') then
   begin
   OBS1.Text:=DM1.Tb_PargerPOBSSR01.Value;
   OBS2.Text:=DM1.Tb_PargerPOBSSR02.Value;
   end;
mhorai:=FormatDateTime('hh:nn:ss',time);
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Gravando Pedido. Aguarde';
Frm_Agde.Show;
Frm_Agde.Update;
mordem:=0;
if moper_ped=0 then
   begin
   mchave:=0;
   end
else
   begin
   fped01gant(8);
   if (DM4.Qr_Ped01P1TIPO.Value=0)  then
      fexcluir(2)
   else
      begin
      fajustaest(0); // mercadorias
      fexcluir(2);  // excluir os pedidos existentes
      end;
   end;
fgravarped(0); // mercadorias
//fgravarped(1); // servicos

CHAVE.Text:=Inttostr(mchave);
ORDEM.Text:=Floattostr(mordem);
Tool_Incluir.Enabled   :=bbpinc_true;
tool_localizar.Enabled :=True;
Tool_Alterar.Enabled   :=False;
Tool_Excluir.Enabled   :=False;
Tool_Gravar.Enabled    :=False;
Tool_LSep.Enabled      :=False;
Tool_EmiteNF.Enabled   :=False;
Tool_Calcular.Enabled  :=False;
Tool_Faturar.Enabled   :=False;
Tool_Arredondar.Enabled:=False;
pc_Cabecalho.ActivePage:=ts_principais;
ts_principais.Enabled  :=False;
ts_outros.Enabled      :=False;
ts_situacao.Enabled    :=false;
Ts_EntregaCob.Enabled  :=false;
Ts_ObsVcto.Enabled     :=false;

Frm_Agde.free;

if mchave=0 then
   begin
   AvisoSonoro(0);
   AvisoSonoro(1);
   verteclado(0);
   MessageDlg('Nao havia estoque das mercadorias Pedidas. Pedido nao Gravado!',mtWarning,[mbOk],0);
   end
else
   begin
   mordem:=1;
   flcadpar02(0,0,codusr,'32');
   if DM4.Tb_Par02PA2PDSN.Value<>'S' then
      begin
      DM1.Tb_Cli.Edit;
      DM1.Tb_CliCCODPV.Value:=ValFloat(CODPV.Text);
      DM1.Tb_CliCTABPV.Value:=CB_TABPV.Text;
      DM1.Tb_Cli.Post;
      end;
   if (DM1.Tb_CliCCODCLI.Value=1) or (DM1.Tb_CliCCODCLI.Value=2) then
      fPed01CSF(codemp,  ped_lotseq, mchave);

   moper_ped:=3;
   if (pp_locpedgrav=1) or (mdocOnLine) then
      begin
      tool_localizar.Click;
      fPed01EmiteOnLine(0);
      end
   else
      Tool_Limpar.Click;
   ShowMessage('Pedido Gravado. Inicio.: '+mhorai+#13
              +'                Término: '+mhoraf+#13
              +' Chave do Pedido: '+IntToStr(mchave));
   moper_ped:=0;
   end;


end;

procedure TFrm_Ped_AutoP.Tool_LimparClick(Sender: TObject);
var
x: Integer;
begin
FLimparTudo(0);

if moper_ped=1 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADP01 set P1SITPED=0 '
                     +' where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                     +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                     +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,5844,'Frm_Ped','CADP01');
      end;
   DM1.Query1.Close;
   end;

Frm_PVO.Tb_Po99.Close;
Frm_PVO.Tb_Po99.SQL.Clear;
Frm_PVO.Tb_Po99.SQL.Add('Select POCODEMP,POPRAZO from CADPO99 where '
                       +' POCODEMP=0 ');
Frm_PVO.Tb_Po99.Open;


mformace:=DM1.Tb_PargerPFORMACE.AsInteger;

mpacreconv     :=0;
mpacreger      :=DM1.Tb_PargerPACREGER.Value;



Tool_Incluir.Enabled   :=bbpinc_true;
tool_localizar.Enabled :=True;
Tool_Alterar.Enabled   :=False;
Tool_Excluir.Enabled   :=False;
Tool_Gravar.Enabled    :=False;
Tool_LSep.Enabled      :=False;
Tool_EmiteNF.Enabled   :=False;
Tool_Email.Enabled     :=false;
Tool_Calcular.Enabled  :=False;
Tool_Faturar.Enabled   :=False;
Tool_Arredondar.Enabled:=False;
pc_Cabecalho.ActivePage:=ts_principais;
mlib_mPDescLib     :=0;
mlib_mPDescLib_Usr :=0;
panel_conspro.Enabled  :=false;
ts_principais.Enabled  :=False;
ts_outros.Enabled      :=false;
ts_situacao.Enabled    :=false;
ts_outros.Enabled      :=false;
Ts_EntregaCob.Enabled  :=false;
Ts_ObsVcto.Enabled     :=false;


DBG_Mercad.ReadOnly    :=true;
ped_lotseq             :=ls_numped;
mtemrom                :=False;
moper_ped              :=0;

end;

procedure TFrm_Ped_AutoP.DATAPExit(Sender: TObject);
begin
if Trim(DATAP.Text)='/  /' then
   exit;
Try
  DATAP.Text:=FormatDatetime(fdt2,StrtoDate(DATAP.Text));
except
  MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
  DATAP.SetFocus;
  end

end;

procedure TFrm_Ped_AutoP.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Cli, Frm_Cli);
   Frm_Cli.Edit1.Text:=key;
   Frm_Cli.Edit1.SelStart:=1;
   Frm_Cli.Edit1.SelLength:=1;
   Frm_Cli.PC1.ActivePage:=Frm_Cli.tsTab;
   cli_ori:='Frm_Ped_AutoP';
   if Frm_Cli.ShowModal=mrok then
      begin
      CODCLI.Text:=DM1.Tb_CliCCODCLI.AsString;
      end;
   Frm_Cli.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Ped_AutoP.CODCLIExit(Sender: TObject);
begin

CODCLI.Text:=fdeixanum(CODCLI.Text);
if not (CODVEN.Focused) and (trim(CODCLI.Text)='') then
   exit;
CODCLI.Text:=fdeixanum(CODCLI.Text);
if not flcadcli(1,0,CODCLI.Text) then
   begin
   verteclado(0);
   MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   pldr_nome  :=DM1.Tb_CliCRAZAO.Value;
   end;
mlib_limcred:=False;
mlcred   :=0;

if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
   begin
   verteclado(0);
   MessageDlg('Favor Corrigir o Estado do Cadastro do Cliente!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   exit;
   end
else
   begin
   if not fpedtestacfop(mtipop,mpund) then
      begin
      CODCLI.SetFocus;
      exit;
      end;
   end;
if (mtipop=9) and (DM1.Tb_CliCBLQEMP.Value=1) then
   begin
   verteclado(0);
   MessageDlg('Não é permitido fazer empréstimo para Este Cliente!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   exit;
   end;

if DM1.Tb_CliCSITCLI.Value>0 then
   begin
   if fValidaSenha(codusr,17,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Cliente com o Cadastro Bloqueado. Para liberar digite a senha','') then
      mlib_limcred:=True
   else
      begin
      CODCLI.SetFocus;
      exit;
      end;
   end;




if DM4.Tb_Par01PVISA.Value=1 then
   begin
   if DM4.Tb_Par01PVISA.Value=1 then
      begin
      if trim(DM1.Tb_CliCNALV.Value)='' then
         begin
         verteclado(0);
         MessageDlg('Número do alvara da vigilância Sanitária Municipal Invalido',mtError,[mbok],0);
         CODCLI.SetFocus;
         exit;
         end
      else if DM1.Tb_CliCDTVALV.Value<pdatasis then
         begin
         verteclado(0);
         MessageDlg('Alvara da vigilância Sanitária Municipal vencido. Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTVALV.Value),mtError,[mbok],0);
         CODCLI.SetFocus;
         exit;
         end;
      end;
   end;
if DM1.Tb_PargerPANVISA.Value=1 then
   begin
   if DM4.Tb_Par01PANVISA.Value=1 then
      begin
      if trim(DM1.Tb_CliCNANVISA.Value)='' then
         begin
         verteclado(0);
         MessageDlg('Número do alvara da vigilância Sanitária Nacional(ANVISA) Invalido',mtError,[mbok],0);
         CODCLI.SetFocus;
         exit;
         end
      else if DM1.Tb_CliCDTANVISA.Value<pdatasis then
         begin
         verteclado(0);
         MessageDlg('Alvara da vigilância Sanitária Nacional(ANVISA) vencido. Data do Vcto: '+FormatDateTime(fdt2,DM1.Tb_CliCDTANVISA.Value),mtError,[mbok],0);
         CODCLI.SetFocus;
         exit;
         end;
      end;
   end;
if DM1.Tb_PargerPVERCRE.Value=1 then
   begin
   Application.CreateForm(TFrm_SitCre, Frm_SitCre);
   Frm_SitCre.CODCLI.Text:=Trim(CODCLI.Text);
   frm_SitCre.BBAPLICAR.Click;
   Frm_SitCre.ShowModal;
   mlcred:=mLimCre;
   Frm_SitCre.Free;
   if msit then
      begin
      mlib_limcred:=False;
      if fValidaSenha(codusr,17,0,DM1.Tb_CliCCODCLI.Value,0,0,0,'Cliente com venda Bloqueado. Para liberar digite a senha','') then
         begin
         mlib_limcred:=True;
         mlcred   :=0;
         end
      else
         begin
         CODCLI.SetFocus;
         exit;
         end;
      end;
   end;
if RG_TPPCO.ItemIndex<>2 then
   RG_TPPCO.ItemIndex:=DM1.Tb_UFPTIPOPC.AsInteger;
if RG_TPPCO.ItemIndex=2 then
   begin
   DBG_Mercad.Columns[mColPU].ReadOnly       :=false;
   DBG_Servicos.Columns[mColPU_Serv].ReadOnly:=false;
   end
else
   begin
   DBG_Mercad.Columns[mColPU].ReadOnly       :=true;
   DBG_Servicos.Columns[mColPU_Serv].ReadOnly:=true;
   end;
if (DM1.Tb_CliCCODPV.Value>0) and not (DM1.Tb_CliCTABPV.IsNull) and (valfloat(CODPV.Text)<=0) then
   begin
   CB_TABPV.Text:=DM1.Tb_CliCTABPV.Value;
   CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
   end;
NOMCV.Text:='';
CODCV.Text:='';
if DM1.Tb_CliCCODCV.Value>0 then
   begin
   if flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
      begin
      NOMCV.Text:=DM1.Query1.Fields[0].AsString;
      CODCV.Text:=DM1.Tb_CliCCODCV.AsString;
      end
   else
      begin
      if CB_TABPV.Text='CV' then
         begin
         CB_TABPV.Text:='';
         CODPV.Text:='';
         end;
      end;
   end;

if DM1.Tb_CliCCODASSE.Value>0 then
   begin
   if flqr1('CARAZAO','CA','CADASSE','N','CACODASS',DM1.Tb_CliCCODASSE.AsString) then
      begin
      NOMASSE.Text:=DM1.Query1.Fields[0].AsString;
      CODASSE.Text:=DM1.Tb_CliCCODASSE.AsString;
      end;
   end;



if (Trim(CB_TABPV.Text)<>'') and (Trim(CODPV.Text)<>'') then
   fPed01AtribuirPv(0);
if (ant_integer<>0) and (ant_integer<>ValFloat(CODCLI.Text))
   and ((Tb_Ped02.RecordCount>0) or (Tb_Ped02S.RecordCount>0)) then
   begin
   verteclado(0);
   MessageDlg('O Pedido poderá ter seus valores alterados',mtWarning,[mbOk],0);
   fped01reatribuir(0);
   ant_integer:=ValInt(CODCLI.Text);
   end;

if (DM1.Tb_CliCCODCLI.Value=1) or (DM1.Tb_CliCCODCLI.Value=2) then
   begin
   NOMCLI.Color  :=clWindow;
   NOMCLI.Enabled:=true;
   NOMCLI.SetFocus;
   end
else
   begin
   NOMCLI.Color  :=$00FFE1F0;
   NOMCLI.Enabled:=False;
   end;

if DM1.Tb_CliCFRETEPC.Value>0 then
   RGFRETEPC.ItemIndex:=dm1.Tb_CliCFRETEPC.AsInteger-1
else
   RGFRETEPC.ItemIndex:=0;
if (ValFloat(CODTRA.Text)=0) and (DM1.Tb_CliCCODTRA.Value>0) then
   begin
   CODTRA.Text:=DM1.Tb_CliCCODTRA.AsString;
   if flqr1('TRRAZTRA','V','CADTRA','N','TRCODTRA',DM1.Tb_CliCCODTRA.AsString) then
      NOMTRA.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      CODTRA.Text:='';
      NOMTRA.Text:='';
      end;
   end;

if (ValFloat(CODBCO.Text)=0) then
   begin
   CODBCO.Text:=DM1.Tb_CliCCODBCO01.AsString;
   CODBCO.Text:=fdeixanum2(CODBCO.Text);
   if Trim(CODBCO.Text)='' then
      NOMBCO.Text:='Carteira'
   else
      begin
      if not flcadbco(1,0,0,CODBCO.Text) then
         NOMBCO.Text:='Banco não Cadastrado!'
      else
         NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
      end;
   fPed01tarban(0);
   end;


if (ValFloat(CODVEN.Text)=0) and (DM1.Tb_CliCCODVEN.Value>0) then
   begin
   CODVEN.Text:=DM1.Tb_CliCCODVEN.AsString;
   if not flcadven(1,0,CODVEN.Text) then
      begin
      CODVEN.Text:='';
      NOMVEN.Text:='';
      end
   else
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;

if DM1.Tb_CliCBLQPRM.AsInteger=1 then
   CB_BLQPRM.Checked:=false;

end;

function TFrm_Ped_AutoP.fpedtestacfop(ptipo: Integer; pUnd: Real): Boolean;

begin

mCfo_Nor    :=0;
mCfo_Ret    :=0;
mCfo_Nor_101:=0;
mCfo_Ret_101:=0;
mCalcImp    :=true;
mCalcImp_101:=true;

if (PUnd<>0) and not (DM1.Qr_TID.locate('TINOME','CADUF',[])) then
   begin
   if not flcaduf(0,0,iif(codemp>100,codemp-100,codemp+100),DM1.Tb_CliCUF.AsString) then
      begin
      MessageDlg('Não Foi Encontrado o Cadastro de Estado para a '+#13
                +'Empresa: '+InttoStr(iif(codemp>100,codemp-100,codemp+100))+' Favor Cadastra-la!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;

// parametros de Impostos
   mAliqIssqn_101:=DM1.Tb_UFPALISSQN.Value;
   if DM1.Tb_CliCREPAS.Value=1 then
      mAliqRepas_101:=DM1.Tb_UFPREPAS.Value
   else
      mAliqRepas_101:=0;

   mIvaNeg_101   :=DM1.Tb_UFPIVANEG.Value;
   mIvaPos_101   :=DM1.Tb_UFPIVAPOS.Value;
   mIvaIna_101   :=DM1.Tb_UFPIVAINA.Value;
   mRedutRA_101  :=DM1.Tb_UFPREDUTRA.Value;
   mRedutRB_101  :=DM1.Tb_UFPREDUTRB.Value;
   if DM1.Tb_CliCALIQDEB.Value>0 then
      mAliqDeb_101  :=DM1.Tb_CliCALIQDEB.Value
   else
      mAliqDeb_101  :=DM1.Tb_UFPICMSD.Value;
   mIcmsC_101    :=DM1.Tb_UFPICMSC.Value;
   mRedutNA_101  :=DM1.Tb_UFPREDUTNA.Value;
   mRedutNB_101  :=DM1.Tb_UFPREDUTNB.Value;
   mTipCal_101   :=DM1.Tb_UFPTIPCAL.Value;
   mCalcRet_101  :=DM1.Tb_UFPCALCRET.Value;



// termino dos parametros de Impostos


// inicio


   if (mtipop=1) or (mtipop=16) then
      begin
      if DM1.Tb_CliCCONSF.Value=1 then
         begin
         if ((DM1.Tb_UFPCFOCFR.Value=0) or (DM1.Tb_UFPCFOCFN.Value=0)) then
            begin
            verteclado(0);
            MessageDlg('Código de CFOPs Consumidor Final para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                      +'  Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
            result:=False;
            exit;
            end
         else
            begin
            mCfo_Ret_101:=DM1.Tb_UFPCFOCFR.Value;
            mCfo_Nor_101:=DM1.Tb_UFPCFOCFN.Value;
            end;
         if DM1.Tb_UFPCIMP_CF.Value=1 then
            mcalcimp_101:=False
         else
            mcalcimp_101:=true;
         end
      else
         begin
         if ((DM1.Tb_UFPCFORVR.Value=0) or (DM1.Tb_UFPCFORVN.Value=0)) then
            begin
            verteclado(0);
            MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                      +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
            result:=False;
            exit;
            end
         else
            begin
            mCfo_Ret_101:=DM1.Tb_UFPCFORVR.Value;
            mCfo_Nor_101:=DM1.Tb_UFPCFORVN.Value;
            end;
         if DM1.Tb_UFPCIMP_RV.Value=1 then
            mcalcimp_101:=False
         else
            mcalcimp_101:=true;
         end

      end
   else if (mtipop=2) then
      begin
      if ((DM1.Tb_UFPCFOSRR.Value=0) or (DM1.Tb_UFPCFOSRN.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Ret_101:=DM1.Tb_UFPCFOSRR.Value;
         mCfo_Nor_101:=DM1.Tb_UFPCFOSRN.Value;
         end;
      if DM1.Tb_UFPCIMP_SR.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=18) then
      begin
      if ((DM1.Tb_UFPCFOTRER.Value=0) or (DM1.Tb_UFPCFOTREN.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Ret_101:=DM1.Tb_UFPCFOTRER.Value;
         mCfo_Nor_101:=DM1.Tb_UFPCFOTREN.Value;
         end;
      if DM1.Tb_UFPCIMP_TE.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=19) then
      begin
      if ((DM1.Tb_UFPCFODMTR.Value=0) or (DM1.Tb_UFPCFODMTN.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Ret_101:=DM1.Tb_UFPCFODMTR.Value;
         mCfo_Nor_101:=DM1.Tb_UFPCFODMTN.Value;
         end;
      if DM1.Tb_UFPCIMP_DMT.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=3) then
      begin
      if ((DM1.Tb_UFPCFODFN.Value=0) or (DM1.Tb_UFPCFODFR.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFODFN.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFODFR.Value;
         end;
      if DM1.Tb_UFPCIMP_DF.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=4) then
      begin
      if ((DM1.Tb_UFPCFOSRR.Value=0) or (DM1.Tb_UFPCFOSRN.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Ret_101:=DM1.Tb_UFPCFOSRR.Value;
         mCfo_Nor_101:=DM1.Tb_UFPCFOSRN.Value;
         end;
      if DM1.Tb_UFPCIMP_SR.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=5) then
      begin
      if ((DM1.Tb_UFPCFOTRN.Value=0) or (DM1.Tb_UFPCFOTRR.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFOTRN.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFOTRR.Value;
         end;
      if DM1.Tb_UFPCIMP_TR.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=6) then
      begin
      if ((DM1.Tb_UFPCFOBEN.Value=0) or (DM1.Tb_UFPCFOBER.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFOBEN.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFOBER.Value;
         end;
      end
   else if (mtipop=7) then
      begin
      if ((DM1.Tb_UFPCFORVFEO.Value=0) or (DM1.Tb_UFPCFORVFER.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFORVFEO.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFORVFER.Value;
         end;
      if DM1.Tb_UFPCIMP_RVFE.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if ((mtipop=8) or (mtipop=17)) then
      begin
      if ((DM1.Tb_UFPCFODCN.Value=0) or (DM1.Tb_UFPCFODCR.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFODCN.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFODCR.Value;
         end;
      if DM1.Tb_UFPCIMP_DC.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=10) then
      begin
      if ((DM1.Tb_UFPCFONCN.Value=0) or (DM1.Tb_UFPCFONCR.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFONCN.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFONCR.Value;
         end;
      if DM1.Tb_UFPCIMP_NC.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;

      end
   else if (mtipop=11) then
      begin
      if ((DM1.Tb_UFPCFORCON.Value=0) or (DM1.Tb_UFPCFORCOR.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFORCON.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFORCOR.Value;
         end;
      if DM1.Tb_UFPCIMP_RC.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=12) then
      begin
      if ((DM1.Tb_UFPCFODVCO.Value=0) or (DM1.Tb_UFPCFODVCR.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFODVCO.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFODVCR.Value;
         end;
      if DM1.Tb_UFPCIMP_DVC.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=13) then
      begin
      if ((DM1.Tb_UFPCFODVFEO.Value=0) or (DM1.Tb_UFPCFODVFER.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFODVFEO.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFODVFER.Value;
         end;
      if DM1.Tb_UFPCIMP_DVFE.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=14) then
      begin
      if ((DM1.Tb_UFPCFOVCON.Value=0) or (DM1.Tb_UFPCFOVCOR.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFOVCON.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFOVCOR.Value;
         end;
      if DM1.Tb_UFPCIMP_VC.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;
      end
   else if (mtipop=15) then
      begin
      if ((DM1.Tb_UFPCFOVFEO.Value=0) or (DM1.Tb_UFPCFOVFER.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Nor_101:=DM1.Tb_UFPCFOVFEO.Value;
         mCfo_Ret_101:=DM1.Tb_UFPCFOVFER.Value;
         end;
      if DM1.Tb_UFPCIMP_VFE.Value=1 then
         mcalcimp_101:=False
      else
         mcalcimp_101:=true;

      end;


   if (mtipop>0) and (mtipop<19) and (mtipop<>9) then
      begin
      if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
         begin
         if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18) then
            begin
            if (copy(FormatFloat('0000',mCfo_Ret_101),1,1)<>'1') or (copy(FormatFloat('0000',mCfo_Nor_101),1,1)<>'1') then
               begin
               verteclado(0);
               MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' dentro do estado'+#13
                         +' tem que começar com o digito 1.'+#13
                         +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
               result:=False;
               exit;
               end;
            end
         else if (copy(FormatFloat('0000',mCfo_Ret_101),1,1)<>'5') or (copy(FormatFloat('0000',mCfo_Nor_101),1,1)<>'5') then
            begin
            verteclado(0);
            MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' dentro do estado'+#13
                      +'tem que começar com o digito 5.'+#13
                      +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
            result:=False;
            exit;
            end;
         end
      else
         begin
         if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18)  then
            begin
            if (copy(FormatFloat('0000',mCfo_Ret_101),1,1)<>'2') or (copy(FormatFloat('0000',mCfo_Nor_101),1,1)<>'2') then
               begin
               verteclado(0);
               MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' fora do estado'+#13
                         +' tem que começar com o digito 2.'+#13
                         +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
               result:=False;
               exit;
               end;
            end
         else if (copy(FormatFloat('0000',mCfo_Ret_101),1,1)<>'6') or (copy(FormatFloat('0000',mCfo_Nor_101),1,1)<>'6') then
            begin
            verteclado(0);
            MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' fora do estado'+#13
                      +'tem que começar com o digito 6.'+#13
                      +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
            result:=False;
            exit;
            end;
         end;
      end;

   if not flcaduf(0,0,0,DM1.Tb_CliCUF.AsString) then
      begin
      MessageDlg('Não Foi Encontrado o Cadastro de Estado para a '+#13
                +'Empresa: '+InttoStr(codemp)+' Favor Cadastra-la!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;

// termino

   end;

if (mtipop=1) or (mtipop=16) then
   begin


// parametros de Impostos
   mAliqIssqn:=DM1.Tb_UFPALISSQN.Value;
   if DM1.Tb_CliCREPAS.Value=1 then
      mAliqRepas:=DM1.Tb_UFPREPAS.Value
   else
      mAliqRepas:=0;
   mIvaNeg   :=DM1.Tb_UFPIVANEG.Value;
   mIvaPos   :=DM1.Tb_UFPIVAPOS.Value;
   mIvaIna   :=DM1.Tb_UFPIVAINA.Value;
   mRedutRA  :=DM1.Tb_UFPREDUTRA.Value;
   mRedutRB  :=DM1.Tb_UFPREDUTRB.Value;
   if DM1.Tb_CliCALIQDEB.Value>0 then
      mAliqDeb  :=DM1.Tb_CliCALIQDEB.Value
   else
      mAliqDeb  :=DM1.Tb_UFPICMSD.Value;
   mIcmsC    :=DM1.Tb_UFPICMSC.Value;
   mRedutNA  :=DM1.Tb_UFPREDUTNA.Value;
   mRedutNB  :=DM1.Tb_UFPREDUTNB.Value;
   mTipCal   :=DM1.Tb_UFPTIPCAL.Value;
   mCalcRet  :=DM1.Tb_UFPCALCRET.Value;



// termino dos parametros de Impostos

   if DM1.Tb_CliCCONSF.Value=1 then
      begin
      if ((DM1.Tb_UFPCFOCFR.Value=0) or (DM1.Tb_UFPCFOCFN.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs Consumidor Final para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +'  Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Ret:=DM1.Tb_UFPCFOCFR.Value;
         mCfo_Nor:=DM1.Tb_UFPCFOCFN.Value;
         end;
      if DM1.Tb_UFPCIMP_CF.Value=1 then
         mcalcimp:=False
      else
         mcalcimp:=true;
      end
   else
      begin
      if ((DM1.Tb_UFPCFORVR.Value=0) or (DM1.Tb_UFPCFORVN.Value=0)) then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end
      else
         begin
         mCfo_Ret:=DM1.Tb_UFPCFORVR.Value;
         mCfo_Nor:=DM1.Tb_UFPCFORVN.Value;
         end;
      if DM1.Tb_UFPCIMP_RV.Value=1 then
         mcalcimp:=False
      else
         mcalcimp:=true;
      end

   end
else if (mtipop=2) then
   begin
   if ((DM1.Tb_UFPCFOSRR.Value=0) or (DM1.Tb_UFPCFOSRN.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Ret:=DM1.Tb_UFPCFOSRR.Value;
      mCfo_Nor:=DM1.Tb_UFPCFOSRN.Value;
      end;
   if DM1.Tb_UFPCIMP_SR.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=18) then
   begin
   if ((DM1.Tb_UFPCFOTRER.Value=0) or (DM1.Tb_UFPCFOTREN.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Ret:=DM1.Tb_UFPCFOTRER.Value;
      mCfo_Nor:=DM1.Tb_UFPCFOTREN.Value;
      end;
   if DM1.Tb_UFPCIMP_TE.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=19) then
   begin
   if ((DM1.Tb_UFPCFODMTR.Value=0) or (DM1.Tb_UFPCFODMTN.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Ret:=DM1.Tb_UFPCFODMTR.Value;
      mCfo_Nor:=DM1.Tb_UFPCFODMTN.Value;
      end;
   if DM1.Tb_UFPCIMP_DMT.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=3) then
   begin
   if ((DM1.Tb_UFPCFODFN.Value=0) or (DM1.Tb_UFPCFODFR.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFODFN.Value;
      mCfo_Ret:=DM1.Tb_UFPCFODFR.Value;
      end;
   if DM1.Tb_UFPCIMP_DF.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=4) then
   begin
   if ((DM1.Tb_UFPCFOSRR.Value=0) or (DM1.Tb_UFPCFOSRN.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Ret:=DM1.Tb_UFPCFOSRR.Value;
      mCfo_Nor:=DM1.Tb_UFPCFOSRN.Value;
      end;
   if DM1.Tb_UFPCIMP_SR.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=5) then
   begin
   if ((DM1.Tb_UFPCFOTRN.Value=0) or (DM1.Tb_UFPCFOTRR.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFOTRN.Value;
      mCfo_Ret:=DM1.Tb_UFPCFOTRR.Value;
      end;
   if DM1.Tb_UFPCIMP_TR.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=6) then
   begin
   if ((DM1.Tb_UFPCFOBEN.Value=0) or (DM1.Tb_UFPCFOBER.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFOBEN.Value;
      mCfo_Ret:=DM1.Tb_UFPCFOBER.Value;
      end;
   end
else if (mtipop=7) then
   begin
   if ((DM1.Tb_UFPCFORVFEO.Value=0) or (DM1.Tb_UFPCFORVFER.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFORVFEO.Value;
      mCfo_Ret:=DM1.Tb_UFPCFORVFER.Value;
      end;
   if DM1.Tb_UFPCIMP_RVFE.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if ((mtipop=8) or (mtipop=17)) then
   begin
   if ((DM1.Tb_UFPCFODCN.Value=0) or (DM1.Tb_UFPCFODCR.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFODCN.Value;
      mCfo_Ret:=DM1.Tb_UFPCFODCR.Value;
      end;
   if DM1.Tb_UFPCIMP_DC.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=10) then
   begin
   if ((DM1.Tb_UFPCFONCN.Value=0) or (DM1.Tb_UFPCFONCR.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFONCN.Value;
      mCfo_Ret:=DM1.Tb_UFPCFONCR.Value;
      end;
   if DM1.Tb_UFPCIMP_NC.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;

   end
else if (mtipop=11) then
   begin
   if ((DM1.Tb_UFPCFORCON.Value=0) or (DM1.Tb_UFPCFORCOR.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFORCON.Value;
      mCfo_Ret:=DM1.Tb_UFPCFORCOR.Value;
      end;
   if DM1.Tb_UFPCIMP_RC.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=12) then
   begin
   if ((DM1.Tb_UFPCFODVCO.Value=0) or (DM1.Tb_UFPCFODVCR.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFODVCO.Value;
      mCfo_Ret:=DM1.Tb_UFPCFODVCR.Value;
      end;
   if DM1.Tb_UFPCIMP_DVC.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=13) then
   begin
   if ((DM1.Tb_UFPCFODVFEO.Value=0) or (DM1.Tb_UFPCFODVFER.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFODVFEO.Value;
      mCfo_Ret:=DM1.Tb_UFPCFODVFER.Value;
      end;
   if DM1.Tb_UFPCIMP_DVFE.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=14) then
   begin
   if ((DM1.Tb_UFPCFOVCON.Value=0) or (DM1.Tb_UFPCFOVCOR.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFOVCON.Value;
      mCfo_Ret:=DM1.Tb_UFPCFOVCOR.Value;
      end;
   if DM1.Tb_UFPCIMP_VC.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;
   end
else if (mtipop=15) then
   begin
   if ((DM1.Tb_UFPCFOVFEO.Value=0) or (DM1.Tb_UFPCFOVFER.Value=0)) then
      begin
      verteclado(0);
      MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' tem que estar preenchido.'+#13
                +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
      result:=False;
      exit;
      end
   else
      begin
      mCfo_Nor:=DM1.Tb_UFPCFOVFEO.Value;
      mCfo_Ret:=DM1.Tb_UFPCFOVFER.Value;
      end;
   if DM1.Tb_UFPCIMP_VFE.Value=1 then
      mcalcimp:=False
   else
      mcalcimp:=true;

   end;


if (mtipop>0) and (mtipop<19) and (mtipop<>9) then
   begin
   if DM1.Tb_EmpUF.Value=DM1.Tb_CliCUF.Value then
      begin
      if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18) then
         begin
         if (copy(FormatFloat('0000',mCfo_Ret),1,1)<>'1') or (copy(FormatFloat('0000',mCfo_Nor),1,1)<>'1') then
            begin
            verteclado(0);
            MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' dentro do estado'+#13
                      +' tem que começar com o digito 1.'+#13
                      +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
            result:=False;
            exit;
            end;
         end
      else if (copy(FormatFloat('0000',mCfo_Ret),1,1)<>'5') or (copy(FormatFloat('0000',mCfo_Nor),1,1)<>'5') then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' dentro do estado'+#13
                   +'tem que começar com o digito 5.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end;
      end
   else
      begin
      if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18)  then
         begin
         if (copy(FormatFloat('0000',mCfo_Ret),1,1)<>'2') or (copy(FormatFloat('0000',mCfo_Nor),1,1)<>'2') then
            begin
            verteclado(0);
            MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' fora do estado'+#13
                      +' tem que começar com o digito 2.'+#13
                      +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
            result:=False;
            exit;
            end;
         end
      else if (copy(FormatFloat('0000',mCfo_Ret),1,1)<>'6') or (copy(FormatFloat('0000',mCfo_Nor),1,1)<>'6') then
         begin
         verteclado(0);
         MessageDlg('Código de CFOPs para '+CB_TIPO2.Items[mtipop]+' fora do estado'+#13
                   +'tem que começar com o digito 6.'+#13
                   +' Corrigir no Cadastro de Estado!',mtWarning,[mbOk],0);
         result:=False;
         exit;
         end;
      end;
   end;

if (PUnd<>0) and (DM1.Qr_TID.locate('TINOME','CADUF',[])) then
   begin
   mAliqIssqn_101:=mAliqIssqn;
   mAliqRepas_101:=mAliqRepas;
   mIvaNeg_101   :=mIvaNeg;
   mIvaPos_101   :=mIvaPos;
   mIvaIna_101   :=mIvaIna;
   mRedutRA_101  :=mRedutRA;
   mRedutRB_101  :=mRedutRB;
   mAliqDeb_101  :=mAliqDeb;
   mIcmsC_101    :=mIcmsC;
   mRedutNA_101  :=mRedutNA;
   mRedutNB_101  :=mRedutNB;
   mTipCal_101   :=mTipCal;
   mCalcRet_101  :=mCalcRet;

   end;

result:=True;
end;

procedure TFrm_Ped_AutoP.FormCreate(Sender: TObject);
var
x: Integer;
begin
mdocs[01]:='Orcamento';
mdocs[02]:='N.F.1a.Serie';
mdocs[03]:='N.F.2a.Serie';
mdocs[04]:='Vale de Mercadorias';

CB_TIPO.Items.Clear;
CB_TIPO2.Items.Clear;

for x:=0 to high(tab_tped)-1 do
   begin
   CB_TIPO.Items.Add(tab_tped[x]);
   CB_TIPO2.Items.Add(tab_tped[x]);
   end;
Application.CreateForm(TFrm_PVO, Frm_PVO);
mTabTmp01:=fProcTemp(11);
if Tb_Ped02.Active then
   Tb_Ped02.Close;
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.add('Create Table '+mTabTmp01+'( ');
mcinst:='';
for x:=0 to Tb_Ped02.FieldCount-1 do
   begin
   if Tb_ped02.Fields[x].FieldKind=fkCalculated then
      Continue;

   if (Tb_ped02.fields[x].DataType=ftFloat) or
      (Tb_ped02.fields[x].DataType=ftCurrency) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02.Fields[x].FieldName+' '+pTmpcFloat)
   else if (Tb_ped02.fields[x].DataType=ftinteger) or
      (Tb_ped02.fields[x].DataType=ftWord) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02.Fields[x].FieldName+' '+pTmpcInteger)
   else if (Tb_ped02.fields[x].DataType=ftString) then
      begin
      DM5.Query1.SQL.add(mcinst+Tb_Ped02.Fields[x].FieldName+' '+pTmpcString);
      if Tb_Ped02.Fields[x].Size>0 then
         DM5.Query1.Sql.add('('+InttoStr(Tb_Ped02.fields[x].Size)+')');
      end
   else if (Tb_Ped02.fields[x].DataType=ftDate) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02.Fields[x].FieldName+' '+pTmpcData)
   else if (Tb_Ped02.fields[x].DataType=ftDateTime) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02.Fields[x].FieldName+' '+pTmpcDataHora)
   else if (Tb_Ped02.fields[x].DataType=ftTime) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02.Fields[x].FieldName+' '+pTmpcHora)
   else if (Tb_Ped02.fields[x].DataType=ftBlob) then
      DM5.Query1.SQL.Add(mcinst+Tb_Ped02.fields[x].FieldName+' '+pTmpcBlob)
   else if (Tb_Ped02.fields[x].DataType=ftMemo) then
      DM5.Query1.SQL.Add(mcinst+Tb_Ped02.Fields[x].FieldName+' '+pTmpcMemo);
   mcinst:=',';
   end;
// termino 101
DM5.Query1.SQL.add(' )');
try
   DM5.Query1.ExecSQL;
except
   DM5.Query1.sql.SavetoFile('C:\SGE\sql.txt');
   MessageDlg('Erro ao Criar Tabela Temporaria: '+mTabTmp01,mtError,[mbOk],0);
   end;
Tb_Ped02P2QTD.DisplayFormat      := mcasqtd;
Tb_Ped02P2QTDDEV.DisplayFormat   := mcasqtd;
Tb_Ped02P2DTVCTO.DisplayFormat   := fdt2;
Tb_Ped02P2DTVCTO.EditMask        := pEditMascData;
Tb_Ped02P2DESC1.DisplayFormat    := mcasas;
Tb_Ped02P2DESC2.DisplayFormat    := mcasas;
Tb_Ped02P2VALDES.DisplayFormat   := mcasas;
Tb_Ped02P2PRECO.DisplayFormat    := mcasaspu;
Tb_Ped02P2BASEN.DisplayFormat    := mcasas;
Tb_Ped02P2ICMSN.DisplayFormat    := mcasas;
Tb_Ped02P2REPAS.DisplayFormat    := mcasas;
Tb_Ped02P2BASER.DisplayFormat    := mcasas;
Tb_Ped02P2ICMSR.DisplayFormat    := mcasas;
Tb_Ped02P2PCOTAB.DisplayFormat   := mcasas;
Tb_Ped02P2UCPR.DisplayFormat     := mcasas;
Tb_Ped02P2PCOCUS.DisplayFormat   := mcasas;
Tb_Ped02P2PCOMAX.DisplayFormat   := mcasas;
Tb_Ped02P2TOTDES.DisplayFormat   := mcasas;
Tb_Ped02P2DESCRAT.DisplayFormat  := mcasas;
Tb_Ped02P2ALIPI.DisplayFormat    := mcasas;
Tb_Ped02P2VALIPI.DisplayFormat   := mcasas;
Tb_Ped02P2BCINR.DisplayFormat    := mcasas;
Tb_Ped02P2ICMSNR.DisplayFormat   := mcasas;
Tb_Ped02P2ISENTAS.DisplayFormat  := mcasas;
Tb_Ped02P2TOTOUT.DisplayFormat   := mcasas;
Tb_Ped02P2ALIQ.DisplayFormat     := mcasas;
Tb_Ped02P2ALIQNR.DisplayFormat   := mcasas;
Tb_Ped02P2PCOMIS.DisplayFormat   := mcasas;
Tb_Ped02P2VCOMIS.DisplayFormat   := mcasas;
Tb_Ped02P2VCOM02.DisplayFormat   := mcasas;
Tb_Ped02P2VCOM03.DisplayFormat   := mcasas;
Tb_Ped02P2DESCM.DisplayFormat    := mcasas;
Tb_Ped02P2SEMCOM.DisplayFormat   := mcasas;
Tb_Ped02P2TOTLIQ.DisplayFormat   := mcasas;
Tb_Ped02P2PDESCF.DisplayFormat   := mcasas;
Tb_Ped02P2VDESCF.DisplayFormat   := mcasas;
Tb_Ped02P2ACRECONV.DisplayFormat := mcasas;
Tb_Ped02P2ACREGER.DisplayFormat  := mcasas;
Tb_Ped02P2DESC3.DisplayFormat    := mcasas;
Tb_Ped02P2VCOM04.DisplayFormat   := mcasas;
Tb_Ped02P2ACRERAT.DisplayFormat  := mcasas;
Tb_Ped02vlr_Total.DisplayFormat  := mcasas;


mTabTmp02:=fProcTemp(11);
if Tb_Ped02s.Active then
   Tb_Ped02s.Close;
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.add('Create Table '+mTabTmp02+'( ');
mcinst:='';
for x:=0 to Tb_Ped02s.FieldCount-1 do
   begin
   if Tb_ped02s.Fields[x].FieldKind=fkCalculated then
      Continue;

   if (Tb_Ped02S.fields[x].DataType=ftFloat) or
      (Tb_Ped02S.fields[x].DataType=ftCurrency) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02S.Fields[x].FieldName+' '+pTmpcFloat)
   else if (Tb_Ped02S.fields[x].DataType=ftinteger) or
      (Tb_Ped02S.fields[x].DataType=ftWord) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02S.Fields[x].FieldName+' '+pTmpcInteger)
   else if (Tb_Ped02S.fields[x].DataType=ftString) then
      begin
      DM5.Query1.SQL.add(mcinst+Tb_Ped02S.Fields[x].FieldName+' '+pTmpcString);
      if Tb_Ped02S.Fields[x].Size>0 then
         DM5.Query1.Sql.add('('+InttoStr(Tb_Ped02S.fields[x].Size)+')');
      end
   else if (Tb_Ped02S.fields[x].DataType=ftDate) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02S.Fields[x].FieldName+' '+pTmpcData)
   else if (Tb_Ped02S.fields[x].DataType=ftDateTime) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02S.Fields[x].FieldName+' '+pTmpcDataHora)
   else if (Tb_Ped02S.fields[x].DataType=ftTime) then
      DM5.Query1.SQL.add(mcinst+Tb_Ped02S.Fields[x].FieldName+' '+pTmpcHora)
   else if (Tb_Ped02S.fields[x].DataType=ftBlob) then
      DM5.Query1.SQL.Add(mcinst+Tb_Ped02S.fields[x].FieldName+' '+pTmpcBlob)
   else if (Tb_Ped02S.fields[x].DataType=ftMemo) then
      DM5.Query1.SQL.Add(mcinst+Tb_Ped02S.Fields[x].FieldName+' '+pTmpcMemo);
   mcinst:=',';
   end;
// termino 101
DM5.Query1.SQL.add(' )');
try
   DM5.Query1.ExecSQL;
except
   DM5.Query1.sql.SavetoFile('C:\SGE\sql.txt');
   MessageDlg('Erro ao Criar Tabela Temporaria: '+mTabTmp02,mtError,[mbOk],0);
   end;



// termino
panel_conspro.Enabled:=false;
ts_principais.Enabled:=false;
ts_outros.Enabled    :=false;
ts_situacao.Enabled  :=false;
Ts_EntregaCob.Enabled  :=false;
Ts_ObsVcto.Enabled     :=false;
DBG_Mercad.ReadOnly  :=true;
ITEM_EDITAR.Enabled  :=false;
bbExcItem.Enabled    :=false;
VALFRE.Enabled       :=false;

Tb_ProPDPRECO1.DisplayFormat :=mcasaspu;
Tb_ProPDPRECO2.DisplayFormat :=mcasaspu;
Tb_ProPDPRECO3.DisplayFormat :=mcasaspu;
Tb_Prodtuent.DisplayFormat   :=fdt2;
Tb_Prodtusai.DisplayFormat   :=fdt2;
Tb_Proestoque.DisplayFormat  :=mcasqtd;
Tb_Proestoquec.DisplayFormat :=mcasqtd;
Tb_Proestoquet.DisplayFormat :=mcasqtd;
Tb_Proestoquer.DisplayFormat :=mcasqtd;
Tb_ProPDSALDOC.DisplayFormat :=mcasqtd;
Tb_ProPDSALDO.DisplayFormat  :=mcasqtd;
Tb_ProPDSALDOT.DisplayFormat :=mcasqtd;

mformace:=DM1.Tb_PargerPFORMACE.AsInteger;

if flcadactab(0,0,IntToStr(codcar),'CADPED') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbpinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbpalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbpexc_true:=False;
   if DM4.Tb_AcTabAT_REL.Value=1 then
      bbprel_true:=False;

   end;
DBG_Mercad.Columns[mColDesc01].Visible:=false;
DBG_Mercad.Columns[mColDesc02].Visible:=false;
DBG_Mercad.Columns[mColDesc03].Visible:=false;
DBG_Mercad.Columns[mColDescVL].Visible:=false;


if (valint(copy(mpseg,4,2))=2) then
   begin
   Tb_Ped02P2LOTE.DisplayLabel:='Grade';
   DBG_Mercad.Columns[mColLote].Visible:=true;
   end
else
   DBG_Mercad.Columns[mColLote].Visible:=false;

end;


function TFrm_ped_AutoP.fCalcularItem(ptipo: Integer;pACreGer,pAcreConv: Real): Boolean;
var
mf_totdes : Real;
mf_totbru : Real;
mf_DescRat: Real;
mf_AcreRat: Real;
mf_Aliq   : Real;
mf_AliqNR : Real;
mf_IcmsCred  : Real;
mf_redut: Real;

begin
if BlqCalcula_101 then
   begin
   if mpund=0 then
      begin
      Tb_Ped02P2PRECO_101.Value:=0;
      Tb_Ped02P2QTD_101.Value  :=0;
      end
   else if mFormace=1 then
      begin
      Tb_Ped02P2PRECO_101.Value:=fped01div_ValDesc(DM1.Tb_ProPDREST.AsInteger,DM1.Tb_ProPDFRACAO.AsInteger,
                                   Tb_Ped02P2PRECO.Value,mpund);
      Tb_Ped02P2QTD_101.Value  :=Tb_Ped02P2QTD.Value;
      end
   else
      begin
      Tb_Ped02P2QTD_101.Value:=fped01div_Qtd(DM1.Tb_ProPDREST.AsInteger,DM1.Tb_ProPDFRACAO.AsInteger,
                                   Tb_Ped02P2QTD.Value,mpund);
      Tb_Ped02P2PRECO_101.Value  :=Tb_Ped02P2PRECO.Value;
      end;
   end;
if Tb_Ped02P2QTD_101.AsFloat>0 then
   begin
   if Tb_Ped02P2VALDES.AsFloat<>0 then
      Tb_Ped02P2VALDES_101.Value:=fped01div_ValDesc(DM1.Tb_ProPDREST.AsInteger,DM1.Tb_ProPDFRACAO.AsInteger,
                                   Tb_Ped02P2VALDES.Value,mpund)
   else
      Tb_Ped02P2VALDES_101.Value:=0;
   mf_totbru:=Tb_Ped02P2QTD_101.Value*Tb_Ped02P2PRECO_101.Value;
   mf_totdes:=Tb_Ped02P2VALDES_101.Value;
   if Tb_Ped02P2DESC1.AsFloat<>0 then
      mf_totdes:=mf_totdes + Arredonda( ((mf_totbru-mf_totdes)*Tb_Ped02P2DESC1.Value/100) , 2);
   if Tb_Ped02P2DESC2.AsFloat<>0 then
      mf_totdes:=mf_totdes + Arredonda( ((mf_totbru-mf_totdes)*Tb_Ped02P2DESC2.Value/100) , 2);

   if Tb_Ped02P2DESC3.AsFloat<>0 then
      mf_totdes:=mf_totdes + Arredonda( ((mf_totbru-mf_totdes)*Tb_Ped02P2DESC3.Value/100) , 2);
   Tb_Ped02P2TOTDES_101.Value:=mf_totdes;
   mf_DescRat:=0;
   if mValdes_101<>0 then
      begin
      mf_DescRat:=((mf_totbru-mf_totdes)*100)/mValdes_101;
      mf_DescRat:=Arredonda( ((mf_DescRat*mf_DescRat)/100),DM1.Tb_PargerPCASAS.AsInteger );
      end;
   Tb_Ped02P2DESCRAT_101.Value:=mf_DescRat;

   if mValAcre_101<>0 then
      begin
      mf_AcreRat:=((mf_totbru-mf_totdes)*100)/mValAcre_101;
      mf_AcreRat:=Arredonda( ((mf_AcreRat*mf_AcreRat)/100),DM1.Tb_PargerPCASAS.AsInteger );
      end;

   Tb_Ped02P2ACRERAT_101.Value:=mf_AcreRat;
   if mAliqRepas_101<>0 then
      begin
      Tb_Ped02P2REPAS_101.Value:=(mf_totbru-mf_totdes-mf_DescRat+mf_AcreRat);
      Tb_Ped02P2REPAS_101.Value:=Arredonda( (Tb_Ped02P2REPAS_101.Value*mAliqRepas_101/100) , DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      Tb_Ped02P2REPAS_101.Value:=0;

   if mCalcImp_101 then
      begin
      if Tb_Ped02P2ALIPI.Value<>0 then
         begin
         Tb_Ped02P2VALIPI_101.Value:=Arredonda( ((mf_totbru-mf_totdes-mf_DescRat+mf_AcreRat-Tb_Ped02P2DESCRAT_101.Value)
                                     * Tb_Ped02P2ALIPI.Value/100) , DM1.Tb_PargerPCASAS.AsInteger);
         end
      else
         Tb_Ped02P2VALIPI_101.Value:=0;
      if (Tb_Ped02P2TABELA.Value='B') and (DM1.Tb_CliCALIQB.AsFloat<>0) then
         mf_Aliq:=DM1.Tb_CliCALIQB.Value
      else
         mf_Aliq:=DM1.Tb_CliCALIQA.Value;
      if DM1.Tb_CliCALIQB.AsFloat=0 then
         mf_AliqNR :=DM1.Tb_CliCALIQA.Value
      else
         mf_AliqNR :=DM1.Tb_CliCALIQB.Value;
      Tb_Ped02P2BCINR_101.Value :=0;
      Tb_Ped02P2ICMSNR_101.Value:=0;
      mf_Redut:=0;
      if (DM1.Tb_CliCICMSR.Value=1) and (Tb_Ped02P2SIT.Value[2] in ['1','6']) then
         begin
         if mTipCal_101='S' then
            Tb_Ped02P2BASER_101.Value:=Tb_Ped02P2QTD_101.Value*Tb_Ped02P2PCOMAX.Value
         else
            begin
            if mCalcRet_101=1 then
               Tb_Ped02P2BASER_101.Value:=mf_totbru-mf_totdes-Tb_Ped02P2REPAS_101.Value
                                         -Tb_Ped02P2DESCRAT_101.Value
            else
               Tb_Ped02P2BASER_101.Value:=mf_totbru;
            end;
         if Tb_Ped02P2LISTA.Value=2 then
            Tb_Ped02P2BASER_101.Value:=Tb_Ped02P2BASER_101.Value
                                      +(Tb_Ped02P2BASER_101.Value*mIvaNeg_101/100)
         else if Tb_Ped02P2LISTA.Value=1 then
            Tb_Ped02P2BASER_101.Value:=Tb_Ped02P2BASER_101.Value
                                      +(Tb_Ped02P2BASER_101.Value*mIvaPos_101/100)
         else
            Tb_Ped02P2BASER_101.Value:=Tb_Ped02P2BASER_101.Value
                                      +(Tb_Ped02P2BASER_101.Value*mIvaIna_101/100);


         if Tb_Ped02P2TABELA.Value='B' then
            Tb_Ped02P2BASER_101.Value:=Tb_Ped02P2BASER_101.Value -
                                      (Tb_Ped02P2BASER_101.Value*mRedutRB_101/100)
         else
            Tb_Ped02P2BASER_101.Value:=Tb_Ped02P2BASER_101.Value -
                                      (Tb_Ped02P2BASER_101.Value*mRedutRA_101/100);
         Tb_Ped02P2BASER_101.Value:=arredonda(Tb_Ped02P2BASER_101.Value,DM1.Tb_PargerPCASAS.AsInteger);
         if mAliqDeb_101=0 then
            Tb_Ped02P2BASER_101.Value:=0;
         if Tb_Ped02P2BASER_101.Value<>0 then
            begin
            Tb_Ped02P2ICMSR_101.Value:=Tb_Ped02P2BASER_101.Value*mAliqDeb_101/100;
            mf_IcmsCred:=mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT_101.Value
                        -Tb_Ped02P2REPAS_101.Value+Tb_Ped02P2ACRERAT_101.Value;
            Tb_Ped02P2BCINR_101.Value :=mf_IcmsCred;
            Tb_Ped02P2ICMSNR_101.Value:=Tb_Ped02P2ICMSNR_101.Value*mf_AliqNR/100;
            mf_IcmsCred:=mf_IcmsCred*mIcmsC_101/100;
            Tb_Ped02P2ICMSR_101.Value:=Tb_Ped02P2ICMSR_101.Value-mf_IcmsCred;
            Tb_Ped02P2ICMSR_101.Value:=arredonda(Tb_Ped02P2ICMSR_101.Value,DM1.Tb_PargerPCASAS.AsInteger);
            if Tb_Ped02P2ICMSR_101.Value<0 then
               Tb_Ped02P2ICMSR_101.Value:=0;
            end;
         end
      else if Tb_Ped02P2SIT.Value[2]='4' then
         begin
         Tb_Ped02P2ISENTAS_101 .Value:=mf_totbru-mf_totdes-Tb_Ped02P2REPAS_101.Value-
                                  Tb_Ped02P2DESCRAT_101.Value+Tb_Ped02P2ACRERAT_101.Value;
         Tb_Ped02P2ISENTAS_101.Value:=arredonda(Tb_Ped02P2ISENTAS_101.Value,DM1.Tb_PargerPCASAS.AsInteger);
         end;
      if Tb_Ped02P2SIT.Value[2]='4' then
         begin
         Tb_Ped02P2BASEN_101.Value:=0;
         Tb_Ped02P2ICMSN_101.Value:=0;
         end
      else if (DM1.Tb_CliCICMSNOR.Value<>1) and not (Tb_Ped02P2SIT.Value[2] in ['1','4','6'])  then
         begin
         Tb_Ped02P2BASEN_101.Value:=mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT_101.Value
                                   -Tb_Ped02P2REPAS_101.Value+Tb_Ped02P2ACRERAT_101.Value;
         Tb_Ped02P2BASEN_101.Value:=arredonda(Tb_Ped02P2BASEN_101.Value,DM1.Tb_PargerPCASAS.AsInteger);
         if Tb_Ped02P2SIT.Value[2] in ['1','6'] then
            begin
            Tb_Ped02P2ICMSNR_101.Value:=0;
            end
         else if DM1.Tb_CliCREDICMSNOR.Value<>1 then
            begin
            if Tb_Ped02P2TABELA.Value='B' then
               begin
               if (mRedutNB_101>0) Then
                  begin
                  mf_redut:=Arredonda(Tb_Ped02P2BASEN_101.Value*mRedutNB_101/100, DM1.Tb_PargerPCASAS.AsInteger);
                  Tb_Ped02P2BASEN_101.Value:=Tb_Ped02P2BASEN_101.Value-mf_redut;
                  end;
               end
            else
               begin
               if (mRedutNA_101>0) Then
                  begin
                  mf_redut:=Arredonda(Tb_Ped02P2BASEN_101.Value*mRedutNA_101/100,DM1.Tb_PargerPCASAS.AsInteger);
                  Tb_Ped02P2BASEN_101.Value:=Tb_Ped02P2BASEN_101.Value-mf_redut;
                  end;
               end;
            end;
         Tb_Ped02P2ICMSN_101.Value:=Arredonda(Tb_Ped02P2BASEN.Value*mf_Aliq/100,DM1.Tb_PargerPCASAS.AsInteger);
         Tb_Ped02P2ICMSNR_101.Value:=Arredonda(Tb_Ped02P2BCINR_101.Value*mf_AliqNR/100,DM1.Tb_PargerPCASAS.AsInteger);
         end
      else if (Tb_Ped02P2SIT.Value[2] in ['1','6']) and (DM1.Tb_CliCICMSTP.Value=1) then
         begin
         Tb_Ped02P2BCINR_101.Value:=mf_totbru-mf_totdes-Tb_Ped02P2REPAS_101.Value
                                   -Tb_Ped02P2DESCRAT_101.Value
                                   +Tb_Ped02P2ACRERAT_101.Value;
         Tb_Ped02P2BCINR_101.Value:=Arredonda(Tb_Ped02P2ICMSNR_101.Value, DM1.Tb_PargerPCASAS.AsInteger);
         Tb_Ped02P2ICMSNR_101.Value:=Arredonda(Tb_Ped02P2BCINR_101.Value*mf_AliqNR/100,DM1.Tb_PargerPCASAS.AsInteger);
         end;
      if Tb_Ped02P2SIT.Value[2] in ['1','6'] then
         Tb_Ped02P2CFO.Value:=mCfo_Ret_101
      else
         Tb_Ped02P2CFO.Value:=mCfo_Nor_101;
      end
   else
      begin
      Tb_Ped02P2VALIPI_101.Value :=0;
      Tb_Ped02P2BCINR_101.Value  :=0;
      Tb_Ped02P2ICMSNR_101.Value :=0;
      Tb_Ped02P2BASER_101.Value  :=0;
      Tb_Ped02P2ICMSR_101.Value  :=0;
      Tb_Ped02P2BCINR_101.Value  :=0;
      Tb_Ped02P2ICMSNR_101.Value :=0;
      Tb_Ped02P2ISENTAS_101.Value:=0;
      Tb_Ped02P2BASEN_101.Value:=0;
      Tb_Ped02P2ICMSN_101.Value:=0;
      Tb_Ped02P2TOTOUT_101.Value :=(mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT_101.Value
                                   -Tb_Ped02P2REPAS_101.Value
                                   +Tb_Ped02P2ACRERAT_101.Value)-Tb_Ped02P2BASEN.Value;
      end;

   Tb_Ped02P2ACREGER_101.Value:=Arredonda( (mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT_101.Value
                                    -Tb_Ped02P2REPAS_101.Value
                                   +Tb_Ped02P2ACRERAT_101.Value)* pAcreGer /100 , DM1.Tb_PargerPCASAS.Asinteger);

   Tb_Ped02P2ACRECONV_101.Value:=Arredonda( (mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT_101.Value
                                    -Tb_Ped02P2REPAS_101.Value
                                   +Tb_Ped02P2ACRERAT_101.Value)* pAcreConv /100 , DM1.Tb_PargerPCASAS.Asinteger);
   end
else
   begin
//inicio de zerar variaves
   Tb_Ped02P2QTD_101.Value     :=0;
   Tb_Ped02P2VALDES_101.Value  :=0;
   Tb_Ped02P2TOTDES_101.Value  :=0;
   Tb_Ped02P2DESCRAT_101.Value :=0;
   Tb_Ped02P2REPAS_101.Value   :=0;
   Tb_Ped02P2VALIPI_101.Value  :=0;
   Tb_Ped02P2BCINR_101.Value   :=0;
   Tb_Ped02P2VALIPI_101.Value  :=0;
   Tb_Ped02P2BCINR_101.Value   :=0;
   Tb_Ped02P2ICMSNR_101.Value  :=0;
   Tb_Ped02P2BASER_101.Value   :=0;
   Tb_Ped02P2ICMSR_101.Value   :=0;
   Tb_Ped02P2BCINR_101.Value   :=0;
   Tb_Ped02P2ICMSNR_101.Value  :=0;
   Tb_Ped02P2ISENTAS_101.Value :=0;
   Tb_Ped02P2BASEN_101.Value   :=0;
   Tb_Ped02P2ICMSN_101.Value   :=0;
   Tb_Ped02P2TOTOUT_101.Value  :=0;
   Tb_Ped02P2ACREGER_101.Value :=0;
   Tb_Ped02P2ACRECONV_101.Value:=0;
   end;

// INICIO DO CALCULO
if ((Tb_Ped02P2QTD.AsFloat-Tb_Ped02P2QTD_101.AsFloat)>0) or
   ( (Tb_Ped02P2QTD.AsFloat<>0) and (mformace=1)) then
   begin
   if mFormace=1 then
      mf_totbru:=(Tb_Ped02P2QTD.Value)*(Tb_Ped02P2PRECO.Value-Tb_Ped02P2PRECO_101.Value)
   else
      mf_totbru:=(Tb_Ped02P2QTD.Value-Tb_Ped02P2QTD_101.Value)*Tb_Ped02P2PRECO.Value;
   mf_totdes:=Tb_Ped02P2VALDES.Value-Tb_Ped02P2VALDES_101.Value;
   if Tb_Ped02P2DESC1.AsFloat<>0 then
      mf_totdes:=mf_totdes + Arredonda( ((mf_totbru-mf_totdes)*Tb_Ped02P2DESC1.Value/100) , 2);
   if Tb_Ped02P2DESC2.AsFloat<>0 then
      mf_totdes:=mf_totdes + Arredonda( ((mf_totbru-mf_totdes)*Tb_Ped02P2DESC2.Value/100) , 2);

   if Tb_Ped02P2DESC3.AsFloat<>0 then
      mf_totdes:=mf_totdes + Arredonda( ((mf_totbru-mf_totdes)*Tb_Ped02P2DESC3.Value/100) , 2);
   Tb_Ped02P2TOTDES.Value:=mf_totdes;
   mf_DescRat:=0;
   if (ValFloat(VALDES.Text)-mValdes_101)<>0 then
      begin
      mf_DescRat:=((mf_totbru-mf_totdes)*100)/(ValFloat(VALDES.Text)-mValdes_101);
      mf_DescRat:=Arredonda( ((mf_DescRat*mf_DescRat)/100),DM1.Tb_PargerPCASAS.AsInteger );
      end;
   Tb_Ped02P2DESCRAT.Value:=mf_DescRat;
// no caso de haver acrescimos tem que ser corrigido
   if mValAcre_101<>0 then
      begin
      mf_AcreRat:=((mf_totbru-mf_totdes)*100)/mValAcre_101;
      mf_AcreRat:=Arredonda( ((mf_AcreRat*mf_AcreRat)/100),DM1.Tb_PargerPCASAS.AsInteger );
      end;

   Tb_Ped02P2ACRERAT.Value:=mf_AcreRat;
   if mAliqRepas<>0 then
      begin
      Tb_Ped02P2REPAS.Value:=(mf_totbru-mf_totdes-mf_DescRat+mf_AcreRat);
      Tb_Ped02P2REPAS.Value:=Arredonda( (Tb_Ped02P2REPAS.Value*mAliqRepas/100) , DM1.Tb_PargerPCASAS.AsInteger);
      end
   else
      Tb_Ped02P2REPAS.Value:=0;

   if mCalcImp then
      begin
      if Tb_Ped02P2ALIPI.Value<>0 then
         begin
         Tb_Ped02P2VALIPI.Value:=Arredonda( ((mf_totbru-mf_totdes-mf_DescRat+mf_AcreRat-Tb_Ped02P2DESCRAT.Value)
                                     * Tb_Ped02P2ALIPI.Value/100) , DM1.Tb_PargerPCASAS.AsInteger);
         end
      else
         Tb_Ped02P2VALIPI.Value:=0;
      if (Tb_Ped02P2TABELA.Value='B') and (DM1.Tb_CliCALIQB.AsFloat<>0) then
         mf_Aliq:=DM1.Tb_CliCALIQB.Value
      else
         mf_Aliq:=DM1.Tb_CliCALIQA.Value;
      if DM1.Tb_CliCALIQB.AsFloat=0 then
         mf_AliqNR :=DM1.Tb_CliCALIQA.Value
      else
         mf_AliqNR :=DM1.Tb_CliCALIQB.Value;
      Tb_Ped02P2BCINR.Value :=0;
      Tb_Ped02P2ICMSNR.Value:=0;
      mf_Redut:=0;
      if (DM1.Tb_CliCICMSR.Value=1) and (Tb_Ped02P2SIT.Value[2] in ['1','6']) then
         begin
         if mTipCal='S' then
            Tb_Ped02P2BASER.Value:=Tb_Ped02P2QTD.Value*Tb_Ped02P2PCOMAX.Value
         else
            begin
            if mCalcRet=1 then
               Tb_Ped02P2BASER.Value:=mf_totbru-mf_totdes-Tb_Ped02P2REPAS.Value
                                         -Tb_Ped02P2DESCRAT.Value
            else
               Tb_Ped02P2BASER.Value:=mf_totbru;
            end;
         if Tb_Ped02P2LISTA.Value=2 then
            Tb_Ped02P2BASER.Value:=Tb_Ped02P2BASER.Value
                                      +(Tb_Ped02P2BASER.Value*mIvaNeg/100)
         else if Tb_Ped02P2LISTA.Value=1 then
            Tb_Ped02P2BASER.Value:=Tb_Ped02P2BASER.Value
                                      +(Tb_Ped02P2BASER.Value*mIvaPos/100)
         else
            Tb_Ped02P2BASER.Value:=Tb_Ped02P2BASER.Value
                                      +(Tb_Ped02P2BASER.Value*mIvaIna/100);


         if Tb_Ped02P2TABELA.Value='B' then
            Tb_Ped02P2BASER.Value:=Tb_Ped02P2BASER.Value -
                                      (Tb_Ped02P2BASER.Value*mRedutRB/100)
         else
            Tb_Ped02P2BASER.Value:=Tb_Ped02P2BASER.Value -
                                      (Tb_Ped02P2BASER.Value*mRedutRA/100);
         Tb_Ped02P2BASER.Value:=arredonda(Tb_Ped02P2BASER.Value,DM1.Tb_PargerPCASAS.AsInteger);
         if mAliqDeb=0 then
            Tb_Ped02P2BASER.Value:=0;
         if Tb_Ped02P2BASER.Value<>0 then
            begin
            Tb_Ped02P2ICMSR.Value:=Tb_Ped02P2BASER.Value*mAliqDeb/100;
            mf_IcmsCred:=mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT.Value
                        -Tb_Ped02P2REPAS.Value+Tb_Ped02P2ACRERAT.Value;
            Tb_Ped02P2BCINR.Value :=mf_IcmsCred;
            Tb_Ped02P2ICMSNR.Value:=Tb_Ped02P2ICMSNR.Value*mf_AliqNR/100;
            mf_IcmsCred:=mf_IcmsCred*mIcmsC/100;
            Tb_Ped02P2ICMSR.Value:=Tb_Ped02P2ICMSR.Value-mf_IcmsCred;
            Tb_Ped02P2ICMSR.Value:=arredonda(Tb_Ped02P2ICMSR.Value,DM1.Tb_PargerPCASAS.AsInteger);
            if Tb_Ped02P2ICMSR.Value<0 then
               Tb_Ped02P2ICMSR.Value:=0;
            end;
         end
      else if Tb_Ped02P2SIT.Value[2]='4' then
         begin
         Tb_Ped02P2ISENTAS .Value:=mf_totbru-mf_totdes-Tb_Ped02P2REPAS.Value-
                                  Tb_Ped02P2DESCRAT.Value+Tb_Ped02P2ACRERAT.Value;
         Tb_Ped02P2ISENTAS.Value:=arredonda(Tb_Ped02P2ISENTAS.Value,DM1.Tb_PargerPCASAS.AsInteger);
         end;
      if Tb_Ped02P2SIT.Value[2]='4' then
         begin
         Tb_Ped02P2BASEN.Value:=0;
         Tb_Ped02P2ICMSN.Value:=0;
         end
      else if (DM1.Tb_CliCICMSNOR.Value<>1) and not (Tb_Ped02P2SIT.Value[2] in ['1','4','6'])  then
         begin
         Tb_Ped02P2BASEN.Value:=mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT.Value
                                   -Tb_Ped02P2REPAS.Value+Tb_Ped02P2ACRERAT.Value;
         Tb_Ped02P2BASEN.Value:=arredonda(Tb_Ped02P2BASEN.Value,DM1.Tb_PargerPCASAS.AsInteger);
         if Tb_Ped02P2SIT.Value[2] in ['1','6'] then
            begin
            Tb_Ped02P2ICMSNR.Value:=0;
            end
         else if DM1.Tb_CliCREDICMSNOR.Value<>1 then
            begin
            if Tb_Ped02P2TABELA.Value='B' then
               begin
               if (mRedutNB>0) Then
                  begin
                  mf_redut:=Arredonda(Tb_Ped02P2BASEN.Value*mRedutNB/100, DM1.Tb_PargerPCASAS.AsInteger);
                  Tb_Ped02P2BASEN.Value:=Tb_Ped02P2BASEN.Value-mf_redut;
                  end;
               end
            else
               begin
               if (mRedutNA>0) Then
                  begin
                  mf_redut:=Arredonda(Tb_Ped02P2BASEN.Value*mRedutNA/100,DM1.Tb_PargerPCASAS.AsInteger);
                  Tb_Ped02P2BASEN.Value:=Tb_Ped02P2BASEN.Value-mf_redut;
                  end;
               end;
            end;
         Tb_Ped02P2ICMSN.Value:=Arredonda(Tb_Ped02P2BASEN.Value*mf_Aliq/100,DM1.Tb_PargerPCASAS.AsInteger);
         Tb_Ped02P2ICMSNR.Value:=Arredonda(Tb_Ped02P2BCINR.Value*mf_AliqNR/100,DM1.Tb_PargerPCASAS.AsInteger);
         end
      else if (Tb_Ped02P2SIT.Value[2] in ['1','6']) and (DM1.Tb_CliCICMSTP.Value=1) then
         begin
         Tb_Ped02P2BCINR.Value:=mf_totbru-mf_totdes-Tb_Ped02P2REPAS.Value
                                   -Tb_Ped02P2DESCRAT.Value
                                   +Tb_Ped02P2ACRERAT.Value;
         Tb_Ped02P2BCINR.Value:=Arredonda(Tb_Ped02P2ICMSNR.Value, DM1.Tb_PargerPCASAS.AsInteger);
         Tb_Ped02P2ICMSNR.Value:=Arredonda(Tb_Ped02P2BCINR.Value*mf_AliqNR/100,DM1.Tb_PargerPCASAS.AsInteger);
         end;
      if Tb_Ped02P2SIT.Value[2] in ['1','6'] then
         Tb_Ped02P2CFO.Value:=mCfo_Ret
      else
         Tb_Ped02P2CFO.Value:=mCfo_Nor;
      end
   else
      begin
      Tb_Ped02P2VALIPI.Value :=0;
      Tb_Ped02P2BCINR.Value  :=0;
      Tb_Ped02P2ICMSNR.Value :=0;
      Tb_Ped02P2BASER.Value  :=0;
      Tb_Ped02P2ICMSR.Value  :=0;
      Tb_Ped02P2BCINR.Value  :=0;
      Tb_Ped02P2ICMSNR.Value :=0;
      Tb_Ped02P2ISENTAS.Value:=0;
      Tb_Ped02P2BASEN.Value:=0;
      Tb_Ped02P2ICMSN.Value:=0;
      Tb_Ped02P2TOTOUT.Value :=(mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT.Value
                                   -Tb_Ped02P2REPAS.Value
                                   +Tb_Ped02P2ACRERAT.Value)-Tb_Ped02P2BASEN.Value;
      end;

   Tb_Ped02P2ACREGER.Value:=Arredonda( (mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT.Value
                                    -Tb_Ped02P2REPAS.Value
                                   +Tb_Ped02P2ACRERAT.Value)* pAcreGer /100 , DM1.Tb_PargerPCASAS.Asinteger);

   Tb_Ped02P2ACRECONV.Value:=Arredonda( (mf_totbru-mf_totdes-Tb_Ped02P2DESCRAT.Value
                                    -Tb_Ped02P2REPAS.Value
                                   +Tb_Ped02P2ACRERAT.Value)* pAcreConv /100 , DM1.Tb_PargerPCASAS.Asinteger);
   end
else
   begin
//inicio de zerar variaves
   Tb_Ped02P2VALDES.Value  :=0;
   Tb_Ped02P2TOTDES.Value  :=0;
   Tb_Ped02P2DESCRAT.Value :=0;
   Tb_Ped02P2REPAS.Value   :=0;
   Tb_Ped02P2VALIPI.Value  :=0;
   Tb_Ped02P2BCINR.Value   :=0;
   Tb_Ped02P2VALIPI.Value  :=0;
   Tb_Ped02P2BCINR.Value   :=0;
   Tb_Ped02P2ICMSNR.Value  :=0;
   Tb_Ped02P2BASER.Value   :=0;
   Tb_Ped02P2ICMSR.Value   :=0;
   Tb_Ped02P2BCINR.Value   :=0;
   Tb_Ped02P2ICMSNR.Value  :=0;
   Tb_Ped02P2ISENTAS.Value :=0;
   Tb_Ped02P2BASEN.Value   :=0;
   Tb_Ped02P2ICMSN.Value   :=0;
   Tb_Ped02P2TOTOUT.Value  :=0;
   Tb_Ped02P2ACREGER.Value :=0;
   Tb_Ped02P2ACRECONV.Value:=0;
   end;


// TERMINO DO CALCULO
result:=true;
end;


procedure TFrm_Ped_AutoP.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Ven, Frm_Ven);
   Frm_Ven.Edit1.Text:=key;
   Frm_Ven.BBnAtu.Click;
   Frm_Ven.Edit1.SelStart:=1;
   Frm_Ven.Edit1.SelLength:=1;
   Frm_Ven.PC1.ActivePage:=Frm_Ven.tsTab;
   ven_ori:='Frm_Ped_AutoP';
   if Frm_Ven.ShowModal=mrok then
      begin
      CODVEN.Text :=DM1.Tb_VenVCODVEN.AsString;
      end;
   Frm_Ven.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Ped_AutoP.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum(CODVEN.Text);
if trim(CODVEN.Text)='' then
   exit;

CODVEN.Text:=fdeixanum(CODVEN.Text);

if not flcadven(1,0,CODVEN.Text) then
   begin
   verteclado(0);
   MessageDlg('Vendedor não Cadastrado!',mtWarning,[mbOk],0);
   CODVEN.SetFocus;
   end
else
   NOMVEN.Text:=DM1.Tb_VenVNOME.Value;

if (ant_integer<>0) and (ant_integer<>Valint(CODVEN.Text)) then
   begin
   if not fValidaSenha(codusr,35,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Codigo do Vendedor','') then
      begin
      verteclado(0);
      MessageDlg('Alteração não Aceita!',mtWarning,[mbOk],0);
      CODVEN.Text:=IntToStr(ant_integer);
      CODVEN.SetFocus;
      exit;
      end;
   verteclado(0);
   MessageDlg('O Pedido poderá ter seus valores alterados',mtWarning,[mbOk],0);
   fped01reatribuir(0);
   ant_integer:=ValInt(CODVEN.Text);
   end;
end;

procedure TFrm_Ped_AutoP.CB_TABPVExit(Sender: TObject);
begin

if CB_TABPV.ItemIndex<0 then
   with CB_TABPV do ItemIndex:=items.IndexOf(CB_TABPV.Text);
CB_TABPV.text:=CB_TABPV.Items.Strings[CB_TABPV.ItemIndex];
if trim(CB_TABPV.Text)='' then
   exit;
if (CB_TABPV.Text<>'AV') and
   (CB_TABPV.Text<>'AP') and
   (CB_TABPV.Text<>'PP') and
   (CB_TABPV.Text<>'CV') and
   (CB_TABPV.Text<>'PO') then
   begin
   verteclado(0);
   MessageDlg('Tabelas Válidas "AV","AP","PP","PO","CV"',mtWarning,[mbok],0);
   exit;
   end;
if CB_TABPV.Text='PO' then
   CODPV.Text:='99';
if not CODPV.Focused then
   begin
   if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
      begin
      NOMPV.Text:='Plano Opcional(Digitado)';
      Frm_PvO.ShowModal;
      mpvtdc       := Frm_PVO.RG_TDC.ItemIndex;
      mpvtc        := Frm_PVO.RG_TC.ItemIndex;
      mpvtpd1      := Frm_PVO.RG_TPD1.ItemIndex;
      mpvtpd2      := Frm_PVO.RG_TPD2.ItemIndex;
      mpvtpd3      := Frm_PVO.RG_TPD3.ItemIndex;
      mpvtpdesf    := Frm_PVO.RG_TPDESF.ItemIndex;
      mtpp         := Frm_PVO.RG_TPP.ItemIndex;
      mpvcom       := valfloat(Frm_PVO.COM.Text);
      mpvcom02     := ValFloat(Frm_PVO.COM02.Text);
      mpvcom03     := ValFloat(Frm_PVO.COM03.Text);
      mpvcom04     := 0;
      mpvactd      := valfloat(Frm_PVO.ACTD.Text);
      mpvact00     := valfloat(Frm_PVO.ACT00.Text);
      mpvact01     := ValFloat(Frm_PVO.ACT01.Text);
      mpvact99     := ValFloat(Frm_PVO.ACT99.Text);
      mpvdes       := ValFloat(Frm_PVO.DES.Text);
      mpvdes1      := ValFloat(Frm_PVO.DES1.Text);
      mpvdes2      := ValFloat(Frm_PVO.DES2.Text);
      mpvdes3      := ValFloat(Frm_PVO.DES3.Text);
      mpvdescf     := ValFloat(Frm_PVO.DESCF.Text);
      mpvddescf    := Frm_PVO.RG_DDESCF.ItemIndex;
      mpvdiasdescf := StrToInt('0'+Trim(Frm_PVO.DIASDESCF.Text));
      end
   else
      begin
      flcadpv(1,0,CB_TABPV.Text,CODpv.Text);
      if DM1.Tb_PV.Eof then
         begin
         verteclado(0);
         MessageDlg('Plano de Vendas não Cadastrado',mtWarning,[mbOk],0);
         CB_TABPV.SetFocus;
         end
      else
         begin
         mpacreconv:=0;
         if CB_TABPV.Text='CV' then
            begin
            if DM1.Tb_CliCCODCV.Value<=0 then
               begin
               verteclado(0);
               MessageDlg('Cliente não Possui Convênio!',mtWarning,[mbOk],0);
               CB_TABPV.SetFocus;
               exit;
               end;
            if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
               mpacreconv:=DM1.Query1.Fields[1].AsFloat;
            end;
         NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
         mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
         mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
         mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
         mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
         mpvtpd3      := DM1.Tb_PVPVTPD3.AsInteger;
         mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
         mtpp         := DM1.Tb_PVPVTPP.AsInteger;
         mpvcom       := DM1.Tb_PVPVCOM.Value;
         mpvcom02     := DM1.Tb_PVPVCOM02.Value;
         mpvcom03     := DM1.Tb_PVPVCOM03.Value;
         mpvcom04     := 0;
         mpvactd      := DM1.Tb_PVPVACTD.Value;
         mpvact00     := DM1.Tb_PVPVACT00.Value;
         mpvact01     := DM1.Tb_PVPVACT01.Value;
         mpvact99     := DM1.Tb_PVPVACT99.Value;
         mpvdes       := DM1.Tb_PVPVDES.Value;
         mpvdes1      := DM1.Tb_PVPVDES1.Value;
         mpvdes2      := DM1.Tb_PVPVDES2.Value;
         mpvdes3      := DM1.Tb_PVPVDES3.Value;
         mpvdescf     := DM1.Tb_PVPVDESCF.Value;
         mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
         mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
         Frm_PVO.Tb_Po99.Close;
         Frm_PVO.Tb_Po99.SQL.Clear;
         Frm_PVO.Tb_Po99.SQL.add('Select PV2CODEMP as POCODEMP, '
                                +' PV2PRAZO as POPRAZO from CADPV2 '
                                +' where '
                                +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                                +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                                +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                               +' order by PV2PRAZO');
         Frm_PVO.Tb_Po99.Open;
         end;
      if DM1.Tb_PVPVBLQPRM.AsInteger=1 then
         CB_BLQPRM.Checked:=false;
      end;
   if mpvtdc=0 then
      DESC01.Text:=FormatFloat(mcasas, mpvdes)
   else if mpvtdc=1 then
      DESC01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);
   if mpvtc=5 then
      begin
      DBG_Mercad.Columns[mColComis].ReadOnly     :=false;
      DBG_Servicos.Columns[mColCom_Serv].ReadOnly:=false;
      end
   else
      begin
      DBG_Mercad.Columns[mColComis].ReadOnly     :=true;
      DBG_Servicos.Columns[mColCom_Serv].ReadOnly:=true;
      end;
   if (ant_codpv<>'') and
      (trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text))<>ant_codpv) then
      begin
       if not fValidaSenha(codusr,32,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Plano de Vendas Padrão','') then
         begin
         verteclado(0);
         MessageDlg('Alteração não Aceita!',mtWarning,[mbOk],0);
         CB_TABPV.Text:=copy(ant_codpv,1,2);
         CB_TABPV.SetFocus;
         exit;
         end;
      ant_codpv:=Trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text));
      verteclado(0);
      MessageDlg('O Pedido poderá ter seus valores alterados',mtWarning,[mbOk],0);
      fped01reatribuir(0);
      ant_codpv:=trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text));
      end;
  end;


end;

procedure TFrm_Ped_AutoP.CB_TABPVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   Application.CreateForm(Tfrm_Pv, Frm_Pv);
   Frm_Pv.Edit1.Text:='';
   Frm_Pv.BBnAtu.Click;
   Frm_Pv.Edit1.SelStart:=1;
   Frm_Pv.Edit1.SelLength:=1;
   Frm_Pv.PC1.ActivePage:=Frm_PV.tsTab;
   pv_ori:='Frm_Ped_AutoP';
   if Frm_Pv.ShowModal=mrok then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.Value;
      CODPV.Text   :=DM1.Tb_PVPVCODPV.AsString;
      end;
   Frm_Pv.Free;
   end;


end;

procedure TFrm_Ped_AutoP.CODPVExit(Sender: TObject);
begin
CODPV.Text:=fdeixanum2(CODPV.Text);
if (trim(CODPV.Text)='') or (trim(CB_TABPV.Text)='') then
   exit;
if (CB_TABPV.Text='PO') and (CODPV.Text='99') then
   begin
   NOMPV.Text:='Plano Opcional(Digitado)';
   Frm_PvO.ShowModal;
   mpvtdc       := Frm_PVO.RG_TDC.ItemIndex;
   mpvtc        := Frm_PVO.RG_TC.ItemIndex;
   mpvtpd1      := Frm_PVO.RG_TPD1.ItemIndex;
   mpvtpd2      := Frm_PVO.RG_TPD2.ItemIndex;
   mpvtpd3      := Frm_PVO.RG_TPD3.ItemIndex;
   mpvtpdesf    := Frm_PVO.RG_TPDESF.ItemIndex;
   mtpp         := Frm_PVO.RG_TPP.ItemIndex;
   mpvcom       := valfloat(Frm_PVO.COM.Text);
   mpvcom02     := ValFloat(Frm_PVO.COM02.Text);
   mpvcom03     := ValFloat(Frm_PVO.COM03.Text);
   mpvcom04     := 0;
   mpvactd      := valfloat(Frm_PVO.ACTD.Text);
   mpvact00     := valfloat(Frm_PVO.ACT00.Text);
   mpvact01     := ValFloat(Frm_PVO.ACT01.Text);
   mpvact99     := ValFloat(Frm_PVO.ACT99.Text);
   mpvdes       := ValFloat(Frm_PVO.DES.Text);
   mpvdes1      := ValFloat(Frm_PVO.DES1.Text);
   mpvdes2      := ValFloat(Frm_PVO.DES2.Text);
   mpvdes3      := ValFloat(Frm_PVO.DES3.Text);
   mpvdescf     := ValFloat(Frm_PVO.DESCF.Text);
   mpvddescf    := Frm_PVO.RG_DDESCF.ItemIndex;
   mpvdiasdescf := StrToInt('0'+Trim(Frm_PVO.DIASDESCF.Text));
   end
else
   begin
   if not flcadpv(1,0,CB_TABPV.Text,CODpv.Text) then
      begin
      verteclado(0);
      MessageDlg('Plano de Vendas não Cadastrado',mtWarning,[mbOk],0);
      CB_TABPV.SetFocus;
      exit;
      end
   else
      begin
      mpacreconv:=0;
      if CB_TABPV.Text='CV' then
         begin
         if DM1.Tb_CliCCODCV.Value<=0 then
            begin
            verteclado(0);
            MessageDlg('Cliente não Possui Convênio!',mtWarning,[mbOk],0);
            CB_TABPV.SetFocus;
            exit;
            end;
         if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
            mpacreconv:=DM1.Query1.Fields[1].AsFloat;
         end;
      NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
      mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
      mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
      mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
      mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
      mpvtpd3      := DM1.Tb_PVPVTPD3.AsInteger;
      mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
      mtpp         := DM1.Tb_PVPVTPP.AsInteger;
      mpvcom       := DM1.Tb_PVPVCOM.Value;
      mpvcom02     := DM1.Tb_PVPVCOM02.Value;
      mpvcom03     := DM1.Tb_PVPVCOM03.Value;
      mpvcom04     := 0;
      mpvactd      := DM1.Tb_PVPVACTD.Value;
      mpvact00     := DM1.Tb_PVPVACT00.Value;
      mpvact01     := DM1.Tb_PVPVACT01.Value;
      mpvact99     := DM1.Tb_PVPVACT99.Value;
      mpvdes       := DM1.Tb_PVPVDES.Value;
      mpvdes1      := DM1.Tb_PVPVDES1.Value;
      mpvdes2      := DM1.Tb_PVPVDES2.Value;
      mpvdes3      := DM1.Tb_PVPVDES2.Value;
      mpvdescf     := DM1.Tb_PVPVDESCF.Value;
      mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
      mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
      Frm_PVO.Tb_Po99.Close;
      Frm_PVO.Tb_Po99.SQL.Clear;
      Frm_PVO.Tb_Po99.SQL.add('Select PV2CODEMP as POCODEMP, '
                             +' PV2PRAZO as POPRAZO from CADPV2 '
                             +' where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                             +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                             +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                             +' order by PV2PRAZO');
      Frm_PVO.Tb_Po99.Open;
      if DM1.Tb_PVPVBLQPRM.AsInteger=1 then
         CB_BLQPRM.Checked:=false;
      end;
   end;
if (ant_codpv<>'') and
   (trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text))<>ant_codpv) then
   begin
   if not fValidaSenha(codusr,32,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Plano de Vendas Padrão','') then
      begin
      verteclado(0);
      MessageDlg('Alteração não Aceita!',mtWarning,[mbOk],0);
      CB_TABPV.Text:=copy(ant_codpv,1,2);
      CODPV.Text   :=copy(ant_codpv,3,length(ant_codpv)-2);
      CB_TABPV.SetFocus;
      exit;
      end;
   ant_codpv:=Trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text));
   verteclado(0);
   MessageDlg('O Pedido poderá ter seus valores alterados',mtWarning,[mbOk],0);
   fped01reatribuir(0);
   ant_codpv:=trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text));
   end;

if mpvtdc=0 then
   DESC01.Text:=FormatFloat(mcasas, mpvdes)
else if mpvtdc=1 then
   DESC01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);
if mpvtc=5 then
   begin
   DBG_Mercad.Columns[mColComis].ReadOnly     :=false;
   DBG_Servicos.Columns[mColCom_Serv].ReadOnly:=false;
   end
else
   begin
   DBG_Mercad.Columns[mColComis].ReadOnly     :=true;
   DBG_Servicos.Columns[mColCom_Serv].ReadOnly:=true;
   end;
fPed01tarban(0);

end;

procedure TFrm_Ped_AutoP.Tool_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_AutoP.DESC01Exit(Sender: TObject);
begin
if (ValFloat(DESC01.Text)>99) or (ValFloat(DESC01.Text)<0) then
   begin
   verteclado(0);
   MessageDlg('Desconto Inválido!',mtWarning,[mbOK],0);
   DESC01.SetFocus;
   exit;
   end;
DESC01.Text:=FormatFloat(mcasas,valfloat(DESC01.Text));
Tool_Calcular.Click;


if (DM4.Tb_Par01PDESCMP0.Value>0) and (ValFloat(DESC01.Text)>0)  then
   begin
   if (ValFloat(TOTDES.Caption)>0) then
      mpdesc:=(ValFloat(TOTDES.Caption)*100)/ValFloat(TOTAL.Caption)
   else
      begin
      mpdesc:=valFloat(DESC01.Text)+ValFloat(DESC02.Text);
      end;
   if (mpdesc>DM4.Tb_Par01PDESCMP0.Value) and (mpdesc>mlib_mPDescLib) then
      begin
      if fValidaSenha(codusr,2,0,DM1.Tb_CliCCODCLI.Value,0,0,0,'% Desconto maior que o permitido. Para continuar digite a senha','') then
         mlib_mPDescLib:=mpdesc
      else
         DESC01.Text:=FormatFloat(mcasas, mdescant);
      end;
   end;
end;

procedure TFrm_Ped_AutoP.VALDESExit(Sender: TObject);
begin
VALDES.Text:=insere(FormatFloat(mcasas,ValFloat(VALDES.Text)),' ',pspapco);
Tool_Calcular.Click;
if (ValFloat(VALDES.Text)>0) and (ValFloat(TOTAL.Caption)<=0) then
   begin
   verteclado(0);
   MessageDlg('O Valor do Pedido não Pode ser Zero ou Negativo. Desconto Inválido!',mtWarning,[mbOk],0);
   VALDES.Text:=FormatFloat(mcasas, ValFloat(VALDES.Text));
   VALDES.SetFocus;
   end
else
   begin
   if (DM4.Tb_Par01PDESCMP0.Value>0) and (ValFloat(VALDES.Text)>0) then
      begin
      if (ValFloat(TOTDES.Caption)>0) then
         mpdesc:=(ValFloat(TOTDES.Caption)*100)/ValFloat(TOTAL.Caption)
      else
         begin
         mpdesc:=valFloat(DESC01.Text)+ValFloat(DESC02.Text);
         end;
      if (mpdesc>DM4.Tb_Par01PDESCMP0.Value) and (mpdesc>mlib_mPDescLib) then
         begin
         if fValidaSenha(codusr,2,0,DM1.Tb_CliCCODCLI.Value,0,0,0,'% Desconto maior que o permitido. Para continuar digite a senha','') then
            mlib_mPDescLib:=mpdesc
         else
            VALDES.Text:=FormatFloat(mcasas, mdescant);
         end;
      end;
   end;
mValdes_101:=fPed01Div_ValDesc(0,0,valfloat(VALDES.text),mpund);

end;

procedure TFrm_Ped_AutoP.spb_consproClick(Sender: TObject);
begin
if panel_conspro.Visible then
   begin
   spb_conspro.Caption:='(+)';
   panel_conspro.Visible:=false;
   end
else
   begin
   spb_conspro.Caption:='(-)';
   panel_conspro.Visible:=true;
   end;

end;

procedure TFrm_Ped_AutoP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Frm_PVO.Free;
end;

procedure TFrm_Ped_AutoP.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(TFrm_TipPro, Frm_TipPro);
   Frm_TipPro.Edit1.Text:=key;
   Frm_TipPro.BBnAtu.Click;
   Frm_TipPro.Edit1.SelStart:=1;
   Frm_TipPro.Edit1.SelLength:=1;
   Frm_TipPro.PC1.ActivePageIndex:=1;
   tip_ori:='Frm_ConsPro_AutoP';
   if Frm_TipPro.ShowModal=mrOk then
      begin
      CODTIP.Text:=DM1.Tb_TproTCODTIP.AsString;
      end;
   Frm_TipPro.Free;
   key:=#0;
   end;

end;

procedure TFrm_Ped_AutoP.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);

if Trim(CODTIP.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      NOMTIP.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      MessageDlg('Tipo de Produto não Cadastrado!',mtWarning,[mbOk],0);
      CODTIP.SetFocus;
      end;
   end
else
   NOMTIP.Text:='';
flcadpro_ConsPro_AP(0,1,0,CONTEUDO.Text,trim(CODTIP.Text),Trim(ANO.Text),'');



end;

procedure TFrm_Ped_AutoP.ANOKeyPress(Sender: TObject; var Key: Char);
begin
ANO.Text:=fdeixanum2(ANO.Text);
end;

procedure TFrm_Ped_AutoP.CONTEUDOChange(Sender: TObject);
begin
flcadpro_ConsPro_AP(0,1,0,CONTEUDO.Text,trim(CODTIP.Text),Trim(ANO.Text),'');

end;

function flcadpro_ConsPro_AP(pTipo,pPre,pCodEmp:Integer;pCampo,pCodtip,pAno,pCodGru: String):Boolean;
var
mGrupo_Inst: String;
begin
Frm_Ped_AutoP.Tb_Pro.Close;
Frm_Ped_AutoP.Tb_Pro.SQL.Clear;
Frm_Ped_AutoP.Tb_Pro.SQL.Add('Select PDNOME,');
mgrupo_inst:=' PDNOME ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDNOME2,');
mgrupo_inst:=mgrupo_inst+',PDNOME2 ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDMARCA,');
mgrupo_inst:=mgrupo_inst+',PDMARCA ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDCODPRO,');
mgrupo_inst:=mgrupo_inst+',PDCODPRO ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDCODBAR,');
mgrupo_inst:=mgrupo_inst+',PDCODBAR ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDCODFOR,');
mgrupo_inst:=mgrupo_inst+',PDCODFOR ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDNOMFOR,');
mgrupo_inst:=mgrupo_inst+',PDNOMFOR ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDCODFAB,');
mgrupo_inst:=mgrupo_inst+',PDCODFAB ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDPRECO1,');
mgrupo_inst:=mgrupo_inst+',PDPRECO1 ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDPRECO2,');
mgrupo_inst:=mgrupo_inst+',PDPRECO2 ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDPRECO3,');
mgrupo_inst:=mgrupo_inst+',PDPRECO3 ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDCODGRU,');
mgrupo_inst:=mgrupo_inst+',PDCODGRU ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDNOMGRU,');
mgrupo_inst:=mgrupo_inst+',PDNOMGRU ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDUND,');
mgrupo_inst:=mgrupo_inst+',PDUND ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDSECAO,');
mgrupo_inst:=mgrupo_inst+',PDSECAO ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDSALDO,');
mgrupo_inst:=mgrupo_inst+',PDSALDO ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDSALDOC,');
mgrupo_inst:=mgrupo_inst+',PDSALDOC ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDSALDOR,');
mgrupo_inst:=mgrupo_inst+',PDSALDOR ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDSALDOT,');
mgrupo_inst:=mgrupo_inst+',PDSALDOT ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDDTULTSAI,');
mgrupo_inst:=mgrupo_inst+',PDDTULTSAI ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       PDDTULTENT');
mgrupo_inst:=mgrupo_inst+',PDDTULTENT ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       ,PDSTATUS');
mgrupo_inst:=mgrupo_inst+',PDSTATUS ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       ,PDNIVEL');
mgrupo_inst:=mgrupo_inst+',PDNIVEL ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       ,PDSIT');
mgrupo_inst:=mgrupo_inst+',PDSIT ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       ,PDPRAT');
mgrupo_inst:=mgrupo_inst+',PDPRAT ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       ,PDLADO');
mgrupo_inst:=mgrupo_inst+',PDLADO ';
Frm_Ped_AutoP.Tb_Pro.SQL.Add('       ,PDRUA');
mgrupo_inst:=mgrupo_inst+',PDRUA ';
mcinst:=' where ';
la_instrucao:='';
if (pCodtip<>'') and (pAno<>'') then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';
   fInnerJoin(1,'CADSGPRO','SGPCODEMP','PDCODEMP','SGPCODPRO','PDCODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADSGPRO_ANO','SGPACODEMP','SGPCODEMP','SGPACODPRO','SGPCODPRO','SGPACODGRU','SGPCODGRU');
   la_instrucao:=la_instrucao+' and SGPCODGRU=0'+Trim(pCodTip);
   la_instrucao:=la_instrucao+' and SGPAANO=0'+Trim(pAno);

   Frm_Ped_AutoP.Tb_Pro.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
   end
else if (pCodtip<>'')  then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';
   fInnerJoin(1,'CADSGPRO','SGPCODEMP','PDCODEMP','SGPCODPRO','PDCODPRO');
   la_instrucao:=la_instrucao+' and SGPCODGRU=0'+Trim(pCodTip);

   Frm_Ped_AutoP.Tb_Pro.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
   end
else if (pAno<>'')  then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';
   fInnerJoin(0,'CADSGPRO','SGPCODEMP','PDCODEMP','SGPCODPRO','PDCODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADSGPRO_ANO','SGPACODEMP','SGPCODEMP','SGPACODPRO','SGPCODPRO','SGPACODGRU','SGPCODGRU');
   la_instrucao:=la_instrucao+' and SGPAANO=0'+Trim(pAno);
   Frm_Ped_AutoP.Tb_Pro.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
   end
else
   begin
   Frm_Ped_AutoP.Tb_Pro.SQL.Add(' from CADPRO ');
   mGrupo_Inst:='';
   end;
if pCodEmp<>0 then
   begin
   Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODEMP=0'+InttoStr(pCodEmp));
   mcinst:=' and ';
   end
else if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODEMP=0'+InttoStr(codemp));
   mcinst:=' and ';
   end;
if trim(pCampo)<>'' then
   begin
   if pTipo=0 then
      begin
      Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDNOME '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if pTipo=1 then
      begin
      Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODPRO=0'+pCampo);
      mcinst:=' and ';
      end;
   if pTipo=2 then
      begin
      Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDNOME2 '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if pTipo=3 then
      begin
      Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODBAR=0'+pCampo);
      mcinst:=' and ';
      end;
   if pTipo=4 then
      begin
      Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDNOMFOR '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if pTipo=5 then
      begin
      Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDMARCA '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if pTipo=6 then
      begin
      Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODFOR '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   end;
if trim(la_instrucao)<>'' then
   begin
   Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+la_instrucao);
   mcinst:=' and ';
   end;
if Trim(pCodGru)<>'' then
   begin
   Frm_Ped_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODGRU=0'+pCodGru);
   mcinst:=' and ';
   end;


if trim(mGrupo_Inst)<>'' then
   Frm_Ped_AutoP.Tb_Pro.SQL.Add(' Group by '+mGrupo_Inst);
Frm_Ped_AutoP.Tb_Pro.SQL.Add(' Order by PDNOME');
try
   Frm_Ped_AutoP.Tb_Pro.Open;
except
   Frm_Ped_AutoP.Tb_Pro.Sql.SaveToFile('C:\SQL.TXT');
   end;

if Frm_Ped_AutoP.Tb_Pro.Eof then
   result:=false
else
   result:=true;
end;

procedure TFrm_Ped_AutoP.Tool_IncluirClick(Sender: TObject);
var
x: Integer;
begin
if DM1.Tb_EmpBLOQ.Value=1 then
   begin
   verteclado(0);
   MessageDlg('Esta Empresa esta com os movimentos de vendas suspensos!',mtWarning,[mbOk],0);
   exit;
   end;
Tool_Limpar.Click;

//FLimparTudo(0);
panel_conspro.Enabled:=true;
ts_principais.Enabled:=true;
ts_outros.Enabled    :=true;
ts_situacao.Enabled  :=true;
Ts_EntregaCob.Enabled:=true;
Ts_ObsVcto.Enabled   :=true;

DBG_Mercad.ReadOnly  :=false;
ITEM_EDITAR.Enabled  :=true;
bbExcItem.Enabled    :=true;
VALFRE.Enabled       :=true;
CB_TIPO.Enabled      :=True;
mItem                :=1;

Tb_Ped02.Close;
Tb_Ped02.SQL.Clear;
Tb_Ped02.SQL.Add('Select * from '+mTabTmp01);
Tb_Ped02.Open;
Tb_Ped02s.Close;
Tb_Ped02s.SQL.Clear;
Tb_Ped02s.SQL.Add('Select * from '+mTabTmp02);
Tb_Ped02s.Open;

if RG_TPPCO.ItemIndex=4 then
   DBG_Mercad.Columns[mColPU].ReadOnly:=false
else
   DBG_Mercad.Columns[mColPU].ReadOnly:=true;

if (pconsemp) and (codemp<100) then
   begin
   SUBMOD.Visible   :=True;
   st_submod.Visible:=True;
   SUBMOD.Enabled   :=True;
   end
else
   begin
   SUBMOD.Visible   :=False;
   st_submod.Visible:=False;
   end;


Tool_Incluir.Enabled   :=False;
tool_localizar.Enabled :=False;
Tool_Alterar.Enabled   :=False;
Tool_Excluir.Enabled   :=False;
Tool_Gravar.Enabled    :=True;
Tool_LSep.Enabled      :=False;
Tool_EmiteNF.Enabled   :=False;
Tool_Calcular.Enabled  :=True;
Tool_Faturar.Enabled   :=False;
Tool_Arredondar.Enabled:=True;
CB_TIPO.Enabled        :=True;
DATAP.Text   :=FormatDatetime(fdt2,date);
moper_ped:=0;
DM4.Qr_Ped01.Close;
DM4.Qr_Ped01.Sql.Clear;
DM4.Qr_Ped01.sQl.add('Select * from CADP01 where P1CODEMP=0');
DM4.Qr_Ped01.Open;
flcadpar01(0,codemp,'1');

if DM1.Tb_PargerPPVPED.Value=1 then
   begin
   if flcadpv(1,0,'AV','01') then
      begin
      CB_TABPV.Text:=DM1.Tb_PVPVCODTIP.Value;
      CODPV.Text   :=DM1.Tb_PVPVCODPV.AsString;
      NOMPV.Text   :=DM1.Tb_PVPVNOME.Value;
      end;
   end;
if DM1.Tb_PargerPVENUSR.Value=1 then
   begin
   CODVEN.Text:=DM4.Tb_UsrCODVEN.AsString;
   flcadven(1,0,CODVEN.Text);
   if DM1.Tb_Ven.Eof then
      CODVEN.Text:=''
   else
      NOMVEN.Text:=DM1.Tb_VenVNOME.Value;
   end;

if DM1.Tb_PargerPCLIPED.Value=1 then
   begin
   CODCLI.Text:='1';
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      DATAP.SetFocus;
      exit;
      end
   else
      begin
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      pldr_nome  :=DM1.Tb_CliCRAZAO.Value;
      flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
      if DM1.Tb_UFPTIPOPC.Value=3 then
         RG_TPPCO.ItemIndex:=DM1.Tb_UFPTIPOPC.AsInteger;
      if RG_TPPCO.ItemIndex=2 then
         DBG_Mercad.Columns[mColpu].ReadOnly:=false
      else
         DBG_Mercad.Columns[mColpu].ReadOnly:=true;
      CODCLI.Update;
      NOMCLI.Update;
      CB_TIPO.Update;
      if (DM1.Tb_CliCCODPV.Value>0) and (ValFloat(CODPV.Text)<=0) then
         begin
         CB_TABPV.Text:=DM1.Tb_CliCTABPV.AsString;
         CODPV.Text   :=DM1.Tb_CliCCODPV.AsString;
         flcadpv(1,0,CB_TABPV.Text,CODpv.Text);
         NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
         CODPV.Update;
         NOMPV.Update;
         end;
      pc_Cabecalho.ActivePage:=ts_principais;
      if Trim(NOMCLI.Text)='' then
         CODCLI.SetFocus
      else if trim(NOMVEN.Text)='' then
         CODVEN.SetFocus
      else if trim(NOMPV.Text)='' then
         CODPV.SetFocus
      else
         begin
         DBG_Mercad.SelectedField:=Tb_Ped02P2CODPRO;
         DBG_Mercad.SetFocus;
         end;
      end;
   end
else
  CODCLI.SetFocus;

CB_TIPO2.ItemIndex  :=DM1.Tb_PargerPTIPPED.AsInteger;
CB_TIPO2.text:=CB_TIPO2.items[CB_TIPO2.itemIndex];
mtipop:=CB_TIPO2.ItemIndex;

with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO2.Text);
CB_TIPO.text:=CB_TIPO.items[CB_TIPO.itemIndex];

if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18) then
   begin
   if valint(copy(mpseg,4,2))=01 then  // lotes de mercadorias
      begin
      for x:=0 to DBG_Mercad.Columns.Count-1 do
         begin
         if uppercase(DBG_Mercad.Columns[x].FieldName)='P2LOTE' then
            DBG_Mercad.Columns[x].Visible:=false
         else if uppercase(DBG_Mercad.Columns[x].FieldName)='P2DTVCTO' then
            DBG_Mercad.Columns[x].Visible:=false;
         end;
      end;
   end;
if mtipop=0 then
   CB_ORCAMENTO.Checked:=true
else
   CB_ORCAMENTO.Checked:=false;
pc_Cabecalho.ActivePage:=ts_principais;
CB_TIPO.Update;
CODDIG.Text        :=IntToStr(codusr);
if flcadusr(1,0,CODDIG.Text) then
   begin
   NOMDIG.Text        :=DM4.Tb_UsrNOMUSR.Value;
   HORDIG.Text        :=FormatDatetime(fhr,time);
   end
else
   begin
   NOMDIG.Text        :='';
   HORDIG.Text        :='/';
   end;


DATAP.Text   :=FormatDatetime(fdt2,date);
DATACHEG.Text:=FormatDatetime(fdt2,date);
HORACHEG.Text:=FormatDateTime('hh:nn', Time);

BlqCalcula_101:=true;


end;

procedure TFrm_Ped_AutoP.Tb_Ped02CalcFields(DataSet: TDataSet);
begin
Tb_Ped02vlr_total.Value:=Tb_Ped02P2QTD.AsFloat*Tb_Ped02P2PRECO.AsFloat;
{
if BlqEventoPed02 then
   exit;
if not Tb_Ped02P2CODPRO.IsNull then
   begin
   if flqr1('PDNOME,PDUND','PD','CADPRO','N','PDCODPRO',Tb_Ped02P2CODPRO.AsString) then
      begin
      Tb_Ped02nompro.Value:=DM1.Query1.Fields[0].AsString;
      Tb_Ped02undpro.Value:=DM1.Query1.Fields[1].AsString;
      end;
   end;
}
end;

procedure TFrm_Ped_AutoP.DBG_MercadColExit(Sender: TObject);
begin
if (Tb_Ped02.State in [dsEdit,dsInsert]) then
   begin
   if (DBG_Mercad.SelectedField=Tb_Ped02P2CODPRO) and not (Tb_Ped02P2CODPRO.IsNull) then
      begin
      if not fDadosPro(moper_item,iif(CB_LEITOR.Checked,1,0),Tb_Ped02P2CODPRO.AsString,
                   Tb_Ped02P2LOTE.AsString,Tb_Ped02P2DTVCTO.AsDateTime) then
         begin
         Tb_Ped02P2CODPRO.Value:=0;
         abort;
         end
      else
         begin
         Tb_Ped02P2SIT.Value   :=FormatFloat('000', fsonumero(DM1.Tb_ProPDSIT.Value));
         Tb_Ped02P2LISTA.Value :=DM1.Tb_ProPDLISTA.Value;
         Tb_Ped02P2TABELA.Value:=DM1.Tb_ProPDTABICM.Value;
         Tb_Ped02P2PCOTAB.Value:=DM1.Tb_ProPDPRECO1.Value;
         Tb_Ped02P2UCPR.Value  :=DM1.Tb_ProPDUCPR.Value;
         Tb_Ped02P2PCOCUS.Value:=DM1.Tb_ProPDPRECOC.Value;
         Tb_Ped02P2PCOMAX.Value:=DM1.Tb_ProPDPMC.Value;
         Tb_Ped02P2CODFAB.Value:=DM1.Tb_ProPDCODFOR.Value;
         Tb_Ped02NOMEPRO.Value :=DM1.Tb_ProPDNOME.Value;
         Tb_Ped02NOMEPRO2.Value:=DM1.Tb_ProPDNOME2.Value;
         Tb_Ped02MARCAPRO.Value:=DM1.Tb_ProPDMARCA.Value;
         Tb_Ped02SECAOPRO.Value:=DM1.Tb_ProPDSECAO.Value;
         if DM1.Tb_CliCIPI.Value=1 then
            Tb_Ped02P2ALIPI.Value :=DM1.Tb_ProPDIPI.Value
          else
            Tb_Ped02P2ALIPI.Value :=0;
         end;
      end
// inicio
   else if (DBG_Mercad.SelectedField=Tb_Ped02P2LOTE) and not (Tb_Ped02P2LOTE.IsNull)
      and not (Tb_Ped02P2CODPRO.IsNull) then
      begin
      if valint(copy(mpseg,4,2))=02 then  // grade cores tamanho
         begin
         if not flcadlgc(1,0,Tb_Ped02P2CODPRO.AsString,Tb_Ped02P2LOTE.AsString,'') then
            begin
            verteclado(0);
            MessageDlg('Grade Nao cadastrada!',mtWarning,[mbOk],0);
            DBG_Mercad.SelectedField:=Tb_Ped02P2LOTE;
            abort;
            end;
         end;   
      if not fDadosPro(moper_item,iif(CB_LEITOR.Checked,1,0),Tb_Ped02P2CODPRO.AsString,
                   Tb_Ped02P2LOTE.AsString,Tb_Ped02P2DTVCTO.AsDateTime) then
         begin
         Tb_Ped02P2CODPRO.Value:=0;
         abort;
         end
      else
         begin
         Tb_Ped02P2SIT.Value   :=FormatFloat('000', fsonumero(DM1.Tb_ProPDSIT.Value));
         Tb_Ped02P2LISTA.Value :=DM1.Tb_ProPDLISTA.Value;
         Tb_Ped02P2TABELA.Value:=DM1.Tb_ProPDTABICM.Value;
         Tb_Ped02P2PCOTAB.Value:=DM1.Tb_ProPDPRECO1.Value;
         Tb_Ped02P2UCPR.Value  :=DM1.Tb_ProPDUCPR.Value;
         Tb_Ped02P2PCOCUS.Value:=DM1.Tb_ProPDPRECOC.Value;
         Tb_Ped02P2PCOMAX.Value:=DM1.Tb_ProPDPMC.Value;
         Tb_Ped02P2CODFAB.Value:=DM1.Tb_ProPDCODFOR.Value;
         Tb_Ped02NOMEPRO.Value :=DM1.Tb_ProPDNOME.Value;
         Tb_Ped02NOMEPRO2.Value:=DM1.Tb_ProPDNOME2.Value;
         Tb_Ped02MARCAPRO.Value:=DM1.Tb_ProPDMARCA.Value;
         Tb_Ped02SECAOPRO.Value:=DM1.Tb_ProPDSECAO.Value;
         if DM1.Tb_CliCIPI.Value=1 then
            Tb_Ped02P2ALIPI.Value :=DM1.Tb_ProPDIPI.Value
          else
            Tb_Ped02P2ALIPI.Value :=0;
         end;
      end
// termino
   else if (DBG_Mercad.SelectedField=Tb_Ped02P2QTD) and not (Tb_Ped02P2QTD.IsNull) then
      begin
      if Tb_Ped02P2QTD.AsFloat<=0 then
         begin
         MessageDlg('Favor Digitar uma Quantidade Válida!',mtWarning,[mbOk],0);
         abort;
         end;
      end;
   end;
end;


function fbuscarPreco(ptipo: Integer): Real;
{
parametros ptipo=0 - Mercadorias
                 1 - serviços
}
begin
mpreco:=0;
if ptipo=0 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      if (Frm_Ped_AutoP.RG_TPPCO.ItemIndex=1) then
         begin
         if DM1.Tb_CliCPCOPRAT.Value=3 then
            begin
            if mdtreaj>=DM1.Tb_LGCCLDTUATP3.Value then
               mpreco:=DM1.Tb_LGCCLPRECOA3.Value
            else
               mpreco:=DM1.Tb_LGCCLPRECO3.Value;
            end
         else if DM1.Tb_CliCPCOPRAT.Value=2 then
            begin
            if mdtreaj>=DM1.Tb_LGCCLDTUATP2.Value then
               mpreco:=DM1.Tb_LGCCLPRECOA2.Value
            else
               mpreco:=DM1.Tb_LGCCLPRECO2.Value;
            end
         else if DM1.Tb_CliCPCOPRAT.Value=1 then
            begin
            if mdtreaj>=DM1.Tb_LGCCLDTUATP1.Value then
               mpreco:=DM1.Tb_LGCCLPRECOA1.Value
            else
               mpreco:=DM1.Tb_ProPDPRECO1.Value;
            end
         else if ((DM1.Tb_UFPTIPOPCO.Value=3) and (mtpp=0))  or (mtpp=3) then
            begin
            if mdtreaj>=DM1.Tb_LGCCLDTUATP3.Value then
               mpreco:=DM1.Tb_LGCCLPRECOA3.Value
            else
               mpreco:=DM1.Tb_LGCCLPRECO3.Value;
            end
         else if ((DM1.Tb_UFPTIPOPCO.Value=2) and (mtpp=0)) or (mtpp=2) then
            begin
            if mdtreaj>=DM1.Tb_LGCCLDTUATP2.Value then
               mpreco:=DM1.Tb_LGCCLPRECOA2.Value
            else
               mpreco:=DM1.Tb_LGCCLPRECO2.Value;
            end
         else
            begin
            if mdtreaj>=DM1.Tb_LGCCLDTUATP1.Value then
               mpreco:=DM1.Tb_LGCCLPRECOA1.Value
            else
               mpreco:=DM1.Tb_LGCCLPRECO1.Value;
            end
         end
      else
         begin
         if DM1.Tb_CliCPCOPRAT.Value=3 then
            mpreco:=DM1.Tb_LGCCLPRECO3.Value
         else if DM1.Tb_CliCPCOPRAT.Value=2 then
            mpreco:=DM1.Tb_LGCCLPRECO2.Value
         else if DM1.Tb_CliCPCOPRAT.Value=1 then
            mpreco:=DM1.Tb_LGCCLPRECO1.Value
         else if ((DM1.Tb_UFPTIPOPCO.Value=3) and (mtpp=0)) or (mtpp=3) then
            mpreco:=DM1.Tb_LGCCLPRECO3.Value
         else if ((DM1.Tb_UFPTIPOPCO.Value=2) and (mtpp=0)) or (mtpp=2) then
            mpreco:=DM1.Tb_LGCCLPRECO2.Value
         else
            mpreco:=DM1.Tb_LGCCLPRECO1.Value;
         end;
      end
   else
      begin
      if (Frm_Ped_AutoP.RG_TPPCO.ItemIndex=1) then
         begin
         if DM1.Tb_CliCPCOPRAT.Value=3 then
            begin
            if mdtreaj>=DM1.Tb_ProPDDTUATP3.Value then
               mpreco:=DM1.Tb_ProPDPRECOA3.Value
            else
               mpreco:=DM1.Tb_ProPDPRECO3.Value;
            end
         else if DM1.Tb_CliCPCOPRAT.Value=2 then
            begin
            if mdtreaj>=DM1.Tb_ProPDDTUATP2.Value then
               mpreco:=DM1.Tb_ProPDPRECOA2.Value
            else
               mpreco:=DM1.Tb_ProPDPRECO2.Value;
            end
         else if DM1.Tb_CliCPCOPRAT.Value=1 then
            begin
            if mdtreaj>=DM1.Tb_ProPDDTUATP1.Value then
               mpreco:=DM1.Tb_ProPDPRECOA1.Value
            else
               mpreco:=DM1.Tb_ProPDPRECO1.Value;
            end
         else if ((DM1.Tb_UFPTIPOPCO.Value=3) and (mtpp=0))  or (mtpp=3) then
            begin
            if mdtreaj>=DM1.Tb_ProPDDTUATP3.Value then
               mpreco:=DM1.Tb_ProPDPRECOA3.Value
            else
               mpreco:=DM1.Tb_ProPDPRECO3.Value;
            end
         else if ((DM1.Tb_UFPTIPOPCO.Value=2) and (mtpp=0)) or (mtpp=2) then
            begin
            if mdtreaj>=DM1.Tb_ProPDDTUATP2.Value then
               mpreco:=DM1.Tb_ProPDPRECOA2.Value
            else
               mpreco:=DM1.Tb_ProPDPRECO2.Value;
            end
         else
            begin
            if mdtreaj>=DM1.Tb_ProPDDTUATP1.Value then
               mpreco:=DM1.Tb_ProPDPRECOA1.Value
            else
               mpreco:=DM1.Tb_ProPDPRECO1.Value;
            end
         end
      else
         begin
         if DM1.Tb_CliCPCOPRAT.Value=3 then
            mpreco:=DM1.Tb_ProPDPRECO3.Value
         else if DM1.Tb_CliCPCOPRAT.Value=2 then
            mpreco:=DM1.Tb_ProPDPRECO2.Value
         else if DM1.Tb_CliCPCOPRAT.Value=1 then
            mpreco:=DM1.Tb_ProPDPRECO1.Value
         else if ((DM1.Tb_UFPTIPOPCO.Value=3) and (mtpp=0)) or (mtpp=3) then
            mpreco:=DM1.Tb_ProPDPRECO3.Value
         else if ((DM1.Tb_UFPTIPOPCO.Value=2) and (mtpp=0)) or (mtpp=2) then
            mpreco:=DM1.Tb_ProPDPRECO2.Value
         else
            mpreco:=DM1.Tb_ProPDPRECO1.Value;
         end;
      end;
   end
else
   begin
   if (Frm_Ped_AutoP.RG_TPPCO.ItemIndex=1) then
      begin
      if DM1.Tb_CliCPCOPRAT.Value=3 then
         begin
         if mdtreaj>=DM1.Tb_ProPDDTUATP3.Value then
            mpreco:=DM1.Tb_ProPDPRECOA3.Value
         else
            mpreco:=DM1.Tb_ProPDPRECO3.Value;
         end
      else if DM1.Tb_CliCPCOPRAT.Value=2 then
         begin
         if mdtreaj>=DM1.Tb_ProPDDTUATP2.Value then
            mpreco:=DM1.Tb_ProPDPRECOA2.Value
         else
            mpreco:=DM1.Tb_ProPDPRECO2.Value;
         end
      else if DM1.Tb_CliCPCOPRAT.Value=1 then
         begin
         if mdtreaj>=DM1.Tb_ProPDDTUATP1.Value then
            mpreco:=DM1.Tb_ProPDPRECOA1.Value
         else
            mpreco:=DM1.Tb_ProPDPRECO1.Value;
         end
      else if ((DM1.Tb_UFPTIPOPCO.Value=3) and (mtpp=0))  or (mtpp=3) then
         begin
         if mdtreaj>=DM1.Tb_ProPDDTUATP3.Value then
            mpreco:=DM1.Tb_ProPDPRECOA3.Value
         else
            mpreco:=DM1.Tb_ProPDPRECO3.Value;
         end
      else if ((DM1.Tb_UFPTIPOPCO.Value=2) and (mtpp=0)) or (mtpp=2) then
         begin
         if mdtreaj>=DM1.Tb_ProPDDTUATP2.Value then
            mpreco:=DM1.Tb_ProPDPRECOA2.Value
         else
            mpreco:=DM1.Tb_ProPDPRECO2.Value;
         end
      else
         begin
         if mdtreaj>=DM1.Tb_ProPDDTUATP1.Value then
            mpreco:=DM1.Tb_ProPDPRECOA1.Value
         else
            mpreco:=DM1.Tb_ProPDPRECO1.Value;
         end
      end
   else
      begin
      if DM1.Tb_CliCPCOPRAT.Value=3 then
         mpreco:=DM1.Tb_ProPDPRECO3.Value
      else if DM1.Tb_CliCPCOPRAT.Value=2 then
         mpreco:=DM1.Tb_ProPDPRECO2.Value
      else if DM1.Tb_CliCPCOPRAT.Value=1 then
         mpreco:=DM1.Tb_ProPDPRECO1.Value
      else if ((DM1.Tb_UFPTIPOPCO.Value=3) and (mtpp=0)) or (mtpp=3) then
         mpreco:=DM1.Tb_ProPDPRECO3.Value
      else if ((DM1.Tb_UFPTIPOPCO.Value=2) and (mtpp=0)) or (mtpp=2) then
         mpreco:=DM1.Tb_ProPDPRECO2.Value
      else
         mpreco:=DM1.Tb_ProPDPRECO1.Value;
      end;
   end;

if mpvactd>0 then
   mpreco:=mpreco+(mpreco*mpvactd/100)
else if mpvact00>0 then
   mpreco:=mpreco+(mpreco*mpvact00/100)
else if mpvact01>0 then
   mpreco:=mpreco+(mpreco*mpvact01/100)
else if mpvact99>0 then
   mpreco:=mpreco+(mpreco*mpvact99/100);

if Frm_Ped_AutoP.RG_TPPCO.ItemIndex=4 then
   mpreco:=0;
result:=mpreco;
end;

procedure TFrm_Ped_AutoP.DBGrid2DblClick(Sender: TObject);
begin
if not flcadpro(1,0,0,Tb_ProPDCODPRO.AsString) then
   begin
   MessageDlg('Produto não Cadastrado!',mtWarning,[mbOk],0);
   exit;
   end;

if not (Tb_Ped02.State in [dsEdit,dsInsert]) then
   Tb_Ped02.Append;
if fTestaBloqueio(0,fsonumero(CODVEN.Text),
                    DM1.Tb_ProPDCODFOR.Value,
                    DM1.Tb_CliCCODLOC.Value,
                    DM1.Tb_CliCCODBAI.Value,
                    DM1.Tb_CliCCODRAM.Value,
                    DM1.Tb_CliCCODCLI.Value,
                    DM1.Tb_ProPDCODRAM.Value,
                    DM1.Tb_ProPDCODPRO.Value,
                    DM1.Tb_CliCUF.Value) then
   begin
   if Application.Messagebox('Produto Com Venda Bloqueada!, quer ver detalhes','',MB_YESNO+MB_DEFBUTTON2)=mrYes then
      begin
      Application.CreateForm(TFrm_BloqueioVenda_Motivo, Frm_BloqueioVenda_Motivo);
      fMotivo(0,fsonumero(CODVEN.Text),
              DM1.Tb_ProPDCODFOR.Value,
              DM1.Tb_CliCCODLOC.Value,
              DM1.Tb_CliCCODBAI.Value,
              DM1.Tb_CliCCODRAM.Value,
              DM1.Tb_CliCCODCLI.Value,
              DM1.Tb_ProPDCODRAM.Value,
              DM1.Tb_ProPDCODPRO.Value,
             DM1.Tb_CliCUF.Value);
      Frm_BloqueioVenda_Motivo.ShowModal;
      Frm_BloqueioVenda_Motivo.Free;
      end;
   Tb_Ped02P2CODPRO.Value:=0;
   exit;
   end;
Tb_Ped02P2CODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
Tb_Ped02P2PRECO.Value :=fbuscarPreco(0);
Tb_Ped02NOMEPRO.Value :=DM1.Tb_ProPDNOME.Value;
Tb_Ped02NOMEPRO2.Value:=DM1.Tb_ProPDNOME2.Value;
Tb_Ped02undpro.Value  :=DM1.Tb_ProPDUND.Value;
Tb_Ped02P2SIT.Value   :=DM1.Tb_ProPDSIT.Value;
Tb_Ped02P2LISTA.Value :=DM1.Tb_ProPDLISTA.Value;
Tb_Ped02P2TABELA.Value:=DM1.Tb_ProPDTABICM.Value;
Tb_Ped02P2PCOTAB.Value:=DM1.Tb_ProPDPRECO1.Value;
Tb_Ped02P2UCPR.Value  :=DM1.Tb_ProPDUCPR.Value;
Tb_Ped02P2PCOCUS.Value:=DM1.Tb_ProPDPRECOC.Value;
Tb_Ped02P2PCOMAX.Value:=DM1.Tb_ProPDPMC.Value;
Tb_Ped02P2CODFAB.Value:=DM1.Tb_ProPDCODFOR.Value;
Tb_Ped02P2QTD.Value   :=1;

if DM1.Tb_CliCIPI.Value=1 then
   Tb_Ped02P2ALIPI.Value :=DM1.Tb_ProPDIPI.Value
 else
   Tb_Ped02P2ALIPI.Value :=0;
Tb_Ped02.Post;



end;

procedure TFrm_Ped_AutoP.DBG_MercadKeyPress(Sender: TObject;
  var Key: Char);
begin
if Tb_Ped02.State in [dsEdit,dsInsert] then
   begin
   if key in ['.',','] then
      begin
      if (DBG_Mercad.SelectedField=Tb_Ped02P2QTD) or
          (DBG_Mercad.SelectedField=Tb_Ped02P2PRECO) or
          (DBG_Mercad.SelectedField=Tb_Ped02P2DESC1) or
          (DBG_Mercad.SelectedField=Tb_Ped02P2DESC2) or
          (DBG_Mercad.SelectedField=Tb_Ped02P2DESC3) or
          (DBG_Mercad.SelectedField=Tb_Ped02P2VALDES) then
           key:=DecimalSeparator
      end
   else
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) then
         begin
         if DM1.Tb_PargerPPCOGRA.Value=1 then
            Tb_Ped02P2CODPRO.Value:=ValFloat( fChamaPro(2,'Frm_Ped_AutoP',key))
         else
            Tb_Ped02P2CODPRO.Value:=ValFloat(fChamaPro(iif(CB_LEITOR.Checked,1,0),'Frm_Ped',key));
         end;
      end;
   end;
end;

procedure TFrm_Ped_AutoP.Tb_Ped02BeforePost(DataSet: TDataSet);
begin
if BlqEventoPed02 then
   exit;

if (Tb_Ped02P2CODPRO.IsNull) or (Tb_Ped02P2CODPRO.Value<=0) then
   begin
   MessageDlg('Favor Digitar um Código de Produto válido!',mtWarning,[mbOk],0);
   DBG_Mercad.SelectedField:=Tb_Ped02P2CODPRO;
   abort;
   end;
if Tb_Ped02P2QTD.AsFloat<=0 then
   begin
   MessageDlg('Favor Digitar uma Quantidade Válida!',mtWarning,[mbOk],0);
   DBG_Mercad.SelectedField:=Tb_Ped02P2QTD;
   abort;
   end;
if RG_TPPCO.ItemIndex<>4 then
   begin
   if Tb_Ped02P2PRECO.AsFloat<=0 then
      begin
      MessageDlg('Produto com preço inválido!',mtWarning,[mbOk],0);
      DBG_Mercad.SelectedField:=Tb_Ped02P2CODPRO;
      abort;
      end;
   end;
fCalcularItem(0,0,0);

end;

procedure TFrm_Ped_AutoP.DBG_MercadExit(Sender: TObject);
begin
if Tb_Ped02.State in [dsInsert,dsEdit] then
   begin
   if (Tb_Ped02P2CODPRO.AsFloat<>0) and
      (Tb_Ped02P2QTD.asfloat<>0) then
      Tb_Ped02.Post
   else
      Tb_Ped02.Cancel;
   end;
end;

function Tfrm_Ped_AutoP.FLimparTudo(pTipo: Integer): Boolean;
begin
mValdes_101         :=0;

mtotbru_101         :=0;
mtotdes_101         :=0;
mtotund             :=0;
mtotbru             :=0;
mtotdes             :=0;
mtotacrecv          :=0;
mtotacreger         :=0;
mtoticmr            :=0;
mtotipi             :=0;
mtotrepas           :=0;

mAnt_totbru_101     :=0;
mAnt_Totdes_101     :=0;
mAnt_totund         :=0;
mAnt_totbru         :=0;
mAnt_totdes         :=0;
mAnt_totacrecv      :=0;
mAnt_totacreger     :=0;
mAnt_toticmr        :=0;
mAnt_totipi         :=0;
mAnt_totrepas       :=0;

DATAP.Text          :=FormatDateTime(fdt2, date);
CHAVE.Text          :='';
ORDEM.Text          :='';
CODCLI.Text         :='';
NOMCLI.Text         :='';
CODVEN.Text         :='';
NOMVEN.Text         :='';
CODVEN2.Text        :='';
NOMVEN2.Text        :='';
CODVEN3.Text        :='';
NOMVEN3.Text        :='';
CODASSE.Text        :='';
NOMASSE.Text        :='';

CB_TABPV.Text       :='AP';
CODPV.Text          :='';
NOMPV.Text          :='';
DESC01.Text         :='';
VALDES.Text         :='';
CB_ORCAMENTO.Checked:=false;
CODTIP.Text         :='';
NOMTIP.Text         :='';
ANO.Text            :='';
CONTEUDO.Text       :='';
CB_TIPO2.ItemIndex  :=DM1.Tb_PargerPTIPPED.AsInteger;
CB_TIPO2.text       :=CB_TIPO2.items[CB_TIPO2.itemIndex];
mtipop              :=CB_TIPO2.ItemIndex;
with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO2.Text);
CB_TIPO.text        :=CB_TIPO.items[CB_TIPO.itemIndex];
RG_TPPCO.ItemIndex  :=0;
CODTRA.Text         :='';
NOMTRA.Text         :='';
RGFRETEPC.ItemIndex :=0;
PLACAV.Text         :='';
UFPV.Text           :='';
QTDVOL.Text         :='';
ESPECIE.Text        :='';
PESOB.Text          :='';
PESOL.Text          :='';
CODBCO.Text         :='';
NOMBCO.Text         :='Carteira';
NUMNF.Text          :='';
DATANF.Text         :='/  /';
SERIENF.Text        :='';
SUBSER.Text         :='';
MODELO.Text         :='';
SUBMOD.Text         :='';
NUMCF.Text          :='';
DATACF.Text         :='/  /';
CODDIG.Text:='';
NOMDIG.Text:='';
DATDIG.Text:='';
HORDIG.Text:=':  :';
CODSEP.Text:='';
NOMSEP.Text:='';
DATSEP.Text:='';
HORSEP.Text:=':  :';
CODCON.Text:='';
NOMCON.Text:='';
DATCON.Text:='';
HORCON.Text:=':  :';
CODEMB.Text:='';
NOMEMB.Text:='';
DATEMB.Text:='';
HOREMB.Text:=':  :';

if Tb_Ped02.Active then
   Tb_Ped02.Close;
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Delete from '+mTabTmp01);
try
   DM5.Query1.ExecSQL;
except
   end;
result:=true;


end;
procedure TFrm_Ped_AutoP.Tb_Ped02BeforeEdit(DataSet: TDataSet);
begin
if BlqEventoPed02 then
   exit;

mAnt_totbru_101     :=Tb_Ped02P2QTD_101.Value*Tb_Ped02P2PRECO_101.Value;
mAnt_Totdes_101     :=Tb_Ped02P2TOTDES_101.Value;
mAnt_totund         :=Tb_Ped02P2QTD.Value;
mAnt_totbru         :=Tb_Ped02P2QTD.Value*Tb_Ped02P2PRECO.Value;
mAnt_totdes         :=Tb_Ped02P2TOTDES.Value;
mAnt_totacrecv      :=Tb_Ped02P2ACRECONV.Value;
mAnt_totacreger     :=Tb_Ped02P2ACREGER.Value;
mAnt_toticmr        :=Tb_Ped02P2ICMSR.Value;
mAnt_totipi         :=Tb_Ped02P2VALIPI.Value;
mAnt_totrepas       :=Tb_Ped02P2REPAS.Value;


end;

procedure TFrm_Ped_AutoP.Tb_Ped02BeforeInsert(DataSet: TDataSet);
begin
if BlqEventoPed02 then
   exit;

mAnt_totbru_101     :=0;
mAnt_Totdes_101     :=0;
mAnt_totund         :=0;
mAnt_totbru         :=0;
mAnt_totdes         :=0;
mAnt_totacrecv      :=0;
mAnt_totacreger     :=0;
mAnt_toticmr        :=0;
mAnt_totipi         :=0;
mAnt_totrepas       :=0;
Tb_Ped02.First;

end;

procedure TFrm_Ped_AutoP.Tb_Ped02AfterPost(DataSet: TDataSet);
begin
if BlqEventoPed02 then
   exit;

mtotund             :=mtotund-mAnt_totund+Tb_Ped02P2QTD.Value;
mtotbru             :=mtotbru-mAnt_totbru+(Tb_Ped02P2QTD.Value*Tb_Ped02P2PRECO.Value);
mtotbru_101         :=mtotbru_101-mAnt_totbru_101+(Tb_Ped02P2QTD_101.Value*Tb_Ped02P2PRECO_101.Value);
mtotdes_101         :=mtotdes_101-mAnt_Totdes_101+Tb_Ped02P2TOTDES_101.Value;
mtotdes             :=mtotdes-mAnt_totdes+Tb_Ped02P2TOTDES.Value;
mtotacrecv          :=mtotacrecv-mAnt_totacrecv+Tb_Ped02P2ACRECONV.Value;
mtotacreger         :=mtotacreger-mAnt_totacreger+Tb_Ped02P2ACREGER.Value;
mtoticmr            :=mtoticmr-mAnt_toticmr+Tb_Ped02P2ICMSR.Value;
mtotipi             :=mtotipi-mAnt_totipi+Tb_Ped02P2VALIPI.Value;
mtotrepas           :=mtotrepas-mAnt_totrepas+Tb_Ped02P2REPAS.Value;
fCalcular(0);


end;

procedure TFrm_Ped_AutoP.bbExcItemClick(Sender: TObject);
begin
if Application.MessageBox(pchar('Produto Selecionado: '+Tb_Ped02P2CODPRO.AsString+#13
                         +' Nome: '+Tb_Ped02NOMEPRO.AsString+#13
                         +'Quer realmente excluir este item'),' ',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
Tb_Ped02.Delete;
end;

procedure TFrm_Ped_AutoP.ITEM_EDITARClick(Sender: TObject);
begin
if not (Tb_Ped02.State in [dsEdit,dsInsert]) then
   begin
   Tb_Ped02.Edit;
   DBG_Mercad.SetFocus;
   end;
end;

procedure TFrm_Ped_AutoP.Spb_CadproClick(Sender: TObject);
begin
fChamaPro(0,'Frm_Ped_AutoP','');

end;

procedure TFrm_Ped_AutoP.Tb_Ped02AfterDelete(DataSet: TDataSet);
begin
if BlqEventoPed02 then
   exit;
mtotbru_101         :=mtotbru_101-(Tb_Ped02P2QTD_101.Value*Tb_Ped02P2PRECO.Value);
mtotdes_101         :=mtotdes_101-(Tb_Ped02P2TOTDES_101.Value);
mtotund             :=mtotund-Tb_Ped02P2QTD.Value;
mtotbru             :=mtotbru-(Tb_Ped02P2QTD.Value*Tb_Ped02P2PRECO.Value);
mtotdes             :=mtotdes-Tb_Ped02P2TOTDES.Value;
mtotacrecv          :=mtotacrecv-Tb_Ped02P2ACRECONV.Value;
mtotacreger         :=mtotacreger-Tb_Ped02P2ACREGER.Value;
mtoticmr            :=mtoticmr-Tb_Ped02P2ICMSR.Value;
mtotipi             :=mtotipi-Tb_Ped02P2VALIPI.Value;
mtotrepas           :=mtotrepas-Tb_Ped02P2REPAS.Value;

QTDITEM.Caption   := FormatFloat(mcasqtd, mitem);
TOTITEM.Caption   := FormatFloat(mcasqtd, mtotund);
TOTAL.Caption     := FormatFloat(mcasas, mtotbru);
TOTDES.Caption    := FormatFloat(mcasas, mtotdes);
ICMSR.Caption     := FormatFloat(mcasas, mtoticmr);
VALIPI.Caption    := FormatFloat(mcasas, mtotipi);
VALACRE.Caption   := FormatFloat(mcasas, mtotacrecv+mtotacreger);
TOTLIQ.Caption    := FormatFloat(mcasas, mtotbru-mtotdes +mtoticmr+mtotipi+mtotacrecv+mtotacreger);

end;

procedure TFrm_Ped_AutoP.PLACAVExit(Sender: TObject);
begin
if (length(PLACAV.Text)>7) then
   PLACAV.Text:=copy(PLACAV.Text,1,8);

end;

procedure TFrm_Ped_AutoP.UFPVExit(Sender: TObject);
begin
if (length(UFPV.Text)>1) then
   UFPV.Text:=copy(UFPV.Text,1,2);

end;

procedure TFrm_Ped_AutoP.QTDVOLExit(Sender: TObject);
begin
QTDVOL.Text:=FloatToStr(FSonumero(QTDVOL.Text));
if ValFloat(QTDVOL.Text)<0 then
   QTDVOL.Text:='0';
if ValFloat(QTDVOL.Text)>999999999 then
   begin
   verteclado(0);
   MessageDlg('Quantidade de Volumes não Suportada!',mtInformation,[mbok],0);
   QTDVOL.SetFocus;
   end;

end;

procedure TFrm_Ped_AutoP.ESPECIEExit(Sender: TObject);
begin
if (length(ESPECIE.Text)>20) then
   ESPECIE.Text:=copy(ESPECIE.Text,1,20);

end;

procedure TFrm_Ped_AutoP.PESOBExit(Sender: TObject);
begin
if ValFloat(PESOB.Text)<0 then
   PESOB.Text:='0.000';
PESOB.Text:=FormatFloat('0.000',ValFloat(PESOB.Text));
if ValFloat(PESOB.Text)>99999999 then
   begin
   verteclado(0);
   MessageDlg('Peso não Suportado!',mtInformation,[mbOk],0);
   PESOB.SetFocus;
   end;

end;

procedure TFrm_Ped_AutoP.PESOLExit(Sender: TObject);
begin
if ValFloat(PESOL.Text)<0 then
   PESOL.Text:='0.000';
PESOL.Text:=FormatFloat('0.000',ValFloat(PESOL.Text));
if ValFloat(PESOL.Text)>99999999 then
   begin
   verteclado(0);
   MessageDlg('Peso não Suportado!',mtInformation,[mbOk],0);
   PESOL.SetFocus;
   end;

end;


function fPed01Div_Qtd(pRest,pfracao: Integer; pqtd,pund: Real):Real;
var
mqtdTot: Real;
begin
if pRest=1 then
   begin
   if codemp>100 then
      mqtdTot:=pqtd
   else
      mqtdTot:=0;
   end
else
   begin
   mqtdTot:=pqtd*pund/100;
   if pfracao=0 then
      mqtdTot:=Round(mqtdTot);
   if mqtdTot>pqtd then
      mqtdTot:=pqtd;
   end;
result:=mqtdTot;
end;

function fPed01Div_ValDesc(pRest,pfracao: Integer; pValor,pund: Real):Real;
var
mqtdTot: Real;
begin
if pRest=1 then
   begin
   if codemp>100 then
      mqtdTot:=pValor
   else
      mqtdTot:=0;
   end
else
   begin
   mqtdTot:=pValor*pund/100;
   if mqtdTot>pValor then
      mqtdTot:=pValor;
   end;
result:=mqtdTot;
end;

procedure TFrm_Ped_AutoP.SUBMODExit(Sender: TObject);
begin

if ValFloat(SUBMOD.Text)>100 then
   SUBMOD.Text:='100'
else if Valfloat(SUBMOD.Text)<0 then
   SUBMOD.Text:='000';
if (mformace=1) and (codemp<101) and (ValInt(SUBMOD.Text)=100) then
   begin
   verteclado(0);
   MessageDlg('Não é um valor válido para esta Empresa!',mtWarning,[mbOk],0);
   SUBMOD.SetFocus;
   end;
SUBMOD.Text:=FormatFloat('000',Valfloat(SUBMOD.Text));
mpund:=StrtoFloat('0'+Trim(SUBMOD.Text));
fverificaund(0);
fPed01tarban(0);
end;


function TFrm_Ped_AutoP.fverificaund(ptipo: Integer):Boolean;
begin
Tb_ped02.First;
While not Tb_ped02.eof do
  begin
  Tb_ped02.Edit;
  Tb_ped02.post;
  Tb_ped02.next;
  end;
result:=True;
end;


function fPed01tarban(ptipo: Integer): Boolean;
var
tb_codemp_ant: Integer;
tb_qtddup: Integer;
begin
if DM1.Tb_CliCCTARBAN.Value=1 then
   begin
   Frm_Ped_AutoP.TARBAN.Caption       :=Formatfloat(mcasas, 0);
   result:=true;
   exit;
   end;
if ValFloat(Frm_Ped_AutoP.CODBCO.Text)=0 then
   result:=True
else
   begin
   tb_qtddup:=1;
   if not Frm_PVO.Tb_Po99.Active then
      tb_qtddup:=1
   else
      tb_qtddup:=Frm_PVO.Tb_Po99.RecordCount;
   if tb_qtddup<1 then
      tb_qtddup:=1;
   if ptipo<>100 then
      begin
      if (ValFloat(Frm_Ped_AutoP.SUBMOD.Text)<100) then
         begin
         flcadpar01(0,codemp,'1');
         if DM4.Tb_Par01PINCTB.Value=1 then
            begin
            if DM1.Tb_CliCTARBAN.AsFloat>0 then
               Frm_Ped_AutoP.TARBAN.Caption      :=Formatfloat(mcasas, DM1.Tb_CliCTARBAN.Value*(tb_qtddup))
            else
               begin
               if flcadbco(1,0,0,trim(Frm_Ped_AutoP.CODBCO.Text)) then
                  begin
                  Frm_Ped_AutoP.TARBAN.Caption      :=Formatfloat(mcasas, DM1.Tb_BcoBCTARIFA.Value*(tb_qtddup));
                  end;
               end;
            end;
         end;
      end;
   if ptipo<>1 then
      begin
      if (Valfloat(Frm_Ped_AutoP.SUBMOD.Text)<>0) then
         begin
         tb_codemp_ant:=DM4.Tb_Par01PCODEMP.AsInteger;
         flcadpar01(0,iif(tb_codemp_ant>100,tb_codemp_ant-100,tb_codemp_ant+100),'1');
         if DM4.Tb_Par01PINCTB.Value=1 then
            begin
            if DM1.Tb_CliCTARBAN.AsFloat>0 then
               Frm_Ped_AutoP.TARBAN.Caption      :=Formatfloat(mcasas, ValFloat(Frm_Ped_AutoP.TARBAN.Caption)+(DM1.Tb_CliCTARBAN.Value*(tb_qtddup)))
            else
               begin
               if flcadbco(1,iif(tb_codemp_ant>100,tb_codemp_ant-100,tb_codemp_ant+100),0,trim(Frm_Ped_AutoP.CODBCO.Text)) then
                  begin
                  Frm_Ped_AutoP.TARBAN.Caption      :=Formatfloat(mcasas, ValFloat(Frm_Ped_AutoP.TARBAN.Caption)+(DM1.Tb_BcoBCTARIFA.Value*(tb_qtddup)));
                  end;
               end;
            end;
         flcadpar01(0,codemp,'1');
         flcadbco(1,0,0,trim(Frm_Ped_AutoP.CODBCO.Text));
         end;
      end;
   end;
Frm_Ped_AutoP.fcalcular(0);
result:=true;
end;

function TFrm_Ped_AutoP.fCalcular(ptipo: Integer): Boolean;
begin
QTDITEM.Caption   := FormatFloat(mcasqtd, mitem);
TOTITEM.Caption   := FormatFloat(mcasqtd, mtotund);
TOTAL.Caption     := FormatFloat(mcasas, mtotbru);
TOTDES.Caption    := FormatFloat(mcasas, mtotdes);
ICMSR.Caption     := FormatFloat(mcasas, mtoticmr);
VALIPI.Caption    := FormatFloat(mcasas, mtotipi);
VALACRE.Caption   := FormatFloat(mcasas, mtotacrecv+mtotacreger);
TOTLIQ.Caption    := FormatFloat(mcasas, mtotbru-mtotdes +mtoticmr+mtotipi+mtotacrecv+mtotacreger+ValFloat(TARBAN.Caption));

end;

procedure TFrm_Ped_AutoP.Tb_Ped02AfterInsert(DataSet: TDataSet);
begin
if BlqEventoPed02 then
   exit;

Tb_Ped02P2ITEM.Value :=mItem;
Tb_Ped02BAIXADO.Value:=0;

mItem:=mItem+1;
moper_item:=0;
end;

procedure TFrm_Ped_AutoP.CB_ORCAMENTOClick(Sender: TObject);
begin
if CB_ORCAMENTO.Checked then
   begin
   CB_TIPO2.ItemIndex  :=0;
   CB_TIPO2.text:=CB_TIPO2.items[CB_TIPO2.itemIndex];
   mtipop:=CB_TIPO2.ItemIndex;
   with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO2.Text);
   CB_TIPO.text:=CB_TIPO.items[CB_TIPO.itemIndex];
   end
else
   begin
   if DM1.Tb_PargerPTIPPED.Value=0 then
      CB_TIPO2.ItemIndex  :=1
   else
      CB_TIPO2.ItemIndex  :=DM1.Tb_PargerPTIPPED.AsInteger;
   CB_TIPO2.text:=CB_TIPO2.items[CB_TIPO2.itemIndex];
   mtipop:=CB_TIPO2.ItemIndex;
   with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO2.Text);
   CB_TIPO.text:=CB_TIPO.items[CB_TIPO.itemIndex];
   end;

end;

procedure TFrm_Ped_AutoP.Tool_AlterarClick(Sender: TObject);
var
x, mqtdman: Integer;
begin
DM4.Qr_Ped01.First;
mqtdman:=DM4.Qr_Ped01P1QTDMAN.AsInteger;
DM4.Qr_Ped01.Close;
DM4.Qr_Ped01.Open;
if DM4.Qr_Ped01.Eof then
   begin
   Tool_Limpar.Click;
   verteclado(0);
   MessageDlg('Chave não Encontrada!',mtWarning,[mbok],0);
   exit;
   end;
if DM4.Qr_Ped01P1SITPED.Value=1 then
   begin
   mcinst:='Este Pedido pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA PEDIDO '+#13
          +'e desbloqueia o mesmo';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;
if DM4.Qr_Ped01P1QTDMAN.Value>mqtdman then
   begin
   moper_ped:=3;
   tool_localizar.Click;
   if DM4.Qr_Ped01P1SITPED.Value=1 then
      begin
      mcinst:='Este Pedido pode Estar Sendo Alterado em Outra Estação,'+#13
             +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA PEDIDO '+#13
             +'e desbloqueia o mesmo';
      verteclado(0);
      MessageDlg(mcinst,mtWarning,[mbOk],0);
      exit;
      end;
   end;
if (DM4.Qr_Ped01P1FORMACE.Value=1) and (ValInt(SUBMOD.Text)=100) then
   begin
   verteclado(0);
   MessageDlg('Não é Permitido a alteração nesta Empresa!',mtWarning,[mbOk],0);
   exit;
   end;

While not DM4.Qr_Ped01.Eof do
   begin
   if DM4.Qr_Ped01P1CUPOM.Value>0 then
      begin
      verteclado(0);
      MessageDlg('Este pedido ja foi emitido cupom fiscal, Não Pode ser Alterado!',mtWarning,[mbOk],0);
      exit;
      end
   else if DM4.Qr_Ped01P1EMIDOC.Value>0 then
      begin
      verteclado(0);
      MessageDlg('Pedido ja foi Emitido Documento, Nao Pode Ser Alterado!',mtWarning,[mbOk],0);
      exit;
      end;
   DM4.Qr_Ped01.Next;
   end;


if mtipop>19 then
   begin
   verteclado(0);
   Messagedlg('p/fazer Manutenção Neste Pedido entre em'+#13
             +'->REGISTROS FISCAIS->REGISTRO SAIDAS->COMPLEMENTAR IMPOSTOS',mtWarning,[mbOk],0);
   exit;
   end;

if mordem<>0 then
   begin
   verteclado(0);
   Messagedlg('Alteração invalida favor selecionar o pedido completo!',mtWarning,[mbOk],0);
   exit;
   end;

if valint(copy(mpseg,4,2))=01 then  // baixar lotes de mercadorias
   begin
   for x:=0 to DBG_Mercad.Columns.Count-1 do
      begin
      if uppercase(DBG_Mercad.Columns[x].FieldName)='P2LOTE' then
         DBG_Mercad.Columns[x].Visible:=false
      else if uppercase(DBG_Mercad.Columns[x].FieldName)='P2DTVCTO' then
         DBG_Mercad.Columns[x].Visible:=false;
      end;
   end;
flcadpar01(0,codemp,'1');
moper_ped:=1;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from CADRM1 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' R1_CODEMP=0'+IntToStr(codemp)+' and ')
                  +' R1_LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                  +' and R1_CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString);
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   mtemrom:=True
else
   mtemrom:=False;
ped_lotseq :=DM4.Qr_Ped01P1LOTSEQ.AsInteger;
mformace   :=DM4.Qr_Ped01P1FORMACE.AsInteger;
pc_Cabecalho.ActivePage:=ts_principais;

CB_TIPO.Enabled         :=False;
Tool_Arredondar.Enabled :=True;
Tool_Incluir.Enabled    :=False;
tool_localizar.Enabled  :=False;
Tool_Alterar.Enabled    :=False;
Tool_Excluir.Enabled    :=False;
Tool_Gravar.Enabled     :=True;
Tool_LSep.Enabled       :=False;
Tool_EmiteNF.Enabled    :=False;
Tool_Calcular.Enabled   :=true;
if mtipop=0 then
   Tool_Faturar.Enabled:=True
else
   Tool_Faturar.Enabled  :=False;
pc_Cabecalho.ActivePage  :=ts_principais;

ts_principais.Enabled:=true;
ts_outros.Enabled    :=true;
ts_situacao.Enabled  :=true;
Ts_EntregaCob.Enabled:=true;
Ts_ObsVcto.Enabled   :=true;
panel_conspro.Enabled:=true;

DBG_Mercad.ReadOnly  :=false;
ITEM_EDITAR.Enabled  :=true;
bbExcItem.Enabled    :=true;
VALFRE.Enabled       :=true;
CB_TIPO.Enabled      :=True;

if RG_TPPCO.ItemIndex=2 then
   DBG_Mercad.Columns[mColpu].ReadOnly:=false
else
   DBG_Mercad.Columns[mColpu].ReadOnly:=true;

if RG_TPPCO.ItemIndex=1 then
   begin
   mdtreaj:=date-30;
   end;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADP01 set P1SITPED=1 '
                  +' where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                  +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                  +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,6216,'Frm_Ped','CADP01');
   end;
DM1.Query2.Close;

end;

procedure TFrm_Ped_AutoP.Src_ProDataChange(Sender: TObject; Field: TField);
var
mNomeAnt: String;
mPosVei,mPosAno,mTamAno: Integer;
begin
Tb_Aplicacao.Close;
Tb_Aplicacao.SQL.Clear;
Tb_Aplicacao.SQL.Add('Select SGPCODEMP,SGPCODPRO,SGPCODGRU,TNOME,SGPAANO');
Tb_Aplicacao.SQL.Add(' from CADSGPRO,CADSGPRO_ANO,CADTP where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' SGPCODEMP=0'+IntToStr(codemp)+' and ')
                    +' SGPCODPRO=0'+Tb_ProPDCODPRO.AsString
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and SGPACODEMP(+)=SGPCODEMP ')
                    +' and SGPACODPRO(+)=SGPCODPRO '
                    +' and SGPACODGRU(+)=SGPCODGRU '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and TCODEMP=SGPCODEMP ')
                    +' and TCODTIP=SGPCODGRU '
                    +' order by TNOME,SGPAANO ');
try
   Tb_Aplicacao.Open;
except
   Tb_Aplicacao.Sql.SaveToFile('c:\SQL.TXT');

   end;


RE_APLICACAO.Clear;
mNomeAnt:=Tb_AplicacaoTNOME.Value;
mcinst2:=Tb_AplicacaoTNOME.Value;
mPosVei:=-1;
mPosAno:=-1;
if (mPosVei=-1) and (NOMTIP.Text=Tb_AplicacaoTNOME.Value) then
   mPosVei:=length(RE_APLICACAO.Text);

While not Tb_Aplicacao.Eof do
   begin
   if mNomeAnt<>Tb_AplicacaoTNOME.Value then
      begin
      RE_APLICACAO.Lines.Add(mcinst2);
      if (mPosVei=-1) and (NOMTIP.Text=Tb_AplicacaoTNOME.Value) then
         mPosVei:=length(RE_APLICACAO.Text);
      mcinst2:=Trim(Tb_AplicacaoTNOME.Value);
      mNomeAnt:=Tb_AplicacaoTNOME.Value;
      end;
   if (Tb_AplicacaoSGPAANO.Value=0) then
      begin
      if (mPosAno=-1) and
         ((NOMTIP.Text=Tb_AplicacaoTNOME.Value) OR (trim(NOMTIP.Text)='')) then
         begin
         mPosAno:=length(RE_APLICACAO.Text)+Length(mcinst2)+1;
         mTamAno:=5;
         end;
      mcinst2:=mcinst2+'/'+'Todos';
      end
   else
      begin
      if (mPosAno=-1) and (ValFloat(ANO.Text)=Tb_AplicacaoSGPAANO.Value)
         and ((NOMTIP.Text=Tb_AplicacaoTNOME.Value) OR (trim(NOMTIP.Text)='')) then
         begin
         mPosAno:=length(RE_APLICACAO.Text)+Length(mcinst2)+1;
         mTamAno:=2;
         end;
      mcinst2:=mcinst2+'/'+copy(FormatFloat('0000',Tb_AplicacaoSGPAANO.Value),3,2);
      end;
   Tb_Aplicacao.Next;
   if Tb_Aplicacao.Eof then
      RE_APLICACAO.Lines.Add(mcinst2);
   end;
if mPosVei<>-1 then
   begin
   RE_APLICACAO.SelStart :=mPosVei;
   RE_APLICACAO.SelLength:=length(NOMTIP.Text);
   RE_APLICACAO.SelAttributes.Color:=clRed;
   end;

if mPosAno<>-1 then
   begin
   RE_APLICACAO.SelStart :=mPosAno;
   RE_APLICACAO.SelLength:=mTamAno;
   RE_APLICACAO.SelAttributes.Color:=clRed;
   end;

end;

procedure TFrm_Ped_AutoP.tool_localizarClick(Sender: TObject);
begin
if moper_ped<>3 then
   begin
   verteclado(0);
   Application.CreateForm(TFrm_PedLoc, Frm_PedLoc);
   Frm_PedLoc.ShowModal;
   mchave:=ValInt(Frm_PedLoc.chave.Text);
   CHAVE.Text:=Frm_PedLoc.chave.Text;
   ORDEM.Text:=Frm_PedLoc.ORDEM.Text;
   fped01compsql(0);
   Frm_PedLoc.Free;
   if trim(msql_ped01)='' then
      begin
      verteclado(0);
      MessageDlg('Pedido não encontrado!',mtWarning,[mbOk],0);
      exit;
      end;
   end
else
   begin
   msql_ped01  := '(P1CODEMP=0'+IntToStr(codemp) +' or '+'P1CODEMP=0' +IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P1LOTSEQ =0'+IntToStr(ped_lotseq)+' and p1CHAVE=0'+IntToStr(mchave);
   msql_ped01d := '(P1DCODEMP=0'+IntToStr(codemp)+' or '+'P1DCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P1DLOTSEQ=0'+IntToStr(ped_lotseq)+' and P1DCHAVE=0'+IntToStr(mchave);
   msql_ped01v := '(P1VCODEMP=0'+IntToStr(codemp)+' or '+'P1VCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P1VLOTSEQ=0'+IntToStr(ped_lotseq)+' and P1VCHAVE=0'+IntToStr(mchave);
   msql_ped02  := '(P2CODEMP =0'+IntToStr(codemp)+' or '+'P2CODEMP =0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2LOTSEQ =0'+IntToStr(ped_lotseq)+' and P2CHAVE =0'+IntToStr(mchave);
   msql_ped02d := '(P2DCODEMP=0'+IntToStr(codemp)+' or '+'P2DCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2DLOTSEQ=0'+IntToStr(ped_lotseq)+' and P2DCHAVE=0'+IntToStr(mchave);
   msql_ped02s := '(P2SCODEMP=0'+IntToStr(codemp)+' or '+'P2SCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and P2SLOTSEQ=0'+IntToStr(ped_lotseq)+' and P2SCHAVE=0'+IntToStr(mchave);
   msql_pedfp  := '(PFPCODEMP=0'+IntToStr(codemp)+' or '+'PFPCODEMP=0'+IntTostr(iif(codemp>99,codemp-100,100+codemp))+') '+' and PFPLOTSEQ=0'+IntToStr(ped_lotseq)+' and PFPCHAVE=0'+IntToStr(mchave);
   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      msql_ped02:=msql_ped02+' and PDCODEMP(+)=P2CODEMP ';
   msql_ped02:=msql_ped02+' and PDCODPRO(+)=P2CODPRO ';
   mordem:=0;
   end;

if (mchave>0)  then
   begin
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Carregando os dados. Aguarde';
   Frm_Agde.Show;
   Frm_Agde.Update;
   Tool_Incluir.Enabled  :=bbpinc_true;
   tool_localizar.Enabled:=True;
   Tool_Alterar.Enabled  :=bbpalt_true;
   Tool_Excluir.Enabled  :=bbpexc_true;
   Tool_Gravar.Enabled   :=False;
   Tool_LSep.Enabled     :=bbprel_true;
   Tool_EmiteNF.Enabled  :=bbprel_true;
   Tool_Calcular.Enabled :=true;
   Tool_Faturar.Enabled  :=False;
   DM4.Qr_Ped01.Close;
   DM4.Qr_Ped01.Sql.Clear;
   DM4.Qr_Ped01.sQl.add('Select * from CADP01 where P1STATUS<>9 and ');
   DM4.Qr_Ped01.SQL.Add(msql_ped01+' order by P1CODEMP,P1CHAVE,P1ORDEM');
   DM4.Qr_Ped01.Open;
   if DM4.Qr_Ped01.Eof then
      begin
      Tool_Limpar.Click;
      verteclado(0);
      MessageDlg('Chave não encontrado!',mtWarning,[mbOk],0);
      Frm_Agde.Free;
      exit;
      end;
   mformace:=DM4.Qr_Ped01P1FORMACE.AsInteger;
   flQrPed01V(1,msql_ped01v);
   flQrPed02(1,mFormace, msql_ped02);
   flQrPed02S(1,mFormace,msql_ped02s);
   fCarregarTabTemp(0);
   flQrPed02D(1,msql_ped02D);
   end;



flcadcli(1,0,DM4.Qr_Ped01P1CODCLI.AsString);
flcaduf(0,0,0,DM1.Tb_CliCUF.AsString);
fpedtestacfop(0,mpund); // atribuir valor para mcalcicms
if DM1.Tb_UFPTIPOPC.Value=3 then
   RG_TPPCO.ItemIndex:=DM1.Tb_UFPTIPOPC.AsInteger;
if RG_TPPCO.ItemIndex=2 then
   DBG_Mercad.Columns[mColPU].ReadOnly:=false
else
   DBG_Mercad.Columns[mColPU].ReadOnly:=true;
if DM4.Qr_Ped01P1TABPV.Text='PO' then
   begin
   NOMPV.Text:='Plano Opcional(digitado)';
   Frm_PVO.Tb_Po99.Close;
   Frm_PVO.Tb_Po99.SQL.Clear;
   Frm_PVO.Tb_Po99.SQL.add('Select POCODEMP as POCODEMP, '
                          +' POPRAZO as POPRAZO from CADPO99 '
                          +' where ');
   if ValFloat(SUBMOD.Text)=100 then
      Frm_PVO.Tb_Po99.SQL.Add(' POCODEMP=0'+IntToStr(codemp+100))
   else
      Frm_PVO.Tb_Po99.SQL.Add(' POCODEMP=0'+IntToStr(codemp));
   Frm_PVO.Tb_Po99.SQL.Add(' and POLOTSEQ=0'+IntTostr(ped_lotseq)
                          +' and POCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                          +' order by POPRAZO');
   Frm_PVO.Tb_Po99.Open;
   Frm_PVO.RG_TC.ItemIndex     :=DM4.Qr_Ped01P1PVTC.AsInteger;
   Frm_PVO.RG_TPD1.ItemIndex   :=DM4.Qr_Ped01P1PVTPD1.AsInteger;
   Frm_PVO.RG_TPD2.ItemIndex   :=DM4.Qr_Ped01P1PVTPD2.AsInteger;
   Frm_PVO.RG_TPDESF.ItemIndex :=DM4.Qr_Ped01P1PVTPDESF.AsInteger;
   Frm_PVO.RG_TPP.ItemIndex    :=DM4.Qr_Ped01P1TPP.AsInteger;
   Frm_PVO.COM.Text            :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVCOM.Value);
   Frm_PVO.ACTD.Text           :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVACTD.Value);
   Frm_PVO.ACT00.Text          :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVACT00.Value);
   Frm_PVO.ACT01.Text          :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVACT01.Value);
   Frm_PVO.ACT99.Text          :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVACT99.Value);
   Frm_PVO.DES.Text            :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVDES.Value);
   Frm_PVO.DES1.Text           :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVDES1.Value);
   Frm_PVO.DES2.Text           :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVDES2.Value);
   Frm_PVO.DESCF.Text          :=FormatFloat(mcasas, DM4.Qr_Ped01P1PVDESCF.Value);
   Frm_PVO.RG_DDESCF.ItemIndex :=DM4.Qr_Ped01P1PVDDESCF.AsInteger;
   Frm_PVO.DIASDESCF.Text      :=DM4.Qr_Ped01P1PVDIASDESCF.AsString;
   mpvtc        := Frm_PVO.RG_TC.ItemIndex;
   mpvtpd1      := Frm_PVO.RG_TPD1.ItemIndex;
   mpvtpd2      := Frm_PVO.RG_TPD2.ItemIndex;
   mpvtpd3      := Frm_PVO.RG_TPD3.ItemIndex;
   mpvtpdesf    := Frm_PVO.RG_TPDESF.ItemIndex;
   mtpp         := Frm_PVO.RG_TPP.ItemIndex;
   mpvcom       := valfloat(Frm_PVO.COM.Text);
   mpvcom02     := valfloat(Frm_PVO.COM02.Text);
   mpvcom03     := valfloat(Frm_PVO.COM03.Text);
   mpvcom04     := 0;
   mpvactd      := valfloat(Frm_PVO.ACTD.Text);
   mpvact00       := valfloat(Frm_PVO.ACT00.Text);
   mpvact01     := ValFloat(Frm_PVO.ACT01.Text);
   mpvact99     := ValFloat(Frm_PVO.ACT99.Text);
   mpvdes       := ValFloat(Frm_PVO.DES.Text);
   mpvdes1      := ValFloat(Frm_PVO.DES1.Text);
   mpvdes2      := ValFloat(Frm_PVO.DES2.Text);
   mpvdes3      := ValFloat(Frm_PVO.DES3.Text);
   mpvdescf     := ValFloat(Frm_PVO.DESCF.Text);
   mpvddescf    := Frm_PVO.RG_DDESCF.ItemIndex;
   mpvdiasdescf := StrToInt('0'+Trim(Frm_PVO.DIASDESCF.Text));
   end
else
   begin
   flcadpv(1,0,DM4.Qr_Ped01P1TABPV.AsString,DM4.Qr_Ped01P1CODPV.AsString);
   NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
   mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
   mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
   mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
   mpvtpd3      := DM1.Tb_PVPVTPD3.AsInteger;
   mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
   mtpp         := DM1.Tb_PVPVTPP.AsInteger;
   mpvcom       := DM1.Tb_PVPVCOM.Value;
   mpvcom02     := DM1.Tb_PVPVCOM02.Value;
   mpvcom03     := DM1.Tb_PVPVCOM03.Value;
   mpvcom04     := 0;
   mpvactd      := DM1.Tb_PVPVACTD.Value;;
   mpvact00     := DM1.Tb_PVPVACT00.Value;
   mpvact01     := DM1.Tb_PVPVACT01.Value;
   mpvact99     := DM1.Tb_PVPVACT99.Value;
   mpvdes       := DM1.Tb_PVPVDES.Value;
   mpvdes1      := DM1.Tb_PVPVDES1.Value;
   mpvdes2      := DM1.Tb_PVPVDES2.Value;
   mpvdes3      := DM1.Tb_PVPVDES3.Value;
   mpvdescf     := DM1.Tb_PVPVDESCF.Value;
   mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
   mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
   Frm_PVO.Tb_Po99.Close;
   Frm_PVO.Tb_Po99.SQL.Clear;
   Frm_PVO.Tb_Po99.SQL.add('Select PV2CODEMP as POCODEMP, '
                          +' PV2PRAZO as POPRAZO from CADPV2 '
                          +' where '
                          +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                          +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                          +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                          +' order by PV2PRAZO');
   Frm_PVO.Tb_Po99.Open;
   end;
mStatus:=DM4.Qr_Ped01P1STATUS.Value;
CHAVE.Text :=DM4.Qr_Ped01P1CHAVE.AsString;
ORDEM.Text :=DM4.Qr_Ped01P1ORDEM.AsString;
CODCLI.Text:=DM4.Qr_Ped01P1CODCLI.AsString;
NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
if (DM4.Qr_Ped01P1CODCLI.Value=1) or (DM4.Qr_Ped01P1CODCLI.Value=2) then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString+' and ')
                     +' CFLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                     +' and CFCHAVEP=0'+DM4.Qr_Ped01P1CHAVE.AsString);
   DM1.Tb_CSF.Open;
   if not DM1.Tb_CSF.Eof then
      NOMCLI.Text:=DM1.Tb_CSFCFRAZAO.Value;
   end;


//pldr_nome  :=DM1.Tb_CliCRAZAO.Value;
pldr_nome  :=NOMCLI.Text;
DATAP.Text    :=FormatDatetime(fdt2,DM4.Qr_Ped01P1DATAP.Value);

if (DM4.Qr_Ped01P1DATANF.IsNull) or (DM4.Qr_Ped01P1DATANF.Value<=pdatanula) then
   DATANF.Text:='/  /'
else
   DATANF.Text:=FormatDateTime(fdt,DM4.Qr_Ped01P1DATANF.Value);

NUMNF.Text       :=DM4.Qr_Ped01P1NUMNF.AsString;
SERIENF.Text     :=DM4.Qr_Ped01P1SERIE.Value;
SUBSER.Text      :=DM4.Qr_Ped01P1SUBSER.Value;
MODELO.Text      :=DM4.Qr_Ped01P1MODELO.Value;
OBS1.Text        :=DM4.Qr_Ped01P1OBS1.Value;
OBS2.Text        :=DM4.Qr_Ped01P1OBS2.Value;
OBS3.Text        :=DM4.Qr_Ped01P1OBS3.Value;
mlib_mpDesclib   :=DM4.Qr_Ped01P1PDESCLIB.Value;
mlib_mPDescLib_Usr:=DM4.Qr_Ped01P1PDESCL_USR.AsInteger;
mcupom           :=DM4.Qr_Ped01P1CUPOM.AsInteger;


mtipop      :=DM4.Qr_Ped01P1TIPO.AsInteger;
if mtipop>19 then
   CB_TIPO.Text:='Complementar Impostos'
else
   begin
   CB_TIPO2.ItemIndex:=mtipop;
   CB_TIPO2.text:=CB_TIPO2.items[CB_TIPO2.itemIndex];
   with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO2.Text);
   CB_TIPO.text:=CB_TIPO.items[CB_TIPO.itemIndex];
   end;
CB_TABPV.Text :=DM4.Qr_Ped01P1TABPV.AsString;
CODPV.Text    :=DM4.Qr_Ped01P1CODPV.AsString;
NOMPV.Text    :=DM1.Tb_PVPVNOME.Value;
DESC01.Text   :=FormatFloat(mcasas,DM4.Qr_Ped01P1DESC01.Value);
VALDES.Text   :='';
DM4.Qr_Ped01.First;
While not DM4.Qr_Ped01.Eof do
   begin
   VALDES.Text:=FormatFloat(mcasas, ValFloat(VALDES.Text)+DM4.Qr_Ped01P1VLRDES.Value);
   DM4.Qr_Ped01.Next;
   end;
if DM4.Qr_Ped01P1CODTRA.IsNull then
   begin
   CODTRA.Text:='';
   NOMTRA.Text:='';
   end
else
   begin
   CODTRA.Text:=DM4.Qr_Ped01P1CODTRA.AsString;
   flcadtra(1,0,DM4.Qr_Ped01P1CODTRA.AsString);
   NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;

submod_ant:=0;
if DM4.Qr_Ped01.Locate('P1CODEMP',codemp,[]) then
   begin
   SUBMOD.Text:=FormatFloat('000',StrTofloat('0'+PalNum_Sis(DM4.Qr_Ped01P1SUBMOD.Value)));
   submod_ant:=valFloat(SUBMOD.Text);
   if not DM4.Qr_Ped01.Locate('P1CODEMP',iif(codemp>100,codemp-100,codemp+100),[]) then
      begin
      SUBMOD.Text:='000';
      end;
   end
else
   begin
   DM4.Qr_Ped01.First;
   SUBMOD.Text:=FormatFloat('000',StrTofloat('0'+PalNum_Sis(DM4.Qr_Ped01P1SUBMOD.Value)));
   submod_ant:=valFloat(SUBMOD.Text);
   if (DM4.Qr_Ped01P1CODEMP.Value>100) and (codemp<100) then
      SUBMOD.Text:='100';
   if (DM4.Qr_Ped01P1CODEMP.Value<100) and (codemp>100) then
      SUBMOD.Text:='100';
   end;

mpacreconv :=DM4.Qr_Ped01P1PACRECONV.Value;
mpacreger  :=DM4.Qr_Ped01P1PACREGER.Value;
QTDVOL.Text:=DM4.Qr_Ped01P1QTDVOL.AsString;
PESOL.Text :=DM4.Qr_Ped01P1PESOL.AsString;
PESOB.Text :=DM4.Qr_Ped01P1PESOB.AsString;
ESPECIE.Text       :=DM4.Qr_Ped01P1ESPECIE.AsString;
RGFRETEPC.ItemIndex:=DM4.Qr_Ped01P1FRETEPC.AsInteger-1;
VALFRE.Text        :=insere(Formatfloat(mcasas, DM4.Qr_Ped01P1VALFRE.Value),' ',pspapco);
TARBAN.Caption     :=insere(Formatfloat(mcasas, DM4.Qr_Ped01P1TARBAN.Value),' ',pspapco);
UFPV.Text          :=DM4.Qr_Ped01P1UFPV.Value;
PLACAV.Text        :=DM4.Qr_Ped01P1PLACAV.Value;
CODBCO.Text        :=DM4.Qr_Ped01P1BANCO.AsString;
if valint(CODBCO.Text)<>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
   end;


flcadven(1,0,DM4.Qr_Ped01P1CODVEN.AsString);
NOMVEN.Text        :=DM1.Tb_VenVNOME.Value;
CODVEN.Text        :=DM4.Qr_Ped01P1CODVEN.AsString;
if flcadven(1,0,DM4.Qr_Ped01P1CODV02.AsString) then
   begin
   NOMVEN2.Text        :=DM1.Tb_VenVNOME.Value;
   CODVEN2.Text        :=DM4.Qr_Ped01P1CODV02.AsString;
   end
else
   begin
   NOMVEN2.Text        :='';
   CODVEN2.Text        :='';
   end;

if flcadven(1,0,DM4.Qr_Ped01P1CODV03.AsString) then
   begin
   NOMVEN3.Text        :=DM1.Tb_VenVNOME.Value;
   CODVEN3.Text        :=DM4.Qr_Ped01P1CODV03.AsString;
   end
else
   begin
   NOMVEN3.Text        :='';
   CODVEN3.Text        :='';
   end;
if DM4.Qr_Ped01P1CODASSE.AsFloat>0 then
   begin
   if flcadassessor(1,0,DM4.Qr_Ped01P1CODASSE.AsString) then
      begin
      NOMASSE.Text        :=DM2.Tb_AssessorCARAZAO.Value;
      CODVEN3.Text        :=DM4.Qr_Ped01P1CODASSE.AsString;
      end
   else
      begin
      NOMASSE.Text        :='';
      CODVEN3.Text        :='';
      end;
   end;

CODDIG.Text :=DM4.Qr_Ped01P1CODUSR.AsString;
HORDIG.Text :=DM4.Qr_Ped01P1HORADIG.Value;
if flcadusr(1,0,DM4.Qr_Ped01P1CODUSR.AsString) then
   NOMDIG.Text :=DM4.Tb_UsrNOMUSR.Value
else
   NOMDIG.Text :='';
if flcadusr(1,0,DM4.Qr_Ped01P1USRMOD.AsString) then
   begin
   NOMUSRM.Text:=DM4.Tb_UsrNOMUSR.Value;
   DTMOD.Text  :=FormatDatetime(fdt2,DM4.Qr_Ped01P1DTMOD.Value);
   end
else
   begin
   DTMOD.Text  :='';
   NOMUSRM.Text:='';
   end;
USRMOD.Text    :=DM4.Qr_Ped01P1USRMOD.AsString;
CODCON.Text    :=DM4.Qr_Ped01P1CODCON.AsString;
HORCON.Text    :=DM4.Qr_Ped01P1HORCON.Value;
if (DM4.Qr_Ped01P1DATCON.IsNull) or (DM4.Qr_Ped01P1DATCON.Value<=pdatanula) then
   begin
   DATCON.Text :='/  /';
   NOMCON.Text :='';
   end
else
   begin
   DATCON.Text:=FormatDatetime(fdt2,DM4.Qr_Ped01P1DATCON.Value);
   if flcadusr(1,0,DM4.Qr_Ped01P1CODCon.AsString) then
      NOMCON.Text:=DM4.Tb_UsrNOMUSR.Value
   else
      NOMCON.Text:='';
   end;
CODCV.Text :=DM4.Qr_Ped01P1CODCV.AsString;
LOTEDM.Text:=DM4.Qr_Ped01P1LOTEDM.AsString;
NPEDORI.Text:=DM4.Qr_Ped01P1NPEDORI.AsString;
NAUT.Text  :=DM4.Qr_Ped01P1NAUT.Value;
QTDVOL.Text:=DM4.Qr_Ped01P1QTDVOL.AsString;
PESOL.Text :=DM4.Qr_Ped01P1PESOL.AsString;
PESOB.Text :=DM4.Qr_Ped01P1PESOB.AsString;
CODENT.Text:=DM4.Qr_Ped01P1CODENT.AsString;
HORENT.Text:=DM4.Qr_Ped01P1HORENT.Value;
if (DM4.Qr_Ped01P1DATENT.IsNull) or (DM4.Qr_Ped01P1DATENT.Value<=pdatanula) then
   begin
   DATENT.Text:='/  /';
   end
else
   begin
   DATENT.Text:=FormatDateTime(fdt2,DM4.Qr_Ped01P1DATENT.Value);
   end;
RG_TIPENT.ItemIndex:=DM4.Qr_Ped01P1TIPENT.AsInteger;
HPREVENT.Text :=DM4.Qr_Ped01P1HPREVENT.Value;
if (DM4.Qr_Ped01P1PREVENT.IsNull) or (DM4.Qr_Ped01P1PREVENT.Value<=pdatanula) then
   begin
   PREVENT.Text :='/  /';
   end
else
   begin
   PREVENT.Text :=FormatDateTime(fdt2,DM4.Qr_Ped01P1PREVENT.Value);
   end;



ESPECIE.Text       :=DM4.Qr_Ped01P1ESPECIE.AsString;
RGFRETEPC.ItemIndex:=DM4.Qr_Ped01P1FRETEPC.AsInteger-1;
VALFRE.Text        :=insere(Formatfloat(mcasas, DM4.Qr_Ped01P1VALFRE.Value),' ',pspapco);
VALSEG.Text        :=insere(Formatfloat(mcasas, DM4.Qr_Ped01P1VALSEG.Value),' ',pspapco);
TARBAN.Caption     :=insere(Formatfloat(mcasas, DM4.Qr_Ped01P1TARBAN.Value),' ',pspapco);
UFPV.Text          :=DM4.Qr_Ped01P1UFPV.Value;
PLACAV.Text        :=DM4.Qr_Ped01P1PLACAV.Value;
CODBCO.Text        :=DM4.Qr_Ped01P1BANCO.AsString;
if valint(CODBCO.Text)<>0 then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString
   else
      NOMBCO.Text:='';
   end;
mbcissqn           :=DM4.Qr_Ped01P1BCISSQN.Value;
missqn             :=DM4.Qr_Ped01P1VISSQN.Value;


mcomis             :=DM4.Qr_Ped01P1COMIS.Value;
mcomiss            :=DM4.Qr_Ped01P1COMISS.Value;
mcomist            :=DM4.Qr_Ped01P1COMIST.Value;
mformace           :=DM4.Qr_Ped01P1FORMACE.AsInteger;
RG_TPPCO.ItemIndex :=DM4.Qr_Ped01P1TPPCO.AsInteger;

NUMCF.Text:=DM4.Qr_Ped01P1NUMCF.AsString;
if (DM4.Qr_Ped01P1DATACF.IsNull) or (DM4.Qr_Ped01P1DATACF.Value<=pdatanula) then
   DATACF.Text:='/  /'
else
   DATACF.Text:=FormatDateTime(fdt2,DM4.Qr_Ped01P1DATACF.Value);
fcalcular(0);
Frm_Agde.Free;
mpund:=ValFloat(SUBMOD.Text);
if mpund>0 then
   fverificaund(0);
if DM4.Tb_Par01PGRAPEN.Value=1 then
   begin
   DM4.Qr_Pen.SQL.Clear;
   DM4.Qr_Pen.SQL.add('Select * from CADPEN where ');
   if pconsemp then
      DM4.Qr_Pen.SQL.Add('( PECODEMP=0'+IntTostr(codemp)+' or PECODEMP=0'+IntToStr(100+codemp)+') and ')
   else if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
      DM4.Qr_Pen.SQL.add(' PECODEMP=0'+IntTostr(codemp)+' and ');
   DM4.Qr_Pen.SQL.Add(' PELOTSEQ=0'+IntTostr(ped_lotseq));
   DM4.Qr_Pen.SQL.Add(' and PECHAVE=0'+IntTostr(mchave));
   DM4.Qr_Pen.Open;
   end;

end;


function TFrm_Ped_AutoP.fped01compsql(ptipo: Integer): Boolean;
var
mcomp: String;
begin
msql_ped01 :='';
msql_ped01d:='';
msql_ped01v:='';
msql_ped02 :='';
msql_ped02d:='';
msql_ped02s:='';
msql_pedFP :='';

Frm_PedLoc.Qr_Ped.First;
mcomp:='( (';
While not Frm_PedLoc.Qr_Ped.Eof do
   begin
   msql_ped01 :=msql_ped01+mcomp
               +'P1CODEMP=0'+Frm_PedLoc.Qr_PedP1CODEMP.AsString
               +' and P1LOTSEQ=0'+Frm_PedLoc.Qr_PedP1LOTSEQ.AsString
               +' and P1CHAVE=0'+Frm_PedLoc.Qr_PedP1CHAVE.AsString
               +' and P1ORDEM=0'+Frm_PedLoc.Qr_PedP1ORDEM.AsString;
   msql_ped01d:=msql_ped01d+mcomp
               +'P1DCODEMP=0'+Frm_PedLoc.Qr_PedP1CODEMP.AsString
               +' and P1DLOTSEQ=0'+Frm_PedLoc.Qr_PedP1LOTSEQ.AsString
               +' and P1DCHAVE=0'+Frm_PedLoc.Qr_PedP1CHAVE.AsString
               +' and P1DORDEM=0'+Frm_PedLoc.Qr_PedP1ORDEM.AsString;
   msql_ped01v:=msql_ped01v+mcomp
               +'P1VCODEMP=0'+Frm_PedLoc.Qr_PedP1CODEMP.AsString
               +' and P1VLOTSEQ=0'+Frm_PedLoc.Qr_PedP1LOTSEQ.AsString
               +' and P1VCHAVE=0'+Frm_PedLoc.Qr_PedP1CHAVE.AsString
               +' and P1VORDEM=0'+Frm_PedLoc.Qr_PedP1ORDEM.AsString;
   msql_ped02 :=msql_ped02+mcomp
               +'P2CODEMP=0'+Frm_PedLoc.Qr_PedP1CODEMP.AsString
               +' and P2LOTSEQ=0'+Frm_PedLoc.Qr_PedP1LOTSEQ.AsString
               +' and P2CHAVE=0'+Frm_PedLoc.Qr_PedP1CHAVE.AsString
               +' and P2ORDEM=0'+Frm_PedLoc.Qr_PedP1ORDEM.AsString;

   msql_ped02d:=msql_ped02d+mcomp
               +'P2DCODEMP=0'+Frm_PedLoc.Qr_PedP1CODEMP.AsString
               +' and P2DLOTSEQ=0'+Frm_PedLoc.Qr_PedP1LOTSEQ.AsString
               +' and P2DCHAVE=0'+Frm_PedLoc.Qr_PedP1CHAVE.AsString
               +' and P2DORDEM=0'+Frm_PedLoc.Qr_PedP1ORDEM.AsString;
   msql_ped02s:=msql_ped02s+mcomp
               +'P2SCODEMP=0'+Frm_PedLoc.Qr_PedP1CODEMP.AsString
               +' and P2SLOTSEQ=0'+Frm_PedLoc.Qr_PedP1LOTSEQ.AsString
               +' and P2SCHAVE=0'+Frm_PedLoc.Qr_PedP1CHAVE.AsString
               +' and P2SORDEM=0'+Frm_PedLoc.Qr_PedP1ORDEM.AsString;
   msql_pedFP:=msql_pedfp+mcomp
               +'PFPCODEMP=0'+Frm_PedLoc.Qr_PedP1CODEMP.AsString
               +' and PFPLOTSEQ=0'+Frm_PedLoc.Qr_PedP1LOTSEQ.AsString
               +' and PFPCHAVE=0'+Frm_PedLoc.Qr_PedP1CHAVE.AsString;

   mcomp:=') or (';
   Frm_PedLoc.Qr_Ped.Next;
   end;
if mcomp=') or (' then
   begin
   mcomp:=')) ';
   msql_ped01 :=msql_ped01 +mcomp;
   msql_ped01d:=msql_ped01d+mcomp;
   msql_ped01v:=msql_ped01v+mcomp;
   msql_ped02 :=msql_ped02 +mcomp;
   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      msql_ped02:=msql_ped02+' and PDCODEMP(+)=P2CODEMP ';
   msql_ped02:=msql_ped02+' and PDCODPRO(+)=P2CODPRO ';
   msql_ped02d:=msql_ped02d+mcomp;
   msql_ped02s:=msql_ped02s+mcomp;
   msql_pedFP :=msql_pedFP+mcomp;
   end;
result:=True;
end;



function fCE01LerPed(ptipo: Integer):Boolean;
var
mSoma: Boolean;
begin

if ( ValFloat(PalNum_Sis(DM4.Qr_Ped01P1SUBMOD.Value)) >0) and
   ( ValFloat(PalNum_Sis(DM4.Qr_Ped01P1SUBMOD.Value))<100) then
   mSoma:=true
else
   mSoma:=False;
{

Frm_Ped.Qr_Ped02.Close;
Frm_Ped.Qr_Ped02.Sql.Clear;
Frm_Ped.Qr_Ped02.Sql.Add('Select * from CADP02 where ');
if (pconsemp) and (plocemp=0) and (mSoma) then
   begin
   Frm_Ped.Qr_Ped02.SQl.Clear;
   Frm_Ped.Qr_PedFP.SQl.Clear;
   if mformace=1 then
      begin
      Frm_Ped.Qr_Ped02.SQL.Add('Select min(P2CODEMP) as P2CODEMP,'
                         +'       sum(P2ORDEM)       as P2ORDEM, '
                         +'       min(P2ITEM)   as P2ITEM,'
                         +'       sum(P2PRECO)  as P2PRECO,'
                         +'       sum(P2VALDES) as P2VALDES,'
                         +'       sum(P2BASEN)  as P2BASEN,'
                         +'       sum(P2ICMSN)  as P2ICMSN,'
                         +'       sum(P2BASER)  as P2BASER,'
                         +'       sum(P2ICMSR)  as P2ICMSR,'
                         +'       SUM(P2TOTDES) as P2TOTDES,'
                         +'       SUM(P2VALIPI) as P2VALIPI,'
                         +'       SUM(P2BCINR)  as P2BCINR,'
                         +'       SUM(P2ICMSNR) as P2ICMSNR,'
                         +'       sum(P2ISENTAS) as P2ISENTAS,'
                         +'       sum(P2TOTOUT)  as P2TOTOUT,'
                         +'       sum(P2REPAS)   as P2REPAS,'
                         +'       sum(P2TOTLIQ)  as P2TOTLIQ,'
                         +'       sum(P2VDESCF)  as P2VDESCF,'
                         +'       sum(P2VCOMIS)  as P2VCOMIS,'
                         +'       sum(P2VCOM02)  as P2VCOM02,'
                         +'       sum(P2VCOM03)  as P2VCOM03,'
                         +'       sum(P2VCOM04)  as P2VCOM04,'
                         +'       sum(P2DESCRAT) as P2DESCRAT,'
                         +'       sum(P2ACRERAT) as P2ACRERAT,'
                         +'       sum(P2ACRECONV) as P2ACRECONV, '
                         +'       sum(P2ACREGER)  as P2ACREGER, '
                         +'       P2PCOCUS, '
                         +'       P2PCOMAX, '
                         +'       P2CODPRO,'
                         +'       P2CODANT,'
                         +'       P2CHAVE,'
                         +'       P2CODPRO,'
                         +'       P2LOTE,'
                         +'       P2DTVCTO,'
                         +'       P2DESC1,'
                         +'       P2DESC2,'
                         +'       P2DESC3,'
                         +'       P2QTD,'
                         +'       P2QTDDEV,'
                         +'       P2SIT,'
                         +'       P2CODFAB,'
                         +'       P2CODGRU,'
                         +'       P2LISTA,'
                         +'       P2STATUS,'
                         +'       P2PCOTAB,'
                         +'       P2TABELA,'
                         +'       P2ALIPI,'
                         +'       P2ALIQ,'
                         +'       P2ALIQNR,'
                         +'       P2PCOMIS,'
                         +'       P2DESCM,'
                         +'       max(P2CFO) as P2CFO,'
                         +'       P2SEMCOM,'
                         +'       P2PDESCF,'
                         +'       P2UCPR, P2LOTSEQ,P2PROMOCAO'
                         +'       from CADP02 where '
                         +msql_ped02
                         +' group by P2PCOCUS,P2PCOMAX,P2CODPRO,P2CHAVE,P2CODPRO,P2CODANT, '
                         +'          P2LOTE,P2DTVCTO,P2DESC1,P2DESC2, '
                         +'          P2DESC3,P2QTD,P2QTDDEV,P2SIT,P2CODFAB,P2CODGRU,P2LISTA,'
                         +'          P2STATUS,P2PCOTAB,P2TABELA,P2ALIPI,P2ALIQ,'
                         +'          P2ALIQNR,P2PCOMIS,P2DESCM,P2SEMCOM,P2PDESCF,P2UCPR,P2LOTSEQ,P2PROMOCAO '
                         +' order by P2CHAVE,P2ORDEM,P2ITEM');
      if DM1.Tb_PargerPPEDFPGTO.Value=1 then
         begin
         Frm_Ped.Qr_PedFP.Sql.Add('select min(PFPCODEMP) AS PFPCODEMP, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       min(PFPSEQ) as PFPSEQ, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       sum(PFPVALOR) as PFPVALOR, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPLOTSEQ, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCHAVE,  ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPFORMA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPDATA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPBANCO, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPSERIE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPNUMDOC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCOMP, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPAGENCIA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPEMITENTE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       FPDESC ');
         Frm_Ped.Qr_PedFP.Sql.Add(' from CADPFP,CADFP  where ');
         Frm_Ped.Qr_PedFP.Sql.Add(msql_pedFP+' AND FPCODIGO=PFPFORMA ');
         Frm_Ped.Qr_PedFP.Sql.Add('Group by PFPLOTSEQ, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCHAVE,  ');
         Frm_Ped.Qr_PedFP.Sql.Add('       FPDESC ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPDATA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPFORMA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPBANCO, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPSERIE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPNUMDOC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCOMP, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPAGENCIA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPEMITENTE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       FPDESC ');
         end;
      end
   else
      begin
      Frm_Ped.Qr_Ped02.SQL.Add('Select 1.00          as P2CODEMP,'
                         +'       sum(P2ORDEM)       as P2ORDEM, '
                         +'       min(P2ITEM)   as P2ITEM,'
                         +'       sum(P2QTD)    as P2QTD,'
                         +'       sum(P2QTDDEV) as P2QTDDEV,'
                         +'       sum(P2VALDES) as P2VALDES,'
                         +'       sum(P2BASEN)  as P2BASEN,'
                         +'       sum(P2ICMSN)  as P2ICMSN,'
                         +'       sum(P2BASER)  as P2BASER,'
                         +'       sum(P2ICMSR)  as P2ICMSR,'
                         +'       SUM(P2TOTDES) as P2TOTDES,'
                         +'       SUM(P2VALIPI) as P2VALIPI,'
                         +'       SUM(P2BCINR)  as P2BCINR,'
                         +'       SUM(P2ICMSNR) as P2ICMSNR,'
                         +'       sum(P2ISENTAS) as P2ISENTAS,'
                         +'       sum(P2TOTOUT)  as P2TOTOUT,'
                         +'       sum(P2REPAS)   as P2REPAS,'
                         +'       sum(P2TOTLIQ)  as P2TOTLIQ,'
                         +'       sum(P2VDESCF)  as P2VDESCF,'
                         +'       sum(P2VCOMIS)  as P2VCOMIS,'
                         +'       sum(P2VCOM02)  as P2VCOM02,'
                         +'       sum(P2VCOM03)  as P2VCOM03,'
                         +'       sum(P2VCOM04)  as P2VCOM04,'
                         +'       sum(P2DESCRAT) as P2DESCRAT,'
                         +'       sum(P2ACRERAT) as P2ACRERAT,'
                         +'       sum(P2ACRECONV) as P2ACRECONV, '
                         +'       sum(P2ACREGER)  as P2ACREGER, '
                         +'       P2PCOCUS, '
                         +'       P2PCOMAX, '
                         +'       P2CODPRO,'
                         +'       P2CODANT,'
                         +'       P2CHAVE,'
                         +'       P2CODPRO,'
                         +'       P2LOTE,'
                         +'       P2DTVCTO,'
                         +'       P2DESC1,'
                         +'       P2DESC2,'
                         +'       P2DESC3,'
                         +'       P2PRECO,'
                         +'       P2SIT,'
                         +'       P2CODFAB,'
                         +'       P2CODGRU,'
                         +'       P2LISTA,'
                         +'       P2STATUS,'
                         +'       P2PCOTAB,'
                         +'       P2TABELA,'
                         +'       P2ALIPI,'
                         +'       P2ALIQ,'
                         +'       P2ALIQNR,'
                         +'       P2PCOMIS,'
                         +'       P2DESCM,'
                         +'       max(P2CFO) as P2CFO,'
                         +'       P2SEMCOM,'
                         +'       P2PDESCF,'
                         +'       P2UCPR,P2LOTSEQ,P2PROMOCAO '
                         +'       from CADP02 where '
                         +msql_ped02
                         +' group by P2PCOCUS,P2PCOMAX,P2CODPRO,P2CHAVE,P2CODPRO,P2CODANT, '
                         +'          P2LOTE,P2DTVCTO,P2DESC1,P2DESC2, '
                         +'          P2DESC3,P2PRECO,P2SIT,P2CODFAB,P2CODGRU,P2LISTA,'
                         +'          P2STATUS,P2PCOTAB,P2TABELA,P2ALIPI,P2ALIQ,'
                         +'          P2ALIQNR,P2PCOMIS,P2DESCM,P2SEMCOM,P2PDESCF,P2UCPR,P2LOTSEQ,P2PROMOCAO '
                         +' order by P2CHAVE,P2ORDEM,P2ITEM');
      if DM1.Tb_PargerPPEDFPGTO.Value=1 then
         begin
         Frm_Ped.Qr_PedFP.Sql.Add('select min(PFPCODEMP) AS PFPCODEMP, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       min(PFPSEQ) as PFPSEQ, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       sum(PFPVALOR) as PFPVALOR, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPLOTSEQ, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCHAVE,  ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPFORMA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPDATA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPBANCO, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPSERIE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPNUMDOC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCOMP, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPAGENCIA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPEMITENTE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       FPDESC ');
         Frm_Ped.Qr_PedFP.Sql.Add(' from CADPFP,CADFP  where ');
         Frm_Ped.Qr_PedFP.Sql.Add(msql_pedFP+' AND FPCODIGO=PFPFORMA ');
         Frm_Ped.Qr_PedFP.Sql.Add('Group by PFPLOTSEQ, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCHAVE,  ');
         Frm_Ped.Qr_PedFP.Sql.Add('       FPDESC ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPDATA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPFORMA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPBANCO, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPSERIE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPNUMDOC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCC, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPCOMP, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPAGENCIA, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       PFPEMITENTE, ');
         Frm_Ped.Qr_PedFP.Sql.Add('       FPDESC ');
         end;
      end
   end
else
   begin
   Frm_Ped.Qr_Ped02.Sql.add(msql_ped02+' order by P2CODEMP,P2CHAVE,P2ORDEM,P2ITEM');
   Frm_Ped.Qr_PedFP.Sql.add(msql_pedFP+' AND FPCODIGO=PFPFORMA  order by PFPCODEMP,PFPCHAVE,PFPSEQ');
   end;
if DM1.Tb_PargerPPEDFPGTO.Value=1 then
   begin
   Frm_Ped.Qr_PedFP.Open;
   end;
Frm_Ped.Qr_Ped02.Open;
//Frm_Ped.Qr_Ped02.Sql.SavetoFile('c:\sql.txt');

Frm_Ped.Qr_Ped02S.Close;
Frm_Ped.Qr_Ped02S.Sql.Clear;
Frm_Ped.Qr_Ped02S.SQl.Add('Select * from CADP02S where ');
if (pconsemp) and (plocemp=0) and (mSoma) then
   begin
   Frm_Ped.Qr_ped02S.Sql.Clear;
   if mformace=1 then
      begin
      Frm_Ped.Qr_Ped02S.SQl.Add('Select 1.00            as P2SCODEMP, '
                          +'       1.00             as P2SORDEM, '
                          +'       min(P2SITEM)     as P2SITEM,'
                          +'       sum(P2SPRECO)    as P2SPRECO,'
                          +'       sum(P2SVALDES)   as P2SVALDES,'
                          +'       sum(P2SBCISSQN)  as P2SBCISSQN,'
                          +'       sum(P2SVISSQN)   as P2SVISSQN,'
                          +'       SUM(P2STOTDES)   as P2STOTDES,'
                          +'       SUM(P2SISENTAS)  as P2SISENTAS,'
                          +'       SUM(P2SVDESCF)   as P2SVDESCF,'
                          +'       SUM(P2SVCOMIS)   as P2SVCOMIS,'
                          +'       SUM(P2SVCOM02)   as P2SVCOM02,'
                          +'       SUM(P2SVCOM03)   as P2SVCOM03,'
                          +'       SUM(P2SDESCRAT)  as P2SDESCRAT,'
                          +'       SUM(P2SPCOCUS)   as P2SPCOCUS,'
                          +'       P2SCODPRO,'
                          +'       P2SCHAVE,'
                          +'       P2SCODPRO,'
                          +'       P2SDESC1,'
                          +'       P2SDESC2,'
                          +'       P2SQTD,'
                          +'       P2SQTDDEV,'
                          +'       P2SSIT,'
                          +'       P2SCODFAB,'
                          +'       P2SLISTA,'
                          +'       P2SSTATUS,'
                          +'       P2SPCOTAB,'
                          +'       P2STABELA,'
                          +'       P2SALIQ,'
                          +'       P2SPCOMIS,'
                          +'       P2SDESCM,'
                          +'       max(P2SCFO) as P2SCFO,'
                          +'       P2SSEMCOM,'
                          +'       P2SPDESCF,P2SLOTSEQ'
                          +'       from CADP02S where '
                          +msql_ped02s
                          +' group by P2SCODPRO,P2SCHAVE,P2SCODPRO, '
                          +'       P2SDESC1, '
                          +'       P2SDESC2,P2SQTD,P2SQTDDEV,P2SSIT,P2SCODFAB,P2SLISTA, '
                          +'       P2SSTATUS,P2SPCOTAB,P2STABELA,P2SALIQ,P2SPCOMIS,P2SDESCM, '
                          +'       P2SSEMCOM,P2SPDESCF,P2SLOTSEQ ');
      end
   else
      begin
      Frm_Ped.Qr_Ped02S.SQl.Add('Select 1.00            as P2SCODEMP, '
                          +'       1.00             as P2SORDEM, '
                          +'       min(P2SITEM)     as P2SITEM,'
                          +'       sum(P2SQTD)      as P2SQTD,'
                          +'       sum(P2SQTDDEV)   as P2SQTDDEV,'
                          +'       sum(P2SVALDES)   as P2SVALDES,'
                          +'       sum(P2SBCISSQN)  as P2SBCISSQN,'
                          +'       sum(P2SVISSQN)   as P2SVISSQN,'
                          +'       SUM(P2STOTDES)   as P2STOTDES,'
                          +'       SUM(P2SISENTAS)  as P2SISENTAS,'
                          +'       SUM(P2SVDESCF)   as P2SVDESCF,'
                          +'       SUM(P2SVCOMIS)   as P2SVCOMIS,'
                          +'       SUM(P2SVCOM02)   as P2SVCOM02,'
                          +'       SUM(P2SVCOM03)   as P2SVCOM03,'
                          +'       SUM(P2SDESCRAT)  as P2SDESCRAT,'
                          +'       SUM(P2SPCOCUS)   as P2SPCOCUS,'
                          +'       P2SCODPRO,'
                          +'       P2SCHAVE,'
                          +'       P2SCODPRO,'
                          +'       P2SDESC1,'
                          +'       P2SDESC2,'
                          +'       P2SPRECO,'
                          +'       P2SSIT,'
                          +'       P2SCODFAB,'
                          +'       P2SLISTA,'
                          +'       P2SSTATUS,'
                          +'       P2SPCOTAB,'
                          +'       P2STABELA,'
                          +'       P2SALIQ,'
                          +'       P2SPCOMIS,'
                          +'       P2SDESCM,'
                          +'       max(P2SCFO) AS P2SCFO,'
                          +'       P2SSEMCOM,'
                          +'       P2SPDESCF,P2SLOTSEQ'
                          +'       from CADP02S where '
                          +msql_ped02s
                          +' group by P2SCODPRO,P2SCHAVE,P2SCODPRO, '
                          +'       P2SDESC1, '
                          +'       P2SDESC2,P2SPRECO,P2SSIT,P2SCODFAB,P2SLISTA, '
                          +'       P2SSTATUS,P2SPCOTAB,P2STABELA,P2SALIQ,P2SPCOMIS,P2SDESCM, '
                          +'       P2SSEMCOM,P2SPDESCF,P2SLOTSEQ ');
      end;
   end
else
   Frm_Ped.Qr_Ped02S.Sql.add(msql_ped02s+' order by P2SCODEMP,P2SCHAVE,P2SORDEM,P2SITEM');
Frm_Ped.Qr_Ped02S.Open;
}
result:=true;
end;


function TFrm_Ped_AutoP.fCarregarTabTemp(ptipo: Integer): Boolean;
begin
if Tb_Ped02.Active then
   Tb_Ped02.Close;
if Tb_Ped02s.Active then
   Tb_Ped02s.Close;

BlqEventoPed02:=true;

DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Delete from '+mTabTmp01);
try
   DM5.Query1.ExecSQL;
except
   end;

DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Delete from '+mTabTmp02);
try
   DM5.Query1.ExecSQL;
except
   end;

Tb_Ped02.Close;
Tb_Ped02.SQL.Clear;
Tb_Ped02.SQL.Add('Select * from '+mTabTmp01);
Tb_Ped02.Open;
Src_Ped02.DataSet:=nil;
Src_Ped02s.DataSet:=nil;
mtotund             :=0;
mtotbru             :=0;
mtotbru_101         :=0;
mtotdes_101         :=0;
mtotdes             :=0;
mtotacrecv          :=0;
mtotacreger         :=0;
mtoticmr            :=0;
mtotipi             :=0;
mtotrepas           :=0;
mItem               :=0;
While not DM4.Qr_Ped02.Eof do
   begin
   Tb_Ped02.Append;
   Tb_Ped02P2CODEMP.Value      :=DM4.Qr_Ped02.FieldByName('P2CODEMP').AsFloat;
   Tb_Ped02P2LOTSEQ.Value      :=DM4.Qr_Ped02.FieldByName('P2LOTSEQ').AsFloat;
   Tb_Ped02P2CHAVE.Value       :=DM4.Qr_Ped02.FieldByName('P2CHAVE').AsFloat;
   Tb_Ped02P2ORDEM.Value       :=DM4.Qr_Ped02.FieldByName('P2ORDEM').AsFloat;
   Tb_Ped02P2ITEM.Value        :=DM4.Qr_Ped02.FieldByName('P2ITEM').AsFloat;
   Tb_Ped02P2CODPRO.Value      :=DM4.Qr_Ped02.FieldByName('P2CODPRO').AsFloat;
   Tb_Ped02P2CODANT.Value      :=DM4.Qr_Ped02.FieldByName('P2CODANT').AsFloat;
   Tb_Ped02P2QTD.Value         :=DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat;
   Tb_Ped02P2QTDDEV.Value      :=DM4.Qr_Ped02.FieldByName('P2QTDDEV').AsFloat;
   Tb_Ped02P2LOTE.Value        :=DM4.Qr_Ped02.FieldByName('P2LOTE').AsString;
   Tb_Ped02P2PROMOCAO.Value    :=DM4.Qr_Ped02.FieldByName('P2PROMOCAO').AsString;
   Tb_Ped02P2DTVCTO.Value      :=DM4.Qr_Ped02.FieldByName('P2DTVCTO').AsDateTime;
   Tb_Ped02P2DESC1.Value       :=DM4.Qr_Ped02.FieldByName('P2DESC1').AsFloat;
   Tb_Ped02P2DESC2.Value       :=DM4.Qr_Ped02.FieldByName('P2DESC2').AsFloat;
   Tb_Ped02P2VALDES.Value      :=DM4.Qr_Ped02.FieldByName('P2VALDES').AsFloat;
   Tb_Ped02P2PRECO.Value       :=DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat;
   Tb_Ped02P2SIT.Value         :=DM4.Qr_Ped02.FieldByName('P2SIT').AsString;
   Tb_Ped02P2CODFAB.Value      :=DM4.Qr_Ped02.FieldByName('P2CODFAB').AsFloat;
   Tb_Ped02P2BASEN.Value       :=DM4.Qr_Ped02.FieldByName('P2BASEN').AsFloat;
   Tb_Ped02P2ICMSN.Value       :=DM4.Qr_Ped02.FieldByName('P2ICMSN').AsFloat;
   Tb_Ped02P2REPAS.Value       :=DM4.Qr_Ped02.FieldByName('P2REPAS').AsFloat;
   Tb_Ped02P2BASER.Value       :=DM4.Qr_Ped02.FieldByName('P2BASER').AsFloat;
   Tb_Ped02P2ICMSR.Value       :=DM4.Qr_Ped02.FieldByName('P2ICMSR').AsFloat;
   Tb_Ped02P2LISTA.Value       :=DM4.Qr_Ped02.FieldByName('P2LISTA').AsFloat;
   Tb_Ped02P2STATUS.Value      :=DM4.Qr_Ped02.FieldByName('P2STATUS').AsFloat;
   Tb_Ped02P2PCOTAB.Value      :=DM4.Qr_Ped02.FieldByName('P2PCOTAB').AsFloat;
   Tb_Ped02P2UCPR.Value        :=DM4.Qr_Ped02.FieldByName('P2UCPR').AsFloat;
   Tb_Ped02P2PCOCUS.Value      :=DM4.Qr_Ped02.FieldByName('P2PCOCUS').AsFloat;
   Tb_Ped02P2PCOMAX.Value      :=DM4.Qr_Ped02.FieldByName('P2PCOMAX').AsFloat;
   Tb_Ped02P2TOTDES.Value      :=DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;
   Tb_Ped02P2DESCRAT.Value     :=DM4.Qr_Ped02.FieldByName('P2DESCRAT').AsFloat;
   Tb_Ped02P2TABELA.Value      :=DM4.Qr_Ped02.FieldByName('P2TABELA').AsString;
   Tb_Ped02P2ALIPI.Value       :=DM4.Qr_Ped02.FieldByName('P2ALIPI').AsFloat;
   Tb_Ped02P2VALIPI.Value      :=DM4.Qr_Ped02.FieldByName('P2VALIPI').AsFloat;
   Tb_Ped02P2BCINR.Value       :=DM4.Qr_Ped02.FieldByName('P2BCINR').AsFloat;
   Tb_Ped02P2ICMSNR.Value      :=DM4.Qr_Ped02.FieldByName('P2ICMSNR').AsFloat;
   Tb_Ped02P2ISENTAS.Value     :=DM4.Qr_Ped02.FieldByName('P2ISENTAS').AsFloat;
   Tb_Ped02P2TOTOUT.Value      :=DM4.Qr_Ped02.FieldByName('P2TOTOUT').AsFloat;
   Tb_Ped02P2ALIQ.Value        :=DM4.Qr_Ped02.FieldByName('P2ALIQ').AsFloat;
   Tb_Ped02P2ALIQNR.Value      :=DM4.Qr_Ped02.FieldByName('P2ALIQNR').AsFloat;
   Tb_Ped02P2PCOMIS.Value      :=DM4.Qr_Ped02.FieldByName('P2PCOMIS').AsFloat;
   Tb_Ped02P2VCOMIS.Value      :=DM4.Qr_Ped02.FieldByName('P2VCOMIS').AsFloat;
   Tb_Ped02P2VCOM02.Value      :=DM4.Qr_Ped02.FieldByName('P2VCOM02').AsFloat;
   Tb_Ped02P2VCOM03.Value      :=DM4.Qr_Ped02.FieldByName('P2VCOM03').AsFloat;
   Tb_Ped02P2DESCM.Value       :=DM4.Qr_Ped02.FieldByName('P2DESCM').AsFloat;
   Tb_Ped02P2CFO.Value         :=DM4.Qr_Ped02.FieldByName('P2CFO').AsFloat;
   Tb_Ped02P2SEMCOM.Value      :=DM4.Qr_Ped02.FieldByName('P2SEMCOM').AsFloat;
   Tb_Ped02P2TOTLIQ.Value      :=DM4.Qr_Ped02.FieldByName('P2TOTLIQ').AsFloat;
   Tb_Ped02P2PDESCF.Value      :=DM4.Qr_Ped02.FieldByName('P2PDESCF').AsFloat;
   Tb_Ped02P2VDESCF.Value      :=DM4.Qr_Ped02.FieldByName('P2VDESCF').AsFloat;
   Tb_Ped02P2ACRECONV.Value    :=DM4.Qr_Ped02.FieldByName('P2ACRECONV').AsFloat;
   Tb_Ped02P2ACREGER.Value     :=DM4.Qr_Ped02.FieldByName('P2ACREGER').AsFloat;
   Tb_Ped02P2DESC3.Value       :=DM4.Qr_Ped02.FieldByName('P2DESC3').AsFloat;
   Tb_Ped02P2CODGRU.Value      :=DM4.Qr_Ped02.FieldByName('P2CODGRU').AsFloat;
   Tb_Ped02P2VCOM04.Value      :=DM4.Qr_Ped02.FieldByName('P2VCOM04').AsFloat;
   Tb_Ped02P2ACRERAT.Value     :=DM4.Qr_Ped02.FieldByName('P2ACRERAT').AsFloat;
   Tb_Ped02NOMEPRO.Value       :=DM4.Qr_Ped02.FieldByName('PDNOME').AsString;
   Tb_Ped02NOMEPRO2.Value      :=DM4.Qr_Ped02.FieldByName('PDNOME2').AsString;
   Tb_Ped02MARCAPRO.Value      :=DM4.Qr_Ped02.FieldByName('PDMARCA').AsString;
   Tb_Ped02SECAOPRO.Value      :=DM4.Qr_Ped02.FieldByName('PDSECAO').AsString;
   Tb_Ped02P2PRECO_101.Value   :=DM4.Qr_Ped02.FieldByName('P2PRECO_101').AsFloat;
   Tb_Ped02P2QTD_101.Value     :=DM4.Qr_Ped02.FieldByName('P2QTD_101').AsFloat;
   Tb_Ped02P2QTDDEV_101.Value  :=DM4.Qr_Ped02.FieldByName('P2QTDDEV_101').AsFloat;
   Tb_Ped02P2LOTE_101.Value    :=DM4.Qr_Ped02.FieldByName('P2LOTE_101').AsString;
   Tb_Ped02P2PROMOCAO_101.Value:=DM4.Qr_Ped02.FieldByName('P2PROMOCAO_101').AsString;
   Tb_Ped02P2DTVCTO_101.Value  :=DM4.Qr_Ped02.FieldByName('P2DTVCTO_101').AsDateTime;
   Tb_Ped02P2VALDES_101.Value  :=DM4.Qr_Ped02.FieldByName('P2VALDES_101').AsFloat;
   Tb_Ped02P2BASEN_101.Value   :=DM4.Qr_Ped02.FieldByName('P2BASEN_101').AsFloat;
   Tb_Ped02P2ICMSN.Value       :=DM4.Qr_Ped02.FieldByName('P2ICMSN_101').AsFloat;
   Tb_Ped02P2REPAS_101.Value   :=DM4.Qr_Ped02.FieldByName('P2REPAS_101').AsFloat;
   Tb_Ped02P2BASER_101.Value   :=DM4.Qr_Ped02.FieldByName('P2BASER_101').AsFloat;
   Tb_Ped02P2ICMSR_101.Value   :=DM4.Qr_Ped02.FieldByName('P2ICMSR_101').AsFloat;
   Tb_Ped02P2TOTDES_101.Value  :=DM4.Qr_Ped02.FieldByName('P2TOTDES_101').AsFloat;
   Tb_Ped02P2DESCRAT_101.Value :=DM4.Qr_Ped02.FieldByName('P2DESCRAT_101').AsFloat;
   Tb_Ped02P2VALIPI_101.Value  :=DM4.Qr_Ped02.FieldByName('P2VALIPI_101').AsFloat;
   Tb_Ped02P2BCINR_101.Value   :=DM4.Qr_Ped02.FieldByName('P2BCINR_101').AsFloat;
   Tb_Ped02P2ICMSNR_101.Value  :=DM4.Qr_Ped02.FieldByName('P2ICMSNR_101').AsFloat;
   Tb_Ped02P2ISENTAS_101.Value :=DM4.Qr_Ped02.FieldByName('P2ISENTAS_101').AsFloat;
   Tb_Ped02P2TOTOUT_101.Value  :=DM4.Qr_Ped02.FieldByName('P2TOTOUT_101').AsFloat;
   Tb_Ped02P2ALIQ_101.Value    :=DM4.Qr_Ped02.FieldByName('P2ALIQ_101').AsFloat;
   Tb_Ped02P2ALIQNR_101.Value  :=DM4.Qr_Ped02.FieldByName('P2ALIQNR_101').AsFloat;
   Tb_Ped02P2VCOMIS_101.Value  :=DM4.Qr_Ped02.FieldByName('P2VCOMIS_101').AsFloat;
   Tb_Ped02P2VCOM02_101.Value  :=DM4.Qr_Ped02.FieldByName('P2VCOM02_101').AsFloat;
   Tb_Ped02P2VCOM03_101.Value  :=DM4.Qr_Ped02.FieldByName('P2VCOM03_101').AsFloat;
   Tb_Ped02P2DESCM_101.Value   :=DM4.Qr_Ped02.FieldByName('P2DESCM_101').AsFloat;
   Tb_Ped02P2SEMCOM_101.Value  :=DM4.Qr_Ped02.FieldByName('P2SEMCOM_101').AsFloat;
   Tb_Ped02P2TOTLIQ_101.Value  :=DM4.Qr_Ped02.FieldByName('P2TOTLIQ_101').AsFloat;
   Tb_Ped02P2PDESCF_101.Value  :=DM4.Qr_Ped02.FieldByName('P2PDESCF_101').AsFloat;
   Tb_Ped02P2VDESCF_101.Value  :=DM4.Qr_Ped02.FieldByName('P2VDESCF_101').AsFloat;
   Tb_Ped02P2ACRECONV_101.Value:=DM4.Qr_Ped02.FieldByName('P2ACRECONV_101').AsFloat;
   Tb_Ped02P2ACREGER_101.Value :=DM4.Qr_Ped02.FieldByName('P2ACREGER_101').AsFloat;
   Tb_Ped02P2VCOM04_101.Value  :=DM4.Qr_Ped02.FieldByName('P2VCOM04_101').AsFloat;
   Tb_Ped02P2ACRERAT_101.Value :=DM4.Qr_Ped02.FieldByName('P2ACRERAT_101').AsFloat;
   Tb_Ped02vlr_total.Value     :=Tb_Ped02P2QTD.AsFloat*Tb_Ped02P2PRECO.AsFloat;
   Tb_Ped02.Post;

   mItem:=mitem+1;


   mtotund             :=mtotund+Tb_Ped02P2QTD.Value;
   mtotbru             :=mtotbru+(Tb_Ped02P2QTD.Value*Tb_Ped02P2PRECO.Value);
   mtotbru_101         :=mtotbru_101+(Tb_Ped02P2QTD_101.Value*Tb_Ped02P2PRECO_101.Value);
   mtotdes_101         :=mtotdes_101+Tb_Ped02P2TOTDES_101.Value;
   mtotdes             :=mtotdes+Tb_Ped02P2TOTDES.Value;
   mtotacrecv          :=mtotacrecv+Tb_Ped02P2ACRECONV.Value;
   mtotacreger         :=mtotacreger-+Tb_Ped02P2ACREGER.Value;
   mtoticmr            :=mtoticmr+Tb_Ped02P2ICMSR.Value;
   mtotipi             :=mtotipi+Tb_Ped02P2VALIPI.Value;
   mtotrepas           :=mtotrepas+Tb_Ped02P2REPAS.Value;

   DM4.Qr_Ped02.Next;
   end;



Tb_Ped02s.Close;
Tb_Ped02s.SQL.Clear;
Tb_Ped02s.SQL.Add('Select * from '+mTabTmp02);
Tb_Ped02s.Open;
Src_Ped02s.DataSet:=nil;
While not DM4.Qr_Ped02S.Eof do
   begin
   Tb_Ped02S.Append;
   Tb_Ped02SP2SCODEMP.Value    :=DM4.Qr_Ped02S.FieldByName('P2SCODEMP').AsFloat;
   Tb_Ped02SP2SLOTSEQ.Value    :=DM4.Qr_Ped02S.FieldByName('P2SLOTSEQ').AsFloat;
   Tb_Ped02SP2SCHAVE.Value     :=DM4.Qr_Ped02S.FieldByName('P2SCHAVE').AsFloat;
   Tb_Ped02SP2SORDEM.Value     :=DM4.Qr_Ped02S.FieldByName('P2SORDEM').AsFloat;
   Tb_Ped02SP2SITEM.Value      :=DM4.Qr_Ped02S.FieldByName('P2SITEM').AsFloat;
   Tb_Ped02SP2SCODPRO.Value    :=DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsFloat;
   Tb_Ped02SP2SQTD.Value       :=DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat;
   Tb_Ped02SP2SDESC1.Value     :=DM4.Qr_Ped02S.FieldByName('P2SDESC1').AsFloat;
   Tb_Ped02SP2SDESC2.Value     :=DM4.Qr_Ped02S.FieldByName('P2SDESC2').AsFloat;
   Tb_Ped02SP2SDESC3.Value     :=DM4.Qr_Ped02S.FieldByName('P2SDESC3').AsFloat;
   Tb_Ped02SP2SVALDES.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVALDES').AsFloat;
   Tb_Ped02SP2SPRECO.Value     :=DM4.Qr_Ped02S.FieldByName('P2SPRECO').AsFloat;
   Tb_Ped02SP2SSIT.Value       :=DM4.Qr_Ped02S.FieldByName('P2SSIT').AsString;
   Tb_Ped02SP2SCODFAB.Value    :=DM4.Qr_Ped02S.FieldByName('P2SCODFAB').AsFloat;
   Tb_Ped02SP2SBCISSQN.Value   :=DM4.Qr_Ped02S.FieldByName('P2SBCISSQN').AsFloat;
   Tb_Ped02SP2SVISSQN.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVISSQN').AsFloat;
   Tb_Ped02SP2SLISTA.Value     :=DM4.Qr_Ped02S.FieldByName('P2SLISTA').AsFloat;
   Tb_Ped02SP2SSTATUS.Value    :=DM4.Qr_Ped02S.FieldByName('P2SSTATUS').AsFloat;
   Tb_Ped02SP2SPCOTAB.Value    :=DM4.Qr_Ped02S.FieldByName('P2SPCOTAB').AsFloat;
   Tb_Ped02SP2STOTDES.Value    :=DM4.Qr_Ped02S.FieldByName('P2STOTDES').AsFloat;
   Tb_Ped02SP2SISENTAS.Value   :=DM4.Qr_Ped02S.FieldByName('P2SISENTAS').AsFloat;
   Tb_Ped02SP2SALIQ.Value      :=DM4.Qr_Ped02S.FieldByName('P2SALIQ').AsFloat;
   Tb_Ped02SP2SPCOMIS.Value    :=DM4.Qr_Ped02S.FieldByName('P2SPCOMIS').AsFloat;
   Tb_Ped02SP2SVCOMIS.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVCOMIS').AsFloat;
   Tb_Ped02SP2SDESCM.Value     :=DM4.Qr_Ped02S.FieldByName('P2SDESCM').AsFloat;
   Tb_Ped02SP2SCFO.Value       :=DM4.Qr_Ped02S.FieldByName('P2SCFO').AsFloat;
   Tb_Ped02SP2SSEMCOM.Value    :=DM4.Qr_Ped02S.FieldByName('P2SSEMCOM').AsFloat;
   Tb_Ped02SP2SPDESCF.Value    :=DM4.Qr_Ped02S.FieldByName('P2SPDESCF').AsFloat;
   Tb_Ped02SP2SVDESCF.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVDESCF').AsFloat;
   Tb_Ped02SP2SDESCRAT.Value   :=DM4.Qr_Ped02S.FieldByName('P2SDESCRAT').AsFloat;
   Tb_Ped02SP2SPCOCUS.Value    :=DM4.Qr_Ped02S.FieldByName('P2SPCOCUS').AsFloat;
   Tb_Ped02SP2SVCOM02.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVCOM02').AsFloat;
   Tb_Ped02SP2SVCOM03.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVCOM03').AsFloat;
   Tb_Ped02SP2SQTDDEV.Value    :=DM4.Qr_Ped02S.FieldByName('P2SQTDDEV').AsFloat;
   Tb_Ped02SP2SCHAVE.Value     :=DM4.Qr_Ped02S.FieldByName('P2SCHAVE').AsFloat;
   Tb_Ped02SP2SACRECRAT.Value  :=DM4.Qr_Ped02S.FieldByName('P2SACRECRAT').AsFloat;

   Tb_Ped02SP2SQTD_101.Value       :=DM4.Qr_Ped02S.FieldByName('P2SQTD_101').AsFloat;
   Tb_Ped02SP2SVALDES_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVALDES_101').AsFloat;
   Tb_Ped02SP2SPRECO_101.Value     :=DM4.Qr_Ped02S.FieldByName('P2SPRECO_101').AsFloat;
   Tb_Ped02SP2SBCISSQN_101.Value   :=DM4.Qr_Ped02S.FieldByName('P2SBCISSQN_101').AsFloat;
   Tb_Ped02SP2SVISSQN_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVISSQN_101').AsFloat;
   Tb_Ped02SP2STOTDES_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2STOTDES_101').AsFloat;
   Tb_Ped02SP2SISENTAS_101.Value   :=DM4.Qr_Ped02S.FieldByName('P2SISENTAS_101').AsFloat;
   Tb_Ped02SP2SALIQ_101.Value      :=DM4.Qr_Ped02S.FieldByName('P2SALIQ_101').AsFloat;
   Tb_Ped02SP2SPCOMIS_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SPCOMIS_101').AsFloat;
   Tb_Ped02SP2SVCOMIS_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVCOMIS_101').AsFloat;
   Tb_Ped02SP2SDESCM_101.Value     :=DM4.Qr_Ped02S.FieldByName('P2SDESCM_101').AsFloat;
   Tb_Ped02SP2SCFO_101.Value       :=DM4.Qr_Ped02S.FieldByName('P2SCFO_101').AsFloat;
   Tb_Ped02SP2SSEMCOM_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SSEMCOM_101').AsFloat;
   Tb_Ped02SP2SPDESCF_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SPDESCF_101').AsFloat;
   Tb_Ped02SP2SVDESCF_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVDESCF_101').AsFloat;
   Tb_Ped02SP2SDESCRAT_101.Value   :=DM4.Qr_Ped02S.FieldByName('P2SDESCRAT_101').AsFloat;
   Tb_Ped02SP2SVCOM02_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVCOM02_101').AsFloat;
   Tb_Ped02SP2SVCOM03_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SVCOM03_101').AsFloat;
   Tb_Ped02SP2SQTDDEV_101.Value    :=DM4.Qr_Ped02S.FieldByName('P2SQTDDEV_101').AsFloat;
   Tb_Ped02SP2SACRECRAT_101.Value  :=DM4.Qr_Ped02S.FieldByName('P2SACRECRAT_101').AsFloat;
   Tb_Ped02S.Post;

   mItem:=mitem+1;


   mtotund             :=mtotund+Tb_Ped02SP2SQTD.Value;
   mtotbru             :=mtotbru+(Tb_Ped02SP2SQTD.Value*Tb_Ped02SP2SPRECO.Value);
   mtotbru_101         :=mtotbru_101+(Tb_Ped02SP2SQTD_101.Value*Tb_Ped02SP2SPRECO_101.Value);
   mtotdes_101         :=mtotdes_101+Tb_Ped02SP2STOTDES_101.Value;
   mtotdes             :=mtotdes+Tb_Ped02SP2STOTDES.Value;

   DM4.Qr_Ped02S.Next;
   end;

BlqEventoPed02:=false;
Src_Ped02S.DataSet:=Tb_Ped02S;
Src_Ped02.DataSet :=Tb_Ped02;
result:=true;
end;

procedure TFrm_Ped_AutoP.DESC02Exit(Sender: TObject);
begin
if (ValFloat(DESC02.Text)>99) or (ValFloat(DESC02.Text)<0) then
   begin
   verteclado(0);
   MessageDlg('Desconto Inválido!',mtWarning,[mbOK],0);
   DESC02.SetFocus;
   exit;
   end;

DESC02.Text:=insere(FormatFloat(mcasas,ValFloat(DESC02.Text)),' ',pspaper);
Tool_Calcular.Click;


if (DM4.Tb_Par01PDESCMP0.Value>0) and (ValFloat(DESC02.Text)>0) then
   begin
   if (ValFloat(TOTDES.Caption)>0) then
      mpdesc:=(ValFloat(TOTDES.Caption)*100)/ValFloat(TOTAL.Caption)
   else
      begin
      mpdesc:=valFloat(DESC01.Text)+ValFloat(DESC02.Text);
      end;
   if (mpdesc>DM4.Tb_Par01PDESCMP0.Value) and (mpdesc>mlib_mPDescLib) then
      begin
      if fValidaSenha(codusr,2,0,DM1.Tb_CliCCODCLI.Value,0,0,0,'% Desconto maior que o permitido. Para continuar digite a senha','') then
         mlib_mPDescLib:=mpdesc
      else
         DESC02.Text:=FormatFloat(mcasas, mdescant);
     end;
   end;

end;

procedure TFrm_Ped_AutoP.VALDESKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['.',','] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Ped_AutoP.DESC01Enter(Sender: TObject);
begin
mdescant:=ValFloat(DESC01.Text);

end;

procedure TFrm_Ped_AutoP.DESC02Enter(Sender: TObject);
begin
mdescant:=ValFloat(DESC02.Text);

end;

procedure TFrm_Ped_AutoP.VALDESEnter(Sender: TObject);
begin
mdescant:=ValFloat(VALDES.Text);

end;


function fped01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM4.Qr_Ped01.First;
While not DM4.Qr_Ped01.Eof do
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select max(P1CODNOV) from OLD_CADP01');
   DM1.Query1.Open;
   mcod:=DM1.Query1.Fields[0].AsInteger+1;
   minstru:='Insert into OLD_CADP01 (';
   v:='';
   for x:=0 to DM1.Tb_Ped01.FieldCount-1 do
      begin
      if DM1.Tb_Ped01.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped01.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+',P1CODNOV) Select ';
   v:='';
   for x:=0 to DM1.Tb_Ped01.FieldCount-1 do
      begin
      if DM1.Tb_Ped01.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Tb_Ped01.Fields[x].FieldName='P1STATUS' then
         minstru:=minstru+v+FormatFloat('0',ptipo)+' as P1STATUS '
      else if DM1.Tb_Ped01.Fields[x].FieldName='P1USRMOD' then
         minstru:=minstru+v+FormatFloat('00000',codusr)+' as P1USRMOD '
      else if DM1.Tb_Ped01.Fields[x].FieldName='P1DTMOD' then
         minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as P1DTMOD '
      else if DM1.Tb_Ped01.Fields[x].FieldName='P1HRMOD' then
         minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as P1HRMOD '
      else
         minstru:=minstru+v+DM1.Tb_Ped01.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as P1CODNOV ';
   minstru:=minstru+' from CADP01 where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                   +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                   +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                   +' and P1ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,10072,'Frm_Ped','CADP01_OLD');
      end;
   DM1.Query1.Close;
   minstru:='Insert into OLD_CADP01D (';
   v:='';
   for x:=0 to DM1.Tb_Ped01D.FieldCount-1 do
      begin
      if DM1.Tb_Ped01D.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped01D.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+',P1DCODNOV) Select ';
   v:='';
   for x:=0 to DM1.Tb_Ped01D.FieldCount-1 do
      begin
      if DM1.Tb_Ped01D.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped01D.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as P1DCODNOV ';
   minstru:=minstru+' from CADP01D where P1DCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                   +' and P1DLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                +' and P1DCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                +' and P1DORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,10106,'Frm_Ped','CADP01D_OLD');
      end;
   DM1.Query1.Close;
   minstru:='Insert into OLD_CADP01V (';
   v:='';
   for x:=0 to DM1.Tb_Ped01V.FieldCount-1 do
      begin
      if DM1.Tb_Ped01V.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped01V.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+',P1VCODNOV) Select ';
   v:='';
   for x:=0 to DM1.Tb_Ped01V.FieldCount-1 do
      begin
      if DM1.Tb_Ped01V.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped01V.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as P1VCODNOV ';
   minstru:=minstru+' from CADP01V where P1VCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                   +' and P1VLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                   +' and P1VCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                   +' and P1VORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,10140,'Frm_Ped','CADP01V_OLD');
     end;
   DM1.Query1.Close;
   minstru:='Insert into OLD_CADP02 (';
   v:='';
   for x:=0 to DM1.Tb_Ped02.FieldCount-1 do
      begin
      if DM1.Tb_Ped02.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped02.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+',P2CODNOV) Select ';
   v:='';
   for x:=0 to DM1.Tb_Ped02.FieldCount-1 do
      begin
      if DM1.Tb_Ped02.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped02.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as P2CODNOV ';
   minstru:=minstru+' from CADP02 where P2CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                   +' and P2LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                   +' and P2CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                   +' and P2ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,10174,'Frm_Ped','CADP02D_OLD');
      end;
   DM1.Query1.Close;
   minstru:='Insert into OLD_CADP02D (';
   v:='';
   for x:=0 to DM1.Tb_Ped02D.FieldCount-1 do
      begin
      if DM1.Tb_Ped02D.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped02D.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+',P2DCODNOV) Select ';
   v:='';
   for x:=0 to DM1.Tb_Ped02D.FieldCount-1 do
      begin
      if DM1.Tb_Ped02D.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped02D.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as P2DCODNOV ';
   minstru:=minstru+' from CADP02D where P2DCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                +' and P2DLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                +' and P2DCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                +' and P2DORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,10207,'Frm_Ped','CADP02D_OLD');
      end;

   DM1.Query1.Close;
   minstru:='Insert into OLD_CADP02S (';
   v:='';
   for x:=0 to DM1.Tb_Ped02S.FieldCount-1 do
      begin
      if DM1.Tb_Ped02S.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped02S.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+',P2SCODNOV) Select ';
   v:='';
   for x:=0 to DM1.Tb_Ped02S.FieldCount-1 do
      begin
      if DM1.Tb_Ped02S.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Ped02S.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as P2SCODNOV ';
   minstru:=minstru+' from CADP02S where P2SCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                   +' and P2SLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                +' and P2SCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                +' and P2SORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,10240,'Frm_Ped','CADP02S');
      end;
   DM1.Query1.Close;
   minstru:='Insert into OLD_CADPFP (';
   v:='';
   for x:=0 to DM4.Tb_PedFP.FieldCount-1 do
      begin
      if  DM4.Tb_PedFP.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM4.Tb_PedFP.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+',PFPCODNOV) Select ';
   v:='';
   for x:=0 to DM4.Tb_PedFP.FieldCount-1 do
      begin
      if DM4.Tb_PedFP.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM4.Tb_PedFP.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as PFPCODNOV ';
   minstru:=minstru+' from CADPFP where PFPCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                   +' and PFPLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                   +' and PFPCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,13209,'Frm_Ped','CADPFP');
      end;
   DM1.Query1.Close;
   DM4.Qr_Ped01.Next;
   end;
result:=True;
end;


function tfrm_Ped_AutoP.fPed01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
minstru:=' Select ';
v:='';
for x:=0 to DM4.Qr_Ped01.FieldCount-1 do
   begin
   if DM4.Qr_Ped01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Qr_Ped01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADP01 where P1CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Qr_Ped01.Close;
DM4.Qr_Ped01.SQL.Clear;
DM4.Qr_Ped01.SQL.add(minstru);
DM4.Qr_Ped01.Open;


minstru:=' Select ';
v:='';
for x:=0 to DM4.Qr_Ped01d.FieldCount-1 do
   begin
   if DM4.Qr_Ped01d.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Qr_Ped01d.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADP01D where P1DCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Qr_Ped01d.Close;
DM4.Qr_Ped01d.SQL.Clear;
DM4.Qr_Ped01d.SQL.add(minstru);
DM4.Qr_Ped01d.Open;

minstru:=' Select ';
v:='';
for x:=0 to DM4.Qr_Ped01V.FieldCount-1 do
   begin
   if DM4.Qr_Ped01V.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Qr_Ped01V.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADP01V where P1VCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Qr_Ped01V.Close;
DM4.Qr_Ped01V.SQL.Clear;
DM4.Qr_Ped01V.SQL.add(minstru);
DM4.Qr_Ped01V.Open;


minstru:=' Select ';
v:='';
for x:=0 to DM4.Qr_Ped02.FieldCount-1 do
   begin
   if DM4.Qr_Ped02.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Qr_Ped02.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADP02 where P2CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Qr_Ped02.Close;
DM4.Qr_Ped02.SQL.Clear;
DM4.Qr_Ped02.SQL.add(minstru);
DM4.Qr_Ped02.Open;

minstru:=' Select ';
v:='';
for x:=0 to DM4.Qr_Ped02d.FieldCount-1 do
   begin
   if DM4.Qr_Ped02d.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Qr_Ped02d.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADP02D where P2DCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Qr_Ped02d.Close;
DM4.Qr_Ped02d.SQL.Clear;
DM4.Qr_Ped02d.SQL.add(minstru);
DM4.Qr_Ped02d.Open;

minstru:=' Select ';
v:='';
for x:=0 to DM4.Qr_Ped02S.FieldCount-1 do
   begin
   if DM4.Qr_Ped02S.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM4.Qr_Ped02S.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADP02S where P2SCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM4.Qr_Ped02S.Close;
DM4.Qr_Ped02S.SQL.Clear;
DM4.Qr_Ped02S.SQL.add(minstru);
DM4.Qr_Ped02S.Open;
Tool_Incluir.Enabled   :=False;
tool_localizar.Enabled :=False;
Tool_Alterar.Enabled   :=False;
Tool_Gravar.Enabled    :=False;
Tool_Limpar.Enabled    :=False;
Tool_LSep.Enabled      :=False;
Tool_EmiteNF.Enabled   :=False;
Tool_Calcular.Enabled  :=False;
Tool_Faturar.Enabled   :=False;
Tool_Excluir.Enabled   :=False;
Tool_Arredondar.Enabled:=False;
Result:=True;
end;


function TFrm_Ped_AutoP.fexcluir(ptipo: Integer):Boolean;
{
Parametros ptipo= 0-Nao Atualiza estoque e deixa no arquivo
                  1-Atualiza estoque e deixa no arquivo
                  2-nao atualiza estoque e excluir o pedido
                  3-atualiza estoque e e exclui o pedido
}
begin
if (ptipo=1) or (ptipo=3) then
   begin
   DM4.Qr_Ped02S.First;
   While not DM4.Qr_Ped02S.Eof do
      begin
      if (mtipop<>0) and (mtipop<>10) and (mtipop<>8) and (mtipop<>12) and (mtipop<>13) and (mtipop<>17) and (mtipop<>18) then
         begin
         if Valint(copy(mpseg,4,2))>0  then  // controle do CADLGC
            begin
            if mtipop=7 then
               flbailgc(20,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
            else if mtipop=11 then
               flbailgc(10,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
            else if mtipop=14 then
               flbailgc(12,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
            else if mtipop=15 then
               flbailgc(22,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
            else if mtipop=19 then
               flbailgc(30,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
            else
               flbailgc(0,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
            end;

         if mtipop=7 then
            flbaiest(20,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
         else if mtipop=11 then
            flbaiest(10,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
         else if mtipop=14 then
            flbaiest(12,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
         else if mtipop=15 then
            flbaiest(22,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
         else if mtipop=19 then
            flbaiest(30,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat)
         else
            flbaiest(0,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
         end
      else
         begin
         if Valint(copy(mpseg,4,2))>0  then  // controle do CADLGC
            begin
            if mtipop=12 then
               begin
               flbailgc(11,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               flbaiest(11,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               end
            else if mtipop=13 then
               begin
               flbailgc(21,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               flbaiest(21,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               end
            else if mtipop=19 then
               begin
               flbailgc(31,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               flbaiest(31,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               end
            else
               begin
               flbailgc(1,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,'','',DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               flbaiest(1,0,DM4.Qr_Ped02S.FieldByName('P2SCODPRO').AsString,DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
               end;
            end;
         end;
         DM4.Qr_Ped02S.Next;
      end;
   DM4.Qr_Ped02.First;
   While not DM4.Qr_Ped02.Eof do
      begin
// devolucao
// fim das devolucao



      if (mtipop<>0) and (mtipop<>10)  and (mtipop<>8) and (mtipop<>12) and (mtipop<>13) and (mtipop<>17) and (mtipop<>18) then
         begin
         if Valint(copy(mpseg,4,2))>0  then  // controle do CADLGC
            begin
            if (DM4.Qr_Ped02.FieldByName('P2DTVCTO').IsNull)
                or (DM4.Qr_Ped02.FieldByName('P2DTVCTO').AsDateTime<=pdatanula) then
               mdtv:=''
            else
               mdtv:=FormatDateTime(fdt, DM4.Qr_Ped02.FieldByName('P2DTVCTO').AsDateTime);
            if mtipop=7 then
               flbailgc(20,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else if mtipop=11 then
               flbailgc(10,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else if mtipop=14 then
               flbailgc(12,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else if mtipop=15 then
               flbailgc(22,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else if mtipop=19 then
               flbailgc(30,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else
               flbailgc(0,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            end;
         if mtipop=7 then
            flbaiest(20,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else if mtipop=11 then
            flbaiest(10,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else if mtipop=14 then
            flbaiest(12,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else if mtipop=15 then
            flbaiest(22,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else if mtipop=19 then
            flbaiest(30,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else
            flbaiest(0,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat);
         end
      else
         begin
         if Valint(copy(mpseg,4,2))>0  then  // controle do CADLGC
            begin
            if (DM4.Qr_Ped02.FieldByName('P2DTVCTO').IsNull) or (DM4.Qr_Ped02.FieldByName('P2DTVCTO').AsDateTime<=pdatanula) then
               mdtv:=''
            else
               mdtv:=FormatDateTime(fdt, DM4.Qr_Ped02.FieldByName('P2DTVCTO').AsDateTime);
            if mtipop=12 then
               flbailgc(11,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else if mtipop=13 then
               flbailgc(21,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else if mtipop=19 then
               flbailgc(31,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
            else
               flbailgc(1,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat);
            end;
         if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18)  then
            begin
            if not CB_PEDORI.Checked then
               begin
               if DM4.Qr_Ped02.FieldByName('P2DTVCTO').IsNull then
                  mdtv:=''
               else
                  mdtv:='';
               if ftestardev(4,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsFloat,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat,
                                 DM4.Qr_Ped02.FieldByName('P2LOTE').AsString,mdtv)>0 then
                  begin
                  verteclado(0);
                  MessageDlg('Erro ao Ajustar Arquivo de Devoluções!',mtWarning,[mbOk],0);
                  end;
               end;
           end;
         if mtipop=12 then
            flbaiest(11,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else if mtipop=13 then
            flbaiest(21,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else if mtipop=19 then
            flbaiest(31,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
         else
            flbaiest(1,0,DM4.Qr_Ped02.FieldByName('P2CODPRO').AsString,DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat);
         end;
      DM4.Qr_Ped02.Next;
      end;
   end;
if ptipo<2 then
   begin
   DM4.Qr_Ped01.First;
   While not DM4.Qr_Ped01.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Update CADP01 set P1STATUS=9, '
                         +' P1USRMOD=0'+IntTostr(codusr)+','
                         +' P1DTMOD='+chr(39)+FormatDatetime(fdt,pdatasis)+chr(39)+','
                         +' P1HRMOD='+chr(39)+FormatDateTime(fhr, time)+chr(39)
                         +'  where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                         +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                         +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                         +' and P1ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,7966,'Frm_Ped','CADP01');
         end;
// EXCLUIR O CADLDR
      DM1.Query3.Close;
      DM1.Query3.Sql.Clear;
      DM1.Query3.Sql.add('Select CRCODEMP,CRCODLDR,CRLOTSEQ_FC FROM CADDAR '
                        +' where CRCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                        +' and CRLOTSEQ_CP=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                        +' and CRNPED=0'+DM4.Qr_Ped01P1CHAVE.AsString
                        +' and CRORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      DM1.Query3.Open;
      While not DM1.Query3.Eof do
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.Params.CreateParam(ftString,'DTHREXC',ptInput);
         DM1.Query1.SQL.Add('Update CADLDR set STATUS=9, '
                           +' USREXC=0'+IntToStr(codusr)+','
                           +' DTHREXC=:DTHREXC '
                           +' where CODEMP=0'+DM1.Query3.fieldbyName('CRCODEMP').AsString
                           +' and LOTSEQ=0'+DM1.Query3.fieldbyName('CRLOTSEQ_FC').AsString
                           +' and CODLDR=0'+DM1.Query3.fieldbyName('CRCODLDR').AsString);
         DM1.Query1.ParamByName('DTHREXC').AsDateTime:=now;
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,10526,'Frm_Ped','CADLDR');
            end;
         DM1.Query3.Next;
         end;

// TERMINO DO CADLDR

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Update CADDAR SET CRSTATUS=9, '
                        +' CRUSRALT=0'+IntTostr(codusr)+','
                        +' CRDTALT='+chr(39)+FormatDateTime(fdt,pdatasis)+chr(39)
                        +' where CRCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                        +' and CRLOTSEQ_CP=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                        +' and CRNPED=0'+DM4.Qr_Ped01P1CHAVE.AsString
                        +' and CRORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,7979,'Frm_Ped','CADDAR');
         end;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Update CADNS SET NSSTATUS=9 where NSCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                        +' and NSLOTSEQ_CP=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                        +' and NSCHAVEP=0'+DM4.Qr_Ped01P1CHAVE.AsString
                        +' and NSORDEMP=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,7989,'Frm_Ped','CADNS');
         end;
      DM1.Query1.Close;
      DM4.Qr_Ped01.Next;
      end;
   end
else
   begin
   DM4.Qr_Ped01.First;
   While not DM4.Qr_Ped01.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADP01 where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                         +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                         +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                         +' and P1ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8008,'Frm_Ped','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADP01V where P1VCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                         +' and P1VLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                         +' and P1VCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                         +' and P1VORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,10783,'Frm_Ped','CADP01');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADP02 where P2CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                         +' and P2LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                         +' and P2CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                         +' and P2ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,80187,'Frm_Ped','CADP02');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADPFP where PFPCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                         +' and PFPLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                         +' and PFPCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,106666,'Frm_Ped','CADPFP');
         end;


      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADP02D where P2DCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                        +' and P2DLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                        +' and P2DORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8083,'Frm_Ped','CADP02D');
         end;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADP02S where P2SCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                        +' and P2SLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                        +' and P2SCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                        +' and P2SORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8028,'Frm_Ped','CADP02S');
      end;



      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADP01D where P1DCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                         +' and P1DLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                         +' and P1DCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                         +' and P1DORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8040,'Frm_Ped','CADP01D');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADPO99 where POCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                         +' and POLOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                         +' and POCHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8050,'Frm_Ped','CADPO99');
         end;

// EXCLUIR O CADLDR
        DM1.Query3.Close;
        DM1.Query3.Sql.Clear;
         DM1.Query3.Sql.add('Select CRCODEMP,CRCODLDR,CRLOTSEQ_FC FROM CADDAR '
                           +' where CRCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                           +' and CRLOTSEQ_CP=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                           +' and CRNPED=0'+DM4.Qr_Ped01P1CHAVE.AsString
                           +' and CRORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
         DM1.Query3.Open;
         While not DM1.Query3.Eof do
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete from CADLDR '
                           +' where CODEMP=0'+DM1.Query3.fieldbyName('CRCODEMP').AsString
                           +' and LOTSEQ=0'+DM1.Query3.fieldbyName('CRLOTSEQ_FC').AsString
                           +' and CODLDR=0'+DM1.Query3.fieldbyName('CRCODLDR').AsString);
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,10683,'Frm_Ped','CADLDR');
               end;
            DM1.Query3.Next;
            end;

// TERMINO DO CADLDR


         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.add('Delete from CADDAR where CRCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                           +' and CRLOTSEQ_CP=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                           +' and CRNPED=0'+DM4.Qr_Ped01P1CHAVE.AsString
                           +' and CRORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString);
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,8060,'Frm_Ped','CADDAR');
           end;
         DM1.Query1.Close;
         DM1.Query1.Sql.Clear;
         DM1.Query1.Sql.add('Delete from  CADNS where NSCODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                           +' and NSLOTSEQ_CP=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                           +' and NSCHAVEP=0'+DM4.Qr_Ped01P1CHAVE.AsString
                           +' and NSORDEMP=0'+DM4.Qr_Ped01P1ORDEM.AsString);
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,8070,'Frm_Ped','CADNS');
            end;
         DM1.Query1.Close;
         end;
      DM4.Qr_Ped01.Next;
   end;

end;

function TFrm_Ped_AutoP.fajustaest(ptipo: Integer):Boolean;
{
Parametro ptipo=0 - Mercadorias
                1 - Servicos
}
var
mtipo,x,y: Integer;
mqtd: Real;
mestoque: Real;
mTot: Real;
begin

if (mtipop=10) or (mtipop=0) then
   begin
   result:=true;
   exit;
   end;
for x:=0 to STGM.RowCount do
   begin
   if Trim(STGM.Cells[0,x])='' then
      Continue;
   mqtd:=ValFloat(STGM.Cells[1,x]);
   if mqtd=0 then
      Continue;
   if mqtd>0 then
      begin
      if (mtipop=8) or (mtipop=17) or (mtipop=18) then
         mtipo:=1 // Saida de Mercadoria
      else if ((mtipop<7) or (mtipop=9) or (mtipop=16)) then
         mtipo:=0 // Entrada de Mercadoria
      else if (mtipop=7) then
         mtipo:=20 //  Entra Normal e Baixa Remessa
      else if (mtipop=11) then
         mtipo:=10 //  Entra Normal e Baixa Consignados
      else if (mtipop=12) then
         mtipo:=11 // Baixa normal e entra Consignados
      else if (mtipop=13) then
         mtipo:=21 // Baixa normal e entra Remessa
      else if (mtipop=14) then
         mtipo:=12 // Entra Consignados
      else if (mtipop=15) then
         mtipo:=22 // Entra Remessa
      else if (mtipop=19) then
         mtipo:=31
      else
         mtipo:=1;
      end
   else
      begin
      if (mtipop=8) or (mtipop=17) or (mtipop=18) then
         mtipo:=0  // Entrada de Mercadoria
      else if ((mtipop<7) or (mtipop=9) or (mtipop=16)) then
         mtipo:=1 // Saida de Mercadoria
      else if (mtipop=7) then
         mtipo:=21 // Baixa normal e entra Remessa
      else if (mtipop=11) then
         mtipo:=11 // Baixa normal e entra Consignados
      else if (mtipop=12) then
         mtipo:=10 //  Entra Normal e Baixa Consignados
      else if (mtipop=13) then
         mtipo:=20 //  Entra Normal e Baixa Remessa
      else if (mtipop=14) then
         mtipo:=13 // Baixa Consignados
      else if (mtipop=15) then
         mtipo:=23 // Baixa Remessa
      else if (mtipop=19) then
         mtipo:=30
      else
         mtipo:=0;
      mqtd:=mqtd*-1;
      end;
 // mtipo=0 Entrada 1-Saida

   if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem controle pelo CADLGC
      begin
      if not flcadlgc(1,0,Trim(STGM.Cells[0,x]),STGM.Cells[2,x],STGM.Cells[3,x]) then
         begin
         fcrialgc(0,0,Trim(STGM.Cells[0,x]),STGM.Cells[2,x],STGM.Cells[3,x]);
         flcadlgc(1,0,Trim(STGM.Cells[0,x]),STGM.Cells[2,x],STGM.Cells[3,x]);
         end;
//*******Se quantidade em estoque menor que saida e nao permitir
//      if (mTipo=1) or (mTipo=11) or (mtipo=21) or (mtipo=23) then
      if (mTipo=1) then
         begin
         if (mtipo>29) and (mtipo<35) then
            mestoque:=DM1.Tb_LGCCLQTDT.Value
         else if (mtipo>20) and (mtipo<25) then
            mestoque:=DM1.Tb_LGCCLQTDR.Value
         else if (mtipo>10) and (mtipo<15) then
            mestoque:=DM1.Tb_LGCCLQTDC.Value
         else
            mestoque:=DM1.Tb_LGCCLQTD.Value;
         if (mestoque<mqtd) and (DM4.Tb_Par01PFATMZ.Value<>1) then
            begin
            if valfloat(STGM.Cells[4,X])=0 then // se é mercodorias
               begin
               Tb_Ped02.First;
               mdtv:=FormatDatetime(fdt2, Tb_Ped02P2DTVCTO.Value);
               if Tb_Ped02.Locate('P2CODPRO,P2LOTE,P2DTVCTO',
                                 varArrayOf([valFloat(STGM.Cells[0,x]),
                                 Trim(STGM.Cells[2,x]),
                                 mdtv]),[]) then
                  begin
                  if not (Tb_Ped02.State in [dsEdit,dsInsert]) then
                     Tb_Ped02.Edit;
                  Tb_Ped02P2QTD.Value:=(Tb_Ped02P2QTD.Value+mestoque-mqtd);
                  if mpund>0 then
                     begin
                     flcadpro(1,0,0,Tb_Ped02P2CODPRO.AsString);
                     mtot:=fPed01Div(DM1.Tb_ProPDREST.AsInteger,DM1.Tb_ProPDFRACAO.AsInteger,
                              Tb_Ped02P2QTD.Value,mpund);
                     Tb_Ped02P2QTD_101.Value:=mtot;
                     end;
                  Tb_Ped02.Post;
                  end
               else
                  begin
                  ShowMessage('Possibilidade de erro: FAJUSTAEST:0988 Avisar '+#13
                             +'o programador');
                  mqtd:=mestoque;
                  end;
               end
            else // se servicos
               begin
               Tb_Ped02S.First;
               if Tb_Ped02s.Locate('P2SCODPRO',valFloat(STGM.Cells[0,x]),[]) then
                  begin
                  if not (Tb_Ped02s.State in [dsEdit,dsInsert]) then
                     Tb_Ped02s.Edit;
                  Tb_Ped02SP2SQTD.Value:=
                  (Tb_Ped02SP2SQTD.Value+mestoque-mqtd);
                  if mpund>0 then
                     begin
                     flcadpro(1,0,0,Tb_Ped02SP2SCODPRO.AsString);
                     mtot:=fPed01Div(DM1.Tb_ProPDREST.AsInteger,DM1.Tb_ProPDFRACAO.AsInteger,
                                 Tb_Ped02SP2SQTD.Value,mpund);
                     Tb_Ped02SP2SQTD_101.Value:=mtot;
                     end;
                  Tb_Ped02s.Post;
                  end
               else
                  begin
                  ShowMessage('Possibilidade de erro: FAJUSTAEST:0988 Avisar '+#13
                             +'o programador');
                  mqtd:=mestoque;
                  end;
               end;
            end;
         end;
      if (Trim(STGM.Cells[3,x])='') or (Trim(STGM.Cells[3,x])='/  /')then
         mdtv:=''
      else
         mdtv:=FormatDateTime(fdt, StrToDate(STGM.Cells[3,x]));
      flbailgc(mtipo,0,STGM.Cells[0,x],STGM.Cells[2,x],mdtv,mqtd);
      flbaiest(mtipo,0,STGM.Cells[0,x],mqtd)
      end
   else  // se não possuir lotes
      begin
      flcadest(1,0,Trim(STGM.Cells[00,x]));
      if (mtipo>29) and (mtipo<35) then
         mestoque:=DM1.Tb_LGCCLQTDT.Value
      else if (mtipo>20) and (mtipo<25) then
         mestoque:=DM1.Tb_LGCCLQTDR.Value
      else if (mtipo>10) and (mtipo<15) then
         mestoque:=DM1.Tb_LGCCLQTDC.Value
      else
         mestoque:=DM1.Tb_LGCCLQTD.Value;
//      if (mTipo=1) or (mTipo=11) or (mtipo=21) or (mtipo=23) then
      if (mTipo=1)  then
         begin
         if (mestoque<mqtd) and (DM4.Tb_Par01PFATMZ.Value<>1) then
            begin
            if valfloat(STGM.Cells[4,X])=0 then // se é mercodorias
               begin
               Tb_Ped02.First;
               if Tb_Ped02.Locate('P2CODPRO',valFloat(STGM.Cells[0,x]),[]) then
                  begin
                  if not (Tb_Ped02.State in [dsEdit,dsInsert]) then
                     Tb_Ped02.Edit;
                  Tb_Ped02P2QTD.Value:=Tb_Ped02P2QTD.Value+mestoque-mqtd;
                  if mpund>0 then
                     begin
                     flcadpro(1,0,0,Trim(STGM.Cells[0,x]));
                     mtot:=fPed01Div(DM1.Tb_ProPDREST.AsInteger,DM1.Tb_ProPDFRACAO.AsInteger,
                                ValFloat(STGM.Cells[1,y]),mpund);
                     Tb_Ped02P2QTD_101.Value:=mTot;
                     end;
                  Tb_Ped02.post;
                  end
               else
                  begin
                  ShowMessage('Possibilidade de erro: FAJUSTAEST:0988 Avisar '+#13
                             +'o programador');
                  mqtd:=mestoque;
                  end;
               end
            else  // se servicos
               begin
               Tb_Ped02s.First;
               if Tb_Ped02s.Locate('P2SCODPRO',valFloat(STGM.Cells[0,x]),[]) then
                  begin
                  if not (Tb_Ped02s.State in [dsEdit,dsInsert]) then
                     Tb_Ped02s.Edit;
                  Tb_Ped02SP2SQTD.Value:=Tb_Ped02SP2SQTD.Value+mestoque-mqtd;
                  if mpund>0 then
                     begin
                     flcadpro(1,0,0,Trim(STGM.Cells[0,x]));
                     mtot:=fPed01Div(DM1.Tb_ProPDREST.AsInteger,DM1.Tb_ProPDFRACAO.AsInteger,
                                 ValFloat(STGM.Cells[1,y]),mpund);
                     Tb_Ped02SP2SQTD_101.Value:=mTot;
                     end;
                  end
               else
                  begin
                  ShowMessage('Possibilidade de erro: FAJUSTAEST:0988 Avisar '+#13
                             +'o programador');
                  mqtd:=mestoque;
                  end;
               end;
            end;
         end;
      flbaiest(mtipo,0,STGM.Cells[0,x],mqtd)
      end;
   end;
result:=True;
end;

function fgravarped(ptipo: Integer): Boolean;
{
ptipo=0-Produto
      1-Serviço
}
var
mlid,z,y,x: Integer;
mqtd: Real;
mpesobruto, mpesoliquido: Real;
begin

mvaldes:=ValFloat(Frm_Ped_autoP.VALDES.Text);
if mpund<100 then
   begin
   if mtipop=9 then
      mcinst:=mdocs[04]
   else if (mtipop=0) or (mtipop=16)  then
      mcinst:=mdocs[01]
   else
      mcinst:=mdocs[02+1];
   if not fltdvca(0,0,'NF',mcinst,'CADTAB') then
      begin
      mqtdin:=20;
      mqtdis:=20;
      end
   else
      begin
      mqtdin:=DM1.Tb_TDVCATCQTDITEM.AsInteger;
      mqtdis:=DM1.Tb_TDVCATCQTDSER.AsInteger;
      end;
   if mqtdin=0 then mqtdin:=20;
   if mqtdis=0 then mqtdis:=20;
   if DM1.Tb_PargerPANOTUNI.Value=1 then
      begin
      mqtdin:=990;
      mqtdis:=990;
      end;
   mitem:=0;
   if ptipo=0 then
      begin
      Frm_Ped_AutoP.Tb_ped02.first;
      While not Frm_Ped_AutoP.Tb_Ped02.Eof do
         begin
         if Frm_Ped_AutoP.Tb_Ped02P2CODPRO.IsNull then
            begin
            Frm_Ped_Autop.Tb_Ped02.Next;
            Continue;
            end;

         if Frm_Ped_AutoP.Tb_Ped02BAIXADO.Value=1 then
            begin
            Frm_Ped_AutoP.Tb_Ped02.Next;
            Continue;
            end;


         if mformace=1 then
            mqtd:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value
         else
            mqtd:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value
                 -Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value;
         if mqtd<=0 then
            begin
            Frm_Ped_AutoP.Tb_Ped02.Next;
            continue;
            end;
         if not flcadpro(1,0,0,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString) then
            begin
            verteclado(0);
            MessageDlg('Foi Excluido um Produto no Decorrer do Pedido. '+#13
                      +'Código: '+Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mtError,[mbOK],0);
            Frm_Ped_AutoP.Tb_Ped02.Next;
            Continue;
            end;
         if ((mtipop=1) or (mtipop=2) or (mtipop=16)) then
            begin
            if (DM1.Tb_ProPDVDAMAXM.Value>0)   then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.clear;
               DM1.Query1.SQL.Add('Select sum(P2QTD) as quant from '
                                 +' CADP02,CADP01 where P1STATUS<>9 and '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+InttoStr(codemp)+' and P1CODEMP=P2CODEMP and ')
                                 +' P2LOTSEQ=0'+IntToStr(ped_lotseq)+' and '
                                 +' P1LOTSEQ=P2LOTSEQ '
                                 +' and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                                 +' and P2CODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                                 +' and P1CODCLI=0'+Trim(Frm_Ped_AutoP.CODCLI.Text)
                                 +' and P1TIPO=1 '
                                 +' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate('01/'+FormatDateTime('mm/yyyy',pdatasis)))+chr(39)
                                 +' and P1DATAP<='+chr(39)+FormatDateTime(fdt, fdatafinal(0,pdatasis))+chr(39));
               dm1.Query1.Open;
               if (DM1.Query1.Fields[0].AsFloat+mqtd)>DM1.Tb_ProPDVDAMAXM.Value then
                  begin
                  mqtd:=DM1.Tb_ProPDVDAMAXM.Value-DM1.Query1.Fields[0].AsFloat;
                  if mqtd<0 then
                     mqtd:=0;
                  end;
               if (Frm_Ped_AutoP.Tb_Ped02P2QTD.Value<>mQtd) then
                  begin
                  Frm_Ped_AutoP.Tb_Ped02.Edit;
                  Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=mqtd;
                  Frm_Ped_AutoP.Tb_Ped02.Post;
                  if Frm_Ped_AutoP.Tb_Ped02P2QTD.AsFloat<=0 then
                     begin
                     Frm_Ped_AutoP.Tb_Ped02.Next;
                     Continue;
                     end;
                  end;
               end;
            end;

         if (mtipop=0) or (mtipop=10)  then
            begin
//            fgravap2(0,codemp,0);
            end
         else if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18)   then  // entrada por devolucao de cliente
            begin
            if (moper_ped=0)  then      // se inclusao de pedido
               begin
               if mtipop=12 then
                  flbaiest(10,codemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mqtd)
               else if mtipop=13 then
                  flbaiest(20,codemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mqtd)
               else
                  flbaiest(0,codemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mqtd);
               if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem controle pelo CADLGC
                  begin
                  if (Frm_Ped_AutoP.Tb_Ped02P2DTVCTO.IsNull) or (Frm_Ped_AutoP.Tb_Ped02P2DTVCTO.Value<=pdatanula) then
                     mdtv:=''
                  else
                     mdtv:=FormatDateTime(fdt, Frm_Ped_AutoP.Tb_Ped02P2DTVCTO.Value);
                  if mtipop=12 then
                     flbailgc(10,Codemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                                   Frm_Ped_AutoP.Tb_Ped02P2LOTE.AsString,
                          mdtv,mqtd)
                  else if mtipop=13 then
                     flbailgc(20,Codemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                                   Frm_Ped_AutoP.Tb_Ped02P2LOTE.AsString,
                          mdtv,mqtd)
                  else
                     flbailgc(0,codemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                                  Frm_Ped_AutoP.Tb_Ped02P2LOTE.AsString,
                            mdtv,mqtd);
                  end;
               end;
//            fgravap2(0,codemp,0);
            end
         else if (StrToInt('0'+copy(mpseg,4,2))=01)  then  // baixar lotes de mercadorias
            begin
            fbaixarlote(0,codemp);
            end
         else if (StrToInt('0'+copy(mpseg,4,2))=02)   then  // baixar Grades de mercadorias
            begin
            fbaixarGrade(0,codemp);
            end
         else  // baixa de normal sem grades e sem lotes
            begin
            fbaixarnormal(0,0,codemp);
            end;
         Frm_Ped_AutoP.Tb_Ped02.Next;
         end;
      end
   else if ptipo=1 then
      begin
      Frm_Ped_AutoP.Tb_Ped02S.First;
      While not Frm_Ped_AutoP.Tb_Ped02S.Eof do
         begin
         if Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.IsNull then
            begin
            Frm_Ped_AutoP.Tb_Ped02S.Next;
            Continue;
            end;
         if mformace=1 then
            mqtd:=Frm_Ped_AutoP.Tb_Ped02SP2SQTD.Value
         else
            mqtd:=Frm_Ped_AutoP.Tb_Ped02SP2SQTD.Value
                 -Frm_Ped_AutoP.Tb_Ped02SP2SQTD_101.Value;
         if mqtd<=0 then
            continue;
         if Frm_Ped_AutoP.Tb_Ped02Snompro.IsNull then
            begin
            verteclado(0);
            MessageDlg('Foi Excluido um Produto no Decorrer do Pedido. '+#13
                      +'Código: '+Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString
                      ,mtError,[mbOK],0);
            Frm_Ped_AutoP.Tb_Ped02S.Next;
            Continue;
            end;
         if ((mtipop=1) or (mtipop=16)) then
            begin
            if (DM1.Tb_ProPDVDAMAXM.Value>0)   then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.clear;
               DM1.Query1.SQL.Add('Select sum(P2SQTD) as quant from '
                                 +' CADP02S,CADP01 where P1STATUS<>9 and '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+InttoStr(codemp)+' and P1CODEMP=P2SCODEMP and ')
                                 +' P2SLOTSEQ=0'+IntTosTr(ped_lotseq)
                                 +' and P1LOTSEQ=P2SLOTSEQ '
                                 +' and P1CHAVE=P2SCHAVE and P1ORDEM=P2SORDEM '
                                 +' and P2SCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                                 +' and P1CODCLI=0'+Trim(Frm_Ped_AutoP.CODCLI.Text)
                                 +' and P1TIPO=1 '
                                 +' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate('01/'+FormatDateTime('mm/yyyy',pdatasis)))+chr(39)
                                 +' and P1DATAP<='+chr(39)+FormatDateTime(fdt, fdatafinal(0,pdatasis))+chr(39));
               dm1.Query1.Open;
               if (DM1.Query1.Fields[0].AsFloat+mqtd)>DM1.Tb_ProPDVDAMAXM.Value then
                  begin
                  mqtd:=DM1.Tb_ProPDVDAMAXM.Value-DM1.Query1.Fields[0].AsFloat;
                  if mqtd<0 then
                     mqtd:=0;
                  end;

               if (Frm_Ped_AutoP.Tb_Ped02SP2SQTD.Value<>mQtd) then
                  begin
                  Frm_Ped_AutoP.Tb_Ped02s.Edit;
                  Frm_Ped_AutoP.Tb_Ped02sP2SQTD.Value:=mqtd;
                  Frm_Ped_AutoP.Tb_Ped02S.Post;
                  if Frm_Ped_AutoP.Tb_Ped02SP2SQTD.AsFloat<=0 then
                     begin
                     Frm_Ped_AutoP.Tb_Ped02S.Next;
                     Continue;
                     end;
                  end;
               end;
            end;



         if (mtipop=0)  then
            begin
//            fgravap2(0,codemp,0);
            end
         else if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18)  then  // entrada por devolucao de cliente
            begin
            if (moper_ped=0)  then
               begin
               if mtipop=12 then
                  flbaiest(10,Codemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mqtd)
               else if mtipop=13 then
                  flbaiest(20,Codemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mqtd)
               else
                  flbaiest(0,Codemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mqtd);
               end;
//            fgravap2(0,codemp,0);
            end
         else    // baixa de normal sem grades e sem lotes
            begin
            fbaixarnormal(1,0,codemp);
            end;
         Frm_Ped_AutoP.Tb_Ped02s.Next;
         end;
      end;
   end;


// fim
if (mpund>0) and (mformace<>1) then
   begin
   if mtipop=9 then
      mcinst:=mdocs[04]
   else if mtipop=0 then
      mcinst:= mdocs[01]
   else
      mcinst:= mdocs[02+1];
   if not fltdvca(0,iif(codemp>100,codemp-100,codemp+100),'NF',mcinst,'CADTAB') then
      begin
      mqtdin:=20;
      mqtdis:=20;
      end
   else
      begin
      mqtdin:=DM1.Tb_TDVCATCQTDITEM.AsInteger;
      mqtdis:=DM1.Tb_TDVCATCQTDSER.AsInteger;
      end;
   if mqtdin=0 then mqtdin:=20;
   if mqtdis=0 then mqtdis:=20;
   if DM1.Tb_PargerPANOTUNI.Value=1 then
      begin
      mqtdin:=990;
      mqtdis:=990;
      end;
   if ptipo=0 then
      begin
      Frm_Ped_AutoP.Tb_Ped02.First;
      While not Frm_Ped_AutoP.Tb_Ped02.Eof do
         begin
         if Frm_Ped_AutoP.Tb_Ped02P2CODPRO.IsNull then
            begin
            Frm_Ped_AutoP.Tb_Ped02.Next;
            Continue;
            end;
         if Frm_Ped_AutoP.Tb_Ped02BAIXADO.Value=1 then
            begin
            Frm_Ped_AutoP.Tb_Ped02.Next;
            Continue;
            end;

         mqtd:=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value;
         if mqtd<=0 then
            begin
            Frm_Ped_AutoP.Tb_Ped02.Next;
            continue;
            end;
         if not flcadpro(1,0,0,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString) then
            begin
            verteclado(0);
            MessageDlg('Foi Excluido um Produto no Decorrer do Pedido. '+#13
                      +'Código: '+ Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mtError,[mbOK],0);
            Frm_Ped_AutoP.Tb_Ped02.Next;
            Continue;
            end;
         if ((mtipop=1) or (mtipop=2) or (mtipop=16))   then
            begin
            if (DM1.Tb_ProPDVDAMAXM.Value>0)   then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.clear;
               DM1.Query1.SQL.Add('Select sum(P2QTD) as quant from '
                                 +' CADP02,CADP01 where P1STATUS<>9 and '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+InttoStr(codemp)+' and P1CODEMP=P2CODEMP and ')
                                 +' P2LOTSEQ=0'+IntToStr(ped_lotseq)+' and '
                                 +' P1LOTSEQ=P2LOTSEQ and '
                                 +' P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                                 +' and P2CODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                                 +' and P1CODCLI=0'+Trim(Frm_Ped_AutoP.CODCLI.Text)
                                 +' and P1TIPO=1 '
                                 +' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate('01/'+FormatDateTime('mm/yyyy',pdatasis)))+chr(39)
                                 +' and P1DATAP<='+chr(39)+FormatDateTime(fdt, fdatafinal(0,pdatasis))+chr(39));
               dm1.Query1.Open;
               if (DM1.Query1.Fields[0].AsFloat+mqtd)>DM1.Tb_ProPDVDAMAXM.Value then
                  begin
                  mqtd:=DM1.Tb_ProPDVDAMAXM.Value-DM1.Query1.Fields[0].AsFloat;
                  if mqtd<0 then
                     mqtd:=0;
                  end;

               if (Frm_Ped_AutoP.Tb_Ped02P2QTD.Value<>mQtd) then
                  begin
                  Frm_Ped_AutoP.Tb_Ped02.Edit;
                  Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=mqtd;
                  Frm_Ped_AutoP.Tb_Ped02.Post;
                  if Frm_Ped_AutoP.Tb_Ped02P2QTD.AsFloat<=0 then
                     begin
                     Frm_Ped_AutoP.Tb_Ped02.Next;
                     Continue;
                     end;
                  end;
               end;
            end;

         if (mtipop=0) or (mtipop=10)  then
            begin
//            fgravap2(0,IIF(codemp<100,codemp+100,codemp-100),1);
            end
         else if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18) then  // entrada por devolucao de cliente
            begin
            if (moper_ped=0)  then
               begin
               if mtipop=12 then
                  flbaiest(10,IIF(codemp<100,codemp+100,codemp-100), Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mqtd)
               else if mtipop=13 then
                  flbaiest(20,IIF(codemp<100,codemp+100,codemp-100),  Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mqtd)
               else
                  flbaiest(0,IIF(codemp<100,codemp+100,codemp-100), Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mqtd);
               if (StrToInt('0'+copy(mpseg,4,2))>0)  then  // se tem controle pelo CADLGC
                  begin
                  if (Frm_Ped_AutoP.Tb_Ped02P2DTVCTO_101.IsNull) or
                     ( Frm_Ped_AutoP.Tb_Ped02P2DTVCTO_101.Value<=pdatanula) then
                     mdtv:=''
                  else
                     mdtv:=FormatDateTime(fdt,  Frm_Ped_AutoP.Tb_Ped02P2DTVCTO_101.Value);
                  if mtipop=12 then
                     flbailgc(10,IIF(codemp<100,codemp+100,codemp-100), Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString, Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value,
                          mdtv,mqtd)
                  else if mtipop=13 then
                     flbailgc(20,IIF(codemp<100,codemp+100,codemp-100), Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString, Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value,
                          mdtv,mqtd)
                  else
                      flbailgc(0,IIF(codemp<100,codemp+100,codemp-100), Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                                     Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value,
                          mdtv,mqtd);
                  end;
               end;
//            fgravap2(0,IIF(codemp<100,codemp+100,codemp-100),1);
            end
         else if StrToInt('0'+copy(mpseg,4,2))=01 then  // baixar lotes de mercadorias
            begin
            fbaixarlote(1,iif(codemp>100,codemp-100,codemp+100));
            end
         else if StrToInt('0'+copy(mpseg,4,2))=02 then  // baixar Grades de mercadorias
            begin
            fbaixarGrade(1,iif(codemp>100,codemp-100,codemp+100));
            end
         else    // baixa de normal sem grades e sem lotes
            begin
            fbaixarnormal(0,1,iif(codemp>100,codemp-100,codemp+100));
            end;
         Frm_Ped_AutoP.Tb_Ped02.Next;
         end;
      end
   else if ptipo=1 then
      begin
      Frm_Ped_AutoP.Tb_Ped02s.First;
      While not  Frm_Ped_AutoP.Tb_Ped02S.Eof do
         begin
         if Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.IsNull then
            begin
            Frm_Ped_AutoP.Tb_Ped02s.Next;
            Continue;
            end;
         mqtd:=Frm_Ped_AutoP.Tb_Ped02SP2SQTD_101.Value;
         if mqtd<=0 then
            begin
            Frm_Ped_AutoP.Tb_Ped02S.Next;
            continue;
            end;
         if not flcadpro(1,0,0,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString) then
            begin
            verteclado(0);
            MessageDlg('Foi Excluido um Produto no Decorrer do Pedido. '+#13
                      +'Código: '+Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mtError,[mbOK],0);
            Continue;
            end;

         if ((mtipop=1) or (mtipop=2) or (mtipop=16))  then
            begin
            if (DM1.Tb_ProPDVDAMAXM.Value>0)   then
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.clear;
               DM1.Query1.SQL.Add('Select sum(P2QTD) as quant from '
                                 +' CADP02,CADP01 where P1STATUS<>9 and '
                                 +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+InttoStr(codemp)+' and P1CODEMP=P2CODEMP and ')
                                 +' P2LOTSEQ=0'+IntToStr(ped_lotseq)
                                 +' and P1LOTSEQ=P2LOTSEQ and '
                                 +' P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                                 +' and P2CODPRO=0'+DM1.Tb_ProPDCODPRO.AsString
                                 +' and P1CODCLI=0'+Trim(Frm_Ped_AutoP.CODCLI.Text)
                                 +' and P1TIPO=1 '
                                 +' and P1DATAP>='+chr(39)+FormatDateTime(fdt,StrToDate('01/'+FormatDateTime('mm/yyyy',pdatasis)))+chr(39)
                                 +' and P1DATAP<='+chr(39)+FormatDateTime(fdt, fdatafinal(0,pdatasis))+chr(39));
               dm1.Query1.Open;
               if (DM1.Query1.Fields[0].AsFloat+mqtd)>DM1.Tb_ProPDVDAMAXM.Value then
                  begin
                  mqtd:=DM1.Tb_ProPDVDAMAXM.Value-DM1.Query1.Fields[0].AsFloat;
                  if mqtd<0 then
                     mqtd:=0;
                  end;
               if (Frm_Ped_AutoP.Tb_Ped02SP2SQTD.Value<>mQtd) then
                  begin
                  Frm_Ped_AutoP.Tb_Ped02s.Edit;
                  Frm_Ped_AutoP.Tb_Ped02sP2SQTD.Value:=mqtd;
                  Frm_Ped_AutoP.Tb_Ped02S.Post;
                  if Frm_Ped_AutoP.Tb_Ped02SP2SQTD.AsFloat<=0 then
                     begin
                     Frm_Ped_AutoP.Tb_Ped02S.Next;
                     Continue;
                     end;
                  end;
               end;
            end;


         if (mtipop=0) or (mtipop=10)  then
            begin
//            fgravap2(ptipo,IIF(codemp<100,codemp+100,codemp-100),1);

            end
         else if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18) then  // entrada por devolucao de cliente
            begin
            if (moper_ped=0)  then
               begin
               if mtipop=12 then
                  flbaiest(10,IIF(codemp<100,codemp+100,codemp-100),Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mqtd)
               else if mtipop=13 then
                  flbaiest(20,IIF(codemp<100,codemp+100,codemp-100),Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mqtd)
               else
                  flbaiest(0,IIF(codemp<100,codemp+100,codemp-100),Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mqtd);
               end;
//            fgravap2(ptipo,IIF(codemp<100,codemp+100,codemp-100),1)
            end
         else    // baixa de normal sem grades e sem lotes
            begin
            fbaixarnormal(1,1,iif(codemp>100,codemp-100,codemp+100));
            end;
         Frm_Ped_AutoP.Tb_Ped02.Next;
         end;
      end
   end;

mitemad:=0;
mItem  :=0;
Frm_Ped_AutoP.Tb_Ped02.First;
While not Frm_Ped_AutoP.Tb_Ped02.Eof do
   begin
   if mformace<>1 then
      begin
      if (Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value)<=0 then
         begin
         Frm_Ped_AutoP.Tb_Ped02.Next;
         Continue;
         end;
      end;
   if not (Frm_Ped_AutoP.Tb_Ped02DESCALTER.IsNull) and
      (trim(Frm_Ped_AutoP.Tb_Ped02DESCALTER.AsString)<>'') then
      begin
      Frm_Ped_DescAlter.DESCALTER.Text:=Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value;
      mitemad:=mitemad+Frm_Ped_DescAlter.DESCALTER.Lines.Count;
      end;
   mitem:=mitem+1;
   if ((mitemad+mitem)>mqtdin) then
      begin
      verteclado(0);
      MessageDlg('Sera Retirado parte da descricao alternada. Pois nao ha linhas '+#13
                 +'suficientes na nota para descreve-las!',mtWarning,[mbOk],0);
      mitemad:=mitemad-(mItem+mitemad)-mqtdin;
      end;
   if mchave=0 then
      begin
      if pconsemp then
         mchave:=fbuscaNUMPED( iif(codemp>100,codemp-100,codemp))
      else
         mchave:=fbuscaNUMPED(codemp);
      mordem:=1;
      end
   else if mordem=0 then
      mordem:=1;

   DM4.Qr_IncPed02.Close;
   DM4.Qr_IncPed02.ParambyName('P2CODEMP').AsFloat      :=codemp;
   DM4.Qr_IncPed02.ParambyName('P2LOTSEQ').AsFloat      :=ped_lotseq;
   DM4.Qr_IncPed02.ParambyName('P2CHAVE').AsFloat       :=mchave;
   DM4.Qr_IncPed02.ParambyName('P2ORDEM').AsFloat       :=mordem;
   DM4.Qr_IncPed02.ParambyName('P2ITEM').AsFloat        :=mitem;
   DM4.Qr_IncPed02.ParambyName('P2CODPRO').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value;
   DM4.Qr_IncPed02.ParambyName('P2CODANT').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODANT.Value;
   if mformace=1 then
      DM4.Qr_IncPed02.ParambyName('P2QTD').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value
   else
      DM4.Qr_IncPed02.ParambyName('P2QTD').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value
                                                         -Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2QTDDEV').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2QTDDEV.Value;
   DM4.Qr_IncPed02.ParambyName('P2LOTE').AsString       :=Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value;
   DM4.Qr_IncPed02.ParambyName('P2DTVCTO').AsDateTime   :=Frm_Ped_AutoP.Tb_Ped02P2DTVCTO.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESC1').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESC2').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESC3').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value;
   DM4.Qr_IncPed02.ParambyName('P2VALDES').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value
                                                         -Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2PRECO').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value
                                                         -Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2SIT').AsString        :=Frm_Ped_AutoP.Tb_Ped02P2SIT.Value;
   DM4.Qr_IncPed02.ParambyName('P2CODFAB').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODFAB.Value;
   DM4.Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODGRU.Value;
   DM4.Qr_IncPed02.ParambyName('P2BASEN').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2BASEN.Value;
   DM4.Qr_IncPed02.ParambyName('P2ICMSN').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2ICMSN.Value;
   DM4.Qr_IncPed02.ParambyName('P2REPAS').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2REPAS.Value;
   DM4.Qr_IncPed02.ParambyName('P2BASER').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2BASER.Value;
   DM4.Qr_IncPed02.ParambyName('P2ICMSR').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2ICMSR.Value;
   DM4.Qr_IncPed02.ParambyName('P2LISTA').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2LISTA.Value;
   DM4.Qr_IncPed02.ParambyName('P2STATUS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2STATUS.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOTAB.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOMAX').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOMAX.Value;
   DM4.Qr_IncPed02.ParambyName('P2UCPR').AsFloat        :=Frm_Ped_AutoP.Tb_Ped02P2UCPR.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOCUS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOCUS.Value;
   DM4.Qr_IncPed02.ParambyName('P2TOTDES').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2TOTDES.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESCRAT').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2DESCRAT.Value;
   DM4.Qr_IncPed02.ParambyName('P2ACRERAT').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2ACRERAT.Value;
   DM4.Qr_IncPed02.ParambyName('P2TABELA').AsString     :=Frm_Ped_AutoP.Tb_Ped02P2TABELA.Value;
   DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2ALIPI.Value;
   DM4.Qr_IncPed02.ParambyName('P2VALIPI').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VALIPI.Value;
   DM4.Qr_IncPed02.ParambyName('P2BCINR').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2BCINR.Value;
   DM4.Qr_IncPed02.ParambyName('P2ICMSNR').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2ICMSNR.Value;
   DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2ISENTAS.Value;
   DM4.Qr_IncPed02.ParambyName('P2TOTOUT').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2TOTOUT.Value;
   DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=Frm_Ped_AutoP.Tb_Ped02P2ALIQ.Value;
   DM4.Qr_IncPed02.ParambyName('P2ALIQNR').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2ALIQNR.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOMIS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOMIS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOMIS.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOM02').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOM02.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOM03').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOM03.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOM04').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOM04.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESCM').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value;
   DM4.Qr_IncPed02.ParambyName('P2CFO').AsFloat         :=Frm_Ped_AutoP.Tb_Ped02P2CFO.Value;
   DM4.Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2SEMCOM.Value;
   DM4.Qr_IncPed02.ParambyName('P2TOTLIQ').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2TOTLIQ.Value;
   DM4.Qr_IncPed02.ParambyName('P2PDESCF').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value;
   DM4.Qr_IncPed02.ParambyName('P2VDESCF').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VDESCF.Value;
   DM4.Qr_IncPed02.ParambyName('P2ACRECONV').AsFloat    :=Frm_Ped_AutoP.Tb_Ped02P2ACRECONV.Value;
   DM4.Qr_IncPed02.ParambyName('P2ACREGER').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2ACREGER.Value;
   DM4.Qr_IncPed02.ParambyName('P2PROMOCAO').AsString   :=Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO.Value;
   Try
      DM4.Qr_IncPed02.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(06,4003,'Frm_Ped','CADP02');
      end;
   mlid:=0;
   if mitemad>0 then
      begin
      for y:=1 to mitemad do
         begin
         DM1.Query1.Params.Clear;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
         DM1.Query1.Sql.add('Insert into CADP02D ('
                        +'P2DCODEMP, '
                        +'P2DLOTSEQ,'
                        +'P2DCHAVE,'
                        +'P2DORDEM,'
                        +'P2DITEM,'
                        +'P2DLINHA,'
                        +'P2DCODPRO,'
                        +'P2DGRADE,'
                        +'P2DTIPO,'
                        +'P2DESC)  values ('
                        +Inttostr(codemp)+','
                        +intTostr(ped_lotseq)+','
                        +intTostr(mchave)+','
                        +FloatTostr(mordem)+','
                        +intTostr(mitem)+','
                        +IntTostr(y)+','
                        +Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString+','
                        +Frm_Ped_AutoP.Tb_Ped02P2LOTE.AsString+','
                        +'0,'
                        +':DESC)');
         if Length(Frm_Ped_DescAlter.DESCALTER.Lines[y-1])>60 then
            DM1.Query1.Params[0].AsString:=copy(Frm_Ped_DescAlter.DESCALTER.Lines[y-1],1,60)
         else
            DM1.Query1.Params[0].AsString:=Frm_Ped_DescAlter.DESCALTER.Lines[y-1];
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,4374,'Frm_Ped','CADP02D');
            end;
         DM1.Query1.Close;
         mlid:=mlid+60;
         end;
      end;
   Frm_Ped_AutoP.Tb_Ped02.Next;
   if (Frm_Ped_AutoP.Tb_Ped02.Eof) or (mitem>=mqtdin) then
      begin
      fgravap1(0,codemp);
      mordem:=mordem+1;
      end;
   end;


mitemad:=0;
mItem  :=0;
Frm_Ped_AutoP.Tb_Ped02S.First;
While not Frm_Ped_AutoP.Tb_Ped02S.Eof do
   begin
   if mformace<>1 then
      begin
      if (Frm_Ped_AutoP.Tb_Ped02SP2SQTD.Value-Frm_Ped_AutoP.Tb_Ped02SP2SQTD_101.Value)<=0 then
         begin
         Frm_Ped_AutoP.Tb_Ped02S.Next;
         Continue;
         end;
      end;
   if not (Frm_Ped_AutoP.Tb_Ped02SDESCALTER.IsNull) and
      (trim(Frm_Ped_AutoP.Tb_Ped02SDESCALTER.AsString)<>'') then
      begin
      Frm_Ped_DescAlter.DESCALTER.Text:=Frm_Ped_AutoP.Tb_Ped02SDESCALTER.Value;
      mitemad:=mitemad+Frm_Ped_DescAlter.DESCALTER.Lines.Count;
      end;
   mitem:=mitem+1;
   if ((mitemad+mitem)>mqtdis) then
      begin
      verteclado(0);
      MessageDlg('Sera Retirado parte da descricao alternada. Pois nao ha linhas '+#13
                 +'suficientes na nota para descreve-las!',mtWarning,[mbOk],0);
      mitemad:=mitemad-(mItem+mitemad)-mqtdin;
      end;
   if mchave=0 then
      begin
      if pconsemp then
         mchave:=fbuscaNUMPED( iif(codemp>100,codemp-100,codemp))
      else
         mchave:=fbuscaNUMPED(codemp);
      mordem:=1;
      end
   else if mordem=0 then
      mordem:=1;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.query1.SQL.add('Insert Into CADP02S ('
                     +' P2SCODEMP, '
                     +' P2SLOTSEQ, '
                     +' P2SCHAVE, '
                     +' P2SORDEM, '
                     +' P2SITEM, '
                     +' P2SCODPRO, '
                     +' P2SQTD, '
                     +' P2SQTDDEV, '
                     +' P2SDESC1, '
                     +' P2SDESC2, '
                     +' P2SVALDES, '
                     +' P2SPRECO, '
                     +' P2SSIT, '
                     +' P2SCODFAB, '
                     +' P2SBCISSQN, '
                     +' P2SVISSQN, '
                     +' P2SLISTA, '
                     +' P2SSTATUS, '
                     +' P2SPCOTAB, '
                     +' P2SPCOCUS, '
                     +' P2STOTDES, '
                     +' P2SDESCRAT, '
                     +' P2STABELA, '
                     +' P2SISENTAS, '
                     +' P2SALIQ, '
                     +' P2SPCOMIS, '
                     +' P2SVCOMIS, '
                     +' P2SVCOM02, '
                     +' P2SVCOM03, '
                     +' P2SDESCM, '
                     +' P2SSEMCOM, '
                     +' P2SCFO, '
                     +' P2SPDESCF, '
                     +' P2SVDESCF ) values ('
                     +Inttostr(codemp)+','
                     +intTostr(ped_lotseq)+','
                     +intTostr(mchave)+','
                     +FloatTostr(mordem)+','
                     +IntTostr(mitem)+','
                     +Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString+','
                     +mudavp(
                     iif(mformace=1,Frm_Ped_AutoP.Tb_Ped02SP2SQTD.AsString,
                        FloatToStr(Frm_Ped_AutoP.Tb_Ped02SP2SQTD.Value
                          -Frm_Ped_AutoP.Tb_Ped02SP2SQTD_101.Value)))+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SQTDDEV_101.asString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESC1.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESC2.AsString)+','
                     +mudavp(
                     iif(mformace=1,Frm_Ped_AutoP.Tb_Ped02SP2SVALDES.AsString,
                        FloatToStr(Frm_Ped_AutoP.Tb_Ped02SP2SVALDES.Value
                          -Frm_Ped_AutoP.Tb_Ped02SP2SVALDES_101.Value)))+','
                     +mudavp(
                     iif(mformace=1,Frm_Ped_AutoP.Tb_Ped02SP2SPRECO.AsString,
                        FloatToStr(Frm_Ped_AutoP.Tb_Ped02SP2SPRECO.Value
                          -Frm_Ped_AutoP.Tb_Ped02SP2SPRECO_101.Value)))+','
                     +chr(39)+Frm_Ped_AutoP.Tb_Ped02SP2SSIT.AsString+chr(39)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SCODFAB.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SBCISSQN.AsString)+','    // base do issqn
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVISSQN.AsString)+','    // Valor do issqn
                     +Frm_Ped_AutoP.Tb_Ped02SP2SLISTA.AsString+','
                     +Frm_Ped_AutoP.Tb_Ped02SP2SSTATUS.AsString+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPCOTAB.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPCOCUS.AsString)+','  // Preco de custoto produto
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2STOTDES.AsString)+','   // Total do desconto
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESCRAT.AsString)+','  // Valor Desconto Rateado
                     +chr(39)+Frm_Ped_AutoP.Tb_Ped02SP2STABELA.AsString+chr(39)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SISENTAS.AsString)+','   // Isentas
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SALIQ.AsString)+','    // Aliquido do issqn
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPCOMIS.AsString)+',' // p2pcomis
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVCOMIS.AsString)+',' // valor da comissao
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVCOM02.AsString)+',' // valor da comissao
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVCOM03.AsString)+',' // valor da comissao
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESCM.AsString)+',' // p2descm
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SSEMCOM.AsString)+',' //  produto sem comissao
                     +FormatFloat('0000', Frm_Ped_AutoP.Tb_Ped02SP2SCFO.Value)+','    // cfo
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPDESCF.AsString)+',' //percentual descf
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVDESCF.AsString));  // valor desconto fin
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,4241,'Frm_Ped','CADP02S');
      end;
   DM1.Query1.Close;

   mlid:=0;
   if mitemad>0 then
      begin
      for y:=1 to mitemad do
         begin
         DM1.Query1.Params.Clear;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
         DM1.Query1.Sql.add('Insert into CADP02D ('
                        +'P2DCODEMP, '
                        +'P2DLOTSEQ,'
                        +'P2DCHAVE,'
                        +'P2DORDEM,'
                        +'P2DITEM,'
                        +'P2DLINHA,'
                        +'P2DCODPRO,'
                        +'P2DGRADE,'
                        +'P2DTIPO,'
                        +'P2DESC)  values ('
                        +Inttostr(codemp)+','
                        +intTostr(ped_lotseq)+','
                        +intTostr(mchave)+','
                        +FloatTostr(mordem)+','
                        +intTostr(mitem)+','
                        +IntTostr(y)+','
                        +Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString+','
                        +' ,'
                        +'1,'
                        +':DESC)');
         if Length(Frm_Ped_DescAlter.DESCALTER.Lines[y-1])>60 then
            DM1.Query1.Params[0].AsString:=copy(Frm_Ped_DescAlter.DESCALTER.Lines[y-1],1,60)
         else
            DM1.Query1.Params[0].AsString:=Frm_Ped_DescAlter.DESCALTER.Lines[y-1];
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,4374,'Frm_Ped','CADP02D');
            end;
         DM1.Query1.Close;
         mlid:=mlid+60;
         end;
      end;
   Frm_Ped_AutoP.Tb_Ped02s.Next;
   if (Frm_Ped_AutoP.Tb_Ped02S.Eof) or (mitem>=mqtdis) then
      begin
      fgravap1(0,codemp);
      mordem:=mordem+1;
      end;
   end;

// segunda parte
mitemad:=0;
mItem  :=0;
mordem :=0;
Frm_Ped_AutoP.Tb_Ped02.First;
While not Frm_Ped_AutoP.Tb_Ped02.Eof do
   begin
   if Frm_Ped_AutoP.Tb_Ped02P2QTD_101.AsFloat<=0 then
      begin
      Frm_Ped_AutoP.Tb_Ped02.Next;
      Continue;
      end;
   if not (Frm_Ped_AutoP.Tb_Ped02DESCALTER.IsNull) and
      (trim(Frm_Ped_AutoP.Tb_Ped02DESCALTER.AsString)<>'') then
      begin
      Frm_Ped_DescAlter.DESCALTER.Text:=Frm_Ped_AutoP.Tb_Ped02DESCALTER.Value;
      mitemad:=mitemad+Frm_Ped_DescAlter.DESCALTER.Lines.Count;
      end;
   mitem:=mitem+1;
   if ((mitemad+mitem)>mqtdin) then
      begin
      verteclado(0);
      MessageDlg('Sera Retirado parte da descricao alternada. Pois nao ha linhas '+#13
                 +'suficientes na nota para descreve-las!',mtWarning,[mbOk],0);
      mitemad:=mitemad-(mItem+mitemad)-mqtdin;
      end;
   if mchave=0 then
      begin
      if pconsemp then
         mchave:=fbuscaNUMPED( iif(codemp>100,codemp-100,codemp))
      else
         mchave:=fbuscaNUMPED(codemp);
      mordem:=1;
      end
   else if mordem=0 then
      mordem:=1;

   DM4.Qr_IncPed02.Close;
   DM4.Qr_IncPed02.ParambyName('P2CODEMP').AsFloat      :=iif(codemp>100,codemp-100,codemp+100);
   DM4.Qr_IncPed02.ParambyName('P2LOTSEQ').AsFloat      :=ped_lotseq;
   DM4.Qr_IncPed02.ParambyName('P2CHAVE').AsFloat       :=mchave;
   DM4.Qr_IncPed02.ParambyName('P2ORDEM').AsFloat       :=mordem;
   DM4.Qr_IncPed02.ParambyName('P2ITEM').AsFloat        :=mitem;
   DM4.Qr_IncPed02.ParambyName('P2CODPRO').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value;
   DM4.Qr_IncPed02.ParambyName('P2CODANT').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODANT.Value;
   DM4.Qr_IncPed02.ParambyName('P2QTD').AsFloat         :=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2QTDDEV').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2QTDDEV_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2LOTE').AsString       :=Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2DTVCTO').AsDateTime   :=Frm_Ped_AutoP.Tb_Ped02P2DTVCTO_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESC1').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESC2').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESC3').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value;
   DM4.Qr_IncPed02.ParambyName('P2VALDES').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2PRECO').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2SIT').AsString        :=Frm_Ped_AutoP.Tb_Ped02P2SIT.Value;
   DM4.Qr_IncPed02.ParambyName('P2CODFAB').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODFAB.Value;
   DM4.Qr_IncPed02.ParambyName('P2CODGRU').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2CODGRU.Value;
   DM4.Qr_IncPed02.ParambyName('P2BASEN').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2BASEN_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ICMSN').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2ICMSN_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2REPAS').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2REPAS_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2BASER').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2BASER_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ICMSR').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2ICMSR_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2LISTA').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2LISTA.Value;
   DM4.Qr_IncPed02.ParambyName('P2STATUS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2STATUS.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOTAB').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOTAB.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOMAX').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOMAX.Value;
   DM4.Qr_IncPed02.ParambyName('P2UCPR').AsFloat        :=Frm_Ped_AutoP.Tb_Ped02P2UCPR.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOCUS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOCUS.Value;
   DM4.Qr_IncPed02.ParambyName('P2TOTDES').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2TOTDES_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESCRAT').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2DESCRAT_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ACRERAT').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2ACRERAT_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2TABELA').AsString     :=Frm_Ped_AutoP.Tb_Ped02P2TABELA.Value;
   DM4.Qr_IncPed02.ParambyName('P2ALIPI').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2ALIPI.Value;
   DM4.Qr_IncPed02.ParambyName('P2VALIPI').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VALIPI_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2BCINR').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2BCINR_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ICMSNR').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2ICMSNR_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ISENTAS').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2ISENTAS_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2TOTOUT').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2TOTOUT_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ALIQ').AsFloat        :=Frm_Ped_AutoP.Tb_Ped02P2ALIQ_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ALIQNR').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2ALIQNR_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2PCOMIS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOMIS').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOMIS_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOM02').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOM02_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOM03').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOM03_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2VCOM04').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VCOM04_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2DESCM').AsFloat       :=Frm_Ped_AutoP.Tb_Ped02P2DESCM_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2CFO').AsFloat         :=Frm_Ped_AutoP.Tb_Ped02P2CFO.Value;
   DM4.Qr_IncPed02.ParambyName('P2SEMCOM').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2SEMCOM_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2TOTLIQ').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2TOTLIQ_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2PDESCF').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2PDESCF_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2VDESCF').AsFloat      :=Frm_Ped_AutoP.Tb_Ped02P2VDESCF_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ACRECONV').AsFloat    :=Frm_Ped_AutoP.Tb_Ped02P2ACRECONV_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2ACREGER').AsFloat     :=Frm_Ped_AutoP.Tb_Ped02P2ACREGER_101.Value;
   DM4.Qr_IncPed02.ParambyName('P2PROMOCAO').AsString   :=Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO_101.Value;
   Try
      DM4.Qr_IncPed02.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(06,4003,'Frm_Ped','CADP02');
      end;
   mlid:=0;
   if mitemad>0 then
      begin
      for y:=1 to mitemad do
         begin
         DM1.Query1.Params.Clear;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
         DM1.Query1.Sql.add('Insert into CADP02D ('
                        +'P2DCODEMP, '
                        +'P2DLOTSEQ,'
                        +'P2DCHAVE,'
                        +'P2DORDEM,'
                        +'P2DITEM,'
                        +'P2DLINHA,'
                        +'P2DCODPRO,'
                        +'P2DGRADE,'
                        +'P2DTIPO,'
                        +'P2DESC)  values ('
                        +iif(codemp>100,IntTostr(codemp-100),IntToStr(codemp+100))+','
                        +intTostr(ped_lotseq)+','
                        +intTostr(mchave)+','
                        +FloatTostr(mordem)+','
                        +intTostr(mitem)+','
                        +IntTostr(y)+','
                        +Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString+','
                        +Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.AsString+','
                        +'0,'
                        +':DESC)');
         if Length(Frm_Ped_DescAlter.DESCALTER.Lines[y-1])>60 then
            DM1.Query1.Params[0].AsString:=copy(Frm_Ped_DescAlter.DESCALTER.Lines[y-1],1,60)
         else
            DM1.Query1.Params[0].AsString:=Frm_Ped_DescAlter.DESCALTER.Lines[y-1];
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,4374,'Frm_Ped','CADP02D');
            end;
         DM1.Query1.Close;
         mlid:=mlid+60;
         end;
      end;
   Frm_Ped_AutoP.Tb_Ped02.Next;
   if (Frm_Ped_AutoP.Tb_Ped02.Eof) or (mitem>=mqtdin) then
      begin
      fgravap1(0,iif(codemp>100,codemp-100,codemp+100));
      mordem:=mordem+1;
      end;
   end;


mitemad:=0;
mItem  :=0;
Frm_Ped_AutoP.Tb_Ped02S.First;
While not Frm_Ped_AutoP.Tb_Ped02S.Eof do
   begin
   if Frm_Ped_AutoP.Tb_Ped02SP2SQTD_101.Value<=0 then
      begin
      Frm_Ped_AutoP.Tb_Ped02S.Next;
      Continue;
      end;
   if not (Frm_Ped_AutoP.Tb_Ped02SDESCALTER.IsNull) and
      (trim(Frm_Ped_AutoP.Tb_Ped02SDESCALTER.AsString)<>'') then
      begin
      Frm_Ped_DescAlter.DESCALTER.Text:=Frm_Ped_AutoP.Tb_Ped02SDESCALTER.Value;
      mitemad:=mitemad+Frm_Ped_DescAlter.DESCALTER.Lines.Count;
      end;
   mitem:=mitem+1;
   if ((mitemad+mitem)>mqtdis) then
      begin
      verteclado(0);
      MessageDlg('Sera Retirado parte da descricao alternada. Pois nao ha linhas '+#13
                 +'suficientes na nota para descreve-las!',mtWarning,[mbOk],0);
      mitemad:=mitemad-(mItem+mitemad)-mqtdin;
      end;
   if mchave=0 then
      begin
      if pconsemp then
         mchave:=fbuscaNUMPED( iif(codemp>100,codemp-100,codemp))
      else
         mchave:=fbuscaNUMPED(codemp);
      mordem:=1;
      end
   else if mordem=0 then
      mordem:=1;
   DM1.Query1.Close;
   DM1.Query1.Sql.Clear;
   DM1.query1.SQL.add('Insert Into CADP02S ('
                     +' P2SCODEMP, '
                     +' P2SLOTSEQ, '
                     +' P2SCHAVE, '
                     +' P2SORDEM, '
                     +' P2SITEM, '
                     +' P2SCODPRO, '
                     +' P2SQTD, '
                     +' P2SQTDDEV, '
                     +' P2SDESC1, '
                     +' P2SDESC2, '
                     +' P2SVALDES, '
                     +' P2SPRECO, '
                     +' P2SSIT, '
                     +' P2SCODFAB, '
                     +' P2SBCISSQN, '
                     +' P2SVISSQN, '
                     +' P2SLISTA, '
                     +' P2SSTATUS, '
                     +' P2SPCOTAB, '
                     +' P2SPCOCUS, '
                     +' P2STOTDES, '
                     +' P2SDESCRAT, '
                     +' P2STABELA, '
                     +' P2SISENTAS, '
                     +' P2SALIQ, '
                     +' P2SPCOMIS, '
                     +' P2SVCOMIS, '
                     +' P2SVCOM02, '
                     +' P2SVCOM03, '
                     +' P2SDESCM, '
                     +' P2SSEMCOM, '
                     +' P2SCFO, '
                     +' P2SPDESCF, '
                     +' P2SVDESCF ) values ('
                     +Inttostr(iif(codemp>100,codemp-100,codemp+100))+','
                     +intTostr(ped_lotseq)+','
                     +intTostr(mchave)+','
                     +FloatTostr(mordem)+','
                     +IntTostr(mitem)+','
                     +Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SQTD_101.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SQTDDEV_101.asString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESC1.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESC2.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVALDES_101.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPRECO_101.AsString)+','
                     +chr(39)+Frm_Ped_AutoP.Tb_Ped02SP2SSIT.AsString+chr(39)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SCODFAB.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SBCISSQN.AsString)+','    // base do issqn
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVISSQN.AsString)+','    // Valor do issqn
                     +Frm_Ped_AutoP.Tb_Ped02SP2SLISTA.AsString+','
                     +Frm_Ped_AutoP.Tb_Ped02SP2SSTATUS.AsString+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPCOTAB.AsString)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPCOCUS.AsString)+','  // Preco de custoto produto
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2STOTDES.AsString)+','   // Total do desconto
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESCRAT.AsString)+','  // Valor Desconto Rateado
                     +chr(39)+Frm_Ped_AutoP.Tb_Ped02SP2STABELA.AsString+chr(39)+','
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SISENTAS.AsString)+','   // Isentas
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SALIQ.AsString)+','    // Aliquido do issqn
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPCOMIS.AsString)+',' // p2pcomis
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVCOMIS.AsString)+',' // valor da comissao
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVCOM02.AsString)+',' // valor da comissao
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVCOM03.AsString)+',' // valor da comissao
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SDESCM.AsString)+',' // p2descm
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SSEMCOM.AsString)+',' //  produto sem comissao
                     +FormatFloat('0000', Frm_Ped_AutoP.Tb_Ped02SP2SCFO.Value)+','    // cfo
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SPDESCF.AsString)+',' //percentual descf
                     +mudavp(Frm_Ped_AutoP.Tb_Ped02SP2SVDESCF.AsString));  // valor desconto fin
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,4241,'Frm_Ped','CADP02S');
      end;
   DM1.Query1.Close;

   mlid:=0;
   if mitemad>0 then
      begin
      for y:=1 to mitemad do
         begin
         DM1.Query1.Params.Clear;
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.Params.CreateParam(ftstring,'DESC',ptinput);
         DM1.Query1.Sql.add('Insert into CADP02D ('
                        +'P2DCODEMP, '
                        +'P2DLOTSEQ,'
                        +'P2DCHAVE,'
                        +'P2DORDEM,'
                        +'P2DITEM,'
                        +'P2DLINHA,'
                        +'P2DCODPRO,'
                        +'P2DGRADE,'
                        +'P2DTIPO,'
                        +'P2DESC)  values ('
                        +Inttostr(iif(codemp>100,codemp-100,codemp+100))+','
                        +intTostr(ped_lotseq)+','
                        +intTostr(mchave)+','
                        +FloatTostr(mordem)+','
                        +intTostr(mitem)+','
                        +IntTostr(y)+','
                        +Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString+','
                        +' ,'
                        +'1,'
                        +':DESC)');
         if Length(Frm_Ped_DescAlter.DESCALTER.Lines[y-1])>60 then
            DM1.Query1.Params[0].AsString:=copy(Frm_Ped_DescAlter.DESCALTER.Lines[y-1],1,60)
         else
            DM1.Query1.Params[0].AsString:=Frm_Ped_DescAlter.DESCALTER.Lines[y-1];
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,4374,'Frm_Ped','CADP02D');
            end;
         DM1.Query1.Close;
         mlid:=mlid+60;
         end;
      end;
   Frm_Ped_AutoP.Tb_Ped02s.Next;
   if (Frm_Ped_AutoP.Tb_Ped02S.Eof) or (mitem>=mqtdis) then
      begin
      fgravap1(0,iif(codemp>100,codemp-100,codemp+100));
      mordem:=mordem+1;
      end;
   end;

end;


function tFrm_Ped_AutoP.fPed01CSF(pCodEmp, pLotSeq, pChave: Real): Boolean;
begin
DM1.Tb_CSF.Close;
DM1.Tb_CSF.SQL.Clear;
DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+FloattoStr(pCodEmp)+' and ')
                  +' CFLOTSEQ=0'+FloatTostr(pLotSeq)
                  +' and CFCHAVEP=0'+FloatTostr(pChave));
DM1.Tb_CSF.Open;
if DM1.Tb_CSF.Eof then
   DM1.Tb_CSF.Append
else
   DM1.Tb_CSF.Edit;
DM1.Tb_CSFCFCODEMP.Value:=pCodEmp;
DM1.Tb_CSFCFCHAVEP.Value:=pChave;
DM1.Tb_CSFCFLOTSEQ.Value:=pLotSeq;
DM1.Tb_CSFCFORDEMP.Value:=0;
DM1.Tb_CSFCFRAZAO.Value :=NOMCLI.Text;
DM1.Tb_CSFCFDENOM.Value :=DM1.Tb_CliCDENOM.Value;
DM1.Tb_CSFCFENDER.Value :=DM1.Tb_CliCLOG.Value;
if Trim(DM1.Tb_CliCNUM.Value)<>'' then
    DM1.Tb_CSFCFENDER.Value:=DM1.Tb_CSFCFENDER.Value+' No. '+Trim(DM1.Tb_CliCNUM.Value);
DM1.Tb_CSFCFENDER.Value:=DM1.Tb_CSFCFENDER.Value+' '+DM1.Tb_CliCCOMPL.Value;
DM1.Tb_CSFCFBAIRRO.Value:=DM1.Tb_CliCBAIRRO.Value;
DM1.Tb_CSFCFCIDADE.Value:=DM1.Tb_CliCCIDADE.Value;
DM1.Tb_CSFCFUF.Value    :=DM1.Tb_CliCUF.Value;
DM1.Tb_CSFCFCEP.Value   :=DM1.Tb_CliCCEP.Value;
DM1.Tb_CSFCFTIPOC.Value :=0;
DM1.Tb_CSFCFCGC.Value   :=DM1.Tb_CliCCPF.Value;
DM1.Tb_CSFCFIE.Value    :=DM1.Tb_CliCRG.Value;
DM1.Tb_CSFCFFONE.Value  :=DM1.Tb_CliCFONECOM.Value;
DM1.Tb_CSF.Post;
result:=true;
end;
function fPed01EmiteOnLine(pTipo: Integer): Boolean;
var
mEmitiu_Out: Boolean;

emitiu: Boolean;
MNUMNF: Real;
mdupacum: String;
mcomp: String;
mcodemp: Integer;
mannf_aceito: Boolean;
mNivel: Integer;

begin

DM4.Qr_Ped01.First;
mchave_ant:=0;
While not DM4.Qr_Ped01.eof do
   begin
   mEmitiu_Out:=False;
   mnivel:=0;
   emitiu:=True;
   mcomp:='';
   mdupacum:='';
   mcodemp:=DM4.Qr_Ped01P1CODEMP.AsInteger;

   flcadpar01(0,DM4.Qr_Ped01P1CODEMP.AsInteger,'1');
   if (mtipop=0) or (mtipop=10) then // orcamento
      begin
      if DM4.Tb_Par01PONLINE_ORC.Value=1 then
         begin
         FPedEmiteNf(2,0,DM4.Qr_Ped01P1LOTSEQ.AsInteger,DM4.Qr_Ped01P1CHAVE.AsInteger,DM4.Qr_Ped01P1ORDEM.AsInteger,DM4.Qr_Ped01P1CODEMP.AsInteger,1,DM4.Qr_Ped01P1FORMACE.AsInteger); // orcamento
         mEmitiu_Out:=true;
         end;
      end
   else if mtipop=9 then  // emprestimo de mercadorias (vale)
      begin
      if DM4.Tb_Par01PONLINE_VAL.Value=1 then
         begin
         FPedEmiteNf(4,0,DM4.Qr_Ped01P1LOTSEQ.AsInteger,DM4.Qr_Ped01P1CHAVE.AsInteger,
         DM4.Qr_Ped01P1ORDEM.AsInteger,
         DM4.Qr_Ped01P1CODEMP.AsInteger,0,
         DM4.Qr_Ped01P1FORMACE.AsInteger); // lista emprestimo de mercadorias (Vale)
         mEmitiu_Out:=true;
         end;
      end
   else // lista de separacao
      begin
      if DM4.Tb_Par01PONLINE_LSEP.Value=1 then
         begin
         if mchave_ant<>DM4.Qr_Ped01P1CHAVE.Value then
            FPedEmiteNf(3,0,DM4.Qr_Ped01P1LOTSEQ.AsInteger,
            DM4.Qr_Ped01P1CHAVE.AsInteger,
            DM4.Qr_Ped01P1ORDEM.AsInteger,
            DM4.Qr_Ped01P1CODEMP.AsInteger,1,
            DM4.Qr_Ped01P1FORMACE.AsInteger); // lista de separacao
         mchave_ant:=DM4.Qr_Ped01P1CHAVE.Value;
         mnivel:=1;
         mEmitiu_Out:=true;
         end;
      end;
   if mEmitiu_Out then
      begin
      if mnivel=1 then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQl.clear;
         DM1.Query1.Sql.add('Update CADP01 set P1STATUS=1 '
                           +iif(mtipop=9,', P1EMIDOC=1, P1DATDOC='+chr(39)+FormatDateTime(fdt, date)+chr(39),'')
                           +' where '
                           +'(P1CODEMP=0'+IntToStr(codemp)+' or P1CODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100))+' )'
                           +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                           +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                           +' and P1STATUS=0');

         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,8291,'Frm_Ped','CADP01');
            end;
         DM1.Query1.Close;
         end
      else
         begin
         DM1.Query1.Close;
         DM1.Query1.SQl.clear;
         DM1.Query1.Sql.add('Update CADP01 set P1STATUS=1 '
                           +iif(mtipop=9,', P1EMIDOC=1, P1DATDOC='+chr(39)+FormatDateTime(fdt, date)+chr(39),'')
                           +' where P1CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                           +' and P1LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                           +' and P1CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString
                           +' and P1ORDEM=0'+DM4.Qr_Ped01P1ORDEM.AsString
                           +' and P1STATUS=0');
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,8307,'Frm_Ped','CADP01');
            end;
         DM1.Query1.Close;
         end;
      end;
// começou a nota fiscal
   if (DM4.Qr_Ped01P1TIPO.Value<>0) and (DM4.Qr_Ped01P1STATUS.Value<2) then
      begin
      flcadpar01(0,DM4.Qr_Ped01P1CODEMP.AsInteger,'1');
      if DM4.Tb_Par01PONLINE_NF.Value=1 then
         begin
         fgvencto(iif(DM4.Qr_Ped01P1TABPV.Value='PP',1,0),DM4.Qr_Ped01P1CODEMP.AsInteger,
                 DM4.Qr_Ped01P1LOTSEQ.AsInteger,DM4.Qr_Ped01P1CHAVE.AsInteger,
                 DM4.Qr_Ped01P1ORDEM.AsInteger,DM4.Qr_Ped01P1PRAZO.AsInteger,
                 DM4.Qr_Ped01P1CODPV.AsInteger,
                 DM4.Qr_Ped01P1PVDDESCF.AsInteger,
                 DM4.Qr_Ped01P1PVDIASDESCF.AsInteger,
                 DM4.Qr_Ped01P1TOTALL.Value,
                 DM4.Qr_Ped01P1COMIS.Value,
                 DM4.Qr_Ped01P1COMV02.Value,DM4.Qr_Ped01P1COMV03.Value,
                 DM4.Qr_Ped01P1COMV04.Value,
                 DM4.Qr_Ped01P1COMISS.Value,DM4.Qr_Ped01P1COMIST.Value,
                 DM4.Qr_Ped01P1SEMCOM.Value,
                 DM4.Qr_Ped01P1COMASSE.Value,
                 DM4.Qr_Ped01P1ICMSR.Value,
                 DM4.Qr_Ped01P1VALFRE.Value,
                 DM4.Qr_Ped01P1VALSEG.Value,
                 DM4.Qr_Ped01P1DESCFIN.Value,
                 DM4.Qr_Ped01P1TOTDI01.Value,
                 DM4.Qr_Ped01P1TOTDI02.Value,
                 DM4.Qr_Ped01P1TOTDI03.Value,
                 DM4.Qr_Ped01P1TOTDIVL.Value,
                 DM4.Qr_Ped01P1VALDES01.Value,
                 DM4.Qr_Ped01P1VALDES02.Value,
                 DM4.Qr_Ped01P1VLRDES.Value,
                 DM4.Qr_Ped01P1TARBAN.Value,
                 DM4.Qr_Ped01P1IPIINA.Value+DM4.Qr_Ped01P1IPIPOS.Value+DM4.Qr_Ped01P1IPINEG.Value,
                 DM4.Qr_Ped01P1TOTCGRU.Value,
                 DM4.Qr_Ped01P1TOTSGRU.Value,
                 date,
                 DM4.Qr_Ped01P1TABPV.Value);
         if flcadp01(0,DM4.Qr_Ped01P1CODEMP.AsInteger,DM4.Qr_Ped01P1LOTSEQ.AsInteger,
                     DM4.Qr_Ped01P1CHAVE.AsString,'') then
            begin
            emitiu:=true;
            mdupacum:='';
            mcomp     :='';

            while not DM1.Tb_Ped01.Eof do
               begin
               if DM1.Tb_Ped01P1STATUS.Value>1 then
                  begin
                  DM1.Tb_Ped01.next;
                  Continue;
                  end;
               emitiu    :=true;
// se for primeira serie
               flcadpar01(0,DM4.Qr_Ped01P1CODEMP.AsInteger,'1');

               if DM1.Tb_Ped01P1CODSER.AsInteger=0 then
                  begin
                  mnumnf:=DM4.Tb_Par01PNUMNF.Value;
                  if DM4.Tb_Par01PNUMAUT.Value=1 then
                     begin
                     Application.CreateForm(TFrm_ManNF, Frm_ManNF);
                     mannf_aceito:=False;
                     Frm_ManNF.NUMNF.Text:=FloatToStr(mnumnf);
                     Frm_ManNF.NOVNUM.Text:=FloatToStr(mnumnf);
                     Frm_ManNF.ShowModal;
                     if mannf_aceito then
                        mnumnf:=ValFloat(Frm_ManNF.NOVNUM.Text);
                     Frm_ManNF.Free;
                     end;
                  if mnumnf=DM4.Tb_Par01PNUMNF.Value then
                     begin
                     DM1.Query1.Close;
                     DM1.Query1.SQl.Clear;
                     DM1.Query1.SQl.add('Update CADPAR set PNUMNF=PNUMNF+1 where PCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                                       +' and PCODSEQ=1');
                     Try
                        DM1.Query1.ExecSQL;
                        fdm1StartCommit;
                     except
                        ex_erroSql(01,8403,'Frm_Ped','CADPAR');
                        end;
                     DM1.Query1.Close;
                     end;
                  DM1.Tb_Ped01.Edit;
                  DM1.Tb_Ped01P1NUMNF.Value :=mnumnf;
                  DM1.Tb_Ped01P1DATANF.Value:=date;
                  DM1.Tb_Ped01P1DATDOC.Value:=date;
                  DM1.Tb_Ped01P1SERIE.Value :=DM4.Tb_Par01PSERIENF.Value;
                  DM1.Tb_Ped01P1SUBSER.Value:=DM4.Tb_Par01PSUBSERNF.Value;
                  DM1.Tb_Ped01P1MODELO.Value:=DM4.Tb_Par01PMODNF.Value;
                  DM1.Tb_Ped01P1STATUS.Value:=2;
                  DM1.Tb_Ped01P1EMIDOC.Value:=1;
                  DM1.Tb_Ped01.Post;
                  end
               else
                  begin
                  mnumnf:=DM4.Tb_Par01PNUMNF2.Value;
                  if DM4.Tb_Par01PNUMAUT2.Value=1 then
                     begin
                     Application.CreateForm(TFrm_ManNF, Frm_ManNF);
                     mannf_aceito:=False;
                     Frm_ManNF.NUMNF.Text:=FloatToStr(mnumnf);
                     Frm_ManNF.NOVNUM.Text:=FloatToStr(mnumnf);
                     Frm_ManNF.ShowModal;
                     if mannf_aceito then
                        mnumnf:=ValFloat(Frm_ManNF.NOVNUM.Text);
                     Frm_ManNF.Free;
                     end;
                  if mnumnf=DM4.Tb_Par01PNUMNF2.Value then
                     begin
                     DM1.Query1.Close;
                     DM1.Query1.SQl.Clear;
                     DM1.Query1.SQl.add('Update CADPAR set PNUMNF2=PNUMNF2+1 where PCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                                       +' and PCODSEQ=1');
                     Try
                        DM1.Query1.ExecSQL;
                        fdm1StartCommit;
                     except
                        ex_erroSql(01,8458,'Frm_Ped','CADPAR');
                        end;
                     DM1.Query1.Close;
                     end;
                  DM1.Tb_Ped01.Edit;
                  DM1.Tb_Ped01P1NUMNF.Value :=mnumnf;
                  DM1.Tb_Ped01P1DATANF.Value:=date;
                  DM1.Tb_Ped01P1DATDOC.Value:=date;
                  DM1.Tb_Ped01P1SERIE.Value :=DM4.Tb_Par01PSERIENF2.Value;
                  DM1.Tb_Ped01P1SUBSER.Value:=DM4.Tb_Par01PSUBSERNF2.Value;
                  DM1.Tb_Ped01P1MODELO.Value:=DM4.Tb_Par01PMODNF2.Value;
                  DM1.Tb_Ped01P1STATUS.Value:=2;
                  DM1.Tb_Ped01P1EMIDOC.Value:=1;
                  DM1.Tb_Ped01.Post;
                  end;
               if (DM1.Tb_Ped01P1TIPO.Value=1) and (DM1.Tb_PargerPDUPTIP1.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=2) and (DM1.Tb_PargerPDUPTIP2.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=3) and (DM1.Tb_PargerPDUPTIP3.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=4) and (DM1.Tb_PargerPDUPTIP4.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=5) and (DM1.Tb_PargerPDUPTIP5.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=6) and (DM1.Tb_PargerPDUPTIP6.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=7) and (DM1.Tb_PargerPDUPTIP7.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=8) and (DM1.Tb_PargerPDUPTIP8.Value=1) then
                  emitiu:=False
               else if (DM1.Tb_Ped01P1TIPO.Value=9) and (DM1.Tb_PargerPDUPTIP9.Value=1) then
                  emitiu:=False;
               if emitiu then
                  begin
                  if (DM1.Tb_Pargerpagrudup.Value=1) and (mcodemp= DM1.Tb_Ped01P1CODEMP.Value) then
                     begin
                     mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
                     mcomp:='/'
                     end
                  else
                     begin
                     mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
                     mcomp:='';
                     Fgravardup(mdupacum,0,0);
                     mcodemp:=DM1.Tb_Ped01P1CODEMP.AsInteger;
                     mdupacum:='';
                     end;
                  end;
               Fgravarnf(0);
               FPedEmiteNf(DM1.Tb_Ped01P1CODSER.AsInteger,0,
                             DM1.Tb_Ped01P1LOTSEQ.AsInteger,
                             DM1.Tb_Ped01P1CHAVE.AsInteger,
                             DM1.Tb_Ped01P1ORDEM.AsInteger,
                             DM1.Tb_Ped01P1CODEMP.AsInteger,0,
                             DM1.Tb_Ped01P1FORMACE.AsInteger); // Reemisao de Nota fiscal

               DM1.Tb_Ped01.Next;
               end;
            if (emitiu) and (trim(mdupacum)<>'') then
               Fgravardup(mdupacum,0,0);
            end;
         DM1.Tb_Ped01.Close;
         end;
      end;
   DM4.Qr_Ped01.Next;
   end;
result:=True;
end;


function TFrm_Ped_AutoP.ftestardev(ptipo,phist:Integer; pcodpro,pqtd: Real; plote,pdatven: String ):Real;
// 0 testa Quantidade produto
// 1 Testa quantidade serviços
// 2 vago
// 3 Baixar devolução    produto
// 4 Excluir a devolucao produto
// 5 baixar devolução    serviço
// 6 excluir devolução   serviço

var
y,x: Integer;
mqtddev, mqtdvda: Real;
mqtdfalt: Real;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
if ptipo=1 then
   begin
   DM1.Query2.SQL.Add('Select P2SCODEMP,P2SLOTSEQ,P2SCHAVE,P2SORDEM,P2SQTD,P2SQTDDEV,P2SITEM from CADP02S where ');
   mcinst:=' ((';
   for y:=1 to  STG_DEV.RowCount do
      begin
      if ValInt(STG_DEV.cells[0,y])<=0 then
         Continue;
      DM1.Query2.SQL.add(mcinst+' (P2SCODEMP=0'+Trim(STG_DEV.Cells[0,y])
                        +' and P2SLOTSEQ=0'+Trim(STG_DEV.Cells[1,Y])
                        +' and P2SCHAVE=0'+Trim(STG_DEV.Cells[2,Y])
                        +' and P2SORDEM=0'+Trim(STG_DEV.Cells[3,Y])+')');
      mcinst:=') or (';
      end;
   if mcinst=') or (' then
      DM1.Query2.SQL.Add(')) and ');

   DM1.Query2.SQL.Add(' P2SCODPRO=0'+FloatToStr(pcodpro));
   end
else
   begin
   DM1.Query2.SQL.Add('Select P2CODEMP,P2LOTSEQ,P2CHAVE,P2ORDEM,P2QTD,P2QTDDEV,P2ITEM,P2LOTE,P2DTVCTO from CADP02 where ');
   mcinst:=' ((';
//   lindomar origem ver como é que fica

   for y:=1 to  STG_DEV.RowCount do
      begin
      if ValInt(STG_DEV.cells[0,y])<=0 then
         Continue;
      DM1.Query2.SQL.add(mcinst+' (P2CODEMP=0'+Trim(STG_DEV.Cells[0,y])
                        +' and P2LOTSEQ=0'+Trim(STG_DEV.Cells[1,Y])
                        +' and P2CHAVE=0'+Trim(STG_DEV.Cells[2,Y])
                        +' and P2ORDEM=0'+Trim(STG_DEV.Cells[3,Y])+')');
      mcinst:=') or (';
      end;
   if mcinst=') or (' then
      DM1.Query2.SQL.Add(')) and ');
   DM1.Query2.SQL.Add('  P2CODPRO=0'+FloatToStr(pcodpro));
   if trim(plote)<>'' then
      DM1.Query2.SQL.Add(' and P2LOTE='+chr(39)+plote+chr(39));
   if trim(pdatven)<>'' then
      DM1.Query2.SQL.Add(' and P2DTVCTO='+chr(39)+trim(pdatven)+chr(39));
   DM1.Query2.Sql.add(' order by P2DTVCTO,P2LOTE ');
   end;
if ptipo<2 then
   begin
   mqtddev:=0;
   mqtdvda:=0;
   DM1.Query2.Open;
   While not DM1.Query2.Eof do
      begin
//      if DM1.Tb_PargerPBLQDEVOL.Value=1 then
         mqtddev:=mqtddev+DM1.Query2.Fields[5].AsFloat;
      mqtdvda:=mqtdvda+DM1.Query2.Fields[4].AsFloat;
      DM1.Query2.Next;
      end;
   if mqtdvda<=0 then
      begin
      verteclado(0);
      MessageDlg('Produto não Encontrado do Pedido de Origem!',mtWarning,[mbOk],0);
      result:=0;
      exit;
      end;
   if (mqtdvda-(mqtddev+pqtd))<0 then
      begin
      verteclado(0);
      MessageDlg('Quantidade Vendida: '+FormatFloat(mcasqtd, mqtdvda)+#13
                +'Quantidade ja Devolvida: '+FormatFloat(mcasqtd, mqtddev)+#13
                +'Devolução Inválida!',mtWarning,[mbOk],0);
      result:=0;
      exit;
      end;
   mqtddev:=pqtd;
   end
else if ptipo=3 then
   begin
   mqtddev:=pqtd;
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'LOTSEQ',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'CHAVE',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'ORDEM',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'ITEM',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'QTDDEV',ptInput);
   DM1.Query3.SQL.add('Update CADP02 set P2QTDDEV=P2QTDDEV+:QTDDEV  where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=:CODEMP and ')
                     +' P2LOTSEQ=:LOTSEQ and P2CHAVE=:CHAVE and P2ORDEM=:ORDEM '
                     +' and P2ITEM=:ITEM ');
   DM1.Query2.Open;
   While not (DM1.Query2.Eof) and (mqtddev>0) do
      begin
      if DM1.Query2.FieldByName('P2QTDDEV').AsFloat>=DM1.Query2.FieldByName('P2QTD').AsFloat then
         begin
         DM1.Query2.Next;
         Continue;
         end;
//      if DM1.Tb_PargerPBLQDEVOL.Value=0 then
//         mqtdvda:=mqtddev
//      else
         mqtdvda:=DM1.Query2.FieldbyName('P2QTD').AsFloat-DM1.Query2.FieldbyName('P2QTDDEV').AsFloat;
      if mqtdvda>mqtddev then
         mqtdvda:=mqtddev;
      if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
         DM1.Query3.ParamByName('CODEMP').AsFloat := DM1.Query2.fieldByName('P2CODEMP').AsFloat;
      DM1.Query3.ParamByName('LOTSEQ').AsFloat    := DM1.Query2.fieldByName('P2LOTSEQ').AsFloat;
      DM1.Query3.ParamByName('CHAVE').AsFloat     := DM1.Query2.fieldByName('P2CHAVE').AsFloat;
      DM1.Query3.ParamByName('ORDEM').AsFloat     := DM1.Query2.fieldByName('P2ORDEM').AsFloat;
      DM1.Query3.ParamByName('ITEM').AsFloat      := DM1.Query2.fieldByName('P2ITEM').AsFloat;
//      DM1.Query3.ParamByName('LOTE').AsString     := DM1.Query2.fieldByName('P2LOTE').AsString;
//      DM1.Query3.ParamByName('DTVCTO').AsDateTime := DM1.Query2.fieldByName('P2DTVCTO').AsDateTime;
      DM1.Query3.ParamByName('QTDDEV').AsFloat    := mqtdvda;
      Try
         DM1.Query3.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(11,4027,'Frm_Ped','CADP02');
         end;
      DM1.Query3.Close;
      if phist=1 then
         begin
         x:=STG_MER.RowCount;
         STG_MER.Cells[0,x-1]:='0';
         STG_MER.Cells[1,x-1]:=FloatToStr(pcodpro);
         STG_MER.Cells[2,x-1]:=FormatFloat(mcasqtd, mqtdvda);
         STG_MER.Cells[3,x-1]:=DM1.Query2.fieldByName('P2LOTE').AsString;
         if DM1.Query2.FieldByName('P2DTVCTO').IsNull then
            STG_MER.Cells[4,x-1]:=' '
         else
            STG_MER.Cells[4,x-1]:=FormatDateTime(fdt, DM1.Query2.FieldByName('P2DTVCTO').AsDateTime);
         STG_MER.RowCount:=x+1;
         STG_MER.Rows[x].Clear;
         end;
      mqtddev:=mqtddev-mqtdvda;
      DM1.Query2.Next;
      end;
   end
else if ptipo=4 then
   begin
   mqtddev:=pqtd;
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'LOTSEQ',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'CHAVE',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'ORDEM',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'ITEM',ptInput);
//   DM1.Query3.Params.CreateParam(ftString,'LOTE',ptInput);
//   DM1.Query3.Params.CreateParam(ftString,'DTVCTO',ptInput);
   DM1.Query3.Params.CreateParam(ftString,'QTDDEV',ptInput);
   DM1.Query3.SQL.add('Update CADP02 set P2QTDDEV=P2QTDDEV-:QTDDEV  where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=:CODEMP and ')
                     +' P2LOTSEQ=:LOTSEQ and P2CHAVE=:CHAVE and P2ORDEM=:ORDEM '
                     +' and P2ITEM=:ITEM '); //and P2LOTE=:LOTE and P2DTVCTO=:DTVCTO');

   DM1.Query2.Open;
   While not (DM1.Query2.Eof) and (mqtddev>0) do
      begin
      if DM1.Query2.FieldByName('P2QTDDEV').AsFloat<=0 then
         begin
         DM1.Query2.Next;
         Continue;
         end;
      mqtdvda:=DM1.Query2.FieldbyName('P2QTDDEV').AsFloat;
      if mqtdvda>mqtddev then
         mqtdvda:=mqtddev;
      if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
         DM1.Query3.ParamByName('CODEMP').AsFloat := DM1.Query2.fieldByName('P2CODEMP').AsFloat;
      DM1.Query3.ParamByName('LOTSEQ').AsFloat    := DM1.Query2.fieldByName('P2LOTSEQ').AsFloat;
      DM1.Query3.ParamByName('CHAVE').AsFloat     := DM1.Query2.fieldByName('P2CHAVE').AsFloat;
      DM1.Query3.ParamByName('ORDEM').AsFloat     := DM1.Query2.fieldByName('P2ORDEM').AsFloat;
      DM1.Query3.ParamByName('ITEM').AsFloat      := DM1.Query2.fieldByName('P2ITEM').AsFloat;
//      DM1.Query3.ParamByName('LOTE').AsString     := DM1.Query2.fieldByName('P2LOTE').AsString;
//      DM1.Query3.ParamByName('DTVCTO').AsDateTime := DM1.Query2.fieldByName('P2DTVCTO').AsDateTime;
      DM1.Query3.ParamByName('QTDDEV').AsFloat    := mqtdvda;
      Try
         DM1.Query3.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(11,4027,'Frm_Ped','CADP02');
         end;
      DM1.Query3.Close;
      if phist=1 then
         begin
         x:=STG_MER.RowCount;
         STG_MER.Cells[0,x-1]:='1';
         STG_MER.Cells[1,x-1]:=FloatToStr(pcodpro);
         STG_MER.Cells[2,x-1]:=FormatFloat(mcasqtd, mqtdvda);
         STG_MER.Cells[3,x-1]:=DM1.Query2.fieldByName('P2LOTE').AsString;
         if DM1.Query2.FieldByName('P2DTVCTO').IsNull then
            STG_MER.Cells[4,x-1]:=' '
         else
            STG_MER.Cells[4,x-1]:=FormatDateTime(fdt, DM1.Query2.FieldByName('P2DTVCTO').AsDateTime);
         STG_MER.RowCount:=x+1;
         STG_MER.Rows[x].Clear;
         STG_MER.Rows[x+1].Clear;
         end
      else if phist=2 then
         begin
         mqtdfalt:=mqtdvda;
         for x:=1 to STG_MER.Rowcount do
             begin
             if (ValFloat(STG_MER.cells[1,x])<>pcodpro) or
                (STG_MER.Cells[3,x]          <>plote)   or
                (STG_MER.Cells[4,x]          <>pdatven) then
                Continue;
             if ValFloat(STG_MER.Cells[2,x])<mqtdfalt then
                begin
                mqtdfalt:=mqtdfalt-(ValFloat(STG_MER.Cells[2,x]));
                STG_MER.Cells[2,x]:='0';
                end
             else
                begin
                STG_MER.Cells[2,x]:=FloatToStr(ValFloat(STG_MER.Cells[2,x])-mqtdfalt);
                mqtdfalt:=0;
                end;
             if mqtdfalt<=0 then
                break;
             end;
         end;
      mqtddev:=mqtddev-mqtdvda;
      DM1.Query2.Next;
      end;
   end;
result:=mqtddev;
end;
function fPed01Div(pRest,pfracao: Integer; pqtd,pund: Real):Real;
var
mqtdTot: Real;
begin
if pRest=1 then
   begin
   if codemp>100 then
      mqtdTot:=pqtd
   else
      mqtdTot:=0;
   end
else
   begin
   mqtdTot:=pqtd*pund/100;
   if pfracao=0 then
      mqtdTot:=Round(mqtdTot);
   if mqtdTot>pqtd then
      mqtdTot:=pqtd;
   end;
result:=mqtdTot;
end;





function fbaixarlote(pLado,pcodemp: Integer): Boolean;

var
mfat,mestl: Real;
mqtd,mrest: Real;

begin
if (moper_ped=0) then //se ;e inclusao de pedido
   begin
   flcadest(0,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString);
   if mtipop=14 then
      begin
      mestl:=DM1.Tb_EstCESALDOC.Value;
      mrest:=DM1.Tb_EstCESALDOC.Value;
      end
   else if mtipop=15 then
      begin
      mestl:=DM1.Tb_EstCESALDOR.Value;
      mrest:=DM1.Tb_EstCESALDOR.Value;
      end
   else
      begin
      mestl:=DM1.Tb_EstCESALDO.Value;
      mrest:=DM1.Tb_EstCESALDO.Value;
      end;
   if plado=0 then
      mqtd:=(Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value)
   else
      mqtd:=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value;
   if mestl>mqtd then
      mrest:=mqtd;
   if mrest<0 then
      mrest:=0;
   mqtd:=mqtd-mrest;

   if (mqtd>0)  then
      begin
      if DM4.Tb_Par01PGRAPEN.Value=1 then
         begin
         if pLado=0 then
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value);
            end
         else
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value);
            end;
         end;
      if (DM4.Tb_Par01PFATMZ.Value=1) and (mrest<>0) then
         begin
         if plado=0 then
            begin
            fInserirPed02(pLado,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2ITEM.AsInteger,
                   0,
                   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,
                   mqtd,
                   Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                   '',pdatanula);
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=mrest;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end
         else
            begin
            fInserirPed02(pLado,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2ITEM.AsInteger,
                   0,
                   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,
                   mqtd,
                   Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,''
                   ,pdatanula);
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value-mrest;
            Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-mrest;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end;
         end
      else
         begin
         if Frm_Ped_AutoP.Tb_Ped02P2QTD.Value=mqtd then
            begin
            Frm_Ped_AutoP.Tb_Ped02.Delete;
            result:=true;
            exit;
            end
         else
            begin
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-mqtd;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end;
         end;
      end;
   if mrest>0 then
      begin
      if mtipop=14 then
         begin
         flbaiest(13,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=15 then
         begin
         flbaiest(23,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=11 then
         begin
         flbaiest(11,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=7 then
         begin
         flbaiest(21,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=19 then
         begin
         flbaiest(31,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else
         begin
         flbaiest(1,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end;

      flcadlgc(0,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,' ',' ');
      while not (DM1.Tb_LGC.Eof) and (mrest>0) do
         begin
         if mtipop=14 then
            begin
            if DM1.Tb_LGCCLQTDC.Value<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;
            if DM1.Tb_LGCCLQTDC.Value<mrest then
               begin
               mfat:=DM1.Tb_LGCCLQTDC.Value;
               mrest:=mrest-mfat;
               end
            else
               begin
               mfat:=mrest;
               mrest:=0;
               end;
            end
         else if mtipop=15 then
            begin
            if DM1.Tb_LGCCLQTDR.Value<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;
            if DM1.Tb_LGCCLQTDR.Value<mrest then
               begin
               mfat:=DM1.Tb_LGCCLQTDR.Value;
               mrest:=mrest-mfat;
               end
            else
               begin
               mfat:=mrest;
               mrest:=0;
               end;
            end
         else
            begin
            if DM1.Tb_LGCCLQTD.Value<=0 then
               begin
               DM1.Tb_LGC.Next;
               Continue;
               end;
            if DM1.Tb_LGCCLQTD.Value<mrest then
               begin
               mfat:=DM1.Tb_LGCCLQTD.Value;
               mrest:=mrest-mfat;
               end
            else
               begin
               mfat:=mrest;
               mrest:=0;
               end;
            end;


         if DM1.Tb_LGCCLDTVCTO.IsNull then
            mdtv:=''
         else
            mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);

//

         if mrest<>0 then
            begin
            if plado=0 then
               begin
               fInserirPed02(pLado,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2ITEM.AsInteger,
                   1,
                   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,
                   mfat,
                   Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                   DM1.Tb_LGCCLNUMERO.Value,DM1.Tb_LGCCLDTVCTO.Value);
               Frm_Ped_AutoP.Tb_Ped02.Edit;
               Frm_Ped_AutoP.Tb_Ped02P2QTD.Value   :=mrest;
               Frm_Ped_AutoP.Tb_Ped02.Post;
               end
            else
               begin
               fInserirPed02(pLado,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2ITEM.AsInteger,
                   1,
                   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,
                   mfat,
                   Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,
                   DM1.Tb_LGCCLNUMERO.Value,DM1.Tb_LGCCLDTVCTO.Value);
               Frm_Ped_AutoP.Tb_Ped02.Edit;
               Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value   :=mfat;
               Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-mfat;
               Frm_Ped_AutoP.Tb_Ped02.Post;
               end;
            end
         else
            begin
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value  :=DM1.Tb_LGCCLNUMERO.Value;
            Frm_Ped_AutoP.Tb_Ped02P2DTVCTO.Value:=DM1.Tb_LGCCLDTVCTO.Value;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end;
//

         if mtipop=14 then
            begin
            flbailgc(13,pCodEmp,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=15 then
            begin
            flbailgc(23,pCodEmp,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=11 then
            begin
            flbailgc(11,pCodEmp,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=7 then
            begin
            flbailgc(21,pCodEmp,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=19 then
            begin
            flbailgc(31,pCodEmp,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else
            begin
            flbailgc(1,pCodEmp,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end;

         DM1.Tb_LGC.Next;
         end;

      if mrest>0 then
         begin
         mfat:=mrest;
         end;
      end;
   if mqtd>0 then
      begin
      if DM4.Tb_Par01PGRAPEN.Value=1 then
         begin
         if pLado=0 then
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value);
            end
         else
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value);
            end;
         end;
      if DM4.Tb_Par01PFATMZ.Value=1 then
         begin
         mrest:=mqtd;
         mfat:=mqtd;
         if mtipop=14 then
            begin
            flbaiest(13,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=15 then
            begin
            flbaiest(23,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=11 then
            begin
            flbaiest(11,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=7 then
            begin
            flbaiest(21,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=19 then
            begin
            flbaiest(31,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else
            begin
            flbaiest(1,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end;

         flcadlgc(1,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,' ',' ');
         if DM1.Tb_LGC.Eof then
            begin
            if not DM1.Qr_TID.Locate('TINOME','CADLGC',[]) then
               fcrialgc(0,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,' ','')
            else
               fcrialgc(0,0,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,' ','');

            if not flcadlgc(1,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,'',' ') then
               begin
               verteclado(0);
               MessageDlg('erro ao tentar procurar lotes de mercadorias 010201!',mtWarning,[mbOk],0);
               end;
            end;
         if DM1.Tb_LGCCLDTVCTO.IsNull then
            mdtv:=''
         else
            mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);
         if mtipop=14 then
            begin
            flbailgc(13,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=15 then
            begin
            flbailgc(23,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=11 then
            begin
            flbailgc(11,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=7 then
            begin
            flbailgc(21,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else if mtipop=19 then
            begin
            flbailgc(31,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end
         else
            begin
            flbailgc(1,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                     mdtv,mfat);
            end;
         end;
      end;
   end;
end;


function fbaixarGrade(pLado,pCodEmp: Integer): Boolean;
var
x: Integer;
mfat,mestl: Real;
mqtd,mrest: Real;
begin
mdtv:='';

if (moper_ped=0)  then  // se inclusao de pedido
   begin
   flcadlgc(1,pCodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,' ');
   if mtipop=14 then
      begin
      mestl:=DM1.Tb_LGCCLQTDC.Value;
      mrest:=DM1.Tb_LGCCLQTDC.Value;
      end
   else if mtipop=15 then
      begin
      mestl:=DM1.Tb_LGCCLQTDR.Value;
      mrest:=DM1.Tb_LGCCLQTDR.Value;
      end
   else if mtipop=19 then
      begin
      mestl:=DM1.Tb_LGCCLQTDT.Value;
      mrest:=DM1.Tb_LGCCLQTDT.Value;
      end
   else
      begin
      mestl:=DM1.Tb_LGCCLQTD.Value;
      mrest:=DM1.Tb_LGCCLQTD.Value;
      end;




   if plado=0 then
      mqtd:=(Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value)
   else
      mqtd:=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value;
   if mestl>mqtd then
      mrest:=mqtd;
   if mrest<0 then
      mrest:=0;
   mqtd:=mqtd-mrest;

   if (mqtd>0)  then
      begin
      if DM4.Tb_Par01PGRAPEN.Value=1 then
         begin
         if pLado=0 then
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value);
            end
         else
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value);
            end;
         end;
      if (DM4.Tb_Par01PFATMZ.Value=1) and (mrest<>0) then
         begin
         if plado=0 then
            begin
            fInserirPed02(pLado,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2ITEM.AsInteger,
                   0,
                   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,
                   mqtd,
                   Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                   '',pdatanula);
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=mrest;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end
         else
            begin
            fInserirPed02(pLado,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2ITEM.AsInteger,
                   0,
                   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,
                   mqtd,
                   Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                   Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,''
                   ,pdatanula);
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value-mrest;
            Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-mrest;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end;
         end
      else
         begin
         if Frm_Ped_AutoP.Tb_Ped02P2QTD.Value=mqtd then
            begin
            Frm_Ped_AutoP.Tb_Ped02.Delete;
            result:=true;
            exit;
            end
         else
            begin
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-mqtd;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end;
         end;
      end;

   if mrest>0 then
      begin
      if mtipop=14 then
         begin
         flbaiest(13,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=15 then
         begin
         flbaiest(23,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=11 then
         begin
         flbaiest(11,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=7 then
         begin
         flbaiest(21,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else if mtipop=19 then
         begin
         flbaiest(31,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end
      else
         begin
         flbaiest(1,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
         end;

      if mtipop=14 then
         begin
         flbailgc(13,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                  mdtv,mrest);
         end
      else if mtipop=15 then
         begin
         flbailgc(23,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                  mdtv,mrest);
         end
      else if mtipop=11 then
         begin
         flbailgc(11,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                  mdtv,mrest);
         end
      else if mtipop=7 then
         begin
         flbailgc(21,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                  mdtv,mrest);
         end
      else if mtipop=19 then
         begin
         flbailgc(31,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                  mdtv,mrest);
         end
      else
         begin
         flbailgc(1,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                  mdtv,mrest);
         end;
      mrest:=0;
      end;

   if mqtd>0 then
      begin
      if DM4.Tb_Par01PGRAPEN.Value=1 then
         begin
         if plado=0 then
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value
                     ,mqtd,mestl,
                     Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                     Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                     Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                     Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                     Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value);
            end
         else
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value
                     ,mqtd,mestl,
                     Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                     Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                     Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                     Frm_Ped_AutoP.Tb_Ped02P2VALDES_101 .Value,
                     Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value);
            end;
         end;
      if DM4.Tb_Par01PFATMZ.Value=1 then
         begin
         mrest:=mqtd;
         mfat:=mqtd;
         if mtipop=14 then
            begin
            flbaiest(13,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=15 then
            begin
            flbaiest(23,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=11 then
            begin
            flbaiest(11,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=7 then
            begin
            flbaiest(21,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=19 then
            begin
            flbaiest(31,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else
            begin
            flbaiest(1,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end;
         if mtipop=14 then
            begin
            flbailgc(13,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                     mdtv,mrest);
            end
         else if mtipop=15 then
            begin
            flbailgc(23,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
               mdtv,mrest);
            end
         else if mtipop=11 then
            begin
            flbailgc(11,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
               mdtv,mrest);
            end
         else if mtipop=7 then
            begin
            flbailgc(21,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                     mdtv,mrest);
            end
         else if mtipop=19 then
            begin
            flbailgc(31,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                     mdtv,mrest);
            end
         else
            begin
            flbailgc(1,pCodEmp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,
                     Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value,
                     mdtv,mrest);
            end;
         end;
      end;
   end;
Result:=True;
end;

function fbaixarNormal(pTipo,pLado,pcodemp: Integer) : Boolean;
//ptipo=0-Mercadorias
//      1-Servicos
var
x: Integer;
mfat,mestl: Real;
mqtd,mrest: Real;
begin
if (moper_ped=0) then // se inclusao de pedido
   begin
   if ptipo=1 then
      flcadest(0,pCodEmp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString)
   else
      flcadest(0,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString);
   if mtipop=14 then
      begin
      mestl:=DM1.Tb_EstCESALDOC.Value;
      mrest:=DM1.Tb_EstCESALDOC.Value;
      end
   else if mtipop=15 then
      begin
      mestl:=DM1.Tb_EstCESALDOR.Value;
      mrest:=DM1.Tb_EstCESALDOR.Value;
      end
   else if mtipop=19 then
      begin
      mestl:=DM1.Tb_EstCESALDOT.Value;
      mrest:=DM1.Tb_EstCESALDOT.Value;
      end
   else
      begin
      mestl:=DM1.Tb_EstCESALDO.Value;
      mrest:=DM1.Tb_EstCESALDO.Value;
      end;

   if plado=0 then
      mqtd:=(Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value)
   else
      mqtd:=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value;
   if mestl>mqtd then
      mrest:=mqtd;
   if mrest<0 then
      mrest:=0;
   mqtd:=mqtd-mrest;

// iniciar
   if (mqtd>0)  then
      begin
      if DM4.Tb_Par01PGRAPEN.Value=1 then
         begin
         if pLado=0 then
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value);
            end
         else
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value);
            end;
         end;
      if DM4.Tb_Par01PFATMZ.Value=0 then
         begin
         if plado=0 then
            begin
            if Frm_Ped_AutoP.Tb_Ped02P2QTD.Value=mqtd then
               begin
               Frm_Ped_AutoP.Tb_Ped02.Delete;
               result:=true;
               exit;
               end
            else
               begin
               Frm_Ped_AutoP.Tb_Ped02.Edit;
               Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-mqtd;
               Frm_Ped_AutoP.Tb_Ped02.Post;
               end;
            end
         else
            begin
            Frm_Ped_AutoP.Tb_Ped02.Edit;
            Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value-mqtd;
            Frm_Ped_AutoP.Tb_Ped02P2QTD.Value:=Frm_Ped_AutoP.Tb_Ped02P2QTD.Value-mqtd;
            Frm_Ped_AutoP.Tb_Ped02.Post;
            end;
         end;
      end;

// termino



   if mrest>0 then
      begin
      if ptipo=0 then
         begin
         if mtipop=14 then
            begin
            flbaiest(13,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=15 then
            begin
            flbaiest(23,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=11 then
            begin
            flbaiest(11,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=7 then
            begin
            flbaiest(21,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else if mtipop=19 then
            begin
            flbaiest(31,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end
         else
            begin
            flbaiest(1,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
            end;
         end
      else
         begin
         if mtipop=14 then
            begin
            flbaiest(13,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
            end
         else if mtipop=15 then
            begin
            flbaiest(23,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
            end
         else if mtipop=11 then
            begin
            flbaiest(11,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
            end
         else if mtipop=7 then
            begin
            flbaiest(21,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
            end
         else if mtipop=19 then
            begin
            flbaiest(31,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
            end
         else
            begin
            flbaiest(1,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
            end;

         end;
      mrest:=0;
      end;
   if mqtd>0 then
      begin
      if DM4.Tb_Par01PGRAPEN.Value=1 then
         begin
         if pLado=0 then
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value);
            end
         else
            begin
            fprocpen(1,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value,mqtd,mestl,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value,
                 Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value);
            end;
         end;
      if DM4.Tb_Par01PFATMZ.Value=1 then
         begin
         mrest:=mqtd;
         mfat:=mqtd;
         if ptipo=0 then
            begin
            if mtipop=14 then
               begin
               flbaiest(13,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
               end
            else if mtipop=15 then
               begin
               flbaiest(23,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
               end
            else if mtipop=11 then
               begin
               flbaiest(11,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
               end
            else if mtipop=7 then
               begin
               flbaiest(21,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
               end
            else if mtipop=19 then
               begin
               flbaiest(31,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
              end
            else
               begin
               flbaiest(1,pcodemp,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,mrest);
              end;

            end
         else
            begin
            if mtipop=14 then
               begin
               flbaiest(13,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
               end
            else if mtipop=15 then
               begin
               flbaiest(23,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
               end
            else if mtipop=11 then
               begin
               flbaiest(11,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
               end
            else if mtipop=7 then
               begin
               flbaiest(21,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
               end
            else if mtipop=19 then
               begin
               flbaiest(31,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
               end
            else
               begin
               flbaiest(1,pcodemp,Frm_Ped_AutoP.Tb_Ped02SP2SCODPRO.AsString,mrest);
               end;
            end;
         end
      end;
   end;
Result:=True;
end;


function fgravap1(ptipo,pcodemp:Integer):Boolean;
var
mtotal,mtotb,mtotl,mbasen,micmsn,mbaser,micmsr,mbasenp,mbasenn,mbaseni: Real;
micmsnp, micmsnn, micmsni,mbaserp,mbasern,mbaseri: Real;
micmsrp, micmsrn, micmsri,mbasenrp,mbasenri,mbasenrn: Real;
micmsnrp, micmsnrn, micmsnri, mipiina, mipipos, mipineg : Real;
mtottri, mtotret, mtotise, mtotout, mtotpos, mtotneg, mtotina: Real;
mbascal, msemcom,mbissqn, mvissqn, mpiscofn, mpiscofr, mtotdes,mdesped: Real;
mdescitem, mdescfin: Real;
mtotdi01, mtotdi02,mtotdi03,mtotdivl,mtotditem: Real;
mtotcom02, mtotcom03,mtotcom04,mtotucpr: Real;
mvaldes01,mvaldes02,mpesobruto, mpesoliquido: Real;
mfrete,mvalseg: Real;
mbcfrete, micmsfrete: Real;
mbcseg,   micmsseg: Real;
mbcoutd,  micmsoutd: Real;
mbcipi,   micmsipi: Real;
mtotcgru, mtotsgru: Real;
mrepas,macreger, macrecv : Real;
mTotDescrat: Real;
mcfop1, mcfop2,mcfopser: String;
y:Integer;
begin

mbcfrete:=0; micmsfrete:=0;
mbcseg  :=0; micmsseg:=0;
mbcoutd :=0; micmsoutd:=0;
mbcipi  :=0; micmsipi:=0;


macrecv :=0; macreger:=0;
mtotb   :=0; mtotl   :=0; mbasen  :=0; micmsn  :=0; mbaser  :=0; micmsr  :=0; mbasenp:=0; mbasenn:=0; mbaseni:=0;
micmsnp :=0; micmsnn :=0; micmsni :=0; mbaserp :=0; mbasern :=0; mbaseri :=0;
micmsrp :=0; micmsrn :=0; micmsri :=0; mbasenrp:=0; mbasenri:=0; mbasenrn:=0;
micmsnrp:=0; micmsnrn:=0; micmsnri:=0; mipiina :=0; mipipos :=0; mipineg :=0;
mtottri :=0; mtotret :=0; mtotise :=0; mtotpos :=0; mtotneg :=0; mtotina :=0;
mpiscofn:=0; mpiscofr:=0; mtotdes :=0; mbissqn :=0; mvissqn :=0;
msemcom :=0; mcomis  :=0; mcomist :=0; mcomiss :=0; mcomasse:=0; mdesped :=0; mrepas :=0;
mdescfin:=0; mtotout :=0; mtotucpr:=0;
mtotdi01:=0; mtotdi02:=0; mtotdi03:=0; mtotdivl:=0;
mtotcom02:=0; mtotcom03:=0; mtotcom04:=0; mvaldes01:=0; mvaldes02:=0;
mfrete   :=0;
mvalseg  :=0;
mtotditem:=0;
mpesobruto  :=0;
mpesoliquido:=0;
mtotcgru    :=0;
mtotsgru    :=0;
mcfop1:='';
mcfop2:='';
mcfopser:='';
mTotDescrat:=0;

DM4.Qr_Ped02.Close;
DM4.Qr_Ped02.SQl.Clear;
DM4.Qr_Ped02.Sql.add('Select * from CADP02 where ');
if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM4.Qr_Ped02.Sql.add('P2LOTSEQ=0'+IntToStr(ped_lotseq)+' and '
                   +' P2CHAVE=0'+IntTostr(mchave)
                   +' and P2ORDEM=0'+FloatTostr(mordem));
   end
else
   begin
   DM4.Qr_Ped02.Sql.add(' P2CODEMP=0'+intTostr(pcodemp)
                   +' and P2LOTSEQ=0'+IntToStr(ped_lotseq)
                   +' and P2CHAVE=0'+IntTostr(mchave)
                   +' and P2ORDEM=0'+FloatTostr(mordem));
   end;


DM4.Qr_Ped02.Open;
While not DM4.Qr_Ped02.Eof do
   begin
   if mcfop1='' then
      mcfop1:=FormatFloat('0000',DM4.Qr_Ped02.FieldByName('P2CFO').AsFloat);
   if mcfop2='' then
      begin
      if mcfop1<>Formatfloat('0000',DM4.Qr_Ped02.FieldByName('P2CFO').AsFloat) then
         mcfop2:=FormatFloat('0000',DM4.Qr_Ped02.FieldByName('P2CFO').AsFloat);
      end;
   mtotal   :=Arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat*DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat),DM1.Tb_PargerPCASAS.AsInteger);
   if (DM4.Qr_Ped02.FieldByName('P2CODGRU').AsFloat>0)
      or (trim(DM4.Qr_Ped02.FieldByName('P2PROMOCAO').AsString)<>'') then
      mtotcgru:=mtotcgru+(mtotal-DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat)
   else
      mtotsgru:=mtotsgru+(mtotal-DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat);

   mtotb   :=mtotb+mtotal;
   mTotDescrat:=mTotDescrat+DM4.Qr_Ped02.FieldByName('P2DESCRAT').AsFloat;

   mtotucpr:=mtotucpr+(DM4.Qr_Ped02.FieldByName('P2UCPR').AsFloat*DM4.Qr_Ped02.FieldByName('P2UCPR').AsFloat);
   mbasen  :=mbasen+DM4.Qr_Ped02.FieldByName('P2BASEN').AsFloat;
   micmsn  :=micmsn+DM4.Qr_Ped02.FieldByName('P2ICMSN').AsFloat;
   mbaser  :=mbaser+DM4.Qr_Ped02.FieldByName('P2BASER').AsFloat;
   micmsr  :=micmsr+DM4.Qr_Ped02.FieldByName('P2ICMSR').AsFloat;
   mbascal :=(DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat*DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat);
   mbascal :=mbascal-DM4.Qr_Ped02.FieldByName('P2VALDES').AsFloat-DM4.Qr_Ped02.FieldByName('P2REPAS').AsFloat;
   mbascal :=mbascal-(mbascal*ValFloat(Frm_Ped_AutoP.DESC01.Text)/100);
   mbascal :=mbascal-(mbascal*ValFloat(Frm_Ped_AutoP.DESC02.Text)/100);
   mbascal :=mbascal-DM4.Qr_Ped02.FieldByName('P2DESCRAT').AsFloat;
   mcomasse :=mcomiss+(mbascal*mpcomasse/100);
   mcomiss  :=mcomiss+(mbascal*DM1.Tb_PargerPCOMSUP.Value/100);
   mcomist  :=mcomist+(mbascal*DM1.Tb_PargerPCOMTLV.Value/100);

   mcomis  :=mcomis+DM4.Qr_Ped02.FieldByName('P2VCOMIS').AsFloat;


   mtotdivl :=mtotdivl+DM4.Qr_Ped02.FieldByName('P2VALDES').AsFloat;
   macrecv  :=macrecv+DM4.Qr_Ped02.FieldByName('P2ACRECONV').AsFloat;
   macreger :=macreger +DM4.Qr_Ped02.FieldByName('P2ACREGER').AsFloat;
   mdescitem:=(mtotal*DM4.Qr_Ped02.FieldByName('P2DESC1').AsFloat/100);
   mdescitem:=truncar(mdescitem,DM1.Tb_PargerPCASAS.AsInteger);
   mtotdi01 :=mtotdi01+mdescitem;
   mtotditem:=mdescitem;

   mdescitem:=((mtotal-mtotditem)*DM4.Qr_Ped02.FieldByName('P2DESC2').AsFloat/100);
   mdescitem:=truncar(mdescitem,DM1.Tb_PargerPCASAS.AsInteger);
   mtotdi02 :=mtotdi02+mdescitem;

   mtotditem:=mtotditem+mdescitem;
   mdescitem:=((mtotal-mtotditem)*DM4.Qr_Ped02.FieldByName('P2DESC3').AsFloat/100);
   mdescitem:=truncar(mdescitem,DM1.Tb_PargerPCASAS.AsInteger);
   mtotdi03 :=mtotdi03+mdescitem;

   mtotcom02:=mtotcom02+DM4.Qr_Ped02.FieldByName('P2VCOM02').AsFloat;
   mtotcom03:=mtotcom03+DM4.Qr_Ped02.FieldByName('P2VCOM03').AsFloat;
   mtotcom04:=mtotcom04+DM4.Qr_Ped02.FieldByName('P2VCOM04').AsFloat;

   if DM4.Qr_Ped02.FieldByName('P2lista').AsInteger=1 then
      begin
      mbasenp :=mbasenp+DM4.Qr_Ped02.FieldByName('P2basen').AsFloat;
      micmsnp :=micmsnp+DM4.Qr_Ped02.FieldByName('P2icmsn').AsFloat;
      mbaserp :=mbaserp+DM4.Qr_Ped02.FieldByName('P2BASER').AsFloat;
      micmsrp :=micmsrp+DM4.Qr_Ped02.FieldByName('P2ICMSR').AsFloat;
      mbasenrp:=mbasenrp+DM4.Qr_Ped02.FieldByName('P2BCINR').AsFloat;
      micmsnrp:=micmsnrp+DM4.Qr_Ped02.FieldByName('P2ICMSNR').AsFloat;
      mipipos :=mipipos+DM4.Qr_Ped02.FieldByName('P2VALIPI').AsFloat;
      mtotpos:=mtotpos+arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
                                 *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
                                 ,DM1.Tb_PargerPCASAS.AsInteger)-
                                 DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;
      end
   else if DM4.Qr_Ped02.FieldByName('P2lista').AsFloat=2 then
      begin
      mbasenn :=mbasenn+DM4.Qr_Ped02.FieldByName('P2basen').AsFloat;
      micmsnn :=micmsnn+DM4.Qr_Ped02.FieldByName('P2icmsn').AsFloat;
      mbasern :=mbasern+DM4.Qr_Ped02.FieldByName('P2BASER').AsFloat;
      micmsrn :=micmsrn+DM4.Qr_Ped02.FieldByName('P2ICMSR').AsFloat;
      mbasenrn:=mbasenrn+DM4.Qr_Ped02.FieldByName('P2BCINR').AsFloat;
      micmsnrn:=micmsnrn+DM4.Qr_Ped02.FieldByName('P2ICMSNR').AsFloat;
      mipineg :=mipineg+DM4.Qr_Ped02.FieldByName('P2VALIPI').AsFloat;
      mtotneg:=mtotneg+arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
                    *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
                    ,DM1.Tb_PargerPCASAS.AsInteger)-
                    DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;
      end
   else
      begin
      mbaseni :=mbaseni+DM4.Qr_Ped02.FieldByName('P2basen').AsFloat;
      micmsni :=micmsni+DM4.Qr_Ped02.FieldByName('P2icmsn').AsFloat;
      mbaseri :=mbaseri+DM4.Qr_Ped02.FieldByName('P2BASER').AsFloat;
      micmsri :=micmsri+DM4.Qr_Ped02.FieldByName('P2ICMSR').AsFloat;
      mbasenri:=mbasenri+DM4.Qr_Ped02.FieldByName('P2BCINR').AsFloat;
      micmsnri:=micmsnri+DM4.Qr_Ped02.FieldByName('P2ICMSNR').AsFloat;
      mipiina :=mipiina+DM4.Qr_Ped02.FieldByName('P2VALIPI').AsFloat;
      mtotina :=mtotina+arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
               *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat),
               DM1.Tb_PargerPCASAS.AsInteger)-
               DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;;
      end;
   if DM4.Qr_Ped02.FieldByName('P2sit').AsString[2] in ['1','6'] then
      begin
      mtotret:=mtotret+arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
       *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat),
       DM1.Tb_PargerPCASAS.AsInteger)-DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;;
      mpiscofr:=mpiscofr+arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
         *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat),
         DM1.Tb_PargerPCASAS.AsInteger)-DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;
      end
   else if DM4.Qr_Ped02.FieldByName('P2sit').AsString[2] in ['4'] then
      begin
      mpiscofn:=mpiscofn+arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
                 *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat),
                 DM1.Tb_PargerPCASAS.AsInteger)-DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;
      end
   else
      begin
      mpiscofn:=mpiscofn+arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
         *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat),
         DM1.Tb_PargerPCASAS.AsInteger)-DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;
      mtottri:=mtottri+Arredonda((DM4.Qr_Ped02.FieldByName('P2PRECO').AsFloat
              *DM4.Qr_Ped02.FieldByName('P2QTD').AsFloat)
              ,DM1.Tb_PargerPCASAS.AsInteger)-DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat;
      end;
   mtotise:=mtotise+DM4.Qr_Ped02.FieldByName('P2ISENTAS').AsFloat;
   mtotout:=mtotout+DM4.Qr_Ped02.FieldByName('P2TOTOUT').AsFloat;
   mtotdes:=mtotdes+(DM4.Qr_Ped02.FieldByName('P2TOTDES').AsFloat
                   -DM4.Qr_Ped02.FieldByName('P2DESCRAT').AsFloat);
   mrepas:=mrepas+DM4.Qr_Ped02.FieldByName('P2REPAS').AsFloat;
   if DM4.Qr_Ped02.FieldByName('P2SEMCOM').AsFloat=1 then
      msemcom:=msemcom+mbascal;
   mdescfin:=mdescfin+DM4.Qr_Ped02.FieldByName('P2VDESCF').AsFloat;
   DM4.Qr_Ped02.Next;
   end;

DM4.Qr_Ped02S.Close;
DM4.Qr_Ped02S.SQl.Clear;
DM4.Qr_Ped02S.Sql.add('Select * from CADP02S where ');
if DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   begin
   DM4.Qr_Ped02S.Sql.add('P2SLOTSEQ=0'+IntToStr(ped_lotseq)+' and '
                   +' P2SCHAVE=0'+IntTostr(mchave)
                   +' and P2SORDEM=0'+FloatTostr(mordem));
   end
else
   begin
   DM4.Qr_Ped02S.Sql.add(' P2SCODEMP=0'+intTostr(pcodemp)
                   +' and P2SLOTSEQ=0'+IntToStr(ped_lotseq)
                   +' and P2SCHAVE=0'+IntTostr(mchave)
                   +' and P2SORDEM=0'+FloatTostr(mordem));
   end;
DM4.Qr_Ped02S.Open;
While not DM4.Qr_Ped02S.Eof do
   begin
   mtotal  :=arredonda((DM4.Qr_Ped02S.FieldByName('P2SPRECO').AsFloat*DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat),DM1.Tb_PargerPCASAS.AsInteger);
   mtotb   :=mtotb+mtotal;
   mTotDescrat:=mTotDescrat+DM4.Qr_Ped02S.FieldByName('P2SDESCRAT').AsFloat;
   mtotsgru:=mtotsgru+(mtotal-DM4.Qr_Ped02S.FieldByName('P2STOTDES').AsFloat);
   mbascal :=(DM4.Qr_Ped02S.FieldByName('P2SPRECO').AsFloat*DM4.Qr_Ped02S.FieldByName('P2SQTD').AsFloat);
   mbascal :=mbascal-DM4.Qr_Ped02S.FieldByName('P2SVALDES').AsFloat;
   mbascal :=mbascal-(mbascal*ValFloat(Frm_Ped_AutoP.DESC01.Text)/100);
   mbascal :=mbascal-(mbascal*ValFloat(Frm_Ped_AutoP.DESC02.Text)/100);
   mbascal :=mbascal-DM4.Qr_Ped02S.FieldByName('P2SDESCRAT').AsFloat;
   mcomis  :=mcomis+(mbascal*DM4.Qr_Ped02S.FieldByName('P2SPCOMIS').AsFloat/100);
   mcomasse:=mcomasse+(mbascal*mpcomasse/100);
   mcomiss :=mcomiss+(mbascal*DM1.Tb_PargerPCOMSUP.Value/100);
   mcomist :=mcomist+(mbascal*DM1.Tb_PargerPCOMTLV.Value/100);
   mtotdes :=mtotdes+(DM4.Qr_Ped02S.FieldByName('P2STOTDES').AsFloat-DM4.Qr_Ped02S.FieldByName('P2SDESCRAT').AsFloat);
   mtotcom02:=mtotcom02+DM4.Qr_Ped02S.FieldByName('P2SVCOM02').AsFloat;
   mtotcom03:=mtotcom03+DM4.Qr_Ped02S.FieldByName('P2SVCOM03').AsFloat;
   mbissqn :=mbissqn+DM4.Qr_Ped02S.FieldByName('P2SBCISSQN').AsFloat;
   mvissqn :=mvissqn+DM4.Qr_Ped02S.FieldByName('P2SVISSQN').AsFloat;
   mcfopser:=DM4.Qr_Ped02S.FieldByName('P2SCFO').AsString;
   if DM4.Qr_Ped02S.FieldByName('P2SSEMCOM').AsFloat=1 then
      msemcom:=msemcom+mbascal;
   DM4.Qr_Ped02S.Next;
   end;

if ptipo=0 then
   mdesped:=mvaldes
else
   begin
   mdesped:=mTotDescrat;
   mvaldes:=mvaldes-mdesped;
   end;
mtotdes:=mtotdes+mdesped;
if mordem=1 then
   begin
   mfrete   :=ValFloat(Frm_Ped_AutoP.VALFRE.Text);
   mvalseg  :=ValFloat(Frm_Ped_AutoP.VALSEG.Text);
   if codemp<>pcodemp then
      fPed01tarban(100)
   else
      fPed01tarban(1);
   mtotl:=mtotl+mfrete+mvalseg;
   end;

if DM1.Tb_CliCALIQA.Value>0 then
   begin
   if (valfloat(Frm_Ped_AutoP.TARBAN.Caption)<>0) or
      (mfrete<>0) then
      begin
      if flcaduf(0,0,pcodemp,DM1.Tb_CliCUF.AsString) then
         begin
         if (mfrete<>0) and (DM1.Tb_UFPICMSFRETE.Value=1) then
            mbcfrete:=mfrete;
         if (valFloat(Frm_Ped_AutoP.TARBAN.Caption)<>0) and (DM1.Tb_UFPICMSOUTDESP.Value=1) then
            mbcoutd:=ValFloat(Frm_Ped_AutoP.TARBAN.Caption);
         if (mvalseg<>0) and (DM1.Tb_UFPICMSSEGURO.Value=1) then
            mbcseg:=mvalseg;
         end;
      end;
   if (mbcfrete+mbcseg+mbcoutd+mbcipi)<>0 then
      begin
      if mbcfrete<>0 then
         micmsfrete:=Arredonda( ((mbcfrete*DM1.Tb_CliCALIQA.Value)/100) ,2);
      if mbcseg<>0 then
         micmsseg:=Arredonda( ((mbcseg*DM1.Tb_CliCALIQA.Value)/100) ,2);
      if mbcoutd<>0 then
         micmsoutd:=Arredonda( ((mbcoutd*DM1.Tb_CliCALIQA.Value)/100) ,2);
      if mbcipi<>0 then
         micmsipi:=Arredonda( ((mbcipi*DM1.Tb_CliCALIQA.Value)/100) ,2);
      mbasen:=mbasen+mbcfrete+mbcseg+mbcoutd+mbcipi;
      micmsn:=micmsn+micmsseg+micmsfrete+micmsoutd+micmsipi;
      end;
   end;


mtotl:=mtotb-mtotdes-mrepas+micmsr+macrecv+macreger+mfrete
      +ValFloat(Frm_Ped_AutoP.TARBAN.Caption)+mipiina+mipipos+mipineg;
mpesobruto:=ValFloat(Frm_Ped_AutoP.PESOB.Text);
mpesoliquido:=ValFloat(Frm_Ped_AutoP.PESOL.Text);
mtotucpr:=Arredonda(mtotucpr,DM1.Tb_PargerPCASASPU.AsInteger);
DM4.Qr_IncPed01.Close;
DM4.Qr_IncPed01.ParambyName('P1CODEMP').AsFloat     := pcodemp;
DM4.Qr_IncPed01.ParambyName('P1LOTSEQ').AsFloat     := ped_lotseq;
DM4.Qr_IncPed01.ParambyName('P1CHAVE').AsFloat      := mchave;
DM4.Qr_IncPed01.ParambyName('P1ORDEM').AsFloat      := mordem;
DM4.Qr_IncPed01.ParambyName('P1CODCLI').AsFloat     := ValFloat(Frm_Ped_AutoP.CODCLI.Text);
DM4.Qr_IncPed01.ParambyName('P1CODVEN').AsFloat     := ValFloat(Frm_Ped_AutoP.CODVEN.Text);
DM4.Qr_IncPed01.ParambyName('P1CODV02').AsFloat     := ValFloat(Frm_Ped_AutoP.CODVEN2.Text);
DM4.Qr_IncPed01.ParambyName('P1CODV03').AsFloat     := ValFloat(Frm_Ped_AutoP.CODVEN3.Text);
DM4.Qr_IncPed01.ParambyName('P1CODV04').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1CODASSE').AsFloat    := ValFloat(Frm_Ped_AutoP.CODASSE.Text);
DM4.Qr_IncPed01.ParambyName('P1DATAP').AsDatetime   := StrtoDate(Frm_Ped_AutoP.DATAP.Text);

if Trim(Frm_Ped_AutoP.DATANF.Text)<>'/  /'  then
   DM4.Qr_IncPed01.ParambyName('P1DATANF').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATANF.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DATANF').AsDateTime:=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1NUMNF').AsFloat      := ValFloat(Frm_Ped_AutoP.NUMNF.Text);
DM4.Qr_IncPed01.ParambyName('P1SERIE').AsString     := Frm_Ped_AutoP.SERIENF.Text;
DM4.Qr_IncPed01.ParambyName('P1SUBSER').AsString    := Frm_Ped_AutoP.SUBSER.Text;
DM4.Qr_IncPed01.ParambyName('P1MODELO').AsString    := Frm_Ped_AutoP.MODELO.Text;
// if submod_ant=<>0 then
if submod_ant=100000 then
   DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000', submod_ant))
else
   begin
   if ValFloat(Frm_Ped_AutoP.SUBMOD.Text)<>0 then
      begin
      if codemp>100 then
         begin
         if pcodemp>100 then
            DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
         else
            DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',100-fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
         end
      else
         begin
         if pcodemp>100 then
            DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',100-fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
         else
            DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
        end;
      end
   else
      DM4.Qr_IncPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',fsonumero(Frm_Ped_AutoP.SUBMOD.Text)));
   end;
DM4.Qr_IncPed01.ParambyName('P1FORMACE').AsFloat    := mformace;
DM4.Qr_IncPed01.ParambyName('P1OBS1').AsString      := Frm_Ped_AutoP.OBS1.Text;
DM4.Qr_IncPed01.ParambyName('P1OBS2').AsString      := Frm_Ped_AutoP.OBS2.Text;
DM4.Qr_IncPed01.ParambyName('P1OBS3').AsString      := Frm_Ped_AutoP.OBS3.Text;
DM4.Qr_IncPed01.ParambyName('P1STATUS').AsFloat     := mStatus;
DM4.Qr_IncPed01.ParambyName('P1TIPO').AsFloat       := mtipop;
DM4.Qr_IncPed01.ParambyName('P1PEDORI').AsFloat     := iif(Frm_Ped_AutoP.CB_PEDORI.Checked,1,0);
DM4.Qr_IncPed01.ParambyName('P1SITPED').AsFloat     := 0;
DM4.Qr_IncPed01.ParambyName('P1TOTALB').AsFloat     := mtotb;
DM4.Qr_IncPed01.ParambyName('P1TOTALL').AsFloat     := mtotl;
DM4.Qr_IncPed01.ParambyName('P1CODUSR').AsFloat     := iif(moper_ped=0,codusr,DM4.Qr_Ped01P1CODUSR.Value);
DM4.Qr_IncPed01.ParambyName('P1HORADIG').AsString   := Frm_Ped_AutoP.HORDIG.Text;
if Trim(Frm_Ped_AutoP.DTMOD.Text)<>'/  /' then
   DM4.Qr_IncPed01.ParambyName('P1DTMOD').AsDateTime   := StrToDate(Frm_Ped_AutoP.DTMOD.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DTMOD').AsDateTime   := pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HRMOD').AsString     := Frm_Ped_AutoP.HRMOD.Text;
DM4.Qr_IncPed01.ParambyName('P1USRMOD').AsFloat     := codusr;
DM4.Qr_IncPed01.ParambyName('P1CONF').AsString      :=IIF(Frm_Ped_AutoP.CB_CONF.Checked,'S','N');
DM4.Qr_IncPed01.ParambyName('P1CODCON').AsFloat     := ValInt(Frm_Ped_AutoP.CODCON.Text);
if Trim(Frm_Ped_AutoP.DATCON.Text)<>'/  /'  then
   DM4.Qr_IncPed01.ParambyName('P1DATCON').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATCON.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DATCON').AsDateTime:=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HORCON').AsString    := Frm_Ped_AutoP.HORCON.Text;
DM4.Qr_IncPed01.ParambyName('P1TIPENT').AsFloat     := Frm_Ped_AutoP.RG_TIPENT.ItemIndex;
if Trim(Frm_Ped_AutoP.PREVENT.Text)<>'/  /'  then
   DM4.Qr_IncPed01.ParambyName('P1PREVENT').AsDateTime:=StrToDate(Frm_Ped_AutoP.PREVENT.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1PREVENT').AsDateTime:= pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HPREVENT').AsString    := Frm_Ped_AutoP.HPREVENT.Text;
DM4.Qr_IncPed01.ParambyName('P1CODENT').AsFloat       := Valint(Frm_Ped_AutoP.CODENT.Text);
DM4.Qr_IncPed01.ParambyName('P1PRAZO').AsFloat        := mprazo;
if Trim(Frm_Ped_AutoP.DATENT.Text)<>'/  /'  then
   DM4.Qr_IncPed01.ParambyName('P1DATENT').AsDateTime := StrToDate(Frm_Ped_AutoP.DATENT.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DATENT').AsDateTime := pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HORENT').AsString      := Frm_Ped_AutoP.HORENT.Text;
DM4.Qr_IncPed01.ParambyName('P1TABPV').AsString       := Frm_Ped_AutoP.CB_TABPV.Text;
DM4.Qr_IncPed01.ParambyName('P1CODPV').AsFloat        := ValInt(Frm_Ped_AutoP.CODPV.Text);
DM4.Qr_IncPed01.ParambyName('P1CUPOM').AsFloat        := mcupom;
DM4.Qr_IncPed01.ParambyName('P1CANHOTO').AsFloat      := iif(Frm_Ped_AutoP.CB_CANHOTO.Checked,1,0);
DM4.Qr_IncPed01.ParambyName('P1BASEN').AsFloat        := mbasen;
DM4.Qr_IncPed01.ParambyName('P1ICMSN').AsFloat        := micmsn;
DM4.Qr_IncPed01.ParambyName('P1REPAS').AsFloat        := mrepas;
DM4.Qr_IncPed01.ParambyName('P1BASER').AsFloat        := mbaser;
DM4.Qr_IncPed01.ParambyName('P1ICMSR').AsFloat        := micmsr;
DM4.Qr_IncPed01.ParambyName('P1BASENP').AsFloat       := mbasenp;
DM4.Qr_IncPed01.ParambyName('P1BASENN').AsFloat       := mbasenn;
DM4.Qr_IncPed01.ParambyName('P1BASENI').AsFloat       := mbaseni;
DM4.Qr_IncPed01.ParambyName('P1ICMSNP').AsFloat       := micmsnp;
DM4.Qr_IncPed01.ParambyName('P1ICMSNN').AsFloat       := micmsnn;
DM4.Qr_IncPed01.ParambyName('P1ICMSNI').AsFloat       := micmsni;
DM4.Qr_IncPed01.ParambyName('P1BASERP').AsFloat       := mbaserp;
DM4.Qr_IncPed01.ParambyName('P1BASERN').AsFloat       := mbasern;
DM4.Qr_IncPed01.ParambyName('P1BASERI').AsFloat       := mbaseri;
DM4.Qr_IncPed01.ParambyName('P1ICMSRP').AsFloat       := micmsrp;
DM4.Qr_IncPed01.ParambyName('P1ICMSRN').AsFloat       := micmsrn;
DM4.Qr_IncPed01.ParambyName('P1ICMSRI').AsFloat       := micmsri;
DM4.Qr_IncPed01.ParambyName('P1BASENRI').AsFloat      := mbasenri;
DM4.Qr_IncPed01.ParambyName('P1ICMSNRI').AsFloat      := micmsnri;
DM4.Qr_IncPed01.ParambyName('P1BASENRP').AsFloat      := mbasenrp;
DM4.Qr_IncPed01.ParambyName('P1ICMSNRP').AsFloat      := micmsnrp;
DM4.Qr_IncPed01.ParambyName('P1BASENRN').AsFloat      := mbasenrn;
DM4.Qr_IncPed01.ParambyName('P1ICMSNRN').AsFloat      := micmsnrn;
DM4.Qr_IncPed01.ParambyName('P1IPIINA').AsFloat       := mipiina;
DM4.Qr_IncPed01.ParambyName('P1IPIPOS').AsFloat       := mipipos;
DM4.Qr_IncPed01.ParambyName('P1IPINEG').AsFloat       := mipineg;
DM4.Qr_IncPed01.ParambyName('P1TOTTRI').AsFloat       := mtottri;
DM4.Qr_IncPed01.ParambyName('P1TOTRET').AsFloat       := mtotret;
DM4.Qr_IncPed01.ParambyName('P1TOTISE').AsFloat       := mtotise;
DM4.Qr_IncPed01.ParambyName('P1TOTOUT').AsFloat       := mtotout;
DM4.Qr_IncPed01.ParambyName('P1TOTPOS').AsFloat       := mtotpos;
DM4.Qr_IncPed01.ParambyName('P1TOTNEG').AsFloat       := mtotneg;
DM4.Qr_IncPed01.ParambyName('P1TOTINA').AsFloat       := mtotina;
DM4.Qr_IncPed01.ParambyName('P1PISCOFN').AsFloat      := mpiscofn;
DM4.Qr_IncPed01.ParambyName('P1PISCOFR').AsFloat      := mpiscofr;
DM4.Qr_IncPed01.ParambyName('P1TOTDES').AsFloat       := mtotdes;
DM4.Qr_IncPed01.ParambyName('P1TOTDI01').AsFloat      := mtotdi01;
DM4.Qr_IncPed01.ParambyName('P1TOTDI02').AsFloat      := mtotdi02;
DM4.Qr_IncPed01.ParambyName('P1TOTDI03').AsFloat      := mtotdi03;
mvaldes01:=(mtotb-(mtotdi01+mtotdi02+mtotdi03+mtotdivl)) *ValFloat(Frm_Ped_AutoP.DESC01.Text)/100;
mvaldes01:=Truncar(mvaldes01,2);
mvaldes02:=(mtotb-(mtotdi01+mtotdi02+mtotdi03+mtotdivl+mvaldes01)) *ValFloat(Frm_Ped_AutoP.DESC02.Text)/100;
mvaldes02:=Truncar(mvaldes02,2);
DM4.Qr_IncPed01.ParambyName('P1VALDES01').AsFloat     := mvaldes01;
DM4.Qr_IncPed01.ParambyName('P1VALDES02').AsFloat     := mvaldes02;
DM4.Qr_IncPed01.ParambyName('P1TOTDIVL').AsFloat      := mtotdivl;
DM4.Qr_IncPed01.ParambyName('P1TOTUCPR').AsFloat      := mtotucpr;
DM4.Qr_IncPed01.ParambyName('P1DESC01').AsFloat       := ValFloat(Frm_Ped_AutoP.DESC01.Text);
DM4.Qr_IncPed01.ParambyName('P1DESC02').AsFloat       := ValFloat(Frm_Ped_AutoP.DESC02.Text);
DM4.Qr_IncPed01.ParambyName('P1VLRDES').AsFloat       := mdesped;

DM4.Qr_IncPed01.ParambyName('P1PAVDES').AsFloat       := mpavdes;
DM4.Qr_IncPed01.ParambyName('P1CODTRA').AsFloat       := ValInt(Frm_Ped_AutoP.CODTRA.Text);
DM4.Qr_IncPed01.ParambyName('P1QTDVOL').AsFloat       := ValFloat(Frm_Ped_AutoP.QTDVOL.Text);
DM4.Qr_IncPed01.ParambyName('P1PESOL').AsFloat        := mpesoliquido;
DM4.Qr_IncPed01.ParambyName('P1PESOB').AsFloat        := mpesobruto;
DM4.Qr_IncPed01.ParambyName('P1ESPECIE').AsString     := Frm_Ped_AutoP.ESPECIE.Text;
DM4.Qr_IncPed01.ParambyName('P1FRETEPC').AsFloat      := Frm_Ped_AutoP.RGFRETEPC.ItemIndex+1;
DM4.Qr_IncPed01.ParambyName('P1VALFRE').AsFloat       := mfrete;
DM4.Qr_IncPed01.ParambyName('P1TARBAN').AsFloat       := ValFloat(Frm_Ped_AutoP.TARBAN.Caption);
DM4.Qr_IncPed01.ParambyName('P1ICMS_BCFRE').AsFloat   := mbcfrete;
DM4.Qr_IncPed01.ParambyName('P1ICMS_ALFRE').AsFloat   := DM1.Tb_CliCALIQA.Value;
DM4.Qr_IncPed01.ParambyName('P1ICMS_VLFRE').AsFloat   := micmsfrete;
DM4.Qr_IncPed01.ParambyName('P1ICMS_BCSEG').AsFloat   := mbcseg;
DM4.Qr_IncPed01.ParambyName('P1ICMS_ALSEG').AsFloat   := DM1.Tb_CliCALIQA.Value;
DM4.Qr_IncPed01.ParambyName('P1ICMS_VLSEG').AsFloat   := micmsseg;
DM4.Qr_IncPed01.ParambyName('P1ICMS_BCOUTD').AsFloat  := mbcoutd;
DM4.Qr_IncPed01.ParambyName('P1ICMS_ALOUTD').AsFloat  := DM1.Tb_CliCALIQA.Value;
DM4.Qr_IncPed01.ParambyName('P1ICMS_VLOUTD').AsFloat  := micmsoutd;
DM4.Qr_IncPed01.ParambyName('P1ICMS_BCIPI').AsFloat   := mbcipi;
DM4.Qr_IncPed01.ParambyName('P1ICMS_ALIPI').AsFloat   := DM1.Tb_CliCALIQA.Value;
DM4.Qr_IncPed01.ParambyName('P1ICMS_VLIPI').AsFloat   := micmsipi;


DM4.Qr_IncPed01.ParambyName('P1UFPV').AsString        := Frm_Ped_AutoP.UFPV.Text;
DM4.Qr_IncPed01.ParambyName('P1PLACAV').AsString      := Frm_Ped_AutoP.PLACAV.Text;
DM4.Qr_IncPed01.ParambyName('P1BANCO').AsFloat        := ValInt(Frm_Ped_AutoP.CODBCO.Text);
DM4.Qr_IncPed01.ParambyName('P1CODSER').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1CODLDR').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1PCOMIS').AsFloat       := ValFloat(Frm_Ped_AutoP.PCOMIS.Text);
DM4.Qr_IncPed01.ParambyName('P1CODCV').AsFloat        := ValInt(Frm_Ped_AutoP.CODCV.Text);
DM4.Qr_IncPed01.ParambyName('P1LOTEDM').AsFloat       := ValInt(Frm_Ped_AutoP.LOTEDM.Text);
DM4.Qr_IncPed01.ParambyName('P1COMIS').AsFloat        := mcomis;
DM4.Qr_IncPed01.ParambyName('P1COMV02').AsFloat       := mtotcom02;
DM4.Qr_IncPed01.ParambyName('P1COMV03').AsFloat       := mtotcom03;
DM4.Qr_IncPed01.ParambyName('P1COMV04').AsFloat       := mtotcom04;
DM4.Qr_IncPed01.ParambyName('P1COMIST').AsFloat       := mcomist;
DM4.Qr_IncPed01.ParambyName('P1COMISS').AsFloat       := mcomiss;
DM4.Qr_IncPed01.ParambyName('P1COMASSE').AsFloat      := mcomasse;
DM4.Qr_IncPed01.ParambyName('P1ORIGEM').AsFloat       := Frm_Ped_AutoP.CB_ORIGEM.ItemIndex;
DM4.Qr_IncPed01.ParambyName('P1NPEDORI').AsFloat      := ValInt(Frm_Ped_AutoP.NPEDORI.Text);
DM4.Qr_IncPed01.ParambyName('P1CODTLV').AsFloat       := ValInt(Frm_Ped_AutoP.CODTLV.Text);
DM4.Qr_IncPed01.ParambyName('P1BCISSQN').AsFloat      := mbcissqn;
DM4.Qr_IncPed01.ParambyName('P1VISSQN').AsFloat       := mvissqn;
DM4.Qr_IncPed01.ParambyName('P1ETIVOL').AsFloat       := iif(Frm_Ped_AutoP.CB_ETIVOL.Checked,1,0);
DM4.Qr_IncPed01.ParambyName('P1CODSEP').AsFloat       := ValInt(Frm_Ped_AutoP.CODSEP.Text);
if Trim(Frm_Ped_AutoP.DATSEP.Text)<>'/  /'  then
   DM4.Qr_IncPed01.ParambyName('P1DATASEP').AsDateTime   :=StrtoDate(Frm_Ped_AutoP.DATSEP.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DATASEP').AsDateTime   :=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HORSEP').AsString      := Frm_Ped_AutoP.HORSEP.Text;
DM4.Qr_IncPed01.ParambyName('P1CODEMB').AsFloat       := ValInt(Frm_Ped_AutoP.CODEMB.Text);
if Trim(Frm_Ped_AutoP.DATEMB.Text)<>'/  /'  then
   DM4.Qr_IncPed01.ParambyName('P1DATAEMB').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATEMB.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DATAEMB').AsDateTime:=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1HOREMB').AsString      := Frm_Ped_AutoP.HOREMB.Text;
DM4.Qr_IncPed01.ParambyName('P1NUMCF').AsFloat        := ValInt(Frm_Ped_AutoP.NUMCF.Text);
DM4.Qr_IncPed01.ParambyName('P1CODECF').AsFloat       := iif(moper_ped=0,0,DM4.Qr_Ped01P1CODECF.Value);
if Trim(Frm_Ped_AutoP.DATACF.Text)<>'/  /'  then
   DM4.Qr_IncPed01.ParambyName('P1DATACF').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATACF.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DATACF').AsDateTime:=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1TPPCO').AsFloat        :=Frm_Ped_AutoP.RG_TPPCO.ItemIndex;
DM4.Qr_IncPed01.ParambyName('P1SEMCOM').AsFloat       :=msemcom;
DM4.Qr_IncPed01.ParambyName('P1DESCFIN').AsFloat      :=mdescfin;
DM4.Qr_IncPed01.ParambyName('P1LOTCASSE').AsFloat     :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCASSE.Value);
DM4.Qr_IncPed01.ParambyName('P1LOTCV').AsFloat        :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV.Value);
DM4.Qr_IncPed01.ParambyName('P1LOTCS').AsFloat        :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCS.Value);
DM4.Qr_IncPed01.ParambyName('P1LOTCT').AsFloat        :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCT.Value);
DM4.Qr_IncPed01.ParambyName('P1PVTC').AsFloat         :=mpvtc;
DM4.Qr_IncPed01.ParambyName('P1PVCOM').AsFloat        :=mpvcom;
DM4.Qr_IncPed01.ParambyName('P1PVCOM02').AsFloat      :=mpvcom02;
DM4.Qr_IncPed01.ParambyName('P1PVCOM03').AsFloat      :=mpvcom03;
DM4.Qr_IncPed01.ParambyName('P1PVCOM04').AsFloat      :=mpvcom04;
DM4.Qr_IncPed01.ParambyName('P1PVACTD').AsFloat       :=mpvactd;
DM4.Qr_IncPed01.ParambyName('P1PVACT00').AsFloat      :=mpvact00;
DM4.Qr_IncPed01.ParambyName('P1PVACT01').AsFloat      :=mpvact01;
DM4.Qr_IncPed01.ParambyName('P1PVACT99').AsFloat      :=mpvact99;
DM4.Qr_IncPed01.ParambyName('P1PVTDC').AsFloat        :=mpvtdc;
DM4.Qr_IncPed01.ParambyName('P1PVDES').AsFloat        :=mpvdes;
DM4.Qr_IncPed01.ParambyName('P1PVTPD1').AsFloat       :=mpvtpd1;
DM4.Qr_IncPed01.ParambyName('P1PVDES1').AsFloat       :=mpvdes1;
DM4.Qr_IncPed01.ParambyName('P1PVTPD2').AsFloat       :=mpvtpd2;
DM4.Qr_IncPed01.ParambyName('P1PVDES2').AsFloat       :=mpvdes2;
DM4.Qr_IncPed01.ParambyName('P1PVTPD3').AsFloat       :=mpvtpd3;
DM4.Qr_IncPed01.ParambyName('P1PVDES3').AsFloat       :=mpvdes3;
DM4.Qr_IncPed01.ParambyName('P1PVTPDESF').AsFloat     :=mpvtpdesf;
DM4.Qr_IncPed01.ParambyName('P1PVDESCF').AsFloat      :=mpvdescf;
DM4.Qr_IncPed01.ParambyName('P1PVDIASDESCF').AsFloat  :=mpvdiasdescf;
DM4.Qr_IncPed01.ParambyName('P1PVDDESCF').AsFloat     :=mpvddescf;
DM4.Qr_IncPed01.ParambyName('P1TPP').AsFloat          :=mtpp;
DM4.Qr_IncPed01.ParambyName('P1SITAC').AsFloat        :=0;
DM4.Qr_IncPed01.ParambyName('P1VLRACRE').AsFloat      :=mvlracre;
DM4.Qr_IncPed01.ParambyName('P1PEDORI1').AsString     :=Frm_Ped_AutoP.PEDORI1.Text;
DM4.Qr_IncPed01.ParambyName('P1PEDORI2').AsString     :=Frm_Ped_AutoP.PEDORI2.Text;
DM4.Qr_IncPed01.ParambyName('P1MOTIVO').AsString      :=' ';
DM4.Qr_IncPed01.ParambyName('P1NUMVIS').AsString      :=Frm_Ped_AutoP.NUMVIS.Text;
if Trim(Frm_Ped_AutoP.DATVIS.Text)<>'/  /' then
   DM4.Qr_IncPed01.ParambyName('P1DATVIS').AsDateTime :=StrtoDate(Frm_Ped_AutoP.DATVIS.Text)
else
   DM4.Qr_IncPed01.ParambyName('P1DATVIS').AsDateTime :=pdatanula;
if moper_ped=1 then
   DM4.Qr_IncPed01.ParambyName('P1DATDOC').AsDateTime    :=DM4.Qr_Ped01P1DATDOC.Value
else
   DM4.Qr_IncPed01.ParambyName('P1DATDOC').AsDateTime    :=pdatanula;
DM4.Qr_IncPed01.ParambyName('P1EMIDOC').AsFloat       := iif(moper_ped=0,0,DM4.Qr_Ped01P1EMIDOC.Value);
DM4.Qr_IncPed01.ParambyName('P1ACRECONV').AsFloat     := macrecv;
DM4.Qr_IncPed01.ParambyName('P1ACREGER').AsFloat      := macreger;
DM4.Qr_IncPed01.ParambyName('P1PACRECONV').AsFloat    := mpacreconv;
DM4.Qr_IncPed01.ParambyName('P1PACREGER').AsFloat     := mpacreger;
DM4.Qr_IncPed01.ParambyName('P1CODDEP').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1NAUT').AsString        := Frm_Ped_AutoP.NAUT.Text;
DM4.Qr_IncPed01.ParambyName('P1MINUTA').AsFloat       := fsonumero(Frm_Ped_AutoP.MINUTA.Text);
DM4.Qr_IncPed01.ParambyName('P1SITCPR').AsFloat       := iif(moper_ped=0,0,DM4.Qr_Ped01P1SITCPR.Value);
DM4.Qr_IncPed01.ParambyName('P1LOTCV02').AsFloat      := iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV02.Value);
DM4.Qr_IncPed01.ParambyName('P1LOTCV03').AsFloat      := iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV03.Value);
DM4.Qr_IncPed01.ParambyName('P1LOTCV04').AsFloat      := iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV04.Value);
DM4.Qr_IncPed01.ParambyName('P1SEMCOMP').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1CFO1').AsString        := mcfop1;
DM4.Qr_IncPed01.ParambyName('P1CFO2').AsString        := mcfop2;
DM4.Qr_IncPed01.ParambyName('P1CFOSER').AsString      := mcfopser;
DM4.Qr_IncPed01.ParambyName('P1BLQPRM').AsFloat       := iif(Frm_Ped_AutoP.CB_BLQPRM.Checked,0,1);
DM4.Qr_IncPed01.ParambyName('P1VALSEG').AsFloat       := mvalseg;
DM4.Qr_IncPed01.ParambyName('P1PDESCLIB').AsFloat     := mlib_mPDescLib;
if mlib_mPDescLib_Usr=0 then
   mlib_mPDescLib_Usr:=codusr;
DM4.Qr_IncPed01.ParambyName('P1PDESCL_USR').AsFloat   := mlib_mPDescLib_Usr;
DM4.Qr_IncPed01.ParambyName('P1PROCESSO').AsString    := ' ';
DM4.Qr_IncPed01.ParambyName('P1CUPACRE').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1CUPDES').AsFloat       := 0;
DM4.Qr_IncPed01.ParambyName('P1LEMAT').AsFloat        := iif(moper_ped=0,0,DM4.Qr_Ped01P1LEMAT.Value);
DM4.Qr_IncPed01.ParambyName('P1ALIQDEB').AsFloat      := maliqdeb;
DM4.Qr_IncPed01.ParambyName('P1TOTCGRU').AsFloat      := mtotcgru;
DM4.Qr_IncPed01.ParambyName('P1TOTSGRU').AsFloat      := mtotsgru;
if trim(Frm_Ped_AutoP.DATACHEG.Text)<>'/  /' then
   begin
   if Trim(Frm_Ped_AutoP.HORACHEG.Text)=':' then
      Frm_Ped_AutoP.HORACHEG.Text:=FormatDateTime('hh:nn', time);
   end;

if trim(Frm_Ped_AutoP.HORACHEG.Text)<>':' then
   begin
   if Trim(Frm_Ped_AutoP.DATACHEG.Text)='/  /' then
      Frm_Ped_AutoP.DATACHEG.Text:=FormatDateTime(fdt2, time);
   end;
if trim(Frm_Ped_AutoP.DATACHEG.Text)='/  /' then
   DM4.Qr_IncPed01.ParambyName('P1DTHRCHEG').AsDatetime   := pdatanula
else
   DM4.Qr_IncPed01.ParambyName('P1DTHRCHEG').AsDatetime   := StrToDateTime(Frm_Ped_AutoP.DATACHEG.Text+' '+Frm_Ped_AutoP.HORACHEG.Text+':00');
DM4.Qr_IncPed01.ParambyName('P1CODPRIOR').AsFloat      := 0;
DM4.Qr_IncPed01.ParambyName('P1PROMOCAO').AsString     := ' ';
DM4.Qr_IncPed01.ParambyName('P1CODBLOQ').AsString      := ' ';
DM4.Qr_IncPed01.ParambyName('P1CODUSR_LBLOQ').AsFloat  := 0;


if moper_ped=1 then
   begin
   DM4.Qr_IncPed01.ParambyName('P1DTACERTO').AsDateTime:= DM4.Qr_Ped01P1DTACERTO.Value;
   DM4.Qr_IncPed01.ParambyName('P1LTACERTO').AsFloat   := DM4.Qr_Ped01P1LTACERTO.Value;
   DM4.Qr_IncPed01.ParambyName('P1LOTCASSE').AsFloat   := DM4.Qr_Ped01P1LOTCASSE.Value;
   DM4.Qr_IncPed01.ParambyName('P1QTDMAN').AsFloat     := DM4.Qr_Ped01P1QTDMAN.Value+1;
   end
else
   begin
   DM4.Qr_IncPed01.ParambyName('P1DTACERTO').AsDateTime:= pdatanula;
   DM4.Qr_IncPed01.ParambyName('P1LTACERTO').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1LOTCASSE').AsFloat   := 0;
   DM4.Qr_IncPed01.ParambyName('P1QTDMAN').AsFloat     := 0;
   end;
try
   DM4.Qr_IncPed01.ExecSQL;
   fdm1StartCommit;
   DM4.Qr_IncPed01.Close;
except
   DM4.Qr_AltPed01.Close;
   DM4.Qr_AltPed01.ParambyName('P1CODEMP').AsFloat     := pcodemp;
   DM4.QR_AltPed01.ParambyName('P1LOTSEQ').AsFloat     := ped_lotseq;
   DM4.QR_AltPed01.ParambyName('P1CHAVE').AsFloat      := mchave;
   DM4.QR_AltPed01.ParambyName('P1ORDEM').AsFloat      := mordem;
   DM4.QR_AltPed01.ParambyName('P1CODCLI').AsFloat     := ValFloat(Frm_Ped_AutoP.CODCLI.Text);
   DM4.QR_AltPed01.ParambyName('P1CODVEN').AsFloat     := ValFloat(Frm_Ped_AutoP.CODVEN.Text);
   DM4.QR_AltPed01.ParambyName('P1CODV02').AsFloat     := ValFloat(Frm_Ped_AutoP.CODVEN2.Text);
   DM4.QR_AltPed01.ParambyName('P1CODV03').AsFloat     := ValFloat(Frm_Ped_AutoP.CODVEN3.Text);
   DM4.QR_AltPed01.ParambyName('P1CODV04').AsFloat     := 0;
   DM4.QR_AltPed01.ParambyName('P1CODASSE').AsFloat    := ValFloat(Frm_Ped_AutoP.CODASSE.Text);
   DM4.QR_AltPed01.ParambyName('P1DATAP').AsDatetime   := StrtoDate(Frm_Ped_AutoP.DATAP.Text);
   if Trim(Frm_Ped_AutoP.DATANF.Text)<>'/  /'  then
      DM4.QR_AltPed01.ParambyName('P1DATANF').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATANF.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DATANF').AsDateTime:=pdatanula;
   DM4.QR_AltPed01.ParambyName('P1NUMNF').AsFloat      := ValFloat(Frm_Ped_AutoP.NUMNF.Text);
   DM4.QR_AltPed01.ParambyName('P1SERIE').AsString     := Frm_Ped_AutoP.SERIENF.Text;
   DM4.QR_AltPed01.ParambyName('P1SUBSER').AsString    := Frm_Ped_AutoP.SUBSER.Text;
   DM4.QR_AltPed01.ParambyName('P1MODELO').AsString    := Frm_Ped_AutoP.MODELO.Text;
//   if submod_ant<>0 then
   if submod_ant=10000 then
      DM4.QR_AltPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',submod_ant))
   else
      begin
      if ValFloat(Frm_Ped_AutoP.SUBMOD.Text)<>0 then
         begin
         if codemp>100 then
            begin
            if pcodemp>100 then
               DM4.QR_AltPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
            else
               DM4.QR_AltPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',100-fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
            end
         else
            begin
            if pcodemp>100 then
               DM4.QR_AltPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',100-fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
            else
               DM4.QR_AltPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',fsonumero(Frm_Ped_AutoP.SUBMOD.Text)))
            end;
         end
      else
         DM4.QR_AltPed01.ParambyName('P1SUBMOD').AsString    := NumPal_Sis(FormatFloat('000',fsonumero(Frm_Ped_AutoP.SUBMOD.Text)));
      end;
   DM4.QR_AltPed01.ParambyName('P1FORMACE').AsFloat    := mformace;
   DM4.QR_AltPed01.ParambyName('P1OBS1').AsString      := Frm_Ped_AutoP.OBS1.Text;
   DM4.QR_AltPed01.ParambyName('P1OBS2').AsString      := Frm_Ped_AutoP.OBS2.Text;
   DM4.QR_AltPed01.ParambyName('P1OBS3').AsString      := Frm_Ped_AutoP.OBS3.Text;
   DM4.QR_AltPed01.ParambyName('P1STATUS').AsFloat     := mStatus;
   DM4.QR_AltPed01.ParambyName('P1TIPO').AsFloat       := mtipop;
   DM4.Qr_AltPed01.ParambyName('P1PEDORI').AsFloat     := iif(Frm_Ped_AutoP.CB_PEDORI.Checked,1,0);
   DM4.QR_AltPed01.ParambyName('P1SITPED').AsFloat     := 0;
   DM4.QR_AltPed01.ParambyName('P1TOTALB').AsFloat     := mtotb;
   DM4.QR_AltPed01.ParambyName('P1TOTALL').AsFloat     := mtotl;
   DM4.QR_AltPed01.ParambyName('P1CODUSR').AsFloat     := iif(moper_ped=0,codusr,DM4.Qr_Ped01P1CODUSR.Value);
   DM4.QR_AltPed01.ParambyName('P1HORADIG').AsString   := Frm_Ped_AutoP.HORDIG.Text;
   if Trim(Frm_Ped_AutoP.DTMOD.Text)<>'/  /' then
      DM4.QR_AltPed01.ParambyName('P1DTMOD').AsDateTime   := StrToDate(Frm_Ped_AutoP.DTMOD.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DTMOD').AsDateTime   := pdatanula;
   DM4.QR_AltPed01.ParambyName('P1HRMOD').AsString     := Frm_Ped_AutoP.HRMOD.Text;
   DM4.QR_AltPed01.ParambyName('P1USRMOD').AsFloat     := codusr;
   DM4.QR_AltPed01.ParambyName('P1CONF').AsString      :=IIF(Frm_Ped_AutoP.CB_CONF.Checked,'S','N');
   DM4.QR_AltPed01.ParambyName('P1CODCON').AsFloat     := ValInt(Frm_Ped_AutoP.CODCON.Text);
   if Trim(Frm_Ped_AutoP.DATCON.Text)<>'/  /'  then
      DM4.QR_AltPed01.ParambyName('P1DATCON').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATCON.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DATCON').AsDateTime:=pdatanula;
   DM4.QR_AltPed01.ParambyName('P1HORCON').AsString    := Frm_Ped_AutoP.HORCON.Text;
   DM4.QR_AltPed01.ParambyName('P1TIPENT').AsFloat     := Frm_Ped_AutoP.RG_TIPENT.ItemIndex;
   if Trim(Frm_Ped_AutoP.PREVENT.Text)<>'/  /'  then
      DM4.QR_AltPed01.ParambyName('P1PREVENT').AsDateTime:=StrToDate(Frm_Ped_AutoP.PREVENT.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1PREVENT').AsDateTime:= pdatanula;
   DM4.QR_AltPed01.ParambyName('P1HPREVENT').AsString    := Frm_Ped_AutoP.HPREVENT.Text;
   DM4.QR_AltPed01.ParambyName('P1CODENT').AsFloat       := Valint(Frm_Ped_AutoP.CODENT.Text);
   DM4.QR_AltPed01.ParambyName('P1PRAZO').AsFloat        := mprazo;
   if Trim(Frm_Ped_AutoP.DATENT.Text)<>'/  /'  then
      DM4.QR_AltPed01.ParambyName('P1DATENT').AsDateTime := StrToDate(Frm_Ped_AutoP.DATENT.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DATENT').AsDateTime := pdatanula;
   DM4.QR_AltPed01.ParambyName('P1HORENT').AsString      := Frm_Ped_AutoP.HORENT.Text;
   DM4.QR_AltPed01.ParambyName('P1TABPV').AsString       := Frm_Ped_AutoP.CB_TABPV.Text;
   DM4.QR_AltPed01.ParambyName('P1CODPV').AsFloat        := ValInt(Frm_Ped_AutoP.CODPV.Text);
   DM4.QR_AltPed01.ParambyName('P1CUPOM').AsFloat        := mcupom;
   DM4.Qr_AltPed01.ParambyName('P1CANHOTO').AsFloat      := iif(Frm_Ped_AutoP.CB_CANHOTO.Checked,1,0);
   DM4.QR_AltPed01.ParambyName('P1BASEN').AsFloat        := mbasen;
   DM4.QR_AltPed01.ParambyName('P1ICMSN').AsFloat        := micmsn;
   DM4.QR_AltPed01.ParambyName('P1REPAS').AsFloat        := mrepas;
   DM4.QR_AltPed01.ParambyName('P1BASER').AsFloat        := mbaser;
   DM4.QR_AltPed01.ParambyName('P1ICMSR').AsFloat        := micmsr;
   DM4.QR_AltPed01.ParambyName('P1BASENP').AsFloat       := mbasenp;
   DM4.QR_AltPed01.ParambyName('P1BASENN').AsFloat       := mbasenn;
   DM4.QR_AltPed01.ParambyName('P1BASENI').AsFloat       := mbaseni;
   DM4.QR_AltPed01.ParambyName('P1ICMSNP').AsFloat       := micmsnp;
   DM4.QR_AltPed01.ParambyName('P1ICMSNN').AsFloat       := micmsnn;
   DM4.QR_AltPed01.ParambyName('P1ICMSNI').AsFloat       := micmsni;
   DM4.QR_AltPed01.ParambyName('P1BASERP').AsFloat       := mbaserp;
   DM4.QR_AltPed01.ParambyName('P1BASERN').AsFloat       := mbasern;
   DM4.QR_AltPed01.ParambyName('P1BASERI').AsFloat       := mbaseri;
   DM4.QR_AltPed01.ParambyName('P1ICMSRP').AsFloat       := micmsrp;
   DM4.QR_AltPed01.ParambyName('P1ICMSRN').AsFloat       := micmsrn;
   DM4.QR_AltPed01.ParambyName('P1ICMSRI').AsFloat       := micmsri;
   DM4.QR_AltPed01.ParambyName('P1BASENRI').AsFloat      := mbasenri;
   DM4.QR_AltPed01.ParambyName('P1ICMSNRI').AsFloat      := micmsnri;
   DM4.QR_AltPed01.ParambyName('P1BASENRP').AsFloat      := mbasenrp;
   DM4.QR_AltPed01.ParambyName('P1ICMSNRP').AsFloat      := micmsnrp;
   DM4.QR_AltPed01.ParambyName('P1BASENRN').AsFloat      := mbasenrn;
   DM4.QR_AltPed01.ParambyName('P1ICMSNRN').AsFloat      := micmsnrn;
   DM4.QR_AltPed01.ParambyName('P1IPIINA').AsFloat       := mipiina;
   DM4.QR_AltPed01.ParambyName('P1IPIPOS').AsFloat       := mipipos;
   DM4.QR_AltPed01.ParambyName('P1IPINEG').AsFloat       := mipineg;
   DM4.QR_AltPed01.ParambyName('P1TOTTRI').AsFloat       := mtottri;
   DM4.QR_AltPed01.ParambyName('P1TOTRET').AsFloat       := mtotret;
   DM4.QR_AltPed01.ParambyName('P1TOTISE').AsFloat       := mtotise;
   DM4.QR_AltPed01.ParambyName('P1TOTOUT').AsFloat       := mtotout;
   DM4.QR_AltPed01.ParambyName('P1TOTPOS').AsFloat       := mtotpos;
   DM4.QR_AltPed01.ParambyName('P1TOTNEG').AsFloat       := mtotneg;
   DM4.QR_AltPed01.ParambyName('P1TOTINA').AsFloat       := mtotina;
   DM4.QR_AltPed01.ParambyName('P1PISCOFN').AsFloat      := mpiscofn;
   DM4.QR_AltPed01.ParambyName('P1PISCOFR').AsFloat      := mpiscofr;
   DM4.QR_AltPed01.ParambyName('P1TOTDES').AsFloat       := mtotdes;
   DM4.QR_AltPed01.ParambyName('P1TOTDI01').AsFloat      := mtotdi01;
   DM4.QR_AltPed01.ParambyName('P1TOTDI02').AsFloat      := mtotdi02;
   DM4.QR_AltPed01.ParambyName('P1TOTDI03').AsFloat      := mtotdi03;
   DM4.QR_AltPed01.ParambyName('P1VALDES01').AsFloat     := mvaldes01;
   DM4.QR_AltPed01.ParambyName('P1VALDES02').AsFloat     := mvaldes02;
   DM4.QR_AltPed01.ParambyName('P1TOTDIVL').AsFloat      := mtotdivl;
   DM4.QR_AltPed01.ParambyName('P1TOTUCPR').AsFloat      := mtotucpr;
   DM4.QR_AltPed01.ParambyName('P1DESC01').AsFloat       := ValFloat(Frm_Ped_AutoP.DESC01.Text);
   DM4.QR_AltPed01.ParambyName('P1DESC02').AsFloat       := ValFloat(Frm_Ped_AutoP.DESC02.Text);
   DM4.QR_AltPed01.ParambyName('P1VLRDES').AsFloat       := mdesped;
   DM4.QR_AltPed01.ParambyName('P1PAVDES').AsFloat       := mpavdes;
   DM4.QR_AltPed01.ParambyName('P1CODTRA').AsFloat       := ValInt(Frm_Ped_AutoP.CODTRA.Text);
   DM4.QR_AltPed01.ParambyName('P1QTDVOL').AsFloat       := ValFloat(Frm_Ped_AutoP.QTDVOL.Text);
   DM4.QR_AltPed01.ParambyName('P1PESOL').AsFloat        := mpesoliquido;
   DM4.QR_AltPed01.ParambyName('P1PESOB').AsFloat        := mpesobruto;
   DM4.QR_AltPed01.ParambyName('P1ESPECIE').AsString     := Frm_Ped_AutoP.ESPECIE.Text;
   DM4.QR_AltPed01.ParambyName('P1FRETEPC').AsFloat      := Frm_Ped_AutoP.RGFRETEPC.ItemIndex+1;
   DM4.QR_AltPed01.ParambyName('P1VALFRE').AsFloat       := mfrete;
   DM4.QR_AltPed01.ParambyName('P1TARBAN').AsFloat       := ValFloat(Frm_Ped_AutoP.TARBAN.Caption);
   DM4.Qr_AltPed01.ParambyName('P1ICMS_BCFRE').AsFloat   := mbcfrete;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_ALFRE').AsFloat   := DM1.Tb_CliCALIQA.Value;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_VLFRE').AsFloat   := micmsfrete;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_BCSEG').AsFloat   := mbcseg;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_ALSEG').AsFloat   := DM1.Tb_CliCALIQA.Value;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_VLSEG').AsFloat   := micmsseg;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_BCOUTD').AsFloat  := mbcoutd;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_ALOUTD').AsFloat  := DM1.Tb_CliCALIQA.Value;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_VLOUTD').AsFloat  := micmsoutd;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_BCIPI').AsFloat   := mbcipi;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_ALIPI').AsFloat   := DM1.Tb_CliCALIQA.Value;
   DM4.Qr_AltPed01.ParambyName('P1ICMS_VLIPI').AsFloat   := micmsipi;
   DM4.QR_AltPed01.ParambyName('P1UFPV').AsString        := Frm_Ped_AutoP.UFPV.Text;
   DM4.QR_AltPed01.ParambyName('P1PLACAV').AsString      := Frm_Ped_AutoP.PLACAV.Text;
   DM4.QR_AltPed01.ParambyName('P1BANCO').AsFloat        := ValInt(Frm_Ped_AutoP.CODBCO.Text);
   DM4.QR_AltPed01.ParambyName('P1CODSER').AsFloat       := 0;
   DM4.QR_AltPed01.ParambyName('P1CODLDR').AsFloat       := 0;
   DM4.QR_AltPed01.ParambyName('P1PCOMIS').AsFloat       := ValFloat(Frm_Ped_AutoP.PCOMIS.Text);
   DM4.QR_AltPed01.ParambyName('P1CODCV').AsFloat        := ValInt(Frm_Ped_AutoP.CODCV.Text);
   DM4.QR_AltPed01.ParambyName('P1LOTEDM').AsFloat       := ValInt(Frm_Ped_AutoP.LOTEDM.Text);
   DM4.QR_AltPed01.ParambyName('P1COMIS').AsFloat        := mcomis;
   DM4.QR_AltPed01.ParambyName('P1COMV02').AsFloat       := mtotcom02;
   DM4.QR_AltPed01.ParambyName('P1COMV03').AsFloat       := mtotcom03;
   DM4.QR_AltPed01.ParambyName('P1COMV04').AsFloat       := mtotcom04;
   DM4.QR_AltPed01.ParambyName('P1COMIST').AsFloat       := mcomist;
   DM4.QR_AltPed01.ParambyName('P1COMISS').AsFloat       := mcomiss;
   DM4.Qr_AltPed01.ParambyName('P1COMASSE').AsFloat      := mcomasse;
   DM4.QR_AltPed01.ParambyName('P1ORIGEM').AsFloat       :=  Frm_Ped_AutoP.CB_ORIGEM.ItemIndex;
   DM4.QR_AltPed01.ParambyName('P1NPEDORI').AsFloat      := ValInt(Frm_Ped_AutoP.NPEDORI.Text);
   DM4.QR_AltPed01.ParambyName('P1CODTLV').AsFloat       := ValInt(Frm_Ped_AutoP.CODTLV.Text);
   DM4.QR_AltPed01.ParambyName('P1BCISSQN').AsFloat      := mbcissqn;
   DM4.QR_AltPed01.ParambyName('P1VISSQN').AsFloat       := mvissqn;
   DM4.QR_AltPed01.ParambyName('P1ETIVOL').AsFloat       := iif(Frm_Ped_AutoP.CB_ETIVOL.Checked,1,0);
   DM4.QR_AltPed01.ParambyName('P1CODSEP').AsFloat       := ValInt(Frm_Ped_AutoP.CODSEP.Text);
   if Trim(Frm_Ped_AutoP.DATSEP.Text)<>'/  /'  then
      DM4.QR_AltPed01.ParambyName('P1DATASEP').AsDateTime   :=StrtoDate(Frm_Ped_AutoP.DATSEP.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DATASEP').AsDateTime   :=pdatanula;
   DM4.QR_AltPed01.ParambyName('P1HORSEP').AsString      := Frm_Ped_AutoP.HORSEP.Text;
   DM4.QR_AltPed01.ParambyName('P1CODEMB').AsFloat       := ValInt(Frm_Ped_AutoP.CODEMB.Text);
   if Trim(Frm_Ped_AutoP.DATEMB.Text)<>'/  /'  then
      DM4.QR_AltPed01.ParambyName('P1DATAEMB').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATEMB.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DATAEMB').AsDateTime:=pdatanula;
   DM4.QR_AltPed01.ParambyName('P1HOREMB').AsString      := Frm_Ped_AutoP.HOREMB.Text;
   DM4.QR_AltPed01.ParambyName('P1NUMCF').AsFloat        := ValInt(Frm_Ped_AutoP.NUMCF.Text);
   DM4.QR_AltPed01.ParambyName('P1CODECF').AsFloat       := iif(moper_ped=0,0,DM4.Qr_Ped01P1CODECF.Value);
   if Trim(Frm_Ped_AutoP.DATACF.Text)<>'/  /'  then
      DM4.QR_AltPed01.ParambyName('P1DATACF').AsDateTime:=StrtoDate(Frm_Ped_AutoP.DATANF.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DATACF').AsDateTime:=pdatanula;
   DM4.QR_AltPed01.ParambyName('P1TPPCO').AsFloat        :=Frm_Ped_AutoP.RG_TPPCO.ItemIndex;
   DM4.QR_AltPed01.ParambyName('P1SEMCOM').AsFloat       :=msemcom;
   DM4.QR_AltPed01.ParambyName('P1DESCFIN').AsFloat      :=mdescfin;
   DM4.QR_AltPed01.ParambyName('P1LOTCASSE').AsFloat     :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCASSE.Value);
   DM4.QR_AltPed01.ParambyName('P1LOTCV').AsFloat        :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV.Value);
   DM4.QR_AltPed01.ParambyName('P1LOTCS').AsFloat        :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCS.Value);
   DM4.QR_AltPed01.ParambyName('P1LOTCT').AsFloat        :=iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCT.Value);
   DM4.QR_AltPed01.ParambyName('P1PVTC').AsFloat         :=mpvtc;
   DM4.QR_AltPed01.ParambyName('P1PVCOM').AsFloat        :=mpvcom;
   DM4.QR_AltPed01.ParambyName('P1PVCOM02').AsFloat      :=mpvcom02;
   DM4.QR_AltPed01.ParambyName('P1PVCOM03').AsFloat      :=mpvcom03;
   DM4.QR_AltPed01.ParambyName('P1PVCOM04').AsFloat      :=mpvcom04;
   DM4.QR_AltPed01.ParambyName('P1PVACTD').AsFloat       :=mpvactd;
   DM4.QR_AltPed01.ParambyName('P1PVACT00').AsFloat      :=mpvact00;
   DM4.QR_AltPed01.ParambyName('P1PVACT01').AsFloat      :=mpvact01;
   DM4.QR_AltPed01.ParambyName('P1PVACT99').AsFloat      :=mpvact99;
   DM4.QR_AltPed01.ParambyName('P1PVTDC').AsFloat        :=mpvtdc;
   DM4.QR_AltPed01.ParambyName('P1PVDES').AsFloat        :=mpvdes;
   DM4.QR_AltPed01.ParambyName('P1PVTPD1').AsFloat       :=mpvtpd1;
   DM4.QR_AltPed01.ParambyName('P1PVDES1').AsFloat       :=mpvdes1;
   DM4.QR_AltPed01.ParambyName('P1PVTPD2').AsFloat       :=mpvtpd2;
   DM4.QR_AltPed01.ParambyName('P1PVDES2').AsFloat       :=mpvdes2;
   DM4.QR_AltPed01.ParambyName('P1PVTPD3').AsFloat       :=mpvtpd3;
   DM4.QR_AltPed01.ParambyName('P1PVDES3').AsFloat       :=mpvdes3;
   DM4.QR_AltPed01.ParambyName('P1PVTPDESF').AsFloat     :=mpvtpdesf;
   DM4.QR_AltPed01.ParambyName('P1PVDESCF').AsFloat      :=mpvdescf;
   DM4.QR_AltPed01.ParambyName('P1PVDIASDESCF').AsFloat  :=mpvdiasdescf;
   DM4.QR_AltPed01.ParambyName('P1PVDDESCF').AsFloat     :=mpvddescf;
   DM4.QR_AltPed01.ParambyName('P1TPP').AsFloat          :=mtpp;
   DM4.QR_AltPed01.ParambyName('P1SITAC').AsFloat        :=0;
   DM4.QR_AltPed01.ParambyName('P1VLRACRE').AsFloat      :=mvlracre;
   DM4.QR_AltPed01.ParambyName('P1PEDORI1').AsString     :=Frm_Ped_AutoP.PEDORI1.Text;
   DM4.QR_AltPed01.ParambyName('P1PEDORI2').AsString     :=Frm_Ped_AutoP.PEDORI2.Text;
   DM4.QR_AltPed01.ParambyName('P1MOTIVO').AsString      :=' ';
   DM4.QR_AltPed01.ParambyName('P1NUMVIS').AsString      :=Frm_Ped_AutoP.NUMVIS.Text;
   if Trim(Frm_Ped_AutoP.DATVIS.Text)<>'/  /' then
      DM4.QR_AltPed01.ParambyName('P1DATVIS').AsDateTime :=StrtoDate(Frm_Ped_AutoP.DATVIS.Text)
   else
      DM4.QR_AltPed01.ParambyName('P1DATVIS').AsDateTime :=pdatanula;
   if moper_ped=1 then
      DM4.QR_AltPed01.ParambyName('P1DATDOC').AsDateTime    :=DM4.Qr_Ped01P1DATDOC.Value
   else
      DM4.QR_AltPed01.ParambyName('P1DATDOC').AsDateTime    :=pdatanula;
   DM4.QR_AltPed01.ParambyName('P1EMIDOC').AsFloat       := iif(moper_ped=0,0,DM4.Qr_Ped01P1EMIDOC.Value);
   DM4.QR_AltPed01.ParambyName('P1ACRECONV').AsFloat     := macrecv;
   DM4.QR_AltPed01.ParambyName('P1ACREGER').AsFloat      := macreger;
   DM4.QR_AltPed01.ParambyName('P1PACRECONV').AsFloat    := mpacreconv;
   DM4.QR_AltPed01.ParambyName('P1PACREGER').AsFloat     := mpacreger;
   DM4.QR_AltPed01.ParambyName('P1CODDEP').AsFloat       := 0;
   DM4.QR_AltPed01.ParambyName('P1NAUT').AsString        := Frm_Ped_AutoP.NAUT.Text;
   DM4.QR_AltPed01.ParambyName('P1MINUTA').AsFloat       := fsonumero(Frm_Ped_AutoP.MINUTA.Text);
   DM4.QR_AltPed01.ParambyName('P1SITCPR').AsFloat       := iif(moper_ped=0,0,DM4.Qr_Ped01P1SITCPR.Value);
   DM4.QR_AltPed01.ParambyName('P1LOTCV02').AsFloat      := iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV02.Value);
   DM4.QR_AltPed01.ParambyName('P1LOTCV03').AsFloat      := iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV03.Value);
   DM4.QR_AltPed01.ParambyName('P1LOTCV04').AsFloat      := iif(moper_ped=0,0,DM4.Qr_Ped01P1LOTCV04.Value);
   DM4.QR_AltPed01.ParambyName('P1SEMCOMP').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1CFO1').AsString        := mcfop1;
   DM4.Qr_AltPed01.ParambyName('P1CFO2').AsString        := mcfop2;
   DM4.Qr_AltPed01.ParambyName('P1CFOSER').AsString      := mcfopser;
   DM4.Qr_AltPed01.ParambyName('P1BLQPRM').AsFloat       :=  iif(Frm_Ped_AutoP.CB_BLQPRM.Checked,0,1);
   DM4.Qr_AltPed01.ParambyName('P1VALSEG').AsFloat       := mvalseg;
   DM4.Qr_AltPed01.ParambyName('P1PDESCLIB').AsFloat     := mlib_mPDescLib;
   if mlib_mPDescLib_Usr=0 then
      mlib_mPDescLib_Usr:=codusr;
   DM4.Qr_AltPed01.ParambyName('P1PDESCL_USR').AsFloat   := mlib_mPDescLib_Usr;
   DM4.Qr_AltPed01.ParambyName('P1PROCESSO').AsString    := ' ';
   DM4.Qr_AltPed01.ParambyName('P1CUPACRE').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1CUPDES').AsFloat       := 0;
   DM4.Qr_AltPed01.ParambyName('P1LEMAT').AsFloat        := iif(moper_ped=0,0,DM4.Qr_Ped01P1LEMAT.Value);
   DM4.Qr_AltPed01.ParambyName('P1ALIQDEB').AsFloat      := maliqdeb;
   DM4.Qr_AltPed01.ParambyName('P1TOTCGRU').AsFloat      := mtotcgru;
   DM4.Qr_AltPed01.ParambyName('P1TOTSGRU').AsFloat      := mtotsgru;
   DM4.Qr_AltPed01.ParambyName('P1CODBLOQ').AsString     := ' ';
   DM4.Qr_AltPed01.ParambyName('P1CODUSR_LBLOQ').AsFloat := 0;
   if trim(Frm_Ped_AutoP.DATACHEG.Text)<>'/  /' then
      begin
      if Trim(Frm_Ped_AutoP.HORACHEG.Text)=':' then
         Frm_Ped_AutoP.HORACHEG.Text:=FormatDateTime('hh:nn', time);
      end;
   if trim(Frm_Ped_AutoP.HORACHEG.Text)<>':' then
      begin
      if Trim(Frm_Ped_AutoP.DATACHEG.Text)='/  /' then
         Frm_Ped_AutoP.DATACHEG.Text:=FormatDateTime(fdt2, time);
      end;
   if trim(Frm_Ped_AutoP.DATACHEG.Text)='/  /' then
      DM4.Qr_AltPed01.ParambyName('P1DTHRCHEG').AsDatetime   := pdatanula
   else
      DM4.Qr_AltPed01.ParambyName('P1DTHRCHEG').AsDatetime   := StrToDateTime(Frm_Ped_AutoP.DATACHEG.Text+' '+Frm_Ped_AutoP.HORACHEG.Text+':00');
   DM4.Qr_AltPed01.ParambyName('P1CODPRIOR').AsFloat      := 0;
   DM4.Qr_AltPed01.ParambyName('P1PROMOCAO').AsString     := ' ';
   if moper_ped=1 then
      begin
      DM4.Qr_AltPed01.ParambyName('P1DTACERTO').AsDateTime:= DM4.Qr_Ped01P1DTACERTO.Value;
      DM4.Qr_AltPed01.ParambyName('P1LTACERTO').AsFloat   := DM4.Qr_Ped01P1LTACERTO.Value;
      DM4.Qr_AltPed01.ParambyName('P1QTDMAN').AsFloat     := DM4.Qr_Ped01P1QTDMAN.Value+1;
      end
   else
      begin
      DM4.Qr_AltPed01.ParambyName('P1DTACERTO').AsDateTime:= pdatanula;
      DM4.Qr_AltPed01.ParambyName('P1LTACERTO').AsFloat   := 0;
      DM4.Qr_AltPed01.ParambyName('P1QTDMAN').AsFloat     := 0;
      end;
   try
      DM4.Qr_AltPed01.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(10,5197,'Frm_Ped','CADP01');
      end;
   DM4.Qr_AltPed01.Close;
   end;



if mordem=01 then
   begin
   if Frm_Ped_AutoP.CB_TABPV.Text='PO' then
      begin
      Frm_PVO.Tb_Po99.First;
      if Frm_PVO.Tb_Po99.Eof then
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.add('Insert into CADPO99 ('
                           +' POCODEMP, '
                           +' POLOTSEQ, '
                           +' POCHAVE, '
                           +' POPRAZO) Values ('
                           +IntTostr(pcodemp)+','
                           +IntToStr(ped_lotseq)+','
                           +IntToStr(mchave)+','
                           +'0)');
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,5219,'Frm_Ped','CADPO99');
            end;
         DM1.Query1.Close;
         end
      else
         begin
         While not Frm_PVO.Tb_Po99.Eof do
            begin
            if Frm_PVo.Tb_Po99POPRAZO.IsNull then
               begin
               Frm_Pvo.Tb_Po99.Next;
               Continue;
               end;
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.add('Insert into CADPO99 ('
                              +' POCODEMP, '
                              +' POLOTSEQ, '
                              +' POCHAVE, '
                              +' POPRAZO) Values ('
                              +IntTostr(pcodemp)+','
                              +IntToStr(ped_lotseq)+','
                              +IntToStr(mchave)+','
                              +Frm_PVO.Tb_Po99POPRAZO.AsString+')');
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,5243,'Frm_Ped','CADPO99');
               end;
            DM1.Query1.Close;
            Frm_Pvo.Tb_Po99.Next;
            end;
         end;
      end;
   end;


fgvencto(iif(Frm_Ped_AutoP.CB_TABPV.Text='PP',1,0),pcodemp,ped_lotseq,mchave,mordem,mprazo,
         StrtoInt(Trim('0'+Frm_Ped_AutoP.CODPV.Text)),mpvddescf,mpvdiasdescf,mtotl,mcomis,mtotcom02,
         mtotcom03,
         mtotcom04,
         mcomiss,mcomist,msemcom,micmsr,mcomasse,iif(mordem=1,ValFloat(Frm_Ped_AutoP.VALFRE.Text),0),
         iif(mordem=1,ValFloat(Frm_Ped_AutoP.VALSEG.Text),0),
         mdescfin,mtotdi01,mtotdi02,mtotdi03,mtotdivl,mvaldes01,mvaldes02,mdesped,
         valfloat(Frm_Ped_AutoP.TARBAN.Caption),
         mipiina+mipipos+mipineg,
         mtotcgru,mtotsgru,
         StrToDate(Frm_Ped_AutoP.DATAP.Text),Frm_Ped_AutoP.CB_TABPV.Text);



if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18) then
   begin
   DM1.Query1.Params.CreateParam(ftstring,'DATAP',ptinput);
   for y:=1 to Frm_Ped_AutoP.STG_DEV.RowCount do
      begin
      if Trim(Frm_Ped_AutoP.STG_DEV.Cells[0,y])='' then
         Continue;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Insert into CADP01D ('
                        +'P1DCODEMP,'
                        +'P1DLOTSEQ,'
                        +'P1DCHAVE,'
                        +'P1DORDEM,'
                        +'P1DCODEMP_OR,'
                        +'P1DLS_OR,'
                        +'P1DCH_OR,'
                        +'P1DOR_OR,'
                        +'P1DDATAP) values ('
                        +IntToStr(pcodemp)+','
                        +IntToStr(ped_lotseq)+','
                        +IntToStr(mchave)+','
                        +IntToStr(mordem)+','
                        +fdeixanum(Frm_Ped_AutoP.STG_DEV.Cells[0,y])+','
                        +fdeixanum(Frm_Ped_AutoP.STG_DEV.Cells[1,y])+','
                        +fdeixanum(Frm_Ped_AutoP.STG_DEV.Cells[2,y])+','
                        +mudavp(Frm_Ped_AutoP.STG_DEV.Cells[3,y])+','
                        +':DATAP)');
      DM1.Query1.ParamByName('DATAP').AsString:=FormatDateTime(fdt,StrToDateTime(Frm_Ped_AutoP.STG_DEV.Cells[4,y]));
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,5280,'Frm_Ped','CADP01D');
         end;
      DM1.Query1.Close;
      end;
  end;
mitem:=0;

result:=True;
end;

function fgvencto(ptipo,pcodemp,plotseq,pchave,pordem,pprazo,pcodpv,pddescf,pdiasdescf: Integer;
                  ptotdup, pcomisv, pcomisv02, pcomisv03,pcomisv04,pcomiss,pcomist,psemcom,pcomasse,picmsr,
                  pfrete,pvalseg,pdescf,ptotdi01,ptotdi02,ptotdi03,ptotivlr,pvaldes01,pvaldes02,
                  pvlrdes,ptarban,ptotipi,ptotcgru,ptotsgru: Real; pdatae: tDateTime; ptabpv: String): Boolean;


var
mseq, mqtdd: Integer;
mvalfre, mvaldup,mdif: Real;
mscom, mcomv, mcomv02, mcomv03, mcoms, mcomt,mcoma: Real;
mdifsc,mdifv, mdifv02, mdifv03, mdifs, mdift,mdifca: Real;
mvicm, mdifi, mvfre, mdiff, mvdf, mddf: Real;
mvtb, mdiftb: Real;
mIPI    , mdifIPI     : Real;
mCGru   , mdifCGru    : Real;
mSGru   , mdifSGru    : Real;
mComv04 , mdifComv04  : Real;


mvdi01 , mdifdi01 : Real;
mvdi02 , mdifdi02 : Real;
mvdi03 , mdifdi03 : Real;
mvtdi  , mdiftdi: Real;
mvvd01 , mdifvd01 : Real;
mvvd02 , mdifvd02 : Real;
mvvald , mdifvald : Real;
mvseg  , mdifseg : Real;

begin
if  ptipo=1 then
    mqtdd:=1
else
    begin
    mqtdd:=Frm_PVO.Tb_Po99.RecordCount;;
    if mqtdd<1 then
       mqtdd:=1;
    end;
if psemcom>0 then
   begin
   mscom:=psemcom/mqtdd;
   mscom:=arredonda(mscom,DM1.Tb_PargerPCASAS.AsInteger);
   mdifsc:=mscom*mqtdd;
   mdifsc:=psemcom-mdifsc;
   mdifsc:=arredonda(mdifsc,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mscom:=0;
   mdifsc:=0;
   end;
if pdescf>0 then
   begin
   mvdf:=pdescf/mqtdd;
   mvdf:=arredonda(mvdf,DM1.Tb_PargerPCASAS.AsInteger);
   mddf:=mvdf*mqtdd;
   mddf:=pdescf-mddf;
   mddf:=arredonda(mddf,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvdf:=0;
   mddf:=0;
   end;


if pvalseg>0 then
   begin
   mvseg  :=pvalseg/mqtdd;
   mvseg  :=arredonda(mvseg,DM1.Tb_PargerPCASAS.AsInteger);
   mdifseg:=mdifseg*mqtdd;
   mdifseg:=pvalseg-mdifseg;
   mdifseg:=arredonda(mdifseg,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvseg:=0;
   mdifseg:=0;
   end;



if pcomisv>0 then
   begin
   mcomv:=pcomisv/mqtdd;
   mcomv:=arredonda(mcomv,DM1.Tb_PargerPCASAS.AsInteger);
   mdifv:=mcomv*mqtdd;
   mdifv:=pcomisv-mdifv;
   mdifv:=arredonda(mdifv,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mcomv:=0;
   mdifv:=0;
   end;

if pcomisv02>0 then
   begin
   mcomv02:=pcomisv02/mqtdd;
   mcomv02:=arredonda(mcomv02,DM1.Tb_PargerPCASAS.AsInteger);
   mdifv02:=mcomv02*mqtdd;
   mdifv02:=pcomisv02-mdifv02;
   mdifv02:=arredonda(mdifv02,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mcomv02:=0;
   mdifv02:=0;
   end;

if pcomasse>0 then
   begin
   mcoma:=pcomasse/mqtdd;
   mcoma:=arredonda(mcoma,DM1.Tb_PargerPCASAS.AsInteger);
   mdifca:=mcoma*mqtdd;
   mdifca:=pcomasse-mdifca;
   mdifca:=arredonda(mdifca,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mcoma:=0;
   mdifca:=0;
   end;

if pcomisv03>0 then
   begin
   mcomv03:=pcomisv03/mqtdd;
   mcomv03:=arredonda(mcomv03,DM1.Tb_PargerPCASAS.AsInteger);
   mdifv03:=mcomv03*mqtdd;
   mdifv03:=pcomisv03-mdifv03;
   mdifv03:=arredonda(mdifv03,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mcomv03:=0;
   mdifv03:=0;
   end;

if ptotipi>0 then
   begin
   mIPI   :=ptotipi/mqtdd;
   mIPI   :=arredonda(mIPI,DM1.Tb_PargerPCASAS.AsInteger);
   mdifIPI:=mIPI*mqtdd;
   mdifIPI:=ptotipi-mdifIPI;
   mdifIPI:=arredonda(mdifIPI,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mIPI   :=0;
   mdifIPI:=0;
   end;

if ptotCGru>0 then
   begin
   mCGru   :=ptotCGru/mqtdd;
   mCGru   :=arredonda(mCGru,DM1.Tb_PargerPCASAS.AsInteger);
   mdifCGru:=mCGru*mqtdd;
   mdifCGru:=ptotCGru-mdifCGru;
   mdifCGru:=arredonda(mdifCGru,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mCGru   :=0;
   mdifCGru:=0;
   end;

if ptotSGru>0 then
   begin
   mSGru   :=ptotSGru/mqtdd;
   mSGru   :=arredonda(mSGru,DM1.Tb_PargerPCASAS.AsInteger);
   mdifSGru:=mSGru*mqtdd;
   mdifSGru:=ptotSGru-mdifSGru;
   mdifSGru:=arredonda(mdifSGru,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mSGru   :=0;
   mdifSGru:=0;
   end;

if pcomisv04>0 then
   begin
   mcomv04   :=pcomisv04/mqtdd;
   mcomv04   :=arredonda(mcomv04,DM1.Tb_PargerPCASAS.AsInteger);
   mdifcomv04:=mcomv04*mqtdd;
   mdifcomv04:=pcomisv04-mdifcomv04;
   mdifcomv04:=arredonda(mdifcomv04,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mcomv04   :=0;
   mdifcomv04:=0;
   end;

if pcomist>0 then
   begin
   mcomt:=pcomist/mqtdd;
   mcomt:=arredonda(mcomt,DM1.Tb_PargerPCASAS.AsInteger);
   mdift:=mcomt*mqtdd;
   mdift:=pcomist-mdift;
   mdift:=arredonda(mdift,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mcomt:=0;
   mdift:=0;
   end;
if pcomiss>0 then
   begin
   mcoms:=pcomiss/mqtdd;
   mcoms:=arredonda(mcoms,DM1.Tb_PargerPCASAS.AsInteger);
   mdifs:=mcoms*mqtdd;
   mdifs:=pcomiss-mdift;
   mdifs:=arredonda(mdifs,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mcoms:=0;
   mdifs:=0;
   end;
if picmsr>0 then
   begin
   mvicm:=picmsr/mqtdd;
   mvicm:=arredonda(mvicm,DM1.Tb_PargerPCASAS.AsInteger);
   mdifi:=mvicm*mqtdd;
   mdifi:=picmsr-mdifi;
   mdifi:=arredonda(mdifi,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvicm:=0;
   mdifi:=0;
   end;
mvalfre:=pfrete;
if mvalfre>0 then
   begin
   mvfre:=mvalfre/mqtdd;
   mvfre:=arredonda(mvfre,DM1.Tb_PargerPCASAS.AsInteger);
   mdiff:=mvfre*mqtdd;
   mdiff:=mvalfre-mdiff;
   mdiff:=arredonda(mdiff,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvfre:=0;
   mdiff:=0;
   end;

if ptotdi01>0 then
   begin
   mvdi01:=ptotdi01/mqtdd;
   mvdi01:=arredonda(mvdi01,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdi01:=mvdi01*mqtdd;
   mdifdi01:=ptotdi01-mdifdi01;
   mdifdi01:=arredonda(mdifdi01,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvdi01:=0;
   mdifdi01:=0;
   end;

if ptotdi02>0 then
   begin
   mvdi02:=ptotdi02/mqtdd;
   mvdi02:=arredonda(mvdi02,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdi02:=mvdi02*mqtdd;
   mdifdi02:=ptotdi02-mdifdi02;
   mdifdi02:=arredonda(mdifdi02,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvdi02:=0;
   mdifdi02:=0;
   end;

if ptotdi01>0 then
   begin
   mvdi01:=ptotdi01/mqtdd;
   mvdi01:=arredonda(mvdi01,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdi01:=mvdi01*mqtdd;
   mdifdi01:=ptotdi01-mdifdi01;
   mdifdi01:=arredonda(mdifdi01,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvdi01:=0;
   mdifdi01:=0;
   end;

if ptotdi02>0 then
   begin
   mvdi02:=ptotdi02/mqtdd;
   mvdi02:=arredonda(mvdi02,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdi02:=mvdi02*mqtdd;
   mdifdi02:=ptotdi02-mdifdi02;
   mdifdi02:=arredonda(mdifdi02,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvdi02:=0;
   mdifdi02:=0;
   end;

if ptotdi03>0 then
   begin
   mvdi03:=ptotdi03/mqtdd;
   mvdi03:=arredonda(mvdi03,DM1.Tb_PargerPCASAS.AsInteger);
   mdifdi03:=mvdi03*mqtdd;
   mdifdi03:=ptotdi03-mdifdi03;
   mdifdi03:=arredonda(mdifdi03,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvdi03:=0;
   mdifdi03:=0;
   end;

if ptotivlr>0 then
   begin
   mvtdi   :=ptotivlr/mqtdd;
   mvtdi   :=arredonda(mvtdi,DM1.Tb_PargerPCASAS.AsInteger);
   mdiftdi :=mvtdi*mqtdd;
   mdiftdi :=ptotivlr-mdiftdi;
   mdiftdi :=arredonda(mdiftdi,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mvtdi   :=0;
   mdiftdi :=0;
   end;
if pvaldes01>0 then
   begin
   mvvd01  :=pvaldes01/mqtdd;
   mvvd01  :=arredonda(mvvd01,DM1.Tb_PargerPCASAS.AsInteger);
   mdifvd01:=mvvd01*mqtdd;
   mdifvd01:=pvaldes01-mdifvd01;
   mdifvd01:=arredonda(mdifvd01,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdifvd01 :=0;
   mvvd01   :=0;
   end;

if pvaldes02>0 then
   begin
   mvvd02  :=pvaldes02/mqtdd;
   mvvd02  :=arredonda(mvvd02,DM1.Tb_PargerPCASAS.AsInteger);
   mdifvd02:=mvvd02*mqtdd;
   mdifvd02:=pvaldes02-mdifvd02;
   mdifvd02:=arredonda(mdifvd02,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdifvd02 :=0;
   mvvd02   :=0;
   end;


if pvlrdes>0 then
   begin
   mvvald  :=pvlrdes/mqtdd;
   mvvald  :=arredonda(mvvald,DM1.Tb_PargerPCASAS.AsInteger);
   mdifvald:=mvvald*mqtdd;
   mdifvald:=pvlrdes-mdifvald;
   mdifvald:=arredonda(mdifvald,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdifvald :=0;
   mvvald   :=0;
   end;

if ptarban>0 then
   begin
   mvtb    :=ptarban/mqtdd;
   mvtb    :=arredonda(mvtb,DM1.Tb_PargerPCASAS.AsInteger);
   mdiftb  :=mvtb*mqtdd;
   mdiftb  :=mvtb-mdiftb;
   mdiftb  :=arredonda(mdiftb,DM1.Tb_PargerPCASAS.AsInteger);
   end
else
   begin
   mdiftb :=0;
   mvtb   :=0;
   end;



mseq:=0;
mvaldup:=ptotdup/mqtdd;
mvaldup:=Truncar(mvaldup,DM1.Tb_PargerPCASAS.AsInteger);
mdif:=mvaldup*mqtdd;
mdif:=ptotdup-mdif;
mdif:=arredonda(mdif,DM1.Tb_PargerPCASAS.AsInteger);
{DM1.Query1.Close;
DM1.Query1.SQl.Clear;
DM1.Query1.Sql.add('Select P1VCHAVE from CADP01V where '
                  +' P1VCODEMP=0'+IntTostr(pcodemp)
                  +' and P1VCHAVE=0'+Inttostr(mchave)
                  +' and P1VORDEM=0'+IntTostr(mordem));
DM1.Query1.Open;
if not DM1.Query1.Eof then
   begin}
DM1.Query1.Close;
DM1.Query1.SQl.clear;
DM1.Query1.Sql.add('Delete from CADP01V where '
               +' P1VCODEMP=0'+IntTostr(pcodemp)
               +' and P1VLOTSEQ=0'+Inttostr(plotseq)
               +' and P1VCHAVE=0'+Inttostr(pchave)
               +' and P1VORDEM=0'+IntTostr(pordem));
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,8770,'Frm_Ped','CADP01V');
   end;
DM1.Query1.Close;
mseq:=0;
if ptabpv='PP' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.Params.CreateParam(ftstring,'DTDESCF',ptinput);
   DM1.query1.SQL.Add('Insert into CADP01V ('
                     +' P1VCODEMP,'
                     +' P1VLOTSEQ, '
                     +' P1VCHAVE, '
                     +' P1VORDEM, '
                     +' P1VSEQ, '
                     +' P1VDATAV, '
                     +' P1VVALOR, '
                     +' P1VCOMISV, '
                     +' P1VCOM02, '
                     +' P1VCOM03, '
                     +' P1VCOMIST, '
                     +' P1VCOMISS, '
                     +' P1VFRETE, '
                     +' P1VTARBAN, '
                     +' P1VICMSR, '
                     +' P1VSEMCOM, '
                     +' P1VCOMASSE, '
                     +' P1VCODIGO, '
                     +' P1VTABPV, '
                     +' P1VDESCF, '
                     +' P1VTOTDI01, '
                     +' P1VTOTDI02, '
                     +' P1VTOTDI03, '
                     +' P1VTOTDIVL, '
                     +' P1VVALDES01, '
                     +' P1VVALDES02, '
                     +' P1VVLRDES, '
                     +' P1VSEG, '
                     +' P1VCOM04,'
                     +' P1VTOTIPI, '
                     +' P1VTOTCGRU,'
                     +' P1VTOTSGRU,'
                     +' P1VDTDESCF) values ('
                     +inttostr(pcodemp)+','
                     +IntTostr(plotseq)+','
                     +IntTostr(pchave)+','
                     +IntTostr(pordem)+','
                     +IntTostr(mseq)+','
                     +chr(39)+FormatDatetime(fdt,pdatae+pprazo)+chr(39)+','
                     +mudavp(FloatToStr(mvaldup+mdif))+','
                     +mudavp(FloatToStr(mcomv+mdifv))+','
                     +mudavp(FloatToStr(mcomv02+mdifv02))+','
                     +mudavp(FloatToStr(mcomv03+mdifv03))+','
                     +mudavp(FloatToStr(mcomt+mdift))+','
                     +mudavp(FloatToStr(mcoms+mdifs))+','
                     +mudavp(FloatToStr(mvfre+mdiff))+','
                     +mudavp(FloatToStr(mvtb+mdiftb))+','
                     +mudavp(FloatToStr(mvicm+mdifi))+','
                     +mudavp(FloatToStr(mscom+mdifsc))+','
                     +mudavp(FloatToStr(mcoma+mdifca))+','
                     +mudavp(FloatToStr(pcodpv))+','
                     +chr(39)+ptabpv+chr(39)+','
                     +mudavp(FloatToStr(mvdf+mddf))+','
                     +mudavp(FloatToStr(mvdi01+mdifdi01))+','
                     +mudavp(FloatToStr(mvdi02+mdifdi02))+','
                     +mudavp(FloatToStr(mvdi03+mdifdi03))+','
                     +mudavp(FloatToStr(mvtdi+mdiftdi))+','
                     +mudavp(FloatToStr(mvvd01+mdifvd01))+','
                     +mudavp(FloatToStr(mvvd02+mdifvd02))+','
                     +mudavp(FloatToStr(mvvald+mdifvald))+','
                     +mudavp(FloatToStr(mvseg+mdifseg))+','
                     +mudavp(FloatToStr(mComv04+mdifComv04))+','
                     +mudavp(FloatToStr(mIPI+mdifIPI))+','
                     +mudavp(FloatToStr(mCGru+mdifCGru))+','
                     +mudavp(FloatToStr(mSGru+mdifSGru))+','
                     +':DTDESCF )');
   if pddescf=0 then
      DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,pdatae+pprazo)
   else if pddescf=1 then
      DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,pdatae+pdiasdescf)
   else
      DM1.Query1.ParamByName('DTDESCF').AsDateTime:=0;
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,8823,'Frm_Ped','CADP01V');
      end;
   DM1.Query1.Close;
   end
else
   begin
   Frm_PVO.Tb_Po99.First;
   if not Frm_PVO.Tb_Po99.Eof then
      begin
      While not Frm_PVO.Tb_Po99.Eof do
         begin
         mseq:=mseq+1;
         DM1.Query1.Close;
         DM1.Query1.SQL.clear;
         DM1.Query1.Params.CreateParam(ftstring,'DTDESCF',ptinput);
         DM1.query1.SQL.Add('Insert into CADP01V ('
                           +' P1VCODEMP,'
                           +' P1VLOTSEQ, '
                           +' P1VCHAVE, '
                           +' P1VORDEM, '
                           +' P1VSEQ, '
                           +' P1VDATAV, '
                           +' P1VVALOR, '
                           +' P1VCOMISV, '
                           +' P1VCOM02, '
                           +' P1VCOM03, '
                           +' P1VCOMIST, '
                           +' P1VCOMISS, '
                           +' P1VFRETE, '
                           +' P1VTARBAN, '
                           +' P1VICMSR, '
                           +' P1VSEMCOM, '
                           +' P1VCOMASSE, '
                           +' P1VCODIGO, '
                           +' P1VTABPV, '
                           +' P1VDESCF, '
                           +' P1VTOTDI01, '
                           +' P1VTOTDI02, '
                           +' P1VTOTDI03, '
                           +' P1VTOTDIVL, '
                           +' P1VVALDES01, '
                           +' P1VVALDES02, '
                           +' P1VVLRDES, '
                           +' P1VSEG, '
                           +' P1VCOM04,'
                           +' P1VTOTIPI, '
                           +' P1VTOTCGRU,'
                           +' P1VTOTSGRU,'
                           +' P1VDTDESCF) values ('
                           +inttostr(pcodemp)+','
                           +IntTostr(plotseq)+','
                           +IntTostr(pchave)+','
                           +IntTostr(pordem)+','
                           +IntTostr(mseq)+','
                           +chr(39)+FormatDatetime(fdt,pdatae+Frm_PVO.Tb_Po99POPRAZO.Value)+chr(39)+','
                           +mudavp(FloatToStr(mvaldup+mdif))+','
                           +mudavp(FloatToStr(mcomv+mdifv))+','
                           +mudavp(FloatToStr(mcomv02+mdifv02))+','
                           +mudavp(FloatToStr(mcomv03+mdifv03))+','
                           +mudavp(FloatToStr(mcomt+mdift))+','
                           +mudavp(FloatToStr(mcoms+mdifs))+','
                           +mudavp(FloatToStr(mvfre+mdiff))+','
                           +mudavp(FloatToStr(mvtb+mdiftb))+','
                           +mudavp(FloatToStr(mvicm+mdifi))+','
                           +mudavp(FloatToStr(mscom+mdifsc))+','
                           +mudavp(FloatToStr(mcoma+mdifca))+','
                           +mudavp(FloatToStr(pcodpv))+','
                           +chr(39)+ptabpv+chr(39)+','
                           +mudavp(FloatToStr(mvdf+mddf))+','
                           +mudavp(FloatToStr(mvdi01+mdifdi01))+','
                           +mudavp(FloatToStr(mvdi02+mdifdi02))+','
                           +mudavp(FloatToStr(mvdi03+mdifdi03))+','
                           +mudavp(FloatToStr(mvtdi+mdiftdi))+','
                           +mudavp(FloatToStr(mvvd01+mdifvd01))+','
                           +mudavp(FloatToStr(mvvd02+mdifvd02))+','
                           +mudavp(FloatToStr(mvvald+mdifvald))+','
                           +mudavp(FloatToStr(mvseg+mdifseg))+','
                           +mudavp(FloatToStr(mComv04+mdifComv04))+','
                           +mudavp(FloatToStr(mIPI+mdifIPI))+','
                           +mudavp(FloatToStr(mCGru+mdifCGru))+','
                           +mudavp(FloatToStr(mSGru+mdifSGru))+','
                           +':DTDESCF )');
         if pddescf=0 then
            DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,pdatae+pprazo)
         else if pddescf=1 then
            DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,pdatae+pdiasdescf)
         else
            DM1.Query1.ParamByName('DTDESCF').AsDateTime:=0;
         Try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            ex_erroSql(01,8881,'Frm_Ped','CADP01V');
            end;
         DM1.Query1.Close;
         Frm_PVO.Tb_Po99.Next;
         mdif:=0;
         mdifv:=0;
         mdifv02:=0;
         mdifv03:=0;
         mdift:=0;
         mdifs:=0;
         mdiff:=0;
         mdifi:=0;
         mdifsc:=0;
         mddf  :=0;
         mdifca:=0;
         mdifdi01 :=0;
         mdifdi02 :=0;
         mdifdi03 :=0;
         mdiftdi  :=0;
         mdifvd01 :=0;
         mdifvd02 :=0;
         mdifvald :=0;
         mdifseg  :=0;
         mdifIPI  :=0;
         mdifCGru :=0;
         mdifSGru :=0;
         mdifComv04:=0;

         end;
      end
   else
      begin
      mseq:=mseq+1;

      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.Params.CreateParam(ftstring,'DTDESCF',ptinput);

      DM1.query1.SQL.Add('Insert into CADP01V ('
                        +' P1VCODEMP,'
                        +' P1VLOTSEQ, '
                        +' P1VCHAVE, '
                        +' P1VORDEM, '
                        +' P1VSEQ, '
                        +' P1VDATAV, '
                        +' P1VVALOR, '
                        +' P1VCOMISV, '
                        +' P1VCOM02, '
                        +' P1VCOM03, '
                        +' P1VCOMIST, '
                        +' P1VCOMISS, '
                        +' P1VFRETE, '
                        +' P1VTARBAN, '
                        +' P1VICMSR, '
                        +' P1VSEMCOM, '
                        +' P1VCOMASSE, '
                        +' P1VCODIGO,'
                        +' P1VTABPV,'
                        +' P1VDESCF, '
                        +' P1VTOTDI01, '
                        +' P1VTOTDI02, '
                        +' P1VTOTDI03, '
                        +' P1VTOTDIVL, '
                        +' P1VVALDES01, '
                        +' P1VVALDES02, '
                        +' P1VVLRDES, '
                        +' P1VSEG, '
                        +' P1VCOM04,'
                        +' P1VTOTIPI, '
                        +' P1VTOTCGRU,'
                        +' P1VTOTSGRU,'
                        +' P1VDTDESCF) values ('
                        +inttostr(pcodemp)+','
                        +IntTostr(plotseq)+','
                        +IntTostr(pchave)+','
                        +IntTostr(pordem)+','
                        +IntTostr(mseq)+','
                        +chr(39)+FormatDatetime(fdt,pdatae)+chr(39)+','
                        +mudavp(FloatToStr(mvaldup+mdif))+','
                        +mudavp(FloatToStr(mcomv+mdifv))+','
                        +mudavp(FloatToStr(mcomv02+mdifv02))+','
                        +mudavp(FloatToStr(mcomv03+mdifv03))+','
                        +mudavp(FloatToStr(mcomt+mdift))+','
                        +mudavp(FloatToStr(mcoms+mdifs))+','
                        +mudavp(FloatToStr(mvfre+mdiff))+','
                        +mudavp(FloatToStr(mvtb+mdiftb))+','
                        +mudavp(FloatToStr(mvicm+mdifi))+','
                        +mudavp(FloatToStr(mscom+mdifsc))+','
                        +mudavp(FloatToStr(mcoma+mdifca))+','
                        +mudavp(FloatToStr(pcodpv))+','
                        +chr(39)+ptabpv+chr(39)+','
                        +mudavp(FloatToStr(mvdf+mddf))+','
                        +mudavp(FloatToStr(mvdi01+mdifdi01))+','
                        +mudavp(FloatToStr(mvdi02+mdifdi02))+','
                        +mudavp(FloatToStr(mvdi03+mdifdi03))+','
                        +mudavp(FloatToStr(mvtdi+mdiftdi))+','
                        +mudavp(FloatToStr(mvvd01+mdifvd01))+','
                        +mudavp(FloatToStr(mvvd02+mdifvd02))+','
                        +mudavp(FloatToStr(mvvald+mdifvald))+','
                        +mudavp(FloatToStr(mvseg+mdifseg))+','
                        +mudavp(FloatToStr(mComv04+mdifComv04))+','
                        +mudavp(FloatToStr(mIPI+mdifIPI))+','
                        +mudavp(FloatToStr(mCGru+mdifCGru))+','
                        +mudavp(FloatToStr(mSGru+mdifSGru))+','
                        +':DTDESCF)'); // temporarios
      if pddescf=0 then
         DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,pdatae+pprazo)
      else if pddescf=1 then
         DM1.Query1.ParamByName('DTDESCF').AsString:=FormatDatetime(fdt,pdatae+pdiasdescf)
      else
         DM1.Query1.ParamByName('DTDESCF').AsDateTime:=0;

     Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,8941,'Frm_Ped','CADP01V');
         end;
      DM1.Query1.Close;
      Frm_PVO.Tb_Po99.Next;
      mdif:=0;
      mdifv:=0;
      mdifv02:=0;
      mdifv03:=0;
      mdift:=0;
      mdifs:=0;
      mdiff:=0;
      mdifi:=0;
      mdifsc:=0;
      mddf  :=0;
      mdifca:=0;
      mdifdi01 :=0;
      mdifdi02 :=0;
      mdifdi03 :=0;
      mdiftdi  :=0;
      mdifvd01 :=0;
      mdifvd02 :=0;
      mdifvald :=0;
      mdifseg  :=0;
      mdifIPI  :=0;
      mdifCGru :=0;
      mdifSGru :=0;
      mdifComv04:=0;
      end;
   end;
result:=True;
end;


function fInserirPed02(pLado,pCodEmp,pItem,pBaixado: Integer; pCodpro,pQtd,pPu,pDesc01,pDesc02,pDesc03,pValDes: Real; pLote:String;pDtVcto: TDateTime): Boolean;

var
mPosReg: TBookmark;
begin
mPosReg        :=Frm_Ped_AutoP.Tb_Ped02.GetBookmark;
flcadpro(1,0,0,FloatToStr(pCodPro));
if pLado=0 then
   begin
   BlqCalcula_101 :=False;
   Frm_Ped_AutoP.Tb_Ped02.Append;
   Frm_Ped_AutoP.Tb_Ped02P2ITEM.Value   :=mItem;
   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value :=pCodpro;
   Frm_Ped_AutoP.Tb_Ped02P2QTD.Value    :=pQtd;
   Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value  :=pPu;
   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value  :=pDesc01;
   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value  :=pDesc02;
   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value  :=pDesc03;
   Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value :=pValDes;
   if Trim(pLote)<>'' then
      begin
      Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value    :=pLote;
      Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value:=pLote;
      end;
   end
else
   begin
   BlqCalcula_101 :=true;
   Frm_Ped_AutoP.Tb_Ped02.Append;
   Frm_Ped_AutoP.Tb_Ped02P2ITEM.Value       :=mItem;
   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value     :=pCodpro;
   Frm_Ped_AutoP.Tb_Ped02P2QTD_101.Value    :=pQtd;
   Frm_Ped_AutoP.Tb_Ped02P2QTD.Value        :=pQtd;
   Frm_Ped_AutoP.Tb_Ped02P2PRECO_101.Value  :=pPu;
   Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value      :=pPu;
   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value      :=pDesc01;
   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value      :=pDesc02;
   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value      :=pDesc03;
   Frm_Ped_AutoP.Tb_Ped02P2VALDES_101.Value :=pValDes;
   Frm_Ped_AutoP.Tb_Ped02P2VALDES.Value     :=pValDes;
   if Trim(pLote)<>'' then
      begin
      Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value  :=pLote;
      Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value      :=pLote;
      end;

   end;


Frm_Ped_AutoP.Tb_Ped02P2SIT.Value   :=FormatFloat('000', fsonumero(DM1.Tb_ProPDSIT.Value));
Frm_Ped_AutoP.Tb_Ped02BAIXADO.Value :=pBaixado;

Frm_Ped_AutoP.Tb_Ped02P2LISTA.Value :=DM1.Tb_ProPDLISTA.Value;
Frm_Ped_AutoP.Tb_Ped02P2TABELA.Value:=DM1.Tb_ProPDTABICM.Value;
Frm_Ped_AutoP.Tb_Ped02P2PCOTAB.Value:=DM1.Tb_ProPDPRECO1.Value;
Frm_Ped_AutoP.Tb_Ped02P2UCPR.Value  :=DM1.Tb_ProPDUCPR.Value;
Frm_Ped_AutoP.Tb_Ped02P2PCOCUS.Value:=DM1.Tb_ProPDPRECOC.Value;
Frm_Ped_AutoP.Tb_Ped02P2PCOMAX.Value:=DM1.Tb_ProPDPMC.Value;
Frm_Ped_AutoP.Tb_Ped02P2CODFAB.Value:=DM1.Tb_ProPDCODFOR.Value;
Frm_Ped_AutoP.Tb_Ped02NOMEPRO.Value :=DM1.Tb_ProPDNOME.Value;
Frm_Ped_AutoP.Tb_Ped02NOMEPRO2.Value:=DM1.Tb_ProPDNOME2.Value;
Frm_Ped_AutoP.Tb_Ped02MARCAPRO.Value:=DM1.Tb_ProPDMARCA.Value;
Frm_Ped_AutoP.Tb_Ped02SECAOPRO.Value:=DM1.Tb_ProPDSECAO.Value;
if DM1.Tb_CliCIPI.Value=1 then
   Frm_Ped_AutoP.Tb_Ped02P2ALIPI.Value :=DM1.Tb_ProPDIPI.Value
else
   Frm_Ped_AutoP.Tb_Ped02P2ALIPI.Value :=0;
Frm_Ped_AutoP.Tb_Ped02.Post;

Frm_Ped_AutoP.Tb_Ped02.GotoBookmark(mPosReg);
result:=true;
end;

function fprocpen(ptipo: Integer; pcodpro,pqtdped,pqtdest,pdesc01,pdesc02,pdesc03,pvlrdes,ppu:Real):Boolean;
var
x: Integer;
achou: Boolean;
begin
achou:=False;
if ptipo<2 then
   begin
   for x:=0 to Frm_Ped_AutoP.STG_PEN.RowCount do
      begin
      if Trim(Frm_Ped_AutoP.STG_PEN.Cells[0,x])='' then
         Continue;
      if fsonumero(Frm_Ped_AutoP.STG_PEN.Cells[0,x])=pcodpro then
         begin
         achou:=True;
         if ptipo=1 then
            begin
            Frm_Ped_AutoP.STG_PEN.Cells[1,x]:=FloatToStr(Valfloat(Frm_Ped_AutoP.STG_PEN.Cells[1,x])+pqtdped);
            Frm_Ped_AutoP.STG_PEN.Cells[2,x]:=FloatToStr(ValFloat(Frm_Ped_AutoP.STG_PEN.Cells[2,x])+pqtdest);
            end
         else
            begin
            Frm_Ped_AutoP.STG_PEN.Cells[1,x]:=FloatToStr(pqtdped);
            Frm_Ped_AutoP.STG_PEN.Cells[2,x]:=FloatToStr(pqtdest);
            Frm_Ped_AutoP.STG_PEN.Cells[3,x]:=FloatToStr(pdesc01);
            Frm_Ped_AutoP.STG_PEN.Cells[4,x]:=FloatToStr(pdesc02);
            Frm_Ped_AutoP.STG_PEN.Cells[5,x]:=FloatToStr(pdesc03);
            Frm_Ped_AutoP.STG_PEN.Cells[6,x]:=FloatToStr(pvlrdes);
            Frm_Ped_AutoP.STG_PEN.Cells[7,x]:=FloatToStr(ppu);
            end;
         break;
         end
      end;
   if not achou then
      begin
      x:=Frm_Ped_AutoP.STG_PEN.RowCount;
      Frm_Ped_AutoP.STG_PEN.Rows[x].Clear;
      Frm_Ped_AutoP.STG_PEN.Rows[x+1].Clear;
      Frm_Ped_AutoP.STG_PEN.Cells[0,x-1]:=FloatToStr(pcodpro);
      Frm_Ped_AutoP.STG_PEN.Cells[1,x-1]:=FloatToStr(pqtdped);
      Frm_Ped_AutoP.STG_PEN.Cells[2,x-1]:=FloatToStr(pqtdest);
      Frm_Ped_AutoP.STG_PEN.Cells[3,x-1]:=FloatToStr(pdesc01);
      Frm_Ped_AutoP.STG_PEN.Cells[4,x-1]:=FloatToStr(pdesc02);
      Frm_Ped_AutoP.STG_PEN.Cells[5,x-1]:=FloatToStr(pdesc03);
      Frm_Ped_AutoP.STG_PEN.Cells[6,x-1]:=FloatToStr(pvlrdes);
      Frm_Ped_AutoP.STG_PEN.Cells[7,x-1]:=FloatToStr(ppu);
      Frm_Ped_AutoP.STG_PEN.RowCount:=x+1;
      Frm_Ped_AutoP.STG_PEN.Rows[x].Clear;
      Frm_Ped_AutoP.STG_PEN.Rows[x+1].Clear;
      end;
   end
else if ptipo=2 then // retirar
   begin
   for x:=0 to Frm_Ped_AutoP.STG_PEN.RowCount do
      begin
      if Trim(Frm_Ped_AutoP.STG_PEN.Cells[0,x])='' then
         Continue;
      if fsonumero(Frm_Ped_AutoP.STG_PEN.Cells[0,x])=pcodpro then
         begin
         Frm_Ped_AutoP.STG_PEN.Cells[1,x]:=FloatToStr( Valfloat(Frm_Ped_AutoP.STG_PEN.Cells[1,x])-pqtdped);
         break;
         end;
      end;
   end;
result:=True;

end;
function fDadosPro(pTipo,pLeitor: Integer;pCodPro,pLote:String;pDatav:TDateTime): Boolean;
//pTipo: Integer = 0-Inclusao 1-Alteraçao
begin
if (pLeitor=1) and (pTipo=0) then
   begin
   if (Valint(copy(mpseg,4,2))=2) and (Valint(copy(DM1.Tb_PargerPSEGMENTO.Value,4,2))>0)
      or (DM1.Tb_PargerPPCOGRA.Value=1) then  // Grades cores tamanhos
      begin
      if (DM1.Tb_PargerPPCOGRA.Value=1) then
         begin
         if (Length(pCodPro)>9) then
            begin
            Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value    :=UpperCase(copy(pCodPro,5,length(pCodPro)-4));
            Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value:=UpperCase(copy(pCodPro,5,length(pCodPro)-4));
            Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value  :=fsonumero(copy(pCodPro,1,4));
            end;
         end
      else
         begin
         Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value    :=copy(pCodPro,length(pCodPro)-1,2);
         Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value:=copy(pCodPro,length(pCodPro)-1,2);
         Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value  :=fsonumero(copy(pCodPro,1,length(pCodPro)-2));
         end;
      if DM1.Tb_PargerPCODPROPADFAT.Value=2 then
         flcadpro(5,0,0,pCodPro)
      else if DM1.Tb_PargerPCODPROPADFAT.Value=1 then
         flcadpro(3,0,0,pCodPro)
      else flcadpro(1,0,0,pCodPro);
      if DM1.Tb_pro.Eof then
         begin
         verteclado(0);
         MessageDlg('Produto não cadastrado!',mtWarning,[mbOk],0);
         result:=false;
         exit;
         end;
      if not flcadlgc(1,0,DM1.Tb_ProPDCODPRO.AsString,Frm_Ped_AutoP.Tb_Ped02P2LOTE.AsString,'') then
         begin
         verteclado(0);
         MessageDlg('Grade Nao cadastrada!',mtWarning,[mbOk],0);
         result:=false;
         exit;
         end;
      Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value :=fbuscarPreco(0);
      Frm_Ped_AutoP.Tb_Ped02P2QTD.Value   :=1;
      if Frm_Ped_AutoP.RG_TPPCO.ItemIndex=3 then
         begin
         Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value:=fpcoliq(0,Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value,
                             Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                             Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                             Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value);
         end;
      Frm_Ped_AutoP.tb_ped02.Post;
      end
   else
      begin
      if DM1.Tb_PargerPCODPROPADFAT.Value=2 then
         flcadpro(5,0,0,pCodPro)
      else if DM1.Tb_PargerPCODPROPADFAT.Value=1 then
         flcadpro(3,0,0,pCodPro)
      else flcadpro(1,0,0,pCodPro);
      end;
   end
else if (pLeitor=1) and (DM1.Tb_PargerPPCOGRA.Value<>1) then
   begin
   if DM1.Tb_PargerPCODPROPADFAT.Value=2 then
      flcadpro(5,0,0,pCodPro)
   else if DM1.Tb_PargerPCODPROPADFAT.Value=1 then
      flcadpro(3,0,0,pCodPro)
   else flcadpro(1,0,0,pCodPro);
   end
else
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      if (Length(pCodPro)>9) then
         begin
         Frm_Ped_AutoP.Tb_Ped02P2LOTE.Value    :=uppercase(copy(pCodPro,5,length(pCodPro)-4));
         Frm_Ped_AutoP.Tb_Ped02P2LOTE_101.Value:=uppercase(copy(pCodPro,5,length(pCodPro)-4));
         Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value  :=fsonumero(copy(pcodpro,1,4));
         end;
      end;
   if DM1.Tb_PargerPCODPROPADFAT.Value=2 then
      flcadpro(5,0,0,pCodPro)
   else if DM1.Tb_PargerPCODPROPADFAT.Value=1 then
      flcadpro(3,0,0,pCodPro)
   else flcadpro(1,0,0,pCodPro);
   end;
if DM1.Tb_Pro.Eof then
   begin
   verteclado(0);
   MessageDlg('Produto não cadastrado!',mtWarning,[mbOk],0);
   result:=false;
   exit;
   end
else
   begin
   Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value:=DM1.Tb_ProPDCODPRO.Value;
   if dm1.Tb_PargerPPCOGRA.Value<>1 then
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value:=fbuscarPreco(0);
   end;
if (mpvtpdesf=1) or ((Frm_Ped_AutoP.CB_TABPV.Text='PP') and (DM1.Tb_PVPVPPORI.Value=1))then
   begin
   if not flcadfor(1,0,DM1.Tb_ProPDCODFOR.AsString) then
      begin
      verteclado(0);
      MessageDlg('Não posso efetivar este item. O Fornecedor não esta Cadastrado!',mtWarning,[mbOk],0);
      result:=false;
      exit;
      end;
   end;
if fTestaBloqueio(0,fsonumero(Frm_Ped_AutoP.CODVEN.Text),
                    DM1.Tb_ProPDCODFOR.Value,
                    DM1.Tb_CliCCODLOC.Value,
                    DM1.Tb_CliCCODBAI.Value,
                    DM1.Tb_CliCCODRAM.Value,
                    DM1.Tb_CliCCODCLI.Value,
                    DM1.Tb_ProPDCODRAM.Value,
                    DM1.Tb_ProPDCODPRO.Value,
                    DM1.Tb_CliCUF.Value) then
   begin
   if Application.Messagebox('Produto Com Venda Bloqueada!, quer ver detalhes','',MB_YESNO+MB_DEFBUTTON2)=mrYes then
      begin
      Application.CreateForm(TFrm_BloqueioVenda_Motivo, Frm_BloqueioVenda_Motivo);
      fMotivo(0,fsonumero(Frm_Ped_AutoP.CODVEN.Text),
                    DM1.Tb_ProPDCODFOR.Value,
                    DM1.Tb_CliCCODLOC.Value,
                    DM1.Tb_CliCCODBAI.Value,
                    DM1.Tb_CliCCODRAM.Value,
                    DM1.Tb_CliCCODCLI.Value,
                    DM1.Tb_ProPDCODRAM.Value,
                    DM1.Tb_ProPDCODPRO.Value,
                    DM1.Tb_CliCUF.Value);
      Frm_BloqueioVenda_Motivo.ShowModal;
      Frm_BloqueioVenda_Motivo.Free;
      end;
   result:=false;
   exit;
   end;
if mpvtpd1=0 then
   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=mpvdes1
else if mpvtpd1=1 then
   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_ProPDDESC1.Value
else if mpvtpd1=2 then
   Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_CliCDESC.Value
else if mpvtpd1=3 then
//   MDESCI01.Enabled:=true
else if mpvtpd1=4 then
   begin
   if DM1.Tb_ProPDSTATUS02.Value=7 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S7.Value
   else if DM1.Tb_ProPDSTATUS02.Value=6 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S6.Value
   else if DM1.Tb_ProPDSTATUS02.Value=5 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S5.Value
   else if DM1.Tb_ProPDSTATUS02.Value=4 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S4.Value
   else if DM1.Tb_ProPDSTATUS02.Value=3 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S3.Value
   else if DM1.Tb_ProPDSTATUS02.Value=2 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S2.Value
   else if DM1.Tb_ProPDSTATUS02.Value=1 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S1.Value
   else
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S0.Value;
   end;


if mpvtpd2=0 then
   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=mpvdes2
else if mpvtpd2=1 then
   Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_ProPDDESC2.Value
else if mpvtpd2=3 then
   begin
   if DM1.Tb_ProPDSTATUS02.Value=7 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S7.Value
   else if DM1.Tb_ProPDSTATUS02.Value=6 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S6.Value
   else if DM1.Tb_ProPDSTATUS02.Value=5 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S5.Value
   else if DM1.Tb_ProPDSTATUS02.Value=4 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S4.Value
   else if DM1.Tb_ProPDSTATUS02.Value=3 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S3.Value
   else if DM1.Tb_ProPDSTATUS02.Value=2 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S2.Value
   else if DM1.Tb_ProPDSTATUS02.Value=1 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S1.Value
   else
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S0.Value;
   end;
if mpvtpd3=0 then
   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=mpvdes3
else if mpvtpd3=1 then
   Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_ProPDDESC3.Value
else if mpvtpd3=3 then
   begin
   if DM1.Tb_ProPDSTATUS02.Value=7 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S7.Value
   else if DM1.Tb_ProPDSTATUS02.Value=6 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S6.Value
   else if DM1.Tb_ProPDSTATUS02.Value=5 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S5.Value
   else if DM1.Tb_ProPDSTATUS02.Value=4 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S4.Value
   else if DM1.Tb_ProPDSTATUS02.Value=3 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S3.Value
   else if DM1.Tb_ProPDSTATUS02.Value=2 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S2.Value
   else if DM1.Tb_ProPDSTATUS02.Value=1 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S1.Value
   else
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S0.Value;
   end;

if mpvtc=0 then
   Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_ProPDCOMIS.Value
else if mpvtc=1 then
   Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=mpvcom
else if mpvtc=2 then
   Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_VenVCOMIS.Value
else if mpvtc=3 then
   Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_CliCCOMIS.Value
else if mpvtc=4 then
   Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_UFPCOMIS.Value
else if mpvtc=5 then
//   COMISP.Enabled:=true
else if mpvtc=6 then
   Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=mpvcom
else if mpvtc=7 then
   begin
   if Frm_Ped_AutoP.RG_TPPCO.itemindex=3 then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=DM1.Tb_LGCCLPRECO1.Value-mpreco
      else
         Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=DM1.Tb_ProPDPRECO1.Value-mpreco;
      Try
         if DM1.Tb_PargerPPCOGRA.Value=1 Then
            Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value*100)/DM1.Tb_LGCCLPRECO1.Value
         else
            Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value*100)/DM1.Tb_ProPDPRECO1.Value;
      except
         Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=0;
         end;
      end
   else
      begin
      Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=100-(100*Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value/100);
      Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value-(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value*Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value/100);
      Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value-(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value*Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value/100);
      Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=100-Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value;
      end;
   if flcadcomd(0,0,IntToStr(Round(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value))) then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_ComDCDCOMIS.Value
   else
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=0;
   end
else if mpvtc=8 then
   begin
   if DM1.Tb_ProPDSTATUS02.Value=7 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS7.Value
   else if DM1.Tb_ProPDSTATUS02.Value=6 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS6.Value
   else if DM1.Tb_ProPDSTATUS02.Value=5 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS5.Value
   else if DM1.Tb_ProPDSTATUS02.Value=4 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS4.Value
   else if DM1.Tb_ProPDSTATUS02.Value=3 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS3.Value
   else if DM1.Tb_ProPDSTATUS02.Value=2 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS2.Value
   else if DM1.Tb_ProPDSTATUS02.Value=1 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS1.Value
   else
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS0.Value;
   end;

if mpvtpdesf=0 then
   Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_ProPDDESFIN.Value
else if mpvtpdesf=1 then
   Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_ForFDESCFINV.Value
else if mpvtpdesf=2 then
   Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_ForFDESCFINV.Value
else if mpvtpdesf=3 then
   Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=mpvdescf
else if mpvtpdesf=4 then
   begin
   if (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value>=DM1.Tb_PVPVDF01A.Value) and (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value<=DM1.Tb_PVPVDF01B.Value) then
       Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF01.Value
   else if (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value>=DM1.Tb_PVPVDF02A.Value) and (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value<=DM1.Tb_PVPVDF02B.Value) then
       Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF02.Value
   else if (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value>=DM1.Tb_PVPVDF03A.Value) and (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value<=DM1.Tb_PVPVDF03B.Value) then
       Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF03.Value
    else if (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value>=DM1.Tb_PVPVDF04A.Value) and (Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value<=DM1.Tb_PVPVDF04B.Value) then
       Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF04.Value;
   end
else if mpvtpdesf=5 then
   begin
   if DM1.Tb_ProPDSTATUS02.Value=7 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS7.Value
   else if DM1.Tb_ProPDSTATUS02.Value=6 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS6.Value
   else if DM1.Tb_ProPDSTATUS02.Value=5 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS5.Value
   else if DM1.Tb_ProPDSTATUS02.Value=4 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS4.Value
   else if DM1.Tb_ProPDSTATUS02.Value=3 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS3.Value
   else if DM1.Tb_ProPDSTATUS02.Value=2 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS2.Value
   else if DM1.Tb_ProPDSTATUS02.Value=1 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS1.Value
   else
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS0.Value;
  end;

if pLeitor=1 then
   begin
   if flqrppr(0,0,0,'',pCodPro) then
      begin
      Application.Createform(TFrm_PromVal, Frm_Promval);
      if Frm_PromVal.ShowModal=mrok then
         begin
         if flcadppr(0,0,0,promval_antes,pCodPro) then
            begin
            Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO.Value:=DM2.Tb_PPRPPPROMOCAO.Value;
            Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value   :=DM2.Tb_PPRPPPCOVDA.Value;

            if DM2.Tb_PPRPPDESC_1.Value>0 then
               Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value   :=DM2.Tb_PPRPPDESC_1.Value;
            if DM2.Tb_PPRPPDESC_2.Value>0 then
               Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value   :=DM2.Tb_PPRPPDESC_2.Value;
            if DM2.Tb_PPRPPDESC_3.Value>0 then
               Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value   :=DM2.Tb_PPRPPDESC_3.Value;
            if DM2.Tb_PPRPPCOMIS.Value>0 then
               Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value   :=DM2.Tb_PPRPPCOMIS.Value;
            if trim(Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO.AsString)='' then
               Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO.Value:=promval_antes;
            end;
         end;
     Frm_PromVal.Free;
      end;
   end;
if Frm_Ped_AutoP.RG_TPPCO.ItemIndex=3 then
   Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value:=fpcoliq(0,Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value,
                                        Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                                        Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                                        Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value);
if (Frm_Ped_AutoP.RG_TPPCO.ItemIndex=2) and (DM1.Tb_PargerPEXTRACUS.Value=1) then
   begin
//   if DM1.Tb_PargerPPCOGRA.Value=1 then
//      PCUSTO.Caption:='Preço de Custo: '+FormatFloat(mcasaspu, DM1.Tb_LGCCLPCUSTO.Value)
//   else
//      PCUSTO.Caption:='Preço de Custo: '+FormatFloat(mcasaspu, DM1.Tb_ProPDPRECOC.Value);
//   pcusto.Visible:=True;
   end;

if ((pTipo=0) and (Valint(copy(mpseg,4,2))<>02)) and (DM1.Tb_PargerPFATDPRO.Value<>1)
   and not ( (moper_ped=1) and ( Valint(copy(mpseg,4,2))=1)) then  // Grades cores tamanhos
   begin
   DM5.Query1.Close;
   DM5.Query1.SQL.Clear;
   DM5.Query1.SQL.Add('Select count(*) from '+mTabTmp01
                     +' where P2CODPRO=0'+pCodPro);
   try
      DM5.Query1.Open;
   except
      DM5.Query1.Sql.SaveToFile('c:\sql.txt')
      end;
   if DM5.Query1.Fields[0].AsInteger>0 then
      begin
      verteclado(0);
      if Application.MessageBox('Produto já digitado quer altera-lo?',' ',MB_YESNO+MB_DEFBUTTON2)=mrYes then
         begin
         Frm_Ped_AutoP.Tb_Ped02.Cancel;
         Frm_Ped_AutoP.Tb_Ped02.First;
         While Frm_Ped_AutoP.Tb_Ped02.eof do
            begin
            if Frm_Ped_AutoP.Tb_Ped02P2CODPRO.Value=fsonumero(pCodPro) then
               begin
               break;
               end
            else
               Frm_Ped_AutoP.Tb_Ped02.Next;
            end;
         Frm_Ped_AutoP.DBG_Mercad.SelectedField:=Frm_Ped_AutoP.Tb_Ped02P2QTD;
         Frm_Ped_AutoP.Tb_Ped02.Edit;
         result:=true;
         exit;
         end;
      end;
   end
else if (Valint(copy(mpseg,4,2))<>02) and (pTipo=1)  then
   begin

   DM5.Query1.Close;
   DM5.Query1.SQL.Clear;
   DM5.Query1.SQL.Add('Select count(*) from '+mTabTmp01
                     +' where P2CODPRO=0'+pCodPro);
   DM5.Query1.Open;
   if DM5.Query1.Fields[0].AsInteger>0 then
      begin
      verteclado(0);
      MessageDlg('Este Código ja Existe no Pedido. Invalido!',mtWarning,[mbOk],0);
      Frm_Ped_AutoP.Tb_Ped02.Cancel;
      result:=false;
      exit;
      end;
   end;
result:=true;   
end;
function fpcoliq(ptipo: Integer; pPreco, pDesc01, pDesc02,pDesc03: Real): Real;
var
preco: Real;
begin
if ptipo=0 then
   begin
   preco:=ppreco-(ppreco*pdesc01/100);
   preco:=preco -(preco*pDesc02/100);
   preco:=preco -(preco*pDesc03/100);
   end
else
   begin
   preco:=ppreco-(ppreco*pdesc01/100);
   preco:=preco -(preco*pDesc02/100);
   preco:=preco -(preco*pDesc03/100);
   end;
Result:=Preco;
end;

procedure TFrm_Ped_AutoP.Tb_Ped02AfterEdit(DataSet: TDataSet);
begin
moper_item:=1;
end;

procedure TFrm_Ped_AutoP.Tb_ProCalcFields(DataSet: TDataSet);
begin

if not DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   if not flcadest(0,0,Tb_ProPDCODPRO.AsString) then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Insert into CADEST ('
                        +'CECODEMP, '
                        +'CECODPRO, '
                        +'CESALDO, '
                        +'CESALDOR,'
                        +'CESALDOC,'
                        +'CESALDOT,'
                        +'CEENTPEN,'
                        +'CEDTUSAI,'
                        +'CEDTUENT'
                        +') Values ('
                        +Inttostr(codemp)+','
                        +Tb_ProPDCODPRO.AsString+','
                        +'0,' // SALDO
                        +'0,' // SALDOR
                        +'0,' // SALDOC
                        +'0,' // SALDOT
                        +'0,' // ENTPEN
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +')');
      try
         DM1.Query1.ExecSQL;
      except
         ex_erroSql(01,4182,'DM1','CADCLI');
         fdm1StartCommit;
         end;
      flcadest(0,0,Tb_ProPDCODPRO.AsString);
      end;
   Tb_Proestoque.Value:=DM1.Tb_EstCESALDO.AsFloat;
   Tb_Proestoquer.Value:=DM1.Tb_EstCESALDOR.AsFloat;
   Tb_Proestoquec.Value:=DM1.Tb_EstCESALDOC.AsFloat;
   Tb_Proestoquet.Value:=DM1.Tb_EstCESALDOT.AsFloat;
   if not DM1.Tb_EstCEDTUENT.IsNull then
      Tb_Prodtuent.Value  :=DM1.Tb_EstCEDTUent.Value;
   if not DM1.Tb_EstCEDTUSAI.IsNull then
      Tb_Prodtusai.Value  :=DM1.Tb_EstCEDTUSAI.Value;
   end
else
   begin
   Tb_Proestoque.Value :=Tb_ProPDSALDO.Value;
   Tb_Proestoquer.Value:=Tb_ProPDSALDOR.Value;
   Tb_Proestoquec.Value:=Tb_ProPDSALDOC.Value;
   Tb_Proestoquet.Value:=Tb_ProPDSALDOT.Value;
   if not Tb_ProPDDTULTENT.IsNull then
      Tb_Prodtuent.Value  :=Tb_ProPDDTULTENT.Value;
   if not Tb_ProPDDTULTSAI.IsNull then
      Tb_Prodtusai.Value  :=Tb_ProPDDTULTSAI.Value;
   end;


end;

procedure TFrm_Ped_AutoP.CODVEN2KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Ven, Frm_Ven);
   Frm_Ven.Edit1.Text:=key;
   Frm_Ven.BBnAtu.Click;
   Frm_Ven.Edit1.SelStart:=1;
   Frm_Ven.Edit1.SelLength:=1;
   Frm_Ven.PC1.ActivePage:=Frm_Ven.tsTab;
   ven_ori:='Frm_PED';
   if Frm_Ven.ShowModal=mrok then
      begin
      CODVEN2.Text :=DM1.Tb_VenVCODVEN.AsString;
      end;
   Frm_Ven.Free;
   key:=#0;
   end;


end;

procedure TFrm_Ped_AutoP.CODVEN2Exit(Sender: TObject);
begin
if ValFloat(CODVEN2.Text)=0 then
   CODVEN2.Text:='';
if Trim(CODVEN2.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN2.Text) then
      begin
      verteclado(0);
      MessageDlg('Vendedor não Cadastrado!',mtWarning,[mbOk],0);
      CODVEN2.SetFocus;
      end
   else
      NOMVEN2.Text:=DM1.Tb_VenVNOME.Value;
   end;

end;

procedure TFrm_Ped_AutoP.CODVEN3Exit(Sender: TObject);
begin
if ValFloat(CODVEN3.Text)=0 then
   CODVEN3.Text:='';
if Trim(CODVEN3.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN3.Text) then
      begin
      verteclado(0);
      MessageDlg('Vendedor não Cadastrado!',mtWarning,[mbOk],0);
      CODVEN3.SetFocus;
      end
   else
      NOMVEN3.Text:=DM1.Tb_VenVNOME.Value;
   end;


end;

procedure TFrm_Ped_AutoP.CODVEN3KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Ven, Frm_Ven);
   Frm_Ven.Edit1.Text:=key;
   Frm_Ven.BBnAtu.Click;
   Frm_Ven.Edit1.SelStart:=1;
   Frm_Ven.Edit1.SelLength:=1;
   Frm_Ven.PC1.ActivePage:=Frm_Ven.tsTab;
   ven_ori:='Frm_PED';
   if Frm_Ven.ShowModal=mrok then
      begin
      CODVEN3.Text :=DM1.Tb_VenVCODVEN.AsString;
      PCOMIS.SetFocus;
      end;
   Frm_Ven.Free;
   key:=#0;
   end;


end;

procedure TFrm_Ped_AutoP.CODASSEExit(Sender: TObject);
begin
if ValFloat(CODASSE.Text)=0 then
   CODASSE.Text:='';
if Trim(CODASSE.Text)='' then
   NOMASSE.Text:=''
else
   begin
   if not flcadassessor(1,0,CODASSE.Text) then
      begin
      verteclado(0);
      MessageDlg('Assessor não Cadastrado!',mtWarning,[mbOk],0);
      CODASSE.SetFocus;
      exit;
      end
   else
      begin
      NOMASSE.Text:=DM2.Tb_AssessorCARAZAO.Value;
      end;
   end;

end;

procedure TFrm_Ped_AutoP.CODASSEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Assessor, Frm_Assessor);
   Frm_Assessor.Edit1.Text:=key;
   Frm_Assessor.BBnAtu.Click;
   Frm_Assessor.Edit1.SelStart:=1;
   Frm_Assessor.Edit1.SelLength:=1;
   Frm_Assessor.PC1.ActivePageIndex:=2;
   assessor_ori:='Frm_PED';
   if Frm_Assessor.ShowModal=mrok then
      begin
      CODASSE.Text :=DM2.Tb_AssessorCACODASS.AsString;
      end;
   Frm_Assessor.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Ped_AutoP.CB_TIPOExit(Sender: TObject);
begin
if CB_TIPO.ItemIndex<0 then
   begin
   with CB_TIPO do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
   end;
CB_TIPO.text:=CB_TIPO.Items.Strings[CB_TIPO.ItemIndex];
if cb_tipo.Text='' then
   begin
   verteclado(0);
   MessageDlg('Favor Selecionar um tipo de Pedido Valido!',mtWarning,[mbOk],0);
   CB_TIPO.SetFocus;
   end;
with CB_TIPO2 do ItemIndex:=Items.IndexOf(CB_TIPO.Text);
CB_TIPO2.text:=CB_TIPO2.items[CB_TIPO2.itemIndex];
mtipop:=CB_TIPO2.ItemIndex;

if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18)  then
   begin
   if StrToInt('0'+copy(mpseg,4,2))=01 then  // lotes de mercadorias
      begin
      DBG_Mercad.Columns[mColLote].Visible  :=true;
      DBG_Mercad.Columns[mColDtVcto].Visible:=true;
      end;
   end;
if ValFloat(CODCLI.Text)<>0 then
   begin
   if (mtipop=9) and (DM1.Tb_CliCBLQEMP.Value=1) then
      begin
      verteclado(0);
      MessageDlg('Não é permitido fazer empréstimo para Este Cliente!',mtWarning,[mbOk],0);
      CB_TIPO.SetFocus;
      exit;
      end;
   if not fpedtestacfop(0,mpund) then
      begin
      CB_TIPO.SetFocus;
      exit;
      end;
   end;

if (mtipop>1) or (ant_integer>1) and (mtipop<>ant_integer) then
   begin
   if not fValidaSenha(codusr,22,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Tipo de Pedido padrão','') then
      begin
      verteclado(0);
      MessageDlg('Alteração não Aceita!',mtWarning,[mbOk],0);
      mtipop:=ant_integer;
      CB_TIPO.text:=CB_TIPO2.Items.Strings[mtipop];
      CB_TIPO.SetFocus;
      exit;
      end;
   end;
if (mtipop=8) or (mtipop=12) or (mtipop=13) or (mtipop=17) or (mtipop=18)  then
   begin
   Ts_OrigemDev.Visible:=true;
   pc_Cabecalho.ActivePage:=Ts_OrigemDev;
   DCHAVE.SetFocus;
   end;
mpacreger :=DM1.Tb_PargerPACREGER.Value;
if ValFloat(CODCLI.Text)>0 then
   begin
   if not fpedtestacfop(0,mpund) then
      begin
      CB_TIPO.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Ped_AutoP.CB_TIPOEnter(Sender: TObject);
begin
ant_integer:=mtipop;

end;

procedure TFrm_Ped_AutoP.CB_ORIGEMExit(Sender: TObject);
begin
if CB_ORIGEM.ItemIndex<0 then
   begin
   with CB_ORIGEM do ItemIndex:=Items.IndexOf(CB_ORIGEM.Text);
   end;
CB_ORIGEM.text:=CB_ORIGEM.Items.Strings[CB_ORIGEM.ItemIndex];
if CB_ORIGEM.Text='' then
   begin
   CB_ORIGEM.ItemIndex:=0;
   end;
if CB_ORIGEM.ItemIndex=1 then
   begin
   ST_CODTLV.Visible:=true;
   CODTLV.Visible   :=true;
   NOMTLV.Visible   :=true;
   end
else
   begin
   ST_CODTLV.Visible:=false;
   CODTLV.Visible   :=false;
   NOMTLV.Visible   :=false;
   end;

end;

procedure TFrm_Ped_AutoP.CODTLVExit(Sender: TObject);
begin
CODTLV.Text:=fdeixanum2(CODTLV.Text);
if trim(CODTLV.Text)='' then
   exit;
if not flcadusr(1,0,CODTLV.Text) then
   begin
   verteclado(0);
   MessageDlg('Vendedor/Usuário não Cadastrado!',mtWarning,[mbOk],0);
   CODTLV.SetFocus;
   end
else
   NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;


end;

procedure TFrm_Ped_AutoP.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Usr, Frm_Usr);
   Frm_Usr.Edit1.Text:=key;
   Frm_Usr.BBnAtu.Click;
   Frm_Usr.Edit1.SelStart:=1;
   Frm_Usr.Edit1.SelLength:=1;
   Frm_Usr.PC1.ActivePageIndex:=1;
   usr_ori:='Frm_Ped_Autop';
   if Frm_Usr.ShowModal=mrok then
      begin
      CODTLV.Text:=DM4.Tb_UsrCODUSR.AsString;
      end;
   Frm_Usr.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Ped_AutoP.CB_BLQPRMEnter(Sender: TObject);
begin
if CB_BLQPRM.Checked then
   ant_integer:=0
else
   ant_integer:=1;

end;

procedure TFrm_Ped_AutoP.CB_BLQPRMExit(Sender: TObject);
begin
if (CB_BLQPRM.Checked) and (ant_integer=1) then
   fped01reatribuir(0)
else if not (CB_BLQPRM.Checked) and (ant_integer=0) then
   fped01reatribuir(0);
IF CB_BLQPRM.Checked then
   begin
   st_prompad.Visible:=true;
   PROMOCAO.Visible  :=true;
   end
else
   begin
   st_prompad.Visible:=false;
   PROMOCAO.Visible  :=false;
   end;

end;

procedure TFrm_Ped_AutoP.CB_BLQPRMClick(Sender: TObject);
begin
IF CB_BLQPRM.Checked then
   begin
   st_prompad.Visible:=true;
   PROMOCAO.Visible  :=true;
   end
else
   begin
   st_prompad.Visible:=false;
   PROMOCAO.Visible  :=false;
   end;

end;


function TFrm_Ped_AutoP.fped01reatribuir(ptipo: Integer): Boolean;
begin
Frm_Ped_AutoP.Tb_Ped02.First;
While not Frm_Ped_AutoP.Tb_Ped02.Eof do
   begin
   mPromocao:='';
   if Frm_Ped_AutoP.Tb_Ped02P2CODPRO.IsNull then
      begin
      Frm_Ped_AutoP.Tb_Ped02.Next;
      Continue;
      end;
   if Frm_Ped_AutoP.RG_TPPCO.ItemIndex=2 then
      begin
      Frm_Ped_AutoP.Tb_Ped02.Next;
      Continue;
      end;
   if not flcadpro(1,0,0,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString) then
      begin
      Frm_Ped_AutoP.Tb_Ped02.Next;
      Continue;
      end;
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      if not flcadlgc(1,0,Frm_Ped_AutoP.Tb_Ped02P2CODPRO.AsString,Frm_Ped_AutoP.Tb_Ped02P2LOTE.AsString,'') then
         begin
         Frm_Ped_AutoP.Tb_Ped02.Next;
         Continue;
         end;
      end;
   if not (Tb_Ped02.State in [dsEdit,dsInsert]) then
      Tb_Ped02.Edit;
   if RG_TPPCO.ItemIndex<>2 then
      begin
      mpreco:=fbuscarPreco(0);
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value:=mpreco;
      end;
   if (mpvtpdesf=1) or ((CB_TABPV.Text='PP') and (DM1.Tb_PVPVPPORI.Value=1))then
      if not flcadfor(1,0,DM1.Tb_ProPDCODFOR.AsString) then
         flcadfor(0,0,'');

   if mpvtpd1=0 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=mpvdes1
   else if mpvtpd1=1 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_ProPDDESC1.Value
   else if mpvtpd1=2 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_CliCDESC.Value
   else if mpvtpd1=3 then
      DBG_Mercad.Columns[mColDesc01].ReadOnly:=false
   else if mpvtpd1=4 then
       begin
       if DM1.Tb_ProPDSTATUS02.Value=7 then
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S7.Value
       else if DM1.Tb_ProPDSTATUS02.Value=6 then
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S6.Value
       else if DM1.Tb_ProPDSTATUS02.Value=5 then
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S5.Value
       else if DM1.Tb_ProPDSTATUS02.Value=4 then
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S4.Value
       else if DM1.Tb_ProPDSTATUS02.Value=3 then
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S3.Value
       else if DM1.Tb_ProPDSTATUS02.Value=2 then
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S2.Value
       else if DM1.Tb_ProPDSTATUS02.Value=1 then
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S1.Value
       else
          Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM1.Tb_PVPVD1S0.Value;
       end;


   if mpvtpd2=0 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=mpvdes2
   else if mpvtpd2=1 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_ProPDDESC2.Value
   else if mpvtpd2=3 then
      begin
      if DM1.Tb_ProPDSTATUS02.Value=7 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S7.Value
      else if DM1.Tb_ProPDSTATUS02.Value=6 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S6.Value
      else if DM1.Tb_ProPDSTATUS02.Value=5 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S5.Value
      else if DM1.Tb_ProPDSTATUS02.Value=4 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S4.Value
      else if DM1.Tb_ProPDSTATUS02.Value=3 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S3.Value
      else if DM1.Tb_ProPDSTATUS02.Value=2 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S2.Value
      else if DM1.Tb_ProPDSTATUS02.Value=1 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S1.Value
      else
         Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM1.Tb_PVPVD2S0.Value;
      end;

   if mpvtpd3=0 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=mpvdes3
   else if mpvtpd3=1 then
      Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_ProPDDESC3.Value
   else if mpvtpd3=3 then
      begin
      if DM1.Tb_ProPDSTATUS02.Value=7 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S7.Value
      else if DM1.Tb_ProPDSTATUS02.Value=6 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S6.Value
      else if DM1.Tb_ProPDSTATUS02.Value=5 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S5.Value
      else if DM1.Tb_ProPDSTATUS02.Value=4 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S4.Value
      else if DM1.Tb_ProPDSTATUS02.Value=3 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S3.Value
      else if DM1.Tb_ProPDSTATUS02.Value=2 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S2.Value
      else if DM1.Tb_ProPDSTATUS02.Value=1 then
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S1.Value
      else
         Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM1.Tb_PVPVD3S0.Value;
      end;

   if mpvtc=0 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_ProPDCOMIS.Value
   else if mpvtc=1 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=mpvcom
   else if mpvtc=2 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_VenVCOMIS.Value
   else if mpvtc=3 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_CliCCOMIS.Value
   else if mpvtc=4 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_UFPCOMIS.Value
   else if mpvtc=5 then
      begin
      DBG_Mercad.Columns[mColComis].ReadOnly     :=false;
      DBG_Servicos.Columns[mColCom_Serv].ReadOnly:=false;
      end
   else if mpvtc=6 then
      Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=mpvcom
   else if mpvtc=7 then
      begin
      if RG_TPPCO.itemindex=3 then
         begin
         if DM1.Tb_PargerPPCOGRA.Value=1 then
            Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=DM1.Tb_LGCCLPRECO1.Value-mpreco
         else
            Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=DM1.Tb_ProPDPRECO1.Value-mpreco;
         Try
         if DM1.Tb_PargerPPCOGRA.Value=1 Then
            Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value*100)/DM1.Tb_LGCCLPRECO1.Value
         else
            Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value*100)/DM1.Tb_ProPDPRECO1.Value;
         except
            Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=0;
            end;
         end
      else
         begin
         Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=100-(100*Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value/100);
         Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value-
                                             (Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value
                                              *Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value/100);
         Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value
                                             -(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value
                                              *Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value/100);
         Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value:=100-Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value;
         end;
      if flcadcomd(0,0,IntToStr(Round(Frm_Ped_AutoP.Tb_Ped02P2DESCM.Value))) then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_ComDCDCOMIS.Value
      else
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=0;
      end
   else if mpvtc=8 then
      begin
      if DM1.Tb_ProPDSTATUS02.Value=7 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS7.Value
      else if DM1.Tb_ProPDSTATUS02.Value=6 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS6.Value
      else if DM1.Tb_ProPDSTATUS02.Value=5 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS5.Value
      else if DM1.Tb_ProPDSTATUS02.Value=4 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS4.Value
      else if DM1.Tb_ProPDSTATUS02.Value=3 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS3.Value
      else if DM1.Tb_ProPDSTATUS02.Value=2 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS2.Value
      else if DM1.Tb_ProPDSTATUS02.Value=1 then
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS1.Value
      else
         Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM1.Tb_PVPVCMS0.Value;
      end;

   if mpvtpdesf=0 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_ProPDDESFIN.Value
   else if mpvtpdesf=1 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_ForFDESCFINV.Value
   else if mpvtpdesf=2 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_ForFDESCFINV.Value
   else if mpvtpdesf=3 then
      Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=mpvdescf
   else if mpvtpdesf=4 then
      begin
      if (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value>=DM1.Tb_PVPVDF01A.Value) and
         (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value<=DM1.Tb_PVPVDF01B.Value) then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF01.Value;

      if (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value>=DM1.Tb_PVPVDF02A.Value) and
         (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value<=DM1.Tb_PVPVDF02B.Value) then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF02.Value;


      if (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value>=DM1.Tb_PVPVDF03A.Value) and
         (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value<=DM1.Tb_PVPVDF03B.Value) then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF03.Value;

      if (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value>=DM1.Tb_PVPVDF04A.Value) and
         (Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value<=DM1.Tb_PVPVDF04B.Value) then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDF04.Value;
      end
   else if mpvtpdesf=5 then
      begin
      if DM1.Tb_ProPDSTATUS02.Value=7 then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS7.Value
      else if DM1.Tb_ProPDSTATUS02.Value=6 then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS6.Value
      else if DM1.Tb_ProPDSTATUS02.Value=5 then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS5.Value
      else if DM1.Tb_ProPDSTATUS02.Value=4 then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS4.Value
      else if DM1.Tb_ProPDSTATUS02.Value=3 then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS3.Value
      else if DM1.Tb_ProPDSTATUS02.Value=2 then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS2.Value
      else if DM1.Tb_ProPDSTATUS02.Value=1 then
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS1.Value
      else
         Frm_Ped_AutoP.Tb_Ped02P2PDESCF.Value:=DM1.Tb_PVPVDFS0.Value;
     end;
   if (CB_BLQPRM.Checked) and (Trim(PROMOCAO.Text)<>'') then
      begin
      if flcadppr(0,0,0,trim(PROMOCAO.Text),DM1.Tb_ProPDCODPRO.AsString) then
         begin
         While not DM2.Tb_PPR.Eof do
            begin
            if (fsonumero(DM2.Tb_PPRPPPVTAB.Value)=fsonumero(CODPV.Text)) and
               (DM2.Tb_PPRPPPVTIP.Value=CB_TABPV.Text) and
               (DM2.Tb_PPRPPCODRED.Value=DM1.Tb_CliCCODRED.Value) then
               begin
               mPromocao:=DM2.Tb_PPRPPPROMOCAO.Value;
               mpreco   :=DM2.Tb_PPRPPPCOVDA.Value;
               if DM2.Tb_PPRPPDESC_1.Value>0 then
                  Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM2.Tb_PPRPPDESC_1.Value;
               if DM2.Tb_PPRPPDESC_2.Value>0 then
                  Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM2.Tb_PPRPPDESC_2.Value;
               if DM2.Tb_PPRPPDESC_3.Value>0 then
                  Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM2.Tb_PPRPPDESC_3.Value;
               if DM2.Tb_PPRPPCOMIS.Value>0 then
                  Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM2.Tb_PPRPPCOMIS.Value;
               Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value:=mpreco;
               Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO.Value:=mPromocao;
               break;
               end;
            DM2.Tb_PPR.Next;
            end;
         if trim(mPromocao)='' then
            begin
            DM2.Tb_PPR.First;
            While not DM2.Tb_PPR.Eof do
               begin
               if (fsonumero(DM2.Tb_PPRPPPVTAB.Value)=fsonumero(CODPV.Text)) and
                  (DM2.Tb_PPRPPPVTIP.Value=CB_TABPV.Text) then
                  begin
                  mPromocao:=DM2.Tb_PPRPPPROMOCAO.Value;
                  mpreco   :=DM2.Tb_PPRPPPCOVDA.Value;
                  if DM2.Tb_PPRPPDESC_1.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM2.Tb_PPRPPDESC_1.Value;
                  if DM2.Tb_PPRPPDESC_2.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM2.Tb_PPRPPDESC_2.Value;
                  if DM2.Tb_PPRPPDESC_3.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM2.Tb_PPRPPDESC_3.Value;
                  if DM2.Tb_PPRPPCOMIS.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM2.Tb_PPRPPCOMIS.Value;
                  Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value    :=mpreco;
                  Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO.Value :=mPromocao;
                  break;
                  end;
                  DM2.Tb_PPR.Next;
               end;
            if trim(mPromocao)='' then
               begin
               DM2.Tb_PPR.First;
               if not DM2.Tb_PPR.Eof then
                  begin
                  mPromocao:=DM2.Tb_PPRPPPROMOCAO.Value;
                  mpreco   :=DM2.Tb_PPRPPPCOVDA.Value;
                  if DM2.Tb_PPRPPDESC_1.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value:=DM2.Tb_PPRPPDESC_1.Value;
                  if DM2.Tb_PPRPPDESC_2.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value:=DM2.Tb_PPRPPDESC_2.Value;
                  if DM2.Tb_PPRPPDESC_3.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value:=DM2.Tb_PPRPPDESC_3.Value;
                  if DM2.Tb_PPRPPCOMIS.Value>0 then
                     Frm_Ped_AutoP.Tb_Ped02P2PCOMIS.Value:=DM2.Tb_PPRPPCOMIS.Value;
                  Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value    :=mpreco;
                  Frm_Ped_AutoP.Tb_Ped02P2PROMOCAO.Value :=mPromocao;
                  end;
               end;
            end;
         end;
      end;

   if RG_TPPCO.ItemIndex=3 then
      Frm_Ped_AutoP.Tb_Ped02P2PRECO.Value:=fpcoliq(0,mpreco,Frm_Ped_AutoP.Tb_Ped02P2DESC1.Value,
                                                     Frm_Ped_AutoP.Tb_Ped02P2DESC2.Value,
                                                     Frm_Ped_AutoP.Tb_Ped02P2DESC3.Value);
   end;
fcalcular(0);
result:=true;
end;


function TFrm_Ped_AutoP.fPed01AtribuirPv(ptipo: Integer): Boolean;
begin
flcadpv(1,0,CB_TABPV.Text,CODpv.Text);
if DM1.Tb_PV.Eof then
   begin
   CB_TABPV.Text:='';
   CODPV.Text   :='';
   result:=True;
   exit;
   end;
mpacreconv:=0;
if CB_TABPV.Text='CV' then
   begin
   if DM1.Tb_CliCCODCV.Value<=0 then
      begin
      CB_TABPV.Text:='';
      CODPV.Text   :='';
      result:=True;
      exit;
      end;
   if flqr1('CVRAZAO,CVACFIN','CV','CADCV','N','CVCODCV',DM1.Tb_CliCCODCV.AsString) then
       mpacreconv:=DM1.Query1.Fields[1].AsFloat;
   end;

NOMPV.Text:=DM1.Tb_PVPVNOME.Value;
mpvtdc       := DM1.Tb_PVPVTPDC.AsInteger;
mpvtc        := DM1.Tb_PVPVTPC.AsInteger;
mpvtpd1      := DM1.Tb_PVPVTPD1.AsInteger;
mpvtpd2      := DM1.Tb_PVPVTPD2.AsInteger;
mpvtpd3      := DM1.Tb_PVPVTPD3.AsInteger;
mpvtpdesf    := DM1.Tb_PVPVTPDESF.AsInteger;
mtpp         := DM1.Tb_PVPVTPP.AsInteger;
mpvcom       := DM1.Tb_PVPVCOM.Value;
mpvcom02     := DM1.Tb_PVPVCOM02.Value;
mpvcom03     := DM1.Tb_PVPVCOM03.Value;
mpvcom04     := 0;
mpvactd      := DM1.Tb_PVPVACTD.Value;
mpvact00     := DM1.Tb_PVPVACT00.Value;
mpvact01     := DM1.Tb_PVPVACT01.Value;
mpvact99     := DM1.Tb_PVPVACT99.Value;
mpvdes       := DM1.Tb_PVPVDES.Value;
mpvdes1      := DM1.Tb_PVPVDES1.Value;
mpvdes2      := DM1.Tb_PVPVDES2.Value;
mpvdes3      := DM1.Tb_PVPVDES3.Value;
mpvdescf     := DM1.Tb_PVPVDESCF.Value;
mpvddescf    := DM1.Tb_PVPVDDESCF.AsInteger;
mpvdiasdescf := DM1.Tb_PVPVDIASDESCF.AsInteger;
Frm_PVO.Tb_Po99.Close;
Frm_PVO.Tb_Po99.SQL.Clear;
Frm_PVO.Tb_Po99.SQL.add('Select PV2CODEMP as POCODEMP, '
                       +' PV2PRAZO as POPRAZO from CADPV2 '
                       +' where '
                       +iif(DM1.Qr_Tid.Locate('TINOME','CADPV',[]),'',' PV2CODEMP=0'+IntToStr(codemp)+' and ')
                       +' PV2CODTIP='+chr(39)+DM1.Tb_PVPVCODTIP.Value+chr(39)
                       +' and PV2CODPV=0'+DM1.Tb_PVPVCODPV.AsString
                       +' order by PV2PRAZO');
Frm_PVO.Tb_Po99.Open;
if mpvtdc=0 then
   DESC01.Text:=FormatFloat(mcasas, mpvdes)
else if mpvtdc=1 then
   DESC01.Text:=FormatFloat(mcasas, DM1.Tb_CliCDESC.Value);
if mpvtc=5 then
   begin
   DBG_Mercad.Columns[mColComis].ReadOnly     :=false;
   DBG_Servicos.Columns[mColCom_Serv].ReadOnly:=false;
   end
else
   begin
   DBG_Mercad.Columns[mColComis].ReadOnly     :=true;
   DBG_Servicos.Columns[mColCom_Serv].ReadOnly:=true;
   end;
result:=True;
end;

procedure TFrm_Ped_AutoP.CODCLIEnter(Sender: TObject);
begin
if Trim(NOMCLI.Text)<>'' then
   ant_integer:=ValInt(CODCLI.Text);

end;

procedure TFrm_Ped_AutoP.CODVENEnter(Sender: TObject);
begin
if trim(NOMVEN.Text)<>'' then
   ant_integer:=ValInt(CODVEN.Text);

end;

procedure TFrm_Ped_AutoP.CB_TABPVEnter(Sender: TObject);
begin
if (trim(ant_codpv)='') and (Trim(CB_TABPV.Text)<>'') and (ValInt(CODPV.Text)>0) and (Trim(NOMPV.Text)<>'') then
   ant_codpv:=Trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text));

end;

procedure TFrm_Ped_AutoP.CODPVEnter(Sender: TObject);
begin
if (trim(ant_codpv)='') and (Trim(CB_TABPV.Text)<>'') and (ValInt(CODPV.Text)>0) and (Trim(NOMPV.Text)<>'') then
   ant_codpv:=Trim(CB_TABPV.Text)+FormatFloat('0000',ValFloat(CODPV.Text));

end;

procedure TFrm_Ped_AutoP.RG_TPPCOEnter(Sender: TObject);
begin
ant_integer:=RG_TPPCO.ItemIndex;

end;

procedure TFrm_Ped_AutoP.RG_TPPCOExit(Sender: TObject);
begin
if RG_TPPCO.ItemIndex<>ant_integer then
   begin
   if not fValidaSenha(codusr,21,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração do Tipo de Preço Padrão','') then
      begin
      verteclado(0);
      MessageDlg('Alteração não Aceita!',mtWarning,[mbOk],0);
      RG_TPPCO.ItemIndex:=ant_integer;
      exit;
      end;
   end;
if RG_TPPCO.ItemIndex=2 then
   begin
   DBG_Mercad.Columns[mColPU].ReadOnly       :=false;
   DBG_Servicos.Columns[mColPU_Serv].ReadOnly:=false;
   end
else
   begin
   DBG_Mercad.Columns[mColPU].ReadOnly       :=true;
   DBG_Servicos.Columns[mColPU_Serv].ReadOnly:=true;
   end;
if RG_TPPCO.ItemIndex=1 then
   begin
   Application.CreateForm(TFrm_DtReaj, Frm_DtReaj);
   Frm_DtReaj.MDATAREAJ.Text:=FormatDateTime('dd/mm/yyyy',Date-30);
   Frm_DtReaj.ShowModal;
   mdtreaj:=StrToDate(Frm_DtReaj.MDATAREAJ.Text);
   Frm_DtReaj.Free;
   end;
if (DM1.Tb_PargerPPPADATU.Value=0) and (RG_TPPCO.ItemIndex<>ant_integer) then
   fped01reatribuir(0);

end;

procedure TFrm_Ped_AutoP.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Con, Frm_Con);
   Frm_Con.Edit1.Text:=key;
   Frm_Con.BBnAtu.Click;
   Frm_Con.Edit1.SelStart:=1;
   Frm_Con.Edit1.SelLength:=1;
   Frm_Con.PC1.ActivePageIndex:=1;
   con_ori:='Frm_Cli';
   if Frm_Con.ShowModal=mrok then
      begin
      CODCV.Text:=DM1.Tb_CVCVCODCV.AsString;
      end;
   Frm_Con.Free;
   key:=#0;
   end;

end;

procedure TFrm_Ped_AutoP.CODCVExit(Sender: TObject);
begin
CODCV.Text:=fdeixanum2(CODCV.Text);
NOMCON.Text:='';
if trim(CODCV.Text)<>'' then
   begin
   if not flqr1('CVRAZAO','CV','CADCV','N','CVCODCV',CODCV.Text) then
      begin
      verteclado(1);
      MessageDlg('Convenio não Cadastrado!',mtWarning,[mbok],0);
      CODCV.SetFocus;
      exit;
      end
   else
      NOMCON.Text:=dm1.Query1.Fields[0].AsString;
   end;
 end;

procedure TFrm_Ped_AutoP.NAUTExit(Sender: TObject);
begin
if length(PROMOCAO.Text)>10 then
   PROMOCAO.Text:=copy(PROMOCAO.Text,1,10);

end;

procedure TFrm_Ped_AutoP.DATVISExit(Sender: TObject);
begin
if Trim(DATVIS.Text)<>'/  /' then
   begin
   Try
      DATVIS.Text:=FormatDateTime(fdt2,StrToDate(DATVIS.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      DATVIS.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Ped_AutoP.NUMVISExit(Sender: TObject);
begin
if (length(NUMVIS.Text)>19) then
   NUMVIS.Text:=copy(NUMVIS.Text,1,20);

end;

procedure TFrm_Ped_AutoP.PCOMISExit(Sender: TObject);
begin
PCOMIS.Text:=FormatFloat(mcasas,ValFloat(PCOMIS.Text));
if ValFloat(PCOMIS.Text)>99 then
   begin
   verteclado(0);
   MessageDlg('Percentual de Comissão Invalido!',mtWarning,[mbOk],0);
   PCOMIS.Text:='';
   PCOMIS.SetFocus;
   end;

end;

procedure TFrm_Ped_AutoP.CODBCOExit(Sender: TObject);
begin
if ValFloat(CODBCO.Text)=0 then
   CODBCO.Text:='';
if (trim(CODBCO.Text)='') then
   begin
   NOMBCO.Text:='Carteira';
   exit;
   end;
if not flcadbco(1,0,0,CODBCO.Text) then
   begin
   verteclado(0);
   MessageDlg('Banco nao Cadastrado!',mtWarning,[mbOk],0);
   CODBCO.SetFocus;
   end
else
   NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
fPed01tarban(0);

end;

procedure TFrm_Ped_AutoP.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Bco, Frm_Bco);
   Frm_Bco.Edit1.Text:=key;
   Frm_Bco.BBnAtu.Click;
   Frm_Bco.Edit1.SelStart:=1;
   Frm_Bco.Edit1.SelLength:=1;
   Frm_Bco.PC1.ActivePage:=Frm_Bco.tsTab;
   bco_ori:='Frm_Ped';
   if Frm_Bco.ShowModal=mrok then
      begin
      CODBCO.Text:=DM1.Tb_BcoBCCODBCO.AsString;
      end;
   Frm_Bco.Free;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Ped_AutoP.CODTRAEnter(Sender: TObject);
begin
ant_integer:=ValInt(CODTRA.Text);

end;

procedure TFrm_Ped_AutoP.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
NOMTRA.Text:='';
if trim(CODTRA.Text)<>'' then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      verteclado(0);
      MessageDlg('Transportadora não Cadastrada!',mtWarning,[mbOk],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;
if ant_integer>0 then
   begin
   if ValInt(CODTRA.Text)<>ant_integer then
      begin
      if not fValidaSenha(codusr,33,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha para Confirmar a alteração da Transportadora','') then
         begin
         verteclado(0);
         MessageDlg('Alteração não Aceita!',mtWarning,[mbOk],0);
         CODTRA.Text:=IntToStr(ant_integer);
         exit;
         end;
      end;
   end;

end;

procedure TFrm_Ped_AutoP.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Tra, Frm_Tra);
   Frm_Tra.Edit1.Text:=key;
   Frm_Tra.BBnAtu.Click;
   Frm_Tra.Edit1.SelStart:=1;
   Frm_Tra.Edit1.SelLength:=1;
   Frm_Tra.PC1.ActivePageIndex:=1;
   Tra_Ori:='Frm_Ped';
   if Frm_Tra.ShowModal=mrok then
      CODTRA.Text:=DM1.Tb_TraTRCODTRA.AsString;
   Frm_Tra.Free;
   key:=#0;
   end;


end;

procedure TFrm_Ped_AutoP.MINUTAExit(Sender: TObject);
begin
if ValFloat(MINUTA.Text)<0 then
   MINUTA.Text:='0';
MINUTA.Text:=FormatFloat('0',fsonumero(MINUTA.Text));
if ValFloat(MINUTA.Text)>99999999 then
   begin
   verteclado(0);
   MessageDlg('Valor não Suportado!',mtInformation,[mbOk],0);
   MINUTA.SetFocus;
   end;

end;

procedure TFrm_Ped_AutoP.VALSEGExit(Sender: TObject);
begin
VALSEG.Text:=insere(FormatFloat(mcasas,ValFloat(VALSEG.Text)),' ',pspapco);
if ValFloat(VALSEG.Text)>9999999 then
   begin
   verteclado(0);
   MessageDlg('Campo Valor do Frete muito grande!',mtWarning,[mbOk],0);
   VALSEG.SetFocus;
   exit;
   end;
Tool_Calcular.Click;

end;

procedure TFrm_Ped_AutoP.PREVENTExit(Sender: TObject);
begin
if Trim(PREVENT.Text)<>'/  /' then
   begin
   Try
      PREVENT.Text:=FormatDatetime(fdt2,StrtoDate(PREVENT.Text));
   except
      verteclado(0);
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      PREVENT.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Ped_AutoP.HPREVENTExit(Sender: TObject);
begin
if Trim(HPREVENT.Text)<>':' then
   begin
   Try
      HPREVENT.Text:=FormatDateTime(fhr,StrToTime(HPREVENT.Text));
   except
      verteclado(0);
      MessageDlg('Hora Inválida!',mtWarning,[mbOk],0);
      HPREVENT.SetFocus;
      exit;
      end;
   end;


end;

procedure TFrm_Ped_AutoP.PEDORI1Exit(Sender: TObject);
begin
if (length(PEDORI1.Text)>59) then
   PEDORI1.Text:=copy(PEDORI1.Text,1,60);

end;

procedure TFrm_Ped_AutoP.PEDORI2Exit(Sender: TObject);
begin
if (length(PEDORI2.Text)>59) then
   PEDORI2.Text:=copy(PEDORI2.Text,1,60);

end;

procedure TFrm_Ped_AutoP.DGRAVARClick(Sender: TObject);
var
mqtd,x: Integer;
begin
if Trim(DCHAVE.Text)='' then
   begin
   verteclado(0);
   MessageDLG('Favor digitar uma chave válida',mtWarning,[mbOk],0);
   DCHAVE.SetFocus;
   exit;
   end;

for x:=1 to STG_DEV.RowCount-1 do
   begin
   if Trim(STG_DEV.Cells[0,x])='' then
      continue;
   if (fsonumero(DCODEMP.Text)=fsonumero(STG_DEV.Cells[0,x])) and
      (fsonumero(DLOTSEQ.Text)=fsonumero(STG_DEV.Cells[1,x])) and
      (fsonumero(DCHAVE.Text) =fsonumero(STG_DEV.Cells[2,x])) and
      (fsonumero(DORDEM.Text) =fsonumero(STG_DEV.Cells[3,x])) then
      begin
      verteclado(0);
      MessageDlg('Esta Chave Produto já foi digitada!',mtWarning,[mbOk],0);
      exit;
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select P1DATAP from CADP01 where ');
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.Add('P1CODEMP=0'+Trim(DCODEMP.Text)+' and ');
DM1.Query1.SQL.Add(' P1LOTSEQ=0'+Trim(DLOTSEQ.Text));
DM1.Query1.SQL.Add(' and P1CHAVE=0'+Trim(DCHAVE.Text));
DM1.Query1.SQL.Add(' and P1ORDEM=0'+Trim(DORDEM.Text));
DM1.Query1.Open;
if DM1.Query1.Eof then
   begin
   verteclado(0);
   MessageDLG('Chave não Encontrada!',mtWarning,[mbOk],0);
   DCHAVE.SetFocus;
   exit;
   end;
mqtd:=STG_DEV.RowCount;
if mop_origemd>0 then
   begin
   mqtd:=STG_DEV.row;
   mqtd:=mqtd+1;
   end
else
   begin
   mqtd:=STG_DEV.RowCount;
   STG_DEV.RowCount:=mqtd+1;
   STG_DEV.Rows[mqtd+1].Clear;
   STG_DEV.Rows[mqtd].Clear;
   end;
STG_DEV.Cells[0,mqtd-1]:=DCODEMP.Text;
STG_DEV.Cells[1,mqtd-1]:=DLOTSEQ.Text;
STG_DEV.Cells[2,mqtd-1]:=DCHAVE.Text;
STG_DEV.Cells[3,mqtd-1]:=DORDEM.Text;
STG_DEV.Cells[4,mqtd-1]:=FormatDateTime(fdt2,DM1.Query1.fields[0].AsDateTime);
DCHAVE.Text:='';
DORDEM.Text:='';
DDATAP.Text:='/  /';
DCHAVE.SetFocus;



end;

procedure TFrm_Ped_AutoP.DEDITARClick(Sender: TObject);
begin
if (Tb_Ped02.RecordCount>0) then
   begin
   verteclado(0);
   MessageDlg('Para Editar a chave de origem não pode haver produto digitado',mtWarning,[mbOk],0);
   exit;
   end;
if (Tb_Ped02s.RecordCount>0) then

   begin
   verteclado(0);
   MessageDlg('Para Editar a chave de origem não pode haver serviço digitado',mtWarning,[mbOk],0);
   exit;
   end;

mop_origemd:=1;
DCODEMP.Text:=STG_DEV.Cells[0,STG_DEV.Row];
DLOTSEQ.Text:=STG_DEV.Cells[1,STG_DEV.Row];
DCHAVE.Text :=STG_DEV.Cells[2,STG_DEV.Row];
DORDEM.Text :=STG_DEV.Cells[3,STG_DEV.Row];
DDATAP.Text :=STG_DEV.Cells[4,STG_DEV.Row];
DCHAVE.SetFocus;

end;

procedure TFrm_Ped_AutoP.DCANCELARClick(Sender: TObject);
begin
DCHAVE.Text:='';
DORDEM.Text:='';
DDATAP.Text:='/  /';
DCHAVE.SetFocus;

end;

procedure TFrm_Ped_AutoP.DEXCLUIRClick(Sender: TObject);
var
mqtd,x: Integer;
begin
mqtd:=STG_DEV.Row;
if (STG_DEV.Cells[0,1]='') or (STG_DEV.Cells[0,mqtd]='') then
   exit;

if (Tb_Ped02.RecordCount>0) then
   begin
   verteclado(0);
   MessageDlg('Para Excluir a chave de origem não pode haver produto digitado',mtWarning,[mbOk],0);
   exit;
   end;
if (Tb_Ped02s.RecordCount>0) then

   begin
   verteclado(0);
   MessageDlg('Para Excluir a chave de origem não pode haver serviço digitado',mtWarning,[mbOk],0);
   exit;
   end;


verteclado(0);
if Application.MessageBox('Quer realmente excluir o item selecionado?',' ',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

if STG_DEV.RowCount=2 then
   begin
   STG_DEV.Rows[1].Clear;
   STG_DEV.Rows[2].Clear;
   end
else
   begin
   for x:=STG_DEV.Row to STG_DEV.RowCount-2 do
      begin
      STG_DEV.Cells[00,x]:=STG_DEV.Cells[00,x+1];
      STG_DEV.Cells[01,x]:=STG_DEV.Cells[01,x+1];
      STG_DEV.Cells[02,x]:=STG_DEV.Cells[02,x+1];
      STG_DEV.Cells[03,x]:=STG_DEV.Cells[03,x+1];
      STG_DEV.Cells[04,x]:=STG_DEV.Cells[04,x+1];
      end;
    end;
STG_DEV.RowCount:=STG_DEV.RowCount-1;


end;

procedure TFrm_Ped_AutoP.SAIRClick(Sender: TObject);
begin
if CB_PEDORI.Checked then
   begin
   if not fValidaSenha(codusr,30,0,DM1.Tb_CliCCODCLI.Value,0,0,0, 'Senha de Confirmação do Pedido de Devolução sem nota de Origem','') then
      exit;
      end;
if CB_PEDORI.Checked then
   begin
   STG_DEV.RowCount:=2;
   STG_DEV.Rows[1].Clear;
   STG_DEV.Rows[2].Clear;
   end;
pc_Cabecalho.ActivePage:=ts_principais;
CODCLI.SetFocus;

end;

procedure TFrm_Ped_AutoP.DCODEMPExit(Sender: TObject);
begin
DCODEMP.Text:=fdeixanum2(DCODEMP.Text);
end;

procedure TFrm_Ped_AutoP.DLOTSEQExit(Sender: TObject);
begin
DLOTSEQ.Text:=fdeixanum2(DLOTSEQ.Text);
end;

procedure TFrm_Ped_AutoP.DCHAVEExit(Sender: TObject);
begin
DCHAVE.Text:=fdeixanum2(DCHAVE.Text);
end;

procedure TFrm_Ped_AutoP.DORDEMEnter(Sender: TObject);
begin
DORDEM.Text:=fdeixanum2(DORDEM.Text);
end;

procedure TFrm_Ped_AutoP.DATACHEGExit(Sender: TObject);
begin
if Trim(DATACHEG.Text)<>'/  /' then
   begin
   Try
      DATACHEG.Text:=FormatDatetime(fdt2,StrtoDate(DATACHEG.Text));
   except
      verteclado(0);
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      DATACHEG.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Ped_AutoP.HORACHEGExit(Sender: TObject);
begin
if Trim(HORACHEG.Text)<>':' then
   begin
   Try
      HORACHEG.Text:=FormatDateTime(fhr,StrToTime(HORACHEG.Text));
   except
      verteclado(0);
      MessageDlg('Hora Inválida!',mtWarning,[mbOk],0);
      HORACHEG.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Ped_AutoP.CODSEPExit(Sender: TObject);
begin
CODSEP.Text:=fdeixanum2(CODSEp.Text);
NOMSEP.Text:='';
if trim(CODSEP.Text)<>'' then
   begin
   if not flcadusr(1,0,CODSEP.Text) then
      begin
      verteclado(0);
      MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
      CODSEP.SetFocus;
      end
   else
      NOMSEP.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;

end;

procedure TFrm_Ped_AutoP.CODSEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Usr, Frm_Usr);
   Frm_Usr.Edit1.Text:=key;
   Frm_Usr.BBnAtu.Click;
   Frm_Usr.Edit1.SelStart:=1;
   Frm_Usr.Edit1.SelLength:=1;
   Frm_Usr.PC1.ActivePageIndex:=1;
   usr_ori:='Frm_Ped';
   if Frm_Usr.ShowModal=mrok then
      begin
      CODSEP.Text:=DM4.Tb_UsrCODUSR.AsString;
      end;
   Frm_Usr.Free;
   key:=#0;
   end;


end;

procedure TFrm_Ped_AutoP.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
NOMCON.Text:='';
if trim(CODCON.Text)<>'' then
   begin
   if not flcadusr(1,0,CODCON.Text) then
      begin
      verteclado(0);
      MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
      CODCON.SetFocus;
     end
   else
      NOMCON.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;

end;

procedure TFrm_Ped_AutoP.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Usr, Frm_Usr);
   Frm_Usr.Edit1.Text:=key;
   Frm_Usr.BBnAtu.Click;
   Frm_Usr.Edit1.SelStart:=1;
   Frm_Usr.Edit1.SelLength:=1;
   Frm_Usr.PC1.ActivePageIndex:=1;
   usr_ori:='Frm_Ped';
   if Frm_Usr.ShowModal=mrok then
      begin
      CODCON.Text:=DM4.Tb_UsrCODUSR.AsString;
      end;
   Frm_Usr.Free;
   key:=#0;
   end;


end;

procedure TFrm_Ped_AutoP.CODEMBExit(Sender: TObject);
begin
CODEMB.Text:=fdeixanum2(CODEMB.Text);
NOMEMB.Text:='';
if trim(CODEMB.Text)<>'' then
   begin
   if not flcadusr(1,0,CODEMB.Text) then
      begin
      verteclado(0);
      MessageDlg('Usuário não Cadastrado!',mtWarning,[mbOk],0);
      CODEMB.SetFocus;
      end
   else
      NOMEMB.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;

end;

procedure TFrm_Ped_AutoP.CODEMBKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   Application.CreateForm(Tfrm_Usr, Frm_Usr);
   Frm_Usr.Edit1.Text:=key;
   Frm_Usr.BBnAtu.Click;
   Frm_Usr.Edit1.SelStart:=1;
   Frm_Usr.Edit1.SelLength:=1;
   Frm_Usr.PC1.ActivePageIndex:=1;
   usr_ori:='Frm_Ped';
   if Frm_Usr.ShowModal=mrok then
      begin
      CODEMB.Text:=DM4.Tb_UsrCODUSR.AsString;
      end;
   Frm_Usr.Free;
   key:=#0;
   end;


end;

end.
