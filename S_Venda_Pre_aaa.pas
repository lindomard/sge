unit S_Venda_Pre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, ImgList, ComCtrls, Mask,
  StdCtrls, DB, DBClient, Grids, DBGrids, FMTBcd, SqlExpr, Provider, S_Vendas_GravarPedido,
  DBCtrls, ToolEdit, DBXpress;

type
  TFrm_Venda_Pre = class(TForm)
    Panel_butons: TPanel;
    Image_buttons: TImage;
    sbnIncluir: TSpeedButton;
    sbnLocalizar: TSpeedButton;
    sbnAlterar: TSpeedButton;
    sbnGravar: TSpeedButton;
    sbnCancelar: TSpeedButton;
    sbnExcluir: TSpeedButton;
    bbSair: TSpeedButton;
    Panel_direito: TPanel;
    pcCabecalho: TPageControl;
    tsCabecalho: TTabSheet;
    TabSheet2: TTabSheet;
    edt_chave: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    edt_codcli: TEdit;
    edt_nomcli: TEdit;
    Edit5: TEdit;
    edt_datap: TDateEdit;
    Edit6: TEdit;
    edt_codCondPag: TEdit;
    edt_nomcond: TEdit;
    Edit9: TEdit;
    edt_codven: TEdit;
    edt_nomven: TEdit;
    Edit12: TEdit;
    edt_nomfp: TEdit;
    edt_codfp: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Memo_ObsPed: TMemo;
    Memo_obsNF: TMemo;
    pcProdServ: TPageControl;
    tsProdutos: TTabSheet;
    tsServicos: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    edt_TotProdServ: TEdit;
    Edit19: TEdit;
    edt_descItens: TEdit;
    Edit21: TEdit;
    Edit24: TEdit;
    edt_vlricmsst: TEdit;
    Edit26: TEdit;
    edt_totipi: TEdit;
    Edit28: TEdit;
    edt_percfrete: TEdit;
    edt_valfre: TEdit;
    Edit31: TEdit;
    edt_TotDesGer: TEdit;
    Edit33: TEdit;
    edt_outdesp: TEdit;
    edt_bcicmsst: TEdit;
    Edit36: TEdit;
    edt_bcicms: TEdit;
    edt_vlricms: TEdit;
    Edit39: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    edt_totliq: TEdit;
    Edit18: TEdit;
    edt_totPromo: TEdit;
    Edit22: TEdit;
    edt_tarban: TEdit;
    edt_perDesGer: TEdit;
    Edit20: TEdit;
    edt_valseg: TEdit;
    DBGrid_itens: TDBGrid;
    Src_Ped02_pre: TDataSource;
    Tb_Ped02_pre: TSQLQuery;
    Tb_Ped02_preP2ITEM: TIntegerField;
    Tb_Ped02_preP2QTD: TFloatField;
    Tb_Ped02_preP2DESC_PERC01: TFloatField;
    Tb_Ped02_preP2DESC_PERC02: TFloatField;
    Tb_Ped02_preP2CODPRO: TStringField;
    Tb_Ped02_preP2DESC_PERC03: TFloatField;
    Tb_Ped02_preP2PRECO: TFloatField;
    Tb_Ped02_preP2CST: TStringField;
    Tb_Ped02_preP2CSOSN: TStringField;
    Tb_Ped02_preP2CFOP_NF: TIntegerField;
    Tb_Ped02_preP2CFOP_ECF: TIntegerField;
    Tb_Ped02_preP2DESC_COMP: TStringField;
    Tb_Ped02_preVALOR_TOTAL: TFloatField;
    Tb_Ped02_preP2CSOSN_ORI: TStringField;
    Tb_Ped02_preP2ICMS_PPRED: TFloatField;
    Tb_Ped02_preP2MODBCST: TIntegerField;
    Tb_Ped02_preP2ST_IVA: TFloatField;
    Tb_Ped02_preP2ST_REDUT: TFloatField;
    Tb_Ped02_preP2ST_ICMSCRED: TFloatField;
    Tb_Ped02_preP2ST_ICMSDEB: TFloatField;
    Tb_Ped02_preP2PRECO_TAB: TFloatField;
    Tb_Ped02_preP2PRECO_UCPR: TFloatField;
    Tb_Ped02_preP2PRECO_CUS: TFloatField;
    Tb_Ped02_preP2PRECO_MAXCONS: TFloatField;
    Tb_Ped02_preP2IPI_PERC: TFloatField;
    Tb_Ped02_preP2ICMS_PERC: TFloatField;
    Tb_Ped02_preP2COFINS_PERC: TFloatField;
    Tb_Ped02_preP2ICMSSN_PERC: TFloatField;
    Tb_Ped02_preP2CST_IPI: TStringField;
    Tb_Ped02_preP2CST_PIS: TStringField;
    Tb_Ped02_preP2CST_COFINS: TStringField;
    Tb_Ped02_prePDNOME: TStringField;
    Tb_Ped02_prePDUND: TStringField;
    DBGrid_fpgto: TDBGrid;
    Tb_FP_pre: TSQLQuery;
    Src_FP_pre: TDataSource;
    Tb_FP_prePFPCODEMP: TIntegerField;
    Tb_FP_prePFPCHAVE: TIntegerField;
    Tb_FP_prePFPCHAVE_ANO: TIntegerField;
    Tb_FP_prePFPPARCELA: TIntegerField;
    Tb_FP_prePFPQTDPARC: TIntegerField;
    Tb_FP_prePFPCODBCO_BOL: TIntegerField;
    Tb_FP_prePFPCODFP: TIntegerField;
    Tb_FP_prePFPVALOR: TFloatField;
    Tb_FP_prePFPBAIXA: TStringField;
    Tb_FP_prePFPNOMFP: TStringField;
    Tb_FP_prePFPDATA: TSQLTimeStampField;
    Tb_FP_prePFPPRAZO: TIntegerField;
    Tb_FP_prePFPNUMDOC: TStringField;
    Tb_FP_prePFPCODBCO_DOC: TIntegerField;
    Tb_FP_prePFPSERIE_DOC: TStringField;
    Tb_FP_prePFPCC_DOC: TStringField;
    Tb_FP_prePFPCOMP_DOC: TStringField;
    Tb_FP_prePFPAGENCIA_DOC: TStringField;
    Tb_FP_prePFPEMITENTE_DOC: TStringField;
    Tb_FP_prePFPVINCULO_DOC: TIntegerField;
    Tb_FP_prePFPCNPJ_CPF_DOC: TStringField;
    Tb_FP_prePFPIE_RG: TStringField;
    cds_ped02_pre: TClientDataSet;
    dsp_ped02_pre: TDataSetProvider;
    cds_ped02_preP2ITEM: TIntegerField;
    cds_ped02_preP2QTD: TFloatField;
    cds_ped02_preP2DESC_PERC01: TFloatField;
    cds_ped02_preP2DESC_PERC02: TFloatField;
    cds_ped02_preP2CODPRO: TStringField;
    cds_ped02_preP2DESC_PERC03: TFloatField;
    cds_ped02_preP2PRECO: TFloatField;
    cds_ped02_preP2CST: TStringField;
    cds_ped02_preP2CSOSN: TStringField;
    cds_ped02_preP2CFOP_NF: TIntegerField;
    cds_ped02_preP2CFOP_ECF: TIntegerField;
    cds_ped02_preP2DESC_COMP: TStringField;
    cds_ped02_preVALOR_TOTAL: TFloatField;
    cds_ped02_preP2CSOSN_ORI: TStringField;
    cds_ped02_preP2ICMS_PPRED: TFloatField;
    cds_ped02_preP2MODBCST: TIntegerField;
    cds_ped02_preP2ST_IVA: TFloatField;
    cds_ped02_preP2ST_REDUT: TFloatField;
    cds_ped02_preP2ST_ICMSCRED: TFloatField;
    cds_ped02_preP2ST_ICMSDEB: TFloatField;
    cds_ped02_preP2PRECO_TAB: TFloatField;
    cds_ped02_preP2PRECO_UCPR: TFloatField;
    cds_ped02_preP2PRECO_CUS: TFloatField;
    cds_ped02_preP2PRECO_MAXCONS: TFloatField;
    cds_ped02_preP2IPI_PERC: TFloatField;
    cds_ped02_preP2ICMS_PERC: TFloatField;
    cds_ped02_preP2COFINS_PERC: TFloatField;
    cds_ped02_preP2ICMSSN_PERC: TFloatField;
    cds_ped02_preP2CST_IPI: TStringField;
    cds_ped02_preP2CST_PIS: TStringField;
    cds_ped02_preP2CST_COFINS: TStringField;
    cds_ped02_prePDNOME: TStringField;
    cds_ped02_prePDUND: TStringField;
    cb_tipoped: TComboBox;
    edt_nomcfops: TEdit;
    cds_fp_pre: TClientDataSet;
    dsp_FP_pre: TDataSetProvider;
    cds_fp_prePFPCODEMP: TIntegerField;
    cds_fp_prePFPCHAVE: TIntegerField;
    cds_fp_prePFPCHAVE_ANO: TIntegerField;
    cds_fp_prePFPPARCELA: TIntegerField;
    cds_fp_prePFPQTDPARC: TIntegerField;
    cds_fp_prePFPCODBCO_BOL: TIntegerField;
    cds_fp_prePFPCODFP: TIntegerField;
    cds_fp_prePFPVALOR: TFloatField;
    cds_fp_prePFPBAIXA: TStringField;
    cds_fp_prePFPDATA: TSQLTimeStampField;
    cds_fp_prePFPPRAZO: TIntegerField;
    cds_fp_prePFPNUMDOC: TStringField;
    cds_fp_prePFPCODBCO_DOC: TIntegerField;
    cds_fp_prePFPSERIE_DOC: TStringField;
    cds_fp_prePFPCC_DOC: TStringField;
    cds_fp_prePFPCOMP_DOC: TStringField;
    cds_fp_prePFPAGENCIA_DOC: TStringField;
    cds_fp_prePFPEMITENTE_DOC: TStringField;
    cds_fp_prePFPVINCULO_DOC: TIntegerField;
    cds_fp_prePFPCNPJ_CPF_DOC: TStringField;
    cds_fp_prePFPIE_RG: TStringField;
    Tb_Ped02_preP2PIS_PERC: TFloatField;
    cds_ped02_preP2PIS_PERC: TFloatField;
    Tb_Ped02_preP2DESCFIN_PERC: TFloatField;
    cds_ped02_preP2DESCFIN_PERC: TFloatField;
    Tb_Ped02_preP2CODVEN: TIntegerField;
    cds_ped02_preP2CODVEN: TIntegerField;
    Tb_Ped02_preP2AMBIENTE: TStringField;
    cds_ped02_preP2AMBIENTE: TStringField;
    Tb_Ped02_preP2PROMOCAO: TStringField;
    cds_ped02_preP2PROMOCAO: TStringField;
    edt_pDesc01: TEdit;
    edt_vlrdes_ped1_perc: TEdit;
    Edit4: TEdit;
    edt_desc_valor: TEdit;
    cds_fp_prePFPNOMFP: TStringField;
    Panel3: TPanel;
    bbExluir_FP: TBitBtn;
    lbl_restamFP: TLabel;
    Panel_rod_Itens: TPanel;
    Label1: TLabel;
    bbExcluir_item: TBitBtn;
    StaticText1: TStaticText;
    DBMemo1: TDBMemo;
    Tb_ped02S_pre: TSQLQuery;
    cds_ped02s_pre: TClientDataSet;
    dsp_ped02s_pre: TDataSetProvider;
    src_ped02s_pre: TDataSource;
    Tb_ped02S_preP2SCODEMP: TIntegerField;
    Tb_ped02S_preP2SCHAVE: TIntegerField;
    Tb_ped02S_preP2SITEM: TIntegerField;
    Tb_ped02S_preP2SCODSER: TStringField;
    Tb_ped02S_preP2SQTD: TFloatField;
    Tb_ped02S_preP2SPDESC02: TFloatField;
    Tb_ped02S_preP2SPDESC03: TFloatField;
    Tb_ped02S_preP2SPRECO: TFloatField;
    Tb_ped02S_preP2SDESC_COMP: TMemoField;
    Tb_ped02S_preP2SCST: TStringField;
    Tb_ped02S_preP2SCSOSN: TStringField;
    Tb_ped02S_preP2SBCISSQN: TFloatField;
    Tb_ped02S_preP2SVISSQN: TFloatField;
    Tb_ped02S_preP2SPISSQN: TFloatField;
    Tb_ped02S_preP2SSITUACAO: TIntegerField;
    Tb_ped02S_preP2SPCOTAB: TFloatField;
    Tb_ped02S_preP2SPCOCUS: TFloatField;
    Tb_ped02S_preP2STOTDES: TFloatField;
    Tb_ped02S_preP2SDESCRAT: TFloatField;
    Tb_ped02S_preP2SDESCFIN_PERC: TFloatField;
    Tb_ped02S_preP2SDESCFIN_VALOR: TFloatField;
    Tb_ped02S_preP2SBCINSS: TFloatField;
    Tb_ped02S_preP2SPREDINSS: TFloatField;
    Tb_ped02S_preP2SVREDINSS: TFloatField;
    Tb_ped02S_preP2SALIQINSS: TFloatField;
    Tb_ped02S_preP2SPREDIRRF: TFloatField;
    Tb_ped02S_preP2VPREDIRRF: TFloatField;
    Tb_ped02S_preP2SBCIRRF: TFloatField;
    Tb_ped02S_preP2SVIRRF: TFloatField;
    Tb_ped02S_preP2SALIQIRRF: TFloatField;
    Tb_ped02S_prePDNOME: TStringField;
    Tb_ped02S_prePDUND: TStringField;
    cds_ped02s_preP2SCODEMP: TIntegerField;
    cds_ped02s_preP2SCHAVE: TIntegerField;
    cds_ped02s_preP2SITEM: TIntegerField;
    cds_ped02s_preP2SCODSER: TStringField;
    cds_ped02s_preP2SQTD: TFloatField;
    cds_ped02s_preP2SPDESC02: TFloatField;
    cds_ped02s_preP2SPDESC03: TFloatField;
    cds_ped02s_preP2SPRECO: TFloatField;
    cds_ped02s_preP2SDESC_COMP: TMemoField;
    cds_ped02s_preP2SCST: TStringField;
    cds_ped02s_preP2SCSOSN: TStringField;
    cds_ped02s_preP2SBCISSQN: TFloatField;
    cds_ped02s_preP2SVISSQN: TFloatField;
    cds_ped02s_preP2SPISSQN: TFloatField;
    cds_ped02s_preP2SSITUACAO: TIntegerField;
    cds_ped02s_preP2SPCOTAB: TFloatField;
    cds_ped02s_preP2SPCOCUS: TFloatField;
    cds_ped02s_preP2STOTDES: TFloatField;
    cds_ped02s_preP2SDESCRAT: TFloatField;
    cds_ped02s_preP2SDESCFIN_PERC: TFloatField;
    cds_ped02s_preP2SDESCFIN_VALOR: TFloatField;
    cds_ped02s_preP2SBCINSS: TFloatField;
    cds_ped02s_preP2SPREDINSS: TFloatField;
    cds_ped02s_preP2SVREDINSS: TFloatField;
    cds_ped02s_preP2SALIQINSS: TFloatField;
    cds_ped02s_preP2SPREDIRRF: TFloatField;
    cds_ped02s_preP2VPREDIRRF: TFloatField;
    cds_ped02s_preP2SBCIRRF: TFloatField;
    cds_ped02s_preP2SVIRRF: TFloatField;
    cds_ped02s_preP2SALIQIRRF: TFloatField;
    cds_ped02s_prePDNOME: TStringField;
    cds_ped02s_prePDUND: TStringField;
    Panel2: TPanel;
    Label2: TLabel;
    bbExclui_Servico: TBitBtn;
    StaticText2: TStaticText;
    DBMemo_servico: TDBMemo;
    DBGrid_servicos: TDBGrid;
    Tb_ped02S_preVALOR_TOTAL: TFloatField;
    cds_ped02s_preVALOR_TOTAL: TFloatField;
    Tb_ped02S_preP2SCFOP_NF: TIntegerField;
    Tb_ped02S_preP2SCFOP_ECF: TIntegerField;
    cds_ped02s_preP2SCFOP_NF: TIntegerField;
    cds_ped02s_preP2SCFOP_ECF: TIntegerField;
    Tb_ped02S_preP2SCHAVE_ANO: TIntegerField;
    Tb_ped02S_preP2SPDESC01: TFloatField;
    cds_ped02s_preP2SCHAVE_ANO: TIntegerField;
    cds_ped02s_preP2SPDESC01: TFloatField;
    Tb_ped02S_preP2SCODVEN: TIntegerField;
    cds_ped02s_preP2SCODVEN: TIntegerField;
    cds_aliquotas: TClientDataSet;
    cds_aliquotasal_tabicm: TStringField;
    cds_aliquotasal_aliqredut: TFloatField;
    cds_aliquotasal_stIcmsCred: TFloatField;
    cds_aliquotasal_stIcmsDeb: TFloatField;
    cds_aliquotastipo_reg: TIntegerField;
    cds_aliquotasal_issqn: TFloatField;
    cds_aliquotasCfo_Indus_Ret: TIntegerField;
    cds_aliquotasCfo_Indus_Trib: TIntegerField;
    cds_aliquotasCfo_Indus_Isento: TIntegerField;
    cds_aliquotasCfo_rev_Ret: TIntegerField;
    cds_aliquotasCfo_rev_Trib: TIntegerField;
    cds_aliquotasCfo_rev_Isento: TIntegerField;
    cds_aliquotasCfo_SubEcf_Ret: TIntegerField;
    cds_aliquotasCfo_SubEcf_Trib: TIntegerField;
    cds_aliquotasCfo_SubEcf_Isento: TIntegerField;
    cds_aliquotascfo_servico: TIntegerField;
    cds_aliquotasal_pis: TFloatField;
    cds_aliquotasal_cofins: TFloatField;
    cds_aliquotasal_IcmsTrib: TFloatField;
    cds_aliquotasal_icmsRet: TIntegerField;
    cds_aliquotasmodBcST: TIntegerField;
    cds_aliquotasal_stIVA_Ina: TFloatField;
    cds_aliquotasal_stIVA_Pos: TIntegerField;
    cds_aliquotasal_stIVA_Neg: TFloatField;
    cds_aliquotasal_stAliqRed: TFloatField;
    cds_aliquotasal_inss: TFloatField;
    cds_aliquotasal_inss_pred: TFloatField;
    cds_aliquotasal_irrf: TFloatField;
    cds_aliquotasal_irrf_pred: TFloatField;
    cds_aliquotasal_repasse: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure sbnIncluirClick(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codCondPagExit(Sender: TObject);
    procedure edt_codfpKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codfpExit(Sender: TObject);
    procedure edt_codvenExit(Sender: TObject);
    procedure edt_codvenKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_itensColExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_tipopedExit(Sender: TObject);
    procedure DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cds_ped02_preBeforePost(DataSet: TDataSet);
    procedure DBGrid_itensExit(Sender: TObject);
    procedure DBGrid_itensMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Memo_ObsPedEnter(Sender: TObject);
    procedure Memo_ObsPedExit(Sender: TObject);
    procedure Memo_obsNFEnter(Sender: TObject);
    procedure DBGrid_itensColEnter(Sender: TObject);
    procedure cds_ped02_preAfterPost(DataSet: TDataSet);
    procedure cds_ped02_preAfterEdit(DataSet: TDataSet);
    procedure cds_ped02_preAfterInsert(DataSet: TDataSet);
    procedure edt_datapExit(Sender: TObject);
    procedure Memo_obsNFExit(Sender: TObject);
    procedure edt_valsegExit(Sender: TObject);
    procedure edt_outdespExit(Sender: TObject);
    procedure edt_totipiExit(Sender: TObject);
    procedure edt_valfreExit(Sender: TObject);
    procedure edt_bcicmsstExit(Sender: TObject);
    procedure edt_vlricmsstExit(Sender: TObject);
    procedure edt_bcicmsExit(Sender: TObject);
    procedure edt_vlricmsExit(Sender: TObject);
    procedure edt_pDesc01Exit(Sender: TObject);
    procedure edt_datapChange(Sender: TObject);
    procedure cb_tipopedClick(Sender: TObject);
    procedure edt_codcliChange(Sender: TObject);
    procedure edt_codvenChange(Sender: TObject);
    procedure edt_codCondPagChange(Sender: TObject);
    procedure edt_codfpChange(Sender: TObject);
    procedure Memo_ObsPedChange(Sender: TObject);
    procedure Memo_obsNFChange(Sender: TObject);
    procedure edt_pDesc01Change(Sender: TObject);
    procedure edt_valsegChange(Sender: TObject);
    procedure edt_tarbanChange(Sender: TObject);
    procedure edt_outdespChange(Sender: TObject);
    procedure edt_totipiChange(Sender: TObject);
    procedure edt_percfreteChange(Sender: TObject);
    procedure edt_valfreChange(Sender: TObject);
    procedure edt_bcicmsstChange(Sender: TObject);
    procedure edt_vlricmsstChange(Sender: TObject);
    procedure edt_bcicmsChange(Sender: TObject);
    procedure edt_vlricmsChange(Sender: TObject);
    procedure edt_pDesc01Enter(Sender: TObject);
    procedure edt_desc_valorChange(Sender: TObject);
    procedure edt_desc_valorExit(Sender: TObject);
    procedure cds_ped02_preAfterCancel(DataSet: TDataSet);
    procedure cds_ped02_preBeforeDelete(DataSet: TDataSet);
    procedure sbnCancelarClick(Sender: TObject);
    procedure sbnGravarClick(Sender: TObject);
    procedure bbExluir_FPClick(Sender: TObject);
    procedure cds_fp_preAfterPost(DataSet: TDataSet);
    procedure cds_fp_preAfterDelete(DataSet: TDataSet);
    procedure cds_fp_preAfterInsert(DataSet: TDataSet);
    procedure DBGrid_fpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_fpgtoColExit(Sender: TObject);
    procedure DBGrid_fpgtoExit(Sender: TObject);
    procedure cds_fp_preBeforePost(DataSet: TDataSet);
    procedure bbSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbnAlterarClick(Sender: TObject);
    procedure edt_chaveExit(Sender: TObject);
    procedure cds_fp_preAfterEdit(DataSet: TDataSet);
    procedure bbExcluir_itemClick(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure cds_ped02s_preAfterCancel(DataSet: TDataSet);
    procedure cds_ped02s_preAfterEdit(DataSet: TDataSet);
    procedure cds_ped02s_preAfterInsert(DataSet: TDataSet);
    procedure cds_ped02s_preAfterPost(DataSet: TDataSet);
    procedure DBGrid_servicosColExit(Sender: TObject);
    procedure DBGrid_servicosColEnter(Sender: TObject);
    procedure DBGrid_servicosExit(Sender: TObject);
    procedure DBGrid_servicosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_servicosKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo_servicoExit(Sender: TObject);
    procedure cds_ped02s_preBeforeDelete(DataSet: TDataSet);
    procedure cds_ped02s_preBeforePost(DataSet: TDataSet);
    procedure bbExclui_ServicoClick(Sender: TObject);
    procedure edt_codCondPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   { Private declarations }
    HintRect : TRect;
    HintWindow : THintWindow;

    mped1_cfop_nor      :Integer;
    mped1_cfop_isen     :Integer;
    mped1_cfop_st       :Integer;

    mped1_csosn_nor     :Integer;
    mped1_csosn_isen    :Integer;
    mped1_csosn_ret     :Integer;

    mped1_csosn_nor_ori :Integer;
    mped1_csosn_isen_ori:Integer;
    mped1_csosn_ret_ori :Integer;

    mped1_tpPed :Integer;
    mped1_tpPed_VendaNormal :String;

    mPed1Serv_Cfop      :Integer;
    mPed1Serv_CfopSubECF:Integer;
    mPed1Serv_ISSQN_Aliq:Real;
    mPed1Serv_INSS_Red  :Real;
    mPed1Serv_INSS_Aliq :Real;
    mPed1Serv_IRRF_Red  :Real;
    mPed1Serv_IRRF_Aliq :Real;
    mPed_Cli_tarban      :Real;
    mPed_Cli_CodLoc      :Real;
    mPed_Cli_CodBai      :Real;
    mPed_Cli_CodRam      :Real;
    mPed_Cli_PCOMV01     :Real;
    mPed_Cli_PCOMV02     :Real;
    mPed_Cli_PCOMV03     :Real;
    mPed_Cli_PCOMV04     :Real;
    mPed_Cli_CodCli      :Real;
    mPed_Cli_Desc01      :Real;
    mPed_Cli_Desc02      :Real;
    mPed_Cli_Desc03      :Real;
    mPed_Cli_DescFin     :Real;
    mPed_Cli_CodRed      :Real;
    mPed_Cli_PCOPRAT     :Integer;
    par_tpp              :Integer;
    mPed_UF_TIPOPCO      :Integer;
    mPed_UF_PCOMV01      :Real;
    mPed_UF_PCOMV02      :Real;
    mPed_UF_PCOMV03      :Real;
    mPed_UF_PCOMV04      :Real;



   mPed_Formace            : Integer;

    mPed_Desc: Real;
    mPed_MobBcST: Integer; // Modalidade 0-PMC 1-Negativa 2-Positiva 3-neutra 4-Iva 5 Pauta'
    mPed_Cli_ICMSST: String; // icms st N-Nao S-Sim
    mPed_Cli_Consfin: String; // icms st N-Nao S-Sim
    mPed1_CalcIPI: Boolean;
    mPed1_ICMSRLIQ: Integer;
    mCodpro_Ant: String;
    mItem_Ant: Integer;
    mQtd_Ant: Real;

    mPed_Item: Integer;
    mPed_Item_Servico: Integer;
    mCodSer_Ant: String;
    mItem_Servico_Ant: Integer;
    mQtd_Servico_Ant: Real;

    mCodFP_Ant: Integer;

    mPed_DescGer_Ant: Real;
    mPed_PDesc01_Ant: Real;
    function fLimparCampos(pTipo: Integer): Boolean;
    function fAtualizarBotoes(pTipo: Integer): Boolean;
    function fApresentaHint(pMensagem: String;pTop,pLeft: Integer): Boolean;
    function fPosicao(ptipo: Integer): Boolean;
    function fTotais(pTipo: Integer): Boolean;
    function fLerFormaPag(pTipo: Integer): Boolean;
    function fBloquearLiberarCampos(pLibera: Boolean): Boolean;
    function fRecalcularPedido(pTipo: Integer): Boolean;
    function fSomarFPgto(pTipo:Integer): Real;
    function fVerificarOrdemFPgto(ptipo: Integer): Boolean;
    function fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
    function fLerPedidoGeral(pCodEmp,pChave,pChave_ano: Integer): Boolean;

    function fpedtestacfop(ptipo: Integer; PUnd: Real): Boolean;

    function fgravarAliquotas(pTipo_Reg: Integer;pTabIcm: String;
    pAliqTrib,pAliqRet,pAliqRed,pStIcmsCred,pStIcmsDeb,pStIVA_Ina,pStIVA_Pos,pStIVA_Neg,pISSQN
    ,pRepas,pAliqPis,pAliqCofins: Real;
    pCfo_Indus_Ret,pCfo_Indus_Trib,pCfo_Indus_Isento,pCfo_rev_Ret,pCfo_rev_Trib,pCfo_rev_Isento
    ,pCfo_SubEcf_Ret,pCfo_SubEcf_Trib,pCfo_SubEcf_Isento,pcfo_servico,pmodBcST: Integer;
    pal_stAliqRed,pal_inss,pal_inss_pred,pal_irrf,pal_irrf_pred: Real): Boolean;

  public
    { Public declarations }
    mVenda_GP: TFrm_Vendas_GravarPedido;

    mPed_UF_Cli: String;

    mNC_UF_AliqDebSt :String; //  UF_ALIQ_INT
    mNC_UF_Red_IcmsSt:String; //  UF_ICMS_PRED_INT
    mNC_UF_IcmsSTIVA:String;  // UF_ICMSST_IVA_INT

    mNC_Reg_AliqCredST:String;  // UF_ALIQ_SUL
    mNC_Reg_IcmsSTPRed:String;   // UF_ICMS_PRED_SUL
    mNC_Reg_IcmsSTIVA:String;  // UF_ICMSST_IVA_SUL



    mUF_AliqDebSt :Real; //  UF_ALIQ_INT
    mUF_Red_IcmsSt:Real; //  UF_ICMS_PRED_INT
    mUF_IcmsSTIVA:Real;  // UF_ICMSST_IVA_INT
    mUF_IcmsSN: Real; // % icms de credito do simples nacional

    mReg_AliqCredST:Real;  // UF_ALIQ_SUL
    mReg_IcmsSTPRed:Real;   // UF_ICMS_PRED_SUL
    mReg_IcmsSTIVA:Real;  // UF_ICMSST_IVA_SUL

    mped_Alterou_Cab: Boolean;

    mPd_SaiNor        :Boolean;
    mPd_SaiCons       :Boolean;
    mPd_SaiTerc       :Boolean;
    mPd_SaiRVenda     :Boolean;

    mPd_EntraNor      :Boolean;
    mPd_EntraCons     :Boolean;
    mPd_EntraTerc     :Boolean;
    mPd_EntraRVenda   :Boolean;


  end;
function fPosArray(pArrayOff: array of string; pTexto: String): Integer;

var
  Frm_Venda_Pre: TFrm_Venda_Pre;

implementation

uses S_DM1,  LerArq, func, func_excecoes, S_DM2;

{$R *.dfm}

procedure TFrm_Venda_Pre.FormActivate(Sender: TObject);
begin
top:=0;
end;

procedure TFrm_Venda_Pre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
FreeAndNil(mVenda_GP);

end;

procedure TFrm_Venda_Pre.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if mVenda_GP.mped1_Chave>0 then
   begin
   if mped_Alterou_Cab then
      begin
      mVenda_GP.fGravarPed01(1);
      fRecalcularPedido(3);
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from paf_cadp02_pre_temp '
                             +' where P2T_CODEMP=:CODEMP '
                             +' and   P2T_CHAVE=:CHAVE '
                             +' and   P2T_CHAVE_ANO=:CHAVE_ANO '
                               );
   DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
   DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;

   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','paf_cadp01_pre');
         end;
      end;
   fAtualizarBotoes(1);
   fBloquearLiberarCampos(false);
   end;

end;

procedure TFrm_Venda_Pre.FormCreate(Sender: TObject);
var
x: Integer;
begin
HintWindow:=THintWindow.Create(tsCabecalho);
//Application.HintPause := 15;
// LINDOMAR

cb_tipoped.Items.Clear;

for x:=0 to high(tab_tped)-1 do
   begin
   if (x=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=1) and (DM1.Tb_PargerPDESTTIP1.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=2) and (DM1.Tb_PargerPDESTTIP2.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=3) and (DM1.Tb_PargerPDESTTIP3.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=4) and (DM1.Tb_PargerPDESTTIP4.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=5) and (DM1.Tb_PargerPDESTTIP5.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=6) and (DM1.Tb_PargerPDESTTIP6.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=7) and (DM1.Tb_PargerPDESTTIP7.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=8) and (DM1.Tb_PargerPDESTTIP8.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=9) and (DM1.Tb_PargerPDESTTIP9.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=10) and (DM1.Tb_PargerPDESTTIP10.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=11) and (DM1.Tb_PargerPDESTTIP11.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=12) and (DM1.Tb_PargerPDESTTIP12.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=13) and (DM1.Tb_PargerPDESTTIP13.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=14) and (DM1.Tb_PargerPDESTTIP14.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=15) and (DM1.Tb_PargerPDESTTIP15.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=16) and (DM1.Tb_PargerPDESTTIP16.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=17) and (DM1.Tb_PargerPDESTTIP17.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=18) and (DM1.Tb_PargerPDESTTIP18.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=19) and (DM1.Tb_PargerPDESTTIP19.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=20) and (DM1.Tb_PargerPDESTTIP20.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=21) and (DM1.Tb_PargerPDESTTIP21.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=22) and (DM1.Tb_PargerPDESTTIP22.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=23) and (DM1.Tb_PargerPDESTTIP23.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=24) and (DM1.Tb_PargerPDESTTIP24.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00])
   else if (x=25) and (DM1.Tb_PargerPDESTTIP25.AsInteger=0) then
      cb_tipoped.Items.Add(tab_tped_mov[x,00]);
   end;




