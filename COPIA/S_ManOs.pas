unit S_ManOs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Mask, Grids,db,dbtables,
  func,S_DM1,lerarq,S_Cli,S_Ven,S_Pro,S_ConsOS,func2,S_Impres,S_ManOs_SerAlt,
  S_DM2,S_Fun, S_PedCli,s_lerarq_geral, DBClient,S_Vendas_GravarPedido;

type
  TFrm_ManOs = class(TForm)
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBFATURAR: TBitBtn;
    BBSAIR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    DATASAI: TMaskEdit;
    Label11: TLabel;
    DATAENT: TMaskEdit;
    Label10: TLabel;
    NOMAUT: TEdit;
    Label8: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    CHAVE: TEdit;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    ENDERECO: TEdit;
    CIDADE: TEdit;
    NOMVEN: TEdit;
    CODVEN: TEdit;
    Label9: TLabel;
    DATAAUT: TMaskEdit;
    RG_OPER: TRadioGroup;
    CEP: TEdit;
    Label7: TLabel;
    Label5: TLabel;
    BAIRRO: TEdit;
    MDATA: TMaskEdit;
    Label2: TLabel;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    OBSL01: TEdit;
    OBSL02: TEdit;
    OBSL03: TEdit;
    OBSL04: TEdit;
    DEFRECL: TMemo;
    Panel4: TPanel;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    OS2CODPRO: TEdit;
    OS2NOMPRO: TEdit;
    Label15: TLabel;
    OS2MODELO: TEdit;
    Label16: TLabel;
    OS2MARCA: TEdit;
    Label17: TLabel;
    OS2SERIE: TEdit;
    Label18: TLabel;
    OS2NUMPAT: TEdit;
    OS2_GRAVAR: TBitBtn;
    OS2_EDITAR: TBitBtn;
    OS2_CANCELAR: TBitBtn;
    OS2_EXCLUIR: TBitBtn;
    STGOS2: TStringGrid;
    Label19: TLabel;
    OS2UND: TEdit;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    OS5CODSER: TEdit;
    OS5NOMSER: TEdit;
    OS5QTD: TEdit;
    OS5PCOUNIT: TEdit;
    OS5DESC01: TEdit;
    OS5_GRAVAR: TBitBtn;
    OS5_EDITAR: TBitBtn;
    OS5_CANCELAR: TBitBtn;
    OS5_EXCLUIR: TBitBtn;
    OS5UND: TEdit;
    STGOS5: TStringGrid;
    OS5VT: TEdit;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    OS4CODPRO: TEdit;
    OS4NOMPRO: TEdit;
    OS4QTD: TEdit;
    OS4PCOUNIT: TEdit;
    OS4DESC01: TEdit;
    OS4_GRAVAR: TBitBtn;
    OS4_EDITAR: TBitBtn;
    OS4_CANCELAR: TBitBtn;
    OS4_EXCLUIR: TBitBtn;
    OS4UND: TEdit;
    OS4VT: TEdit;
    STGOS4: TStringGrid;
    GroupBox4: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    OS3CODPRO: TEdit;
    OS3NOMPRO: TEdit;
    OS3QTD: TEdit;
    OS3_GRAVAR: TBitBtn;
    OS3_EDITAR: TBitBtn;
    OS3_CANCELAR: TBitBtn;
    OS3_EXCLUIR: TBitBtn;
    OS3UND: TEdit;
    STGOS3: TStringGrid;
    Label34: TLabel;
    QTDEQUI: TStaticText;
    Label35: TLabel;
    QTDSERV: TStaticText;
    Label36: TLabel;
    QTDPEC: TStaticText;
    QTDACES: TStaticText;
    Label38: TLabel;
    Label39: TLabel;
    VLPECAS: TStaticText;
    Label40: TLabel;
    VLSERV: TStaticText;
    TOTAL: TStaticText;
    Label41: TLabel;
    Qr_Os01: TQuery;
    Qr_Os01OS1CODEMP: TFloatField;
    Qr_Os01OS1LOTSEQ: TFloatField;
    Qr_Os01OS1CHAVE: TFloatField;
    Qr_Os01OS1DATA: TDateTimeField;
    Qr_Os01OS1DATAAUT: TDateTimeField;
    Qr_Os01OS1DATADEV: TDateTimeField;
    Qr_Os01OS1DATAENT: TDateTimeField;
    Qr_Os01OS1CODCLI: TFloatField;
    Qr_Os01OS1CODVEN: TFloatField;
    Qr_Os01OS1OPER: TFloatField;
    Qr_Os01OS1DEFREC: TBlobField;
    Qr_Os01OS1OBS01: TStringField;
    Qr_Os01OS1OBS02: TStringField;
    Qr_Os01OS1OBS03: TStringField;
    Qr_Os01OS1OBS04: TStringField;
    Qr_Os01OS1STATUS: TFloatField;
    Qr_Os01OS1LOTSEQ_CP: TFloatField;
    Qr_Os01OS1CHAVEPED: TFloatField;
    Qr_Os01CRAZAO: TStringField;
    Qr_Os01CLOG: TStringField;
    Qr_Os01CBAIRRO: TStringField;
    Qr_Os01CCIDADE: TStringField;
    Qr_Os01CUF: TStringField;
    Qr_Os01CCEP: TStringField;
    Qr_Os01OS1TOTAL: TFloatField;
    Qr_Os02: TQuery;
    Qr_Os02OS2CODEMP: TFloatField;
    Qr_Os02OS2LOTSEQ: TFloatField;
    Qr_Os02OS2CHAVE: TFloatField;
    Qr_Os02OS2ITEM: TFloatField;
    Qr_Os02OS2CODPRO: TFloatField;
    Qr_Os02OS2MODELO: TStringField;
    Qr_Os02OS2MARCA: TStringField;
    Qr_Os02OS2SERIE: TStringField;
    Qr_Os02OS2NUMPAT: TStringField;
    Qr_Os02PDNOME: TStringField;
    Qr_Os02PDUND: TStringField;
    Qr_Os05: TQuery;
    Qr_Os05OS5CODEMP: TFloatField;
    Qr_Os05OS5LOTSEQ: TFloatField;
    Qr_Os05OS5CHAVE: TFloatField;
    Qr_Os05OS5ITEM: TFloatField;
    Qr_Os05OS5CODPRO: TFloatField;
    Qr_Os05OS5QTD: TFloatField;
    Qr_Os05OS5PU: TFloatField;
    Qr_Os05OS5DESC01: TFloatField;
    Qr_Os05OS5TOTDES: TFloatField;
    Qr_Os05PDNOME: TStringField;
    Qr_Os05PDUND: TStringField;
    Qr_Os04: TQuery;
    Qr_Os04OS4CODEMP: TFloatField;
    Qr_Os04OS4LOTSEQ: TFloatField;
    Qr_Os04OS4CHAVE: TFloatField;
    Qr_Os04OS4ITEM: TFloatField;
    Qr_Os04OS4CODPRO: TFloatField;
    Qr_Os04OS4QTD: TFloatField;
    Qr_Os04OS4PU: TFloatField;
    Qr_Os04OS4DESC01: TFloatField;
    Qr_Os04OS4TOTDES: TFloatField;
    Qr_Os04PDNOME: TStringField;
    Qr_Os04PDUND: TStringField;
    Qr_Os03: TQuery;
    Qr_Os03OS3CODEMP: TFloatField;
    Qr_Os03OS3LOTSEQ: TFloatField;
    Qr_Os03OS3CHAVE: TFloatField;
    Qr_Os03OS3ITEM: TFloatField;
    Qr_Os03OS3CODPRO: TFloatField;
    Qr_Os03OS3QTD: TFloatField;
    Qr_Os03PDNOME: TStringField;
    Qr_Os03PDUND: TStringField;
    Qr_Os01nomven: TStringField;
    DESCPEC: TStaticText;
    Label42: TLabel;
    Label43: TLabel;
    DESCSERV: TStaticText;
    Label44: TLabel;
    TOTBRU: TStaticText;
    Qr_Os01OS1TOTSER: TFloatField;
    Qr_Os01OS1DESCSER: TFloatField;
    Qr_Os01OS1TOTPEC: TFloatField;
    Qr_Os01OS1DESCPEC: TFloatField;
    Qr_Os01OS1ESTREG: TFloatField;
    Qr_Os01OS1DATALT: TDateTimeField;
    Qr_Os01OS1CODUSR: TFloatField;
    Qr_Os01OS1NOMEAUT: TStringField;
    Qr_Os01OS1NOMSOL: TStringField;
    Qr_Os02OS2OBS01: TStringField;
    Qr_Os02OS2OBS02: TStringField;
    NOMSOL: TEdit;
    Label45: TLabel;
    Label46: TLabel;
    OS2OBS01: TEdit;
    OS2OBS02: TEdit;
    Qr_Os01CFAX: TStringField;
    Qr_Os01CCPF: TFloatField;
    Qr_Os01CCNPJ: TFloatField;
    Qr_Os01CIE: TStringField;
    Qr_Os01CRG: TStringField;
    Qr_Os05D: TQuery;
    Qr_Os05DOS5DCODEMP: TFloatField;
    Qr_Os05DOS5DLOTSEQ: TFloatField;
    Qr_Os05DOS5DCHAVE: TFloatField;
    Qr_Os05DOS5DITEM: TFloatField;
    Qr_Os05DOS5DCODPRO: TFloatField;
    Qr_Os05DOS5DLINHA: TFloatField;
    Qr_Os05DOS5DDESC: TStringField;
    bbAltDesSer: TBitBtn;
    Label47: TLabel;
    CODTEC: TEdit;
    NOMTEC: TEdit;
    Qr_Os01OS1CODTEC: TFloatField;
    Qr_Os01nomtec: TStringField;
    Label48: TLabel;
    HORAENT: TMaskEdit;
    HORASAI: TMaskEdit;
    Label49: TLabel;
    Qr_Os01OS1HORADEV: TStringField;
    Qr_Os01OS1HORAENT: TStringField;
    Label50: TLabel;
    CHAVEPED: TEdit;
    bbImportaPed: TBitBtn;
    Label51: TLabel;
    cb_status: TComboBox;
    bbBaixar: TBitBtn;
    Qr_Os01CFONE01: TStringField;
    OS5DESCVLR: TEdit;
    Qr_Os01CDENOM: TStringField;
    Qr_Os01OS1DESCBAIXA: TMemoField;
    tb_ped02_pre: TClientDataSet;
    tb_ped02_preP2ICMS_PERC: TFloatField;
    tb_ped02_preP2ICMS_PPRED: TFloatField;
    tb_ped02_preP2ICMSSN_PERC: TFloatField;
    tb_ped02_preP2ST_IVA: TFloatField;
    tb_ped02_preP2ST_REDUT: TFloatField;
    tb_ped02_preP2ST_ICMSCRED: TFloatField;
    tb_ped02_preP2ST_ICMSDEB: TFloatField;
    tb_ped02_preP2MODBCST: TIntegerField;
    tb_ped02_preP2IPI_PERC: TFloatField;
    tb_ped02_preP2CST: TStringField;
    tb_ped02_preP2CSOSN_ORI: TIntegerField;
    tb_ped02_preP2CSOSN: TIntegerField;
    tb_ped02_preP2PIS_PERC: TFloatField;
    tb_ped02_preP2CST_PIS: TStringField;
    tb_ped02_preP2CST_COFINS: TStringField;
    tb_ped02_preP2COFINS_PERC: TFloatField;
    tb_ped02_preP2CONTESP: TIntegerField;
    tb_ped02_preP2CODPRO: TFloatField;
    tb_ped02_preP2ICMS_PPRED_101: TFloatField;
    tb_ped02_preP2ST_IVA_101: TFloatField;
    tb_ped02_preP2ST_REDUT_101: TFloatField;
    tb_ped02_preP2ST_ICMSCRED_101: TFloatField;
    tb_ped02_preP2ST_ICMSDEB_101: TFloatField;
    tb_ped02_preP2MODBCST_101: TFloatField;
    tb_ped02_preP2CFOP_ECF: TIntegerField;
    tb_ped02_preP2CFOP_NF: TIntegerField;
    tb_ped02_preP2PRECO_MAXCONS: TFloatField;
    tb_ped02_preP2QTD: TFloatField;
    tb_ped02_preP2CODEMP: TIntegerField;
    tb_ped02_preP2LOTSEQ: TIntegerField;
    tb_ped02_preP2CHAVE: TIntegerField;
    tb_ped02_preP2ORDEM: TIntegerField;
    tb_ped02_preP2PRECO: TFloatField;
    tb_ped02_preP2ITEM: TIntegerField;
    tb_ped02_preP2CONS_PROPRIO: TIntegerField;
    tb_ped02_prePDNOME: TStringField;
    tb_ped02_preP2DESCPR: TFloatField;
    tb_ped02_preP2PCOMIS: TFloatField;
    tb_ped02_preP2CODVEN: TFloatField;
    tb_ped02_preP2CST_IPI: TStringField;
    tb_ped02_preP2DESCFIN_PERC: TFloatField;
    tb_ped02_preP2AMBIENTE: TStringField;
    tb_ped02_preP2DESC_COMP: TStringField;
    tb_ped02_preP2PROMOCAO: TStringField;
    tb_ped02_preP2DESC_PERC01: TFloatField;
    tb_ped02_preP2DESC_PERC02: TFloatField;
    tb_ped02_preP2DESC_PERC03: TFloatField;
    tb_ped02_preP2VALDES: TFloatField;
    tb_ped02_preP2TIPO_PCO: TIntegerField;
    tb_ped02_preP2ICMS_ALIPI: TFloatField;
    tb_ped02_preP2ALIQICMSDES: TFloatField;
    tb_ped02_preP2ALIQAPROXTRIB: TFloatField;
    tb_ped02s_pre: TClientDataSet;
    tb_ped02s_preP2SCODEMP: TIntegerField;
    tb_ped02s_preP2SCHAVE: TIntegerField;
    tb_ped02s_preP2SCHAVE_ANO: TIntegerField;
    tb_ped02s_preP2SITEM: TIntegerField;
    tb_ped02s_preP2SCODSER: TFloatField;
    tb_ped02s_preP2SQTD: TFloatField;
    tb_ped02s_preP2SPDESC01: TFloatField;
    tb_ped02s_preP2SPDESC02: TFloatField;
    tb_ped02s_preP2SPDESC03: TFloatField;
    tb_ped02s_preP2SPRECO: TStringField;
    tb_ped02s_preP2SDESC_COMP: TStringField;
    tb_ped02s_preP2SCST: TStringField;
    tb_ped02s_preP2SCSOSN: TFloatField;
    tb_ped02s_preP2SBCISSQN: TFloatField;
    tb_ped02s_preP2SVISSQN: TFloatField;
    tb_ped02s_preP2SALIQISSQN: TFloatField;
    tb_ped02s_preP2SSITUACAO: TFloatField;
    tb_ped02s_preP2SPCOTAB: TFloatField;
    tb_ped02s_preP2SPCOCUS: TFloatField;
    tb_ped02s_preP2STOTDES: TFloatField;
    tb_ped02s_preP2SDESCRAT: TFloatField;
    tb_ped02s_preP2SDESCFIN_PERC: TFloatField;
    tb_ped02s_preP2SDESCFIN_VALOR: TFloatField;
    tb_ped02s_preP2SBCINSS: TFloatField;
    tb_ped02s_preP2SPREDINSS: TFloatField;
    tb_ped02s_preP2SVREDINSS: TFloatField;
    tb_ped02s_preP2SPREDIRRF: TFloatField;
    tb_ped02s_preP2SVREDIRRF: TFloatField;
    tb_ped02s_preP2SALIQIRRF: TFloatField;
    tb_ped02s_preP2SCFOP_NF: TFloatField;
    tb_ped02s_preP2SCFOP_ECF: TFloatField;
    tb_ped02s_preP2SCODVEN: TFloatField;
    tb_ped02s_prePDNOME: TStringField;
    tb_ped02s_prePDUND: TStringField;
    tb_ped02s_preP2SCSOSN_ORI2: TFloatField;
    tb_ped02s_preVALOR_TOTAL2: TFloatField;
    tb_ped02s_preP2SALIQINSS: TFloatField;
    tb_ped02_preP2COMPRA_NITEMPED: TIntegerField;
    tb_ped02_preP2COMPRA_XPED: TStringField;
    cds_aliquotas: TClientDataSet;
    cds_aliquotastipo_reg: TIntegerField;
    cds_aliquotasal_tabicm: TStringField;
    cds_aliquotasal_aliqredut: TFloatField;
    cds_aliquotasal_IcmsTrib: TFloatField;
    cds_aliquotasal_icmsRet: TIntegerField;
    cds_aliquotasal_stIcmsCred: TFloatField;
    cds_aliquotasal_stIcmsDeb: TFloatField;
    cds_aliquotasal_stIVA_Ina: TFloatField;
    cds_aliquotasal_stIVA_Neg: TFloatField;
    cds_aliquotasCfo_Indus_Ret: TIntegerField;
    cds_aliquotasCfo_Indus_Trib: TIntegerField;
    cds_aliquotasCfo_Indus_Isento: TIntegerField;
    cds_aliquotasCfo_rev_Ret: TIntegerField;
    cds_aliquotasCfo_rev_Trib: TIntegerField;
    cds_aliquotasCfo_rev_Isento: TIntegerField;
    cds_aliquotasCfo_SubEcf_Ret: TIntegerField;
    cds_aliquotasCfo_SubEcf_Trib: TIntegerField;
    cds_aliquotasCfo_SubEcf_Isento: TIntegerField;
    cds_aliquotasal_cofins: TFloatField;
    cds_aliquotasmodBcST: TIntegerField;
    cds_aliquotasal_stAliqRed: TFloatField;
    cds_aliquotasal_inss: TFloatField;
    cds_aliquotasal_inss_pred: TFloatField;
    cds_aliquotasal_irrf: TFloatField;
    cds_aliquotasal_irrf_pred: TFloatField;
    cds_aliquotasal_repasse: TFloatField;
    cds_aliquotasal_issqn: TFloatField;
    cds_aliquotascfo_servico: TIntegerField;
    cds_aliquotasal_pis: TFloatField;
    cds_aliquotasal_credsn: TFloatField;
    cds_aliquotasal_stIVA_Pos: TFloatField;
    cds_aliquotasal_combate_pobreza: TFloatField;
    cds_aliquotasal_icmscred_destino: TFloatField;
    cds_aliquotasal_icms_destino: TFloatField;
    Label52: TLabel;
    CB_MODELO: TComboBox;
    Qr_Os01OS1NUMRAT: TStringField;
    Label53: TLabel;
    edt_numrat: TEdit;
    tsMaisInfo: TTabSheet;
    gb_maisinfo: TGroupBox;
    Qr_Os01OS1PORTPAROVMOD: TStringField;
    Qr_Os01OS1NUMIMMETRO: TStringField;
    Qr_Os01OS1NUMMARCSELRET: TStringField;
    Qr_Os01OS1NUMMARCREPRET: TStringField;
    Qr_Os01OS1NUMMARCSELAFIX: TStringField;
    Qr_Os01OS1NUMMARCREPAFIX: TStringField;
    Label54: TLabel;
    edt_OS1PORTPAROVMOD: TEdit;
    Label55: TLabel;
    edt_OS1NUMIMMETRO: TEdit;
    Label56: TLabel;
    edt_OS1NUMMARCSELRET: TEdit;
    Label57: TLabel;
    edt_OS1NUMMARCREPAFIX: TEdit;
    edt_OS1NUMMARCSELAFIX: TEdit;
    Label58: TLabel;
    edt_OS1NUMMARCREPRET: TEdit;
    Label59: TLabel;
    OS4DESCVLR: TEdit;
    Qr_Os04total_liquido: TFloatField;
    tb_ped02_preP2CPUFDEST: TFloatField;
    tb_ped02_preP2ICMSUFDEST: TFloatField;
    tb_ped02_preP2ICMSINTER: TFloatField;
    tb_ped02_preP2ICMSINTERPART: TFloatField;
    tb_ped02_preP2CEST: TStringField;
    tb_ped02_preP2PERCDESC_AUT_CODUSR: TFloatField;
    tb_ped02_preP2PERCDESC_AUT_DATHOR: TDateTimeField;
    tb_ped02_preP2PERCDESC_AUT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure DATAAUTExit(Sender: TObject);
    procedure DATAENTExit(Sender: TObject);
    procedure DATASAIExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure NOMAUTExit(Sender: TObject);
    procedure NOMAUTKeyPress(Sender: TObject; var Key: Char);
    procedure OS2MODELOExit(Sender: TObject);
    procedure OS2MARCAExit(Sender: TObject);
    procedure OS2SERIEExit(Sender: TObject);
    procedure OS2NUMPATExit(Sender: TObject);
    procedure OS2MODELOKeyPress(Sender: TObject; var Key: Char);
    procedure OS2MARCAKeyPress(Sender: TObject; var Key: Char);
    procedure OS2SERIEKeyPress(Sender: TObject; var Key: Char);
    procedure OS2NUMPATKeyPress(Sender: TObject; var Key: Char);
    procedure BBSAIRClick(Sender: TObject);
    procedure OS2CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure OS2CODPROExit(Sender: TObject);
    procedure OS5CODSERKeyPress(Sender: TObject; var Key: Char);
    procedure OS4CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure OS3CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure OS5CODSERExit(Sender: TObject);
    procedure OS4CODPROExit(Sender: TObject);
    procedure OS3CODPROExit(Sender: TObject);
    procedure OS2_GRAVARClick(Sender: TObject);
    procedure OS5_GRAVARClick(Sender: TObject);
    procedure OS4_GRAVARClick(Sender: TObject);
    procedure OS3_GRAVARClick(Sender: TObject);
    procedure OS2_EDITARClick(Sender: TObject);
    procedure OS2_CANCELARClick(Sender: TObject);
    procedure OS2_EXCLUIRClick(Sender: TObject);
    procedure OS5QTDExit(Sender: TObject);
    procedure OS5PCOUNITExit(Sender: TObject);
    procedure OS5DESC01Exit(Sender: TObject);
    procedure OS5_EDITARClick(Sender: TObject);
    procedure OS5_CANCELARClick(Sender: TObject);
    procedure OS5_EXCLUIRClick(Sender: TObject);
    procedure OS4_EDITARClick(Sender: TObject);
    procedure OS4_CANCELARClick(Sender: TObject);
    procedure OS4_EXCLUIRClick(Sender: TObject);
    procedure OS3QTDExit(Sender: TObject);
    procedure OS3_EDITARClick(Sender: TObject);
    procedure OS3_CANCELARClick(Sender: TObject);
    procedure OS3_EXCLUIRClick(Sender: TObject);
    procedure OS4QTDExit(Sender: TObject);
    procedure OS4PCOUNITExit(Sender: TObject);
    procedure OS4DESC01Exit(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure Qr_Os01CalcFields(DataSet: TDataSet);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure NOMSOLExit(Sender: TObject);
    procedure NOMSOLKeyPress(Sender: TObject; var Key: Char);
    procedure OS2OBS01KeyPress(Sender: TObject; var Key: Char);
    procedure OS2OBS01Exit(Sender: TObject);
    procedure OS2OBS02Exit(Sender: TObject);
    procedure OS2OBS02KeyPress(Sender: TObject; var Key: Char);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbAltDesSerClick(Sender: TObject);
    procedure BBFATURARClick(Sender: TObject);
    procedure CODTECExit(Sender: TObject);
    procedure CODTECKeyPress(Sender: TObject; var Key: Char);
    procedure HORAENTExit(Sender: TObject);
    procedure HORASAIExit(Sender: TObject);
    procedure OBSL01Exit(Sender: TObject);
    procedure OBSL02Exit(Sender: TObject);
    procedure OBSL03Exit(Sender: TObject);
    procedure OBSL04Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CHAVEPEDExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OS5CODSEREnter(Sender: TObject);
    procedure OS4CODPROEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbImportaPedClick(Sender: TObject);
    procedure bbBaixarClick(Sender: TObject);
    procedure OS5DESCVLRExit(Sender: TObject);
    procedure CB_MODELOClick(Sender: TObject);
    procedure OS4DESCVLRExit(Sender: TObject);
    procedure Qr_Os04CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function fManOsTotais(pTipo: Integer): Boolean;
    function leros01(pcodemp, plotseq,pchave: Real): Boolean;
    function fLerOsDetalhe(ptipo: Integer;pcodemp, plotseq,pchave: Real): Boolean;
    function fManOs01gant(ptipo: Integer): Boolean;
    function fexcluir(ptipo: Integer):Boolean;
    function fgravarOS(ptipo: Integer): Boolean;
    function fGravarOS01(ptipo,pcodemp:Integer):Boolean;
    function fManOS1Imprime(ptipo: Integer): Boolean;

    function fManos01ImprimeLaser(ptipo: Integer): Boolean;

    function fManOS1ImpCab(ptipo: Integer): Boolean;
    function fManos01TestaPag(ptipo: Integer): Boolean;
    function fOs01lerant(ptipo: Integer):Boolean;
    function fFaturarPedido_ultimo(pTipo: Integer):Boolean;
  public
    { Public declarations }
    form_Impres_ManOs: TFrm_Impres;
    form_PedCli_ped_02                   : TFrm_PedCli;

    mInclusaoAutomatica: Boolean;
  end;

function fMan01restaura(ptipo: Integer): Boolean;

var
  Frm_ManOs  : TFrm_ManOs;
  mOpOs2     : Integer=0;
  mOpOs5     : Integer=0;
  mOpOs4     : Integer=0;
  mOpOs3     : Integer=0;
  mItem      : Integer=0;
  mManOs_Oper: Integer=0;
  mchaveos     : Integer;
  mQtd       : Integer;
  mlin       : Integer=0;
  mPag       : Integer=0;
  os_origem  : String;
  os5Ser_ant : Integer;
  os4Pro_ant : Integer;
  
implementation

uses S_Agde, S_DM3, func_excecoes, S_DM4, s_manos_relatorio;

{$R *.dfm}

procedure TFrm_ManOs.FormCreate(Sender: TObject);
begin
os_origem:='';
Application.CreateForm(TFrm_ManOS_SerAlt, Frm_ManOS_SerAlt);
STGOS2.RowCount:=2;
STGOS2.Rows[1].Clear;
STGOS2.Cells[00,00]:='Código';
STGOS2.Cells[01,00]:='Descrição';
STGOS2.Cells[02,00]:='Unid';
STGOS2.Cells[03,00]:='Modelo';
STGOS2.Cells[04,00]:='Marca';
STGOS2.Cells[05,00]:='Número Série';
STGOS2.Cells[06,00]:='Número Patrimonial';
STGOS2.Cells[07,00]:='Observações Linha 01';
STGOS2.Cells[08,00]:='Observações Linha 02';

STGOS5.RowCount:=2;
STGOS5.Rows[1].Clear;
STGOS5.Cells[00,00]:='Código';
STGOS5.Cells[01,00]:='Descrição';
STGOS5.Cells[02,00]:='Unid';
STGOS5.Cells[03,00]:='Quantidade';
STGOS5.Cells[04,00]:='Pço.Unit.';
STGOS5.Cells[05,00]:='% Desc';
STGOS5.Cells[06,00]:='Vlr.Desconto';
STGOS5.Cells[07,00]:='Valor Total';
STGOS5.Cells[08,00]:='Descrição Anterior';

STGOS4.RowCount:=2;
STGOS4.Rows[1].Clear;
STGOS4.Cells[00,00]:='Código';
STGOS4.Cells[01,00]:='Descrição';
STGOS4.Cells[02,00]:='Unid';
STGOS4.Cells[03,00]:='Quantidade';
STGOS4.Cells[04,00]:='Pço.Unit.';
STGOS4.Cells[05,00]:='% Desc';
STGOS4.Cells[06,00]:='Vlr.Desconto';
STGOS4.Cells[07,00]:='Valor Total';


STGOS3.RowCount:=2;
STGOS3.Rows[1].Clear;
STGOS3.Cells[00,00]:='Código';
STGOS3.Cells[01,00]:='Descrição';
STGOS3.Cells[02,00]:='Unid';
STGOS3.Cells[03,00]:='Quantidade';
mInclusaoAutomatica:=false;

cds_aliquotas.CreateDataSet;
if flfilpad(-1,'_MANOS','MODELO') then
   CB_MODELO.ItemIndex:=ValInt(DM4.Tb_FilPad2FPVALOR.AsString);

end;

procedure TFrm_ManOs.MDATAExit(Sender: TObject);
begin
if Trim(MDATA.Text)<>'/  /' then
   begin
   try
      MDATA.Text:=FormatDateTime(fdt2, StrtoDate(MDATA.Text))
   except
      fMensagem('Data Inválida!',0,['0'],0);
      MDATA.SetFocus;
      end;
   end;
end;

procedure TFrm_ManOs.DATAAUTExit(Sender: TObject);
begin
if Trim(DATAAUT.Text)<>'/  /' then
   begin
   try
      DATAAUT.Text:=FormatDateTime(fdt2, StrtoDate(DATAAUT.Text))
   except
      fMensagem('Data Inválida!',0,['0'],0);
      DATAAUT.SetFocus;
      end;
   end;

end;

procedure TFrm_ManOs.DATAENTExit(Sender: TObject);
begin
if Trim(DATAENT.Text)<>'/  /' then
   begin
   try
      DATAENT.Text:=FormatDateTime(fdt2, StrtoDate(DATAENT.Text))
   except
      fMensagem('Data Inválida!',0,['0'],0);
      DATAENT.SetFocus;
      end;
   end;

end;

procedure TFrm_ManOs.DATASAIExit(Sender: TObject);
begin
if Trim(DATASAI.Text)<>'/  /' then
   begin
   try
      DATASAI.Text:=FormatDateTime(fdt2, StrtoDate(DATASAI.Text))
   except
      fMensagem('Data Inválida!',0,['0'],0);
      DATASAI.SetFocus;
      end;
   end;

end;

procedure TFrm_ManOs.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)=0 then
   begin
   CODCLI.Text:='';
   NOMCLI.Text:='';
   exit;
   end;

CODCLI.Text:=fdeixanum(CODCLI.Text);
if flcadcli(1,0,CODCLI.Text) then
   begin
   NOMCLI.Text  :=DM1.Tb_CliCRAZAO.Value;
   ENDERECO.Text:=DM1.Tb_CliCLOG.Value;
   BAIRRO.Text  :=DM1.Tb_CliCBAIRRO.Value;
   CIDADE.Text  :=Trim(DM1.Tb_CliCCIDADE.Value)+'-'+DM1.Tb_CliCUF.Value;
   CEP.Text     :=DM1.Tb_CliCCEP.Value;
   end
else
   begin
   fMensagem('Cliente não Cadastrado!',0,['0'],0);
   CODCLI.SetFocus;
   end;
end;

procedure TFrm_ManOs.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_ManOs',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManOs.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_ManOs',Key);
   if trim(CODVEN.Text)<>'' then
      CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManOs.CODVENExit(Sender: TObject);
begin
if ValFloat(CODVEN.Text)=0 then
   begin
   CODVEN.Text:='';
   NOMVEN.Text:='';
   exit;
   end;


CODVEN.Text:=fdeixanum(CODVEN.Text);
if flcadven(1,0,CODVEN.Text) then
   begin
   NOMVEN.Text  :=DM1.Tb_VenVNOME.Value;
   end
else
   begin
   fMensagem('Vendedor não Cadastrado!',0,['0'],0);
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   end;
end;

procedure TFrm_ManOs.NOMAUTExit(Sender: TObject);
begin
if not fTestaTam(0,40,NOMAUT.Text,'') then
   NOMAUT.Text:=copy(NOMAUT.Text,1,40);

end;

procedure TFrm_ManOs.NOMAUTKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,40,NOMAUT.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.OS2MODELOExit(Sender: TObject);
begin
if not fTestaTam(0,20,OS2MODELO.Text,'') then
   OS2MODELO.Text:=copy(OS2MODELO.Text,1,20);

end;

procedure TFrm_ManOs.OS2MARCAExit(Sender: TObject);
begin
if not fTestaTam(0,20,OS2MARCA.Text,'') then
   OS2MARCA.Text:=copy(OS2MARCA.Text,1,20);

end;

procedure TFrm_ManOs.OS2SERIEExit(Sender: TObject);
begin
if not fTestaTam(0,20,OS2SERIE.Text,'') then
   OS2SERIE.Text:=copy(OS2SERIE.Text,1,20);

end;

procedure TFrm_ManOs.OS2NUMPATExit(Sender: TObject);
begin
if not fTestaTam(0,20,OS2NUMPAT.Text,'') then
   OS2NUMPAT.Text:=copy(OS2NUMPAT.Text,1,20);

end;