//LINDOMAR FINAL

mped1_tpPed :=1;
mped1_tpPed_VendaNormal:=tab_tped_mov[1,00];

cds_ped02_preP2QTD.DisplayFormat        :=mCasQtd;
cds_ped02_preP2DESC_PERC01.DisplayFormat:=mCasas;
cds_ped02_preP2PRECO.DisplayFormat      :=mCasasPU;
cds_ped02_preVALOR_TOTAL.DisplayFormat  :=mCasas;


cds_ped02s_preP2SQTD.DisplayFormat        :=mCasQtd;
cds_ped02s_preP2SPDESC01.DisplayFormat    :=mCasas;
cds_ped02s_preP2SPRECO.DisplayFormat      :=mCasasPU;
cds_ped02s_preVALOR_TOTAL.DisplayFormat   :=mCasas;

Application.CreateForm(TFrm_Vendas_GravarPedido, mVenda_GP);
fLimparCampos(0);
fBloquearLiberarCampos(false);

cds_fp_prePFPVALOR.DisplayFormat:=mCasas;
cds_fp_prePFPDATA.DisplayFormat:=fdt2;
mPed_MobBcST:=0;
TabSheet2.TabVisible:=False;
end;

procedure TFrm_Venda_Pre.Memo_obsNFChange(Sender: TObject);
begin
if (Memo_obsNF.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.Memo_obsNFEnter(Sender: TObject);
var
pRect:TRect;
begin
GetWindowRect(Memo_obsNF.Handle,pRect);

fApresentaHint( 'Pressione [TAB] ou utilize o Mouse para Sair',pRect.Top,pRect.Left);

end;

procedure TFrm_Venda_Pre.Memo_obsNFExit(Sender: TObject);
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
mVenda_GP.mPed1_Obs_NF:=Memo_obsNF.Text;


end;

procedure TFrm_Venda_Pre.Memo_ObsPedChange(Sender: TObject);
begin
if (Memo_ObsPed.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.Memo_ObsPedEnter(Sender: TObject);
var
pRect:TRect;
begin
GetWindowRect(Memo_ObsPed.Handle,pRect);

fApresentaHint( 'Pressione [TAB] ou utilize o Mouse para Sair',pRect.Top,pRect.Left);

end;
function tFrm_Venda_Pre.fApresentaHint(pMensagem: String;pTop,pLeft: Integer): Boolean;
var
sHint: String;
begin
sHint:=pMensagem;
HintRect := HintWindow.CalcHintRect(400,'*',nil);
HintRect.Top :=  pTop-20;
HintRect.Left := pLeft;
HintRect.Right := HintRect.Left + (Length(sHint)*6);
HintRect.Bottom := HintRect.Top + 15;
HintWindow.ActivateHint(HintRect,sHint);
result:=true;
end;

procedure TFrm_Venda_Pre.Memo_ObsPedExit(Sender: TObject);
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;
mVenda_GP.mPed1_Obs_Ped:=Memo_ObsPed.Text;

end;

procedure TFrm_Venda_Pre.sbnAlterarClick(Sender: TObject);
begin
fBloquearLiberarCampos(true);
fAtualizarBotoes(2);


end;

procedure TFrm_Venda_Pre.sbnCancelarClick(Sender: TObject);
begin
fBloqueiaLiberaPedido(0);

fAtualizarBotoes(0);
fLimparCampos(0);
fBloquearLiberarCampos(false);

end;

procedure TFrm_Venda_Pre.sbnGravarClick(Sender: TObject);
begin
if cds_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if length(cds_ped02_preP2CODPRO.AsString)>0 then
      cds_ped02_pre.Post
   else
      cds_ped02_pre.Cancel;
   end;


if mped_Alterou_Cab then
   begin
   mVenda_GP.fGravarPed01(1);
   fRecalcularPedido(3);
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete from paf_cadp02_pre_temp '
                          +' where P2T_CODEMP=:CODEMP '
                          +' and   P2T_CHAVE=:CHAVE '
                          +' and   P2T_CHAVE_ANO=:CHAVE_ANO '
                            );
DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;

try
   DM1.Query1.ExecSQL;
   fDM1StartCommit;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','paf_cadp01_pre');
      end;
   end;
fAtualizarBotoes(1);
fBloqueiaLiberaPedido(0);
fBloquearLiberarCampos(false);

end;

procedure TFrm_Venda_Pre.sbnIncluirClick(Sender: TObject);
begin
fLimparCampos(0);
if trim(mped1_tpPed_VendaNormal)='' then
   cb_tipoped.ItemIndex:=0
else
   begin
   with cb_tipoped do
      ItemIndex := Items.IndexOf(mped1_tpPed_VendaNormal);
   mped1_tpPed :=1;
   end;
mPed_UF_Cli:=DM1.Tb_EmpUF.AsString;

cb_tipopedExit(self);
pcCabecalho.ActivePage:=tsCabecalho;


pcProdServ.ActivePage:=tsProdutos;
if Tb_Ped02_Pre.SQLConnection=nil then
   Tb_Ped02_Pre.SQLConnection:=DM1.SQLConnection1;
Tb_Ped02_Pre.Close;
Tb_Ped02_Pre.SQL.Clear;
Tb_Ped02_Pre.SQL.Add('select P2ITEM,P2QTD,P2DESC_PERC01,P2DESC_PERC02,P2CODPRO, '
                +' P2DESC_PERC03,P2PRECO,P2CST,P2CSOSN,P2CFOP_NF,P2CFOP_ECF,P2DESC_COMP '
                +',P2QTD*P2PRECO AS VALOR_TOTAL,P2CSOSN_ORI,P2ICMS_PPRED, '
                +'P2MODBCST,P2ST_IVA,P2ST_REDUT,P2ST_ICMSCRED,P2ST_ICMSDEB,P2PRECO_TAB, '
                +'P2PRECO_UCPR,P2PRECO_CUS,P2PRECO_MAXCONS,P2IPI_PERC,P2ICMS_PERC, '
                +'P2COFINS_PERC,P2PIS_PERC,P2ICMSSN_PERC,P2CST_IPI,P2CST_PIS,P2CST_COFINS '
                +',P2CODVEN,P2AMBIENTE,P2DESCFIN_PERC, '
                +'  PDNOME,PDUND,P2PROMOCAO FROM paf_cadp02_pre '
                +' left join paf_cadpro '
                +'          on (PDCODPRO =P2CODPRO '
                +'          and PDCODEMP=P2CODEMP) '
                +' where P2CODEMP=-9999');
try
   Tb_Ped02_Pre.Open;
except
   if fVerificaRedeAtiva(true) then
      MessageDlg('Erro 823 frm_venda_pre paf_cadp02_pre',mterror,[mbOk],0)
   else
      fFecharTudo(0);
   end;
if not cds_ped02_pre.Active then
   cds_ped02_pre.Open;
cds_ped02_pre.Refresh;
// servico

if Tb_ped02S_Pre.SQLConnection=nil then
   Tb_Ped02S_Pre.SQLConnection:=DM1.SQLConnection1;
Tb_Ped02S_Pre.Close;
Tb_Ped02S_Pre.SQL.Clear;
Tb_Ped02S_Pre.SQL.Add('Select P2SCODEMP,P2SCHAVE,P2SCHAVE_ANO,P2SITEM,P2SCODSER,P2SQTD,'
                 +'P2SPDESC01,P2SPDESC02,P2SPDESC03,P2SPRECO,P2SDESC_COMP,P2SCST,P2SCSOSN,'
                 +'P2SBCISSQN,P2SVISSQN,P2SPISSQN,P2SSITUACAO,P2SPCOTAB,P2SPCOCUS,P2STOTDES,'
                 +'P2SDESCRAT,P2SDESCFIN_PERC,P2SDESCFIN_VALOR,P2SBCINSS,P2SPREDINSS,'
                 +'P2SVREDINSS,P2SALIQINSS,P2SPREDIRRF,P2VPREDIRRF,P2SBCIRRF,P2SVIRRF,'
                 +'P2SALIQIRRF,P2SQTD*P2SPRECO AS VALOR_TOTAL,'
                 +'P2SCFOP_NF,P2SCFOP_ECF,P2SCODVEN,'
                 +'PDNOME,PDUND FROM paf_cadp02s_pre '
                 +' left join paf_cadpro '
                 +' on (PDCODPRO =P2SCODSER '
                 +' and PDCODEMP=P2SCODEMP) '
                +' where P2sCODEMP=-9999');
try
   Tb_Ped02s_Pre.Open;
except
   if fVerificaRedeAtiva(true) then
      MessageDlg('Erro 852 frm_venda_pre paf_cadp02_pre',mterror,[mbOk],0)
   else
      fFecharTudo(0);
   end;
if not cds_ped02s_pre.Active then
   cds_ped02s_pre.Open;
cds_ped02s_pre.Refresh;


// termino servico


edt_datap.Date:=Date;
mVenda_GP.mPed1_Datap:=edt_datap.Date;
if Tb_FP_pre.SQLConnection=nil then
   Tb_FP_pre.SQLConnection:=DM1.SQLConnection1;

fLerFormaPag(1);

fBloquearLiberarCampos(true);

mPed_Item:=1;
mPed_Item_Servico:=1;

fAtualizarBotoes(2);
edt_codcli.SetFocus;
end;
function TFrm_Venda_Pre.fLerFormaPag(pTipo: Integer): Boolean;
begin

select P2ITEM,P2QTD,P2DESC1 AS P2DESC_PERC01
       ,P2DESC2 AS P2DESC_PERC02,P2CODPRO, 
       P2DESC3 AS P2DESC_PERC03,P2PRECO
       ,P2SIT AS P2CST
       ,0 AS P2CSOSN
       ,P2CFO AS P2CFOP_NF
       ,P2CFOSUBECF AS P2CFOP_ECF
       ,P2COMPLEMENTO ASP2DESC_COMP 
       ,P2QTD*P2PRECO AS VALOR_TOTAL
       ,0 AS P2CSOSN_ORI
       ,P2PREC_SN AS P2ICMS_PPRED, 
       P2MODBCST
       ,P2ST_IVA
       ,P2ST_REDUT
       ,P2ST_ICMCRED AS P2ST_ICMSCRED
       ,P2ST_ICMDEB AS P2ST_ICMSDEB
       ,P2PCOTAB AS P2PRECO_TAB, 
       P2UCPR AS  P2PRECO_UCPR
       ,P2PCOCUS AS P2PRECO_CUS
       ,P2PCOMAX AS P2PRECO_MAXCONS
       ,P2ALIPI AS P2IPI_PERC
       ,P2ALIQ AS P2ICMS_PERC, 
       P2ALCOFINS P2COFINS_PERC
       ,P2ALPIS AS P2PIS_PERC
       ,P2 P2ICMSSN_PERC,P2CST_IPI,P2CST_PIS,P2CST_COFINS 
                ,P2CODVEN,P2AMBIENTE,P2DESCFIN_PERC, 
                  PDNOME,PDUND,P2PROMOCAO FROM paf_cadp02_pre 
                 left join paf_cadpro 
                          on (PDCODPRO =P2CODPRO 
                          and PDCODEMP=P2CODEMP)
                 where P2CODEMP=-9999
lbl_restamFP.Caption:='';
Tb_FP_pre.Close;
Tb_FP_pre.SQL.Clear;
Tb_FP_pre.SQL.Add('SELECT * FROM paf_cadpfp_pre where PFPCODEMP=:CODEMP'
             +' and PFPCHAVE=:CHAVE '
             +' and PFPCHAVE_ANO=:CHAVE_ANO '
             +' order by PFPDATA,PFPPARCELA ');
if ptipo=1 then
   Tb_FP_pre.ParamByName('CODEMP').AsInteger:=-9999
else
   Tb_FP_pre.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
Tb_FP_pre.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
Tb_FP_pre.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   Tb_FP_pre.Open;
   result:=true;
except
   if fVerificaRedeAtiva(true) then
      begin
      MessageDlg('Erro 823 frm_venda_pre paf_cadp02_pre',mterror,[mbOk],0);
      result:=false;
      exit;
      end
   else
      begin
      fFecharTudo(0);
      result:=false;
      exit;
      end;
   end;
if not cds_fp_pre.Active then
   cds_fp_pre.Open;

cds_fp_pre.Refresh;
if cds_fp_pre.IsEmpty then
   result:=false
else
   result:=true;
end;



function TFrm_Venda_Pre.fLimparCampos(pTipo: Integer): Boolean;
begin
lbl_restamFP.Caption:='';
cb_tipoped.Text:='';
edt_nomcfops.Clear;
edt_chave.Clear;
edt_datap.Clear;
edt_codCondPag.Clear;
edt_nomcond.Clear;
edt_codven.Clear;
edt_nomven.Clear;
Memo_ObsPed.Clear;
edt_codcli.Clear;
edt_nomcli.Clear;
edt_codfp.Clear;
edt_nomfp.Clear;

Memo_obsNF.Clear;
Tb_Ped02_Pre.Close;
cds_ped02_pre.Close;
Tb_Ped02s_Pre.Close;
cds_ped02s_pre.Close;

Tb_FP_pre.Close;
cds_fp_pre.Close;
edt_TotProdServ.Clear;
edt_descItens.Clear;
edt_totPromo.Clear;
edt_pDesc01.Clear;
edt_desc_valor.Clear;
edt_vlrdes_ped1_perc.Clear;
edt_perDesGer.Clear;
edt_TotDesGer.Clear;
edt_tarban.Clear;
edt_valseg.Clear;
edt_outdesp.Clear;
edt_totipi.Clear;
edt_percfrete.Clear;
edt_valfre.Clear;
edt_bcicmsst.Clear;
edt_vlricmsst.Clear;
edt_bcicms.Clear;
edt_vlricms.Clear;
edt_totliq.Clear;
mped_Alterou_Cab:=false;

mVenda_GP.fLimparCampos(0);



result:=true;



end;



function TFrm_Venda_Pre.fBloquearLiberarCampos(pLibera: Boolean): Boolean;

begin
cb_tipoped.Enabled:=pLibera;
edt_nomcfops.Enabled:=pLibera;
edt_chave.Enabled:=iif(pLibera,false,true);
edt_datap.Enabled:=pLibera;
edt_codCondPag.Enabled:=pLibera;
edt_codven.Enabled:=pLibera;
Memo_ObsPed.ReadOnly:=iif(pLibera,false,true);
edt_codcli.Enabled:=pLibera;
edt_codfp.Enabled:=pLibera;

Memo_obsNF.ReadOnly:=iif(pLibera,false,true);
//DBGrid_itens.ReadOnly:=iif(pLibera,false,true);
//DBGrid_fpgto.ReadOnly:=iif(pLibera,false,true);

edt_TotProdServ.Enabled:=pLibera;
edt_descItens.Enabled:=pLibera;
edt_totPromo.Enabled:=pLibera;
edt_pDesc01.Enabled:=pLibera;
edt_desc_valor.Enabled:=pLibera;
edt_vlrdes_ped1_perc.Enabled:=pLibera;
edt_perDesGer.Enabled:=pLibera;
edt_TotDesGer.Enabled:=pLibera;

edt_valseg.Enabled:=pLibera;
edt_totipi.Enabled:=pLibera;

edt_percfrete.Enabled:=pLibera;
edt_valfre.Enabled:=pLibera;
edt_outdesp.Enabled:=pLibera;


result:=true;



end;



procedure TFrm_Venda_Pre.bbExcluir_itemClick(Sender: TObject);
begin
if (not cds_ped02_pre.Active) or (cds_ped02_preP2QTD.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+cds_ped02_preP2CODPRO.AsString+'-'+cds_ped02_prePDNOME.AsString+' Quantidade: '+formatFloat(mCasQtd, cds_ped02_preP2QTD.Value)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
cds_ped02_pre.Delete;
end;

procedure TFrm_Venda_Pre.bbExclui_ServicoClick(Sender: TObject);
begin
if (not cds_ped02s_pre.Active) or (cds_ped02s_preP2SQTD.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+cds_ped02s_preP2SCODSER.AsString+'-'+cds_ped02s_prePDNOME.AsString+' Quantidade: '+formatFloat(mCasQtd, cds_ped02s_preP2SQTD.Value)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
cds_ped02s_pre.Delete;

end;

procedure TFrm_Venda_Pre.bbExluir_FPClick(Sender: TObject);
begin
if (not cds_fp_pre.Active) or (cds_fp_prePFPVALOR.IsNull) then
   exit;
if Application.MessageBox(pchar('Quer Realmente Excluir '+cds_fp_prePFPNOMFP.AsString+' Valor: '+formatFloat(mcasas, cds_fp_prePFPVALOR.Value)),'',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;
cds_fp_pre.Delete;
end;

procedure TFrm_Venda_Pre.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Venda_Pre.cb_tipopedClick(Sender: TObject);
begin
if (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.cb_tipopedExit(Sender: TObject);
begin
if (cb_tipoped.ItemIndex<0) and (trim(cb_tipoped.Text)<>'') then
   begin
   with cb_tipoped do
      ItemIndex := Items.IndexOf(cb_tipoped.Text);
  end;

if trim(mped1_tpPed_VendaNormal)='' then
   cb_tipoped.ItemIndex:=0
else
   begin
   with cb_tipoped do
      ItemIndex := Items.IndexOf(cb_tipoped.Text);
   mped1_tpPed :=1;
   end;
if (cb_tipoped.ItemIndex<0) or (cb_tipoped.Text='') then
   cb_tipoped.ItemIndex:=0;


mped1_tpPed:=fPosArray(tab_tped,cb_tipoped.Text);
if mped1_tpPed<0 then
   begin
   MessageDlg('Tipo Pedido: '+cb_tipoped.Text+' não encontrado!',mtWarning,[mbOk],0);
   cb_tipoped.SetFocus;
   end
else
   begin
   mVenda_GP.mPed1_Tipo_Ped:=mped1_tpPed;
   end;
end;

procedure TFrm_Venda_Pre.cds_fp_preAfterDelete(DataSet: TDataSet);
begin
cds_fp_pre.ApplyUpdates(-1);
mVenda_GP.mPed1_QtdParc_ant:=-1;
fVerificarOrdemFPgto(0);
fSomarFPgto(0);

end;
procedure TFrm_Venda_Pre.cds_fp_preAfterEdit(DataSet: TDataSet);
begin
mCodFP_Ant:=cds_fp_prePFPCODFP.AsInteger;
end;

function TFrm_Venda_Pre.fSomarFPgto(pTipo:Integer): Real;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(PFPVALOR) from paf_cadpfp_pre '
                          +' where PFPCODEMP=:CODEMP '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPCHAVE_ANO=:CHAVE_ANO ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   DM1.Query1.Open;
   result:=DM1.Query1.Fields[0].AsFloat;
   if DM1.Query1.Fields[0].AsFloat>ValFloat(edt_totliq.Text) then
      begin
      lbl_restamFP.Caption:='Passam '+FormatFloat(mCasas,DM1.Query1.Fields[0].AsFloat-ValFloat(edt_totliq.Text));
      lbl_restamFP.Font.Color:=clRed;
      end
   else if DM1.Query1.Fields[0].AsFloat<ValFloat(edt_totliq.Text) then
      begin
      lbl_restamFP.Caption:='Restam '+FormatFloat(mCasas,ValFloat(edt_totliq.Text)-DM1.Query1.Fields[0].AsFloat);
      lbl_restamFP.Font.Color:=clWindowText;
      end
   else lbl_restamFP.Caption:='';
except
   result:=0;
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','paf_cadp01_pre');
      end;
  end;

end;

procedure TFrm_Venda_Pre.cds_fp_preAfterPost(DataSet: TDataSet);
begin
cds_fp_pre.ApplyUpdates(-1);
mVenda_GP.mPed1_QtdParc_ant:=-1;
fSomarFPgto(0);

end;

procedure TFrm_Venda_Pre.cds_fp_preBeforePost(DataSet: TDataSet);
begin
if cds_fp_prePFPVALOR.AsFloat=0 then
   begin
   cds_fp_pre.Cancel;
   Abort;
   end
else if cds_fp_pre.State in [dsEdit] then
   begin
   if mCodFP_Ant<>cds_fp_prePFPCODFP.AsInteger then
      begin
      if flcadfp(0,cds_fp_prePFPCODFP.Asinteger,'') then
         cds_fp_prePFPNOMFP.AsString:=DM1.Tb_FPFPDESC.AsString
      else
         begin
         MessageDlg('Forma de Pagamento '+cds_fp_prePFPCODFP.AsString+' não encontrada!',mtWarning,[mbOk],0);
         DBGrid_fpgto.SelectedField:=cds_fp_prePFPCODFP;
         DBGrid_fpgto.SetFocus;
         abort;
         end;
      end;
   end;



end;

procedure TFrm_Venda_Pre.cds_ped02_preAfterCancel(DataSet: TDataSet);
begin
    mPed_Item:=mPed_Item-1;

end;

procedure TFrm_Venda_Pre.cds_ped02_preAfterEdit(DataSet: TDataSet);
begin
    mCodpro_Ant:=cds_ped02_preP2CODPRO.AsString;
    mItem_Ant  :=cds_ped02_preP2ITEM.AsInteger;
    mQtd_Ant   :=cds_ped02_preP2QTD.AsFloat;

end;

procedure TFrm_Venda_Pre.cds_ped02_preAfterInsert(DataSet: TDataSet);
begin
    mCodpro_Ant:='';
    mItem_Ant  :=0;
    mQtd_Ant   :=0;
    cds_ped02_preP2ITEM.Value:=mPed_Item;
    mPed_Item:=mPed_Item+1;

end;

procedure TFrm_Venda_Pre.cds_ped02_preAfterPost(DataSet: TDataSet);
begin
if mVenda_GP.mped1_Chave=0 then
   begin
   mVenda_GP.fGravarPed01(0);
   edt_chave.Text:=Inttostr(mVenda_GP.mped1_Chave);
   end
else if mped_Alterou_Cab then
   begin
   mVenda_GP.fGravarPed01(1);
   mped_Alterou_Cab:=false;
   end;



mVenda_GP.fGravarItem(cds_ped02_preP2ITEM.AsInteger,mItem_Ant,cds_ped02_preP2CFOP_ECF.AsInteger,
                      cds_ped02_preP2CFOP_NF.AsInteger ,cds_ped02_preP2MODBCST.AsInteger,
                      0, // situacao
                      0, // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      mVenda_GP.mPed1_CodFP,iif(mItem_ant=0,0,1),
                      cds_ped02_preP2CODPRO.AsString,
                      mCodpro_Ant, // codigo anterior
                      cds_ped02_preP2QTD.AsFloat,
                      mQtd_Ant,
                      cds_ped02_preP2DESC_PERC01.AsFloat,
                      cds_ped02_preP2DESC_PERC02.AsFloat,
                      Tb_Ped02_preP2DESC_PERC03.AsFloat,
                      0, // desconto em valor
                      cds_ped02_preP2PRECO.AsFloat,
                      0, //repasse de icms
                      0, // lista neutra positiva negativa
                      cds_ped02_preP2PRECO_TAB.AsFloat,
                      cds_ped02_preP2PRECO_TAB.AsFloat, // preco da forma de pagamento
                      cds_ped02_preP2PRECO_UCPR.AsFloat,
                      cds_ped02_preP2PRECO_CUS.AsFloat,
                      cds_ped02_preP2PRECO_MAXCONS.AsFloat,
                      cds_ped02_preP2IPI_PERC.AsFloat,
                      cds_ped02_preP2ICMS_PERC.AsFloat,
                      0, // percentual de comissao
                      cds_ped02_preP2PIS_PERC.AsFloat,
                      cds_ped02_preP2COFINS_PERC.AsFloat,
                      cds_ped02_preP2DESCFIN_PERC.AsFloat,
                      0, // percentual de acrescimos
                      cds_ped02_preP2CODVEN.AsFloat,
                      cds_ped02_preP2ICMS_PPRED.AsFloat,
                      cds_ped02_preP2ST_IVA.AsFloat,
                      cds_ped02_preP2ST_REDUT.AsFloat,
                      cds_ped02_preP2ST_REDUT.AsFloat,
                      cds_ped02_preP2ST_ICMSDEB.AsFloat,
                      cds_ped02_preP2ICMSSN_PERC.AsFloat,
                      valfloat(edt_desc_valor.Text),
                      0, // ACRESCIMOS RATEADO
                      valfloat(edt_valseg.Text),
                      ValFloat(edt_valfre.Text),
                      ValFloat(edt_tarban.Text),
                      valfloat(edt_outdesp.Text),
                      cds_ped02_preP2CST.AsString,
                      cds_ped02_preP2AMBIENTE.AsString,
                      cds_ped02_preP2DESC_COMP.AsString,
                      cds_ped02_preP2CSOSN.AsString,
                      cds_ped02_preP2csosn_ori.AsString,cds_ped02_preP2PROMOCAO.AsString
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP);
fLerFormaPag(0);

fTotais(0);

//edt_totliq.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_Totall);


//LINDOMAR
end;

procedure TFrm_Venda_Pre.cds_ped02_preBeforeDelete(DataSet: TDataSet);
begin


if not  mVenda_GP.fExcluirItem(cds_ped02_preP2ITEM.AsInteger,cds_ped02_preP2CFOP_ECF.AsInteger,
                       cds_ped02_preP2CODPRO.AsString,cds_ped02_preP2QTD.AsFloat,
                       valfloat(edt_desc_valor.Text),
                       0, // ACRESCIMOS RATEADO
                       valfloat(edt_valseg.Text),
                      ValFloat(edt_valfre.Text),
                      ValFloat(edt_tarban.Text),
                      valfloat(edt_outdesp.Text)) then
   begin
   abort;
   exit;
   end;


fTotais(0);

if Tb_Ped02_preP2ITEM.Value=mPed_Item-1 then
   mPed_Item:=mPed_Item-1;

end;

procedure TFrm_Venda_Pre.cds_ped02_preBeforePost(DataSet: TDataSet);
begin
if length(cds_ped02_preP2CODPRO.AsString)<1 then
   begin
   cds_ped02_pre.Cancel;
   Abort;
   end
else if length(cds_ped02_prePDNOME.AsString)<1 then
   begin
   MessageDlg('Código do Produto Invalida!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=cds_ped02_preP2CODPRO;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if cds_ped02_preP2QTD.AsFloat<=0 then
   begin
   MessageDlg('Quantidade Invalida!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=cds_ped02_preP2QTD;
   DBGrid_itens.SetFocus;
   Abort;
   end
else if cds_ped02_preP2PRECO.AsFloat<=0 then
   begin
   MessageDlg('Preço Invalido!',mtWarning,[mbOk],0);
   DBGrid_itens.SelectedField:=cds_ped02_preP2PRECO;
   DBGrid_itens.SetFocus;
   Abort;
   end;
if (cds_ped02_preP2QTD.AsFloat>0) and (cds_ped02_preP2PRECO.AsFloat>0) then
   cds_ped02_preVALOR_TOTAL.AsFloat:=cds_ped02_preP2QTD.AsFloat*cds_ped02_preP2PRECO.AsFloat
else
   cds_ped02_preVALOR_TOTAL.AsFloat:=0;


end;

procedure TFrm_Venda_Pre.cds_ped02s_preAfterCancel(DataSet: TDataSet);
begin
    mPed_Item_Servico:=mPed_Item_Servico-1;

end;

procedure TFrm_Venda_Pre.cds_ped02s_preAfterEdit(DataSet: TDataSet);
begin
    mCodSer_Ant       :=cds_ped02_preP2CODPRO.AsString;
    mItem_Servico_Ant :=cds_ped02_preP2ITEM.AsInteger;
    mQtd_Servico_Ant  :=cds_ped02_preP2QTD.AsFloat;

end;

procedure TFrm_Venda_Pre.cds_ped02s_preAfterInsert(DataSet: TDataSet);
begin
    mCodSer_Ant:='';
    mItem_Servico_Ant  :=0;
    mQtd_Servico_Ant   :=0;
    cds_ped02s_preP2SITEM.Value:=mPed_Item_Servico;
    mPed_Item_Servico:=mPed_Item_Servico+1;

end;

procedure TFrm_Venda_Pre.cds_ped02s_preAfterPost(DataSet: TDataSet);
begin
//parei aqui
if mVenda_GP.mped1_Chave=0 then
   begin
   mVenda_GP.fGravarPed01(0);
   edt_chave.Text:=Inttostr(mVenda_GP.mped1_Chave);
   end
else if mped_Alterou_Cab then
   begin
   mVenda_GP.fGravarPed01(1);
   mped_Alterou_Cab:=false;
   end;


mVenda_GP.fGravarServicos(cds_ped02s_preP2SITEM.AsInteger,
                          mItem_Servico_Ant,
                          cds_ped02s_preP2SCFOP_ECF.AsInteger,
                          cds_ped02s_preP2SCFOP_NF.AsInteger,
                          0, // SITUACAO
                          mVenda_GP.mPed1_CodFP,iif(mItem_Servico_Ant=0,0,1),
                          cds_ped02s_preP2SCODSER.AsString,
                          mCodSer_Ant,
                          cds_ped02s_preP2SPISSQN.AsFloat,
                          cds_ped02s_preP2SDESCFIN_PERC.AsFloat,
                          cds_ped02s_preP2SALIQINSS.AsFloat,
                          cds_ped02s_preP2SPREDINSS.AsFloat,
                          cds_ped02s_preP2SALIQIRRF.AsFloat,
                          cds_ped02s_preP2SPREDIRRF.AsFloat,
                          cds_ped02s_preP2SQTD.AsFloat,
                          mQtd_Servico_Ant,
                          cds_ped02s_preP2SPDESC01.AsFloat,
                          cds_ped02s_preP2SPDESC02.AsFloat,
                          cds_ped02s_preP2SPDESC03.AsFloat,
                          0, // DESCONTO EM VALOR
                          cds_ped02s_preP2SPRECO.AsFloat,
                          cds_ped02s_preP2SPCOCUS.AsFloat, // PCO UCPR
                          0, // ALIQ ICMS
                          0, // PERC COMIS
                          0, // DESCONTO FINANCEIRO
                          0, // PERC ACRES
                          cds_ped02s_preP2SCODVEN.AsFloat,
                          valfloat(edt_desc_valor.Text),
                          0, // ACRESCIMOS RATEADO
                      valfloat(edt_valseg.Text),
                      ValFloat(edt_valfre.Text),
                      ValFloat(edt_tarban.Text),
                      valfloat(edt_outdesp.Text),
                          cds_ped02s_preP2SCST.AsString,
                          cds_ped02s_preP2SDESC_COMP.AsString,
                          '', // promocao
                          mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP);
fLerFormaPag(0);
fTotais(0);


end;

procedure TFrm_Venda_Pre.cds_ped02s_preBeforeDelete(DataSet: TDataSet);
begin

if not  mVenda_GP.fExcluirItem(cds_ped02s_preP2SITEM.AsInteger,cds_ped02s_preP2SCFOP_ECF.AsInteger,
                       cds_ped02s_preP2SCODSER.AsString,cds_ped02s_preP2SQTD.AsFloat,
                       valfloat(edt_desc_valor.Text),
                       0, // ACRESCIMOS RATEADO
                       valfloat(edt_valseg.Text),
                      ValFloat(edt_valfre.Text),
                      ValFloat(edt_tarban.Text),
                      valfloat(edt_outdesp.Text)) then
   begin
   abort;
   exit;
   end;



fTotais(0);

if cds_ped02s_preP2SITEM.Value=mPed_Item_Servico-1 then
   mPed_Item_Servico:=mPed_Item_Servico-1;


end;

procedure TFrm_Venda_Pre.cds_ped02s_preBeforePost(DataSet: TDataSet);
begin
if length(cds_ped02s_preP2SCODSER.AsString)<1 then
   begin
   cds_ped02s_pre.Cancel;
   Abort;
   end
else if length(cds_ped02s_prePDNOME.AsString)<1 then
   begin
   MessageDlg('Código do Serviço Invalido!',mtWarning,[mbOk],0);
   DBGrid_servicos.SelectedField:=cds_ped02s_preP2SCODSER;
   DBGrid_servicos.SetFocus;
   Abort;
   end
else if cds_ped02s_preP2SQTD.AsFloat<=0 then
   begin
   MessageDlg('Quantidade Invalida!',mtWarning,[mbOk],0);
   DBGrid_servicos.SelectedField:=cds_ped02_preP2QTD;
   DBGrid_servicos.SetFocus;
   Abort;
   end
else if cds_ped02s_preP2SPRECO.AsFloat<=0 then
   begin
   MessageDlg('Preço Invalido!',mtWarning,[mbOk],0);
   DBGrid_servicos.SelectedField:=cds_ped02s_preP2SPRECO;
   DBGrid_servicos.SetFocus;
   Abort;
   end;
if (cds_ped02s_preP2SQTD.AsFloat>0) and (cds_ped02s_preP2SPRECO.AsFloat>0) then
   cds_ped02s_preVALOR_TOTAL.AsFloat:=cds_ped02s_preP2SQTD.AsFloat*cds_ped02s_preP2SPRECO.AsFloat
else
   cds_ped02s_preVALOR_TOTAL.AsFloat:=0;



end;

procedure TFrm_Venda_Pre.DBGrid_fpgtoColExit(Sender: TObject);
begin
if cds_fp_pre.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_fpgto.SelectedField=cds_fp_prePFPCODFP then
      begin
{
      if cds_fp_prePFPNOMFP.AsString='' then
         begin
         DBGrid_fpgto.SelectedField:=cds_fp_prePFPCODFP;
         DBGrid_fpgto.SetFocus;
         abort;
         end;
}
      if flcadfp(0,cds_fp_prePFPCODFP.Asinteger,'') then
         cds_fp_prePFPNOMFP.AsString:=DM1.Tb_FPFPDESC.asstring
      else
         begin
         MessageDlg('Forma de Pagamento '+cds_fp_prePFPCODFP.AsString+' não encontrada!',mtWarning,[mbOk],0);
         DBGrid_fpgto.SelectedField:=cds_fp_prePFPCODFP;
         DBGrid_fpgto.SetFocus;
         abort;
         end;
      end;
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_fpgtoExit(Sender: TObject);
begin
if cds_fp_pre.State in [dsEdit,dsInsert] then
   begin
   if (cds_fp_prePFPVALOR.AsFloat>0) and (trim(cds_fp_prePFPNOMFP.AsString)<>'') then
      cds_fp_pre.Post
   else
      cds_fp_pre.Cancel;
   end;
fVerificarOrdemFPgto(0);

end;

procedure TFrm_Venda_Pre.DBGrid_fpgtoKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_fpgto.SelectedField=cds_fp_prePFPVALOR) and
   (cds_fp_pre.State in [dsBrowse]) then
   begin
   if cds_fp_prePFPVALOR.IsNull then
      begin
      cds_fp_pre.Append;
     end;
   end
else if (DBGrid_fpgto.SelectedField=cds_fp_prePFPCODFP) and
     ( (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) then
   begin
   if not (cds_fp_pre.State in [dsEdit,dsInsert]) then
      if cds_fp_prePFPVALOR.IsNull then
         cds_fp_pre.Append
      else
         cds_fp_pre.edit;
   cds_fp_prePFPCODFP.AsInteger:=valint(fChamaFPag(0,'_venda',key));
   edt_codfpExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_Venda_Pre.DBGrid_itensColEnter(Sender: TObject);
var
pRect:TRect;
begin
if sbnGravar.Enabled then
   begin
   GetWindowRect(DBGrid_itens.Handle,pRect);
   if DBGrid_itens.SelectedField=cds_ped02_preP2CODPRO then
      fApresentaHint( 'Digite o Codigo do Produto ou Pressione F2-p/Consultar',pRect.Top,pRect.Left);
   end;
end;

procedure TFrm_Venda_Pre.DBGrid_itensColExit(Sender: TObject);
var
mCst: String;
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;

if cds_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_itens.SelectedField=cds_ped02_preP2QTD then
      begin
      if cds_ped02_preP2QTD.IsNull then
         begin
         DBGrid_itens.SelectedField:=cds_ped02_preP2QTD;
         DBGrid_itens.SetFocus;
         abort;
         end
      end
   else if DBGrid_itens.SelectedField=cds_ped02_preP2CODPRO then
      begin
      if cds_ped02_preP2CODPRO.AsString='' then
         begin
         DBGrid_itens.SelectedField:=cds_ped02_preP2CODPRO;
         DBGrid_itens.SetFocus;
         abort;
         end
      else
         begin
         if flcadpro(1,1,codemp,cds_ped02_preP2CODPRO.AsString) then
            begin
            cds_ped02_preP2PRECO.Value:=DM1.Tb_Propcoven.Value;
            cds_ped02_prePDNOME.Value :=DM1.Tb_ProPDNOME.Value;
            cds_ped02_prePDUND.Value  :=DM1.Tb_ProPDUND.Value;
            cds_ped02_preP2CST.Value  :=DM1.Tb_ProPDSIT.Value;
            mCst:=copy(FormatFloat('000', valint(DM1.TB_ProPDSIT.Value)),2,1);
            if mCst='4' then
               cds_ped02_preP2CFOP_NF.Value:=mped1_cfop_isen
            else if (mCst='1') or (mcst='6') then
               cds_ped02_preP2CFOP_NF.Value:=mped1_cfop_st
            else
               cds_ped02_preP2CFOP_NF.Value:=mped1_cfop_nor;

            cds_ped02_preP2ICMS_PERC.AsFloat  :=0;
            cds_ped02_preP2ICMS_PPRED.AsFloat :=0;
            cds_ped02_preP2ICMSSN_PERC.AsFloat:=0;
            cds_ped02_preP2ST_IVA.AsFloat     :=0;
            cds_ped02_preP2ST_REDUT.AsFloat   :=0;
            cds_ped02_preP2ST_ICMSCRED.AsFloat:=0;
            cds_ped02_preP2ST_ICMSDEB.AsFloat :=0;
            cds_ped02_preP2MODBCST.AsInteger  :=mPed_MobBcST;
            if (mPed_Cli_ICMSST='S') and
              ( (cds_ped02_preP2MODBCST.AsInteger=0) or
                (cds_ped02_preP2MODBCST.AsInteger=5) )
                and (mcst[1] in ['1','6','3','7']) then
               begin
               if DM1.Tb_ProPDPMC.AsFloat=0 then
                  begin
                  verteclado(0);
                  MessageDlg('o Produto '+DM1.Tb_ProPDCODPRO.AsString+'-'+DM1.Tb_ProPDNOME.AsString
                           +' Não Possui o PMC/Pauta ST, entre no cadastro de Produto e coloque!',mtWarning,[mbOk],0);
                  DBGrid_itens.SetFocus;
                  abort;
                  end
               else
                  cds_ped02_preP2PRECO_MAXCONS.AsFloat:=DM1.Tb_ProPDPMC.AsFloat;
               end;

            if (mcst[1] in ['1','6','3','7']) then
               cds_ped02_preP2ICMS_PERC.AsFloat  :=cds_aliquotasal_icmsRet.AsFloat
            else
               cds_ped02_preP2ICMS_PERC.AsFloat  :=cds_aliquotasal_IcmsTrib.AsFloat;
            cds_ped02_preP2ICMS_PPRED.AsFloat :=cds_aliquotasal_aliqredut.AsFloat;
            cds_ped02_preP2ICMSSN_PERC.AsFloat:=mGer_Emp_IcmsCred_SN;

            if (mGer_Emp_CRT=1) and (mCst<>'4') then
               cds_ped02_preP2ICMSSN_PERC.AsFloat:=mGer_Emp_IcmsCred_SN;

            if DM1.Tb_ProPDLISTA.AsInteger=1 then
               cds_ped02_preP2ST_IVA.AsFloat     :=cds_aliquotasal_stIVA_Pos.AsFloat
            else if DM1.Tb_ProPDLISTA.AsInteger=2 then
               cds_ped02_preP2ST_IVA.AsFloat     :=cds_aliquotasal_stIVA_Neg.AsFloat
            else
               cds_ped02_preP2ST_IVA.AsFloat     :=cds_aliquotasal_stIVA_Ina.AsFloat;



            cds_ped02_preP2ST_REDUT.AsFloat   :=cds_aliquotasal_stAliqRed.AsFloat;
            cds_ped02_preP2ST_ICMSCRED.AsFloat:=cds_aliquotasal_stIcmsCred.AsFloat;
            cds_ped02_preP2ST_ICMSDEB.AsFloat :=cds_aliquotasal_stIcmsDeb.AsFloat;
            cds_ped02_preP2MODBCST.AsInteger  :=mPed_MobBcST;
            if cds_ped02_preP2ICMS_PERC.AsFloat=0 then
               begin
               if (mCst<>'4')  then
                  begin
                  if mUF_AliqDebSt>0 then
                    cds_ped02_preP2ICMS_PERC.AsFloat:=mUF_AliqDebSt;
                  end;
               end;
            if cds_ped02_preP2ICMS_PPRED.AsFloat=0 then
               begin
               if (mCst<>'4')  then
                  begin
                  if mUF_Red_IcmsSt>0 then
                    cds_ped02_preP2ICMS_PPRED.AsFloat:=mUF_Red_IcmsSt;
                  end;
               end;
            if cds_ped02_preP2ST_IVA.AsFloat=0 then
               begin
               if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                  begin
                  if mReg_IcmsSTIVA>0 then
                    cds_ped02_preP2ST_IVA.AsFloat:=mReg_IcmsSTIVA;
                  end;
               end;
            if cds_ped02_preP2ST_REDUT.AsFloat=0 then
               begin
               if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                  begin
                  if mReg_IcmsSTPRed>0 then
                    cds_ped02_preP2ST_REDUT.AsFloat:=mReg_IcmsSTPRed;
                  end;
               end;

            if cds_ped02_preP2ST_ICMSDEB.AsFloat=0 then
               begin
               if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                  begin
                  if mUF_AliqDebSt>0 then
                    cds_ped02_preP2ST_ICMSDEB.AsFloat:=mUF_AliqDebSt;
                  end;
               end;

            if cds_ped02_preP2ST_ICMSCRED.AsFloat=0 then
               begin
               if (mCst='1') or (mcst='6') or (mCst='3') or (mcst='7') then
                  begin
                  if mReg_AliqCredST>0 then
                    cds_ped02_preP2ST_ICMSCRED.AsFloat:=mReg_AliqCredST;
                  end;
               end;
            end
         else
            begin
            MessageDlg('Produto '+cds_ped02_preP2CODPRO.AsString+' não encontrado!',mtWarning,[mbOk],0);
            DBGrid_itens.SelectedField:=cds_ped02_preP2CODPRO;
            cds_ped02_preP2CODPRO.Value:='';
            DBGrid_itens.SetFocus;
            abort;
            end;
         end;
      end;
   if (cds_ped02_preP2QTD.AsFloat>0) and (cds_ped02_preP2PRECO.AsFloat>0) then
      cds_ped02_preVALOR_TOTAL.AsFloat:=cds_ped02_preP2QTD.AsFloat*cds_ped02_preP2PRECO.AsFloat
   else
      cds_ped02_preVALOR_TOTAL.AsFloat:=0;

   end;

end;

procedure TFrm_Venda_Pre.DBGrid_itensExit(Sender: TObject);
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;

if cds_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBMemo1.Focused then
      begin
      if length(cds_ped02_preP2CODPRO.AsString)>0 then
         cds_ped02_pre.Post
      else
         cds_ped02_pre.Cancel;
      end;
   end;
end;

procedure TFrm_Venda_Pre.DBGrid_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113) and
   (DBGrid_itens.SelectedField=cds_ped02_preP2CODPRO) then
   begin
   if not (cds_ped02_pre.State in [dsEdit,dsInsert]) then
      begin
      if cds_ped02_preP2CODPRO.IsNull then
         cds_ped02_pre.Append
      else
         cds_ped02_pre.Edit;
      end;
   cds_ped02_preP2CODPRO.AsString:=fChamaPro(0,'_venda','');
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_itensKeyPress(Sender: TObject; var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_itens.SelectedField=cds_ped02_preP2CODPRO) and
   (cds_ped02_pre.State in [dsBrowse]) then
   begin
   if cds_ped02_preP2CODPRO.IsNull then
      begin
      cds_ped02_pre.Append;
     end;
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_itensMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//Para adicionar um hint numa determinada linha e/ou coluna de um DBGrid
{Coloque este comando no evento OnMouseMove do DBGrid
Obs: X representa o nº da coluna (column) e Y representa o nº da linha (row)}
//if (DBGrid_CADPRO_KIT.MouseCoord(X, Y).X in [2]) and (DBGrid_CADPRO_KIT.MouseCoord(X, Y).Y in [5]) then
{
if (DBGrid_itens.MouseCoord(X, Y).X in [0])  then
   begin
   DBGrid_itens.Hint := 'Digite o Codigo do Produto '+#13
                  +'ou Comece a Digitar o Nome Para Consultar';
   end
else if (DBGrid_itens.MouseCoord(X, Y).X in [3])  then
   begin
   DBGrid_itens.Hint := 'Digite o Quantidade de Itens que Compoe o KIT';
   end
else
   begin
   DBGrid_itens.Hint := 'Para Excluir Click o Botão '+#13+'do Lado Direito do Mouse';
   end
}



end;

procedure TFrm_Venda_Pre.DBGrid_servicosColEnter(Sender: TObject);
var
pRect:TRect;
begin
if sbnGravar.Enabled then
   begin
   GetWindowRect(DBGrid_servicos.Handle,pRect);
   if DBGrid_servicos.SelectedField=cds_ped02s_preP2SCODSER then
      fApresentaHint( 'Digite o Codigo do Serviço ou Pressione F2-p/Consultar',pRect.Top,pRect.Left);
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_servicosColExit(Sender: TObject);
var
mCst: String;
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;

if cds_ped02s_pre.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_servicos.SelectedField=cds_ped02s_preP2SQTD then
      begin
      if cds_ped02s_preP2SQTD.IsNull then
         begin
         DBGrid_servicos.SelectedField:=cds_ped02s_preP2SQTD;
         DBGrid_servicos.SetFocus;
         abort;
         end
      end
   else if DBGrid_servicos.SelectedField=cds_ped02s_preP2SCODSER then
      begin
      if cds_ped02s_preP2SCODSER.AsString='' then
         begin
         DBGrid_servicos.SelectedField:=cds_ped02s_preP2SCODSER;
         DBGrid_servicos.SetFocus;
         abort;
         end
      else
         begin
         if flcadpro(1,1,codemp,cds_ped02s_preP2SCODSER.AsString) then
            begin
            cds_ped02s_preP2SPRECO.Value:=DM1.Tb_Propcoven.Value;
            cds_ped02s_prePDNOME.Value :=DM1.Tb_ProPDNOME.Value;
            cds_ped02s_prePDUND.Value  :=DM1.Tb_ProPDUND.Value;
            cds_ped02s_preP2SCST.Value  :=DM1.Tb_ProPDSIT.Value;
            mCst:=copy(FormatFloat('000', valint(DM1.Tb_ProPDSIT.Value)),2,1);
            cds_ped02s_preP2SCFOP_ECF.Value:=cds_aliquotascfo_servico.AsInteger;
            cds_ped02s_preP2SCFOP_NF.Value:=cds_aliquotascfo_servico.AsInteger;
            cds_ped02s_preP2SPISSQN.AsFloat   :=cds_aliquotasal_issqn.AsFloat;
            cds_ped02s_preP2SPREDINSS.AsFloat :=cds_aliquotasal_inss.AsFloat;
            cds_ped02s_preP2SALIQINSS.AsFloat :=cds_aliquotasal_inss_pred.AsFloat;
            cds_ped02s_preP2SPREDIRRF.AsFloat :=cds_aliquotasal_irrf.AsFloat;
            cds_ped02s_preP2SALIQIRRF.AsFloat :=cds_aliquotasal_irrf_pred.AsFloat;
            end
         else
            begin
            MessageDlg('Servico '+cds_ped02s_preP2SCODSER.AsString+' não encontrado!',mtWarning,[mbOk],0);
            DBGrid_servicos.SelectedField:=cds_ped02s_preP2SCODSER;
            cds_ped02s_preP2SCODSER.Value:='';
            DBGrid_servicos.SetFocus;
            abort;
            end;
         end;
      end;
   if (cds_ped02s_preP2SQTD.AsFloat>0) and (cds_ped02s_preP2SPRECO.AsFloat>0) then
      cds_ped02s_preVALOR_TOTAL.AsFloat:=cds_ped02s_preP2SQTD.AsFloat*cds_ped02s_preP2SPRECO.AsFloat
   else
      cds_ped02s_preVALOR_TOTAL.AsFloat:=0;
   end;


end;

procedure TFrm_Venda_Pre.DBGrid_servicosExit(Sender: TObject);
begin
if Assigned(HintWindow) then
HintWindow.ReleaseHandle;

if cds_ped02s_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBMemo_servico.Focused then
      begin
      if length(cds_ped02s_preP2SCODSER.AsString)>0 then
         cds_ped02s_pre.Post
      else
         cds_ped02s_pre.Cancel;
      end;
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_servicosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=113) and
   (DBGrid_servicos.SelectedField=cds_ped02s_preP2SCODSER) then
   begin
   if not (cds_ped02s_pre.State in [dsEdit,dsInsert]) then
      begin
      if cds_ped02s_preP2SCODSER.IsNull then
         cds_ped02s_pre.Append
      else
         cds_ped02s_pre.Edit;
      end;
   cds_ped02s_preP2SCODSER.AsString:=fChamaPro(0,'_venda','');
   end;

end;

procedure TFrm_Venda_Pre.DBGrid_servicosKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key in ['0'..'9']) and
   (DBGrid_servicos.SelectedField=cds_ped02s_preP2SCODSER) and
   (cds_ped02s_pre.State in [dsBrowse]) then
   begin
   if cds_ped02s_preP2SCODSER.IsNull then
      begin
      cds_ped02s_pre.Append;
     end;
   end;

end;

procedure TFrm_Venda_Pre.DBMemo1Exit(Sender: TObject);
begin

if cds_ped02_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBGrid_itens.Focused then
      begin
      if length(cds_ped02_preP2CODPRO.AsString)>0 then
         cds_ped02_pre.Post
      else
         cds_ped02_pre.Cancel;
      end;
   end;
end;

procedure TFrm_Venda_Pre.DBMemo_servicoExit(Sender: TObject);
begin

if cds_ped02s_pre.State in [dsEdit,dsInsert] then
   begin
   if not DBGrid_servicos.Focused then
      begin
      if length(cds_ped02s_preP2SCODSER.AsString)>0 then
         cds_ped02s_pre.Post
      else
         cds_ped02s_pre.Cancel;
      end;
   end;

end;

procedure TFrm_Venda_Pre.edt_bcicmsChange(Sender: TObject);
begin
if (edt_bcicms.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_bcicmsExit(Sender: TObject);
begin
edt_bcicms.Text:=Formatfloat(mcasas, valfloat(edt_bcicms.Text));

end;

procedure TFrm_Venda_Pre.edt_bcicmsstChange(Sender: TObject);
begin
if (edt_bcicmsst.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_bcicmsstExit(Sender: TObject);
begin
edt_bcicmsst.Text:=Formatfloat(mcasas, valfloat(edt_bcicmsst.Text));

end;

procedure TFrm_Venda_Pre.edt_chaveExit(Sender: TObject);
begin
if valint(edt_chave.Text)>0 then
   if not fLerPedidoGeral(codemp,valint(edt_chave.Text),valint(FormatDateTime('yyyy', date))) then
      begin
      edt_chave.Text:='';
      edt_chave.SetFocus;
      end
   else
      begin
      fAtualizarBotoes(1);
      end;
end;

procedure TFrm_Venda_Pre.edt_codcliChange(Sender: TObject);
begin
if (edt_codcli.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum(edt_codcli.Text);
if Trim(edt_codcli.Text)='' then
   exit;
if not flcadcli(1,0,edt_codcli.Text) then
   begin
   if edt_codcli.Enabled then
      begin
      verteclado(0);
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      edt_codcli.SetFocus;
      exit;
      end;
   end;
edt_nomcli.Text :=DM1.tb_cliCRAZAO.AsString;
cb_tipopedExit(self);

end;

procedure TFrm_Venda_Pre.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'_venda',key);
   edt_codcliExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre.edt_codCondPagChange(Sender: TObject);
begin
if (edt_codCondPag.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codCondPagExit(Sender: TObject);
begin
edt_codCondPag.Text:=trim(edt_codCondPag.Text);
if Trim(edt_codCondPag.Text)='' then
   exit;
if (edt_codCondPag.Text='PO99') then
   begin
   edt_nomcond.Text := 'Plano Opcional(Digitado)';
   mVenda_GP.mPed1_CodPV:=99;
   mVenda_GP.mPed1_TabPV:='PO';


   end
else if not flcadpv(1,0,copy(edt_codCondPag.Text,1,2),copy(edt_codCondPag.Text,3,length(edt_codcondpag.text)-2)) then
   begin
   if edt_codCondPag.Enabled then
      begin
      verteclado(0);
      MessageDlg('Condições de Pagamento Não Encontrada!',mtWarning,[mbOk],0);
      edt_codCondPag.SetFocus;
      exit;
      end;
   end
else
   begin
   mVenda_GP.mPed1_CodPV:=DM1.Tb_PVPVCODPV.AsInteger;
   mVenda_GP.mPed1_TabPV:=DM1.Tb_PVPVCODTIP.asString;
   edt_nomcond.Text:=DM1.Tb_PVPVNOME.AsString;
   if (DM1.Tb_PV2.Active) or (DM1.Tb_PV2.IsEmpty) then
      begin
      mVenda_GP.mped1_QtdParc:=1;
      mVenda_GP.mPed1_Parcelas:=insere('0','0',4);
      end
   else
      begin
      DM1.Tb_PV2.First;
      mVenda_GP.mPed1_Parcelas:=insere(DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
      DM1.Tb_PV2.Next;
      while not DM1.Tb_PV2.Eof do
         begin
         mVenda_GP.mPed1_Parcelas:=mVenda_GP.mPed1_Parcelas+insere( DM1.Tb_PV2PV2PRAZO.AsString,'0',4);
         DM1.Tb_PV2.Next;
         end;
      mVenda_GP.mped1_QtdParc:=DM1.Tb_PV2.RecordCount;
      end;
   end;
end;

procedure TFrm_Venda_Pre.edt_codfpChange(Sender: TObject);
begin
if (edt_codfp.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codfpExit(Sender: TObject);
begin
edt_codfp.Text:=fdeixanum(edt_codfp.Text);
if Trim(edt_codfp.Text)='' then
   exit;
if not fLCadFP(0,valint(edt_codfp.Text),'') then
   begin
   if edt_codfp.Enabled then
      begin
      verteclado(0);
      MessageDlg('Forma de Pagamento não Cadastrado!',mtWarning,[mbOk],0);
      edt_codfp.SetFocus;
      exit;
      end;
   end;
edt_nomfp.Text:=DM1.Tb_FPFPDESC.AsString;
mVenda_GP.mPed1_CodFP:=valint(edt_codfp.Text);
mVenda_GP.mPed1_nomfp:=DM1.Tb_FPFPDESC.AsString;
mVenda_GP.mPed1_BaixaFP:='N';
mVenda_GP.mPed1_QtdParc_ant:=-1;

end;

procedure TFrm_Venda_Pre.edt_codfpKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then

   begin
   edt_codfp.Text:=fChamaFPag(0,'_venda',key);
   edt_codfpExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre.edt_codvenChange(Sender: TObject);
begin
if (edt_codven.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_codvenExit(Sender: TObject);
begin
edt_codven.Text:=fdeixanum(edt_codven.Text);
if Trim(edt_codven.Text)='' then
   exit;
if not flcadven(1,0,edt_codven.Text) then
   begin
   if edt_codven.Enabled then
      begin
      verteclado(0);
      MessageDlg('Vendedro Não Encontrado!',mtWarning,[mbOk],0);
      edt_codven.SetFocus;
      exit;
      end;
   end;

edt_nomven.Text:=DM1.Tb_VenVNOME.AsString;
mVenda_GP.mPed1_Codven:=valint(edt_codven.Text);

end;

procedure TFrm_Venda_Pre.edt_codvenKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
   begin
   edt_codven.Text:=fChamaVen(0,'_venda',key);
   edt_codvenExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Venda_Pre.edt_datapChange(Sender: TObject);
begin
if (edt_datap.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_datapExit(Sender: TObject);
begin
mVenda_GP.mPed1_Datap:=edt_datap.Date;

end;

procedure TFrm_Venda_Pre.edt_desc_valorChange(Sender: TObject);
begin
if (edt_desc_valor.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_desc_valorExit(Sender: TObject);
begin
if ( valfloat(edt_desc_valor.Text)<0) or (valfloat(edt_desc_valor.Text)>99999999999) then
   edt_desc_valor.Text:=Formatfloat(mcasas, 0);
mVenda_GP.mPed1_Desc_Rateado:=ValFloat(edt_desc_valor.Text);
edt_desc_valor.Text:=FormatFloat(mCasas, valfloat(edt_desc_valor.Text));
fRecalcularPedido(3);

end;

procedure TFrm_Venda_Pre.edt_outdespChange(Sender: TObject);
begin
if (edt_outdesp.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_outdespExit(Sender: TObject);
begin
edt_outdesp.Text:=Formatfloat(mcasas, valfloat(edt_outdesp.Text));

end;

procedure TFrm_Venda_Pre.edt_pDesc01Change(Sender: TObject);
begin
if (edt_pDesc01.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_pDesc01Enter(Sender: TObject);
begin
    mPed_PDesc01_Ant:=ValFloat(edt_pDesc01.Text);

end;

procedure TFrm_Venda_Pre.edt_pDesc01Exit(Sender: TObject);
begin
if ( valfloat(edt_pDesc01.Text)<0) or (valfloat(edt_pDesc01.Text)>99) then
   edt_pDesc01.Text:=Formatfloat(mcasas, 0);
mVenda_GP.mPed1_pDesc01:=ValFloat(edt_pDesc01.Text);
edt_pDesc01.Text:=Formatfloat(mcasas, mVenda_GP.mPed1_pDesc01);

if ValFloat(edt_pDesc01.Text)=0 then
   begin
   edt_vlrdes_ped1_perc.Text:=FormatFloat(mcasas, 0);
   end
else
   edt_vlrdes_ped1_perc.Text:=FormatFloat(mcasas,
    ((mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer)-
    (mVenda_GP.mPed1_DescPed02_Perc+mVenda_GP.mPed1_Desc_Rateado))
                                       *mVenda_GP.mPed1_pDesc01/100);

mVenda_GP.mPed1_pDesc01_Valor:=valfloat(edt_vlrdes_ped1_perc.Text);
fRecalcularPedido(3);

end;

procedure TFrm_Venda_Pre.edt_percfreteChange(Sender: TObject);
begin
if (edt_percfrete.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_tarbanChange(Sender: TObject);
begin
if (edt_tarban.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_totipiChange(Sender: TObject);
begin
if (edt_totipi.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_totipiExit(Sender: TObject);
begin
edt_totipi.Text:=Formatfloat(mcasas, valfloat(edt_totipi.Text));

end;

procedure TFrm_Venda_Pre.edt_valfreChange(Sender: TObject);
begin
if (edt_valfre.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_valfreExit(Sender: TObject);
begin
edt_valfre.Text:=Formatfloat(mcasas, valfloat(edt_valfre.Text));

end;

procedure TFrm_Venda_Pre.edt_valsegChange(Sender: TObject);
begin
if (edt_valfre.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_valsegExit(Sender: TObject);
begin
edt_valseg.Text:=Formatfloat(mcasas, valfloat(edt_valseg.Text));

end;

procedure TFrm_Venda_Pre.edt_vlricmsChange(Sender: TObject);
begin
if (edt_vlricms.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_vlricmsExit(Sender: TObject);
begin
edt_vlricms.Text:=Formatfloat(mcasas, valfloat(edt_vlricms.Text));

end;

procedure TFrm_Venda_Pre.edt_vlricmsstChange(Sender: TObject);
begin
if (edt_vlricmsst.Modified) and (mVenda_GP.mped1_Chave>0)  then
   mped_Alterou_Cab:=true;

end;

procedure TFrm_Venda_Pre.edt_vlricmsstExit(Sender: TObject);
begin
edt_vlricmsst.Text:=Formatfloat(mcasas, valfloat(edt_vlricmsst.Text));

end;

function TFrm_Venda_Pre.fTotais(pTipo: Integer): Boolean;
var
mpDescMedio: Real;
begin
edt_TotProdServ.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer);
edt_descItens.Text  :=FormatFloat(mCasas, mVenda_GP.mPed1_DescPed02_Perc);
edt_totPromo.Text   :=FormatFloat(mCasas, mVenda_GP.mPed1_TotPromo);
edt_descItens.Text :=FormatFloat(mCasas, mVenda_GP.mPed1_DescPed02_Perc);

edt_vlrdes_ped1_perc.Text:=FormatFloat(mCasas, mVenda_GP.mPed1_pDesc01_Valor);
edt_TotDesGer.Text :=FormatFloat(mCasas,mVenda_GP.mPed1_pDesc01_Valor+mVenda_GP.mPed1_DescPed02_Perc+mVenda_GP.mPed1_Desc_Rateado);
if  (  (Valfloat(edt_TotDesGer.Text)>0) and ((mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer)=0) )
    or   ((mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer)=0) then
   edt_perDesGer.Text := FormatFloat(mCasas,0)
else
   begin
   edt_perDesGer.Text := FormatFloat(mCasas,
                                    ((mVenda_GP.mPed1_pDesc01_Valor+mVenda_GP.mPed1_DescPed02_Perc
                                    +mVenda_GP.mPed1_Desc_Rateado)*100) /

                                    (mVenda_GP.mPed1_TotMer+mVenda_GP.mPed1_TotSer) );
   end;


edt_tarban.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_TarBan);
edt_valseg.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_ValSeg);
edt_outdesp.Text   :=FormatFloat(mCasas, mVenda_GP.mPed1_OutDesp);
edt_totipi.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_TotIPI);
edt_valfre.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_ValFre);
edt_percfrete.Text :=FormatFloat(mCasas, mVenda_GP.mPed1_Perc_Frete);
edt_bcicmsst.Text  :=FormatFloat(mCasas, mVenda_GP.mPed1_ST_base);
edt_vlricmsst.Text :=FormatFloat(mCasas, mVenda_GP.mPed1_ST_Icms);
edt_bcicms.Text    :=FormatFloat(mCasas, mVenda_GP.mPed1_Icms_Base);
edt_vlricms.Text   :=FormatFloat(mCasas, mVenda_GP.mPed1_Icms_Valor);
edt_totliq.Text:=FormatFloat(mCasas, (valfloat(edt_TotProdServ.Text)
                            +valfloat(edt_tarban.Text)
                            +valfloat(edt_valseg.Text)
                            +valfloat(edt_outdesp.Text)
                            +valfloat(edt_totipi.Text)
                            +valfloat(edt_valfre.Text)
                            +valfloat(edt_vlricmsst.Text))
                            -ValFloat(edt_TotDesGer.Text)
                             );

result:=true;
end;

function TFrm_Venda_Pre.fAtualizarBotoes(pTipo: Integer): Boolean;
{
pTipo = 0 Pronto para inicializar uma nova inclusao sem nenhum selecionado
        1 Pronto para inicializar uma ação de inclusao/alteração/exclusao/impressao com pedido selecionado
        2 em estado de inclusao ou alteração
        3 bloqueia todos

}
begin

if ptipo=3 then // bloqueia todos
   begin
   sbnIncluir.Enabled      := false;
   sbnLocalizar.Enabled    := False;
   sbnAlterar.Enabled      := False;
   sbnGravar.Enabled       := False;
   sbnExcluir.Enabled      := False;
   end
else if ptipo=2 then // inclusao ou alteracao
   begin
   sbnIncluir.Enabled      := false;
   sbnLocalizar.Enabled    := False;
   sbnAlterar.Enabled      := False;
   sbnGravar.Enabled       := True;
   sbnExcluir.Enabled      := False;
   end
else if ptipo=0 then
   begin
   sbnIncluir.Enabled      := true;
   sbnLocalizar.Enabled    := true;
   sbnAlterar.Enabled      := False;
   sbnGravar.Enabled       := False;
   sbnExcluir.Enabled      := False;
   end
else if ptipo=1 then
   begin
   sbnIncluir.Enabled      := true;
   sbnLocalizar.Enabled    := true;
   sbnAlterar.Enabled      := true;
   sbnGravar.Enabled       := False;
   sbnExcluir.Enabled      := true;
   end;
result:=true;

end;

function TFrm_Venda_Pre.fPosicao(ptipo: Integer): Boolean;
var
pRect:TRect;
x,i: Integer;
begin
GetWindowRect(Memo_ObsPed.Handle,pRect);
x:=pRect.left; // -->>>posicao em relação a esquerda em relação a tela
i:=pRect.Top; //-->>>posicao em relação ao Top
end;


function tFrm_Venda_Pre.fRecalcularPedido(pTipo: Integer): Boolean;
begin
mVenda_GP.fGravarItem(0 // item
                      ,mItem_Ant
                      ,0 //cds_ped02_preP2CFOP_ECF.AsInteger,
                      ,0 //cds_ped02_preP2CFOP_NF.AsInteger
                      ,0 //cds_ped02_preP2MODBCST.AsInteger,
                      ,0 // situacao
                      ,0 // Tipo de Movimento do Estoque 0-Saida 1-Entrada 2-Não Movimenta
                      ,mVenda_GP.mPed1_CodFP
                      ,3 // tipo do evento 3-apenas calcular
                      ,'' //cds_ped02_preP2CODPRO.AsString,
                      ,mCodpro_Ant // codigo anterior
                      ,0 //cds_ped02_preP2QTD.AsFloat,
                      ,mQtd_Ant
                      ,0 //cds_ped02_preP2DESC_PERC01.AsFloat,
                      ,0 //cds_ped02_preP2DESC_PERC02.AsFloat,
                      ,0 //tb_ped02_pre.AsFloat,
                      ,0 // desconto em valor
                      ,0 //cds_ped02_preP2PRECO.AsFloat,
                      ,0 //repasse de icms
                      ,0 // lista neutra positiva negativa
                      ,0 //cds_ped02_preP2PRECO_TAB.AsFloat,
                      ,0 //cds_ped02_preP2PRECO_TAB.AsFloat, // preco da forma de pagamento
                      ,0 //cds_ped02_preP2PRECO_UCPR.AsFloat,
                      ,0 //cds_ped02_preP2PRECO_CUS.AsFloat,
                      ,0 //cds_ped02_preP2PRECO_MAXCONS.AsFloat,
                      ,0 //cds_ped02_preP2IPI_PERC.AsFloat,
                      ,0 //cds_ped02_preP2ICMS_PERC.AsFloat,
                      ,0 // percentual de comissao
                      ,0 //cds_ped02_preP2PIS_PERC.AsFloat,
                      ,0 //cds_ped02_preP2COFINS_PERC.AsFloat,
                      ,0 //cds_ped02_preP2DESCFIN_PERC.AsFloat,
                      ,0 // percentual de acrescimos
                      ,0 //cds_ped02_preP2CODVEN.AsFloat,
                      ,0 //cds_ped02_preP2ICMS_PPRED.AsFloat,
                      ,0 //cds_ped02_preP2ST_IVA.AsFloat,
                      ,0 //cds_ped02_preP2ST_REDUT.AsFloat,
                      ,0 //cds_ped02_preP2ST_REDUT.AsFloat,
                      ,0 //cds_ped02_preP2ST_ICMSDEB.AsFloat,
                      ,0 // cds_ped02_preP2ICMSSN_PERC.AsFloat,
                      ,valfloat(edt_desc_valor.Text)
                      ,0 // ACRESCIMOS RATEADO
                      ,valfloat(edt_valseg.Text)
                      ,ValFloat(edt_valfre.Text)
                      ,ValFloat(edt_tarban.Text)
                      ,valfloat(edt_outdesp.Text)
                      ,'' //cds_ped02_preP2CST.AsString,
                      ,'' //cds_ped02_preP2AMBIENTE.AsString,
                      ,'' //cds_ped02_preP2DESC_COMP.AsString,
                      ,'' //cds_ped02_preP2CSOSN.AsString,
                      ,'' //cds_ped02_preP2csosn_ori.AsString
                      ,'' //cds_ped02_preP2PROMOCAO.AsString
                      ,mVenda_GP.mPed1_NomFP,mVenda_GP.mPed1_BaixaFP);
fLerFormaPag(0);

fTotais(0);
mped_Alterou_Cab:=false;

end;


procedure TFrm_Venda_Pre.cds_fp_preAfterInsert(DataSet: TDataSet);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select sum(PFPVALOR) as TOT, max(PFPPARCELA) AS PARCELA from paf_cadpfp_pre '
                          +' where PFPCODEMP=:CODEMP '
                          +' and   PFPCHAVE=:CHAVE '
                          +' and   PFPCHAVE_ANO=:CHAVE_ANO ');
DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   DM1.Query1.Open;
   cds_fp_prePFPPARCELA.AsInteger:=DM1.Query1.FieldByName('PARCELA').AsInteger+1;
   cds_fp_prePFPVALOR.AsFloat    :=ValFloat(edt_totliq.Text)-DM1.Query1.FieldByName('TOT').AsFloat;
except
  end;
cds_fp_prePFPCODEMP.Value   :=mVenda_GP.mPed1_Codemp;
cds_fp_prePFPCHAVE.Value    :=mVenda_GP.mped1_Chave;
cds_fp_prePFPDATA.AsDateTime:=mVenda_GP.mPed1_Datap;
cds_fp_prePFPCHAVE_ANO.Value:=mVenda_GP.mPed1_Chave_ano;
cds_fp_prePFPCODFP.AsInteger:=mvenda_gp.mPed1_CodFP;
cds_fp_prePFPNOMFP.AsString :=mvenda_gp.mPed1_NomFP;
if cds_fp_prePFPVALOR.AsFloat<0 then
   cds_fp_prePFPVALOR.AsFloat:=0;
end;
function TFrm_Venda_Pre.fVerificarOrdemFPgto(ptipo: Integer): Boolean;
var
mOrdemFP,mQtdParc: Integer;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from paf_cadpfp_pre  '
                          +' where PFPCODEMP='+IntTostr(mVenda_GP.mPed1_Codemp)
                          +' and   PFPCHAVE='+IntTostr(mVenda_GP.mped1_Chave)
                          +' and   PFPCHAVE_ANO='+IntTostr(mVenda_GP.mPed1_Chave_ano)
                          +' order by PFPDATA,PFPPARCELA ');
//DM1.Query2.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
//DM1.Query2.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
//DM1.Query2.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
try
   DM1.Query2.Open;
except
   result:=false;
   exit;
   end;
mOrdemFP:=0;
mQtdParc:=DM1.Query2.RecordCount;
while not DM1.Query2.Eof do
   begin
   mOrdemFP:=mOrdemFP+1;
   if (DM1.Query2.FieldByName('PFPPARCELA').AsInteger<>mOrdemFP) or
      (DM1.Query2.FieldByName('PFPQTDPARC').AsInteger<>mQtdParc) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Update paf_cadpfp_pre set PFPPARCELA=:PARCELA '
                                +', PFPQTDPARC=:QTDPARC '
                                +' where PFPCODEMP=:CODEMP '
                                +' and   PFPCHAVE=:CHAVE '
                                +' and   PFPCHAVE_ANO=:CHAVE_ANO '
                                +' and   PFPPARCELA=:PARCELA_ANT '
                                +' and   PFPQTDPARC=:QTDPARC_ANT ');
      DM1.Query1.ParamByName('PARCELA').AsInteger:=mOrdemFP;
      DM1.Query1.ParamByName('QTDPARC').AsInteger:=mQtdParc;
      DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
      DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
      DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;
      DM1.Query1.ParamByName('PARCELA_ANT').AsInteger:=DM1.Query2.FieldByName('PFPPARCELA').AsInteger;
      DM1.Query1.ParamByName('QTDPARC_ANT').AsInteger:=DM1.Query2.FieldByName('PFPQTDPARC').AsInteger;
      try
         DM1.Query1.ExecSQL;
         fDM1StartCommit;
      except
         result:=false;
         exit;
         end;
      end;
   DM1.Query2.Next;
   end;
result:=true;

end;


function TFrm_Venda_Pre.fBloqueiaLiberaPedido(ptipo: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
begin
if mVenda_GP.mped1_Chave>0  then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update paf_cadp01_pre set P1SITUACAO=:SITUACAO '
                             +' where P1CODEMP=:CODEMP '
                             +' and   P1CHAVE=:CHAVE '
                             +' and   P1CHAVE_ANO=:CHAVE_ANO '
                             +' and   P1SITUACAO<>9 ' );
   DM1.Query1.ParamByName('SITUACAO').AsInteger:=ptipo;
   DM1.Query1.ParamByName('CODEMP').AsInteger:=mVenda_GP.mPed1_Codemp;
   DM1.Query1.ParamByName('CHAVE').AsInteger:=mVenda_GP.mped1_Chave;
   DM1.Query1.ParamByName('CHAVE_ANO').AsInteger:=mVenda_GP.mPed1_Chave_ano;

   try
      DM1.Query1.ExecSQL;
      fDM1StartCommit;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','paf_cadp01_pre');
         end;
      end;
   end;
result:=true;
end;

function TFrm_Venda_Pre.fLerPedidoGeral(pCodEmp,pChave,pChave_ano: Integer): Boolean;
// ptipo=0-libera
//       1-bloqueio
begin

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from paf_cadp01_pre where '
                          +'       P1CODEMP=:CODEMP '
                          +' and   P1CHAVE=:CHAVE '
                          +' and   P1CHAVE_ANO=:CHAVE_ANO ');
DM1.Query2.ParamByName('CODEMP').AsInteger   :=pCodEmp;
DM1.Query2.ParamByName('CHAVE').AsInteger    :=pChave;
DM1.Query2.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
try
   DM1.Query2.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(DM1.Query1,20210,'_lerarq','paf_cadp01_pre');
      end;
   end;
if DM1.Query2.IsEmpty then
   begin
   MessageDlg('Pedido '+IntToStr(pChave)+'/'+IntToStr(pChave_ano)+' Empresa: '+IntToStr(pCodEmp)+' Não Encontrado!',mtWarning,[mbOk],0);
   Result:=false;
   exit;
   end;
mVenda_GP.mPed1_Codemp        :=DM1.Query2.FieldByName('P1CODEMP').AsInteger;
mVenda_GP.mped1_Chave         :=DM1.Query2.FieldByName('P1CHAVE').AsInteger;
mVenda_GP.mPed1_Chave_ano     :=DM1.Query2.FieldByName('P1CHAVE_ANO').AsInteger;
mVenda_GP.mPed1_CodCli        :=DM1.Query2.FieldByName('P1CODCLI').AsInteger;
mVenda_GP.mPed1_Codven        :=DM1.Query2.FieldByName('P1CODVEN').AsInteger;
//mVenda_GP.mPed1_CF_CodEcf     :=DM1.Query2.FieldByName('P1CF_CODECF').AsInteger;
//mVenda_GP.mPed1_NF_Situacao   :=DM1.Query2.FieldByName('P1NF_SITUACAO').AsInteger;
//mVenda_GP.mPed1_NF_Numero     :=DM1.Query2.FieldByName('P1NF_NUMERO').AsInteger;
//mVenda_GP.mPed1_NFS_Situacao  :=DM1.Query2.FieldByName('P1NFS_SITUACAO').AsInteger;
//mVenda_GP.mPed1_NFS_Numero    :=DM1.Query2.FieldByName('P1NFS_NUMERO').AsInteger;
//mVenda_GP.mped1_CF_Situacao   :=DM1.Query2.FieldByName('P1CF_SITUACAO').AsInteger;
//mVenda_GP.mPed1_CF_Numero     :=DM1.Query2.FieldByName('P1CF_NUMERO').AsInteger;
mVenda_GP.mPed1_CodUsr_Dig    :=DM1.Query2.FieldByName('P1CODUSR_DIG').AsInteger;
mVenda_GP.mPed1_CodPV         :=DM1.Query2.FieldByName('P1CODPV').AsInteger;
mVenda_GP.mPed1_CodFP         :=DM1.Query2.FieldByName('P1CODFP').AsInteger;
mVenda_GP.mPed1_CodTra        :=DM1.Query2.FieldByName('P1CODTRA').AsInteger;
mVenda_GP.mPed1_Frete_CIFFOB  :=DM1.Query2.FieldByName('P1FRETE_CIFFOB').AsInteger;
mVenda_GP.mPed1_QtdVol        :=DM1.Query2.FieldByName('P1QTDVOL').AsInteger;
mVenda_GP.mPed1_Situacao      :=DM1.Query2.FieldByName('P1SITUACAO').AsInteger;
mVenda_GP.mPed1_CodUsr_UEVE   :=DM1.Query2.FieldByName('P1CODUSR_UEVE').AsInteger;
mVenda_GP.mPed1_QtdMan        :=DM1.Query2.FieldByName('P1QTDMAN').AsInteger;
mVenda_GP.mPed1_Bloqueio      :=DM1.Query2.FieldByName('P1BLOQUEIO').AsInteger;
mVenda_GP.mPed1_QtdDec        :=DM1.Query2.FieldByName('P1QTDDEC').AsInteger;
mVenda_GP.mPed1_Tipo_Ped      :=DM1.Query2.FieldByName('P1TIPO_PED').AsInteger;
mVenda_GP.mPed1_TarBan        :=DM1.Query2.FieldByName('P1TARBAN').AsFloat;
mVenda_GP.mPed1_TotMer        :=DM1.Query2.FieldByName('P1TOTMER').AsFloat;
mVenda_GP.mPed1_TotSer        :=DM1.Query2.FieldByName('P1TOTSER').AsFloat;
mVenda_GP.mPed1_ValSeg        :=DM1.Query2.FieldByName('P1VALSEG').AsFloat;
mVenda_GP.mPed1_OutDesp       :=DM1.Query2.FieldByName('P1OUTDESP').AsFloat;
mVenda_GP.mPed1_ValFre        :=DM1.Query2.FieldByName('P1VALFRETE').AsFloat;
mVenda_GP.mPed1_Perc_Frete    :=DM1.Query2.FieldByName('P1PERCFRETE').AsFloat;
mVenda_GP.mPed1_pDesc01       :=DM1.Query2.FieldByName('P1PDESC01').AsFloat;
mVenda_GP.mPed1_pDesc02       :=DM1.Query2.FieldByName('P1PDESC02').AsFloat;
mVenda_GP.mPed1_pDesc03       :=DM1.Query2.FieldByName('P1PDESC03').AsFloat;
mVenda_GP.mPed1_TotPromo      :=0;
mVenda_GP.mPed1_pDesc01_Valor :=0;
mVenda_GP.mPed1_Desc_Rateado  :=DM1.Query2.FieldByName('P1VALDES').AsFloat;
mVenda_GP.mPed1_Acres_VlrTot  :=DM1.Query2.FieldByName('P1VALACRE').AsFloat;
mVenda_GP.mPed1_PesoB         :=DM1.Query2.FieldByName('P1PESOB').AsFloat;
mVenda_GP.mPed1_PesoL         :=DM1.Query2.FieldByName('P1PESOL').AsFloat;
mVenda_GP.mPed1_DescFin       :=DM1.Query2.FieldByName('P1DESCFIN').AsFloat;
mVenda_GP.mPed1_Desc_Cab      :=0;
mVenda_GP.mPed1_Obs_Ped       :=DM1.Query2.FieldByName('P1OBS_PED').AsString;
mVenda_GP.mPed1_Obs_NF        :=DM1.Query2.FieldByName('P1OBS_NF').AsString;
mVenda_GP.mPed1_Obs_NFS       :=DM1.Query2.FieldByName('P1OBS_NFS').AsString;
//mVenda_GP.mPed1_Nf_Serie      :=DM1.Query2.FieldByName('P1NF_SERIE').AsString;
//mVenda_GP.mPed1_CF_SerieECf   :=DM1.Query2.FieldByName('P1CF_SERIEECF').AsString;
//mVenda_GP.mPed1_CF_Modelo     :=DM1.Query2.FieldByName('P1CF_MODELO').AsString;
//mVenda_GP.mPed1_NF_Modelo     :=DM1.Query2.FieldByName('P1NF_MODELO').AsString;
//mVenda_GP.mPed1_NFS_Modelo    :=DM1.Query2.FieldByName('P1NFS_MODELO').AsString;
mVenda_GP.mPed1_Especie       :=DM1.Query2.FieldByName('P1ESPECIE').AsString;
mVenda_GP.mPed1_Tra_UFPV      :=DM1.Query2.FieldByName('P1TRA_UFPV').AsString;
mVenda_GP.mPed1_Tra_PLACAv    :=DM1.Query2.FieldByName('P1TRA_PLACAV').AsString;
mVenda_GP.mPed1_Comp_UEVE     :=DM1.Query2.FieldByName('P1COMP_UEVE').AsString;
mVenda_GP.mPed1_Datap         :=DM1.Query2.FieldByName('P1DATAP').AsDateTime;
//mVenda_GP.mPed1_CF_Data       :=DM1.Query2.FieldByName('P1CF_DATA').AsDateTime;
//mVenda_GP.mPed1_NF_Data       :=DM1.Query2.FieldByName('P1NF_DATA').AsDateTime;
mVenda_GP.mPed1_DatHor_Dig    :=DM1.Query2.FieldByName('P1DATHOR_DIG').AsDateTime;
mVenda_GP.mPed1_DatHor_UEVE   :=DM1.Query2.FieldByName('P1DATHOR_UEVE').AsDateTime;
mVenda_GP.mPed1_TarBan        :=DM1.Query2.FieldByName('P1TARBAN').AsFloat;
mVenda_GP.mPed1_pDesc01_Ant   :=0;
mVenda_GP.mPed1_pDesc02_Ant   :=0;
mVenda_GP.mPed1_pDesc03_Ant   :=0;
mVenda_GP.mPed1_QtdItem       :=0;
mVenda_GP.mPed1_QtdUnd        :=0;

edt_chave.Text     :=IntTostr(mVenda_GP.mped1_Chave);
edt_datap.Date     :=mVenda_GP.mPed1_Datap;
edt_codcli.Text    :=IntTostr(mVenda_GP.mPed1_CodCli);
edt_codCondPag.Text:=IntTostr(mVenda_GP.mPed1_CodPV);
cb_tipoped.ItemIndex:=mVenda_GP.mPed1_Tipo_Ped;
edt_codven.Text    :=IntTostr(mVenda_GP.mPed1_Codven);
edt_codfp.Text     :=IntTostr(mVenda_GP.mPed1_CodFP);
edt_codcli.Text    :=IntTostr(mVenda_GP.mPed1_CodCli);
Memo_ObsPed.Text   :=mVenda_GP.mPed1_Obs_Ped;
Memo_obsNF.Text    :=mVenda_GP.mPed1_Obs_NF;

edt_codcliExit(self);
edt_codCondPagExit(self);
cb_tipopedExit(self);
edt_codvenExit(self);
edt_codfpExit(self);
mVenda_GP.mPed1_QtdParc_ant:=mVenda_GP.mped1_QtdParc;
edt_pDesc01.Text     :=Formatfloat(mCasas, mVenda_GP.mPed1_pDesc01);
edt_desc_valor.Text  :=Formatfloat(mcasas, mVenda_GP.mPed1_Desc_Rateado);
edt_valseg.Text      :=Formatfloat(mcasas, mVenda_GP.mPed1_ValSeg);
edt_outdesp.Text     :=Formatfloat(mcasas, mVenda_GP.mPed1_OutDesp);

edt_pDesc01Exit(self);


Tb_Ped02_pre.Close;
Tb_Ped02_pre.SQL.Clear;
Tb_Ped02_pre.SQL.Add('select P2ITEM,P2QTD,P2DESC_PERC01,P2DESC_PERC02,P2CODPRO, '
                +' P2DESC_PERC03,P2PRECO,P2CST,P2CSOSN,P2CFOP_NF,P2CFOP_ECF,P2DESC_COMP '
                +',P2QTD*P2PRECO AS VALOR_TOTAL,P2CSOSN_ORI,P2ICMS_PPRED, '
                +' P2MODBCST,P2ST_IVA,P2ST_REDUT,P2ST_ICMSCRED,P2ST_ICMSDEB,P2PRECO_TAB, '
                +' P2PRECO_UCPR,P2PRECO_CUS,P2PRECO_MAXCONS,P2IPI_PERC,P2ICMS_PERC, '
                +' P2COFINS_PERC,P2PIS_PERC,P2ICMSSN_PERC,P2CST_IPI,P2CST_PIS,P2CST_COFINS,P2DESCFIN_PERC,P2CODVEN, '
                +' P2AMBIENTE,P2PROMOCAO '
                +' ,PDNOME,PDUND FROM paf_cadp02_pre '
                +' left join paf_cadpro '
                +'          on (PDCODPRO =P2CODPRO '
                +'          and PDCODEMP=P2CODEMP) '
                +' where      P2CODEMP=:CODEMP '
                +' and   P2CHAVE=:CHAVE '
                +' and   P2CHAVE_ANO=:CHAVE_ANO '
                +' order by P2ITEM ');
Tb_Ped02_pre.ParamByName('CODEMP').AsInteger   :=pCodEmp;
Tb_Ped02_pre.ParamByName('CHAVE').AsInteger    :=pChave;
Tb_Ped02_pre.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
try
   Tb_Ped02_pre.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
//      ex_erroSql_Novo(Tb_Ped02_pre,2312,'_lerarq','paf_cadp02_pre');
      end;
   end;

if not cds_ped02_pre.Active then
   cds_ped02_pre.Open;
cds_ped02_pre.Refresh;
cds_ped02_pre.Last;
mPed_Item:=cds_ped02_preP2ITEM.AsInteger+1;
// servico

if Tb_ped02S_pre.SQLConnection=nil then
   Tb_Ped02S_pre.SQLConnection:=DM1.SQLConnection1;
Tb_Ped02S_pre.Close;
Tb_Ped02S_pre.SQL.Clear;
Tb_Ped02S_pre.SQL.Add('Select P2SCODEMP,P2SCHAVE,P2SCHAVE_ANO,P2SITEM,P2SCODSER,P2SQTD,'
                 +'P2SPDESC01,P2SPDESC02,P2SPDESC03,P2SPRECO,P2SDESC_COMP,P2SCST,P2SCSOSN,'
                 +'P2SBCISSQN,P2SVISSQN,P2SPISSQN,P2SSITUACAO,P2SPCOTAB,P2SPCOCUS,P2STOTDES,'
                 +'P2SDESCRAT,P2SDESCFIN_PERC,P2SDESCFIN_VALOR,P2SBCINSS,P2SPREDINSS,'
                 +'P2SVREDINSS,P2SALIQINSS,P2SPREDIRRF,P2VPREDIRRF,P2SBCIRRF,P2SVIRRF,'
                 +'P2SALIQIRRF,P2SQTD*P2SPRECO AS VALOR_TOTAL,'
                 +'P2SCFOP_NF,P2SCFOP_ECF,P2SCODVEN,'
                 +'PDNOME,PDUND FROM paf_cadp02s_pre '
                 +' left join paf_cadpro '
                 +' on (PDCODPRO =P2SCODSER '
                 +' and PDCODEMP=P2SCODEMP) '
                +' where      P2SCODEMP=:CODEMP '
                +' and   P2SCHAVE=:CHAVE '
                +' and   P2SCHAVE_ANO=:CHAVE_ANO '
                +' order by P2SITEM ');
Tb_Ped02s_pre.ParamByName('CODEMP').AsInteger   :=pCodEmp;
Tb_Ped02s_pre.ParamByName('CHAVE').AsInteger    :=pChave;
Tb_Ped02s_pre.ParamByName('CHAVE_ANO').AsInteger:=pChave_ano;
try
   Tb_Ped02s_pre.Open;
except
   if fVerificaRedeAtiva(true) then
      begin
//      ex_erroSql_Novo(Tb_Ped02s_pre,774,'frm_venda_pre','paf_cadp02s_pre')
      end
   else
      fFecharTudo(0);
   end;
if not tb_ped02s_pre.Active then
   tb_ped02s_pre.Open;
cds_ped02s_pre.Refresh;
cds_ped02s_pre.Last;
mPed_Item_Servico:=cds_ped02s_preP2SITEM.AsInteger+1;



result:=true;

end;

function fPosArray(pArrayOff: array of string; pTexto: String): Integer;
var
x:Integer;
mResult: Integer;
begin
mResult:=-1;
for x:=low(pArrayOff) to high(pArrayOff) do
   begin
   if Uppercase(pArrayOff[x])=Uppercase(pTexto) then
      begin
      mResult:=x;
      break;
      end;
   end;
result:=mresult;
end;
procedure TFrm_Venda_Pre.edt_codCondPagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = 113 then
   begin
   edt_codcondpag.Text:=fChamaPV(0,'Frm_Venda_Pre.','');
   edt_codCondPagExit(Self);
   end;


end;




function tFrm_Venda_Pre.fpedtestacfop(ptipo: Integer; PUnd: Real): Boolean;
var
mValorParam01,mValorParam02,mValorParam03: Real;
x,y:Integer;
begin
result:=true;
{---Verficar se o codigo do cliente esta preenchido---}
if fsonumero(edt_codcli.Text) = 0 then
   begin
   Result:=false;
   Exit;
   end;


if (not DM1.Tb_Cli.Active) or (DM1.Tb_CliCCODCLI.AsFloat <> ValFloat(edt_codcli.Text)) then
   flcadcli(1,0,edt_codcli.Text);
for y:=0 to 1 do
   begin
   if y=0 then
      flcaduf(0,0,codemp,DM1.Tb_CliCUF.AsString)
   else
      flcaduf(0,0,codemp+100,DM1.Tb_CliCUF.AsString);

   if DM1.Tb_UFPCIMP_SER.AsFloat <> 1 then
     mValorParam01:=0
   else
     mValorParam01:=DM1.Tb_UFPALISSQN.AsFloat;


   if DM1.Tb_CliCREPAS.AsFloat = 1 then
      mValorParam02      := DM1.Tb_UFPREPAS.AsFloat
   else
      mValorParam02      := 0;

   if DM1.Tb_UFPTIPCAL.AsString='S' then
      mValorParam03      :=0
   else
      mValorParam03      :=4;

   for x:=1 to 10 do
      begin
      fgravarAliquotas(y,CHAR(64+x),DM1.Tb_Cli.FieldbyName('CALIQ'+chr(64+x)).AsFloat,
                    DM1.Tb_Cli.FieldbyName('CALIQ'+chr(64+x)).AsFloat,
                   -1, // aliq redutor
                   -1, // aliq icms cred
                   -1, // aliq icms deb
                   -1, // aliq st iva ina
                   -1, // aliq st iva pos
                   -1, // aliq st iva neg
                   mValorParam01 // issqn
                   ,mValorParam02 // repasse de icms
                   ,0 // aliquota pis
                   ,0 // aliquota cofins
                   ,-1 // Cfo_Indus_Ret'
                   ,-1 // Cfo_Indus_Trib'
                   ,-1 // Cfo_Indus_Isento'
                   ,-1 // Cfo_rev_Ret'
                   ,-1 // Cfo_rev_Trib'
                   ,-1 // Cfo_rev_Isento'
                   ,-1 // Cfo_SubEcf_Ret'
                   ,-1 // Cfo_SubEcf_Trib'
                   ,-1 // Cfo_SubEcf_Isento'
                   ,DM1.Tb_UFPCFOSER.AsInteger // Cfo_servicos
                   ,trunc(mValorParam03) // modalidade da bc
                   ,-1 // Aliquota de Reducao Icms st staliqred
                   ,-1 // aliquota de inss
                   ,-1 // aliquota de inss reducao
                   ,-1 // aliquota de irrf
                   ,-1 // aliquota de irrf reducao
                   );

      end;


   if DM1.Tb_CliCSUPERMICRO.AsInteger=1 then
      begin
      if DM1.Tb_CliCALIQDEB.AsFloat <> 0 then
         mValorParam01     := DM1.Tb_CliCALIQDEB.AsFloat
      else
         mValorParam01     := DM1.Tb_UFPICMSD_SN.AsFloat;

      for x:=1 to 10 do
         begin
         fgravarAliquotas(y,char(64+1),-1, -1,// aliquota de icms
                   DM1.Tb_UF.FieldByName('PREDUTR'+chr(64+1)+'_SN').AsFloat, // aliq redutor
                   -1, // aliq icms cred
                   mValorParam01, // aliq icms deb
                   DM1.Tb_UFPIVAINA_SN.AsFloat, // aliq st iva ina
                   DM1.Tb_UFPIVAPOS_SN.AsFloat, // aliq st iva pos
                   DM1.Tb_UFPIVANEG_SN.AsFloat, // aliq st iva neg
                   -1 // issqn
                   ,-1 // repasse
                   ,-1 // aliquota pis
                   ,-1 // aliquota cofins
                   ,-1 // Cfo_Indus_Ret'
                   ,-1 // Cfo_Indus_Trib'
                   ,-1 // Cfo_Indus_Isento'
                   ,-1 // Cfo_rev_Ret'
                   ,-1 // Cfo_rev_Trib'
                   ,-1 // Cfo_rev_Isento'
                   ,-1 // Cfo_SubEcf_Ret'
                   ,-1 // Cfo_SubEcf_Trib'
                   ,-1 // Cfo_SubEcf_Isento'
                   ,-1 // Cfo_servicos
                   ,-1 // modalidade da bc
                   ,-1 // Aliquota de Reducao Icms st staliqred
                   ,-1 // aliquota de inss
                   ,-1 // aliquota de inss reducao
                   ,-1 // aliquota de irrf
                   ,-1 // aliquota de irrf reducao
                   );
         end;
      end
   else
      begin
      if DM1.Tb_CliCALIQDEB.AsFloat <> 0 then
         mValorParam01     := DM1.Tb_CliCALIQDEB.AsFloat
      else
         mValorParam01     := DM1.Tb_UFPICMSD.AsFloat;

      for x:=1 to 10 do
         begin
         fgravarAliquotas(y,char(64+1),-1,-1, // aliquota de icms
                   DM1.Tb_UF.FieldByName('PREDUTR'+chr(64+1)).AsFloat, // aliq redutor
                   DM1.Tb_UFPICMSC.AsFloat, // aliq icms cred
                   mValorParam01, // aliq icms deb
                   DM1.Tb_UFPIVAINA.AsFloat, // aliq st iva ina
                   DM1.Tb_UFPIVAPOS.AsFloat, // aliq st iva pos
                   DM1.Tb_UFPIVANEG.AsFloat, // aliq st iva neg
                   -1 // issqn
                   ,-1 // repasse icms
                   ,-1 // aliquota pis
                   ,-1 // aliquota cofins
                   ,-1 // Cfo_Indus_Ret'
                   ,-1 // Cfo_Indus_Trib'
                   ,-1 // Cfo_Indus_Isento'
                   ,-1 // Cfo_rev_Ret'
                   ,-1 // Cfo_rev_Trib'
                   ,-1 // Cfo_rev_Isento'
                   ,-1 // Cfo_SubEcf_Ret'
                   ,-1 // Cfo_SubEcf_Trib'
                   ,-1 // Cfo_SubEcf_Isento'
                   ,-1 // Cfo_servicos
                   ,-1 // modalidade da bc
                   ,-1 // Aliquota de Reducao Icms st staliqred
                   ,-1 // aliquota de inss
                   ,-1 // aliquota de inss reducao
                   ,-1 // aliquota de irrf
                   ,-1 // aliquota de irrf reducao

                   );
         end;
      end;




   mPd_SaiNor        := false;
   mPd_SaiCons       := False;
   mPd_SaiTerc       := False;
   mPd_SaiRVenda     := False;

   mPd_EntraNor      := False;
   mPd_EntraCons     := false;
   mPd_EntraTerc     := false;
   mPd_EntraRVenda   := False;

   if y=0 then
      flcaduf_tpped(0,0,codemp+100,DM1.Tb_UFPUF.AsString,IntToStr(ptipo))
   else
      flcaduf_tpped(0,0,codemp+100,DM1.Tb_UFPUF.AsString,IntToStr(ptipo));
   if not DM2.Tb_UF_TPPED.IsEmpty then
      begin
      if DM1.Tb_PargerPINDUSTRIA.AsInteger>0 then
         begin
         for x:=1 to 10 do
            begin

            fgravarAliquotas(y,char(64+1),-1,-1, // aliquota de icms
                      -1, // aliq redutor
                      -1, // aliq icms cred
                      -1, // aliq icms deb
                      -1, // aliq st iva ina
                      -1, // aliq st iva pos
                      -1, // aliq st iva neg
                      -1 // issqn
                      ,-1 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ST.AsInteger // Cfo_Indus_Ret'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_TRIB.AsInteger // Cfo_Indus_Trib'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ISENTO.AsInteger // Cfo_Indus_Isento'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ST.AsInteger // Cfo_rev_Ret'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_TRIB.AsInteger // Cfo_rev_Trib'
                      ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ISENTO.AsInteger // Cfo_rev_Isento'
                      ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ST.AsInteger // Cfo_SubEcf_Ret'
                      ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_TRIB.AsInteger // Cfo_SubEcf_Trib'
                      ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ISENTO.AsInteger // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      );
            end;

         if DM1.Tb_CliCCONSF.AsFloat = 1 then
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_CF.AsFloat=1 then
               begin
               fgravarAliquotas(1,char(64+1),-1,-1, // aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      );
               end;
            end
         else
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_RV.AsFloat=1 then
               begin
               fgravarAliquotas(1,char(64+1),-1,-1,// aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      );
               end;
            end
         end
      else
         begin

         for x:=1 to 10 do
            begin


          fgravarAliquotas(1,char(64+1),-1,-1,// aliquota de icms
                 -1, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ST.AsInteger // Cfo_Indus_Ret'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_TRIB.AsInteger // Cfo_Indus_Trib'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_RV_ISENTO.AsInteger // Cfo_Indus_Isento'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ST.AsInteger // Cfo_rev_Ret'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_TRIB.AsInteger // Cfo_rev_Trib'
                 ,DM2.Tb_UF_TPPEDUFTP_CFOP_CF_ISENTO.AsInteger // Cfo_rev_Isento'
                 ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ST.AsInteger // Cfo_SubEcf_Ret'
                 ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_TRIB.AsInteger // Cfo_SubEcf_Trib'
                 ,DM2.Tb_UF_TPPEDUFTP_SUBST_CFOP_ISENTO.AsInteger // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 );

            end;

         if DM1.Tb_CliCCONSF.AsFloat = 1 then
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_CF.AsFloat=1 then
               begin
               fgravarAliquotas(1,char(64+1),-1,-1, // aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao

                      );
               end;
            end
         else
            begin
            if DM2.Tb_UF_TPPEDUFTP_CALCIMP_RV.AsFloat=1 then
               begin
               fgravarAliquotas(1,char(64+1),-1,-1,// aliquota de icms
                      0, // aliq redutor
                      0, // aliq icms cred
                      0, // aliq icms deb
                      0, // aliq st iva ina
                      0, // aliq st iva pos
                      0, // aliq st iva neg
                      0 // issqn
                      ,0 // repasse icms
                      ,-1 // aliquota pis
                      ,-1 // aliquota cofins
                      ,-1 // Cfo_Indus_Ret'
                      ,-1 // Cfo_Indus_Trib'
                      ,-1 // Cfo_Indus_Isento'
                      ,-1 // Cfo_rev_Ret'
                      ,-1 // Cfo_rev_Trib'
                      ,-1 // Cfo_rev_Isento'
                      ,-1 // Cfo_SubEcf_Ret'
                      ,-1 // Cfo_SubEcf_Trib'
                      ,-1 // Cfo_SubEcf_Isento'
                      ,-1 // Cfo_servicos
                      ,-1 // modalidade da bc
                      ,-1 // Aliquota de Reducao Icms st staliqred
                      ,-1 // aliquota de inss
                      ,-1 // aliquota de inss reducao
                      ,-1 // aliquota de irrf
                      ,-1 // aliquota de irrf reducao
                      );
               end;
            end;

         end;

      if  DM1.Tb_CliCICMSTP.AsInteger=1 then      // icms normal dos produtos retidos
          begin
          fgravarAliquotas(1,char(64+1),-1,0,// aliquota de icms
                 -1, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 );

          end;

      if DM1.Tb_CliCICMSNOR.AsInteger=1 then    // icms normal dos produtos tributados
          begin
          fgravarAliquotas(1,char(64+1),0,-1,// aliquota de icms
                 -1, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao

                 );

          end;
      if DM1.Tb_CliCREDICMSNOR.AsInteger=1 then  // redutor de icms aplicar 0-sim 1-nao
          begin
          fgravarAliquotas(1,char(64+1),-1,-1,// aliquota de icms
                 0, // aliq redutor
                 -1, // aliq icms cred
                 -1, // aliq icms deb
                 -1, // aliq st iva ina
                 -1, // aliq st iva pos
                 -1, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 );

          end;

      if DM1.Tb_CliCICMSR.AsFloat<>1 then  // calcular icms retido calcula quando é 1
          begin
          fgravarAliquotas(1,char(64+1),-1,-1,// aliquota de icms
                 -1, // aliq redutor
                 0, // aliq icms cred
                 0, // aliq icms deb
                 0, // aliq st iva ina
                 0, // aliq st iva pos
                 0, // aliq st iva neg
                 -1 // issqn
                 ,-1 // repasse icms
                 ,-1 // aliquota pis
                 ,-1 // aliquota cofins
                 ,-1 // Cfo_Indus_Ret'
                 ,-1 // Cfo_Indus_Trib'
                 ,-1 // Cfo_Indus_Isento'
                 ,-1 // Cfo_rev_Ret'
                 ,-1 // Cfo_rev_Trib'
                 ,-1 // Cfo_rev_Isento'
                 ,-1 // Cfo_SubEcf_Ret'
                 ,-1 // Cfo_SubEcf_Trib'
                 ,-1 // Cfo_SubEcf_Isento'
                 ,-1 // Cfo_servicos
                 ,-1 // modalidade da bc
                 ,-1 // Aliquota de Reducao Icms st staliqred
                 ,-1 // aliquota de inss
                 ,-1 // aliquota de inss reducao
                 ,-1 // aliquota de irrf
                 ,-1 // aliquota de irrf reducao
                 );

          end;



      mPed1_CalcIPI           := iif(DM1.Tb_CliCIPI.Asinteger=1,True,False);

      mPed1_ICMSRLIQ          := DM1.Tb_CliCICMSST_LIQ.AsInteger; // calcular o icms sobre o valor 0-Bruto 1-Liquido


      end;
   // INICIO

   cds_aliquotas.First;
   if (DM2.Tb_UF_TPPEDtp_entrada.AsInteger=1) and
      (DM2.Tb_UF_TPPEDtp_saida.AsInteger=0) then
      begin
      if mGer_Emp_UF=DM1.Tb_CliCUF.Value then
         begin
         if (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'1') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                        +' Venda a Consumidor Final tem que começar com o digito 1.'+#13
                        +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;

         if (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'1')
            or (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'1') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                        +' para Revenda tem que começar com o digito 1.'+#13
                        +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;

         end
      else if ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'2') ) and
              ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'3') ) then
         begin
         verteclado(0);
         fmensagem('Código de CFOPs para '+cb_tipoped.Text
                  +' Fora do estado ou internacional'
                  +' Consumidor final tem que começar com o digito 2 ou 3 para internacional.'
                     +' Corrigir no Cadastro de Estado!',0,['0'],0);
         result:=False;
         exit;
         end
      else if ( (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'2') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'2') )
              and (
               (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'3') or
              (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'3'))  then
         begin
         verteclado(0);
         fmensagem('Código de CFOPs para '+cb_tipoped.Text+' Fora do estado'+#13
                  +' Revendedor tem que começar com o digito 2 ou 3 para internacional.'+#13
                     +' Corrigir no Cadastro de Estado!',0,['0'],0);
         result:=False;
         exit;
         end;

      end;

   if (DM2.Tb_UF_TPPEDtp_entrada.AsInteger=0) and
      (DM2.Tb_UF_TPPEDtp_saida.AsInteger=1) then
      begin
      if mGer_Emp_UF=DM1.Tb_CliCUF.Value then
         begin
         if (copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'5') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                      +' para Consumidor final tem que começar com o digito 5.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;
         if (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_trib.AsInteger),1,1)<>'5') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'5') then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' dentro do estado'+#13
                      +' para Consumidor Final tem que começar com o digito 5.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;
         end
      else
         begin
         if ( ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'6'))  )

         and ( ( (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Ret.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Trib.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_Indus_Isento.AsInteger),1,1)<>'7')) )then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' fora do estado'+#13
                      +'tem que começar com o digito 6 ou 7.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;
         if  ((copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'6') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'6'))
            and
            ((copy(formatfloat('0000',cds_aliquotasCfo_rev_Ret.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Trib.AsInteger),1,1)<>'7') or
            (copy(formatfloat('0000',cds_aliquotasCfo_rev_Isento.AsInteger),1,1)<>'7')) then
            begin
            fmensagem('Código de CFOPs para '+cb_tipoped.Text+' fora do estado'+#13
                      +' para Revendedor tem que começar com o digito 6.'+#13
                      +' Corrigir no Cadastro de Estado!',0,['0'],0);
            result:=False;
            exit;
            end;

         end;
      end;
   end;

// TERMINO


mPed_Formace            := 0;
mPed_UF_Cli             := DM1.Tb_CliCUF.AsString;
mPed_Cli_TarBan         := DM1.Tb_CliCTARBAN.Value;
mPed_Cli_tarban         := DM1.Tb_CliCCTARBAN.AsInteger;
mPed_Cli_CodLoc         := DM1.Tb_CliCCODLOC.AsFloat;
mPed_Cli_CodBai         := DM1.Tb_CliCCodBai.AsFloat;
mPed_Cli_CodRam         := DM1.Tb_CliCCodRam.AsFloat;
mPed_Cli_PCOMV01        := DM1.Tb_CliCCOMIS.AsFloat;
mPed_Cli_PCOMV02        := DM1.Tb_CliCCOMIS02.AsFloat;
mPed_Cli_PCOMV03        := DM1.Tb_CliCCOMIS03.AsFloat;
mPed_Cli_PCOMV04        := DM1.Tb_CliCCOMIS04.AsFloat;
mPed_Cli_CodCli         := DM1.Tb_CliCCODCLI.AsFloat;
mPed_Cli_Desc01         := DM1.Tb_CliCDESC.AsFloat;
mPed_Cli_Desc02         := DM1.Tb_CliCDESC02.AsFloat;
mPed_Cli_Desc03         := DM1.Tb_CliCDESC03.AsFloat;
mPed_Cli_DescFin        := DM1.Tb_CliCDESCFIN.AsFloat;
mPed_Cli_CodRed         := DM1.Tb_CliCCODRED.AsInteger;
mPed_Cli_PCOPRAT        := DM1.Tb_CliCPCOPRAT.AsInteger;
par_tpp :=DM1.Tb_CliCPCOPRAT.AsInteger;
mPed_UF_TIPOPCO         := DM1.Tb_UFPTIPOPCO.AsInteger;
mPed_UF_PCOMV01         := DM1.Tb_UFPCOMIS.AsFloat;
mPed_UF_PCOMV02         := DM1.Tb_UFPCOMIS.AsFloat;
mPed_UF_PCOMV03         := DM1.Tb_UFPCOMIS.AsFloat;
mPed_UF_PCOMV04         := DM1.Tb_UFPCOMIS.AsFloat;




end;


function TFrm_Venda_Pre.fgravarAliquotas(pTipo_Reg: Integer;pTabIcm: String;
    pAliqTrib,pAliqRet,pAliqRed,pStIcmsCred,pStIcmsDeb,pStIVA_Ina,pStIVA_Pos,pStIVA_Neg,pISSQN
    ,pRepas,pAliqPis,pAliqCofins: Real;
    pCfo_Indus_Ret,pCfo_Indus_Trib,pCfo_Indus_Isento,pCfo_rev_Ret,pCfo_rev_Trib,pCfo_rev_Isento
    ,pCfo_SubEcf_Ret,pCfo_SubEcf_Trib,pCfo_SubEcf_Isento,pcfo_servico,pmodBcST: Integer;
    pal_stAliqRed,pal_inss,pal_inss_pred,pal_irrf,pal_irrf_pred: Real): Boolean;

begin
if cds_ped02_pre.Locate('tipo_reg;al_tabicm',vararrayof([pTipo_Reg,pTabIcm]),[]) then
   cds_ped02_pre.edit
else
   cds_ped02_pre.Append;
cds_aliquotastipo_reg.AsInteger:=pTipo_Reg;
cds_aliquotasal_tabicm.AsString:=pTabIcm;
if pAliqTrib<>-1 then
   cds_aliquotasal_IcmsTrib.AsFloat:=pAliqTrib;
if pAliqRet<>-1 then
   cds_aliquotasal_icmsRet.AsFloat:=pAliqRet;
if pAliqRed<>-1 then
   cds_aliquotasal_aliqredut.AsFloat:=pAliqRed;

if pStIcmsCred<>-1 then
   cds_aliquotasal_stIcmsCred.AsFloat:=pStIcmsCred;
if pStIcmsDeb<>-1 then
   cds_aliquotasal_stIcmsDeb.AsFloat:=pStIcmsDeb;
if pStIVA_Ina<>-1 then
   cds_aliquotasal_stIVA_Ina.AsFloat:=pStIVA_Ina;
if pStIVA_Pos<>-1 then
   cds_aliquotasal_stIVA_Pos.AsFloat:=pStIVA_Pos;
if pStIVA_Neg<>-1 then
   cds_aliquotasal_stIVA_Neg.AsFloat:=pStIVA_Neg;
if pISSQN<>-1 then
   cds_aliquotasal_issqn.AsFloat:=pISSQN;
if pRepas<>-1 then
   cds_aliquotasal_repasse.AsFloat:=pRepas;
if pAliqPis<>-1 then
   cds_aliquotasal_pis.AsFloat:=pAliqPis;
if pAliqCofins<>-1 then
   cds_aliquotasal_cofins.AsFloat:=pAliqCofins;

if pCfo_Indus_Ret<>-1 then
   cds_aliquotasCfo_Indus_Ret.AsInteger:=pCfo_Indus_Ret;
if pCfo_Indus_Trib<>-1 then
   cds_aliquotasCfo_Indus_Trib.AsInteger:=pCfo_Indus_Trib;
if pCfo_Indus_Isento<>-1 then
   cds_aliquotasCfo_Indus_Isento.AsInteger:=pCfo_Indus_Isento;

if pCfo_Rev_Ret<>-1 then
   cds_aliquotasCfo_Rev_Ret.AsInteger:=pCfo_Rev_Ret;
if pCfo_rev_Trib<>-1 then
   cds_aliquotasCfo_rev_Trib.AsInteger:=pCfo_rev_Trib;
if pCfo_Rev_Isento<>-1 then
   cds_aliquotasCfo_Rev_Isento.AsInteger:=pCfo_Rev_Isento;

if pCfo_SubEcf_Ret<>-1 then
   cds_aliquotasCfo_SubEcf_Ret.AsInteger:=pCfo_SubEcf_Ret;
if pCfo_SubEcf_Trib<>-1 then
   cds_aliquotasCfo_SubEcf_Trib.AsInteger:=pCfo_SubEcf_Trib;
if pCfo_SubEcf_Isento<>-1 then
   cds_aliquotasCfo_SubEcf_Isento.AsInteger:=pCfo_SubEcf_Isento;
if pcfo_servico<>-1 then
   cds_aliquotascfo_servico.AsInteger:=pcfo_servico;

if pmodBcST<>-1 then
   cds_aliquotasmodBcST.AsInteger:=pmodBcST;

if pal_stAliqRed<>-1 then
   cds_aliquotasal_stAliqRed.AsFloat:=pal_stAliqRed;

if pal_inss<>-1 then
   cds_aliquotasal_inss.AsFloat:=pal_inss;

if pal_inss_pred <>-1 then
   cds_aliquotasal_inss_pred.AsFloat:=pal_inss_pred;

if pal_irrf <>-1 then
   cds_aliquotasal_irrf.AsFloat:=pal_irrf;

if pal_irrf_pred <>-1 then
   cds_aliquotasal_irrf_pred.AsFloat:=pal_irrf_pred;

cds_aliquotas.Post;

result:=true;
end;


end.