procedure TFrm_ManOs.OS2MODELOKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,20,OS2MODELO.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.OS2MARCAKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,20,OS2MARCA.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.OS2SERIEKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,20,OS2SERIE.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.OS2NUMPATKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,20,OS2NUMPAT.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ManOs.OS2CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   OS2CODPRO.Text:=fChamaPro(0,'Frm_ManOs',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ManOs.OS2CODPROExit(Sender: TObject);
begin
OS2CODPRO.Text:=fdeixanum(OS2CODPRO.Text);
if ValFloat(OS2CODPRO.Text)<=0 then
   OS2CODPRO.Text:='';
if Trim(OS2CODPRO.Text)='' then
   exit;
if flcadpro(1,0,0,OS2CODPRO.Text) then
   begin
   OS2NOMPRO.Text  :=DM1.Tb_ProPDNOME.Value;
   OS2UND.Text     :=DM1.Tb_ProPDUND.Value;
   end
else
   begin
   if not mInclusaoAutomatica then
      begin
      fMensagem('Produto não Cadastrado!',0,['0'],0);
      OS2CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_ManOs.OS5CODSERKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   OS5CODSER.Text:=fChamaPro(0,'Frm_ManOs',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ManOs.OS4CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   OS4CODPRO.Text:=fChamaPro(0,'Frm_ManOs',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ManOs.OS3CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   OS3CODPRO.Text:=fChamaPro(0,'Frm_ManOs',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ManOs.OS5CODSERExit(Sender: TObject);
begin
OS5CODSER.Text:=fdeixanum(OS5CODSER.Text);
if os5Ser_ant<>fsonumero(OS5CODSER.Text) then
  begin
  if Trim(OS5CODSER.Text)='0' then
    begin
    OS5NOMSER.Clear;
    OS5QTD.Clear;
    OS5PCOUNIT.Clear;
    OS5DESC01.Clear;
    exit;
    end;
  if flcadpro(1,0,0,OS5CODSER.Text) then
    begin
    OS5NOMSER.Text  :=DM1.Tb_ProPDNOME.AsString;
    OS5UND.Text     :=DM1.Tb_ProPDUND.AsString;
    OS5PCOUNIT.Text :=DM1.Tb_ProPDPRECO1.AsString;
    end
  else
    begin
    if not mInclusaoAutomatica then
       begin
       fMensagem('Serviço não Cadastrado!',0,['0'],0);
       OS5CODSER.SetFocus;
       end;
    end;
  end;
if ValFloat(OS5QTD.Text)<=0 then
  OS5QTD.Text:=FormatFloat(mcasqtd, 1);
if ValFloat(OS5PCOUNIT.Text)<=0 then
  OS5PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
OS5VT.Text :=FormatFloat(mcasas, ValFloat(OS5QTD.Text)*ValFloat(OS5PCOUNIT.Text));
end;

procedure TFrm_ManOs.OS4CODPROExit(Sender: TObject);
begin
OS4CODPRO.Text:=fdeixanum(OS4CODPRO.Text);
if fsonumero(OS4CODPRO.Text)=0 then
   begin
   OS4NOMPRO.Clear;
   OS4QTD.Clear;
   OS4PCOUNIT.Clear;
   OS4DESC01.Clear;
   exit;
   end;

if os4Pro_ant<>fsonumero(OS4CODPRO.Text) then
  begin
  if flcadpro(1,0,0,OS4CODPRO.Text) then
    begin
    OS4NOMPRO.Text  :=DM1.Tb_ProPDNOME.Value;
    OS4UND.Text     :=DM1.Tb_ProPDUND.Value;
    end
  else
    begin
    if not mInclusaoAutomatica then
       begin
       fMensagem('Produto não Cadastrado!',0,['0'],0);
       OS4CODPRO.SetFocus;
       end;
    end;
  end;
if ValFloat(OS4QTD.Text)<=0 then
  OS4QTD.Text:=FormatFloat(mcasqtd, 1);
if ValFloat(OS4PCOUNIT.Text)<=0 then
  OS4PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
OS4VT.Text :=FormatFloat(mcasas, ValFloat(OS4QTD.Text)*ValFloat(OS4PCOUNIT.Text));
end;

procedure TFrm_ManOs.OS3CODPROExit(Sender: TObject);
begin
OS3CODPRO.Text:=fdeixanum(OS3CODPRO.Text);
if ValFloat(OS3CODPRO.Text)<=0 then
   OS3CODPRO.Text:='';
if Trim(OS3CODPRO.Text)='' then
   exit;

if flcadpro(1,0,0,OS3CODPRO.Text) then
   begin
   OS3NOMPRO.Text  :=DM1.Tb_ProPDNOME.Value;
   OS3UND.Text     :=DM1.Tb_ProPDUND.Value;
   end
else
   begin
   if not mInclusaoAutomatica then
      begin
      fMensagem('Produto não Cadastrado!',0,['0'],0);
      OS3CODPRO.SetFocus;
      end;
   end;
if ValFloat(OS3QTD.Text)<=0 then
   OS3QTD.Text:='1';
OS3QTD.Text:=FormatFloat(mcasqtd, ValFloat(OS3QTD.Text));

end;

procedure TFrm_ManOs.OS2_GRAVARClick(Sender: TObject);
begin
OS2CODPRO.Text:=fdeixanum(OS2CODPRO.Text);
if ValFloat(OS2CODPRO.Text)<=0 then
   OS2CODPRO.Text:='';
if not flcadpro(1,0,0,OS2CODPRO.Text) then
   begin
   if not mInclusaoAutomatica then
      begin
      fMensagem('Produto não Cadastrado!',0,['0'],0);
      OS2CODPRO.SetFocus;
      end;
   exit;
   end;

if mOpOs2>0 then
   begin
   mItem:=STGOS2.row;
   mItem:=mItem+1;
   end
else
   begin
   mItem:=STGOS2.RowCount;
   STGOS2.RowCount:=mItem+1;
   STGOS2.Rows[mItem+1].Clear;
   STGOS2.Rows[mItem].Clear;
   end;
mitem:=mitem-1;
STGOS2.Cells[00,mItem]:=OS2CODPRO.Text;
STGOS2.Cells[01,mItem]:=OS2NOMPRO.Text;
STGOS2.Cells[02,mItem]:=OS2UND.Text;
STGOS2.Cells[03,mItem]:=OS2MODELO.Text;
STGOS2.Cells[04,mItem]:=OS2MARCA.Text;
STGOS2.Cells[05,mItem]:=OS2SERIE.Text;
STGOS2.Cells[06,mItem]:=OS2NUMPAT.Text;
STGOS2.Cells[07,mItem]:=OS2OBS01.Text;
STGOS2.Cells[08,mItem]:=OS2OBS02.Text;
if mItem>4 then
   STGOS2.TopRow:=mItem-3;
OS2_CANCELAR.Click;
fManOsTotais(2);
if not mInclusaoAutomatica then
   OS2CODPRO.SetFocus;
mOpOs2:=0;



end;

procedure TFrm_ManOs.OS5_GRAVARClick(Sender: TObject);
var
y: Integer;
begin
OS5CODSER.Text:=fdeixanum(OS5CODSER.Text);

if OS5CODSER.Text='0' then
   begin
   if not mInclusaoAutomatica then
      begin
      fMensagem('Serviço não Cadastrado!',0,['0'],0);
      OS5CODSER.SetFocus;
      end;
   exit;
   end;

if not flcadpro(1,0,0,OS5CODSER.Text) then
   begin
   if not mInclusaoAutomatica then
      begin
      fMensagem('Serviço não Cadastrado!',0,['0'],0);
      OS5CODSER.SetFocus;
      end;
   exit;
   end;

if (DM1.Tb_ProPDNOME.Value<>OS5NOMSER.Text) and (Frm_ManOS_SerAlt.Memo1.Text='') then
   begin
   Frm_ManOS_SerAlt.Memo1.Text:=OS5NOMSER.Text;
   end;

if mOpOs5>0 then
   begin
   mItem:=STGOS5.row;
   mItem:=mItem+1;
   end
else
   begin
   mItem:=STGOS5.RowCount;
   STGOS5.RowCount:=mItem+1;
   STGOS5.Rows[mItem+1].Clear;
   STGOS5.Rows[mItem].Clear;
   end;
mitem:=mitem-1;
STGOS5.Cells[00,mItem]:=OS5CODSER.Text;
STGOS5.Cells[01,mItem]:='';

if Trim(Frm_ManOS_SerAlt.Memo1.Text)<>'' then
   begin
   STGOS5.Cells[08,mItem]:=OS5NOMSER.Text;
   for y:=0 to Frm_ManOS_SerAlt.Memo1.Lines.Count-1 do
      begin
      STGOS5.Cells[01,mitem]:= STGOS5.Cells[01,mitem]+insere2(Frm_ManOS_SerAlt.Memo1.Lines[y],' ',60);
      end;
   end
else
   begin
   STGOS5.Cells[01,mItem]:=OS5NOMSER.Text;
   STGOS5.Cells[08,mItem]:='';
   end;
STGOS5.Cells[02,mItem]:=OS5UND.Text;
STGOS5.Cells[03,mItem]:=OS5QTD.Text;
STGOS5.Cells[04,mItem]:=OS5PCOUNIT.Text;
STGOS5.Cells[05,mItem]:=OS5DESC01.Text;
STGOS5.Cells[06,mItem]:=FormatFloat(mcasas, ValFloat(OS5VT.Text)*ValFloat(OS5DESC01.Text)/100);
STGOS5.Cells[07,mItem]:=OS5VT.Text;

if mItem>4 then
   STGOS5.TopRow:=mItem-3;
OS5_CANCELAR.Click;
if not mInclusaoAutomatica then
   OS5CODSER.SetFocus;
fManOsTotais(5);

mOpOs5:=0;

end;

procedure TFrm_ManOs.OS4_GRAVARClick(Sender: TObject);
begin
OS4CODPRO.Text:=fdeixanum(OS4CODPRO.Text);
if not flcadpro(1,0,0,OS4CODPRO.Text) then
   begin
   if not mInclusaoAutomatica then
      begin
      fMensagem('Produto não Cadastrado!',0,['0'],0);
      OS4CODPRO.SetFocus;
      end;
   exit;
   end;
if mOpOs4>0 then
   begin
   mItem:=STGOS4.row;
   mItem:=mItem+1;
   end
else
   begin
   mItem:=STGOS4.RowCount;
   STGOS4.RowCount:=mItem+1;
   STGOS4.Rows[mItem+1].Clear;
   STGOS4.Rows[mItem].Clear;
   end;
mitem:=mitem-1;
STGOS4.Cells[00,mItem]:=OS4CODPRO.Text;
STGOS4.Cells[01,mItem]:=OS4NOMPRO.Text;
STGOS4.Cells[02,mItem]:=OS4UND.Text;
STGOS4.Cells[03,mItem]:=OS4QTD.Text;
STGOS4.Cells[04,mItem]:=OS4PCOUNIT.Text;
STGOS4.Cells[05,mItem]:=OS4DESC01.Text;
STGOS4.Cells[06,mItem]:=FormatFloat(mcasas, ValFloat(OS4DESCVLR.TEXT) );
STGOS4.Cells[07,mItem]:=OS4VT.Text;

if mItem>4 then
   STGOS4.TopRow:=mItem-3;
OS4_CANCELAR.Click;
if not mInclusaoAutomatica then
   OS4CODPRO.SetFocus;
fManOsTotais(4);

mOpOs4:=0;

end;

procedure TFrm_ManOs.OS3_GRAVARClick(Sender: TObject);
begin
OS3CODPRO.Text:=fdeixanum(OS3CODPRO.Text);
if ValFloat(OS3CODPRO.Text)<=0 then
   OS3CODPRO.Text:='';
if not flcadpro(1,0,0,OS3CODPRO.Text) then
   begin
   if not mInclusaoAutomatica then
      begin
      fMensagem('Produto não Cadastrado!',0,['0'],0);
      OS3CODPRO.SetFocus;
      end;
   exit;
   end;

if mOpOs3>0 then
   begin
   mItem:=STGOS3.row;
   mItem:=mItem+1;
   end
else
   begin
   mItem:=STGOS3.RowCount;
   STGOS3.RowCount:=mItem+1;
   STGOS3.Rows[mItem+1].Clear;
   STGOS3.Rows[mItem].Clear;
   end;
mitem:=mitem-1;
STGOS3.Cells[00,mItem]:=OS3CODPRO.Text;
STGOS3.Cells[01,mItem]:=OS3NOMPRO.Text;
STGOS3.Cells[02,mItem]:=OS3UND.Text;
STGOS3.Cells[03,mItem]:=OS3QTD.Text;
if mItem>4 then
   STGOS4.TopRow:=mItem-3;
OS3_CANCELAR.Click;
if not mInclusaoAutomatica then
   OS3CODPRO.SetFocus;
fManOsTotais(3);

end;

procedure TFrm_ManOs.OS2_EDITARClick(Sender: TObject);
begin
if (Trim(STGOS2.Cells[00,STGOS2.Row])='') or (STGOS2.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   exit;
   end;
OS2CODPRO.Text  :=STGOS2.Cells[00,STGOS2.Row];
OS2NOMPRO.Text  :=STGOS2.Cells[01,STGOS2.Row];
OS2UND.Text     :=STGOS2.Cells[02,STGOS2.Row];
OS2MODELO.Text  :=STGOS2.Cells[03,STGOS2.Row];
OS2MARCA.Text   :=STGOS2.Cells[04,STGOS2.Row];
OS2SERIE.Text   :=STGOS2.Cells[05,STGOS2.Row];
OS2NUMPAT.Text  :=STGOS2.Cells[06,STGOS2.Row];
OS2OBS01.Text   :=STGOS2.Cells[07,STGOS2.Row];
OS2OBS02.Text   :=STGOS2.Cells[08,STGOS2.Row];


mOpOs2:=1;

end;

procedure TFrm_ManOs.OS2_CANCELARClick(Sender: TObject);
begin
OS2CODPRO.Text  :='';
OS2NOMPRO.Text  :='';
OS2UND.Text     :='';
OS2MODELO.Text  :='';
OS2MARCA.Text   :='';
OS2SERIE.Text   :='';
OS2NUMPAT.Text  :='';
OS2OBS01.Text   :='';
OS2OBS02.Text   :='';
mOpOs2:=0;

end;

procedure TFrm_ManOs.OS2_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
if (Trim(STGOS2.Cells[00,STGOS2.Row])='') or (STGOS2.Row=0) then
   begin
   fMensagem('Favor Selecionar um ítem!',0,['0'],0);
   exit;
   end;
OS2CODPRO.Text  :=STGOS2.Cells[00,STGOS2.Row];
OS2NOMPRO.Text  :=STGOS2.Cells[01,STGOS2.Row];
OS2UND.Text     :=STGOS2.Cells[02,STGOS2.Row];
OS2MODELO.Text  :=STGOS2.Cells[03,STGOS2.Row];
OS2MARCA.Text   :=STGOS2.Cells[04,STGOS2.Row];
OS2SERIE.Text   :=STGOS2.Cells[05,STGOS2.Row];
OS2NUMPAT.Text  :=STGOS2.Cells[06,STGOS2.Row];
OS2OBS01.Text   :=STGOS2.Cells[07,STGOS2.Row];
OS2OBS02.Text   :=STGOS2.Cells[08,STGOS2.Row];

if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STGOS2.RowCount=2 then
   STGOS2.Rows[1].Clear
else
   begin
   for x:=STGOS2.Row to STGOS2.RowCount-2 do
      begin
      STGOS2.Cells[00,x]:=STGOS2.Cells[00,x+1];
      STGOS2.Cells[01,x]:=STGOS2.Cells[01,x+1];
      STGOS2.Cells[02,x]:=STGOS2.Cells[02,x+1];
      STGOS2.Cells[03,x]:=STGOS2.Cells[03,x+1];
      STGOS2.Cells[04,x]:=STGOS2.Cells[04,x+1];
      STGOS2.Cells[05,x]:=STGOS2.Cells[05,x+1];
      STGOS2.Cells[06,x]:=STGOS2.Cells[06,x+1];
      STGOS2.Cells[07,x]:=STGOS2.Cells[07,x+1];
      STGOS2.Cells[08,x]:=STGOS2.Cells[08,x+1];
      end;
   STGOS2.RowCount:=STGOS2.RowCount-1;
   end;
OS2_CANCELAR.Click;
fManOsTotais(2);

end;

procedure TFrm_ManOs.OS5QTDExit(Sender: TObject);
begin
if ValFloat(OS5QTD.Text)<=0 then
   OS5QTD.Text:='1';
OS5QTD.Text:=FormatFloat(mcasqtd, ValFloat(OS5QTD.Text));
if ValFloat(OS5PCOUNIT.Text)<=0 then
   OS5PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
OS5VT.Text :=FormatFloat(mcasas, ValFloat(OS5QTD.Text)*ValFloat(OS5PCOUNIT.Text));
OS5DESC01Exit(self);
end;

procedure TFrm_ManOs.OS5PCOUNITExit(Sender: TObject);
begin
if ValFloat(OS5QTD.Text)<=0 then
   OS5QTD.Text:=FormatFloat(mcasqtd, 1);
{
if ValFloat(OS5PCOUNIT.Text)<=0 then
   OS5PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
   }
OS5PCOUNIT.Text:=FormatFloat(mcasaspu, ValFloat(OS5PCOUNIT.Text));
OS5VT.Text :=FormatFloat(mcasas, ValFloat(OS5QTD.Text)*ValFloat(OS5PCOUNIT.Text));
OS5DESC01Exit(self);
end;

procedure TFrm_ManOs.OS5DESC01Exit(Sender: TObject);
begin
if ValFloat(OS5DESC01.Text)<=0 then
   OS5DESC01.Text:=FormatFloat(mcasqtd, 0);
{if ValFloat(OS5PCOUNIT.Text)<=0 then
   OS5PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
   }
if ValFloat(OS5DESC01.Text)>0 then
   begin
   OS5VT.Text :=FormatFloat(mcasas, ValFloat(OS5QTD.Text)*ValFloat(OS5PCOUNIT.Text));
   OS5DESCVLR.Text := FormatFloat(mcasas, ValFloat(OS5VT.Text)*ValFloat(OS5DESC01.Text)/100);
   end;
end;

procedure TFrm_ManOs.OS5_EDITARClick(Sender: TObject);
begin
if (Trim(STGOS5.Cells[00,STGOS5.Row])='') or (STGOS5.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   exit;
   end;
OS5CODSER.Text             :=STGOS5.Cells[00,STGOS5.Row];
OS5NOMSER.Text             :=STGOS5.Cells[01,STGOS5.Row];
OS5UND.Text                :=STGOS5.Cells[02,STGOS5.Row];
OS5QTD.Text                :=STGOS5.Cells[03,STGOS5.Row];
OS5PCOUNIT.Text            :=STGOS5.Cells[04,STGOS5.Row];
OS5DESC01.Text             :=STGOS5.Cells[05,STGOS5.Row];
OS5VT.Text                 :=STGOS5.Cells[07,STGOS5.Row];
if Trim(STGOS5.Cells[08,STGOS5.Row])<>'' then
   begin
   Frm_ManOS_SerAlt.Memo1.Text:=STGOS5.Cells[01,STGOS5.Row];
//   OS5NOMSER.Text             :=STGOS5.Cells[08,STGOS5.Row];
   end
else
   Frm_ManOS_SerAlt.Memo1.Text:='';
mOpOs5:=1;
end;

procedure TFrm_ManOs.OS5_CANCELARClick(Sender: TObject);
begin
OS5CODSER.Text             :='';
OS5NOMSER.Text             :='';
OS5UND.Text                :='';
OS5QTD.Text                :='';
OS5PCOUNIT.Text            :='';
OS5DESC01.Text             :='';
OS5VT.Text                 :='';
Frm_ManOS_SerAlt.Memo1.Text:='';
end;

procedure TFrm_ManOs.OS5_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
if (Trim(STGOS5.Cells[00,STGOS5.Row])='') or (STGOS5.Row=0) then
   begin
   fMensagem('Favor Selecionar um ítem!',0,['0'],0);
   exit;
   end;
OS5CODSER.Text             :=STGOS5.Cells[00,STGOS5.Row];
OS5NOMSER.Text             :=STGOS5.Cells[01,STGOS5.Row];
OS5UND.Text                :=STGOS5.Cells[02,STGOS5.Row];
OS5QTD.Text                :=STGOS5.Cells[03,STGOS5.Row];
OS5PCOUNIT.Text            :=STGOS5.Cells[04,STGOS5.Row];
OS5DESC01.Text             :=STGOS5.Cells[05,STGOS5.Row];
OS5VT.Text                 :=STGOS5.Cells[07,STGOS5.Row];
if Trim(STGOS5.Cells[08,STGOS5.Row])<>'' then
   begin
   Frm_ManOS_SerAlt.Memo1.Text:=STGOS5.Cells[01,STGOS5.Row];
   OS5NOMSER.Text             :=STGOS5.Cells[08,STGOS5.Row];
   end
else
   Frm_ManOS_SerAlt.Memo1.Text:='';
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STGOS5.RowCount=2 then
   STGOS5.Rows[1].Clear
else
   begin
   for x:=STGOS5.Row to STGOS5.RowCount-2 do
      begin
      STGOS5.Cells[00,x]:=STGOS5.Cells[00,x+1];
      STGOS5.Cells[01,x]:=STGOS5.Cells[01,x+1];
      STGOS5.Cells[02,x]:=STGOS5.Cells[02,x+1];
      STGOS5.Cells[03,x]:=STGOS5.Cells[03,x+1];
      STGOS5.Cells[04,x]:=STGOS5.Cells[04,x+1];
      STGOS5.Cells[05,x]:=STGOS5.Cells[05,x+1];
      STGOS5.Cells[06,x]:=STGOS5.Cells[06,x+1];
      STGOS5.Cells[07,x]:=STGOS5.Cells[07,x+1];
      STGOS5.Cells[08,x]:=STGOS5.Cells[08,x+1];
      end;
   STGOS5.RowCount:=STGOS5.RowCount-1;
   end;
OS5_CANCELAR.Click;
fManOsTotais(5);

end;

function TFrm_ManOs.fManOsTotais(pTipo: Integer): Boolean;
var
x: Integer;
mTotPecas, mTotServ: Real;
mDesc,mDescServ,mDescPec,mQtdEqui, mQtdServ, mQtdPec, mQtdAces: Real;

begin
mTotPecas :=0;
mTotServ  :=0;
mQtdEqui  :=0;
mQtdServ  :=0;
mQtdPec   :=0;
mQtdAces  :=0;
mDescServ :=0;
mDescPec  :=0;

mQtdEqui  :=STGOS2.RowCount-2;

for x:=1 to STGOS5.RowCount-1 do
   begin
   if Trim(STGOS5.Cells[0,x])='' then
      Continue;
   mQtdServ :=mQtdServ+ValFloat(STGOS5.Cells[03,x]);
   mDesc    :=ValFloat(STGOS5.Cells[06,x]);
   mDescServ:=mDescServ+mDesc;
   mTotServ :=mTotServ+(ValFloat(STGOS5.Cells[07,x]));
   end;

for x:=1 to STGOS4.RowCount-1 do
   begin
   if Trim(STGOS4.Cells[0,x])='' then
      Continue;
   mQtdPec  :=mQtdPec+ValFloat(STGOS4.Cells[03,x]);
   mDesc    :=ValFloat(STGOS4.Cells[06,x]);
   mDescPec :=mDescPec+mDesc;
   mTotPecas:=mTotPecas+(ValFloat(STGOS4.Cells[07,x]));
   end;


for x:=1 to STGOS3.RowCount-1 do
   begin
   if Trim(STGOS3.Cells[0,x])='' then
      Continue;
   mQtdAces:=mQtdAces+ValFloat(STGOS3.Cells[03,x]);
   end;
QTDEQUI.Caption :=FormatFloat(mcasqtd, mQtdEqui);
QTDSERV.Caption :=FormatFloat(mcasqtd, mQtdServ);
QTDPEC.Caption  :=FormatFloat(mcasqtd, mQtdPec);
QTDACES.Caption :=FormatFloat(mcasqtd, mQtdAces);
VLPECAS.Caption :=FormatFloat(mcasas, mTotPecas);
VLSERV.Caption  :=FormatFloat(mcasas, mTotServ);
TOTBRU.Caption  :=FormatFloat(mcasas, mTotPecas+mTotServ);
TOTAL.Caption   :=FormatFloat(mcasas, (mTotPecas+mTotServ)-(mDescServ+mDescPec));
DESCPEC.Caption :=FormatFloat(mcasas, mDescPec);
DESCSERV.Caption:=FormatFloat(mcasas, mDescServ);

result:=True;
end;

procedure TFrm_ManOs.OS4_EDITARClick(Sender: TObject);
begin
if (Trim(STGOS4.Cells[00,STGOS4.Row])='') or (STGOS4.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   exit;
   end;
OS4CODPRO.Text  :=STGOS4.Cells[00,STGOS4.Row];
OS4NOMPRO.Text  :=STGOS4.Cells[01,STGOS4.Row];
OS4UND.Text     :=STGOS4.Cells[02,STGOS4.Row];
OS4QTD.Text     :=STGOS4.Cells[03,STGOS4.Row];
OS4PCOUNIT.Text :=STGOS4.Cells[04,STGOS4.Row];
OS4DESC01.Text  :=STGOS4.Cells[05,STGOS4.Row];
OS4DESCVLR.Text :=STGOS4.Cells[06,STGOS4.Row];
OS4VT.Text      :=STGOS4.Cells[07,STGOS4.Row];
mOpOs4:=1;

end;

procedure TFrm_ManOs.OS4_CANCELARClick(Sender: TObject);
begin
OS4CODPRO.Text  :='';
OS4NOMPRO.Text  :='';
OS4UND.Text     :='';
OS4QTD.Text     :='';
OS4PCOUNIT.Text :='';
OS4DESC01.Text  :='';
OS4VT.Text      :='';

end;

procedure TFrm_ManOs.OS4_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
if (Trim(STGOS4.Cells[00,STGOS4.Row])='') or (STGOS4.Row=0) then
   begin
   fMensagem('Favor Selecionar um ítem!',0,['0'],0);
   exit;
   end;
OS4CODPRO.Text  :=STGOS4.Cells[00,STGOS4.Row];
OS4NOMPRO.Text  :=STGOS4.Cells[01,STGOS4.Row];
OS4UND.Text     :=STGOS4.Cells[02,STGOS4.Row];
OS4QTD.Text     :=STGOS4.Cells[03,STGOS4.Row];
OS4PCOUNIT.Text :=STGOS4.Cells[04,STGOS4.Row];
OS4DESC01.Text  :=STGOS4.Cells[05,STGOS4.Row];
OS4VT.Text      :=STGOS4.Cells[07,STGOS4.Row];
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STGOS4.RowCount=2 then
   STGOS4.Rows[1].Clear
else
   begin
   for x:=STGOS4.Row to STGOS4.RowCount-2 do
      begin
      STGOS4.Cells[00,x]:=STGOS4.Cells[00,x+1];
      STGOS4.Cells[01,x]:=STGOS4.Cells[01,x+1];
      STGOS4.Cells[02,x]:=STGOS4.Cells[02,x+1];
      STGOS4.Cells[03,x]:=STGOS4.Cells[03,x+1];
      STGOS4.Cells[04,x]:=STGOS4.Cells[04,x+1];
      STGOS4.Cells[05,x]:=STGOS4.Cells[05,x+1];
      STGOS4.Cells[06,x]:=STGOS4.Cells[06,x+1];
      STGOS4.Cells[07,x]:=STGOS4.Cells[07,x+1];
      end;
   STGOS4.RowCount:=STGOS4.RowCount-1;
   end;
OS4_CANCELAR.Click;
fManOsTotais(4);


end;

procedure TFrm_ManOs.OS3QTDExit(Sender: TObject);
begin
if ValFloat(OS3QTD.Text)<=0 then
   OS3QTD.Text:='1';
OS3QTD.Text:=FormatFloat(mcasqtd, ValFloat(OS3QTD.Text));

end;

procedure TFrm_ManOs.OS3_EDITARClick(Sender: TObject);
begin
if (Trim(STGOS3.Cells[00,STGOS3.Row])='') or (STGOS3.Row=0) then
   begin
   fMensagem('Selecione um ítem para altera-lo!',0,['0'],0);
   exit;
   end;
OS3CODPRO.Text  :=STGOS3.Cells[00,STGOS3.Row];
OS3NOMPRO.Text  :=STGOS3.Cells[01,STGOS3.Row];
OS3UND.Text     :=STGOS3.Cells[02,STGOS3.Row];
OS3QTD.Text     :=STGOS3.Cells[03,STGOS3.Row];
mOpOs3:=1;

end;

procedure TFrm_ManOs.OS3_CANCELARClick(Sender: TObject);
begin
OS3CODPRO.Text  :='';
OS3NOMPRO.Text  :='';
OS3UND.Text     :='';
OS3QTD.Text     :='';
end;

procedure TFrm_ManOs.OS3_EXCLUIRClick(Sender: TObject);
var
x: Integer;
begin
if (Trim(STGOS3.Cells[00,STGOS3.Row])='') or (STGOS3.Row=0) then
   begin
   fMensagem('Favor Selecionar um ítem!',0,['0'],0);
   exit;
   end;
OS3CODPRO.Text  :=STGOS3.Cells[00,STGOS3.Row];
OS3NOMPRO.Text  :=STGOS3.Cells[01,STGOS3.Row];
OS3UND.Text     :=STGOS3.Cells[02,STGOS3.Row];
OS3QTD.Text     :=STGOS3.Cells[03,STGOS3.Row];
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STGOS3.RowCount=2 then
   STGOS3.Rows[1].Clear
else
   begin
   for x:=STGOS3.Row to STGOS3.RowCount-2 do
      begin
      STGOS3.Cells[00,x]:=STGOS3.Cells[00,x+1];
      STGOS3.Cells[01,x]:=STGOS3.Cells[01,x+1];
      STGOS3.Cells[02,x]:=STGOS3.Cells[02,x+1];
      STGOS3.Cells[03,x]:=STGOS3.Cells[03,x+1];
      end;
   STGOS3.RowCount:=STGOS3.RowCount-1;
   end;
OS3_CANCELAR.Click;
fManOsTotais(3);



end;

procedure TFrm_ManOs.OS4QTDExit(Sender: TObject);
begin
if valfloat(OS4CODPRO.text)>0 then
   begin
   if ValFloat(OS4QTD.Text)<=0 then
      OS4QTD.Text:='1';
   OS4QTD.Text:=FormatFloat(mcasqtd, ValFloat(OS4QTD.Text));
   if ValFloat(OS4PCOUNIT.Text)<=0 then
      OS4PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
   OS4VT.Text :=FormatFloat(mcasas, ValFloat(OS4QTD.Text)*ValFloat(OS4PCOUNIT.Text));
   end;

end;

procedure TFrm_ManOs.OS4PCOUNITExit(Sender: TObject);
begin
if ValFloat(OS4QTD.Text)<=0 then
   OS4QTD.Text:=FormatFloat(mcasqtd, 1);
{
if ValFloat(OS4PCOUNIT.Text)<=0 then
   OS4PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
   }
OS4PCOUNIT.Text:=FormatFloat(mcasaspu, ValFloat(OS4PCOUNIT.Text));
OS4VT.Text :=FormatFloat(mcasas, ValFloat(OS4QTD.Text)*ValFloat(OS4PCOUNIT.Text));

end;

procedure TFrm_ManOs.OS4DESC01Exit(Sender: TObject);
begin
if ValFloat(OS4DESC01.Text)<=0 then
   OS4DESC01.Text:=FormatFloat(mcasqtd, 0);
{if ValFloat(OS4PCOUNIT.Text)<=0 then
   OS4PCOUNIT.Text:=FormatFloat(mcasaspu, DM1.Tb_ProPDPRECO1.Value);
   }


OS4VT.Text :=FormatFloat(mcasas, ValFloat(OS4QTD.Text)*ValFloat(OS4PCOUNIT.Text));
if ValFloat(OS4DESC01.Text)>0 then
   begin
   OS4DESCVLR.Text := FormatFloat(mcasas, ValFloat(OS4VT.Text)*ValFloat(OS4DESC01.Text)/100);
   end;
OS4VT.Text :=FormatFloat(mcasas, ValFloat(OS4QTD.Text)*ValFloat(OS4PCOUNIT.Text));

end;

procedure TFrm_ManOs.BBLOCALIZARClick(Sender: TObject);
var
x: Integer;
begin
if mManOs_Oper<>3 then
   begin
   Application.CreateForm(TFrm_ConsOS, Frm_ConsOS);
   Frm_ConsOS.ShowModal;
   mchaveos:=Frm_ConsOS.Qr_Os01OS1CHAVE.AsInteger;
   ls_os :=Frm_ConsOS.Qr_Os01OS1LOTSEQ.AsInteger;
   Frm_ConsOS.Free;
   end;
mManOs_Oper:=0;


if (mchaveos>0) or (os_origem='consulta') then
   begin
   if os_origem='consulta' then
      fOs01lerant(0)
   else
      begin
      if not leros01(codemp,ls_os,mchaveos) then
         begin
         fMensagem('Chave não Encontrada!',0,['0'],0);
         exit;
         end
      else if Qr_Os01OS1STATUS.Value=9 then
         begin
         fMensagem('Chave Excluida!',0,['0'],0);
         exit;
         end;
      end;
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Carregando os dados. Aguarde';
   Frm_Agde.Show;
   Frm_Agde.Update;
   fLerOsDetalhe(2,Qr_Os01OS1CODEMP.Value,Qr_Os01OS1LOTSEQ.Value,Qr_Os01OS1CHAVE.Value);
   fLerOsDetalhe(3,Qr_Os01OS1CODEMP.Value,Qr_Os01OS1LOTSEQ.Value,Qr_Os01OS1CHAVE.Value);
   fLerOsDetalhe(4,Qr_Os01OS1CODEMP.Value,Qr_Os01OS1LOTSEQ.Value,Qr_Os01OS1CHAVE.Value);
   fLerOsDetalhe(5,Qr_Os01OS1CODEMP.Value,Qr_Os01OS1LOTSEQ.Value,Qr_Os01OS1CHAVE.Value);
   fLerOsDetalhe(6,Qr_Os01OS1CODEMP.Value,Qr_Os01OS1LOTSEQ.Value,Qr_Os01OS1CHAVE.Value);

   for x:=2 to STGOS2.RowCount do
      begin
      STGOS2.Rows[x-1].Clear;
      end;
   for x:=2 to STGOS3.RowCount do
      begin
      STGOS4.Rows[x-1].Clear;
      end;
   for x:=1 to STGOS4.RowCount do
      begin
      STGOS4.Rows[x].Clear;
      end;
   for x:=2 to STGOS4.RowCount do
      begin
      STGOS4.Rows[x-1].Clear;
      end;

   STGOS2.RowCount:=2;
   STGOS2.Rows[1].Clear;
   mqtd:=1;
   While not Qr_Os02.Eof do
      begin
      STGOS2.RowCount:=mqtd+1;
      STGOS2.Rows[mqtd].clear;
      STGOS2.Cells[00,mqtd]:=Qr_Os02OS2CODPRO.AsString;
      STGOS2.Cells[01,mqtd]:=Qr_Os02PDNOME.Value;
      STGOS2.Cells[02,mqtd]:=Qr_Os02PDUND.Value;
      STGOS2.Cells[03,mqtd]:=Qr_Os02OS2MODELO.Value;
      STGOS2.Cells[04,mqtd]:=Qr_Os02OS2MARCA.Value;
      STGOS2.Cells[05,mqtd]:=Qr_Os02OS2SERIE.Value;
      STGOS2.Cells[06,mqtd]:=Qr_Os02OS2NUMPAT.Value;
      STGOS2.Cells[07,mqtd]:=Qr_Os02OS2OBS01.Value;
      STGOS2.Cells[08,mqtd]:=Qr_Os02OS2OBS02.Value;
      mqtd:=mqtd+1;
      Qr_Os02.Next;
      end;
   STGOS2.RowCount:=mqtd+1;
   STGOS3.RowCount:=2;
   STGOS3.Rows[1].Clear;
   mqtd:=1;
   While not Qr_Os03.Eof do
      begin
      STGOS3.RowCount:=mqtd+1;
      STGOS3.Rows[mqtd].clear;
      STGOS3.Cells[00,mqtd]:=Qr_Os03OS3CODPRO.AsString;
      STGOS3.Cells[01,mqtd]:=Qr_Os03PDNOME.Value;
      STGOS3.Cells[02,mqtd]:=Qr_Os03PDUND.Value;
      STGOS3.Cells[03,mqtd]:=FormatFloat(mcasqtd, Qr_Os03OS3QTD.Value);
      Qr_Os03.Next;
      mqtd:=mqtd+1;
      end;
   STGOS3.RowCount:=mqtd+1;

   STGOS4.RowCount:=2;
   STGOS4.Rows[1].Clear;
   mqtd:=1;
   While not Qr_Os04.Eof do
      begin
      STGOS4.RowCount:=mqtd+1;
      STGOS4.Rows[mqtd].clear;
      STGOS4.Cells[00,mqtd]:=Qr_Os04OS4CODPRO.AsString;
      STGOS4.Cells[01,mqtd]:=Qr_Os04PDNOME.Value;
      STGOS4.Cells[02,mqtd]:=Qr_Os04PDUND.Value;
      STGOS4.Cells[03,mqtd]:=FormatFloat(mcasqtd, Qr_Os04OS4QTD.Value);
      STGOS4.Cells[04,mqtd]:=FormatFloat(mcasas,  Qr_Os04OS4PU.Value);
      if Qr_Os04OS4TOTDES.asfloat=0 then
         STGOS4.Cells[05,mqtd]:=FormatFloat(mcasas,  0)
      else
         STGOS4.Cells[05,mqtd]:=FormatFloat(mcasas,  Qr_Os04OS4DESC01.Value);
      STGOS4.Cells[06,mqtd]:=FormatFloat(mcasas,  Qr_Os04OS4TOTDES.Value);
      STGOS4.Cells[07,mqtd]:=FormatFloat(mcasqtd, Qr_Os04OS4QTD.Value*Qr_Os04OS4PU.Value);
      mqtd:=mqtd+1;
      Qr_Os04.Next;
      end;
   STGOS4.RowCount:=mqtd+1;

   STGOS5.RowCount:=2;
   STGOS5.Rows[1].Clear;
   mqtd:=1;
   While not Qr_Os05.Eof do
      begin
      STGOS5.RowCount:=mqtd+1;
      STGOS5.Rows[mqtd].clear;
      STGOS5.Cells[00,mqtd]:=Qr_Os05OS5CODPRO.AsString;
      STGOS5.Cells[01,mqtd]:=Qr_Os05PDNOME.Value;
      STGOS5.Cells[02,mqtd]:=Qr_Os05PDUND.Value;
      STGOS5.Cells[03,mqtd]:=FormatFloat(mcasqtd, Qr_Os05OS5QTD.Value);
      STGOS5.Cells[04,mqtd]:=FormatFloat(mcasas,  Qr_Os05OS5PU.Value);
      STGOS5.Cells[05,mqtd]:=FormatFloat(mcasas,  Qr_Os05OS5DESC01.Value);
      STGOS5.Cells[06,mqtd]:=FormatFloat(mcasas,  Qr_Os05OS5TOTDES.Value);
      STGOS5.Cells[07,mqtd]:=FormatFloat(mcasas, Qr_Os05OS5QTD.Value*Qr_Os05OS5PU.Value);
      STGOS5.Cells[08,mqtd]:='';
      Qr_Os05D.First;
      if not Qr_Os05D.Eof then
         begin
         if Qr_Os05D.Locate('OS5DCODEMP;OS5DLOTSEQ;OS5DCHAVE;OS5DITEM',
                         vararrayof([Qr_Os05OS5CODEMP.Value,
                                     Qr_Os05OS5LOTSEQ.Value,
                                     Qr_Os05OS5CHAVE.Value,
                                     Qr_Os05OS5ITEM.Value]),[]) then
            begin
            STGOS5.Cells[08,mqtd]:=Qr_Os05PDNOME.Value;
            STGOS5.Cells[01,mqtd]:='';
            end;
         While (not (Qr_Os05D.Eof) and
               (Qr_Os05DOS5DCODEMP.Value =Qr_Os05OS5CODEMP.Value) and
               (Qr_Os05DOS5DLOTSEQ.Value =Qr_Os05OS5LOTSEQ.Value)  and
               (Qr_Os05DOS5DCHAVE.Value  =Qr_Os05OS5CHAVE.Value)  and
               (Qr_Os05DOS5DITEM.Value   =Qr_Os05OS5ITEM.Value))  do
            begin
            STGOS5.Cells[01,mqtd]:=STGOS5.Cells[01,mqtd]+insere2(Qr_Os05DOS5DDESC.Value,' ',60);
            Qr_Os05D.Next;
            end;
         end;
      mqtd:=mqtd+1;
      Qr_Os05.Next;
      end;
   STGOS5.RowCount:=mqtd+1;
   CHAVE.Text:=Qr_Os01OS1CHAVE.AsString;
   if (Qr_Os01OS1DATA.IsNull) or (Qr_Os01OS1DATA.Value<=pdatanula) then
      MDATA.Text:='/  /'
   else
      MDATA.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATA.Value);

   edt_numrat.Text := Qr_Os01OS1NUMRAT.AsString;

   edt_OS1PORTPAROVMOD.Text   :=Qr_Os01OS1PORTPAROVMOD.AsString;
   edt_OS1NUMIMMETRO.Text     :=Qr_Os01OS1NUMIMMETRO.AsString;
   edt_OS1NUMMARCSELRET.Text  :=Qr_Os01OS1NUMMARCSELRET.AsString;
   edt_OS1NUMMARCREPRET.Text  :=Qr_Os01OS1NUMMARCREPRET.AsString;
   edt_OS1NUMMARCSELAFIX.Text :=Qr_Os01OS1NUMMARCSELAFIX.AsString;
   edt_OS1NUMMARCREPAFIX.Text :=Qr_Os01OS1NUMMARCREPAFIX.AsString;
   CODCLI.Text  :=Qr_Os01OS1CODCLI.AsString;
   NOMCLI.Text  :=Qr_Os01CRAZAO.AsString;
   ENDERECO.Text:=Qr_Os01CLOG.AsString;
   BAIRRO.Text  :=Qr_Os01CBAIRRO.AsString;
   CIDADE.Text  :=Qr_Os01CCIDADE.Value+'-'+Qr_Os01CUF.Value;
   CEP.Text     :=Qr_Os01CCEP.Value;
   CODVEN.Text  :=Qr_Os01OS1CODVEN.AsString;
   CODTEC.Text  :=Qr_Os01OS1CODTEC.AsString;
   CHAVEPED.Text:=Qr_Os01OS1CHAVEPED.AsString;
   NOMVEN.Text  :=Qr_Os01nomven.AsString;
   NOMTEC.Text  :=Qr_Os01nomtec.Value;
   NOMAUT.Text  :=Qr_Os01OS1NOMEAUT.AsString;
   NOMSOL.text  :=Qr_Os01OS1NOMSOL.AsString;
   if Qr_Os01OS1STATUS.AsInteger=4 then
      cb_status.ItemIndex:=3
   else
      cb_status.ItemIndex:=Qr_Os01OS1STATUS.AsInteger;


   if (Qr_Os01OS1DATAAUT.IsNull) or (Qr_Os01OS1DATAAUT.Value<=pdatanula) then
      DATAAUT.Text:='/  /'
   else
      DATAAUT.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATAAUT.Value);
   if (Qr_Os01OS1DATADEV.IsNull) or (Qr_Os01OS1DATADEV.Value<=pdatanula) then
      DATASAI.Text:='/  /'
   else
      DATASAI.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATADEV.Value);
   HORASAI.Text   :=Qr_Os01OS1HORADEV.Value;
   if (Qr_Os01OS1DATAENT.IsNull) or (Qr_Os01OS1DATAENT.Value<=pdatanula) then
      DATAENT.Text:='/  /'
   else
      DATAENT.Text:=FormatDateTime(fdt2, Qr_Os01OS1DATAENT.Value);
   HORAENT.Text     :=Qr_Os01OS1HORAENT.Value;
   RG_OPER.ItemIndex:=Qr_Os01OS1OPER.AsInteger;
   DEFRECL.Text     :=Qr_Os01OS1DEFREC.Value;
   OBSL01.Text      :=Qr_Os01OS1OBS01.Value;
   OBSL02.Text      :=Qr_Os01OS1OBS02.Value;
   OBSL03.Text      :=Qr_Os01OS1OBS03.Value;
   OBSL04.Text      :=Qr_Os01OS1OBS04.Value;
   fManOsTotais(0);

   if os_origem<>'consulta' then
      begin
      BBINCLUIR.Enabled  :=True;
      bbImportaPed.Enabled  :=true;

      BBLOCALIZAR.Enabled:=True;
      BBALTERAR.Enabled  :=true;
      BBEXCLUIR.Enabled  :=true;
      BBGRAVAR.Enabled   :=False;
      BBIMPRIMIR.Enabled :=true;
      BBFATURAR.Enabled  :=True;
      bbBaixar.Enabled   :=True;
      end;
   TabSheet5.Enabled  :=False;
   TabSheet6.Enabled  :=False;
   TabSheet7.Enabled  :=False;
   GroupBox1.Enabled  :=False;
   GroupBox2.Enabled  :=False;
   GroupBox3.Enabled  :=False;
   GroupBox4.Enabled  :=False;
   Frm_Agde.Free;
   end;
end;

procedure TFrm_ManOs.BBINCLUIRClick(Sender: TObject);
begin
BBLIMPAR.Click;
BBINCLUIR.Enabled  :=False;
bbImportaPed.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
BBFATURAR.Enabled  :=False;
bbBaixar.Enabled   :=FALSE;

TabSheet5.Enabled  :=True;
TabSheet6.Enabled  :=True;
TabSheet7.Enabled  :=True;
GroupBox1.Enabled  :=True;
GroupBox2.Enabled  :=True;
GroupBox3.Enabled  :=True;
GroupBox4.Enabled  :=True;
MDATA.Text:=FormatDatetime(fdt2,date);
PageControl2.ActivePageIndex:=0;
cb_status.ItemIndex:=0;
MDATA.SetFocus;
mManOs_Oper:=0;
end;

function TFrm_ManOs.leros01(pcodemp, plotseq,pchave: Real): Boolean;
begin
Qr_Os01.Close;
Qr_Os01.SQL.Clear;
Qr_Os01.SQL.Add('Select  OS1CODEMP, '
               +'        OS1LOTSEQ, '
               +'        OS1CHAVE, '
               +'        OS1DATA, '
               +'        OS1DATAAUT, '
               +'        OS1NOMEAUT, '
               +'        OS1DATADEV, '
               +'        OS1HORADEV, '
               +'        OS1DATAENT, '
               +'        OS1HORAENT, '
               +'        OS1CODCLI, '
               +'        OS1CODVEN, '
               +'        OS1CODTEC, '
               +'        OS1OPER, '
               +'        OS1DEFREC, '
               +'        OS1OBS01, '
               +'        OS1OBS02, '
               +'        OS1OBS03, '
               +'        OS1OBS04, '
               +'        OS1STATUS,'
               +'        OS1LOTSEQ_CP, '
               +'        OS1CHAVEPED, '
               +'        OS1TOTAL, '
               +'        OS1TOTSER, '
               +'        OS1DESCSER, '
               +'        OS1TOTPEC, '
               +'        OS1DESCPEC, '
               +'        OS1ESTREG, '
               +'        OS1DATALT, '
               +'        OS1CODUSR, '
               +'        OS1NOMSOL, '
               +'        OS1DESCBAIXA, '
               +'        OS1NUMRAT, '
               +'        CRAZAO,CLOG, '
               +'        CBAIRRO,CCIDADE,CUF, '
               +'        CCEP, CFONE01, CFAX, CFAX,CCPF,CCNPJ,CIE,CRG,CDENOM '
               +' ,OS1PORTPAROVMOD '
               +' ,OS1NUMIMMETRO'
               +' ,OS1NUMMARCSELRET '
               +' ,OS1NUMMARCREPRET '
               +' ,OS1NUMMARCSELAFIX '
               +' ,OS1NUMMARCREPAFIX '
               +'        from CADOS01,CADCLI where '
               +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS1CODEMP=0'+FloatToStr(pcodemp)+' and ')
               +'        OS1LOTSEQ=0'+FloatTostr(plotseq)
               +'   and  OS1CHAVE=0'+FloatTostr(pchave)
               +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=OS1CODEMP ')
               +' and CCODCLI=OS1CODCLI ');
Qr_Os01.Open;
if Qr_Os01.Eof then
   Result:=False
else
   Result:=true;

end;



function TFrm_ManOs.fLerOsDetalhe(ptipo: Integer;pcodemp, plotseq,pchave: Real): Boolean;
begin
result:=true;
if ptipo=2 then
   begin
   Qr_Os02.Close;
   Qr_Os02.SQL.Clear;
   Qr_Os02.SQL.add('Select OS2CODEMP, '
                  +'       OS2LOTSEQ, '
                  +'        OS2CHAVE, '
                  +'         OS2ITEM, '
                  +'        OS2CODPRO, '
                  +'        OS2MODELO, '
                  +'        OS2MARCA, '
                  +'        OS2SERIE, '
                  +'        OS2NUMPAT, '
                  +'        OS2OBS01, '
                  +'        OS2OBS02, '
                  +'        PDNOME,PDUND from CADOS02,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS2CODEMP=0'+FloatTostr(pcodemp)+' and ')
                  +' OS2LOTSEQ=0'+FloatTostr(plotseq)
                  +' and OS2CHAVE=0'+FloatToStr(pchave)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS2CODEMP ')
                  +' and PDCODPRO=OS2CODPRO'
                  +' order by OS2ITEM ');
   Qr_Os02.Open;
   if Qr_Os02.Eof then
      Result:=False;
   end
else if ptipo=5 then
   begin
   Qr_Os03.Close;
   Qr_Os03.SQL.Clear;
   Qr_Os03.SQL.add('Select OS3CODEMP, '
                  +'       OS3LOTSEQ, '
                  +'       OS3CHAVE, '
                  +'       OS3ITEM, '
                  +'       OS3CODPRO, '
                  +'       OS3QTD, '
                  +'       PDNOME,PDUND from CADOS03,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS3CODEMP=0'+FloatTostr(pcodemp)+' and ')
                  +' OS3LOTSEQ=0'+FloatTostr(plotseq)
                  +' and OS3CHAVE=0'+FloatToStr(pchave)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS3CODEMP ')
                  +' and PDCODPRO=OS3CODPRO'
                  +' order by OS3ITEM ');
   Qr_Os03.Open;
   if Qr_Os03.Eof then
      Result:=False;
   end
else if ptipo=4 then
   begin
   Qr_Os04.Close;
   Qr_Os04.SQL.Clear;
   Qr_Os04.SQL.add('Select OS4CODEMP, '
                  +'       OS4LOTSEQ, '
                  +'        OS4CHAVE, '
                  +'        OS4ITEM, '
                  +'        OS4CODPRO, '
                  +'        OS4QTD, '
                  +'        OS4PU, '
                  +'        OS4DESC01, '
                  +'       OS4TOTDES, '
                  +'       PDNOME,PDUND from CADOS04,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS4CODEMP=0'+FloatTostr(pcodemp)+' and ')
                  +' OS4LOTSEQ=0'+FloatTostr(plotseq)
                  +' and OS4CHAVE=0'+FloatToStr(pchave)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS4CODEMP ')
                  +' and PDCODPRO=OS4CODPRO'
                  +' order by OS4ITEM ');
   Qr_Os04.Open;
   if Qr_Os04.Eof then
      Result:=False;
   end
else if ptipo=3 then
   begin
   Qr_Os05.Close;
   Qr_Os05.SQL.Clear;
   Qr_Os05.SQL.add('Select OS5CODEMP, '
                  +'        OS5LOTSEQ, '
                  +'        OS5CHAVE, '
                  +'        OS5ITEM, '
                  +'        OS5CODPRO, '
                  +'        OS5QTD, '
                  +'        OS5PU, '
                  +'        OS5DESC01, '
                  +'        OS5TOTDES, '
                  +'        PDNOME,PDUND from CADOS05,CADPRO '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS5CODEMP=0'+FloatTostr(pcodemp)+' and ')
                  +' OS5LOTSEQ=0'+FloatTostr(plotseq)
                  +' and OS5CHAVE=0'+FloatToStr(pchave)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS5CODEMP ')
                  +' and PDCODPRO=OS5CODPRO'
                  +' order by OS5ITEM ');
   Qr_Os05.Open;
   if Qr_Os05.Eof then
      Result:=False;
   end
else if ptipo=6 then
   begin
   Qr_Os05D.Close;
   Qr_Os05D.SQL.Clear;
   Qr_Os05D.SQL.add('Select OS5DCODEMP, '
                  +'        OS5DLOTSEQ, '
                  +'        OS5DCHAVE, '
                  +'        OS5DITEM, '
                  +'        OS5DCODPRO, '
                  +'        OS5DLINHA, '
                  +'        OS5DDESC from CADOS05D '
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' OS5DCODEMP=0'+FloatTostr(pcodemp)+' and ')
                  +' OS5DLOTSEQ=0'+FloatTostr(plotseq)
                  +' and OS5DCHAVE=0'+FloatToStr(pchave)
                  +' order by OS5DITEM,OS5DLINHA ');
   Qr_Os05D.Open;
   if Qr_Os05D.Eof then
      Result:=False;
   end;

end;
procedure TFrm_ManOs.Qr_Os01CalcFields(DataSet: TDataSet);
begin
if Qr_Os01OS1CODVEN.Value>0 then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_Os01OS1CODVEN.AsString) then
      Qr_Os01nomven.Value:=DM1.Query1.Fields[0].AsString;
   end;
if Qr_Os01OS1CODTEC.Value>0 then
   begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_Os01OS1CODTEC.AsString) then
      begin
      Qr_Os01nomtec.Value:=DM1.Query1.Fields[0].AsString;
      end;
   end;

end;

procedure TFrm_ManOs.BBALTERARClick(Sender: TObject);
begin
if not leros01(Qr_Os01OS1CODEMP.Value,Qr_Os01OS1LOTSEQ.Value,Qr_Os01OS1CHAVE.Value) then
   begin
   fMensagem('Chave não Encontrada!',0,['0'],0);
   BBLIMPAR.Click;
   exit;
   end;
While not Qr_Os01.Eof  do
   begin
   if Qr_Os01OS1STATUS.Value=9 then
      begin
      fMensagem('Pedido Excluido, Nao Pode Ser Alterado!',0,['0'],0);
      exit;
      end;
   Qr_Os01.Next;
   end;

if Qr_Os01OS1STATUS.Value=2 then
   begin
   fMensagem('Pedido Confirmado, Nao Pode Ser Alterado!',0,['0'],0);
   exit;
   end;

if Qr_Os01OS1ESTREG.Value=1 then
   begin
   if fmensagem('Este Pedido Pode estar sendo alterado em outra estação, deseja continuar?',0,['1','2'],2)<>mrYes then
      exit;
   end;


TabSheet5.Enabled  :=True;
TabSheet6.Enabled  :=True;
TabSheet7.Enabled  :=True;
GroupBox1.Enabled  :=True;
GroupBox2.Enabled  :=True;
GroupBox3.Enabled  :=True;
GroupBox4.Enabled  :=True;

BBINCLUIR.Enabled  :=False;
bbImportaPed.Enabled  :=False;

BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
BBFATURAR.Enabled  :=False;
bbBaixar.Enabled   :=false;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Update CADOS01 set OS1ESTREG=1 '
                  +' where OS1CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                  +' and OS1LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                  +' and OS1CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,1684,'Frm_ManOS','CADOS01');
   end;

mManOs_Oper:=1;
PageControl2.ActivePageIndex:=0;
MDATA.SetFocus;
end;

procedure TFrm_ManOs.BBGRAVARClick(Sender: TObject);
begin

if Trim(MDATA.Text)='/  /' then
   Begin
   fMensagem('Favor informar a data do Pedido!',0,['0'],0);
   PageControl2.ActivePageIndex:=0;
   MDATA.SetFocus;
   exit;
   end;
if ValFloat(CODCLI.Text)<=0 then
   begin
   fMensagem('Favor digitar Código do Cliente!',0,['0'],0);
   PageControl2.ActivePageIndex:=0;
   CODCLI.SetFocus;
   exit;
   end;
if ValFloat(CODVEN.Text)<=0 then
   begin
   fMensagem('Favor digitar Código do Vendedor!',0,['0'],0);
   PageControl2.ActivePageIndex:=0;
   if CODVEN.Enabled then
      CODVEN.SetFocus;
   exit;
   end;

if (ValFloat(DESCPEC.Caption)+ValFloat(DESCSERV.Caption))>0 then
   begin
   if (ValFloat(DESCPEC.Caption)+ValFloat(DESCSERV.Caption))>=ValFloat(TOTAL.Caption) then
      begin
      fMensagem('O Valor do desconto tem que ser menor que o total bruto!',0,['0'],0);
      exit;
      end;
   end;
if ValFloat(TOTAL.Caption)<0 then
   begin
   fMensagem('O Valor da OS não pode ser negativo!',0,['0'],0);
   exit;
   end;

Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Gravando Registro. Aguarde!';
Frm_Agde.Show;
Frm_Agde.Update;
if mManOs_Oper=0 then
   begin
   mchaveos:=fbuscaNUMOS(codemp);
   end
else
   begin
   fManos01gant(8);
   fexcluir(1)
   end;

fgravarOS(0); // mercadorias
fGravarOS01(0,codemp);


CHAVE.Text:=Inttostr(mchaveos);
BBINCLUIR.Enabled  :=True;
bbImportaPed.Enabled  :=true;

BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=true;
BBFATURAR.Enabled  :=true;
bbBaixar.Enabled   :=True;

TabSheet5.Enabled  :=False;
TabSheet6.Enabled  :=False;
TabSheet7.Enabled  :=False;
GroupBox1.Enabled  :=False;
GroupBox2.Enabled  :=False;
GroupBox3.Enabled  :=False;
GroupBox4.Enabled  :=False;

Frm_Agde.free;


if mchaveos=0 then
   begin
   AvisoSonoro(0);
   AvisoSonoro(1);
   fMensagem('Houve erro, não foi possível gravar a OS!',0,['0'],0);
   end
else
   begin
   mManOs_Oper:=3;
   BBLOCALIZAR.Click;
   ShowMessage('OS Gravada. Chave da OS: '+IntToStr(mchaveos));
   end;
end;



function TFrm_ManOs.fManOs01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(OS1CODNOV) from OLD_CADOS01');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADOS01 (';
v:='';
for x:=0 to DM3.Tb_Os01.FieldCount-1 do
   begin
   if DM3.Tb_Os01.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM3.Tb_Os01.Fields[x].DataType=ftblob then
      Continue;
   minstru:=minstru+v+DM3.Tb_Os01.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',OS1CODNOV) Select ';
v:='';
for x:=0 to DM3.Tb_Os01.FieldCount-1 do
   begin
   if DM3.Tb_Os01.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM3.Tb_Os01.Fields[x].DataType=ftblob then
      Continue;
   if DM3.Tb_Os01.Fields[x].FieldName='OS1STATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as OS1STATUS '
   else
      minstru:=minstru+v+DM3.Tb_Os01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as OS1CODNOV ';
minstru:=minstru+' from CADOS01 where OS1CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                +' and OS1LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                +' and OS1CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1882,'Frm_ManOS','CADOS01_OLD');
   end;

// CADOS02

minstru:='Insert into OLD_CADOS02 (';
v:='';
for x:=0 to DM3.Tb_Os02.FieldCount-1 do
   begin
   if DM3.Tb_Os02.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM3.Tb_Os02.Fields[x].DataType=ftblob then
      Continue;

   minstru:=minstru+v+DM3.Tb_Os02.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',OS2CODNOV) Select ';
v:='';
for x:=0 to DM3.Tb_Os02.FieldCount-1 do
   begin
   if DM3.Tb_Os02.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM3.Tb_Os02.Fields[x].DataType=ftblob then
      Continue;

   minstru:=minstru+v+DM3.Tb_Os02.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as OS2CODNOV ';
minstru:=minstru+' from CADOS02 where OS2CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                +' and OS2LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                +' and OS2CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1917,'Frm_ManOs','CADOS02');
   end;


// CADOS03

minstru:='Insert into OLD_CADOS03 (';
v:='';
for x:=0 to DM3.Tb_Os03.FieldCount-1 do
   begin
   if DM3.Tb_Os03.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM3.Tb_Os03.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',OS3CODNOV) Select ';
v:='';
for x:=0 to DM3.Tb_Os03.FieldCount-1 do
   begin
   if DM3.Tb_Os03.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM3.Tb_Os03.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as OS3CODNOV ';
minstru:=minstru+' from CADOS03 where OS3CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                +' and OS3LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                +' and OS3CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1953,'Frm_ManOs','CADOS03');
   end;

// CADOS04

minstru:='Insert into OLD_CADOS04 (';
v:='';
for x:=0 to DM3.Tb_Os04.FieldCount-1 do
   begin
   if DM3.Tb_Os04.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM3.Tb_Os04.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',OS4CODNOV) Select ';
v:='';
for x:=0 to DM3.Tb_Os04.FieldCount-1 do
   begin
   if DM3.Tb_Os04.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM3.Tb_Os04.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as OS4CODNOV ';
minstru:=minstru+' from CADOS04 where OS4CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                +' and OS4LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                +' and OS4CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,1988,'Frm_ManOs','CADOS04');
   end;


// CADOS05

minstru:='Insert into OLD_CADOS05 (';
v:='';
for x:=0 to DM3.Tb_Os05.FieldCount-1 do
   begin
   if DM3.Tb_Os05.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM3.Tb_Os05.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',OS5CODNOV) Select ';
v:='';
for x:=0 to DM3.Tb_Os05.FieldCount-1 do
   begin
   if DM3.Tb_Os05.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM3.Tb_Os05.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as OS5CODNOV ';
minstru:=minstru+' from CADOS05 where OS5CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                +' and OS5LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                +' and OS5CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2024,'Frm_ManOs','CADOS05');
   end;


result:=True;
end;



function TFrm_ManOs.fexcluir(ptipo: Integer):Boolean;
{
Parametros ptipo= 0-Coloca em Estado de Deletado
                  1-Exclui o Registro
}
begin
if ptipo=0 then
   begin
   Qr_Os01.First;
   While not Qr_Os01.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Params.CreateParam(ftString,'DTALT',ptInput);
      DM1.Query1.Sql.add('Update CADOS01 set OS1STATUS=9, '
                         +' OS1CODUSR=0'+IntTostr(codusr)+','
                         +' OS1DATALT=:DTALT'
                         +'  where OS1CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                         +' and OS1LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                         +' and OS1CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
      DM1.Query1.ParamByName('DTALT').AsDateTime:=now;
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2057,'Frm_ManOS','CADP01');
         end;
      Qr_Os01.Next;
      end;
   end
else
   begin
   Qr_Os01.First;
   While not Qr_Os01.Eof do
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADOS01 where OS1CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                         +' and OS1LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                         +' and OS1CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2073,'Frm_ManOS','CADOS01');
         end;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADOS02 where OS2CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                         +' and OS2LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                         +' and OS2CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2084,'Frm_ManOs','CADOS02');
         end;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADOS03 where OS3CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                        +' and OS3LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                        +' and OS3CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2095,'Frm_ManOS','CADOS03');
      end;


      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADOS04 where OS4CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                         +' and OS4LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                         +' and OS4CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2108,'Frm_ManOS','CADOS04');
         end;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADOS05 where OS5CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                         +' and OS5LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                         +' and OS5CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2120,'Frm_ManOS','CADOS05');
         end;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('delete from CADOS05D where OS5DCODEMP=0'+Qr_Os01OS1CODEMP.AsString
                         +' and OS5DLOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                         +' and OS5DCHAVE=0'+Qr_Os01OS1CHAVE.AsString);
      Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,2120,'Frm_ManOS','CADOS05D');
         end;
      Qr_Os01.Next;
      end;
   end;
end;




function TFrm_ManOS.fgravarOS(ptipo: Integer): Boolean;
var
y,x: Integer;
begin

for x:=1 to Frm_ManOs.STGOS2.RowCount-1 do
   begin
   if Trim(Frm_ManOS.STGOS2.Cells[0,x])='' then
      Continue;
   DM4.Qr_IncOs02.ParambyName('OS2CODEMP').AsFloat :=codemp;
   DM4.Qr_IncOs02.ParambyName('OS2LOTSEQ').AsFloat :=ls_os;
   DM4.Qr_IncOs02.ParambyName('OS2CHAVE').AsFloat  :=mchaveos;
   DM4.Qr_IncOs02.ParambyName('OS2ITEM').AsFloat   :=x;
   DM4.Qr_IncOs02.ParambyName('OS2CODPRO').AsFloat :=fsonumero(STGOS2.Cells[00,x]);
   DM4.Qr_IncOs02.ParambyName('OS2MODELO').AsString:=STGOS2.cells[03,x];
   DM4.Qr_IncOs02.ParambyName('OS2MARCA').AsString :=STGOS2.cells[04,x];
   DM4.Qr_IncOs02.ParambyName('OS2SERIE').AsString :=STGOS2.cells[05,x];
   DM4.Qr_IncOs02.ParambyName('OS2NUMPAT').AsString:=STGOS2.cells[06,x];
   DM4.Qr_IncOs02.ParambyName('OS2OBS01').AsString :=STGOS2.cells[07,x];
   DM4.Qr_IncOs02.ParambyName('OS2OBS02').AsString :=STGOS2.cells[08,x];
   try
      DM4.Qr_IncOs02.ExecSQL;
   except
      fMensagem('Erro ao Incluir Registros no CADOS02',0,['0'],0);
      end;
   end;

for x:=1 to Frm_ManOs.STGOS3.RowCount-1 do
   begin
   if Trim(Frm_ManOS.STGOS3.Cells[0,x])='' then
      Continue;
   DM4.Qr_IncOs03.ParambyName('OS3CODEMP').AsFloat:=codemp;
   DM4.Qr_IncOs03.ParambyName('OS3LOTSEQ').AsFloat:=ls_os;
   DM4.Qr_IncOs03.ParambyName('OS3CHAVE').AsFloat :=mchaveos;
   DM4.Qr_IncOs03.ParambyName('OS3ITEM').AsFloat  :=x;
   DM4.Qr_IncOs03.ParambyName('OS3CODPRO').AsFloat:=fsonumero(STGOS3.Cells[00,x]);
   DM4.Qr_IncOs03.ParambyName('OS3QTD').AsFloat   :=ValFloat(STGOS3.Cells[03,x]);
   try
      DM4.Qr_IncOs03.ExecSQL;
   except
      fMensagem('Erro ao Incluir Registros no CADOS03',0,['0'],0);
      end;
   end;
for x:=1 to Frm_ManOs.STGOS4.RowCount-1 do
   begin
   if Trim(Frm_ManOS.STGOS4.Cells[0,x])='' then
      Continue;
   DM4.Qr_IncOs04.ParambyName('OS4CODEMP').AsFloat:=codemp;
   DM4.Qr_IncOs04.ParambyName('OS4LOTSEQ').AsFloat:=ls_os;
   DM4.Qr_IncOs04.ParambyName('OS4CHAVE').AsFloat :=mchaveos;
   DM4.Qr_IncOs04.ParambyName('OS4ITEM').AsFloat  :=x;
   DM4.Qr_IncOs04.ParambyName('OS4CODPRO').AsFloat:=fsonumero(STGOS4.Cells[00,x]);
   DM4.Qr_IncOs04.ParambyName('OS4QTD').AsFloat   :=ValFloat(STGOS4.Cells[03,x]);
   DM4.Qr_IncOs04.ParambyName('OS4PU').AsFloat    :=ValFloat(STGOS4.Cells[04,x]);
   DM4.Qr_IncOs04.ParambyName('OS4TOTDES').AsFloat:=ValFloat(STGOS4.Cells[06,x]);
   if ValFloat(STGOS4.Cells[06,x])=0 then
      DM4.Qr_IncOs04.ParambyName('OS4DESC01').AsFloat:=ValFloat(STGOS4.Cells[05,x])
   else
      DM4.Qr_IncOs04.ParambyName('OS4DESC01').AsFloat:=0;
   try
      DM4.Qr_IncOs04.ExecSQL;
   except
      fMensagem('Erro ao Incluir Registros no CADOS04',0,['0'],0);
      end;

   end;


for x:=1 to Frm_ManOs.STGOS5.RowCount-1 do
   begin
   if Trim(Frm_ManOS.STGOS5.Cells[0,x])='' then
      Continue;
   DM4.Qr_IncOs05.ParambyName('OS5CODEMP').AsFloat:=codemp;
   DM4.Qr_IncOs05.ParambyName('OS5LOTSEQ').AsFloat:=ls_os;
   DM4.Qr_IncOs05.ParambyName('OS5CHAVE').AsFloat :=mchaveos;
   DM4.Qr_IncOs05.ParambyName('OS5ITEM').AsFloat  :=x;
   DM4.Qr_IncOs05.ParambyName('OS5CODPRO').AsFloat:=fsonumero(STGOS5.Cells[00,x]);
   DM4.Qr_IncOs05.ParambyName('OS5QTD').AsFloat   :=ValFloat(STGOS5.Cells[03,x]);
   DM4.Qr_IncOs05.ParambyName('OS5PU').AsFloat    :=ValFloat(STGOS5.Cells[04,x]);
   DM4.Qr_IncOs05.ParambyName('OS5DESC01').AsFloat:=ValFloat(STGOS5.Cells[05,x]);
   DM4.Qr_IncOs05.ParambyName('OS5TOTDES').AsFloat:=ValFloat(STGOS5.Cells[06,x]);
   try
      DM4.Qr_IncOs05.ExecSQL;
   except
      fMensagem('Erro ao Incluir Registros no CADOS05',0,['0'],0);
      end;
   if Trim(STGOS5.Cells[08,x])<>'' then
      begin
      Frm_ManOS_SerAlt.Memo1.Text:=STGOS5.Cells[01,x];
      for y:=0 to Frm_ManOS_SerAlt.Memo1.Lines.Count-1 do
         begin
         DM4.Qr_IncOs05D.ParambyName('OS5DCODEMP').AsFloat  :=codemp;
         DM4.Qr_IncOs05D.ParambyName('OS5DLOTSEQ').AsFloat  :=ls_os;
         DM4.Qr_IncOs05D.ParambyName('OS5DCHAVE').AsFloat   :=mchaveos;
         DM4.Qr_IncOs05D.ParambyName('OS5DITEM').AsFloat    :=x;
         DM4.Qr_IncOs05D.ParambyName('OS5DCODPRO').AsFloat  :=fsonumero(STGOS5.Cells[00,x]);
         DM4.Qr_IncOs05D.ParambyName('OS5DLINHA').AsFloat   :=Y+1;
         DM4.Qr_IncOs05D.ParambyName('OS5DDESC').AsString   :=Frm_ManOs_SerAlt.Memo1.Lines[y];
         try
            DM4.Qr_IncOs05D.ExecSQL;
         except
            fMensagem('Erro ao Incluir Registros no CADOS05D',0,['0'],0);
            end;
         end;
      end;
   end;
result:=true;

end;




function TFrm_ManOS.fGravarOS01(ptipo,pcodemp:Integer):Boolean;
var
y:Integer;
mtotSer,mTotdSer: Real;
mtotPec,mTotdPec: Real;
mTotal: Real;
begin

fLerOsDetalhe(3,codemp,ls_os,mchaveos);
fLerOsDetalhe(4,codemp,ls_os,mchaveos);

mtotSer :=0;
mTotdSer:=0;
mtotPec :=0;
mTotdPec:=0;;
mTotal  :=0;
// pecas utilizadas

While not Frm_ManOs.Qr_Os04.Eof do
   begin
   mTotal  :=Frm_ManOs.Qr_Os04OS4QTD.Value*Frm_ManOs.Qr_Os04OS4PU.Value;
   mTotal  :=Arredonda(mTotal,DM1.Tb_PargerPCASAS.AsInteger);
   mTotPec :=mTotPec+mTotal;
   mTotdPec:=mTotdPec+Arredonda((mtotal*Frm_ManOs.Qr_Os04OS4DESC01.Value/100),DM1.Tb_PargerPCASAS.AsInteger);
   Frm_ManOs.Qr_Os04.Next;
   end;

While not Frm_ManOs.Qr_Os05.Eof do
   begin
   mTotal  :=Frm_ManOs.Qr_Os05OS5QTD.Value*Frm_ManOs.Qr_Os05OS5PU.Value;
   mTotal  :=Arredonda(mTotal,DM1.Tb_PargerPCASAS.AsInteger);
   mTotSer :=mTotSer+mTotal;
   mTotdSer:=mTotdSer+Arredonda((mtotal*Frm_ManOs.Qr_Os05OS5DESC01.Value/100),DM1.Tb_PargerPCASAS.AsInteger);
   Frm_ManOs.Qr_Os05.Next;
   end;


DM4.Qr_IncOS01.ParambyName('OS1CODEMP').AsFloat       := codemp;
DM4.Qr_IncOS01.ParambyName('OS1LOTSEQ').AsFloat       := ls_os;
DM4.Qr_IncOS01.ParambyName('OS1CHAVE').AsFloat        := mchaveos;
DM4.Qr_IncOS01.ParambyName('OS1DATA').AsDateTime      := StrTodate(MDATA.Text);
if Trim(DATAAUT.Text)<>'/  /' then
   DM4.Qr_IncOS01.ParambyName('OS1DATAAUT').AsDateTime:=StrTodate(DATAAUT.Text)
else
   DM4.Qr_IncOS01.ParambyName('OS1DATAAUT').AsDateTime:=pdatanula;
DM4.Qr_IncOS01.ParambyName('OS1NOMEAUT').AsString      :=NOMAUT.Text;
DM4.Qr_IncOS01.ParambyName('OS1DEFREC').AsString       :=DEFRECL.Text;
if Trim(DATASAI.Text)<>'/  /' then
   DM4.Qr_IncOS01.ParambyName('OS1DATADEV').AsDateTime:=StrToDate(DATASAI.Text)
else
   DM4.Qr_IncOS01.ParambyName('OS1DATADEV').AsDateTime:=pdatanula;
DM4.Qr_IncOS01.ParambyName('OS1HORADEV').AsString     :=HORASAI.Text;
if Trim(DATAENT.Text)<>'/  /' then
   DM4.Qr_IncOS01.ParambyName('OS1DATAENT').AsDateTime:=StrToDate(DATAENT.Text)
else
   DM4.Qr_IncOS01.ParambyName('OS1DATAENT').AsDateTime:=pdatanula;
DM4.Qr_IncOS01.ParambyName('OS1HORAENT').AsString     :=HORAENT.Text;
DM4.Qr_IncOS01.ParambyName('OS1CODCLI').AsFloat   :=fsonumero(CODCLI.Text);
DM4.Qr_IncOS01.ParambyName('OS1CODVEN').AsFloat   :=fsonumero(CODVEN.Text);
DM4.Qr_IncOS01.ParambyName('OS1CODTEC').AsFloat   :=fsonumero(CODTEC.Text);
DM4.Qr_IncOS01.ParambyName('OS1OPER').AsFloat     :=RG_OPER.ItemIndex;
DM4.Qr_IncOS01.ParambyName('OS1NOMSOL').AsMemo    :=NOMSOL.Text;
DM4.Qr_IncOS01.ParambyName('OS1OBS01').AsString   :=OBSL01.Text;
DM4.Qr_IncOS01.ParambyName('OS1OBS02').AsString   :=OBSL02.Text;
DM4.Qr_IncOS01.ParambyName('OS1OBS03').AsString   :=OBSL03.Text;
DM4.Qr_IncOS01.ParambyName('OS1OBS04').AsString   :=OBSL04.Text;
DM4.Qr_IncOS01.ParambyName('OS1STATUS').AsFloat   :=cb_status.ItemIndex;
DM4.Qr_IncOS01.ParambyName('OS1LOTSEQ_CP').AsFloat:=ls_numped;
DM4.Qr_IncOS01.ParambyName('OS1CHAVEPED').AsFloat :=ValFloat(CHAVEPED.Text);
DM4.Qr_IncOS01.ParambyName('OS1TOTSER').AsFloat   :=mTotSer-mTotdSer;
DM4.Qr_IncOS01.ParambyName('OS1DESCSER').AsFloat  :=mTotDSer;
DM4.Qr_IncOS01.ParambyName('OS1TOTPEC').AsFloat   :=mTotPec-mTotdPec;
DM4.Qr_IncOS01.ParambyName('OS1DESCPEC').AsFloat  :=mTotDPec;
DM4.Qr_IncOS01.ParambyName('OS1TOTAL').AsFloat    :=(mTotPec+mTotser)-(mTotdSer+mTotdPec);
DM4.Qr_IncOS01.ParambyName('OS1ESTREG').AsFloat   :=0;
DM4.Qr_IncOS01.ParambyName('OS1DATALT').AsDateTime:=Now;
DM4.Qr_IncOS01.ParambyName('OS1CODUSR').AsFloat   :=codusr;
DM4.Qr_IncOS01.ParambyName('OS1NUMRAT').Asstring  :=edt_numrat.Text;
DM4.Qr_IncOS01.ParambyName('OS1PORTPAROVMOD').Asstring  :=edt_OS1PORTPAROVMOD.Text;
DM4.Qr_IncOS01.ParambyName('OS1NUMIMMETRO').Asstring  :=edt_OS1NUMIMMETRO.Text;
DM4.Qr_IncOS01.ParambyName('OS1NUMMARCSELRET').Asstring  :=edt_OS1NUMMARCSELRET.Text;
DM4.Qr_IncOS01.ParambyName('OS1NUMMARCREPRET').Asstring  :=edt_OS1NUMMARCREPRET.Text;
DM4.Qr_IncOS01.ParambyName('OS1NUMMARCSELAFIX').Asstring  :=edt_OS1NUMMARCSELAFIX.Text;
DM4.Qr_IncOS01.ParambyName('OS1NUMMARCREPAFIX').Asstring  :=edt_OS1NUMMARCREPAFIX.Text;



try
   DM4.Qr_IncOS01.ExecSQL
except
   fMensagem('Erro ao incluir o Registro de os 01',0,['0'],0);
   end;
{
if Trim(DEFRECL.Text)<>'' then
   begin
   DM1.Query1.Params.CreateParam(ftMemo,'DEFREC',ptinput);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADOS01 set OS1DEFREC=:DEFREC where '
                      +' OS1CODEMP=0'+InttoStr(codemp)
                      +' and OS1LOTSEQ=0'+IntToStr(ls_os)
                      +' and OS1CHAVE=0'+Inttostr(mchaveos));
   DM1.Query1.ParamByName('DEFREC').AsMemo:=DEFRECL.Text;
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,2387,'frm_Manos','CADOS01');
      end;
   end;
}
result:=True;
end;


procedure TFrm_ManOs.BBLIMPARClick(Sender: TObject);
var
x: Integer;
begin


if mManOs_Oper=1 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADOS01 set OS1ESTREG=0 '
                     +' where OS1CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                     +' and OS1LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                     +' and OS1CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,2286,'Frm_ManOS','CADOS01');
      end;
   end;
for x:=2 to STGOS2.RowCount do
   begin
   STGOS2.Rows[x-1].Clear;
   end;
for x:=2 to STGOS3.RowCount do
   begin
   STGOS3.Rows[x-1].Clear;
   end;
for x:=2 to STGOS4.RowCount do
   begin
   STGOS4.Rows[x-1].Clear;
   end;
for x:=2 to STGOS5.RowCount do
   begin
   STGOS5.Rows[x-1].Clear;
   end;

edt_numrat.clear;
CHAVE.Text   :='';
MDATA.Text   :='/  /';
CODCLI.Text  :='';
NOMCLI.Text  :='';
ENDERECO.Text:='';
BAIRRO.Text  :='';
CIDADE.Text  :='';
CEP.Text     :='';
CODVEN.Text  :='';
CODTEC.Text  :='';
CHAVEPED.Text:='';
NOMTEC.Text  :='';
NOMVEN.Text  :='';
NOMAUT.Text  :='';
NOMSOL.clear;
DATAAUT.Text :='/  /';
DATASAI.Text :='/  /';
HORASAI.Text :=':';
DATAENT.Text :='/  /';
HORAENT.Text :=':';
RG_OPER.ItemIndex:=0;
 DEFRECL.Text :='';
OBSL01.Text  :='';
OBSL02.Text  :='';
OBSL03.Text  :='';
OBSL04.Text  :='';
NOMSOL.Text  :='';
QTDEQUI.Caption :=FormatFloat(mcasqtd, 0);
QTDSERV.Caption :=FormatFloat(mcasqtd, 0);
QTDACES.Caption :=FormatFloat(mcasqtd, 0);
QTDEQUI.Caption :=FormatFloat(mcasqtd, 0);
TOTBRU.Caption  :=FormatFloat(mcasas, 0);
DESCPEC.Caption :=FormatFloat(mcasas, 0);
VLPECAS.Caption :=FormatFloat(mcasas, 0);
DESCSERV.Caption:=FormatFloat(mcasas, 0);
VLSERV.Caption  :=FormatFloat(mcasas, 0);
TOTAL.Caption   :=FormatFloat(mcasas, 0);

OS5CODSER.Text  :='';
OS5NOMSER.Text  :='';
OS5UND.Text     :='';
OS5QTD.Text     :='';
OS5PCOUNIT.Text :='';
OS5DESC01.Text  :='';
OS5VT.Text      :='';
Frm_ManOS_SerAlt.Memo1.Text:='';
OS2CODPRO.Text  :='';
OS2NOMPRO.Text  :='';
OS2UND.Text     :='';
OS2MODELO.Text  :='';
OS2MARCA.Text   :='';
OS2SERIE.Text   :='';
OS2NUMPAT.Text  :='';
OS2OBS01.Text   :='';
OS2OBS02.Text   :='';
OS4CODPRO.Text  :='';
OS4NOMPRO.Text  :='';
OS4UND.Text     :='';
OS4QTD.Text     :='';
OS4PCOUNIT.Text :='';
OS4DESC01.Text  :='';
OS4VT.Text      :='';
OS3CODPRO.Text  :='';
OS3NOMPRO.Text  :='';
OS3UND.Text     :='';
OS3QTD.Text     :='';



edt_OS1PORTPAROVMOD.clear;
edt_OS1NUMIMMETRO.clear;
edt_OS1NUMMARCSELRET.clear;
edt_OS1NUMMARCREPRET.clear;
edt_OS1NUMMARCSELAFIX.clear;
edt_OS1NUMMARCREPAFIX.clear;
PageControl2.ActivePageIndex:=0;
STGOS2.RowCount:=2;
STGOS2.Rows[1].Clear;
STGOS2.Rows[2].Clear;

STGOS3.RowCount:=2;
STGOS3.Rows[1].Clear;
STGOS3.Rows[2].Clear;

STGOS4.RowCount:=2;
STGOS4.Rows[1].Clear;
STGOS4.Rows[2].Clear;

STGOS5.RowCount:=2;
STGOS5.Rows[1].Clear;
STGOS5.Rows[2].Clear;
mManOs_Oper:=0;

BBINCLUIR.Enabled  :=True;
bbImportaPed.Enabled  :=true;

BBLOCALIZAR.Enabled:=True;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBFATURAR.Enabled  :=False;
bbBaixar.Enabled   :=false;

TabSheet5.Enabled  :=False;
TabSheet6.Enabled  :=False;
TabSheet7.Enabled  :=False;
GroupBox1.Enabled  :=False;
GroupBox2.Enabled  :=False;
GroupBox3.Enabled  :=False;
GroupBox4.Enabled  :=False;


end;

procedure TFrm_ManOs.BBEXCLUIRClick(Sender: TObject);
begin
if Qr_Os01OS1ESTREG.Value=1 then
   begin
   if fmensagem('Esta OS Pode estar sendo alterado em outra estação, deseja continuar?',0,['1','2'],2)<>mrYes then
      exit;
   end;

if fmensagem('Quer realmente excluir esta OS?',0,['1','2'],2)<>mrYes then
   exit;
Qr_Os01.First;

While not Qr_Os01.Eof do
   begin
   fManOs01gant(9);
   fexcluir(0);
   Qr_Os01.Next;
   end;
BBLIMPAR.Click;
fMensagem('OS excluida!',0,['0'],0);

end;

procedure TFrm_ManOs.NOMSOLExit(Sender: TObject);
begin
if not fTestaTam(0,40,NOMSOL.Text,'') then
   NOMSOL.Text:=copy(NOMSOL.Text,1,40);

end;

procedure TFrm_ManOs.NOMSOLKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,40,NOMSOL.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.OS2OBS01KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,130,OS2OBS01.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.OS2OBS01Exit(Sender: TObject);
begin
if not fTestaTam(0,130,OS2OBS01.Text,'') then
   OS2OBS01.Text:=copy(OS2OBS01.Text,1,130);

end;

procedure TFrm_ManOs.OS2OBS02Exit(Sender: TObject);
begin
if not fTestaTam(0,130,OS2OBS02.Text,'') then
   OS2OBS02.Text:=copy(OS2OBS02.Text,1,130);

end;

procedure TFrm_ManOs.OS2OBS02KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,130,OS2OBS02.Text,Key) then
   key:=#0;

end;

procedure TFrm_ManOs.BBIMPRIMIRClick(Sender: TObject);
begin
if CB_MODELO.itemindex=0 then
   fManOS1Imprime(0)
else
   fManos01ImprimeLaser(CB_MODELO.ItemIndex);
end;

function TFrm_ManOS.fManos01ImprimeLaser(ptipo: Integer): Boolean;
var
form_manos_relatorio: TFrm_manos_relatorio;

begin
if valint(CHAVE.Text)=0 then
   exit;


   Application.CreateForm(TFrm_manos_relatorio,form_manos_relatorio);
   if ptipo=2 then
      form_manos_relatorio.pimpbrancos:=false;

   form_manos_relatorio.mOri_Chave:=valint(CHAVE.Text);
   form_manos_relatorio.mOri_Chave_ano:=0;
   form_manos_relatorio.fAbrirOs01;
   form_manos_relatorio.RLReport_os_modelo01.PreviewModal;
   freeandnil(form_manos_relatorio);


end;


function TFrm_ManOS.fManOS1Imprime(ptipo: Integer): Boolean;
var
  mImpCab: Boolean;
  x,y: Integer;
  mlinha: String;
  xTotal: Real;
begin
Qr_Os01.First;
testeform := TFrm_ManOs(FindGlobalComponent('form_Impres_ManOs'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_ManOs);

form_Impres_ManOs.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Qr_Os01.Eof do
   begin
   mpag:=0;
   mlin:=0;
   fManOS1ImpCab(0);
   Qr_Os02.First;
   mImpCab:=True;
   form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
   x:=0;
   if flcadser01(0,Qr_Os01OS1CODCLI.AsString,'') then
      begin
      While not DM4.Tb_CSer01.Eof do
         begin
         mlin:=mlin+1;
         form_Impres_ManOs.RDprint1.impf(mlin,01,'Objeto: '+insere2(DM4.Tb_CSer01nompro.Value,' ',50)
                                 +' Marca: '+insere2(' ',' ',30)
                                 +' Modelo: '+insere2(' ',' ',27),mreduz);
         mlin:=mlin+1;
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere2('-','-',131)+'+',mreduz);
         DM4.Tb_CSer01.Next;
         end;
      end;

{
Objeto: 12345678901234567890123456789012345678901234567890 Marca: 123456789012345678901234567890 Modelo: 123456789012345678901234567
Serie.: 12345678901234567890  Qtd.Ramais Analogicos: 1234567890 Digitais: 1234567890   Qtd.Mesas: 1234567890 Qtd.Troncos: 1234567890

Objeto: 12345678901234567890123456789012345678901234567890 Marca: 1234567890123456789012345678901234567890 Modelo: 12345678901234567
Serie.: 12345678901234567890  Qtd.Ramais Analogicos: 1234567890 Digitais: 1234567890   Qtd.Mesas: 1234567890 Qtd.Troncos: 1234567890

      end;
 }
   While not Qr_Os02.Eof do
      begin
      x:=x+1;
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'Objeto: '+insere2((Qr_Os02OS2CODPRO.AsString+' - '+Qr_Os02PDNOME.Value),' ',45)
                              +' Fabric: '+Insere2(Qr_Os02OS2MARCA.Value,' ',20)
                              +' Modelo: '+Insere2(Qr_Os02OS2MODELO.Value,' ',20)
                              +' Série: '+Insere2(Qr_Os02OS2SERIE.Value,' ',20),mreduz);
      if (Trim(Qr_Os02OS2OBS01.Value)<>'') or (Trim(Qr_Os02OS2OBS02.Value)<>'') then
         begin
         if Trim(Qr_Os02OS2OBS01.Value)<>'' then
            begin
            fManos01TestaPag(0);
            mlin:=mlin+1;
            form_Impres_ManOs.RDprint1.ImpF(mlin,01,Qr_Os02OS2OBS01.Value,mreduz);
            end;
         if Trim(Qr_Os02OS2OBS02.Value)<>'' then
            begin
            fManos01TestaPag(0);
            mlin:=mlin+1;
            form_Impres_ManOs.RDprint1.ImpF(mlin,01,Qr_Os02OS2OBS02.Value,mreduz);
            end;
         fManos01TestaPag(0);
         mlin:=mlin+1;
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end
      else
         begin
         fManos01TestaPag(0);
         mlin:=mlin+1;
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end;
      Qr_Os02.Next;
      end;
{
   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'Objeto: '+insere2('_','_',45)
                              +' Fabric: '+Insere2('_','_',20)
                              +' Modelo: '+Insere2('_','_',20)
                              +' Série: '+Insere2('_','_',20),mreduz);
      fManos01TestaPag(0);
      mlin:=mlin+1;
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
      end;


 }
  if (trim(OBSL01.text)<>'')
     or (trim(OBSL02.text)<>'')
     or (trim(OBSL03.text)<>'')
     or (trim(OBSL04.text)<>'') then
     begin
     mlin:=mlin+1;
     form_Impres_ManOs.RDprint1.ImpF(mlin,01,Centra('OBSERVACOES',' ',80),mneg);
     if (trim(OBSL01.text)<>'') then
        begin
        fManos01TestaPag(0);
        mlin:=mlin+1;
        form_Impres_ManOs.RDprint1.ImpF(mlin,01,OBSL01.text,mnormal);
        end;

     if (trim(OBSL02.text)<>'') then
        begin
        fManos01TestaPag(0);
        mlin:=mlin+1;
        form_Impres_ManOs.RDprint1.ImpF(mlin,01,OBSL02.text,mnormal);
        end;

     if (trim(OBSL03.text)<>'') then
        begin
        fManos01TestaPag(0);
        mlin:=mlin+1;
        form_Impres_ManOs.RDprint1.ImpF(mlin,01,OBSL03.text,mnormal);
        end;

     if (trim(OBSL04.text)<>'') then
        begin
        fManos01TestaPag(0);
        mlin:=mlin+1;
        form_Impres_ManOs.RDprint1.ImpF(mlin,01,OBSL04.text,mnormal);
        end;



     end;



   mlin:=mlin+1;
   form_Impres_ManOs.RDprint1.ImpF(mlin,01,Centra('DEFEITO RECLAMADO E/OU SERVICOS',' ',80),mneg);
   x:=0;
   for x:=0 to DEFRECL.Lines.Count-1 do
      begin
      fManos01TestaPag(0);
      mlin:=mlin+1;
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,DEFRECL.Lines[x],mnormal);
      end;
   if x<3 then
      begin
      for y:=x to 3 do
         begin
         fManos01TestaPag(0);
         mlin:=mlin+1;
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,' ',mreduz);
         end;
      end;
// serviços executados

   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_ManOs.RDprint1.ImpF(mlin,01,Centra('SERVICOS EXECUTADOS',' ',80),mneg);
   x:=0;
   xTotal:=0;
   Qr_Os05.First;
   while not Qr_Os05.Eof do
      begin
      if x=0 then
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |     Código    | Descricao dos Servicos                                                        |  Valor Total  |',mreduz);
         end;
{
|Item|Quantidade |und|    Código     | Descricao dos Servicos                                      |Preco Unitario |  Valor Total  |
| 123|123456.123 |123|12345678901234 | 123456789012345678901234567890123456789012345678901234567890|ZZZ.ZZZ.ZZ9,99 |ZZZ.ZZZ.ZZ9,99 |
}
      x:=x+1;
      mlin:=mlin+1;
      fManos01TestaPag(0);
      mlinha:='|'+insere(FormatFloat('###0', Qr_Os05OS5ITEM.Value),' ',05)
             +'|'+insere(FormatFloat(mcasqtd, Qr_Os05OS5QTD.Value),' ',11)
             +' |'+Centra(Qr_Os05OS5CODPRO.AsString,' ',14)+'| ';
      Qr_Os05D.First;
      if Qr_Os05D.Locate('OS5DCODEMP;OS5DLOTSEQ;OS5DCHAVE;OS5DITEM',
                         vararrayof([Qr_Os05OS5CODEMP.Value,
                                     Qr_Os05OS5LOTSEQ.Value,
                                     Qr_Os05OS5CHAVE.Value,
                                     Qr_Os05OS5ITEM.Value]),[]) then
          begin
          mlin:=mlin-1;
          While (not (Qr_Os05D.Eof) and
            (Qr_Os05DOS5DCODEMP.Value =Qr_Os05OS5CODEMP.Value) and
            (Qr_Os05DOS5DLOTSEQ.Value =Qr_Os05OS5LOTSEQ.Value)  and
               (Qr_Os05DOS5DCHAVE.Value  =Qr_Os05OS5CHAVE.Value)  and
               (Qr_Os05DOS5DITEM.Value     =Qr_Os05OS5ITEM.Value))  do
            begin
            mlinha:=mlinha+insere2(Qr_Os05DOS5DDESC.Value,' ',62);
            Qr_Os05D.Next;
            if (Qr_Os05D.Eof)
               or (Qr_Os05DOS5DCODEMP.Value<>Qr_Os05OS5CODEMP.Value)
               or (Qr_Os05DOS5DLOTSEQ.Value<>Qr_Os05OS5LOTSEQ.Value)
               or (Qr_Os05DOS5DCHAVE.Value <>Qr_Os05OS5CHAVE.Value)
               or (Qr_Os05DOS5DITEM.Value  <>Qr_Os05OS5ITEM.Value)  then
               begin
               mlinha:=mlinha+' '+insere(' ',' ',14)
                      +' |'+insere(FormatFloat(mcasas, (Qr_Os05OS5PU.Value*Qr_Os05OS5QTD.Value)),' ',14)+' |';
               end
            else
               mlinha:=mlinha+'                |               |';
            mlin:=mlin+1;
            x:=x+1;
            fManos01TestaPag(0);
            form_Impres_ManOs.RDprint1.ImpF(mlin,01,mlinha,mreduz);
            mlinha:='|     |            |               | '
            end;
         end
      else
         begin
         mlinha:=mlinha+insere2(Qr_Os05PDNOME.Value,' ',62)
                +' '+insere(' ',' ',14)
                +'  |'+insere(FormatFloat(mcasas, (Qr_Os05OS5PU.Value*Qr_Os05OS5QTD.Value)-Qr_Os05OS5TOTDES.Value),' ',14)+' |';
         xTotal:=xTotal+(Qr_Os05OS5PU.Value*Qr_Os05OS5QTD.Value)-Qr_Os05OS5TOTDES.Value;
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,mlinha,mreduz);
         end;
      Qr_Os05.Next;
      end;
   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |     Código    | Descricao dos Servicos                                                        |  Valor Total  |',mreduz);
      end;

   if x<10 then
      begin
      for y:=x to 9 do
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|_____|____________|_______________|_______________________________________________________________________________|_______________|',mreduz);
//         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end;
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|00000|>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>TOTAL DOS SERVIÇOS PRESTADOS >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>|'+Insere(formatfloat(mcasas,xTotal),' ',15)+'|',mreduz);
//TOTAL
      end;
// pecas utilizadas

   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_ManOs.RDprint1.ImpF(mlin,01,Centra('PECAS UTILIZADAS',' ',80),mneg);
   x:=0;
   Qr_Os04.First;
   while not Qr_Os04.Eof do
      begin
      if x=0 then
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  Descricao das Pecas                                          |Preco Unitario |Preco Unitario |  Valor Total  |',mreduz);
         end;
      x:=x+1;
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|'+insere(FormatFloat('###0', Qr_Os04OS4ITEM.Value),' ',04)
                              +' | '+insere(FormatFloat(mcasqtd, Qr_Os04OS4QTD.Value),' ',10)
                              +' | '+insere2(Qr_Os04PDNOME.Value,' ',61)
                              +' |'+insere(FormatFloat(mcasaspu, Qr_Os04OS4PU.Value),' ',14)
                              +' |'+insere(FormatFloat(mcasaspu, Qr_Os04OS4TOTDES.Value),' ',14)
                              +' |'+insere(FormatFloat(mcasas, Qr_Os04total_liquido.AsFloat),' ',14)+' |',mreduz);
      Qr_Os04.Next;
      end;

{

|Item | Quantidade |  Descricao das Pecas                                          |Preco Unitario |Preco Unitario |  Valor Total  |
|12345|123456789012|123456789012345678901234567890123456789012345678901234567890123|zzz.zzz.zz9,99 |zzz.zzz.zz9,99 |zzz.zzz.zz9,99 |
                                                                                    12345678901234
|_____|____________|_______________________________________________________________|_______________|_______________|_______________|


}
   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);

      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  Descricao das Pecas                                          |Preco Unitario |Preco Unitario |  Valor Total  |',mreduz);

      end;

   if x<6 then
      begin
      for y:=x to 6 do
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|_____|____________|_______________________________________________________________|_______________|_______________|_______________|',mreduz);
         end;
      end;

// acessorios


   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
   mlin:=mlin+1;
   fManos01TestaPag(0);
   form_Impres_ManOs.RDprint1.ImpF(mlin,01,Centra('ITENS PARA CONSERTOS EM LABORATORIOS',' ',80),mneg);
   x:=0;
   Qr_Os03.First;
   while not Qr_Os03.Eof do
      begin
      if x=0 then
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  und  | Descricao dos Itens                                                                                   |',mreduz);
         end;
      mlin:=mlin+1;
      fManos01TestaPag(0);

      x:=x+1;
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|'+insere(FormatFloat('###0', Qr_Os03OS3ITEM.Value),' ',04)
                              +' |'+insere(FormatFloat(mcasqtd, Qr_Os03OS3QTD.Value),' ',12)
                              +'|  '+insere2(Qr_Os03PDUND.Value,' ',4)
                              +' |'+insere2(Qr_Os03PDNOME.Value,' ',102)+'|',mreduz);
      Qr_Os03.Next;
      end;
   if x=0 then
      begin
      mlin:=mlin+1;
      fManos01TestaPag(0);
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|Item | Quantidade |  und  | Descricoes dos Itens                                                                                  |',mreduz);
      end;

//|Item | Quantidade |  und  |     Código     | Descricao dos Servicos                             | Preco Unitario |    Valor Total |
//  123   1234567890    123    12345678901234   123456789012345678901234567890123456789001234567890| zzz.zzz.zz9,99 | zzz.zzz.zz9,99 |


   if x<2 then
      begin
      for y:=x to 2 do
         begin
         mlin:=mlin+1;
         fManos01TestaPag(0);
         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'|_____|____________|_______|_______________________________________________________________________________________________________|',mreduz);

//         form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
         end;
      end;
    mlin:=mlin+1;
    form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
    mlin:=mlin+1;
    form_Impres_ManOs.RDprint1.ImpF(mlin,01,Centra('BAIXA TECNICA',' ',80),mneg);
    mlin:=mlin+1;
    form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere2('Descricao da baixa tecnica.',' ',130)+'+',mreduz);
    if length(Qr_Os01OS1DESCBAIXA.AsString)<130 then
      begin
      mlin:=mlin+1;
      form_Impres_ManOs.RDprint1.ImpF(mlin,01,Qr_Os01OS1DESCBAIXA.AsString,mreduz);
      end
    else
      begin
      x:=0;
      while (x < length(Qr_Os01OS1DESCBAIXA.AsString)) do
        begin
        mlin:=mlin+1;
        form_Impres_ManOs.RDprint1.ImpF(mlin,01,Copy(Qr_Os01OS1DESCBAIXA.AsString,x,130),mreduz);
        x:=x + 130;
        end;
      end;

   mlin:=mlin+1;
   Qr_OS01.Next;
   end;
mlin:=mlin+1;
fManos01TestaPag(0);
form_Impres_ManOs.RDprint1.ImpF(mlin,01,'+'+insere('-','-',130)+'+',mreduz);
mlin:=mlin+1;
fManos01TestaPag(0);
form_Impres_ManOs.RDprint1.ImpF(mlin,01,'RECEBI OS SERVICOS E/OU MATERIAIS CONSTANTE NESTA OS',mreduz);
mlin:=mlin+2;
fManos01TestaPag(0);
form_Impres_ManOs.RDprint1.ImpF(mlin,01,'                                                                          Data:    /   /          Horario de Entrada: ______:_______',mreduz);
mlin:=mlin+2;
fManos01TestaPag(0);
form_Impres_ManOs.RDprint1.ImpF(mlin,01,'                                                                          Data:    /   /          Horario de Saida  : ______:_______',mreduz);
mlin:=mlin+3;
fManos01TestaPag(0);
form_Impres_ManOs.RDprint1.ImpF(mlin,01,'____________________________________                                                              __________________________________',mreduz);
mlin:=mlin+1;
//fManos01TestaPag(0);
form_Impres_ManOs.RDprint1.ImpF(mlin,01,' Assinatura do Cliente por extenso                                                                              Tecnico',mreduz);
mlin:=mlin+1;
//form_Impres_ManOs.RDprint1.ImpF(mlin,01,insere2('=','=',132),mreduz);


{
RECEBI OS SERVICOS E/OU MATERIAIS CONSTANTE NESTA OS
                                                                          Data:    /   /          Horario de Entrada: ______:_______
                                                                          Data:    /   /          Horario de Saida  : ______:_______
____________________________________                                                              __________________________________
 Assinatura do Cliente por extenso                                                                              Tecnico
}
if form_Impres_ManOs.RDprint1.Setup then form_Impres_ManOs.RDprint1.Fechar;
form_Impres_ManOs.free;
form_Impres_ManOs:=nil;
result:=true;
end;

function TFrm_ManOS.fManOS1ImpCab(ptipo: Integer): Boolean;
var
mLin_Cab: Integer;
begin
mLin_Cab:=1;
form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'+'+insere2('-','-',130)+'+',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',60)              +' Ordem de Servico: '+Formatfloat('000000', Qr_Os01OS1CHAVE.Value)+insere2(' ',' ',45)  +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_ManOs.RDprint1.ImpF(mLin_cab,01,'|'+insere2('Endereco: '+DM1.Tb_EmpENDERECO.Value,' ',60)  +' Data.......: '+FormatdateTime(fdt2, Qr_Os01OS1DATA.Value)  +insere2(' ',' ',46)+'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_ManOs.RDprint1.ImpF(mLin_cab,01,'|'+insere2('Bairro..: '+DM1.Tb_EmpBAIRRO.Value  ,' ',60)  +' Cidade.....: '+insere2(Trim(DM1.Tb_EmpCIDADE.Value)+'-'+DM1.Tb_EmpUF.Value,' ',56) +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Fone....: '+DM1.Tb_EmpFONE.Value    ,' ',60)  +' Fax........: '+insere2(DM1.Tb_EmpFAX.Value,' ',56) +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'+'+insere2('-','-',130)+'+',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Cliente.: '+Qr_Os01OS1CODCLI.AsString+'-'+Qr_Os01CRAZAO.Value     ,' ',60)  +' Solicitante: '+insere2(Qr_Os01OS1NOMSOL.Value,' ',56)  +'|',mreduz);
mLin_Cab:=mLin_Cab+1;
form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Fantasia: '+Qr_Os01CDENOM.AsString,' ',60)  +'              '+insere2(' ',' ',56)  +'|',mreduz);
mLin_Cab:=mLin_Cab+1;

form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('Endereco: '+Trim(Qr_Os01CLOG.Value)+' '+Qr_Os01CBAIRRO.Value,' ',60)          +' Cidade.....: '+insere2(Trim(Qr_Os01CCIDADE.Value)+'-'+Qr_Os01CUF.Value,' ',42)+' CEP:' +insere2(Qr_Os01CCEP.Value,' ',9)+'|',mreduz);
mLin_Cab:=mLin_Cab+1;
if Qr_Os01CCNPJ.Value>0 then
   form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('CNPJ....: '+FormatFloat('00"."000"."000/0000-00',Qr_Os01CCNPJ.Value),' ',30)+' Ins.Est: '+insere2(Qr_Os01CIE.Value,' ',20)
                                  +' Telefone...: '+insere2(Qr_Os01CFONE01.Value,' ',22)
                                  +' Fax........: '+insere2(Qr_Os01CFAX.Value,' ',20)+'|',mreduz)
else
   form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'|'+insere2('CPF.....: '+FormatFloat('000"."000"."000-00',Qr_Os01CCPF.Value),' ',26)+' Reg.Geral..: '+insere2(Qr_Os01CRG.Value,' ',20)
                                  +' Telefone...: '+insere2(Qr_Os01CFONE01.Value,' ',22)
                                  +' Fax........: '+insere2(Qr_Os01CFAX.Value,' ',20)+'|',mreduz);
mLin_Cab:=mLin_Cab+1;

form_Impres_ManOs.RDprint1.ImpF(mLin_Cab,01,'+'+insere('-','-',130)+'+',mreduz);
mlin:=mLin_Cab;
result:=true;
end;

function TFrm_ManOS.fManos01TestaPag(ptipo: Integer): Boolean;
begin
if mlin>60 then
   begin
   form_Impres_ManOs.RDprint1.Novapagina;
   fManOS1ImpCab(0);
   result:=true
   end
else
   result:=False;
end;


procedure TFrm_ManOs.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If BBGRAVAR.Enabled then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],2) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            BBLIMPAR.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;


end;

procedure TFrm_ManOs.bbAltDesSerClick(Sender: TObject);
begin
Frm_ManOS_SerAlt.StaticText1.Caption:='Descrição Original: '+DM1.Tb_ProPDNOME.Value;
if mOpOs5=0 then
   Frm_ManOS_SerAlt.Memo1.Text:='';
Frm_ManOS_SerAlt.ShowModal;
OS5QTD.SetFocus;
end;

procedure TFrm_ManOs.BBFATURARClick(Sender: TObject);
begin
if Qr_Os01OS1CHAVE.IsNull then
   begin
   fMensagem('Não ha Ordem de Serviço selecionada!',0,['0'],0);
   exit;
   end;

if (Qr_Os01OS1STATUS.AsInteger=2) then
   begin
   fMensagem('Pedido Confirmado, Não Pode ser Faturado!',0,['0'],0);
   fMensagem('Para refaturar acesse: Faturamento > Manutenção - Chave..:'+Qr_Os01OS1CHAVEPED.AsString,0,['0'],0);
   exit;
   end;

if ValFloat(CHAVEPED.Text)>0 then
  begin
   fMensagem('Pedido Faturado, Não Pode ser Re-faturado!',0,['0'],0);
   fMensagem('Para refaturar acesse: Faturamento > Manutenção - Chave..:'+Qr_Os01OS1CHAVEPED.AsString,0,['0'],0);
   exit;
  end;

flcadpar01(0,codemp,'1');

//aki

fFaturarPedido_ultimo(0);


//
end;



function TFrm_ManOs.fFaturarPedido_ultimo(pTipo: Integer):Boolean;
var
  mVenda_GP: TFrm_Vendas_GravarPedido;
  mSeq_Item: Integer;

  mPed_UF_Cli            : String;
  mPed_Cli_RazSoc        : String;
  mPed_Cli_ConsFin       : Boolean;
  mPed_Cli_ST            : Boolean;
  mPed_Cli_icmsnr        : Boolean;
  mPed_Cli_MotDes        : Integer;
  mPed_Cli_REDICMSNOR    : Boolean;
  mPed_CliCalcIPI        : Boolean;

  mm, yyyy : Integer;
  dataf : TDate;
begin

Application.CreateForm(TFrm_Vendas_GravarPedido,mVenda_GP);
cds_aliquotas.EmptyDataSet;
fParametrosAliquotas(Qr_Os01OS1CODCLI.AsFloat
,1 // tipo do pedido
,mPed_UF_Cli
,mPed_Cli_RazSoc
,mVenda_GP.mPd_EstNor
,mVenda_GP.mPd_EstCons
,mVenda_GP.mPd_EstTerc
,mVenda_GP.mPd_EstVenda
,mPed_Cli_MotDes
,mPed_Cli_ConsFin
,mPed_CliCalcIPI
,mPed_Cli_ST
,mPed_Cli_REDICMSNOR
,mPed_Cli_icmsnr
,cds_aliquotas);

flcadcli(1,0,Qr_Os01OS1CODCLI.AsString);

mVenda_GP.mPed1_Codemp        :=1;
mvenda_gp.mped1_Chave         :=0;
mVenda_GP.mPed1_CodCli        :=Qr_Os01OS1CODCLI.AsFloat;
mVenda_GP.mPed1_Datap         :=StrToDate(FormatDateTime('dd/mm/yyyy',Now));
mVenda_GP.mPed1_Tipo_Ped      :=0;
mVenda_GP.mPed1_CodFP         :=0;
mVenda_GP.mPed1_NomFP         :='';
mVenda_GP.mPed1_BaixaFP       :='N';
mVenda_GP.mPed1_CodPV         :=1;
mVenda_GP.mPed1_PvaCtd        :=0;
mVenda_GP.mPed1_TabPV         :='AV';
mVenda_GP.mPed1_TpComis       :=0;
mVenda_GP.mPed1_Codven        :=DM1.Tb_CliCCODVEN.AsInteger;
mVenda_GP.mPed1_CodBco1       :=DM1.Tb_CliCCODBCO01.AsInteger;
mVenda_GP.mPed1_CodBco101     :=DM1.Tb_CliCCODBCO01.AsInteger;
mVenda_GP.mped1_submod_grav   :=0;
mVenda_GP.mPed1_cfop1         :=5101;
mVenda_GP.mPed1_cfop2         :=5101;
mVenda_GP.mPed1_Frete_CIFFOB  :=0;
mVenda_GP.mPed1_CodTra        :=0;
mVenda_GP.mPed1_AjustaFP      :='S';
if not flcadpv(1,0,DM1.Tb_CliCTABPV.AsString,DM1.Tb_CliCCODPV.AsString) then
  flcadpv(1,0,'AV','01');
mVenda_GP.mPed1_CodPV   :=DM1.Tb_PVPVCODPV.AsInteger;
mVenda_GP.mPed1_PvaCtd  :=DM1.Tb_PVPVACTD.AsFloat;
mVenda_GP.mPed1_TabPV   :=DM1.Tb_PVPVCODTIP.asString;
mVenda_GP.mPed1_TpComis :=DM1.Tb_PVPVTPC.AsInteger;
mVenda_GP.mped1_tppco   :=2; // preco extra;
mVenda_GP.mPed1_Tabela  :='1';

mVenda_GP.mPed1_NomFP:='';
if fLerGenerico_query('CADFP','FPDESC,FPCODIGO',' 1=1 ORDER BY FPCODIGO ',query_consulta) then
   begin
   mVenda_GP.mPed1_CodFP:=query_consulta.fieldbyname('FPCODIGO').AsInteger;
   mVenda_GP.mPed1_NomFP:=query_consulta.fieldbyname('FPDESC').AsString;
   end;
mVenda_GP.mPed1_BaixaFP:='N';

flcadpv2('1',DM1.Tb_PVPVCODTIP.AsString,DM1.Tb_PVPVCODPV.AsString);
DM1.Tb_PV2.First;

DM1.Tb_PV2.First;
mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
mVenda_GP.mPed1_PrzNovos_001:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
mVenda_GP.mPed1_PrzNovos_101:='P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';


DM1.Tb_PV2.Next;
while not DM1.Tb_PV2.Eof do

   begin
   mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
   mVenda_GP.mPed1_PrzNovos_001:=mVenda_GP.mPed1_PrzNovos_001+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';
   mVenda_GP.mPed1_PrzNovos_101:=mVenda_GP.mPed1_PrzNovos_101+'P|'+DM1.Tb_PV2PV2PRAZO.AsString+'|||||||||||';

   DM1.Tb_PV2.Next;
   end;
mVenda_GP.mPed1_QtdParc_ant :=-1;
mVenda_GP.mped1_QtdParc     :=1;
mVenda_GP.mPed1_AjustaFP    :='S';
mVenda_GP.mPed1_pvdescf     :=DM1.Tb_PVPVDESCF.AsFloat;
mVenda_GP.mPed1_pvddescf    :=DM1.Tb_PVPVDESCF.AsInteger;
mVenda_GP.mPed1_pvdiasdescf :=DM1.Tb_PVPVDIASDESCF.AsInteger;
mVenda_GP.mped1_npedori1    :='0';
mVenda_GP.mped1_npedori2    :='0';
mVenda_GP.mPed1_Obs_Ped     :=DEFRECL.Text;
mVenda_GP.mPed1_Obs_NF      :='Referente a O.S. Numero '+Qr_Os01OS1CHAVE.AsString+'.';
mVenda_GP.fGravarPed01(0,0);

// produtos

Qr_Os04.First;
mSeq_Item:=0;
tb_ped02_pre.CreateDataSet;
Tb_Ped02_pre.EmptyDataSet;

while not Qr_Os04.Eof do
  begin
  mSeq_Item:=mSeq_Item+1;
  tb_ped02_pre.Append;
  tb_ped02_preP2CODEMP.AsInteger    :=mVenda_GP.mPed1_Codemp;
  tb_ped02_preP2LOTSEQ.AsInteger    :=mVenda_GP.mPed1_Chave_ano;
  tb_ped02_preP2CHAVE.AsInteger     :=mVenda_GP.mPed1_Chave;
  tb_ped02_preP2ORDEM.AsInteger     :=01;
  tb_ped02_preP2ITEM.AsInteger      :=mSeq_Item;
  tb_ped02_preP2CODPRO.AsFloat      :=Qr_Os04OS4CODPRO.AsFloat;
  tb_ped02_preP2QTD.AsFloat         :=Qr_Os04OS4QTD.AsFloat;
  tb_ped02_preP2PRECO.AsFloat       :=Qr_Os04OS4PU.AsFloat;
  tb_ped02_preP2CODVEN.AsInteger    :=mVenda_GP.mPed1_Codven;
  fDadosFiscais(Qr_Os04OS4CODPRO.AsFloat
               ,mPed_UF_Cli
               ,mPed_Cli_ConsFin
               ,mPed_Cli_icmsnr
               ,mPed_CliCalcIPI
               ,mPed_Cli_REDICMSNOR
               ,mPed_Cli_MotDes
               ,tb_ped02_pre
               ,cds_aliquotas);


  tb_ped02_preP2DESC_PERC01.AsFloat :=Qr_Os04OS4DESC01.AsFloat;
  tb_ped02_preP2DESC_PERC02.AsFloat :=0;
  tb_ped02_preP2DESC_PERC03.AsFloat :=0;
  tb_ped02_pre.Post;
  mVenda_GP.fGravarItemCDS(0 // produto
                      ,0
                      ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                      ,mVenda_GP.mPed1_CodFP
                      ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                      ,0 //pSituacao: Integer;
                      ,'0'
                      ,mVenda_GP.mPed1_NomFP
                      ,mVenda_GP.mPed1_BaixaFP
                      ,tb_ped02_preP2QTD.AsFloat  //pQtd_Cal
                      ,tb_ped02_preP2PRECO.AsFloat // pPrecoUnit_Cal
                      ,DM1.Tb_ProPDPCOFAB.AsFloat //,pPrecoTab_Cal
                      ,DM1.Tb_ProPDUCPR.AsFloat // pPrecoUCPR_Cal
                      ,DM1.Tb_ProPDPRECOC.AsFloat // pPrecoCus_Cal
                      ,0 // pPrecoMax_Cal,
                      ,0
                      ,0
                      ,0
                      ,0
                      ,0
                      ,0
                      ,tb_ped02_pre);
  Qr_Os04.Next;
  end;
tb_ped02_pre.Close;

// serviços

Qr_Os05.First;
mSeq_Item:=0;
tb_ped02s_pre.CreateDataSet;
tb_ped02s_pre.EmptyDataSet;

while not Qr_Os05.Eof do
  begin
  mSeq_Item:=mSeq_Item+1;
  tb_ped02s_pre.Append;
  tb_ped02s_preP2SCODEMP.AsInteger    :=mVenda_GP.mPed1_Codemp;
  tb_ped02s_preP2SCHAVE_ANO.AsInteger :=mVenda_GP.mPed1_Chave_ano;
  tb_ped02s_preP2SCHAVE.AsInteger     :=mVenda_GP.mPed1_Chave;
  tb_ped02s_preP2SITEM.AsInteger      :=mSeq_Item;
  tb_ped02s_preP2SCODSER.AsFloat      :=Qr_Os05OS5CODPRO.AsFloat;
  tb_ped02s_preP2SQTD.AsFloat         :=Qr_Os05OS5QTD.AsFloat;
  tb_ped02s_preP2SPRECO.AsFloat       :=Qr_Os05OS5PU.AsFloat;
  tb_ped02s_preP2SCODVEN.AsInteger    :=mVenda_GP.mPed1_Codven;
  tb_ped02s_preP2SPDESC01.AsFloat     :=Qr_Os05OS5DESC01.AsFloat;;
  tb_ped02s_preP2SPDESC02.AsFloat     :=0;
  tb_ped02s_preP2SPDESC03.AsFloat     :=0;
  tb_ped02s_pre.Post;

  mVenda_GP.fGravarItemCDS(1 // produto
                      ,0
                      ,2 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta p2Estoque
                      ,mVenda_GP.mPed1_CodFP
                      ,0 //apenas calcular  tipo do evento 0-inclusao 1-alteracao 2-exclusao 3-calcular
                      ,0 //pSituacao: Integer;
                      ,'0'
                      ,mVenda_GP.mPed1_NomFP
                      ,mVenda_GP.mPed1_BaixaFP
                      ,tb_ped02s_preP2SQTD.AsFloat  //pQtd_Cal
                      ,tb_ped02s_preP2SPRECO.AsFloat // pPrecoUnit_Cal
                      ,tb_ped02s_preP2SPCOTAB.AsFloat //,pPrecoTab_Cal
                      ,0 // pPrecoUCPR_Cal
                      ,tb_ped02s_preP2SPCOCUS.AsFloat // pPrecoCus_Cal
                      ,0 // pPrecoMax_Cal,
                      ,0
                      ,0
                      ,0
                      ,0
                      ,0
                      ,0
                      ,tb_ped02s_pre);
  Qr_Os05.next;
  end;
tb_ped02s_pre.Close;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add(' update CADOS01 '
                  +' set OS1STATUS =2, OS1CHAVEPED = '+QuotedStr(FloatToStr(mVenda_GP.mped1_Chave))
                  +' where OS1CHAVE = '+Qr_Os01OS1CHAVE.AsString
                  +' and OS1CODEMP = '+Qr_Os01OS1CODEMP.AsString
                  +' and OS1LOTSEQ = '+Qr_Os01OS1LOTSEQ.AsString);
try
  DM1.Query1.ExecSQL;
  CHAVEPED.Text := FloatToStr(mVenda_GP.mPed1_Chave);
  fmensagem('Concluido!, Chave de Pedido = '+CHAVEPED.Text,0,['0'],0);
except
  end;

FreeAndNil(mVenda_GP);
end;



procedure TFrm_ManOs.CODTECExit(Sender: TObject);
begin
if ValFloat(CODTEC.Text)=0 then
   begin
   CODTEC.Text:='';
   NOMTEC.Text:='';
   exit;
   end;
CODTEC.Text:=fdeixanum(CODTEC.Text);

if flcadfun(1,0,CODTEC.Text) then
   begin
   NOMTEC.Text  :=DM2.Tb_FunCFNOMFUN.Value;
   end
else
   begin
   fMensagem('Funcionário não Cadastrado!',0,['0'],0);
   CODTEC.SetFocus;
   end;
end;

procedure TFrm_ManOs.CODTECKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTEC.Text:=fChamafun(0,'frm_manos',key);
   CODTECExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;



end;

procedure TFrm_ManOs.HORAENTExit(Sender: TObject);
begin
if Trim(HORAENT.Text)<>':' then
   begin
   try
      HORAENT.Text:=FormatDateTime('hh:nn', StrToTime(HORAENT.text));
   except
      fMensagem('Hora Inválida!',0,['0'],0);
      HORAENT.SetFocus;
      end;
   end;
end;

procedure TFrm_ManOs.HORASAIExit(Sender: TObject);
begin
if Trim(HORASAI.Text)<>':' then
   begin
   try
      HORASAI.Text:=FormatDateTime('hh:nn', StrToTime(HORASAI.text));
   except
      fMensagem('Hora Inválida!',0,['0'],0);
      HORASAI.SetFocus;
      end;
   end;

end;

procedure TFrm_ManOs.OBSL01Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBSL01.Text,'') then
   OBSL01.Text:=copy(OBSL01.Text,1,60);
end;

procedure TFrm_ManOs.OBSL02Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBSL02.Text,'') then
   OBSL02.Text:=copy(OBSL02.Text,1,60);

end;

procedure TFrm_ManOs.OBSL03Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBSL03.Text,'') then
   OBSL03.Text:=copy(OBSL03.Text,1,60);

end;

procedure TFrm_ManOs.OBSL04Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBSL04.Text,'') then
   OBSL04.Text:=copy(OBSL04.Text,1,60);

end;



function tfrm_ManOs.fOs01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
minstru:=' Select ';
v:='';
for x:=0 to Qr_Os01.FieldCount-1 do
   begin
   if Qr_Os01.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+Qr_Os01.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADOS01,CADCLI where OS1CODNOV=0'+DM1.Qr_EventoCODNOV.AsString
                +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=OS1CODEMP ')
                +' and CCODCLI=OS1CODCLI ';

Qr_Os01.Close;
Qr_Os01.SQL.Clear;
Qr_Os01.SQL.add(minstru);
//QR_os01.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
Qr_Os01.Open;


minstru:=' Select ';
v:='';
for x:=0 to Qr_Os02.FieldCount-1 do
   begin
   if Qr_Os02.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+Qr_Os02.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADOS02,CADPRO where OS2CODNOV=0'+DM1.Qr_EventoCODNOV.AsString
                +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS2CODEMP ')
               +' and PDCODPRO=OS2CODPRO'
               +' order by OS2ITEM ';
Qr_Os02.Close;
Qr_Os02.SQL.Clear;
Qr_Os02.SQL.add(minstru);
Qr_Os02.Open;

minstru:=' Select ';
v:='';
for x:=0 to Qr_Os03.FieldCount-1 do
   begin
   if Qr_Os03.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+Qr_Os03.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADOS03,CADPRO where OS3CODNOV=0'+DM1.Qr_EventoCODNOV.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS3CODEMP ')
                  +' and PDCODPRO=OS3CODPRO'
                  +' order by OS3ITEM ';

Qr_Os03.Close;
Qr_Os03.SQL.Clear;
Qr_Os03.SQL.add(minstru);
Qr_Os03.Open;


minstru:=' Select ';
v:='';
for x:=0 to Qr_Os04.FieldCount-1 do
   begin
   if Qr_Os04.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+Qr_Os04.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADOS04,CADPRO where OS4CODNOV=0'+DM1.Qr_EventoCODNOV.AsString
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS4CODEMP ')
                  +' and PDCODPRO=OS4CODPRO'
                  +' order by OS4ITEM ';

Qr_Os04.Close;
Qr_Os04.SQL.Clear;
Qr_Os04.SQL.add(minstru);
Qr_Os04.Open;

minstru:=' Select ';
v:='';
for x:=0 to Qr_Os05.FieldCount-1 do
   begin
   if Qr_Os05.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+Qr_Os05.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADOS05,CADPRO where OS5CODNOV=0'+DM1.Qr_EventoCODNOV.AsString
                +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=OS5CODEMP ')
                +' and PDCODPRO=OS5CODPRO'
                +' order by OS5ITEM ';

Qr_Os05.Close;
Qr_Os05.SQL.Clear;
Qr_Os05.SQL.add(minstru);
Qr_Os05.Open;

minstru:=' Select ';
v:='';
for x:=0 to Qr_Os05D.FieldCount-1 do
   begin
   if Qr_Os05D.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+Qr_Os05D.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADOS05D where OS5DCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
Qr_Os05D.Close;
Qr_Os05D.SQL.Clear;
Qr_Os05D.SQL.add(minstru);
Qr_Os05D.Open;
BBINCLUIR.Enabled   :=False;
bbImportaPed.Enabled  :=False;

BBLOCALIZAR.Enabled :=False;
BBALTERAR.Enabled   :=False;
BBGRAVAR.Enabled    :=False;
BBLIMPAR.Enabled    :=False;
BBIMPRIMIR.Enabled  :=False;
BBFATURAR.Enabled   :=false;
bbBaixar.Enabled    :=false;

BBEXCLUIR.Enabled   :=False;
Result:=True;
end;


function fMan01restaura(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select * from CADOS01 where '
                  +' OS1CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                  +' and OS1LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                  +' and OS1CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString);
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   minstru:='Insert into CADOS01 (';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+') Select ';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;
         
      if DM1.Query2.Fields[x].FieldName='OS1STATUS' then
         minstru:=minstru+v+FormatFloat('0',ptipo)+' as OS1STATUS '
      else
         minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+' from OLD_CADOS01 where OS1CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,3682,'Frm_Manos','CADOS01_OLD');
      end;
   DM1.Query1.Close;
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select * from CADOS02 where '
                  +' OS2CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                  +' and OS2LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                  +' and OS2CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString);
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   minstru:='Insert into OLD_CADOS02 (';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;
         
      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+') Select ';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;
         
      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+' from OLD_CADOS02 where OS2CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,3724,'Frm_Manos','CADOS02_OLD');
      end;
   DM1.Query1.Close;
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select * from CADOS03 where '
                  +' OS3CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                  +' and OS3LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                  +' and OS3CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString);
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   minstru:='Insert into CADOS03 (';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+') Select ';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+' from OLD_CADOS03 where OS3CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,3765,'Frm_Manos','CADOS03_OLD');
      end;
   DM1.Query1.Close;
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select * from CADOS04 where '
                  +' OS4CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                  +' and OS4LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                  +' and OS4CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString);
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   minstru:='Insert into CADOS04 (';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+') Select ';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+' from OLD_CADOS04 where OS4CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,3807,'Frm_Manos','CADOS04_OLD');
      end;
   DM1.Query1.Close;
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select * from CADOS05 where '
                  +' OS5CODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                  +' and OS5LOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                  +' and OS5CHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString);
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   minstru:='Insert into CADOS05 (';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+') Select ';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+' from OLD_CADOS05 where OS5CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,3848,'Frm_Manos','CADOS05_OLD');
      end;
   DM1.Query1.Close;
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select * from CADOS05D where '
                  +' OS5DCODEMP=0'+Frm_ManOs.Qr_Os01OS1CODEMP.AsString
                  +' and OS5DLOTSEQ=0'+Frm_ManOs.Qr_Os01OS1LOTSEQ.AsString
                  +' and OS5DCHAVE=0'+Frm_ManOs.Qr_Os01OS1CHAVE.AsString);
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   minstru:='Insert into CADOS05D (';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+') Select ';
   v:='';
   for x:=0 to DM1.Query2.FieldCount-1 do
      begin
      if DM1.Query2.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Query2.Fields[x].DataType=ftMemo then
         Continue;

      minstru:=minstru+v+DM1.Query2.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+' from OLD_CADOS05D where OS5DCODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,3890,'Frm_Manos','CADOS0R5D_OLD');
      end;
   DM1.Query1.Close;
   end;


result:=True;
end;

procedure TFrm_ManOs.OS4DESCVLRExit(Sender: TObject);
begin
if ValFloat(OS4VT.Text)>0  then
   begin
   OS4DESCVLR.Text:= FormatFloat(mcasas, ValFloat(OS4DESCVLR.Text));
   OS4DESC01.Text := FormatFloat(mcasas, 0);
//   OS4DESC01.Text := FormatFloat(mcasas, (ValFloat(OS4DESCVLR.Text)/ValFloat(OS4VT.Text))*100);

   OS4DESC01Exit(self);
   end;

end;

procedure TFrm_ManOs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=114) and  (os_origem='consulta') and (codcar=1111) then
   begin
   mcinst:='Esta opção Retorna a Ordem de Serviço para Estado de Normal'+#13
         +' é isso mesmo que deseja?';
   if fmensagem(pchar(mcinst),0,['1','2'],2)<>mryes then
      exit;
   fMan01restaura(0);
   end;

end;

procedure TFrm_ManOs.CHAVEPEDExit(Sender: TObject);
begin
CHAVEPED.Text:=fdeixanum(CHAVEPED.Text);
end;

procedure TFrm_ManOs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(Frm_ManOS_SerAlt);
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ManOs.OS5CODSEREnter(Sender: TObject);
begin
os5ser_ant:=StrToInt(fdeixanum(OS5CODSER.Text));
end;

procedure TFrm_ManOs.OS4CODPROEnter(Sender: TObject);
begin
os4Pro_ant:=StrToInt(fdeixanum(OS4CODPRO.Text));
end;

procedure TFrm_ManOs.FormShow(Sender: TObject);
begin
Pagecontrol2.activepageindex:=0;
if STGOS2.RowCount>1 then
  fManOsTotais(2);
end;

procedure TFrm_ManOs.bbImportaPedClick(Sender: TObject);
var
mChaveSel,mLotseq: Integer;
Query_local: TQuery;
begin
if Qr_Os01OS1STATUS.AsInteger=2 then
   begin
   fMensagem('Pedido Confirmado, Não Pode ser Importado!',0,['0'],0);
   exit;
   end;

if form_PedCli_ped_02=nil then
   Application.CreateForm(TFrm_PedCli, form_PedCli_ped_02)
else
   begin
   form_PedCli_ped_02.Free;
   form_PedCli_ped_02:=nil;
   Application.CreateForm(TFrm_PedCli, form_PedCli_ped_02);
   end;
form_PedCli_ped_02.Visible:=false;
form_PedCli_ped_02.FormStyle:=fsNormal;
form_PedCli_ped_02.ori_pedcli:='frm_ped';
form_PedCli_ped_02.ShowModal;
mchaveSel := ValInt(form_PedCli_ped_02.chave.Text);
if mchaveSel=0 then
   begin
   form_PedCli_ped_02.Free;
   form_PedCli_ped_02:=nil;
   exit;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin4(1,'CADP02S','P2SCODEMP','P1CODEMP','P2SLOTSEQ','P1LOTSEQ','P2SCHAVE','P1CHAVE'
             ,'P2SORDEM','P1ORDEM');

Query_local:=TQuery.Create(nil);
Query_local.DatabaseName:='SG_ASSOC';
Query_local.close;
Query_local.SQL.clear;
Query_local.SQL.Add('Select P1CODCLI,P1CODVEN,P1OBS1,P1OBS2,P1OBS3,P2SCODPRO,P2SQTD,P2SPRECO,P2SDESC1, P2SDESCRAT,P2STOTDES from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                                +'       '+la_Join
                                +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                +' P1STATUS<9 ');

Query_local.SQL.Add(' and P1CHAVE=0'+form_PedCli_ped_02.Tb_PedP1CHAVE.AsString);
Query_local.SQL.Add(' and P1CODEMP=0'+form_PedCli_ped_02.Tb_PedP1CODEMP.AsString);
Query_local.SQL.Add(' and P1LOTSEQ=0'+form_PedCli_ped_02.Tb_PedP1LOTSEQ.AsString);
try
   Query_local.Open;
except
   FreeAndNil(Query_local);
   fmensagem('Erro ao Localizar o pedido '+form_PedCli_ped_02.Tb_PedP1CHAVE.AsString,0,['0'],0);

   Exit;
   end;
mInclusaoAutomatica:=true;
if not Query_local.IsEmpty then
   begin
   BBINCLUIRClick(self);
   CODCLI.Text:=Query_local.FieldbyName('P1CODCLI').asstring;
   CODCLIExit(self);
   CODVEN.Text:=Query_local.FieldbyName('P1CODVEN').asstring;
   CODVENExit(self);
   DEFRECL.Text:=Query_local.FieldbyName('P1OBS2').AsString
                +Query_local.FieldbyName('P1OBS3').AsString;

   While not Query_local.Eof do
      begin
      OS5CODSER.Text  :=Query_local.fieldbyName('P2SCODPRO').AsString;
      OS5CODSERExit(self);
      OS5QTD.Text     :=FormatFloat(mcasqtd, Query_local.fieldbyName('P2SQTD').AsFloat);
      OS5PCOUNIT.Text :=FormatFloat(mcasas, Query_local.fieldbyName('P2SPRECO').AsFloat);
      OS5DESC01.Text  :=FormatFloat(mcasas, 0);
      OS5DESCVLR.Text  :=FormatFloat(mcasas, Query_local.fieldbyName('P2STOTDES').AsFloat);
      OS5VT.Text       :=FormatFloat(mcasas, Query_local.fieldbyName('P2SQTD').AsFloat* Query_local.fieldbyName('P2SPRECO').AsFloat );

      OS5DESCVLRExit(self);
      OS5_GRAVARClick(self);
      Query_local.Next;
      end;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE'
             ,'P2ORDEM','P1ORDEM');


Query_local.close;
Query_local.SQL.clear;
Query_local.SQL.Add('Select P1CODCLI,P1CODVEN,P2CODPRO,P2QTD,P2PRECO,P2DESC1, P1OBS2, P1OBS3,P2TOTDES '
                   +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                   +'       '+la_Join
                   +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                   +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                   +' P1STATUS<'+mstatus_excluido+' ');

Query_local.SQL.Add(' and P1CHAVE=0'+form_PedCli_ped_02.Tb_PedP1CHAVE.AsString);
Query_local.SQL.Add(' and P1CODEMP=0'+form_PedCli_ped_02.Tb_PedP1CODEMP.AsString);
Query_local.SQL.Add(' and P1LOTSEQ=0'+form_PedCli_ped_02.Tb_PedP1LOTSEQ.AsString);
try
   Query_local.Open;
except
   FreeAndNil(Query_local);
   fmensagem('Erro ao Localizar o pedido '+form_PedCli_ped_02.Tb_PedP1CHAVE.AsString,0,['0'],0);
   mInclusaoAutomatica:=false;
   Exit;
   end;

if not Query_local.IsEmpty then
   begin
   if BBINCLUIR.Enabled then
      begin
      BBINCLUIRClick(self);
      CODCLI.Text:=Query_local.FieldbyName('P1CODCLI').AsString;
      CODCLIExit(self);
      CODVEN.Text:=Query_local.FieldbyName('P1CODVEN').AsString;
      CODVENExit(self);
      DEFRECL.Text:=Query_local.FieldbyName('P1OBS2').AsString
                   +Query_local.FieldbyName('P1OBS3').AsString;
      end;
   While not Query_local.Eof do
      begin
      OS4CODPRO.Text  :=Query_local.fieldbyName('P2CODPRO').AsString;
      OS4CODPROExit(self);
      OS4QTD.Text     :=FormatFloat(mcasqtd, Query_local.fieldbyName('P2QTD').AsFloat);
      OS4PCOUNIT.Text :=FormatFloat(mcasqtd, Query_local.fieldbyName('P2PRECO').AsFloat);
      OS5DESC01.Text  :=FormatFloat(mcasas, 0);

      OS4DESCVLR.Text  :=FormatFloat(mcasqtd, Query_local.fieldbyName('P2TOTDES').AsFloat);

      OS4DESCVLRExit(self);
      OS4_GRAVARClick(self);
      Query_local.Next;
      end;
   end;
if BBINCLUIR.Enabled then
   begin
   fmensagem('Não foi Possivel incluir a OS!',0,['0'],0);
   end
else
   begin
   CHAVEPED.Text:=Inttostr(mChaveSel);
   end;
CODCLI.SetFocus;
FreeAndNil(Query_local);
mInclusaoAutomatica:=false;
end;

procedure TFrm_ManOs.bbBaixarClick(Sender: TObject);
begin

if Qr_Os01OS1CHAVE.IsNull then
   begin
   fMensagem('Não ha Ordem de Serviço selecionada!',0,['0'],0);
   exit;
   end;

if Qr_Os01OS1STATUS.AsInteger=2 then
   begin
   fMensagem('Pedido Confirmado, Não Pode ser Faturado!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer realmente Baixar esta OS?',0,['1','2'],2)<>mrYes then
   exit;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Update CADOS01 set OS1STATUS=2, '
                   +' OS1CODUSR=0'+IntTostr(codusr)+','
                   +' OS1DATALT=:DTALT'
                   +'  where OS1CODEMP=0'+Qr_Os01OS1CODEMP.AsString
                   +' and OS1LOTSEQ=0'+Qr_Os01OS1LOTSEQ.AsString
                   +' and OS1CHAVE=0'+Qr_Os01OS1CHAVE.AsString);
DM1.Query1.ParamByName('DTALT').AsDateTime:=now;
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,2057,'Frm_ManOS','CADP01');
   end;
mManOs_Oper:=3;
BBLOCALIZARClick(self);
verteclado(0);
MessageDlg('OS baixada!',mtInformation,[mbOk],0);

end;

procedure TFrm_ManOs.OS5DESCVLRExit(Sender: TObject);
begin
if ValFloat(OS5VT.Text)>0  then
   begin
   OS5DESCVLR.Text:= FormatFloat(mcasas, ValFloat(OS5DESCVLR.Text));
   OS5DESC01.Text := FormatFloat(mcasas, (ValFloat(OS5DESCVLR.Text)/ValFloat(OS5VT.Text))*100);
   if ValFloat(OS5VT.Text)*ValFloat(OS5DESC01.Text)/100 > ValFloat(OS5DESCVLR.Text) then
     begin
     OS5DESC01.Text:=FormatFloat(mcasas,ValFloat(OS5DESC01.Text)-0.01);
     OS5DESC01Exit(self);
     end;
   end;
end;

procedure TFrm_ManOs.CB_MODELOClick(Sender: TObject);
begin


fDeletaPadroes(-1,'_MANOS','MODELO');
fGravaPadroes(-1,'MODELO'     ,'itemindex' ,'_MANOS',IntTostr(CB_MODELO.ItemIndex));

end;
procedure TFrm_ManOs.Qr_Os04CalcFields(DataSet: TDataSet);
begin
Qr_Os04total_liquido.Value:=arredonda(  (Qr_Os04OS4QTD.AsFloat*Qr_Os04OS4PU.AsFloat),2)-qr_os04os4totdes.asfloat;
end;

end.












